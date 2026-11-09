
import 'package:flutter/material.dart';

class AboutHelpPage extends StatelessWidget {
  const AboutHelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About & Help'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Icon(
            Icons.school,
            size: 80,
            color: Colors.indigo,
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              'Campus Lost & Found',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'This application helps students report and find '
            'lost belongings within the college campus.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 25),

          const Text(
            'How to Use',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          const Card(
            child: ListTile(
              leading: Icon(Icons.report_problem, color: Colors.indigo),
              title: Text('Report Lost Item'),
              subtitle: Text(
                'Submit details about an item you have lost.',
              ),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.add_box, color: Colors.indigo),
              title: Text('Report Found Item'),
              subtitle: Text(
                'Submit details about an item you have found.',
              ),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.search, color: Colors.indigo),
              title: Text('Search Items'),
              subtitle: Text(
                'Search and filter items by category.',
              ),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.assignment, color: Colors.indigo),
              title: Text('My Reports'),
              subtitle: Text(
                'View the sample reports displayed in the app.',
              ),
            ),
          ),

          const SizedBox(height: 20),
          const Divider(),
          const Center(
            child: Text(
              'Campus Lost & Found Management System\nVersion 1.0',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
