
@extends('layouts.admin')
@push('styles')
<link href="{{ asset('custom/styles/home.css')}}" rel="stylesheet">
@endpush


@section('content')

<div class="col-sm-11">
@component('admin.includes.title')
Add Employees
@endcomponent

<form method="POST" action="{{ url('admin/employees')}}" enctype="multipart/form-data">
    @csrf

    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <label for="file">Employee pic</label>
                <div>
                <img src="{{ url('custom/images/no_movie_ph.png')}}" id="profile-img-tag" width="276px">
                </div>
                <input type="file" name="file" id="profile-img">
            </div>
           
        </div>
        <div class="col-sm-9">
            <table>
                <thead>
                    <tr>
                        <th colspan="4">A. Personal Information</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="shade">firstname</td>
                        <td><input type="text" name="firstname"></td>
                        <td class="shade">surname</td>
                        <td><input type="text" name="surname"></td>
                    </tr>
                    <tr>
                        <td class="shade">Other names</td>
                        <td><input type="text" name="othername"></td>
                        <td class="shade">date of birth</td>
                        <td><input type="date" name="birth"></td>
                    </tr>
                    <tr>
                        <td class="shade">gender</td>
                        <td>
                            <input type="radio" id="male" name="gender" value="male">
                            <label for="male">Male</label><br>
                            <input type="radio" id="female" name="gender" value="female">
                            <label for="female">Female</label><br></td>
                        <td class="shade">nationality</td>
                        <td><input type="text" name="nationality"></td>
                    </tr>
                    <tr>
                        <td class="shade">residential address</td>
                        <td><input type="text" name="residential_address"></td>
                        <td class="shade">postal address</td>
                        <td><input type="text" name="postal_address"></td>
                    </tr>
                    <tr>
                        <td class="shade">digital address</td>
                        <td><input type="text" name="digital_address"></td>
                        <td class="shade">email address</td>
                        <td><input type="text" name="email"></td>
                    </tr>
                    <tr>
                        <td class="shade">phone(home)</td>
                        <td><input type="text" name="home_phone"></td>
                        <td class="shade">phone(mobile)</td>
                        <td><input type="text" name="mobile_phone"></td>
                    </tr>
                    <tr>
                        <td class="shade">hometown</td>
                        <td><input type="text" name="hometown" class="jm"></td>
                        <td class="shade" rowspan="2">region</td>
                        <td rowspan="2"><input type="text" class="region" name="region"></td>
                    </tr>
                    <tr>
                        <td class="shade">marital status</td>
                        <td> 
                             <input type="radio" id="single" name="marital" value="single">
                            <label for="single"> single</label><br>
                            <input type="radio" id="married" name="marital" value="married">
                            <label for="married"> married</label><br></td>   
                    </tr>
                    <tr>
                        <td class="shade" rowspan="2">Social Media</td> 
                        <td><i class="fa fa-facebook" aria-hidden="true"></i><input type="text" name="facebook"></td> 
                        <td><i class="fa fa-twitter"></i><input type="text" name="twitter"></td>
                        <td><i class="fa fa-whatsapp"></i><input type="text" name="whatsapp"></td>
                        
                       
                    </tr>
                    <tr>
                        <td><i class="fa fa-linkedin"></i><input type="text" name="linkedin"></td> 
                        <td><i class="fa fa-skype"></i><input type="text" name="skype"></td>
                        <td><i class="fa fa-instagram"></i><input type="text" name="instagram"></td>
     
                    </tr>
                </tbody>
                
            </table>
    
    
            <table class="table-2">
                <thead>
                    <tr>
                        <th colspan="4">B. Bank Details</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="shade">Name of Bank</td>
                        <td><input type="text" name="bank_name"></td>
                        <td class="shade">Branch</td>
                        <td><input type="text" name="branch"></td>
                    </tr>
                    <tr>
                        <td class="shade">Name of Account Holder</td>
                        <td><input type="text" name="account_holder"></td>
                        <td class="shade">Bank Account No.</td>
                        <td><input type="text" name="account_number"></td>
                    </tr> 
                     <tr>
                        <td class="shade">GRA Tin No.</td>
                        <td><input type="text" name="GRA_tin_number"></td>
                        <td class="shade">SSNIT No.</td>
                        <td><input type="text" name="SSNIT_number"></td>
                    </tr>
                    
                </tbody>
                
            </table>
            <button type="submit" class="submit">Save Details</button>
            
            
    @component('admin.includes.formErrors')

    @endcomponent
           
        </div>
      
    </div>
   

    
    


    
</form>

</div>


    <script>
 
 function readURL(input){
            if(input.files && input.files[0]){
                var reader = new FileReader();

                reader.onload = function(e){
                    $('#profile-img-tag').attr('src', e.target.result);
                   
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $('#profile-img').change(function(){
            readURL(this);
        });
    </script>
@endsection
