<?php

namespace App\Http\Controllers\Home;

use App\Models\Contact;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;

class ContactController extends Controller
{
    public function Contact()
    {
        return view('frontend.contact');
    }//end method


    public function StoreMessage(Request $request)
    {
        Contact::insert([
            'name' =>$request->name,
            'email' =>$request->email,
            'subject' =>$request->subject,
            'phone' =>$request->phone,
            'message' =>$request->message,
            'created_at' =>Carbon::now(),
        ]);
        $notification = [
            'message' => 'Your Message submit  Successfully',
            'alert-type' => 'success'
        ];
        return redirect()->back()->with($notification);

    }//end method


    public function ContactMessage()
    {
        $contacts = Contact::latest()->get();

        return view('admin.contact.allcontact', compact('contacts'));

    }//end method



    public function DeleteMessage($id)
    {
        $contact = Contact::findOrFail($id);
        $contact->delete();
        $notification = [
            'message' => 'Your Message delete  Successfully',
            'alert-type' => 'success'
        ];
        return redirect()->back()->with($notification);

    }
}
