<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ChuyenBay;

class TicketController extends Controller
{
    public function index() {
        $tickets = ChuyenBay::all();

        return view('index', [
            'tickets' => $tickets,

        ]);
    }

    public function edit($id) {
        $ticket = ChuyenBay::where('macb', $id)->first();
        return view ('edit', [
            'ticket' => $ticket,
        ]);
    }

    public function update(Request $request, $id) {
        $ticket = ChuyenBay::where('macb', $id)->first();
        $data = $request ->except(['_token']);
        ChuyenBay::where('macb', $id)
        ->update($data);
        return redirect ('/');
    }

    public function delete ($id) {
        $ticket = ChuyenBay::where('macb', $id)->delete();
        return redirect ('/');
    }
}
