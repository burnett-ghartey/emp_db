<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
   protected $fillable = [
        'firstname', 'surname', 'othername', 'gender', 'email','nationality', 'birth', 'residential_address', 'postal_address', 'digital_address', 'home_phone', 'mobile_phone', 'hometown', 'region', 'marital', 'facebook', 'twitter', 'instagram', 'linkedin', 'whatsapp', 'skype', 'photo_id', 'bank_name', 'branch','account_holder', 'account_number', 'GRA_tin_number', 'SSNIT_number'
   ];

   public function photo(){
      return $this->belongsTo('App\photo');
  }

}
