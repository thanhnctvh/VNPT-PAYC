<?php
   use App\AdminResource;
   $resources=array();
   $userId=Auth::id();
   if($userId){
      $resources = AdminResource::where('status','=',1)->where('id','!=',1)->where('show_menu','=',1)->orderBy('order')->get()->toArray();
   }
      
?>              
               <div id="right-sidebar" class="settings-panel">
                  <i class="settings-close mdi mdi-close"></i>
                  <ul class="nav nav-tabs" id="setting-panel" role="tablist">
                     <li class="nav-item">
                        <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">THÔNG BÁO HỆ THỐNG</a>
                     </li>
                  </ul>
                  <div class="tab-content" id="setting-content">
                     <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
                        <div class="list-wrapper px-3">
                           <ul class="d-flex flex-column-reverse todo-list">
                              <li class="logout">
                                 <div class="form-check">
                                    <i class="icon-lock-open"></i> &nbsp;&nbsp;&nbsp;&nbsp;
                                       ToDo
                                 </div>
                                 <i class="remove mdi mdi-close-circle-outline"></i>
                              </li>
                           </ul>
                        </div>
                     </div>
                     <!-- To do section tab ends -->
                  </div>
               </div>
               <!-- partial -->
               <!-- partial:../../partials/_sidebar.html -->
               <nav class="sidebar sidebar-offcanvas" id="sidebar">
                  <ul class="nav">
                     <li class="nav-item nav-profile">
                        <div class="nav-link">
                           <div class="profile-image">
                              <a href="{{route('trang-chu')}}"><img src="{{ asset('public/images/logo.png') }}" alt="image"></a>
                              <!-- <span class="online-status online"></span> --> <!--change class online to offline or busy as needed-->
                           </div>
                           <div class="profile-name">
                              <p class="name">
                                 Phan Văn Thanh
                              </p>
                              <p class="designation">
                                 094.113.8484
                              </p>
                           </div>
                        </div>
                     </li>

                     @foreach($resources as $resource)
                        <li class="nav-item">
                           <a class="nav-link" href="{{$resource['uri']}}">
                              <?php echo $resource['icon']; ?>
                              <span class="menu-title">{{$resource['ten_hien_thi']}}</span>
                           </a>
                        </li>
                     @endforeach                     
                  </ul>
               </nav>