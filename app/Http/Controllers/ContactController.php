<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use App\User;
use App\PhonesType;
use App\Phone;
use JWTAuth;
class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contact = Contact::all();
        return response()->json($contact,200,[$contact->load('user'),$contact->load('references'),$contact->load('phone')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $type = PhonesType::all();
        return response()->json($type,200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user_id = JWTAuth::parseToken()->authenticate()->id;
        //$user = User::findOrFail($request->user_id);
        $tipo_telefono = PhonesType::findOrFail($request->tipo_telefono);

        $contact = new Contact;
        $contact->nombre =$request->nombre;
        $contact->apellido_paterno =$request->apellido_paterno;
        $contact->apellido_materno =$request->apellido_materno;
        $contact->edad =$request->edad;
        $contact->numero_telefono =$request->numero_telefono;
        $contact->user_id = $user_id;
        $contact->save();

        $phone = new Phone;
        $phone->type_id=$tipo_telefono->id;
        $phone->telefono=$request->numero_telefono;
        $phone->contact_id=$contact->id;
        $phone->save();
        return response()->json($contact,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if($contact = Contact::find($id)){
            return response()->json($contact,200);
        }else{
            return response()->json("Contacto no encontrado, no se pudo mostrar",404);
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
        
        if($contact = Contact::find($id)){
            $contact->update($request->all());
            //No lo puedes editar por que no sabes que id
            //va a tener cadar telefono si tiene muchos,
            //mientras haya 1 no hay problema, pero si con muchos.
            //$phone = Phone::find($request->phone[0]);
            //$phone->update($request->phone->all());
            return response()->json($contact,201);
        }else{
            return response()->json("El contacto que desea editar no se encontró.",201);
        }
        
        /* 
        $contact->nombre =$request->nombre;
        $contact->apellido_paterno =$request->apellido_paterno;
        $contact->apellido_materno =$request->apellido_materno;
        $contact->edad =$request->edad;
        $contact->numero_telefono =$request->numero_telefono;
        $contact->user_id = $request->user_id;
         */
        
        //$phone = $request->input('phone.*');

        //$phone_obj = Phone::find($phone->id);
        //$phone_obj->update($phone);

        //return response()->json($phone,201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if($contact = Contact::find($id)){
            $contact->delete();
            return response()->json("Contacto eliminado con exito.",201);
        }else{
            return response()->json("Contacto no encontrado, no se pudo eliminar.",404);
        }
            
        
    }
}
