
import 'package:flutter/material.dart';

class ItemsPage extends StatelessWidget {
  final String title;
  final bool isLost;

  const ItemsPage({
    super.key,
    required this.title,
    required this.isLost,
  });

  @override
  Widget build(BuildContext context) {
    final items = isLost
        ? ['ID Card', 'Water Bottle', 'Notebook']
        : ['Black Wallet', 'Keys', 'Umbrella'];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                isLost ? Icons.search : Icons.inventory_2,
                color: Colors.indigo,
              ),
              title: Text(items[index]),
              subtitle: Text(
                isLost ? 'Lost item' : 'Found item',
              ),
            ),
          );
        },
      ),
    );
  }
}
