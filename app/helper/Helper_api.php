<?php

namespace App\helper;

use Illuminate\Support\Facades\Storage;
use App\Models\ActivityLog;
use App\Models\MstFile;
use App\Models\ApiLog;
use Carbon\Carbon;

class Helper_api
{
    public static function sendResponse($status, $msg, $res_code, $data=null)
    {
    	$res = [
            'status' => $status,
            'status_code' => $res_code,
            'message' => $msg,
          ];
    	if($data != null){
    		$res['data'] = $data;
    	}
        return response()->json($res, $res_code);
    }

    public static function getLocaleDate($date){
        try{
            $monthsArr = __('labels.months');
            $parseDate = explode('-', Carbon::parse($date)->setTimezone(env('GET_TIMEZONE', config('app.timezone')))->format('Y-F-d'));
            return ($monthsArr[strtolower($parseDate[1])].' '.$parseDate[2].', '.$parseDate[0]);
        }catch(\Exception $e){
            return '';
        }
    }

    public static function getLocaleHRDate($date){
        try{
            return (Carbon::createFromTimeStamp(strtotime($date))->setTimezone(env('GET_TIMEZONE', config('app.timezone')))->diffForHumans());
        }catch(\Exception $e){
            return '';
        }
    }

    public static function getImageURL($img_name, $dir_name, $isS3, $place_holder = null){
        try{
            $dir_name = trim($dir_name, '/');
            $org_image = ($img_name) ? $img_name : $place_holder;
            $fullpath = trim($dir_name.'/'.$org_image, '/');
            if($isS3){
                return Storage::disk('s3')->url($fullpath);
                // if(Storage::disk('s3')->exists($fullpath)){ return Storage::disk('s3')->url($fullpath);
                // }else{ return '';}
            }else{
                return asset($fullpath);
                // if(file_exists(public_path().'/'.$fullpath)){ return asset($fullpath);
                // }else{ return '';}
            }
        }catch(\Exception $e){
            return '';
        }
    }

    public static function uploadImage($image, $dir_name, $isS3=0){
        try{
            $user_id = $dir_name;
            $dir_name = trim($dir_name, '/');
            $ext = $image->extension();
            $size = $image->getSize();
            $imageName = md5($user_id . self::getRandomString()) . '.'. $ext;
            $fullpath = trim($dir_name, '/');
            $data = [
                'file_type'=> $ext,
                'file_name'=> $imageName,
                'file_size'=> $size,
                'file_path' => $dir_name,
                'created_by'=> $user_id
            ];
            if($isS3){
                Storage::disk('s3')->putFileAs($fullpath, $image, $imageName);
                $file_data = MstFile::create($data);
                return $file_data;
            }else{
                Storage::disk('public')->putFileAs($fullpath, $image, $imageName);
                $file_data = MstFile::create($data);
                return $file_data;
            }
        }catch(\Exception $e){
            return false;
        }
    }

    public static function sendEmail($to, $subject, $data, $template, $attachment=null){
        try{
            Mail::send($template, $data, function($message) use($to, $subject) {
                $message->to($to)
                //->cc($moreUsers)
                ->bcc('anuj.chauhan@opalina.in')
                ->subject($subject);
            });
            return true;
        }catch(\Exception $e){
            return false;
        }
    }

    public static function activityLog(array $data){
        try{
            $activity_log = ActivityLog::create($data);
            return $activity_log;
        }catch(\Exception $e){
            return false;
        }
    }

    public static function apiLog(array $data){
        try{
            $api_log = ApiLog::create($data);
            return $api_log;
        }catch(\Exception $e){
            return false;
        }
        
    }

    public static function getRandomString(){
        $charset = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        $substr = $charset[rand(0,61)].$charset[rand(0,61)].$charset[rand(0,61)].$charset[rand(0,61)].$charset[rand(0,61)];
        $time = time();
        return md5($substr.$time);
    }
}
