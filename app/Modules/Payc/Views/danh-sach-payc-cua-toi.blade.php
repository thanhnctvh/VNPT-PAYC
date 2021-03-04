@extends('layouts.index')
@section('title', 'Danh sách PAYC của tôi')
@section('content')
	<div class="col-lg-12">
	    <div class="card">
	        <div class="card-body">
	          	<div class="row">
                  <div class="col-6">
                    <h4 class="text-danger">DANH SÁCH PAYC CỦA TÔI</h4>
                    <small id="danh-muc-nhom-quyen-helper" class="form-text text-muted">Chức năng sẽ hiển thị danh sách những PAYC của bạn đã gửi</small>
                  </div>
                    <div class="col-6">
                       <div class="error-mode float-right"></div> 
                    </div>
                </div>	  
                <div class="text-right">
                    <div class="btn-group mr-2">
                        <button class="btn btn-sm btn-vnpt btn-kh-danh-gia" data-toggle="modal" data-target="#modal-danh-gia"><i class="fa fa-star"></i> Khách hàng đánh giá</button>
                    </div>                    
                </div>        	
    		  	
    		  	<div class="row">
    		  		<div class="col-12">
    		  			<table id="order-listing" class="table table-hover table-striped">
						    <thead>
						        <tr class="text-center background-vnpt">
						        	
						        	<th scope="col" style="width: 2%;"><input type="checkbox" name="id_payc[]" class="id_payc"></th>
						            <th scope="col" style="width: 8%;">Số phiếu</th>
						            <th scope="col" style="width: 50%;">Nội dung</th>
						            <th scope="col" style="width: 10%;">File</th>
						            <th scope="col" style="width: 10%;">Dịch vụ</th>
						            <th scope="col" style="width: 10%;">Ngày gửi</th>
						            <th scope="col" style="width: 10%;">QT xử lý</th>
						        </tr>
						    </thead>
						    <tbody>                       
						                     
						        <?php 
						            $stt=0;
						        ?>
						        @foreach($paycs as $payc)
						            <?php $stt++; ?>
						            <tr class="tr-hover">
						            	<th class="text-center check-id-payc" scope="row"><input type="checkbox" name="id_payc[]" class="id_payc" value="{{$payc['id_payc']}}"></th>
						                <th class="text-center" scope="row">{{$payc['so_phieu']}}</th>						                
						                <td class="noi_dung cusor" value="{{$payc['id_payc']}}">
						                <?php 
						                	$trangThai='';
						                	$style='text-default';
						                	if($payc['ma_trang_thai']=="HOAN_TAT"){
						                		$style='text-default';
						                		$trangThai="";
						                	}else{
						                		if($payc['ma_trang_thai']=="KH_DANH_GIA" and $payc['state']==0){
						                			$style='text-danger';
							                		$trangThai="Chờ bạn đánh giá";
						                		}
						                		if($payc['state']==1 && $payc['ma_trang_thai']=="LD_DANH_GIA"){
						                			$style='text-primary';
							                		$trangThai="LĐ đánh giá";
						                		}
						                		if($payc['state']==1 && $payc['ma_trang_thai']=="KH_DANH_GIA"){
						                			$style='text-primary';
							                		$trangThai="Bạn đã đánh giá";
						                		}
							                	
						                	}
						                	if($payc['tieu_de']){
						                    	echo '<b class="'.$style.'">'.$payc['tieu_de'].'</b>';
						                	}
							                	
						                ?>
						                </td>
						                <td>
						                <?php
						                    $files=explode(';', $payc['file_payc']);
						                    foreach ($files as $key => $file) {
						                    	if($file){
						                        	echo '<a href="/file/download/'.$file.'" class="a-file"><div class="show-file">'.$file.'</div></a><br>';
						                        }
						                    }
						                ?>
						                </td>
						                <td class="font-size-default">
						                	{{$payc['ten_dich_vu']}}
						                </td>
						                <td class="font-size-default">
						                	<span class="{{$style}}">{{$payc['ten_trang_thai_xu_ly']}}</span>
						                	@if($payc['ngay_tao'])
						                		<div class="text-default nowrap">{{$payc['ngay_tao']}}</div>
						                	@endif
						                	@if($payc['han_xu_ly_mong_muon'])
						                		<div class="text-primary nowrap">{{$payc['han_xu_ly_mong_muon']}}</div>
						                	@endif
						                	@if($payc['han_xu_ly_duoc_giao'])
						                		<div class="text-danger nowrap">{{$payc['han_xu_ly_duoc_giao']}}</div>
						                	@endif
						                </td>
						                <td class="text-center cusor qtxl" value="{{$payc['id_payc']}}" data-toggle="modal" data-target="#modal-qtxl">
						                    <i class="fa fa-sitemap text-primary"></i>
						                </td>
						            </tr>
						        @endforeach    
						    </tbody>
						</table>        
    		  		</div>
    		  </div>
	        </div>
	    </div>
    </div>


    <script type="text/javascript" src="{{ asset('public/js/jquery.min.js') }}"></script>
	<script type="text/javascript">
	jQuery(document).ready(function() {
		$.fn.dataTable.ext.errMode = 'none';
        $('.table').dataTable({
            aLengthMenu: [
                [25, 50, 100, 200, -1],
                [25, 50, 100, 200, "All"]
            ],
            iDisplayLength: -1
        });

        jQuery('.show-file').each(function( index ) {
            var name=jQuery(this).text();
            if(name){
                var arr=name.split(".");
                if(arr[arr.length-1]=='xls' || arr[arr.length-1]=='xlsx'){
                    jQuery(this).html('<i style="color:green;" class="mdi mdi-file-excel"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='doc' || arr[arr.length-1]=='docx'){
                    jQuery(this).html('<i style="color:blue;" class="mdi mdi-file-word"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='ppt' || arr[arr.length-1]=='pptx'){
                    jQuery(this).html('<i style="color:red;" class="mdi mdi-file-powerpoint"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='pdf'){
                    jQuery(this).html('<i style="color:red;" class="mdi mdi-file-pdf-box"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='php' || arr[arr.length-1]=='prc' || arr[arr.length-1]=='html' || arr[arr.length-1]=='js' || arr[arr.length-1]=='java' || arr[arr.length-1]=='css' || arr[arr.length-1]=='asp' || arr[arr.length-1]=='aspx' || arr[arr.length-1]=='sql' || arr[arr.length-1]=='pbix'){
                    jQuery(this).html('<i style="color:grey;" class="mdi mdi-code-not-equal-variant"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='txt'){
                    jQuery(this).html('<i  style="color:grey;" class="mdi mdi-note-text"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='zip' || arr[arr.length-1]=='rar'){
                    jQuery(this).html('<i style="color:grey;" class="mdi mdi-zip-box"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='png' || arr[arr.length-1]=='jpg' || arr[arr.length-1]=='jpeg'){
                    jQuery(this).html('<i grey class="mdi mdi-file-image"></i> '+name+'<br>');
                }else{
                    jQuery(this).html('<i grey class="mdi mdi-file"></i> '+name+'<br>');
                }
            }
                
        });	  

	  
	});
	</script>
@endsection


