<?php

namespace App\Http\Controllers\Home;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Blog;
use App\Models\BlogCategory;

use Intervention\Image\Facades\Image;
use Carbon\Carbon;

class BlogController extends Controller
{


    public function AllBlog()
    {
        $blogs = Blog::latest()->with('category')->get();
        return view('admin.blogs.blogs_all', compact('blogs'));
    }

    public function AddBlog()
    {
        $categories = BlogCategory::orderBy('blog_category', 'ASC')->get();
        return view('admin.blogs.blogs_add', compact('categories'));
    }

    public function StoreBlog(Request $request)
    {
        $request->validate([
            'blog_category_id' =>    'required',
            'blog_title' =>    'required',
            'blog_tags' =>    'required',
            'blog_description' => 'required',
            'blog_image' => 'required',

            ],[
                'blog_category_id.required' =>  'Blog Category is Required',
                'blog_title.required' =>  'Blog Title is Required',
                'blog_tags.required' =>  'Blog Tags is Required',
                'blog_description.required' =>  'Blog description is Required',
                'blog_image.required' =>  'Blog Image is Required',

            ]);
    
                $image = $request->file('blog_image');
    
                $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
    
                $image_save = Image::make($image)->resize(430,327)->save('upload/blog/'.$name_gen);
    
                $save_url = 'upload/blog/' . $name_gen;
    
    
                Blog::insert([
                    'blog_category_id' => $request->blog_category_id,
                    'blog_title' => $request->blog_title,
                    'blog_tags' => $request->blog_tags,
                    'blog_description' => $request->blog_description,
                    'blog_image' => $save_url,
                    'created_at' => Carbon::now()
                ]);
    
                $notification = [
                    'message' => 'Blog Inserted Successfully',
                    'alert-type' => 'success'
                ];
                return redirect()->route('all.blog')->with($notification);
    }

}
