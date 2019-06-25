<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Student;
use App\Detention;

class StudentController extends Controller
{
    //
    public function show($student_slug)
    {
        $student = \App\Student::where('slug', $student_slug)->first();

        if (!$student) {
            abort(404, 'Student not found');
        }

        $view = view('student/show');
        $view->student = $student;
        return $view;
    }


    public function index()
    {
        $students = Student::orderBy('name', 'asc')->get();

        return view('student/index', [
            'students' => $students
        ]);
    }

    public function storeDetention(Request $request, $student_slug)
    {
        $student = \App\Student::where('slug', $student_slug)->first();

        if (!$student) {
            abort(404, 'Student not found');
        }
        
        $detention = new Detention;
        $detention->student_id = $student->id;
        $detention->user_id = \Auth::id();

        // these are enough:
        $detention->subject = $request->input('subject');
        $detention->description = $request->input('description');

        $detention->save();

        return back();
    }
}

