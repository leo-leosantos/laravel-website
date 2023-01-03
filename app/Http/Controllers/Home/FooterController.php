<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\footer;
use Carbon\Carbon;
use Illuminate\Http\Request;

class FooterController extends Controller
{
    public function FooterSetup()
    {
        $allfooter = footer::find(1);

        return view('admin.footer.footer_all', compact('allfooter'));

    }

    public function UpdateFooter(Request  $request)
    {

        $footer_id = $request->id;
        $footer = Footer::findOrFail($footer_id)->update([
            'number' => $request->number,
            'short_description' => $request->short_description,
            'address' => $request->address,
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,
            'copyright' => $request->copyright,
            'updated_at' => Carbon::now(),
        ]);


        if($footer){
            $notification = [
                'message' => 'Footer Page updated Successfully',
                'alert-type' => 'success'
            ];
            return redirect()->route('footer.setup')->with($notification);
        }

    } //end method

}
