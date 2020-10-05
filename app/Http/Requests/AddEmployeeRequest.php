<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddEmployeeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
           'firstname'=>'required',
           'surname'=>'required',
           'othername'=>'required',
           'gender'=>'required',
           'nationality'=>'required',
           'birth'=>'required',
           'email'=>'required|email',
           'residential_address'=>'required',
           'postal_address'=>'required',
           'digital_address'=>'required',
           'home_phone'=>'required|digits:10|numeric',
           'mobile_phone'=>'required|digits:10|numeric',
           'hometown'=>'required',
           'marital'=>'required',
           'region'=>'required',
           'facebook'=>'required',
           'twitter'=>'required',
           'instagram'=>'required',
           'linkedin'=>'required',
           'skype'=>'required',
           'whatsapp'=>'required',
           'file'=>'required',
           'bank_name'=>'required',
           'branch'=>'required',
           'account_holder'=>'required',
           'account_number'=>'required',
           'GRA_tin_number'=>'required',
           'SSNIT_number'=>'required'


        ];
    }
}
