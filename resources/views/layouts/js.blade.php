      <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
      <script type="text/javascript" src="{{ asset('public/js/jquery.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/custom.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/checkAll.js') }}"></script>
      <!-- container-scroller -->
      <!-- plugins:js -->
      <script type="text/javascript" src="{{ asset('public/vendors/js/vendor.bundle.base.js') }}"></script>
      <!-- endinject -->
      <!-- Plugin js for this page-->
      <script type="text/javascript" src="{{ asset('public/vendors/lightgallery/js/lightgallery-all.min.js') }}"></script>
      <!-- End plugin js for this page-->

      <!-- Sumerynote -->
      <script type="text/javascript" src="{{ asset('public/vendors/summernote/dist/summernote-bs4.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/tinymce/tinymce.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/quill/quill.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/simplemde/simplemde.min.js') }}"></script>
      
      <!-- inject:js -->
      <script type="text/javascript" src="{{ asset('public/js/off-canvas.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/hoverable-collapse.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/misc.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/settings.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/todolist.js') }}"></script>
      <!-- endinject -->
      <!-- Custom js for this page-->
      <script type="text/javascript" src="{{ asset('public/js/light-gallery.js') }}"></script>




      <script type="text/javascript" src="{{ asset('public/vendors/jquery-tags-input/jquery.tagsinput.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/progressbar.js/progressbar.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-bar-rating/jquery.barrating.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/jquery.inputmask.bundle.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/phone.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/phone-be.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/phone-ru.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/inputmask.binding.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/dropify/dropify.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/dropzone/dropzone.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-file-upload/jquery.uploadfile.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-asColor/jquery-asColor.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-asGradient/jquery-asGradient.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-asColorPicker/jquery-asColorPicker.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/moment/moment.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/x-editable/bootstrap-editable.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/clockpicker/jquery-clockpicker.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery.repeater/jquery.repeater.min.js') }}"></script>
      <!-- Custom js for this page-->
      <script type="text/javascript" src="{{ asset('public/js/formpickers.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/form-addons.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/x-editable.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/dropify.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/dropzone.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/jquery-file-upload.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/formpickers.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/form-repeater.js') }}"></script>

      <!-- Plugin js for this page-->
      <script type="text/javascript" src="{{ asset('public/vendors/datatables.net/jquery.dataTables.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/datatables.net-bs4/dataTables.bootstrap4.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/data-table.js') }}"></script>
      <!-- End plugin js for this page-->
      
      <!-- End custom js for this page-->
      <script type="text/javascript" src="{{ asset('public/js/tooltips.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/popover.js') }}"></script>

      <script src="{{ asset('public/vendors/jquery-toast-plugin/jquery.toast.min.js') }}"></script>
      <script src="{{ asset('public/js/toastDemo.js') }}"></script>

      <script src="{{ asset('public/js/export-word/FileSaver.js') }}"></script>
      <script src="{{ asset('public/js/export-word/jquery.wordexport.js') }}"></script>

      <script type="text/javascript">
         jQuery(document).ready(function(){     
          
          function checkSlidebarIconOnly(){
            if(jQuery('body').hasClass('sidebar-icon-only')){
              jQuery('.navbar-brand').text('REPORT');
            }else{
              jQuery('.navbar-brand').text('VNPT - REPORT');
            }
            jQuery('.icon-menu').on('click',function(){
              if(jQuery('body').hasClass('sidebar-icon-only')){
                jQuery('.navbar-brand').text('VNPT - REPORT');
              }else{
                jQuery('.navbar-brand').text('REPORT');
              }
            });
          }
          checkSlidebarIconOnly();
            $(".dropify").change(function() {
                  $('#myImg').html('');
                  if (this.files && this.files[0]) {
                        for (var i = 0; i < this.files.length; i++) {
                              var reader = new FileReader();
                              reader.onload = imageIsLoaded;
                              reader.readAsDataURL(this.files[i]);
                        }
                  }
            });

            $('.summernote').summernote({
              height: 100,                 // set editor height
              minHeight: null,             // set minimum height of editor
              maxHeight: null,             // set maximum height of editor
              focus: false                 // set focus to editable area after initializing summernote
            });

            function imageIsLoaded(e) {
                  
                  $('#myImg').append('<img src=' + e.target.result + ' style="max-height:200px; max-width:200px;">');
            };

            jQuery('.dang-nhap').on('click',function(){
                  window.location.href = "{{ route('login') }}";
            });

            jQuery('.dang-ky').on('click',function(){
                  window.location.href = "{{ route('register') }}";
            });


            jQuery('.btn-browse-file').on('click',function(){
                  var inputClass=jQuery(this).attr('click-on-class');
                  jQuery(inputClass).click();
            });
            
            $('input[type=file]').change(function (e) {
                  var html='';
                  var showFileIntoClass=jQuery(this).attr('show-file');
                  $.each( e.target.files, function( key, value ) {
                        var name=value.name;
                        var arr=name.split(".");
                        if(arr[arr.length-1]=='xls' || arr[arr.length-1]=='xlsx'){
                            html+='<i style="color:green;" class="mdi mdi-file-excel"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='doc' || arr[arr.length-1]=='docx'){
                            html+='<i style="color:blue;" class="mdi mdi-file-word"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='ppt' || arr[arr.length-1]=='pptx'){
                            html+='<i style="color:red;" class="mdi mdi-file-powerpoint"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='pdf'){
                            html+='<i style="color:red;" class="mdi mdi-file-pdf-box"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='php' || arr[arr.length-1]=='prc' || arr[arr.length-1]=='html' || arr[arr.length-1]=='js' || arr[arr.length-1]=='java' || arr[arr.length-1]=='css' || arr[arr.length-1]=='asp' || arr[arr.length-1]=='aspx' || arr[arr.length-1]=='sql' || arr[arr.length-1]=='pbix'){
                            html+='<i style="color:grey;" class="mdi mdi-code-not-equal-variant"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='txt'){
                            html+='<i  style="color:grey;" class="mdi mdi-note-text"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='zip' || arr[arr.length-1]=='rar'){
                            html+='<i style="color:grey;" class="mdi mdi-zip-box"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='png' || arr[arr.length-1]=='jpg' || arr[arr.length-1]=='jpeg'){
                            html+='<i grey class="mdi mdi-file-image"></i> '+name+'<br>';
                        }else{
                            html+='<i grey class="mdi mdi-file"></i> '+name+'<br>';
                        }
                  });
                  $(showFileIntoClass).html(html);
            });

            var pathname = "/"+window.location.pathname.substring(1);
            jQuery('.nav-item').removeClass('active');
            jQuery('.nav-link').each(function( index ) {
              var href=jQuery(this).attr("href");
              if(href==pathname){
                jQuery(this).parent().addClass('active');
              }
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

            btnDisabled=function(){
              jQuery('.btn-disabled').addClass('disabled').attr('disabled', true);
              var checkLoaiVaiTro=''; var coCheckLoaiVaiTro=0;
              
              jQuery("input[type='checkbox'].id_payc").each(function( index ){
                if(jQuery(this).is(":checked")){
                  
                  var tr=jQuery(this).parent('th').parent('tr');
                  var vaiTro=tr.find('.vai-tro').attr('data');
                  if(checkLoaiVaiTro==''){
                    checkLoaiVaiTro=vaiTro;
                    coCheckLoaiVaiTro++;
                  }
                  if(checkLoaiVaiTro!='' && checkLoaiVaiTro!=vaiTro){
                    coCheckLoaiVaiTro++;
                  }
                  if(vaiTro==0){ // xem ????? bi???t
                    jQuery('.btn-hoan-tat-da-xem').removeClass('disabled').attr('disabled', false);
                  }else{
                    if (vaiTro==1) { // x??? l?? ch??nh
                      jQuery('.btn-xu-ly-va-chuyen-lanh-dao').removeClass('disabled').attr('disabled', false);
                    } else { // ph???i h???p x??? l??
                      jQuery('.btn-hoan-tat-phoi-hop').removeClass('disabled').attr('disabled', false);
                    }
                  }
                  if(coCheckLoaiVaiTro>1){
                    jQuery('.btn-disabled').addClass('disabled').attr('disabled', true);
                  }
                }
              });              
            }

            onOffButtonChucNang=function(){
              var coCheckDanhSachChoTiepNhan=0;
              jQuery("input[type='checkbox'].id_payc").each(function( index ){
                if(jQuery(this).is(":checked")){
                  coCheckDanhSachChoTiepNhan++;
                }
              });
              if(coCheckDanhSachChoTiepNhan>0){
                jQuery('.btn-chuc-nang').removeClass('disabled').attr('disabled', false);
              }else{
                jQuery('.btn-chuc-nang').addClass('disabled').attr('disabled', true);
              }
            }
            onOffButtonChucNang();


            jQuery('.check-id-payc').on('click', function(){
                if(jQuery(this).find('input:checkbox').is(":checked")){
                  jQuery(this).find('input:checkbox').prop('checked', false);
                  
                }else{
                  jQuery(this).find('input:checkbox').prop('checked', true);
                }
                btnDisabled();
                onOffButtonChucNang();
            });


            jQuery("input[type='checkbox'].id_payc").on('click',function(){
              jQuery(this).parent('.check-id-payc').click();

            });

            jQuery('.check-one-id-payc').on('click', function(){
              if(jQuery(this).find('input:checkbox').is(":checked")){
                jQuery(this).find('input:checkbox').prop('checked', false);
              }else{
                jQuery('.check-one-id-payc').find('input:checkbox').prop('checked', false);
                jQuery(this).find('input:checkbox').prop('checked', true);
              }
            });

            

            


        
        $('.qtxl').on('click',function(){
            var _token=jQuery('form[name="frm-qtxl"]').find("input[name='_token']").val();
            var id=jQuery(this).attr('value');
            getById(_token, id, "{{ route('qtxl') }}", ".frm-qtxl"); // g???i s??? ki???n l???y d??? li???u theo id
        });


        // Ti???p nh???n v?? chuy???n x??? l??
        $('.btn-tiep-nhan-va-chuyen-xu-ly').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-tiep-nhan-va-chuyen-xu-ly"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_tiep_nhan_va_chuyen_xu_ly').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-tiep-nhan-va-chuyen-xu-ly') }}", ".frm-tiep-nhan-va-chuyen-xu-ly");  
            $('.btn-tiep-nhan-va-chuyen-xu-ly-2').attr("disabled",false);
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-tiep-nhan-va-chuyen-xu-ly-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          var dsIdUser=getDsIdUserCheckbox(); // l???y t???t c??? id user ???????c check ch???n trong modal
          jQuery('.ds_id_user_tiep_nhan_va_chuyen_xu_ly').val(dsIdUser);
          xuLy($("form#frm-tiep-nhan-va-chuyen-xu-ly"), "{{ route('tiep-nhan-va-chuyen-xu-ly') }}", "");
          jQuery("#modal-tiep-nhan-va-chuyen-xu-ly").modal('hide');
          
        });

        // X??? l??
        $('.btn-xu-ly').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-xu-ly"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_xu_ly').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-xu-ly') }}", ".frm-xu-ly");  
            $('.btn-xu-ly-2').attr("disabled",false);
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-xu-ly-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          var dsIdUser=getDsIdUserCheckbox(); // l???y t???t c??? id user ???????c check ch???n trong modal
          jQuery('.ds_id_user_xu_ly').val(dsIdUser);
          xuLy($("form#frm-xu-ly"), "{{ route('xu-ly') }}", "");
          jQuery("#modal-xu-ly").modal('hide');
          
        });


        // Duy???t
        $('.btn-duyet').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-duyet"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_duyet').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-duyet') }}", ".frm-duyet");  
            $('.btn-duyet-2').attr("disabled",false);
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-duyet-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          var dsIdUser=getDsIdUserCheckbox(); // l???y t???t c??? id user ???????c check ch???n trong modal
          jQuery('.ds_id_user_duyet').val(dsIdUser);
          xuLy($("form#frm-duyet"), "{{ route('duyet') }}", "");
          jQuery("#modal-duyet").modal('hide');
          
        });


        // Chuy???n b??? ph???n ti???p nh???n v?? x??? l?? y??u c???u
        $('.btn-chuyen-bo-phan-tiep-nhan-va-xu-ly-payc').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-chuyen-bo-phan-tiep-nhan-va-xu-ly-payc"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_chuyen_bo_phan_tiep_nhan_va_xu_ly_payc').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-chuyen-bo-phan-tiep-nhan-va-xu-ly-payc') }}", ".frm-chuyen-bo-phan-tiep-nhan-va-xu-ly-payc");  
            $('.btn-chuyen-bo-phan-tiep-nhan-va-xu-ly-payc-2').attr("disabled",false);
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-chuyen-bo-phan-tiep-nhan-va-xu-ly-payc-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          var dsIdUser=getDsIdUserCheckbox(); // l???y t???t c??? id user ???????c check ch???n trong modal
          jQuery('.ds_id_user_chuyen_bo_phan_tiep_nhan_va_xu_ly_payc').val(dsIdUser);
          xuLy($("form#frm-chuyen-bo-phan-tiep-nhan-va-xu-ly-payc"), "{{ route('chuyen-bo-phan-tiep-nhan-va-xu-ly-payc') }}", "");
          jQuery("#modal-chuyen-bo-phan-tiep-nhan-va-xu-ly-payc").modal('hide');
          
        });


        // Duy???t v?? chuy???n x??? l?? payc
        $('.btn-duyet-va-chuyen-xu-ly-payc').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-duyet-va-chuyen-xu-ly-payc"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_duyet_va_chuyen_xu_ly_payc').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-duyet-va-chuyen-xu-ly-payc') }}", ".frm-duyet-va-chuyen-xu-ly-payc");  
            $('.btn-duyet-va-chuyen-xu-ly-payc-2').attr("disabled",false);
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-duyet-va-chuyen-xu-ly-payc-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          var dsIdUser=getDsIdUserCheckbox(); // l???y t???t c??? id user ???????c check ch???n trong modal
          jQuery('.ds_id_user_duyet_va_chuyen_xu_ly_payc').val(dsIdUser);
          xuLy($("form#frm-duyet-va-chuyen-xu-ly-payc"), "{{ route('duyet-va-chuyen-xu-ly-payc') }}", "");
          jQuery("#modal-duyet-va-chuyen-xu-ly-payc").modal('hide');
          
        });

        // Chuy???n l??nh ?????o
        $('.btn-chuyen-lanh-dao').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-chuyen-lanh-dao"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_chuyen_lanh_dao').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-chuyen-lanh-dao') }}", ".frm-chuyen-lanh-dao");  
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-chuyen-lanh-dao-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          var dsIdUser=getDsIdUserCheckbox(); // l???y t???t c??? id user ???????c check ch???n trong modal
          jQuery('.ds_id_user_chuyen_lanh_dao').val(dsIdUser);

          xuLy($("form#frm-chuyen-lanh-dao"), "{{ route('chuyen-lanh-dao') }}", "");
          jQuery("#modal-chuyen-lanh-dao").modal('hide');
          
        });

        // X??? l?? v?? chuy???n l??nh ?????o
        $('.btn-xu-ly-va-chuyen-lanh-dao').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-xu-ly-va-chuyen-lanh-dao"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_xu_ly_va_chuyen_lanh_dao').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-xu-ly-va-chuyen-lanh-dao') }}", ".frm-xu-ly-va-chuyen-lanh-dao");  
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-xu-ly-va-chuyen-lanh-dao-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          var dsIdUser=getDsIdUserCheckbox(); // l???y t???t c??? id user ???????c check ch???n trong modal
          jQuery('.ds_id_user_xu_ly_va_chuyen_lanh_dao').val(dsIdUser);

          xuLy($("form#frm-xu-ly-va-chuyen-lanh-dao"), "{{ route('xu-ly-va-chuyen-lanh-dao') }}", "");
          jQuery("#modal-xu-ly-va-chuyen-lanh-dao").modal('hide');
          
        });

        // Ho??n t???t c??c task xem ????? bi???t
        $('.btn-hoan-tat-da-xem').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-hoan-tat-da-xem"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            //jQuery('.ds_id_payc_hoan_tat_da_xem').val(dsId); // Kh??ng c???n l??u v?? g???i th???ng qua route lu??n
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('hoan-tat-da-xem') }}", "");
            location.reload();
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        // Ho??n t???t ph???i h???p x??? l??
        $('.btn-hoan-tat-phoi-hop').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-hoan-tat-phoi-hop"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            //jQuery('.ds_id_payc_hoan_tat_da_xem').val(dsId); // Kh??ng c???n l??u v?? g???i th???ng qua route lu??n
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('hoan-tat-phoi-hop') }}", "");
            location.reload();
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        // Chuy???n c???p tr??n
        $('.btn-chuyen-cap-tren').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-chuyen-cap-tren"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_chuyen_cap_tren').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-chuyen-cap-tren') }}", ".frm-chuyen-cap-tren");  
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-chuyen-cap-tren-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          var dsIdUser=getDsIdUserCheckbox(); // l???y t???t c??? id user ???????c check ch???n trong modal
          jQuery('.ds_id_don_vi_cap_tren').val(dsIdUser);

          xuLy($("form#frm-chuyen-cap-tren"), "{{ route('chuyen-cap-tren') }}", "");
          jQuery("#modal-chuyen-cap-tren").modal('hide');
          
        });


        // Ho??n t???t
        $('.btn-hoan-tat-xu-ly').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-hoan-tat"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_hoan_tat').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-hoan-tat') }}", ".frm-hoan-tat");  
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-hoan-tat-xu-ly-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          xuLy($("form#frm-hoan-tat"), "{{ route('hoan-tat') }}", "");
          jQuery("#modal-hoan-tat").modal('hide');
          
        });

        // Duy???t v?? Ho??n t???t
        $('.btn-duyet-va-hoan-tat-xu-ly').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-duyet-va-hoan-tat-xu-ly"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_duyet_va_hoan_tat_xu_ly').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-duyet-va-hoan-tat-xu-ly') }}", ".frm-duyet-va-hoan-tat-xu-ly");  
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-duyet-va-hoan-tat-xu-ly-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          xuLy($("form#frm-duyet-va-hoan-tat-xu-ly"), "{{ route('duyet-va-hoan-tat-xu-ly') }}", "");
          jQuery("#modal-duyet-va-hoan-tat-xu-ly").modal('hide');
          
        });

        // Tr??? l???i kh??ng x??? l??
        $('.btn-tra-lai-khong-xu-ly').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-tra-lai-khong-xu-ly"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_tra_lai_khong_xu_ly').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-tra-lai-khong-xu-ly') }}", ".frm-tra-lai-khong-xu-ly");  
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-tra-lai-khong-xu-ly-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          xuLy($("form#frm-tra-lai-khong-xu-ly"), "{{ route('tra-lai-khong-xu-ly') }}", "");
          jQuery("#modal-tra-lai-khong-xu-ly").modal('hide');
          
        });

        // H???y y??u c???u
        $('.btn-huy').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-huy"]').find("input[name='_token']").val();
          var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(dsId){
            jQuery('.ds_id_payc_huy').val(dsId);
            // t???o form chuy???n
            getById(_token, dsId, "{{ route('frm-huy') }}", ".frm-huy");  
          }else{
            alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
            return false;
          }
          
        });

        $('.btn-huy-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          xuLy($("form#frm-huy"), "{{ route('huy') }}", "");
          jQuery("#modal-huy").modal('hide');
          
        });

        // C???p nh???t Payc
        $('.btn-cap-nhat-payc').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          var _token=jQuery('form[name="frm-cap-nhat-payc"]').find("input[name='_token']").val();
          var id=getIdPaycCapNhatCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
          if(id){
            jQuery('.id_payc_cap_nhat').val(id);
            // t???o form chuy???n
            getById(_token, id, "{{ route('frm-cap-nhat-payc') }}", ".frm-cap-nhat-payc");  
          }else{
            return false;
          }
          
        });

        $('.btn-cap-nhat-payc-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          var moTa=jQuery('.note-editable').html();
          jQuery('.noi_dung').val(moTa);
          xuLy($("form#frm-cap-nhat-payc"), "{{ route('cap-nhat-payc') }}", "");
          jQuery("#modal-cap-nhat-payc").modal('hide');
          
        });

        // Chuy???n kh??ch h??ng ????nh gi??
        $('.btn-chuyen-kh-danh-gia').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
          if(confirm("B???n th???t s??? mu???n chuy???n kh??ch h??ng ????nh gi?? nh???ng y??u c???u n??y?")){
            var _token=jQuery('form[name="frm-hoan-tat"]').find("input[name='_token']").val();
            var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
            if(dsId){
              // t???o form chuy???n
              chuyenKHDanhGia(_token, dsId, "{{ route('chuyen-kh-danh-gia') }}");  
            }else{
              alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
              return false;
            }
          }
          
        });

        // ????nh gi??
        $('.btn-ld-danh-gia').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
            var _token=jQuery('form[name="frm-danh-gia-sao"]').find("input[name='_token']").val();
            jQuery('.loai_danh_gia').val(1);
            var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
            if(dsId){
              // t???o form chuy???n
              jQuery('.ds_id_payc_danh_gia').val(dsId);
            }else{
              alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
              return false;
            }
          
        });
        $('.btn-kh-danh-gia').on('click',function(){ // B???m n??t chuy???n tr??n c??c danh s??ch payc
            var _token=jQuery('form[name="frm-danh-gia-sao"]').find("input[name='_token']").val();
            jQuery('.loai_danh_gia').val(2);
            var dsId=getDsIdPaycCheckbox(); // L???y danh s??ch id pay ???? check ch???n trong danh s??ch ch??? ti???p nh???n
            if(dsId){
              // t???o form chuy???n
              jQuery('.ds_id_payc_danh_gia').val(dsId);
            }else{
              alert("Vui l??ng ch???n c??c y??u c???u c???n x??? l??!");
              return false;
            }
          
        });


        $('.btn-danh-gia-2').on('click',function(){ // S??? ki???n b???m n??t chuy???n tr??n modal
          console.log($("form#frm-danh-gia-sao"));
          xuLy($("form#frm-danh-gia-sao"), "{{ route('danh-gia') }}", "");
          jQuery("#modal-danh-gia").modal('hide');
          
        });

        getDsIdPaycCheckbox=function(){
          var dsId='';
          jQuery('.id_payc').each(function( index ){
            if(jQuery(this).is(":checked")){
              dsId+=jQuery(this).val()+';';
            }
          });
          return dsId;
        }

        getDsIdUserCheckbox=function(){
          var dsId='';
          jQuery('.id-child-user').each(function( index ){
            if(jQuery(this).is(":checked")){
              dsId+=jQuery(this).val()+';';
            }
          });
          return dsId;
        }
        getIdPaycCapNhatCheckbox=function(){
          var id=''; var stt=0;
          jQuery('.id_payc').each(function( index ){
            if(jQuery(this).is(":checked")){
              stt++;
              id=jQuery(this).val();              
            }
          });
          if(stt==1){
            return id;
          }else{
            if(stt==0){
              alert("Vui l??ng ch???n YC c???n c???p nh???t");  
            }else{
              alert("Ch??? ???????c c???p nh???t 1 y??u c???u.");  
            }
          }
          
        }

        // M???I LOAD TRANG
      var selectedQuanHuyen=jQuery('.ma_quan_huyen').val();
      showPhuongXa=function(loai){ // lo???i =1 l?? m???i load trang, ng?????c l???i l?? do ng?????i d??ng onchange
        var co=0;
        jQuery('.ma_phuong_xa option').each(function( index ) {
              var maQuanHuyen=jQuery(this).attr('ma-quan-huyen');
              if(loai!=1){
          jQuery(this).removeAttr('selected');
              }
                
              if(maQuanHuyen!=selectedQuanHuyen){
                jQuery(this).css('display','none');
              }else{
                jQuery(this).css('display','block');
                if(co==0 && loai!=1){
                  jQuery(this).attr('selected','selected');
                  co=1;
                }
              }
          });
      }
      
      showPhuongXa(1);
      jQuery('.ma_quan_huyen').on('change',function(){
        selectedQuanHuyen=jQuery(this).val();
        showPhuongXa(2);
      });
        




        /*K??? thu???t t-tree l?? k??? thu???t Thanh-Tree do Thanh t??? l??m ???? m??*/
        jQuery('.t-tree').on('click',function(){
            var id=jQuery(this).attr('data-id');
            var dataShow=jQuery(this).attr('data-show');
            if(dataShow==1){
                jQuery(this).attr('data-show',0);
                jQuery(this).find('.tree-icon').removeClass('fa-minus-square-o');
                jQuery(this).find('.tree-icon').addClass('fa-plus-square-o');
            }else{
                jQuery(this).attr('data-show',1);
                jQuery(this).find('.tree-icon').removeClass('fa-plus-square-o');
                jQuery(this).find('.tree-icon').addClass('fa-minus-square-o');
            }
            tTree(id, dataShow);
        });
        tTree=function(id, dataShow){            
            jQuery('.t-tree').each(function(){
                if(jQuery(this).attr('data-parent')==id){
                    if(dataShow==1){
                        jQuery(this).hide();
                        jQuery(this).find('.tree-icon').removeClass('fa-minus-square-o');
                        jQuery(this).find('.tree-icon').addClass('fa-plus-square-o');
                    }else{
                        jQuery(this).show();
                        jQuery(this).find('.tree-icon').removeClass('fa-plus-square-o');
                        jQuery(this).find('.tree-icon').addClass('fa-minus-square-o');
                    }
                    tTree(jQuery(this).attr('data-id'), dataShow);
                }
            });
        }

        jQuery('.xem-chi-tiet-payc').on('click',function(){
          var id=jQuery(this).attr('value');
          //location.href = "{{ route('chi-tiet-payc') }}?id="+id;
          var win = window.open("{{ route('chi-tiet-payc') }}?id="+id, '_blank');
          if (win) {
              win.focus();
          } else {
              alert('Please allow popups for this website');
          }
        });

        jQuery('.btn-danh-dau-da-xem-binh-luan').on('click',function(){
          var _token="{{ csrf_token() }}";
            var idBinhLuan=jQuery(this).attr('data');
            var idPayc=jQuery(this).attr('data2');
            getById(_token, idBinhLuan, "{{ route('danh-dau-da-xem-binh-luan') }}", "");
            //location.href = "{{ route('chi-tiet-payc') }}?id="+idPayc;
            var win = window.open("{{ route('chi-tiet-payc') }}?id="+idPayc, '_blank');
            if (win) {
                win.focus();
            } else {
                alert('Please allow popups for this website');
            }
        });

        jQuery('.btn-danh-dau-da-xem-pakn').on('click',function(){
          var _token="{{ csrf_token() }}";
            var idNhanPakn=jQuery(this).attr('data');
            var idPayc=jQuery(this).attr('data2');
            getById(_token, idNhanPakn, "{{ route('danh-dau-da-xem-pakn') }}", "");
            //location.href = "{{ route('chi-tiet-payc') }}?id="+idPayc;
            var win = window.open("{{ route('chi-tiet-payc') }}?id="+idPayc, '_blank');
            if (win) {
                win.focus();
            } else {
                alert('Please allow popups for this website');
            }
        });

        jQuery('#id_dich_vu').on('change',function(){
          var value=jQuery(this).val();
          if(value==1){
            jQuery('.dia_chi').removeClass('d-none');
          }else{
            jQuery('.dia_chi').addClass('d-none');
          }
        });
        

            

            
         })                
      </script>