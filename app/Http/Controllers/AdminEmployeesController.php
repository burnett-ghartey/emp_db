<?php

namespace App\Http\Controllers;
use Session;
use App\Photo;
use App\Employee;
use Illuminate\Http\Request;
use App\Http\Requests\AddEmployeeRequest;

class AdminEmployeesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employees = Employee::paginate(10);
        return view('admin.employees.index', compact('employees'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.employees.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AddEmployeeRequest $request)
    {
        $input = $request->all();

        if($file = $request->file('file')){
            $name = time().$file->getClientOriginalName();
            $file->move('images/employees', $name);

            $image = Photo::create(['file'=>$name]);

            $input['photo_id'] = $image->id;

            
        }
        // $input['user_id'] = Auth::user()->id;
            Employee::create($input);
            session::flash('flash_admin', 'The employee has been created');
            return redirect('/admin/employees');

           
            
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $employee = Employee::find($id);
        return view('admin.employees.edit', compact('employee'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $post = Post::findorFail($id);
        $input = $request->all();

        if($file = $request->file('file')){
            $name = time().$file->getClientOriginalName();
            $file->move('images/employees', $name);

            $image = Photo::create(['filename'=> $name]);

            $input['photo_id'] = $image->id;
        }

        $post->update($input);

        Session::flash('flash_admin', 'The post has been edited');
        return redirect('/admin/employees');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Employee::findorFail($id)->delete();
        Session::flash('flash_admin', 'The post has been deleted');
        return redirect('/admin/employees');
    }

    public function filter(Request $request){
        $employees = Employee::where('firstname','like','%'.$request->input('query'). '%')->orderBy('firstname')->get();
                        return view('admin.employees.search', compact('employees'));
    }
}
