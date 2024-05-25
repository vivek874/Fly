import 'package:flutter/material.dart';
// import '/services/api_service.dart';
// import 'flight_card.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Color.fromARGB(240, 255, 219, 88),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            const Center(
              child: Text(
                'John Doe',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(child: Text('johndoe@example.com')),
            const Center(child: Text('+1234567890')),
            const SizedBox(height: 32),
            const Text(
              'Booking History',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  FLightCard(
                    flightid: '',
                    departurecity: '',
                    arrivalcity: '',
                    flightdate: '',
                  ),
                  FLightCard(
                    flightid: '',
                    departurecity: '',
                    arrivalcity: '',
                    flightdate: '',
                  ),
                 
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Account Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: const Text('Update Profile Information'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Change Password'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                // Handle logout logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FLightCard extends StatelessWidget {
  final String flightid;
  final String departurecity;
  final String arrivalcity;
  final String flightdate;

  FLightCard({
    required this.flightid,
    required this.departurecity,
    required this.arrivalcity,
    required this.flightdate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Flight ID: $flightid'),
            Text('From: $departurecity'),
            Text('To: $arrivalcity'),
            Text('Date: $flightdate'),
          ],
        ),
      ),
    );
  }
}