import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'flight_card.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  TicketViewState createState() => TicketViewState();
}

class TicketViewState extends State<TicketView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Your Flight'),
    
        backgroundColor: Color.fromARGB(240, 255, 219, 88),
        
      ),


      // THE SEARCH BAR
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255,255,255,255),
        ),   
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: const Column(
        
          children: [
            Row(
              children: [
                Icon(Icons.search),
                Gap(10),
                Text(
                  "Search",
               
                ),
              ],
            ),

            
            SizedBox(height:30) , // Add some space between the search bar and the list

            Expanded(child: FlightCard(cardColor: Color.fromARGB(255, 255, 255, 255))),

          ],
        ),
      ),
    );
  }
}