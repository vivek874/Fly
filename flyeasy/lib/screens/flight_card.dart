import 'package:flutter/material.dart';
import '../models/flight.dart';
import '/services/api_service.dart';

class FlightCard extends StatefulWidget {
  final Color cardColor;
  const FlightCard({super.key, required this.cardColor});

  @override
  State<FlightCard> createState() => _FlightCardState();
}

class _FlightCardState extends State<FlightCard> {
  late Future<List<Flight>> futureFlights;
  @override
  void initState() {
    super.initState();
    futureFlights = ApiService().fetchFlights();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Flight>>(
        future: futureFlights,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          // else if (snapshot.hasError) {
          //   return Center(child: Text('Error: ${snapshot.error}'));
          // }
          else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No flights available :('));
          } else {
            List<Flight> flights = snapshot.data!;
            return ListView.builder(
              itemCount: flights.length,
              itemBuilder: (context, index) {
                Flight flight = flights[index];
                return Card(
                  color: widget.cardColor,
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${flight.flightno} - ${flight.departurecity} to ${flight.arrivalcity} ',
                        ),
                        Text('${flight.flightdate}'),
                      ],
                    ),
                    subtitle: Text(
                        'Departure: ${flight.departuretime}, Arrival: ${flight.arrivaltime}'),
                    trailing: Text(' Rs. ${flight.airfare}/- ' ),
                    leading: Text('${flight.classcode}'),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}