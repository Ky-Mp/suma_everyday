import 'package:flutter/material.dart';
import 'package:suma_everyday/pages/a_propos_de_nous.dart';
import 'package:suma_everyday/pages/contact_nous.dart';
import 'package:suma_everyday/pages/home_page.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Bienvenue Sur Umukwe_Agency", 
        style: TextStyle(fontWeight:FontWeight.bold, color:  Colors.white),
        ),
        backgroundColor: Color.fromARGB(211, 11, 117, 76),
      ),
      

      // POUR FAIRE LE NAVBAR
       
       bottomNavigationBar: BottomNavigationBar(backgroundColor:  Color.fromARGB(211, 11, 117, 76),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Acceuil',
          ),

        
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mon Compte',
          ),
        ],

        currentIndex: 0,
        selectedItemColor: Color.from(alpha: 1, red: 0.988, green: 0.984, blue: 0.984),
        onTap: (index) {
          // Handle item tap
        },),

        //POUR FAIRE LE MENU DE GAUCHE 

      drawer: Drawer(backgroundColor: Colors.black,
        child:
      
       ListView(children: [
        DrawerHeader(child: Text("Umukwe_Agency", 
        style: TextStyle(fontSize: 25 ,
        color: Colors.white
         ),
         )
         ),

        ListTile(
          leading: Icon(Icons.home),
          title: Text("Acceuil", 
          style: TextStyle(fontSize: 20, 
          color: Colors.white),
          ),
          iconColor: (const Color.fromARGB(255, 9, 100, 88)),
          onTap: () {

              Navigator.push(
                context, 
                PageRouteBuilder(
                  pageBuilder: (_, __, ___,)=>EventPage()
                  ));
          },
        ),

        ListTile(
          leading: Icon(Icons.info),
          title: Text("A propos de nous",
          style: TextStyle(fontSize: 15,
            color: Colors.white),
            ),
          iconColor: (const Color.fromARGB(255, 9, 100, 88)),
          onTap: () {

              Navigator.push(
                context,
                PageRouteBuilder(
                pageBuilder: (_, __, ___)=>AProposDeNous()
                ));
                
          },
        ),

        ListTile(
          leading: Icon(Icons.star),
          title: Text("Service",
          style: TextStyle(fontSize: 15,
          color: Colors.white
          ),),
          iconColor: (const Color.fromARGB(255, 9, 100, 88)),
          onTap: () {

          },
        ),

        
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text("Rendez-vous",
          style: TextStyle(fontSize: 15,
            color: Colors.white),
            ),
          iconColor: (const Color.fromARGB(255, 9, 100, 88)),
          onTap: () {

          },
        ),

        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Contact-nous",
          style: TextStyle(fontSize: 15,
          color: Colors.white),
          ),
          iconColor: (const Color.fromARGB(255, 9, 100, 88)),
          onTap: () {


              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___)=>ContactNous()
                  ));

          },
        ),

        SizedBox(height: 220),
        ListTile(
          leading: Icon(Icons.logout_outlined),
          title: Text("Deconexion",
          style: TextStyle(fontSize: 15,
          color: Colors.white),
          ),
          iconColor: (const Color.fromARGB(255, 9, 100, 88)),
          onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___)=>HomePage()));
          },)
       ],)
       ),
     
      body: Center( 
        child: Text("Prochainement disponble"),
        
      ),
    );
  }
}