import 'package:flyeasy/screens/flight_card.dart';
//import 'package:flyeasy/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FlyEasy", style: TextStyle(fontStyle: FontStyle.italic),
          ),
        backgroundColor: const Color.fromARGB(240, 255, 219, 88),
      ),
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(     // container is a widget
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "FlyEasy", style: Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                          "Book Flights", style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(11),
                         image: const DecorationImage(
                           fit: BoxFit.fill,
                           image: AssetImage(
                             "lib/assets/images/image.jpeg"
                           )
                         )

                      ),
                    )
                  ],

                ),


                // SECOND ROW


                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(240, 255, 219, 88),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 72),
                  
                  child: Row(
                    children: [
                      
                    const Icon(Icons.airplane_ticket_outlined,color: Color(0xFFBFC205)),
     
                   
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Our Destinations",
                        
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                   
                    
                    ],
                 
                  ),
                ),

                // THIRD ROW
                const Gap(30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Upcoming Flights",style: Styles.headLineStyle2),
                   
                  ],

                )
              ],
            ),
          ),
          const Gap(15),
                 const SizedBox(
             height: 350,
            child: 
                FlightCard(cardColor: Color.fromARGB(255, 255, 255, 255))
               
            
            ),
        ],
      ),
    );
  }
}