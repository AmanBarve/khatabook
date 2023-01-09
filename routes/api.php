<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\PassportController;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\CategoryController;
use App\Http\Controllers\API\BrandController;
use App\Http\Controllers\API\CouponController;
use App\Http\Controllers\API\TaxController;
use App\Http\Controllers\API\SpecificationController;
use App\Http\Controllers\API\OrderController;
use App\Http\Controllers\API\ShippingController;
use App\Http\Controllers\API\ShippingTypeController;
use App\Http\Controllers\API\Week_tipsController;
use App\Http\Controllers\API\DoctorController;
use App\Http\Controllers\API\SettingController;


Route::post('register', [PassportController::class, 'register']);
Route::post('login', [PassportController::class, 'login']);
Route::get('home-slider',[SettingController::class,'homeSlider']);
Route::get('forget-password',[PassportController::class,'sendForgetPasswordMail']);
Route::get('reset-password',[PassportController::class,'adminResetPassword']);

// put all api protected routes here
Route::group(['middleware' => 'auth:api'], function() {

    Route::get('user-detail', [PassportController::class, 'userDetail']);
    Route::post('logout', [PassportController::class, 'logout']);
    Route::get('product-list',[ProductController::class,'productList']);
    Route::get('product-rating-list',[ProductController::class,'productratingList']);
    Route::get('category-list',[CategoryController::class,'categoryList']);
    Route::get('brand-list',[BrandController::class,'brandList']);
    Route::get('coupon-list',[CouponController::class,'couponList']);
    Route::get('tax-list',[TaxController::class,'taxList']);
    Route::get('specificationspreset-list',[SpecificationController::class,'specificationspresetList']);
    Route::get('order-list',[OrderController::class,'orderList']);
    Route::get('shipping-list',[ShippingController::class,'shippingList']);
    Route::get('shipping-method-list',[ShippingTypeController::class,'shippingmethodList']);
    Route::get('week-list',[Week_tipsController::class,'weekList']);
    Route::get('doctor-list',[DoctorController::class,'doctorList']);
    Route::get('logout',[PassportController::class,'logout']);
    Route::get('search',[ProductController::class,'search']);
    Route::get('productbyId',[ProductController::class,'productbyId']);
    Route::get('categorybyId',[ProductController::class,'categorybyId']);
    Route::get('productbycatId',[ProductController::class,'productbycatId']);
    Route::get('parentID',[ProductController::class,'parentID']);
    Route::get('subcategory',[ProductController::class,'subCategory']);
    Route::get('card-info',[OrderController::class,'cardInfo']);
    Route::post('card-store',[OrderController::class,'cardStore']);
});
