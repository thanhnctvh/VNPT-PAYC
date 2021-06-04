<?php
namespace App\Modules\BaoCaoTuan\Controllers\DonViTrucThuocKhac;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use DB;
use Request as RequestAjax;
use App\DonVi;
use App\DmThamSoHeThong;
use App\BcTuanHienTai;
use App\BcDmTuan;
use App\BcDmThoiGianBaoCao;
use App\BcKeHoachTuan;
use App\BcDhsxkd;

class DonViTrucThuocKhacController extends Controller{
    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct(){
    }

    public function baoCaoTuan(Request $request){
        
        $year=date('Y');
        $bcDmTuan=BcDmTuan::where('nam','=',$year)
        ->get()->toArray();
        return view('BaoCaoTuan::don-vi-truc-thuoc-khac.bao-cao-tuan-don-vi-truc-thuoc-khac',compact('bcDmTuan'));
    }


    // Báo cáo tuần hiện tại
    public function danhSachBaoCaoTuanHienTai(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra gửi đường ajax
            $userId=0; $error=''; // Khai báo biến
            if(Auth::id()){
                $userId=Auth::id();
            }
            $data=RequestAjax::all(); // Lấy tất cả dữ liệu
            $idTuan=$data['id'];
            $donVi=DonVi::getDonViCapTrenTheoTaiKhoan($userId, 'KHAC');
            if ($donVi['error']>0) {
                return array('error'=>"Lỗi tài khoản không có quyền báo cáo"); // Trả về lỗi phương thức truyền số liệu
            }
            $donVi=$donVi['data'];       
            
            $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
            $ma=''; // Mã đơn vị hay mã định danh
            $baoCaos=array();
            if($baoCaoTheoMaDinhDanh==1){
                $baoCaos=BcTuanHienTai::where('id_tuan','=',$idTuan)
                ->where('ma_dinh_danh','=',$donVi['ma_dinh_danh'])
                ->get()->toArray();
                $ma=$donVi['ma_dinh_danh'];
            }else{ // Ngược lại báo cáo theo mã đơn vị
                $baoCaos=BcTuanHienTai::where('id_tuan','=',$idTuan)
                ->where('ma_don_vi','=',$donVi['ma_don_vi'])
                ->get()->toArray();
                $ma=$donVi['ma_don_vi'];
            }
            $view=view('BaoCaoTuan::don-vi-truc-thuoc-khac.danh-sach-bao-cao-tuan-hien-tai', compact('baoCaos','error','idTuan', 'ma'))->render(); // Trả dữ liệu ra view 
            return response()->json(['html'=>$view,'error'=>$error]); // Return dữ liệu ra ajax
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu"); // Trả về lỗi phương thức truyền số liệu
    }

    
    public function themBaoCaoTuanHienTai(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra gửi đường ajax
            $userId=0; $error=''; // Khai báo biến
            if(Auth::id()){
                $userId=Auth::id();
            }
            $data=RequestAjax::all(); // Lấy tất cả dữ liệu
            $idTuan=$data['id_tuan'];

            $donVi=DonVi::getDonViCapTrenTheoTaiKhoan($userId, 'KHAC');
            if ($donVi['error']>0) {
                return array('error'=>"Lỗi tài khoản không có quyền báo cáo."); // Trả về lỗi phương thức truyền số liệu
            }
            $donVi=$donVi['data'];  
            $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
            $ma='';
            if($baoCaoTheoMaDinhDanh==1){
                $ma=$donVi['ma_dinh_danh'];
            }else{
                $ma=$donVi['ma_don_vi'];
            }
            // Kiểm tra đã chốt số liệu chưa
            $daChoSoLieu=BcDmThoiGianBaoCao::kiemTraDaChotSoLieu($idTuan, $ma);
            if($daChoSoLieu==1){
                return array('error'=>"Lỗi đã chốt số liệu nên không thể chỉnh sửa."); // Trả về lỗi phương thức truyền số liệu
            }

            $dataBaoCaoTuan=array();
            $dataBaoCaoTuan['id_tuan']=$data['id_tuan'];
            $dataBaoCaoTuan['id_user_bao_cao']=$userId;
            $dataBaoCaoTuan['noi_dung']=$data['noi_dung'];
            $dataBaoCaoTuan['ma_dinh_danh']=$donVi['ma_dinh_danh'];
            $dataBaoCaoTuan['ma_don_vi']=$donVi['ma_don_vi'];
            $dataBaoCaoTuan['ghi_chu']=null;
            $dataBaoCaoTuan['thoi_gian_bao_cao']=date('Y-m-d H:i:s');
            $dataBaoCaoTuan['trang_thai']=0;
            $dataBaoCaoTuan['is_group']=0;
            $dataBaoCaoTuan['sap_xep']=0;
            BcTuanHienTai::create($dataBaoCaoTuan); // Lưu dữ liệu vào DB
            return array("error"=>''); // Trả về thông báo lưu dữ liệu thành công
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu"); // Báo lỗi phương thức truyền dữ liệu
    }

