<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ContactReference;

class ContactReferenceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contact_reference = ContactReference::all();
        return response()->json($contact_reference,200,[$contact_reference->load('of_contact'),$contact_reference->load('reference_is')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $reference = ContactReference::create($request->all());
        return response()->json($reference,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if($reference = ContactReference::find($id)){
            return response()->json($reference,200);
        }else{
            return response()->json("ContactReference no encontrado, no se pudo mostrar",404);
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
        if($reference = ContactReference::find($id)){
            $reference->update($request->all());
            return response()->json($reference,201);
        }else{
            return response()->json("El ContactReference que desea editar no se encontró.",201);
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
        if($reference = ContactReference::find($id)){
            $reference->delete();
            return response()->json("ContactReference eliminado con exito.",201);
        }else{
            return response()->json("ContactReference no encontrado, no se pudo eliminar.",404);
        }
    }
}
