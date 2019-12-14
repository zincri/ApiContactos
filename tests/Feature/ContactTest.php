<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Contact;
use App\User;

use Illuminate\Foundation\Testing\WithoutMiddleware;

class ContactTest extends TestCase
{
    use WithoutMiddleware;
    //use RefreshDatabase;
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testGetContact(){
        $this->withoutMiddleware();
        //$response = $this->get('/');
        
        $user = factory(User::class)->create();
        $contact = factory(Contact::class,1)->create([
            'user_id'=> $user->id
        ]);
        $response = $this->json('GET','/api/contact');
        $response->assertStatus(200)
                        ->assertJsonStructure([
                            

                            'id','nombre','apellido_paterno','apellido_materno',
                            'edad','numero_telefono','user_id','user' =>[
                                'id','name','email'
                            ]
                            
                        ]); 
        $this->assertCount(6,$response->json()['user']);
        
    }
    
    public function testPostContact()
    {
        
        $contact = factory(Contact::class)->make();//intercambiar
        $user = factory(User::class)->create();
        
        $response = $this->json('POST','/api/contact',[
                            'nombre' => $contact->nombre,
                            'apellido_paterno'=> $contact->apellido_paterno,
                            'apellido_materno'=> $contact->apellido_materno,
                            'edad'=>$contact->edad,
                            'numero_telefono'=>$contact->numero_telefono,
                            'user_id'=> $user->id
                        ]); 
                        $response->assertJsonStructure([
                            'id','nombre','apellido_paterno','apellido_materno',
                            'edad','numero_telefono','user_id'            
                        ])->assertStatus(201); 
                        $this->assertDatabaseHas('contacts',[
                            
                            'nombre'=>$contact->nombre,
                            'apellido_paterno'=>$contact->apellido_paterno,
                            'apellido_materno'=>$contact->apellido_materno,
                            'edad'=>$contact->edad,
                            'numero_telefono'=>$contact->numero_telefono,
                            'user_id'=>$user->id
                        ]);
                        $this->assertDatabaseHas('users',[
                            'id'=>$user->id,
                            'name'=>$user->name,
                            'email'=>$user->email
                        ]);

        //$this->assertCount(6,$response->json()['user']);
        //Si no funciona es seguramente porque ya estas retornando Modelo::all() en el controlador
        
    }
}