    public function xoaBaoCaoTuanHienTai(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra phương thức gửi dữ liệu là AJAX
            $dataForm=RequestAjax::all(); // Lấy tất cả dữ liệu đã gửi
            if(!isset($dataForm['id'])){ // Kiểm tra nếu ko tồn tại id hoặc ko được xóa mấy cái dữ liệu hệ thống
                return array("error"=>'Không tìm thấy dữ liệu cần xóa'); // Trả lỗi về AJAX
            }
            $id=$dataForm['id']; //ngược lại có id
            $bcTuanHienTai=BcTuanHienTai::where("id","=",$id)->get();
            if(count($bcTuanHienTai)==1){
                // Kiểm tra đã chốt số liệu chưa
                $idTuan=$bcTuanHienTai[0]['id_tuan'];
                $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
                $ma='';
                if($baoCaoTheoMaDinhDanh==1){
                    $ma=$bcTuanHienTai[0]['ma_dinh_danh'];
                }else{
                    $ma=$bcTuanHienTai[0]['ma_don_vi'];
                }
                
                $daChoSoLieu=BcDmThoiGianBaoCao::kiemTraDaChotSoLieu($idTuan, $ma);
                if($daChoSoLieu==1){
                    return array('error'=>"Lỗi đã chốt số liệu nên không thể chỉnh sửa."); // Trả về lỗi phương thức truyền số liệu
                }
                // End Kiểm tra đã chốt số liệu chưa

                BcTuanHienTai::where("id","=",$id)->delete();
                return array("error"=>'');
            }else{
                return array("error"=>'Không tìm thấy dữ liệu cần xóa'); // Trả lỗi về AJAX
            }         
            
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu");
    }
    public function bcIsGroupTuanHienTai(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra phương thức gửi dữ liệu là AJAX
            $dataForm=RequestAjax::all(); // Lấy tất cả dữ liệu đã gửi
            if(!isset($dataForm['id'])){ // Kiểm tra nếu ko tồn tại id hoặc ko được xóa mấy cái dữ liệu hệ thống
                return array("error"=>'Không tìm thấy dữ liệu cần xóa'); // Trả lỗi về AJAX
            }
            $id=$dataForm['id']; //ngược lại có id
            $bcTuanHienTai=BcTuanHienTai::where("id","=",$id)->get();
            if(count($bcTuanHienTai)==1){
                // Kiểm tra đã chốt số liệu chưa
                $idTuan=$bcTuanHienTai[0]['id_tuan'];
                $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
                $ma='';
                if($baoCaoTheoMaDinhDanh==1){
                    $ma=$bcTuanHienTai[0]['ma_dinh_danh'];
                }else{
                    $ma=$bcTuanHienTai[0]['ma_don_vi'];
                }
                
                $daChoSoLieu=BcDmThoiGianBaoCao::kiemTraDaChotSoLieu($idTuan, $ma);
                if($daChoSoLieu==1){
                    return array('error'=>"Lỗi đã chốt số liệu nên không thể chỉnh sửa."); // Trả về lỗi phương thức truyền số liệu
                }
                // End Kiểm tra đã chốt số liệu chưa

                $bcTuanHienTai=BcTuanHienTai::find($id);
                $isGroup=$bcTuanHienTai->is_group;
                if($isGroup==1){
                    $bcTuanHienTai->is_group=0;
                }else{
                    $bcTuanHienTai->is_group=1;
                }                
                $bcTuanHienTai->save();
                return array("error"=>'');
            }else{
                return array("error"=>'Không tìm thấy dữ liệu cần xóa'); // Trả lỗi về AJAX
            }         
            
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu");
    }
    
    // End báo cáo tuần hiện tại


    // Báo cáo tuần kế tiếp
    public function danhSachBaoCaoKeHoachTuan(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra gửi đường ajax
            $userId=0; $error=''; // Khai báo biến
            if(Auth::id()){
                $userId=Auth::id();
            }
            $data=RequestAjax::all(); // Lấy tất cả dữ liệu
            $idTuan=$data['id'];
            $donVi=DonVi::getDonViCapTrenTheoTaiKhoan($userId, 'KHAC');
            if ($donVi['error']>0) {
                return array('error'=>"Lỗi Lỗi tài khoản không có quyền báo cáo."); // Trả về lỗi phương thức truyền số liệu
            }
            $donVi=$donVi['data'];       
            
            $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
            $ma=''; // Mã đơn vị hay mã định danh
            $baoCaos=array();
            if($baoCaoTheoMaDinhDanh==1){
                $baoCaos=BcKeHoachTuan::where('id_tuan','=',$idTuan)
                ->where('ma_dinh_danh','=',$donVi['ma_dinh_danh'])
                ->get()->toArray();
                $ma=$donVi['ma_dinh_danh'];
            }else{ // Ngược lại báo cáo theo mã đơn vị
                $baoCaos=BcKeHoachTuan::where('id_tuan','=',$idTuan)
                ->where('ma_don_vi','=',$donVi['ma_don_vi'])
                ->get()->toArray();
                $ma=$donVi['ma_don_vi'];
            }
            $view=view('BaoCaoTuan::don-vi-truc-thuoc-khac.danh-sach-bao-cao-ke-hoach-tuan', compact('baoCaos','error','idTuan', 'ma'))->render(); // Trả dữ liệu ra view 
            return response()->json(['html'=>$view,'error'=>$error]); // Return dữ liệu ra ajax
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu"); // Trả về lỗi phương thức truyền số liệu
    }

    public function themBaoCaoKeHoachTuan(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra gửi đường ajax
            $userId=0; $error=''; // Khai báo biến
            if(Auth::id()){
                $userId=Auth::id();
            }
            $data=RequestAjax::all(); // Lấy tất cả dữ liệu
            $idTuan=$data['id_tuan'];

            $donVi=DonVi::getDonViCapTrenTheoTaiKhoan($userId, 'KHAC');
            if ($donVi['error']>0) {
                return array('error'=>"Lỗi Lỗi tài khoản không có quyền báo cáo."); // Trả về lỗi phương thức truyền số liệu
            }
            $donVi=$donVi['data'];  
            $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
            $ma='';
            if($baoCaoTheoMaDinhDanh==1){
                $ma=$donVi['ma_dinh_danh'];
            }else{
                $ma=$donVi['ma_don_vi'];
            }
            // Kiểm tra đã chốt số liệu chưa
            $daChoSoLieu=BcDmThoiGianBaoCao::kiemTraDaChotSoLieu($idTuan, $ma);
            if($daChoSoLieu==1){
                return array('error'=>"Lỗi đã chốt số liệu nên không thể chỉnh sửa."); // Trả về lỗi phương thức truyền số liệu
            }

            $dataBaoCaoTuan=array();
            $dataBaoCaoTuan['id_tuan']=$data['id_tuan'];
            $dataBaoCaoTuan['id_user_bao_cao']=$userId;
            $dataBaoCaoTuan['noi_dung']=$data['noi_dung'];
            $dataBaoCaoTuan['ma_dinh_danh']=$donVi['ma_dinh_danh'];
            $dataBaoCaoTuan['ma_don_vi']=$donVi['ma_don_vi'];
            $dataBaoCaoTuan['ghi_chu']=null;
            $dataBaoCaoTuan['thoi_gian_bao_cao']=date('Y-m-d H:i:s');
            $dataBaoCaoTuan['trang_thai']=0;
            $dataBaoCaoTuan['is_group']=0;
            $dataBaoCaoTuan['sap_xep']=0;
            BcKeHoachTuan::create($dataBaoCaoTuan); // Lưu dữ liệu vào DB
            return array("error"=>''); // Trả về thông báo lưu dữ liệu thành công
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu"); // Báo lỗi phương thức truyền dữ liệu
    }

