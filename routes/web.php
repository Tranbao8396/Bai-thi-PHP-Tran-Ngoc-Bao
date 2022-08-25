<?php

use App\Http\Controllers\TicketController;
use App\Http\Controllers\BookController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [TicketController::class, 'index']);
Route::get('/edit/{id}', [TicketController::class, 'edit']);
Route::post('/save/{id}', [TicketController::class, 'update']);
Route::get('/delete/{id}', [TicketController::class, 'delete']);

Route::get('/book/{id}', [BookController::class, 'book']);
Route::post('/book/{id}', [BookController::class, 'save']);

Route::get('/bookresult', [BookController::class, 'index']);
Route::get('/bookdelete/{ticketid}', [BookController::class, 'delete']);

