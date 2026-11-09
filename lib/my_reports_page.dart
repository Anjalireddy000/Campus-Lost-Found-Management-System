
import 'package:flutter/material.dart';

class MyReportsPage extends StatelessWidget {
  const MyReportsPage({super.key});

  final List<Map<String, String>> reports = const [
    {
      'name': 'ID Card',
      'type': 'Lost Item',
      'status': 'Pending',
      'date': '09 Nov 2026',
    },
    {
      'name': 'Black Wallet',
      'type': 'Found Item',
      'status': 'Resolved',
      'date': '08 Nov 2026',
    },
    {
      'name': 'Notebook',
      'type': 'Lost Item',
      'status': 'Pending',
      'date': '07 Nov 2026',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Reports'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: reports.length,
        itemBuilder: (context, index) {
          final report = reports[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(
                report['type'] == 'Lost Item'
                    ? Icons.search
                    : Icons.inventory_2,
                color: Colors.indigo,
              ),
              title: Text(report['name']!),
              subtitle: Text(
                '${report['type']} • ${report['date']}',
              ),
              trailing: Text(
                report['status']!,
                style: TextStyle(
                  color: report['status'] == 'Resolved'
                      ? Colors.green
                      : Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
