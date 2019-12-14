<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Phone;

class PhoneController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $phone = Phone::all();
        return response()->json($phone,200,[$phone->load('contact'),$phone->load('phones_type')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $phone = Phone::create($request->all());
        
        return response()->json($phone,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if($phone = Gallery::find($id)){
            return response()->json($phone,200);
        }else{
            return response()->json("Phone no encontrado, no se pudo mostrar",404);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        if($phone = Phone::find($id)){
            $phone->update($request->all());
            return response()->json($phone,201);
        }else{
            return response()->json("El phone que desea editar no se encontró.",201);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if($phone = Phone::find($id)){
            $phone->delete();
            return response()->json("Phone eliminado con exito.",201);
        }else{
            return response()->json("Phone no encontrado, no se pudo eliminar.",404);
        }
    }
}
