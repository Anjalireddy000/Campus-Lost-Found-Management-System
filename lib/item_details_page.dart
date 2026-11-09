import 'package:flutter/material.dart';

class ItemDetailsPage extends StatelessWidget {
  final String itemName;
  final String itemType;

  const ItemDetailsPage({
    super.key,
    required this.itemName,
    required this.itemType,
  });

  void showClaimDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Claim Item'),
        content: Text(
          'Your claim request for "$itemName" '
          'has been submitted successfully! (Demo only)',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

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
            const Icon(
              Icons.inventory_2,
              size: 70,
              color: Colors.indigo,
            ),
            const SizedBox(height: 20),

            Text(
              itemName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              'Item Type: $itemType',
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 15),

            const Text(
              'Location: Not specified',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 15),

            const Text(
              'Description: No description available',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => showClaimDialog(context),
                icon: const Icon(Icons.check_circle),
                label: const Text('Claim Item'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}