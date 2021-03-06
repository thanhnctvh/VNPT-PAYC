@php
  $daChotSoLieu=Helper::kiemTraDaChotSoLieu($idTuan, $ma);
@endphp
<table id="table-bao-cao-ke-hoach-tuan" class="table table-hover table-bao-cao-ke-hoach-tuan">
  <thead>
      <tr class="background-vnpt text-center">
          <th style="width: 10%;">STT #</th>
          <th style="width: 75%;">Nội dung kế hoạch tuần sau</th>
          <th style="width: 15%;">
              @if ($daChotSoLieu>0)
                  Trạng thái
              @else
                Xử lý
              @endif
          </th>
      </tr>
  </thead>
  <tbody>    
      @php $stt=0; @endphp
      @foreach ($baoCaos as $baoCao)
        @php $stt++; @endphp
        <tr class="tr-hover tr-small">
          <td class="text-center">{{$stt}}</td>
          <td>
            @php
              if($baoCao['is_group']==2){
                echo "<div class='is-group-2'><i class='fa fa-minus'></i>".$baoCao['noi_dung']."</div>";
              }
              elseif($baoCao['is_group']==1){
                echo "<div class='is-group-1'><i class='plus-sign'></i>".$baoCao['noi_dung']."</div>";
              }
              else{
                echo "<div class='is-group-0'><i class='white-circle'></i>".$baoCao['noi_dung']."</div>";
              }
            @endphp
          </td>
          <td class="text-center">
            @if ($daChotSoLieu==0)
                
                <i class="is-group fa fa-th-list cusor i-hover @if($baoCao['is_group']==2) {{"text-primary font-weight-bold"}} @endif"  data="{{$baoCao['id']}}_2"></i> &nbsp;&nbsp;&nbsp;                
                <i class="is-group fa fa-list-ul cusor i-hover @if($baoCao['is_group']==1) {{"text-primary font-weight-bold"}} @endif"  data="{{$baoCao['id']}}_1"></i> &nbsp;&nbsp;&nbsp;
                <i class="is-group fa fa fa-indent cusor i-hover @if($baoCao['is_group']==0) {{"text-primary font-weight-bold"}} @endif"  data="{{$baoCao['id']}}_0"></i> &nbsp;&nbsp;&nbsp;
                <i class="fa fa-times-rectangle-o text-danger cusor btn-xoa-bao-cao-ke-hoach-tuan" data="{{$baoCao['id']}}"></i>
            @else
                <div class="text-success">Đã chốt số liệu</div>
            @endif
              
          </td>
        </tr>
      @endforeach
  </tbody>
</table>   




<script type="text/javascript">
    jQuery(document).ready(function() {
       $('#table-bao-cao-ke-hoach-tuan').dataTable({
            aLengthMenu: [
                [25, 50, 100, 200, -1],
                [25, 50, 100, 200, "All"]
            ],
            iDisplayLength: -1
        });

       jQuery('.btn-xoa-bao-cao-ke-hoach-tuan').on('click',function(){  
          var _token=jQuery('form[name="frm-bao-cao-tuan"]').find("input[name='_token']").val();    
          var id=jQuery(this).attr("data"); // lấy id
          var idTuan=jQuery('#id_tuan').val(); 
          xoaVaRefreshDuLieuTheoId(_token, id, "{{ route('xoa-bao-cao-ke-hoach-tuan') }}", idTuan, "{{ route('danh-sach-bao-cao-ke-hoach-tuan') }}", '.load-danh-sach-bao-cao-ke-hoach-tuan');
          return false;
      });

      var daChotSoLieu={{$daChotSoLieu}};
      if(daChotSoLieu>0){
        jQuery('.noi-dung-bao-cao-ke-hoach-tuan').addClass('disabled').attr('disabled', true);
        jQuery('.btn-bao-cao-ke-hoach-tuan').addClass('disabled').attr('disabled', true);
      }else{
        jQuery('.noi-dung-bao-cao-ke-hoach-tuan').removeClass('disabled').attr('disabled', false);
        jQuery('.btn-bao-cao-ke-hoach-tuan').removeClass('disabled').attr('disabled', false);
      }

      jQuery('.is-group').on("click",function(){
        var _token=jQuery('form[name="frm-bao-cao-tuan"]').find("input[name='_token']").val();   
        var id=jQuery(this).attr('data');
        var idTuan=jQuery('#id_tuan').val(); 
        postAndRefreshById(_token, id, "{{ route('bc-is-group-ke-hoach-tuan') }}", idTuan, "{{ route('danh-sach-bao-cao-ke-hoach-tuan') }}", '.load-danh-sach-bao-cao-ke-hoach-tuan', false);
        return false;
      });
      



        
    });
</script>


