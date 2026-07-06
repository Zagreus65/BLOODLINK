import 'package:flutter/material.dart';

class FindDonorsScreen extends StatelessWidget {
  const FindDonorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find Donors"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [

          DonorCard(
            name: "John Doe",
            bloodGroup: "O+",
            location: "Lagos",
          ),

          DonorCard(
            name: "Mary Johnson",
            bloodGroup: "A-",
            location: "Abuja",
          ),

          DonorCard(
            name: "David Smith",
            bloodGroup: "B+",
            location: "Port Harcourt",
          ),
        ],
      ),
    );
  }
}

class DonorCard extends StatelessWidget {
  final String name;
  final String bloodGroup;
  final String location;

  const DonorCard({
    super.key,
    required this.name,
    required this.bloodGroup,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.red,
          child: Text(
            bloodGroup,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(name),
        subtitle: Text(location),
        trailing: Icon(
          Icons.phone,
          color: Colors.green,
        ),
      ),
    );
  }
}