    public function xoaBaoCaoKeHoachTuan(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra phương thức gửi dữ liệu là AJAX
            $dataForm=RequestAjax::all(); // Lấy tất cả dữ liệu đã gửi
            if(!isset($dataForm['id'])){ // Kiểm tra nếu ko tồn tại id hoặc ko được xóa mấy cái dữ liệu hệ thống
                return array("error"=>'Không tìm thấy dữ liệu cần xóa'); // Trả lỗi về AJAX
            }
            $id=$dataForm['id']; //ngược lại có id
            $bcKeHoachTuan=BcKeHoachTuan::where("id","=",$id)->get();
            if(count($bcKeHoachTuan)==1){
                // Kiểm tra đã chốt số liệu chưa
                $idTuan=$bcKeHoachTuan[0]['id_tuan'];
                $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
                $ma='';
                if($baoCaoTheoMaDinhDanh==1){
                    $ma=$bcKeHoachTuan[0]['ma_dinh_danh'];
                }else{
                    $ma=$bcKeHoachTuan[0]['ma_don_vi'];
                }
                
                $daChoSoLieu=BcDmThoiGianBaoCao::kiemTraDaChotSoLieu($idTuan, $ma);
                if($daChoSoLieu==1){
                    return array('error'=>"Lỗi đã chốt số liệu nên không thể chỉnh sửa."); // Trả về lỗi phương thức truyền số liệu
                }
                // End Kiểm tra đã chốt số liệu chưa

                BcKeHoachTuan::where("id","=",$id)->delete();
                return array("error"=>'');
            }else{
                return array("error"=>'Không tìm thấy dữ liệu cần xóa'); // Trả lỗi về AJAX
            }         
            
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu");
    }

    public function bcIsGroupKeHoachTuan(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra phương thức gửi dữ liệu là AJAX
            $dataForm=RequestAjax::all(); // Lấy tất cả dữ liệu đã gửi
            if(!isset($dataForm['id'])){ // Kiểm tra nếu ko tồn tại id hoặc ko được xóa mấy cái dữ liệu hệ thống
                return array("error"=>'Không tìm thấy dữ liệu cần xóa'); // Trả lỗi về AJAX
            }
            $id=$dataForm['id']; //ngược lại có id
            $bcKeHoachTuan=BcKeHoachTuan::where("id","=",$id)->get();
            if(count($bcKeHoachTuan)==1){
                // Kiểm tra đã chốt số liệu chưa
                $idTuan=$bcKeHoachTuan[0]['id_tuan'];
                $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
                $ma='';
                if($baoCaoTheoMaDinhDanh==1){
                    $ma=$bcKeHoachTuan[0]['ma_dinh_danh'];
                }else{
                    $ma=$bcKeHoachTuan[0]['ma_don_vi'];
                }
                
                $daChoSoLieu=BcDmThoiGianBaoCao::kiemTraDaChotSoLieu($idTuan, $ma);
                if($daChoSoLieu==1){
                    return array('error'=>"Lỗi đã chốt số liệu nên không thể chỉnh sửa."); // Trả về lỗi phương thức truyền số liệu
                }
                // End Kiểm tra đã chốt số liệu chưa

                $bcKeHoachTuan=BcKeHoachTuan::find($id);
                $isGroup=$bcKeHoachTuan->is_group;
                if($isGroup==1){
                    $bcKeHoachTuan->is_group=0;
                }else{
                    $bcKeHoachTuan->is_group=1;
                }
                $bcKeHoachTuan->save();
                return array("error"=>'');
            }else{
                return array("error"=>'Không tìm thấy dữ liệu cần xóa'); // Trả lỗi về AJAX
            }         
            
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu");
    }
    // End báo cáo tuần kế tiếp

