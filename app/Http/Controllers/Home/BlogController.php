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

    public $blogs, $categories;

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

        ], [
            'blog_category_id.required' =>  'Blog Category is Required',
            'blog_title.required' =>  'Blog Title is Required',
            'blog_tags.required' =>  'Blog Tags is Required',
            'blog_description.required' =>  'Blog description is Required',
            'blog_image.required' =>  'Blog Image is Required',

        ]);

        $image = $request->file('blog_image');

        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();

        $image_save = Image::make($image)->resize(430,327)->save('upload/blog/' . $name_gen);

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

    public function EditBlog($id)
    {
        $blog = Blog::findOrFail($id);
        $categories = BlogCategory::orderBy('blog_category', 'ASC')->get();
        return view('admin.blogs.blogs_edit', compact('blog', 'categories'));
    }

    public function UpdateBlog(Request $request, $id)
    {

        if ($request->file('blog_image')) {
            $image = $request->file('blog_image');

            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();

            $image_save = Image::make($image)->resize(430,327)->save('upload/blog/' . $name_gen);

            $save_url = 'upload/blog/' . $name_gen;


            Blog::findOrFail($id)->update([
                'blog_category_id' => $request->blog_category_id,
                'blog_title' => $request->blog_title,
                'blog_tags' => $request->blog_tags,
                'blog_description' => $request->blog_description,
                'blog_image' => $save_url,
                'updated_at' => Carbon::now()
            ]);

            $notification = [
                'message' => 'Blog updated with Image Successfully',
                'alert-type' => 'success'
            ];
            return redirect()->route('all.blog')->with($notification);

        }else{
            Blog::findOrFail($id)->update([
                'blog_category_id' => $request->blog_category_id,
                'blog_title' => $request->blog_title,
                'blog_tags' => $request->blog_tags,
                'blog_description' => $request->blog_description,
                'updated_at' => Carbon::now()
            ]);

            $notification = [
                'message' => 'Blog updated without Image Successfully',
                'alert-type' => 'success'
            ];
            return redirect()->route('all.blog')->with($notification);
        }//end else


    }

    public function DeleteBlog($id)
    {
        $blog = Blog::findOrFail($id);
        $img = $blog->blog_image;

        if ($blog) {
            if (file_exists($img)) {
                unlink($img);
            }

            Blog::findOrFail($id)->delete();
            $notification = [
                'message' => 'Blog Image deleted Successfully',
                'alert-type' => 'success'
            ];
            return redirect()->route('all.blog')->with($notification);
        }
        $notification = [
            'message' => 'Blog not deleted Successfully',
            'alert-type' => 'error'
        ];
        return redirect()->route('all.blog')->with($notification);

    }

    public function BlogDetails($id)
    {
        $allblogs = Blog::latest()->limit(5)->get();
        $categories = BlogCategory::orderBy('blog_category', 'ASC')->get();
        $blog = Blog::findOrFail($id);


        return view('frontend.blog_details', compact('blog', 'allblogs','categories'));

    }

    public function CategoryBlog($id)
    {

        $blogpost = Blog::where('blog_category_id',$id)->orderBy('id', 'DESC')->get();
        $allblogs = Blog::latest()->limit(5)->get();
        $categories = BlogCategory::orderBy('blog_category', 'ASC')->get();
        return view('frontend.category_blog_details', compact('blogpost','allblogs','categories'));


    }
}
