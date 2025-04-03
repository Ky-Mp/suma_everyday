import 'package:flutter/material.dart';
import 'package:suma_everyday/pages/event_page.dart';


class AProposDeNous extends StatelessWidget {
  const AProposDeNous({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('À propos de Nous',
        style: TextStyle(fontWeight: FontWeight.bold),),
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
        
           Navigator.push(
                context, 
                PageRouteBuilder(
                  pageBuilder: (_, __, ___,)=>EventPage()
                  ));

        },),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
       
          child: ListView(
            
            children: [
              Text(
                'Notre Mission',
                style: TextStyle(fontSize: 24, 
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 10),
              Text(
  'Chez Umukwe_Agency, notre mission est de créer des expériences mémorables et sur mesure pour chaque événement que nous organisons. Que ce soit une conférence professionnelle, un mariage, ou une fête d\'anniversaire, nous nous engageons à comprendre les aspirations de nos clients et à transformer leurs visions en réalités. Grâce à une planification minutieuse, une attention aux détails et une équipe d\'experts passionnés, nous veillons à ce que chaque aspect de l\'événement soit parfaitement orchestré. Nous croyons que chaque événement est une occasion unique de célébrer des moments précieux, et nous nous dévouons à offrir un service exceptionnel à chaque étape du processus.\n\n'
  
  'Nous nous engageons également à promouvoir des pratiques durables et responsables dans l\'organisation d\'événements. Cela inclut la sélection de fournisseurs respectueux de l\'environnement, l\'utilisation de matériaux recyclables et la minimisation des déchets. En collaborant avec des partenaires partageant nos valeurs, nous visons à réduire l\'impact environnemental de nos événements tout en créant des expériences inoubliables. Notre mission est de bâtir des relations de confiance avec nos clients, en les accompagnant à chaque étape et en garantissant que leur événement dépasse leurs attentes, tout en contribuant positivement à la communauté.',
  style: TextStyle(fontSize: 16),
),
              SizedBox(height: 20),
              
              Text(
                'Notre Équipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
  'Chez Umukwe_Agency, notre équipe est notre plus grande force. Composée de professionnels passionnés et expérimentés, chacun de nos membres joue un rôle essentiel dans la création d\'événements mémorables.\n\n'
  
  'Directeur de Projet : Notre directeur de projet supervise l\'ensemble du processus d\'organisation. Avec plusieurs années d\'expérience dans le secteur événementiel, il s\'assure que chaque détail est pris en compte, de la planification initiale à l\'exécution finale. Il est le point de contact principal pour nos clients, garantissant une communication fluide et une compréhension claire de leurs besoins.\n\n'
  
  'Planificateur d\'Événements : Chaque planificateur d\'événements de notre équipe possède une expertise spécifique, que ce soit dans les mariages, les événements d\'entreprise ou les fêtes privées. Ils travaillent en étroite collaboration avec nos clients pour personnaliser chaque événement, en proposant des idées créatives et en respectant le budget.\n\n'
  
  'Designer d\'Événements : Notre designer d\'événements est responsable de l\'esthétique et de l\'ambiance générale. Il crée des concepts visuels qui captivent les invités, en choisissant des thèmes, des couleurs et des décorations qui reflètent la vision du client. Son attention aux détails garantit que chaque élément visuel est harmonieux et impactant.\n\n'
  
  'Coordinateur Logistique : Ce membre clé de l\'équipe gère tous les aspects logistiques de l\'événement, y compris la coordination des fournisseurs, la gestion des horaires et l\'assurance que tout est en place le jour J. Son organisation et sa capacité à résoudre rapidement les problèmes garantissent un déroulement sans accroc.\n\n'
  
  'Équipe de Support : Nos assistants et membres de l\'équipe de support sont présents sur le terrain pour exécuter les plans élaborés par notre équipe. Ils s\'assurent que chaque détail est respecté, de la mise en place à l\'accueil des invités. Leur dévouement et leur professionnalisme sont essentiels pour créer une atmosphère accueillante et agréable.',
  style: TextStyle(fontSize: 16),
),
              
              SizedBox(height: 20),
              Text(
                'Notre Vision',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
               SizedBox(height: 10),
              Text(
                  'Notre vision est d\'être le leader dans notre domaine, en innovant constamment et en dépassant les attentes de nos clients.\n\n'
  
                  'Points Clés :\n\n'

                  'Innovation : Nous intégrons les dernières tendances et technologies pour proposer des solutions créatives et personnalisées.\n\n'
  
                  'Durabilité : Nous nous engageons à adopter des pratiques écoresponsables, réduisant notre impact environnemental tout en créant des événements significatifs.\n\n'
                  
                  'Expérience Client : Notre priorité est d\'offrir un service exceptionnel, en établissant des relations de confiance avec chaque client.\n\n'
                  
                  'Créativité : Nous capturons l\'essence unique de chaque client à travers des concepts authentiques et mémorables.\n\n'
                  
                  'Collaboration : En cultivant des partenariats solides, nous enrichissons chaque événement et garantissons des services de haute qualité.',
          style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      );
    
  }
}
