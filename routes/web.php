<?php

//Backend-Controller

use App\Http\Controllers\AdminController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\ExpensesController;
use App\Http\Controllers\BankController;
use App\Http\Controllers\PasswordController;
use App\Http\Controllers\NoteController;
use App\Http\Controllers\UdharController;
use App\Http\Controllers\AdharController;


//End Backend-Controller

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|---------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['middleware' => 'prevent-back-history'], function () {
    Auth::routes();

    //Backend Routes
    Route::get('/', [AdminController::class, 'index']);
    Route::get('admin', [AdminController::class, 'index'])->name('admin');

    Route::get('forget_password', [AdminController::class, 'forget_password'])->name('forget_password');
    Route::post('sendForgetPasswordMail', [AdminController::class, 'sendForgetPasswordMail'])->name('admin.sendForgetPasswordMail');
    Route::get('reset_password', [AdminController::class, 'reset_password'])->name('admin.reset_password');
    Route::post('adminResetPassword', [AdminController::class, 'adminResetPassword'])->name('admin.adminResetPassword');

    //AdminController

    Route::get('register', [AdminController::class, 'register']);
    Route::post('admin/auth', [AdminController::class, 'auth'])->name('admin.auth');
    Route::post('admin/store', [AdminController::class, 'store'])->name('admin.store');
    Route::get('dashboard', [AdminController::class, 'dashboard'])->name('admin.dashboard');

    Route::get('userlist', [AdminController::class, 'userlist'])->name('admin.userlist');
    Route::get('logout', [AdminController::class, 'logout'])->name('admin.logout');
    Route::get('block_user/{id}', [AdminController::class, 'block_user'])->name('admin.block_user');
    Route::get('unblock_user/{id}', [AdminController::class, 'unblock_user'])->name('admin.unblock_user');
    Route::get('add_user', [AdminController::class, 'add_user'])->name('admin.add_user');
    Route::get('edit_user/{id}', [AdminController::class, 'edit_user'])->name('admin.edit_user');
    Route::post('update_user/{id}', [AdminController::class, 'update_user'])->name('admin.update_user');

    //ExpensesController
    // Route::get('month_list', [ExpensesController::class, 'month_list'])->name('expenses.month_list');
    // Route::get('expenses/{month}', [ExpensesController::class, 'expenses'])->name('expenses');
    Route::get('expenses', [ExpensesController::class, 'expenses'])->name('expenses.expenses');
    Route::get('add_expenses', [ExpensesController::class, 'add_expenses'])->name('expenses.add_expenses');
    Route::post('expenses/store', [ExpensesController::class, 'store'])->name('expenses.store');
    Route::get('expenses/store_info', [ExpensesController::class, 'store_info'])->name('expenses.store_info');
    Route::get('expenses_list/{created_at}', [ExpensesController::class, 'expenses_list'])->name('expenses_list');
    Route::Post('deleted_expenses', [ExpensesController::class, 'deleted_expenses'])->name('deleted_expenses');
    Route::get('assetslist', [ExpensesController::class, 'assetslist'])->name('expenses.assetslist');
    Route::get('expenses/assets_datails', [ExpensesController::class, 'assets_datails'])->name('expenses.assets_datails');
    Route::get('edit_assets/{id}', [ExpensesController::class, 'edit_assets'])->name('expenses.edit_assets');
    Route::post('expenses/update_assets_datails/{id}', [ExpensesController::class, 'update_assets_datails'])->name('expenses.update_assets_datails');

    // BankController
    Route::get('bank_details', [BankController::class, 'bank_details'])->name('bank.bank_details');
    Route::get('bank_transaction', [BankController::class, 'bank_transaction'])->name('bank.bank_transaction');
    Route::get('add_payment', [BankController::class, 'add_payment'])->name('add_payment');
    Route::get('bank/store_info', [BankController::class, 'store_info'])->name('bank.store_info');
    Route::post('bank/bank_details_store', [BankController::class, 'bank_details_store'])->name('bank.bank_details_store');

    //SettingController
    Route::get('setting', [SettingController::class, 'setting'])->name('setting.setting');
    Route::post('setting/store', [SettingController::class, 'setting_store'])->name('setting.store');
    Route::get('birthday_list', [SettingController::class, 'birthday_list'])->name('setting.birthday_list');
    Route::get('setting/store_birthday', [SettingController::class, 'store_birthday'])->name('setting.store_birthday');
    Route::get('achievement_list', [SettingController::class, 'achievement_list'])->name('setting.achievement_list');
    Route::get('setting/store_achievement', [SettingController::class, 'store_achievement'])->name('setting.store_achievement');

    //PasswordController
    Route::get('password_list', [PasswordController::class, 'password_list'])->name('password.password_list');
    Route::get('app_datails', [PasswordController::class, 'app_datails'])->name('password.app_datails');
    Route::get('update_datails', [PasswordController::class, 'update_datails'])->name('password.update_datails');

    // UdharController
    Route::get('udhar_list', [UdharController::class, 'udhar_list'])->name('udhar.udhar_list');
    Route::get('udhar/store_info', [UdharController::class, 'store_info'])->name('udhar.store_info');
    Route::get('edit_udhar/{id}', [UdharController::class, 'edit_udhar'])->name('udhar.edit_udhar');
    Route::post('udhar/update_udhar_list/{id}', [UdharController::class, 'update_udhar_list'])->name('udhar.update_udhar_list');
    Route::POST('update', [UdharController::class, 'update'])->name('update');
    Route::POST('deleted', [UdharController::class, 'deleted'])->name('deleted');


    //NoteController
    Route::get('note_list', [NoteController::class, 'note_list'])->name('note.note_list');


    Route::get('adhar', [AdharController::class, 'adhar'])->name('adhar.Adhar');
    Route::post('file', [AdharController::class, 'store'])->name('adhar.store');
});

