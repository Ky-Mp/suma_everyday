import 'package:flutter/material.dart';
import 'package:suma_everyday/pages/event_page.dart';


class ContactNous extends StatelessWidget {
  const ContactNous({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(211, 11, 117, 76),
        title: Text("Contact-Nous",
         style: TextStyle(fontWeight: FontWeight.bold, 
         color: Colors.white),
         ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB( 211,  11, 117,  76),
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home,color: Colors.white,),
            label: 'Acceuil'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Mon Compte'
              )
        ],
         currentIndex: 0,
        selectedItemColor: Color.from(alpha: 1, red: 0.988, green: 0.984, blue: 0.984),
        onTap: (index) {
          Navigator.push(
            context, 
            PageRouteBuilder(
              pageBuilder: (_, __, ___)=>EventPage()
              ));
        },),
        );
      
    
  }
}