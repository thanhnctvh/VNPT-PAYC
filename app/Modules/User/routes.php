<?php
$namespace = 'App\Modules\User\Controllers';

Route::group(
    ['module'=>'User', 'namespace' => $namespace, 'middleware'=>['web', 'auth','check-role']],
    function() {
        Route::get('user', [
            'as' => 'user',
            'uses' => 'UserController@user'
        ]);

        Route::post('danh-sach-user', [
            'as' => 'danh-sach-user',
            'uses' => 'UserController@danhSachUser'
        ]);

        Route::post('them-user', [
            'as' => 'them-user',
            'uses' => 'UserController@themUser'
        ]);

        Route::post('user-single', [
            'as' => 'user-single',
            'uses' => 'UserController@userSingle'
        ]);

        Route::post('cap-nhat-user', [
            'as' => 'cap-nhat-user',
            'uses' => 'UserController@capNhatUser'
        ]);


        Route::post('xoa-user', [
            'as' => 'xoa-user',
            'uses' => 'UserController@xoaUser'
        ]);

        Route::post('user-donvi', [
            'as' => 'user-donvi',
            'uses' => 'UserController@userDonVi'
        ]);

        Route::post('luu-user-dv', [
            'as' => 'luu-user-dv',
            'uses' => 'UserController@luuUserDonVi'
        ]);

        Route::post('load-danh-sach-user-donvi', [
            'as' => 'load-danh-sach-user-donvi',
            'uses' => 'UserController@loadDsUserDonvi'
        ]);

        Route::post('xoa-user-donvi', [
            'as' => 'xoa-user-donvi',
            'uses' => 'UserController@xoaUserDonVi'
        ]);
    }
);