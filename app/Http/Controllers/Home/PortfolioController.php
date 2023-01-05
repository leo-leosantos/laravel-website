<?php

namespace App\Http\Controllers\Home;

use App\Models\Portfolio;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use App\Http\Controllers\Controller;
use Carbon\Carbon;

class PortfolioController extends Controller
{

    public function AllPortfolio()
    {

        $portfolio = Portfolio::latest()->get();
        return view('admin.portfolio.portfolio_all', compact('portfolio'));
    }

    public function AddPortfolio()
    {

        return view('admin.portfolio.portfolio_add');
    }//end method

    public function StorePortfolio(Request $request)
    {
        $request->validate([
        'portfolio_name' =>    'required',
        'portfolio_title' =>    'required',
        'portfolio_image' =>    'required',
        'portfolio_description' => 'required',

        ],[
            'portfolio_name.required' =>  'Portfolio Name is Required',
            'portfolio_title.required' =>  'Portfolio Title is Required',
        ]);

            $image = $request->file('portfolio_image');

            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();

            $image_save = Image::make($image)->resize(1020,519)->save('upload/portfolio/'.$name_gen);

            $save_url = 'upload/portfolio/' . $name_gen;


            Portfolio::insert([
                'portfolio_name' => $request->portfolio_name,
                'portfolio_title' => $request->portfolio_title,
                'portfolio_description' => $request->portfolio_description,
                'portfolio_image' => $save_url,
                'created_at' => Carbon::now()
            ]);

            $notification = [
                'message' => 'Portfolio Inserted Successfully',
                'alert-type' => 'success'
            ];
            return redirect()->route('all.portfolio')->with($notification);


    }//end method

    public function EditPortfolio($id)
    {
        $portfolio = Portfolio::findOrFail($id);

        return view('admin.portfolio.portfolio_edit', compact('portfolio'));

    }//end method

    public function UpdatePortfolio(Request $request)
    {

        $portfolioUpdate_id = $request->id;

        if ($request->file('portfolio_image')) {
            $image = $request->file('portfolio_image');

            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();

            $image_save = Image::make($image)->resize(1020,519)->save('upload/portfolio/'.$name_gen);

            $save_url = 'upload/portfolio/' . $name_gen;


            Portfolio::findOrFail($portfolioUpdate_id)->update([
                'portfolio_name' => $request->portfolio_name,
                'portfolio_title' => $request->portfolio_title,
                'portfolio_description' => $request->portfolio_description,
                'portfolio_image' => $save_url,
                'updated_at' => Carbon::now()
            ]);

            $notification = [
                'message' => 'Portfolio updated with Image Successfully',
                'alert-type' => 'success'
            ];
            return redirect()->route('all.portfolio')->with($notification);

        }else{
            Portfolio::findOrFail($portfolioUpdate_id)->update([
                'portfolio_name' => $request->portfolio_name,
                'portfolio_title' => $request->portfolio_title,
                'portfolio_description' => $request->portfolio_description,
                'updated_at' => Carbon::now()
            ]);

            $notification = [
                'message' => 'Portfolio updated without Image Successfully',
                'alert-type' => 'success'
            ];
            return redirect()->route('all.portfolio')->with($notification);
        }//end else


    }//end method


    public function DeletePortfolio($id)
    {
        $portfolio = Portfolio::findOrFail($id);
        $img = $portfolio->portfolio_image;

        if ($portfolio) {
            if (file_exists($img)) {
                unlink($img);
            }

            Portfolio::findOrFail($id)->delete();
            $notification = [
                'message' => 'Portfolio Image deleted Successfully',
                'alert-type' => 'success'
            ];
            return redirect()->route('all.portfolio')->with($notification);
        }
        $notification = [
            'message' => 'Portfolio not deleted Successfully',
            'alert-type' => 'error'
        ];
        return redirect()->route('all.portfolio')->with($notification);

    }

    public function PortfolioDetails($id)
    {
        $portfolio = Portfolio::findOrFail($id);
        return view('frontend.portfolio_details', compact('portfolio'));
    }

    public function HomePortfolio()
    {
        $portfolio = Portfolio::latest()->get();
        return view('frontend.portfolio', compact('portfolio'));
    }//end method

}