     // ĐHSXKD
    // Danh sách điều hành sản xuất kinh doanh
    /*
        Lấy trong bảng lên
    */
    protected $ma='';
    public function danhSachBaoCaoDhsxkd(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra gửi đường ajax
            $userId=0; $error=''; // Khai báo biến
            if(Auth::id()){
                $userId=Auth::id();
            }
            $data=RequestAjax::all(); // Lấy tất cả dữ liệu
            $idTuan=$data['id'];
            $donVi=DonVi::getDonViCapTrenTheoTaiKhoan($userId, 'KHAC');
            if ($donVi['error']>0) {
                return array('error'=>"Lỗi tài khoản không có quyền báo cáo."); // Trả về lỗi phương thức truyền số liệu
            }
            $donVi=$donVi['data'];       
            
            $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
            $ma=''; // Mã đơn vị hay mã định danh
            $idThoiGianBaoCaoDhsxkd=0; $baoCaoPakns=array();
            $thoiGianLaySoLieu='';

            if($baoCaoTheoMaDinhDanh==1){
                $ma=$donVi['ma_dinh_danh'];
                $idThoiGianBaoCaoDhsxkd=0;
                $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_dinh_danh','=',$ma)->where('id_tuan','=',$idTuan)->get()->toArray();
                if (count($thoiGianBaoCaoTheoDonVi)<=0) { // Nếu chưa có thì thêm vô và chốt luôn
                    $dataDmThoiGianBaoCao=array();
                    $dataDmThoiGianBaoCao['ma_don_vi']=$donVi['ma_don_vi'];
                    $dataDmThoiGianBaoCao['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                    $dataDmThoiGianBaoCao['id_tuan']=$idTuan;
                    $dataDmThoiGianBaoCao['thoi_gian_lay_so_lieu']=date('Y-m-d H:i:s');
                    $dataDmThoiGianBaoCao['thoi_gian_chot_so_lieu']=null;
                    $dataDmThoiGianBaoCao['ghi_chu']=null;
                    $dataDmThoiGianBaoCao['trang_thai']=0;
                    $bcDmThoiGianBaoCao=BcDmThoiGianBaoCao::create($dataDmThoiGianBaoCao);
                    $idThoiGianBaoCaoDhsxkd=$bcDmThoiGianBaoCao->id;
                    $thoiGianLaySoLieu=$bcDmThoiGianBaoCao->thoi_gian_lay_so_lieu;

                }else{ //Ngược lại thì chốt
                    $idThoiGianBaoCaoDhsxkd=$thoiGianBaoCaoTheoDonVi[0]['id'];
                    $thoiGianLaySoLieu=date('Y-m-d H:i:s');
                    $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_dinh_danh','=',$ma)->where('id_tuan','=',$idTuan)->update(['thoi_gian_lay_so_lieu'=>$thoiGianLaySoLieu]);
                }
                $baoCaoPakns=BcDhsxkd::layDanhSachBcDhsxkdTheoLoai($ma, $idThoiGianBaoCaoDhsxkd, 'PAKN');
            }else{ // Ngược lại báo cáo theo mã đơn vị
                $ma=$donVi['ma_don_vi'];
                $idThoiGianBaoCaoDhsxkd=0;
                $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_don_vi','=',$ma)->where('id_tuan','=',$idTuan)->get()->toArray();
                if (count($thoiGianBaoCaoTheoDonVi)<=0) { // Nếu chưa có thì thêm vô và chốt luôn
                    $dataDmThoiGianBaoCao=array();
                    $dataDmThoiGianBaoCao['ma_don_vi']=$donVi['ma_don_vi'];
                    $dataDmThoiGianBaoCao['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                    $dataDmThoiGianBaoCao['id_tuan']=$idTuan;
                    $dataDmThoiGianBaoCao['thoi_gian_lay_so_lieu']=date('Y-m-d H:i:s');
                    $dataDmThoiGianBaoCao['thoi_gian_chot_so_lieu']=null;
                    $dataDmThoiGianBaoCao['ghi_chu']=null;
                    $dataDmThoiGianBaoCao['trang_thai']=0;
                    $bcDmThoiGianBaoCao=BcDmThoiGianBaoCao::create($dataDmThoiGianBaoCao);
                    $idThoiGianBaoCaoDhsxkd=$bcDmThoiGianBaoCao->id;
                    $thoiGianLaySoLieu=$bcDmThoiGianBaoCao->thoi_gian_lay_so_lieu;
                }else{ //Ngược lại thì chốt
                    $idThoiGianBaoCaoDhsxkd=$thoiGianBaoCaoTheoDonVi[0]['id'];
                    $thoiGianLaySoLieu=date('Y-m-d H:i:s');
                    $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_don_vi','=',$ma)->where('id_tuan','=',$idTuan)->update(['thoi_gian_lay_so_lieu'=>$thoiGianLaySoLieu]);
                }
                $baoCaoPakns=BcDhsxkd::layDanhSachBcDhsxkdTheoLoai($ma, $idThoiGianBaoCaoDhsxkd, 'PAKN');
            }

            // Lấy ngày lấy số liệu của tuần trước
            $this->ma=$ma;
            $tuan=0; $nam=0;
            $dmTuan=BcDmTuan::where('id','=',$idTuan)->get()->toArray();
            if(count($dmTuan)>0){
                $tuan=$dmTuan[0]['tuan'];
                $nam=$dmTuan[0]['nam'];
            }
            $idTuanTruoc=0;
            $idTuanTruoc=0;
            if($tuan==1) {
                $namTruoc=$nam-1;
                $thoiGianBaoCaoTheoDonViTuanTruoc=DB::SELECT('SELECT * FROM bc_dm_tuan dmt
                    WHERE dmt.tuan=(SELECT MAX(tuan) FROM bc_dm_tuan WHERE nam='.$namTruoc.')');
                $thoiGianBaoCaoTheoDonViTuanTruoc = collect($thoiGianBaoCaoTheoDonViTuanTruoc)->map(function($x){ return (array) $x; })->toArray(); 
                $idTuanTruoc=$thoiGianBaoCaoTheoDonViTuanTruoc[0]['id'];
            }else{
                $tuanTruoc=$tuan-1;
                $thoiGianBaoCaoTheoDonViTuanTruoc=DB::SELECT('SELECT * FROM bc_dm_tuan dmt
                    WHERE dmt.tuan='.$tuanTruoc.' AND dmt.nam='.$nam);
                $thoiGianBaoCaoTheoDonViTuanTruoc = collect($thoiGianBaoCaoTheoDonViTuanTruoc)->map(function($x){ return (array) $x; })->toArray(); 
                $idTuanTruoc=$thoiGianBaoCaoTheoDonViTuanTruoc[0]['id'];
            }
            $dmThoiGianBaoCaoTuanTruoc=BcDmThoiGianBaoCao::where('id_tuan','=',$idTuanTruoc)->where(function($query) {
                    $query->where('ma_dinh_danh','=',$this->ma)->orWhere('ma_don_vi','=',$this->ma);
                })->get()->toArray();
            $ngayLayDuLieuTuanTruoc='';
            if(count($dmThoiGianBaoCaoTuanTruoc)>0){
                $ngayLayDuLieuTuanTruoc=$dmThoiGianBaoCaoTuanTruoc[0]['thoi_gian_lay_so_lieu'];
            }
            // End lấy ngày lấy số liệu của tuần trước
            $view=view('BaoCaoTuan::don-vi-truc-thuoc-khac.danh-sach-bao-cao-dhsxkd', compact('baoCaoPakns','error','idTuan', 'ma', 'thoiGianLaySoLieu', 'ngayLayDuLieuTuanTruoc'))->render(); // Trả dữ liệu ra view 
            return response()->json(['html'=>$view,'error'=>$error]); // Return dữ liệu ra ajax
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu"); // Trả về lỗi phương thức truyền số liệu
    }

    public function capNhatGhiChuBaoCaoDhsxkd(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra gửi đường ajax
            $userId=0; $error=''; // Khai báo biến
            if(Auth::id()){
                $userId=Auth::id();
            }
            $data=RequestAjax::all(); // Lấy tất cả dữ liệu
            $id=$data['id'];
            $ghiChu=$data['ghi_chu'];
            $donVi=DonVi::getDonViCapTrenTheoTaiKhoan($userId, 'KHAC');
            if ($donVi['error']>0) {
                return array('error'=>"Lỗi tài khoản không có quyền báo cáo"); // Trả về lỗi phương thức truyền số liệu
            }
            $donVi=$donVi['data'];   

            $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
            $ma='';
            if($baoCaoTheoMaDinhDanh==1){
                $ma=$donVi['ma_dinh_danh'];
            }else{
                $ma=$donVi['ma_don_vi'];
            }

            $this->ma=$ma;
            $bcDhsxkd=BcDhsxkd::where('id',$id)->where(function($query) {
                $query->where('ma_dinh_danh','=',$this->ma)->orWhere('ma_don_vi','=',$this->ma);
            })->update(['ghi_chu'=>$ghiChu]);
            return array('error'=>""); // Trả về lỗi phương thức truyền số liệu
            
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu"); // Trả về lỗi phương thức truyền số liệu
    }

    public function laySoLieuBaoCaoDhsxkd(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra gửi đường ajax
            $userId=0; $error=''; // Khai báo biến
            if(Auth::id()){
                $userId=Auth::id();
            }
            $data=RequestAjax::all(); // Lấy tất cả dữ liệu
            $idTuan=$data['id'];
            $donVi=DonVi::getDonViCapTrenTheoTaiKhoan($userId, 'KHAC');
            if ($donVi['error']>0) {
                return array('error'=>"Lỗi tài khoản không có quyền báo cáo"); // Trả về lỗi phương thức truyền số liệu
            }
            $donVi=$donVi['data'];   

            $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
            $ma='';
            if($baoCaoTheoMaDinhDanh==1){
                $ma=$donVi['ma_dinh_danh'];
            }else{
                $ma=$donVi['ma_don_vi'];
            }
            $this->ma=$ma;



            
            // Nếu chưa chốt số liệu thì cho lấy số liệu
            // Ngược lại không lấy
            $daChoSoLieu=BcDmThoiGianBaoCao::kiemTraDaChotSoLieu($idTuan, $ma);
            if($daChoSoLieu==0){
                $thoiGianLaySoLieu=date('Y-m-d H:i:s');
                $idThoiGianBaoCaoDhsxkd=0;
                

                // Cập nhật lại thời gian lấy số liệu                
                $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('id_tuan','=',$idTuan)->where(function($query) {
                    $query->where('ma_dinh_danh','=',$this->ma)->orWhere('ma_don_vi','=',$this->ma);
                })->get()->toArray();
                if(count($thoiGianBaoCaoTheoDonVi)<=0){
                    $dataDmThoiGianBaoCao=array();
                    $dataDmThoiGianBaoCao['ma_don_vi']=$donVi['ma_don_vi'];
                    $dataDmThoiGianBaoCao['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                    $dataDmThoiGianBaoCao['id_tuan']=$idTuan;
                    $dataDmThoiGianBaoCao['thoi_gian_lay_so_lieu']=$thoiGianLaySoLieu;
                    $dataDmThoiGianBaoCao['thoi_gian_chot_so_lieu']=null;
                    $dataDmThoiGianBaoCao['ghi_chu']=null;
                    $dataDmThoiGianBaoCao['trang_thai']=0;
                    $bcDmThoiGianBaoCao=BcDmThoiGianBaoCao::create($dataDmThoiGianBaoCao);
                    $idThoiGianBaoCaoDhsxkd=$bcDmThoiGianBaoCao->id;

                }else{
                    $idThoiGianBaoCaoDhsxkd=$thoiGianBaoCaoTheoDonVi[0]['id'];
                    BcDmThoiGianBaoCao::where('id_tuan','=',$idTuan)->where(function($query) {
                        $query->where('ma_dinh_danh','=',$this->ma)->orWhere('ma_don_vi','=',$this->ma);
                    })->update(['thoi_gian_lay_so_lieu'=>$thoiGianLaySoLieu]);
                }

                // Lấy ngày lấy số liệu của tuần trước
                $tuan=0; $nam=0;
                $dmTuan=BcDmTuan::where('id','=',$idTuan)->get()->toArray();
                if(count($dmTuan)>0){
                    $tuan=$dmTuan[0]['tuan'];
                    $nam=$dmTuan[0]['nam'];
                }
                $idTuanTruoc=0;
                $idTuanTruoc=0;
                if($tuan==1) {
                    $namTruoc=$nam-1;
                    $thoiGianBaoCaoTheoDonViTuanTruoc=DB::SELECT('SELECT * FROM bc_dm_tuan dmt
                        WHERE dmt.tuan=(SELECT MAX(tuan) FROM bc_dm_tuan WHERE nam='.$namTruoc.')');
                    $thoiGianBaoCaoTheoDonViTuanTruoc = collect($thoiGianBaoCaoTheoDonViTuanTruoc)->map(function($x){ return (array) $x; })->toArray(); 
                    $idTuanTruoc=$thoiGianBaoCaoTheoDonViTuanTruoc[0]['id'];
                }else{
                    $tuanTruoc=$tuan-1;
                    $thoiGianBaoCaoTheoDonViTuanTruoc=DB::SELECT('SELECT * FROM bc_dm_tuan dmt
                        WHERE dmt.tuan='.$tuanTruoc.' AND dmt.nam='.$nam);
                    $thoiGianBaoCaoTheoDonViTuanTruoc = collect($thoiGianBaoCaoTheoDonViTuanTruoc)->map(function($x){ return (array) $x; })->toArray(); 
                    $idTuanTruoc=$thoiGianBaoCaoTheoDonViTuanTruoc[0]['id'];
                }
                $dmThoiGianBaoCaoTuanTruoc=BcDmThoiGianBaoCao::where('id_tuan','=',$idTuanTruoc)->where(function($query) {
                        $query->where('ma_dinh_danh','=',$this->ma)->orWhere('ma_don_vi','=',$this->ma);
                    })->get()->toArray();
                $ngayLayDuLieuTuanTruoc='';
                if(count($dmThoiGianBaoCaoTuanTruoc)>0){
                    $ngayLayDuLieuTuanTruoc=$dmThoiGianBaoCaoTuanTruoc[0]['thoi_gian_lay_so_lieu'];
                }
                // End lấy ngày lấy số liệu của tuần trước

                // Lấy lại số liệu
                BcDhsxkd::where('id_thoigian_baocao','=',$idThoiGianBaoCaoDhsxkd)->where(function($query) {
                        $query->where('ma_dinh_danh','=',$this->ma)->orWhere('ma_don_vi','=',$this->ma);
                    })->delete();
                $dataDhsxkd=array();
                $dataDhsxkd['ma_don_vi']=$donVi['ma_don_vi'];
                $dataDhsxkd['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                $dataDhsxkd['id_thoigian_baocao']=$idThoiGianBaoCaoDhsxkd;
                $dataDhsxkd['id_user_bao_cao']=$userId;
                $dataDhsxkd['chi_so']='XU_LY_PAKN';
                $dataDhsxkd['gia_tri']=10;
                $dataDhsxkd['is_group']=0;
                $dataDhsxkd['ghi_chu']='';
                $dataDhsxkd['loai_chi_so']='PAKN';
                $dataDhsxkd['trang_thai']=0;
                $dataDhsxkd['sap_xep']=0;
                $bcDhsxkd=BcDhsxkd::create($dataDhsxkd);


                $dataDhsxkd=array();
                $dataDhsxkd['ma_don_vi']=$donVi['ma_don_vi'];
                $dataDhsxkd['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                $dataDhsxkd['id_thoigian_baocao']=$idThoiGianBaoCaoDhsxkd;
                $dataDhsxkd['id_user_bao_cao']=$userId;
                $dataDhsxkd['is_group']=0;
                $dataDhsxkd['ghi_chu']='';
                $dataDhsxkd['trang_thai']=0;
                $dataDhsxkd['sap_xep']=0;
                $dataDhsxkd['chi_so']='PAKN_CHUA_XU_LY';
                $dataDhsxkd['gia_tri']=11;
                $dataDhsxkd['loai_chi_so']='PAKN';
                $bcDhsxkd=BcDhsxkd::create($dataDhsxkd);

                
                $dataDhsxkd=array();
                $dataDhsxkd['ma_don_vi']=$donVi['ma_don_vi'];
                $dataDhsxkd['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                $dataDhsxkd['id_thoigian_baocao']=$idThoiGianBaoCaoDhsxkd;
                $dataDhsxkd['id_user_bao_cao']=$userId;
                $dataDhsxkd['is_group']=0;
                $dataDhsxkd['ghi_chu']='';
                $dataDhsxkd['trang_thai']=0;
                $dataDhsxkd['sap_xep']=0;
                $dataDhsxkd['chi_so']='PAKN_DANG_XU_LY';
                $dataDhsxkd['gia_tri']=11;
                $dataDhsxkd['loai_chi_so']='PAKN';
                $bcDhsxkd2=BcDhsxkd::create($dataDhsxkd);

                $dataDhsxkd=array();
                $dataDhsxkd['ma_don_vi']=$donVi['ma_don_vi'];
                $dataDhsxkd['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                $dataDhsxkd['id_thoigian_baocao']=$idThoiGianBaoCaoDhsxkd;
                $dataDhsxkd['id_user_bao_cao']=$userId;
                $dataDhsxkd['is_group']=0;
                $dataDhsxkd['ghi_chu']='';
                $dataDhsxkd['trang_thai']=0;
                $dataDhsxkd['sap_xep']=0;
                $dataDhsxkd['chi_so']='PAKN_DA_XU_LY';
                $dataDhsxkd['gia_tri']=11;
                $dataDhsxkd['loai_chi_so']='PAKN';
                $bcDhsxkd6=BcDhsxkd::create($dataDhsxkd);
            }else{ 

            }

            return array('error'=>""); // Trả về lỗi phương thức truyền số liệu
            
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu"); // Trả về lỗi phương thức truyền số liệu
    }
    // End báo cáo dhsxkd

    // Chốt và gửi báo cáo tổng hợp
    public function danhSachBaoCaoTongHop(Request $request){
        if(RequestAjax::ajax()){ // Kiểm tra gửi đường ajax
            $userId=0; $error=''; // Khai báo biến
            if(Auth::id()){
                $userId=Auth::id();
            }
            $data=RequestAjax::all(); // Lấy tất cả dữ liệu
            $idTuan=$data['id'];
            $dmTuan=BcDmTuan::where('id','=',$idTuan)->get()->toArray();
            if(count($dmTuan)<=0){
                return array('error'=>"Lỗi không tìm thấy thời gian báo cáo");
            }
            $dmTuan=$dmTuan[0];
            $donVi=DonVi::getDonViCapTrenTheoTaiKhoan($userId, 'KHAC');
            if ($donVi['error']>0) {
                return array('error'=>"Lỗi Lỗi tài khoản không có quyền báo cáo."); // Trả về lỗi phương thức truyền số liệu
            }
            $donVi=$donVi['data'];       
            
            $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
            $ma=''; // Mã đơn vị hay mã định danh
            $baoCaoTuanHienTais=array();

            // ĐHSXKD
            $idThoiGianBaoCaoDhsxkd=0; $baoCaoPakns=array();
            $thoiGianLaySoLieu='';
            if($baoCaoTheoMaDinhDanh==1){
                $ma=$donVi['ma_dinh_danh'];

                $baoCaoTuanHienTais=BcTuanHienTai::where('id_tuan','=',$idTuan)
                ->where('ma_dinh_danh','=',$donVi['ma_dinh_danh'])
                ->get()->toArray();

                $baoCaoKeHoachTuans=BcKeHoachTuan::where('id_tuan','=',$idTuan)
                ->where('ma_dinh_danh','=',$donVi['ma_dinh_danh'])
                ->get()->toArray();

                // ĐHSXKD
                $idThoiGianBaoCaoDhsxkd=0;
                $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_dinh_danh','=',$ma)->where('id_tuan','=',$idTuan)->get()->toArray();
                if (count($thoiGianBaoCaoTheoDonVi)<=0) { // Nếu chưa có thì thêm vô và chốt luôn
                    $dataDmThoiGianBaoCao=array();
                    $dataDmThoiGianBaoCao['ma_don_vi']=$donVi['ma_don_vi'];
                    $dataDmThoiGianBaoCao['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                    $dataDmThoiGianBaoCao['id_tuan']=$idTuan;
                    $dataDmThoiGianBaoCao['thoi_gian_lay_so_lieu']=date('Y-m-d H:i:s');
                    $dataDmThoiGianBaoCao['thoi_gian_chot_so_lieu']=null;
                    $dataDmThoiGianBaoCao['ghi_chu']=null;
                    $dataDmThoiGianBaoCao['trang_thai']=0;
                    $bcDmThoiGianBaoCao=BcDmThoiGianBaoCao::create($dataDmThoiGianBaoCao);
                    $idThoiGianBaoCaoDhsxkd=$bcDmThoiGianBaoCao->id;
                    $thoiGianLaySoLieu=$bcDmThoiGianBaoCao->thoi_gian_lay_so_lieu;

                }else{ //Ngược lại thì chốt
                    $idThoiGianBaoCaoDhsxkd=$thoiGianBaoCaoTheoDonVi[0]['id'];
                    $thoiGianLaySoLieu=date('Y-m-d H:i:s');
                    $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_dinh_danh','=',$ma)->where('id_tuan','=',$idTuan)->update(['thoi_gian_lay_so_lieu'=>$thoiGianLaySoLieu]);
                }
                $baoCaoPakns=BcDhsxkd::layDanhSachBcDhsxkdTheoLoai($ma, $idThoiGianBaoCaoDhsxkd, 'PAKN');
                // End DHSXKD

                
            }else{ // Ngược lại báo cáo theo mã đơn vị
                $ma=$donVi['ma_don_vi'];


                $baoCaoTuanHienTais=BcTuanHienTai::where('id_tuan','=',$idTuan)
                ->where('ma_don_vi','=',$donVi['ma_don_vi'])
                ->get()->toArray();

                $baoCaoKeHoachTuans=BcKeHoachTuan::where('id_tuan','=',$idTuan)
                ->where('ma_don_vi','=',$donVi['ma_don_vi'])
                ->get()->toArray();

                // ĐHSXKD
                $idThoiGianBaoCaoDhsxkd=0;
                $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_don_vi','=',$ma)->where('id_tuan','=',$idTuan)->get()->toArray();
                if (count($thoiGianBaoCaoTheoDonVi)<=0) { // Nếu chưa có thì thêm vô và chốt luôn
                    $dataDmThoiGianBaoCao=array();
                    $dataDmThoiGianBaoCao['ma_don_vi']=$donVi['ma_don_vi'];
                    $dataDmThoiGianBaoCao['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                    $dataDmThoiGianBaoCao['id_tuan']=$idTuan;
                    $dataDmThoiGianBaoCao['thoi_gian_lay_so_lieu']=date('Y-m-d H:i:s');
                    $dataDmThoiGianBaoCao['thoi_gian_chot_so_lieu']=null;
                    $dataDmThoiGianBaoCao['ghi_chu']=null;
                    $dataDmThoiGianBaoCao['trang_thai']=0;
                    $bcDmThoiGianBaoCao=BcDmThoiGianBaoCao::create($dataDmThoiGianBaoCao);
                    $idThoiGianBaoCaoDhsxkd=$bcDmThoiGianBaoCao->id;
                    $thoiGianLaySoLieu=$bcDmThoiGianBaoCao->thoi_gian_lay_so_lieu;
                }else{ //Ngược lại thì chốt
                    $idThoiGianBaoCaoDhsxkd=$thoiGianBaoCaoTheoDonVi[0]['id'];
                    $thoiGianLaySoLieu=date('Y-m-d H:i:s');
                    $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_don_vi','=',$ma)->where('id_tuan','=',$idTuan)->update(['thoi_gian_lay_so_lieu'=>$thoiGianLaySoLieu]);
                }
                $baoCaoPakns=BcDhsxkd::layDanhSachBcDhsxkdTheoLoai($ma, $idThoiGianBaoCaoDhsxkd, 'PAKN');
                // End DHSXKD
                
            }
            $view=view('BaoCaoTuan::don-vi-truc-thuoc-khac.danh-sach-bao-cao-tong-hop', compact('baoCaoPakns', 'baoCaoTuanHienTais', 'baoCaoKeHoachTuans','error','idTuan', 'ma', 'dmTuan', 'donVi'))->render(); // Trả dữ liệu ra view 
            return response()->json(['html'=>$view,'error'=>$error]); // Return dữ liệu ra ajax
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu"); // Trả về lỗi phương thức truyền số liệu
    }

    public function baoCaoTuanChotSoLieu(Request $request){
       if(RequestAjax::ajax()){ // Kiểm tra gửi đường ajax
            $userId=0; $error=''; // Khai báo biến
            if(Auth::id()){
                $userId=Auth::id();
            }
            $data=RequestAjax::all(); // Lấy tất cả dữ liệu
            $idTuan=$data['id'];

            $donVi=DonVi::getDonViCapTrenTheoTaiKhoan($userId, 'KHAC');
            if ($donVi['error']>0) {
                return array('error'=>"Lỗi Lỗi tài khoản không có quyền báo cáo."); // Trả về lỗi phương thức truyền số liệu
            }
            $donVi=$donVi['data'];  
            $baoCaoTheoMaDinhDanh=DmThamSoHeThong::getValueByName('BC_BAO_CAO_THEO_MA_DINH_DANH');
            $ma='';
            if($baoCaoTheoMaDinhDanh==1){
                $ma=$donVi['ma_dinh_danh'];
            }else{
                $ma=$donVi['ma_don_vi'];
            }
            // Kiểm tra đã chốt số liệu chưa
            // $daChoSoLieu=BcDmThoiGianBaoCao::kiemTraDaChotSoLieu($idTuan, $ma);
            // if($daChoSoLieu==1){
            //     return array('error'=>"Chốt số liệu thất bại, do báo cáo đã được gửi nên không thể chỉnh sửa."); // Trả về lỗi phương thức truyền số liệu
            // }
            // Kiểm tra vượt thời gian gửi báo cáo
            $daVuotThoiGianBaoCao=BcDmThoiGianBaoCao::kiemTraVuotNgayChotSoLieu($idTuan);
            if($daVuotThoiGianBaoCao==1){
                return array('error'=>"Chốt số liệu thất bại, do vượt quá thời gian báo cáo."); // Trả về lỗi phương thức truyền số liệu
            }

            
            if($baoCaoTheoMaDinhDanh==1){
                // Chốt báo cáo tổng thể
                $idThoiGianBaoCaoDhsxkd=0;
                $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_dinh_danh','=',$ma)->where('id_tuan','=',$idTuan)->get()->toArray();
                if (count($thoiGianBaoCaoTheoDonVi)<=0) { // Nếu chưa có thì thêm vô và chốt luôn
                    $dataDmThoiGianBaoCao=array();
                    $dataDmThoiGianBaoCao['ma_don_vi']=$donVi['ma_don_vi'];
                    $dataDmThoiGianBaoCao['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                    $dataDmThoiGianBaoCao['id_tuan']=$idTuan;
                    $dataDmThoiGianBaoCao['thoi_gian_lay_so_lieu']=date('Y-m-d H:i:s');
                    $dataDmThoiGianBaoCao['thoi_gian_chot_so_lieu']=date('Y-m-d H:i:s');
                    $dataDmThoiGianBaoCao['ghi_chu']=null;
                    $dataDmThoiGianBaoCao['trang_thai']=2;
                    $bcDmThoiGianBaoCao=BcDmThoiGianBaoCao::create($dataDmThoiGianBaoCao);
                    $idThoiGianBaoCaoDhsxkd=$bcDmThoiGianBaoCao->id;

                }else{ //Ngược lại thì chốt
                    $idThoiGianBaoCaoDhsxkd=$thoiGianBaoCaoTheoDonVi[0]['id'];
                    $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_dinh_danh','=',$ma)->where('id_tuan','=',$idTuan)->update(['trang_thai'=>2, 'thoi_gian_chot_so_lieu'=>date('Y-m-d H:i:s')]);
                }
                // Chốt báo cáo tuần hiện tại
                BcTuanHienTai::where('ma_dinh_danh','=',$ma)->where('id_tuan','=',$idTuan)->update(['trang_thai'=>2]);
                // Chốt kế hoạch tuần
                BcKeHoachTuan::where('ma_dinh_danh','=',$ma)->where('id_tuan','=',$idTuan)->update(['trang_thai'=>2]);
                // Chốt số liệu ĐHSXKD
                BcDhsxkd::where('ma_dinh_danh','=',$ma)->where('id_thoigian_baocao','=',$idThoiGianBaoCaoDhsxkd)->update(['trang_thai'=>2]);
                
            }else{
                // Chốt báo cáo tổng thể
                $idThoiGianBaoCaoDhsxkd=0;
                $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_don_vi','=',$ma)->where('id_tuan','=',$idTuan)->get()->toArray();
                if (count($thoiGianBaoCaoTheoDonVi)<=0) { // Nếu chưa có thì thêm vô và chốt luôn
                    $dataDmThoiGianBaoCao=array();
                    $dataDmThoiGianBaoCao['ma_don_vi']=$donVi['ma_don_vi'];
                    $dataDmThoiGianBaoCao['ma_dinh_danh']=$donVi['ma_dinh_danh'];
                    $dataDmThoiGianBaoCao['id_tuan']=$idTuan;
                    $dataDmThoiGianBaoCao['thoi_gian_lay_so_lieu']=date('Y-m-d H:i:s');
                    $dataDmThoiGianBaoCao['thoi_gian_chot_so_lieu']=date('Y-m-d H:i:s');
                    $dataDmThoiGianBaoCao['ghi_chu']=null;
                    $dataDmThoiGianBaoCao['trang_thai']=2;
                    $bcDmThoiGianBaoCao=BcDmThoiGianBaoCao::create($dataDmThoiGianBaoCao);
                    $idThoiGianBaoCaoDhsxkd=$bcDmThoiGianBaoCao->id;

                }else{ //Ngược lại thì chốt
                    $idThoiGianBaoCaoDhsxkd=$thoiGianBaoCaoTheoDonVi[0]['id'];
                    $thoiGianBaoCaoTheoDonVi=BcDmThoiGianBaoCao::where('ma_don_vi','=',$ma)->where('id_tuan','=',$idTuan)->update(['trang_thai'=>2, 'thoi_gian_chot_so_lieu'=>date('Y-m-d H:i:s')]);
                }
                // Chốt báo cáo tuần hiện tại
                BcTuanHienTai::where('ma_don_vi','=',$ma)->where('id_tuan','=',$idTuan)->update(['trang_thai'=>2]);
                // Chốt kế hoạch tuần
                BcKeHoachTuan::where('ma_don_vi','=',$ma)->where('id_tuan','=',$idTuan)->update(['trang_thai'=>2]);
                // Chốt số liệu ĐHSXKD
                BcDhsxkd::where('ma_don_vi','=',$ma)->where('id_thoigian_baocao','=',$idThoiGianBaoCaoDhsxkd)->update(['trang_thai'=>2]);
            }
            return array("error"=>''); // Trả về thông báo lưu dữ liệu thành công
        }
        return array('error'=>"Lỗi phương thức truyền dữ liệu"); // Báo lỗi phương thức truyền dữ liệu
    }
    
    
}