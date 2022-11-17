<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactUsFormController extends Controller
{
    public function createForm(Request $request) {
        return view('contact.contactus_form');
      }
      public function cotactus_queries() {
        $queries=Contact::all();
        return view('contact.contactus_queries',compact('queries'));
      }
      // Store Contact Form data
      public function ContactUsForm(Request $request) {
          // Form validation
          $this->validate($request, [
              'name' => 'required',
              'email' => 'required|email',
              'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
              'subject'=>'required',
              'message' => 'required'
           ]);
          //  Store data in database
          Contact::create($request->all());
          // 
          return back()->with('success', 'We have received your message and would like to thank you for writing to us.');
      }
      public function cotactus_view($id)
      {
        $contact = Contact::find($id);
        return view('contact.contact_view',compact('contact'));
      }
}
