
import 'package:flutter/material.dart';

class ItemDetailsPage extends StatelessWidget {
  final String itemName;
  final String itemType;

  const ItemDetailsPage({
    super.key,
    required this.itemName,
    required this.itemType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(
                Icons.inventory_2,
                size: 90,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              itemName,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.category,
                  color: Colors.indigo,
                ),
                title: const Text('Item Type'),
                subtitle: Text(itemType),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.indigo,
                ),
                title: Text('Location'),
                subtitle: Text('Not specified'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(
                  Icons.description,
                  color: Colors.indigo,
                ),
                title: Text('Description'),
                subtitle: Text('No description available'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
