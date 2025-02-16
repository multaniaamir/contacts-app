<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;
use SimpleXMLElement;

class ContactController extends Controller
{
    public function index()
    {
        $contacts = Contact::orderBy('created_at', 'desc')->get();
        return view('contacts.index', compact('contacts'));
    }

    public function create()
    {
        return view('contacts.create');
    }

    public function store(Request $request)
{
    $validated = $request->validate([
        'name' => 'required',
        'lastname' => 'required',
        'phone' => [
            'required',
            'regex:/^\+\d{1,3}[-\s]?\d{2,4}[-\s]?\d{3,4}[-\s]?\d{3,4}$/',
            'min:10',
            'unique:contacts,phone'
        ]
    ]);

    try {
        Contact::create($validated);
        return redirect()->route('contacts.index')
            ->with('success', 'Contact created successfully.');
    } 
     catch (\Exception $e) {
        // Handle any other unexpected exceptions
        return redirect()->back()
            ->withInput()
            ->withErrors(['error' => $e->getMessage()]);
    }
}
    public function show(Contact $contact)
    {
        return view('contacts.show', compact('contact'));
    }

    public function edit(Contact $contact)
    {
        return view('contacts.edit', compact('contact'));
    }

    public function update(Request $request, Contact $contact)
    {
        $validated = $request->validate([
            'name' => 'required',
            'lastname' => 'required',
            'phone' => [
                'required',
                'regex:/^\+\d{1,3}[-\s]?\d{2,4}[-\s]?\d{3,4}[-\s]?\d{3,4}$/',
                'min:10',
                'unique:contacts,phone'
            ]
        ]);
    
        try {
            $contact->update($validated);
            return redirect()->route('contacts.index')
                ->with('success', 'Contact updated successfully.');
        } 
         catch (\Exception $e) {
            // Handle any other unexpected exceptions
            return redirect()->back()
                ->withInput()
                ->withErrors(['error' => $e->getMessage()]);
        }
    }
    public function destroy(Contact $contact)
    {
        $contact->delete();
        return redirect()->route('contacts.index')
            ->with('success', 'Contact deleted successfully.');
    }

    public function importForm()
    {
        return view('contacts.import');
    }

    public function import(Request $request)
    {
        $request->validate([
            'xml_file' => 'required|file|mimes:xml',
        ]);

        $xmlFile = $request->file('xml_file');
        $xmlContent = file_get_contents($xmlFile->getPathname());
        
        try {
            $xml = new SimpleXMLElement($xmlContent);
            
            $contactsData = [];
            foreach ($xml->contact as $contactXml) {
                $contactsData[] = [
                    'name' => (string) $contactXml->name,
                    'lastname' => (string) $contactXml->lastName,
                    'phone' => (string) $contactXml->phone,
                ];
            }
            Contact::insert($contactsData);
            
            return redirect()->route('contacts.index')
                ->with('success', 'Contacts imported successfully.');
        } catch (\Exception $e) {
            return redirect()->route('contacts.import')
                ->with('error', 'Error importing contacts: ' . $e->getMessage());
        }
    }
}