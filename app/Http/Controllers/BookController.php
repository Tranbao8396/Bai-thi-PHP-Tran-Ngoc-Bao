<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ChuyenBay;
use App\Models\Ve;

class BookController extends Controller
{
    public function index() {
        $databooks = Ve::all();
        return view ('bookresult', [
            'databooks' => $databooks,
        ]);
    }

    public function book($id) {
        return view('book', [
            'id' => $id,
        ]);
    }

    public function save(Request $request, $id) {
        $dataname = $request->input('tenkhach');
        $dataghe = $request->input('loaighe');
        $datacmnd = $request->input('cmnd');
        $datachuyenbay = ChuyenBay::where('macb',$id)->first();
        if($dataghe == '1') {
            $loaighe = 'giagheloai1';
        } elseif ($dataghe == '2') {
            $loaighe = 'giagheloai2';
        }
        $giagheloai = $datachuyenbay->$loaighe;

        Ve::create([
            'tenkhach' => $dataname,
            'cmnd' => $datacmnd,
            'macb' => $id,
            'loaighe' => $dataghe,
            'giaghe' => $giagheloai
        ]);

        return redirect('/bookresult');
    }

    public function delete($ticketid) {
        $databook = Ve::where('mave', $ticketid)->delete();
        return redirect('/bookresult');
    }
}
