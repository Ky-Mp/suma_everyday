// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:suma_everyday/pages/home_page.dart';
class AccountCreate extends StatelessWidget {
   AccountCreate({super.key});

  final nameController  = TextEditingController();
  final prenomController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       backgroundColor: Color.fromARGB(255, 5, 5, 5),

      appBar: AppBar(
        title: Text("Umukwe_Agency",
        style: TextStyle(
          color: Colors.white
          ),
          ),
        backgroundColor: Color.fromARGB(211, 11, 117, 76),
        
       ),

        //POUR FAIRE LE NAVBAR
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Acceuil',
          ),

        
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'conexion',
          ),
        ],

        currentIndex: 0,
        selectedItemColor: Color.fromARGB(255, 9, 100, 88),
        onTap: (index) {
          // Handle item tap
        },),

       body: Center(
            
            //POUR AJOUTER DU STYLE  AU FORMULAIRE 
              child:Padding(
                padding: const EdgeInsets.all(90),
                

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Form(
                      key: _formKey,//POUR LE MOT DE PASSE 
                      child: Column(
                          children: [

                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                ),
                                hintText: 'Veuiller Saisir Votre Nom',
                                prefixIcon: Icon(Icons.person),
                                prefixIconColor: Colors.green,
                              ),
                              style: TextStyle(color:Colors.white),
                              keyboardType: TextInputType.number,
                              controller: nameController,

                              //POUR VALIDER CE QUE J'AI SAISI
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuiller Saisir  Nom svp!!';
                                }
                                return null;
                              },
                            ),

                            SizedBox(height: 5),

                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                ),
                                hintText: 'Veuiller Saisir Votre Prénom Email',
                                prefixIcon: Icon(Icons.person),
                                prefixIconColor: Colors.green,
                              ),
                              style: TextStyle(color:Colors.white),
                              keyboardType: TextInputType.number,
                              controller: prenomController,

                              //POUR VALIDER CE QUE J'AI SAISI
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuiller Saisir Votre Prénom svp!!';
                                }
                                return null;
                              },
                            ),

                            SizedBox(height: 5),

                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                ),
                                hintText: 'Veuiller Saisir Votre Email',
                                prefixIcon: Icon(Icons.email),
                                prefixIconColor: Colors.green,
                              ),
                              style: TextStyle(color:Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,

                              //POUR VALIDER CE QUE J'AI SAISI
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuiller Saisir Adresse email svp!!';
                                }
                                return null;
                              },
                            ),

                             SizedBox(height: 10),

                             TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hoverColor: Colors.white,
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                ),
                                hintText: 'Veuiller Saisir Votre Mot de passe',
                                prefixIcon: Icon(Icons.password),
                                prefixIconColor: Colors.green,
                              ),
                              style: TextStyle(color:Colors.white),
                              keyboardType: TextInputType.number,
                              controller: passwordController,

                              //POUR VALIDER CE QUE J'AI SAISI
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuiller Saisir Votre Mot de passe svp!!';
                                }
                                return null;
                              },
                            ),
                          ]),),

                            SizedBox(height: 20),

                     Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                     ElevatedButton(
                        onPressed: () {
                          
                          //POUR PASSER SUR UNE PAGE
                          Navigator.push(
                            context,
                             PageRouteBuilder(
                              pageBuilder: (_, __, ___)=> HomePage()
                              ));

                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            print(nameController.text);
                            print(prenomController.text);
                            print(emailController.text);
                            print(passwordController.text);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, //POUR AJOUTER DE LA COULEUR AU TEXT DU BOUTON 
                          backgroundColor: Color.fromARGB(162, 11, 117, 77),//POUR AJOUTE DU FOND AU BOUTON 
                        ),
                        child: Text("Enregistrer"),
                        ),


      ]),
       )
       ),
    )
    );
    
  }
}