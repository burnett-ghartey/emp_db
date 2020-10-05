<table class="table table-striped admin_users_table">
    <thead>
        <tr>
            <th>#</th>
            <th>photo_id</th>
            <th>Photo</th>
            <th>firstname</th>
            <th>surname</th>
            <th>othername</th>
            <th>email</th>
            <th>gender</th>
            <th>nationality</th>
            <th>birth</th>
            <th>marital</th>
            <th>postal</th>
            <th>residential</th>
            <th>digital</th>
            <th>home_phone</th>
            <th>mobile_phone</th>
            <th>region</th>
            <th>facebook</th>
            <th>instagram</th>
            <th>linkedin</th>
            <th>skype</th>
            <th>bank_name</th>
            <th>branch</th>
            <th>account_holder</th>
            <th>account_number</th>
            <th>GRA tin number</th>
            <th>SSNITT number</th>
            <th>Created</th>
            <th>Updated</th>
        </tr>
    </thead>
    <tbody>
        @if($employees)
        @foreach($employees as $employee)
        <tr>
            <td>{{ $employee->id }}</td>
            <td>{{ $employee->photo->id }}</td>
            <td>
                <img src="{{ url('/images/employees/'.$employee->photo['file'] )}}" width="50px">
            </td>
            <td>
                <a href="{{ url('/admin/employees/'. $employee->id.'/edit')}}">{{ $employee->firstname }}</a>
            </td>
            <td> {{$employee->surname }} </td>
            <td> {{$employee->othername}} </td>
            <td> {{$employee->email }} </td>
            <td> {{$employee->gender}} </td>
            <td> {{$employee->nationality }} </td>
            <td> {{$employee->birth }} </td>
            <td> {{$employee->marital}} </td>
            <td> {{$employee->postal_address }} </td>
            <td> {{$employee->residential_address}} </td>
            <td> {{$employee->digital_address}} </td>
            <td> {{$employee->home_phone}} </td>
            <td> {{$employee->mobile_phone}} </td>
            <td> {{$employee->region}} </td>
            <td> {{$employee->facebook}} </td>
            <td> {{$employee->instagram}} </td>
            <td> {{$employee->linkedin}} </td>
            <td> {{$employee->skype}} </td>
            <td> {{$employee->bank_name}} </td>
            <td> {{$employee->branch}} </td>
            <td> {{$employee->account_holder}} </td>
            <td> {{$employee->account_number}} </td>
            <td> {{$employee->GRA_tin_number}} </td>
            <td> {{$employee->SSNIT_number}} </td>
            <td>{{ $employee->created_at->diffForHumans() }}</td>
            <td>{{ $employee->updated_at->diffForHumans() }}</td>
        </tr>
        @endforeach
        @endif

    </tbody>
</table>