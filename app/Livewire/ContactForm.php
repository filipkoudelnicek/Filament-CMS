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
    public string $message = '';

    protected $rules = [
        'name' => 'required|min:3',
        'email' => 'required|email',
        'phone' => 'nullable',
        'message' => 'required|min:20',
    ];

    public function submitForm()
    {
        $validatedData = $this->validate();

        try {
            $recipient = config('mail.from.address');

            $mail = new ContactFormMail($validatedData);

            $mailer = Mail::to($recipient);

            $mailer->send($mail);

            $this->reset(['name', 'email', 'phone', 'message']);

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
