<?php

namespace App\Livewire;

use App\Mail\ContactFormMail;
use Illuminate\Support\Facades\Mail;
use Livewire\Component;

class ContactForm extends Component
{
    public string $name = '';
    public string $email = '';
    public string $phone = '';
    public string $website = '';
    public string $message = '';

    protected $rules = [
        'name' => 'required|min:3',
        'email' => 'required|email',
        'phone' => 'nullable',
        'website' => 'nullable|url',
        'message' => 'required|min:20',
    ];

    protected $messages = [
        'name.required' => 'Prosím zadejte své jméno.',
        'name.min' => 'Jméno musí obsahovat alespoň 3 znaky.',
        'email.required' => 'Email je povinný.',
        'email.email' => 'Zadejte platný email.',
        'website.url' => 'Zadejte platnou URL adresu.',
        'message.required' => 'Zpráva je povinná.',
        'message.min' => 'Zpráva musí obsahovat alespoň 20 znaků.',
    ];

    public function submitForm()
    {
        $validatedData = $this->validate();

        try {
            $recipient = config('mail.from.address');
            
            $mail = new ContactFormMail($validatedData);
            
            $mailer = Mail::to($recipient);
            
            $mailer->send($mail);

            $this->reset(['name', 'email', 'phone', 'website', 'message']);

            session()->flash('message', 'Děkujeme za Vaši zprávu. Brzy se Vám ozveme.');
            
        } catch (\Exception $e) {
            session()->flash('error', 'Nastal problém při odesílání. Zkuste to prosím později.');
        }
    }

    public function render()
    {
        return view('livewire.contact-form');
    }
}
