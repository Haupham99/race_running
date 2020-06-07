<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;
use Cookie;
use \Datetime;
use Illuminate\Routing\Controller as BaseController;

class BackEndController extends BaseController
{

    function editRace($id){
        $race = DB::table("race")->where("race_id", $id)->first();
        return view('backend.editRace', ['race' => $race]);
    }

    function postEditRace(Request $request, $id){
        $name = $request->get('name');
        $prize = $request->get('prize');
        $time = $request->get('time');
        $track_id = (int)$request->get('track_id');
        $winner = $request->get('winner');
        // var_dump($id);
        DB::table('race')->where('race_id', $id)
        ->update(['name' => $name, 'prize' => $prize, 'time' => $time, 'track_id' => $track_id, 'winner' => $winner]);
        Session::flash('success', 'Cập nhật giải đua thành công');
        return redirect('admin/get-race');
    }

    function getRace(){
        $races = DB::table("race")->orderBy("time", "DESC")->get();
        return view('backend.listRace', ["races"=>$races]);
    }

    function getTrack(){
        $tracks = DB::table("track")->get();
        return view('backend.listTrack', ["tracks"=>$tracks]);
    }

    function addRace(){
        return view('backend.addRace');
    }

    function postAddRace(Request $request){
        $name = $request->get('name');
        $prize = $request->get('prize');
        $time = $request->get('time');
        $track_id = (int)$request->get('track_id');
        $winner = null;
        DB::table('race')->insert(
            ['name' => $name, 'prize' => $prize, 'time' => $time, 'track_id' => $track_id, 'winner' => $winner]
        );
        Session::flash('success', 'Thêm giải đua thành công');
        return redirect('admin/get-race');
    }

    function addTrack(){
        return view('backend.addTrack');
    }

    function postAddTrack(Request $request){
        $name = $request->get('name');
        $location = $request->get('location');
        $long = (int)$request->get('long');
        DB::table('track')->insert(
            ['name' => $name, 'location' => $location, 'long' => $long]
        );
        Session::flash('success', 'Thêm đường đua thành công');
        return redirect('admin/get-track');
    }

    function editTrack($id){
        $track = DB::table("track")->where("track_id", $id)->first();
        return view('backend.editTrack', ['track' => $track]);
    }

    function postEditTrack(Request $request, $id){
        $name = $request->get('name');
        $location = $request->get('location');
        $long = $request->get('long');
        DB::table('track')->where('track_id', $id)
        ->update(['name' => $name, 'location' => $location, 'long' => $long]);
        Session::flash('success', 'Cập nhật đường đua thành công');
        return redirect('admin/get-track');
    }

    function deleteRace($id){
        DB::table('race')->where('race_id', $id)->delete();
        Session::flash('success', 'Xóa giải đua thành công');
        return redirect('admin/get-race');
    }

    function deleteTrack($id){
        DB::table('track')->where('track_id', $id)->delete();
        Session::flash('success', 'Xóa đường đua thành công');
        return redirect('admin/get-track');
    }

    function getMember(){
        return view('backend.listMember');
    }
    function getFeedBack(){
        return view('backend.listFeedBack');
    }
}
