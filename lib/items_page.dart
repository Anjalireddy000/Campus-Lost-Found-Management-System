
import 'package:flutter/material.dart';

class ItemsPage extends StatefulWidget {
  final String title;
  final bool isLost;

  const ItemsPage({
    super.key,
    required this.title,
    required this.isLost,
  });

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  final TextEditingController searchController =
      TextEditingController();

  final List<String> lostItems = [
    'ID Card',
    'Water Bottle',
    'Notebook',
  ];

  final List<String> foundItems = [
    'Black Wallet',
    'Keys',
    'Umbrella',
  ];

  String searchText = '';

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.isLost ? lostItems : foundItems;

    final filteredItems = items
        .where((item) =>
            item.toLowerCase().contains(searchText.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search items...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    searchController.clear();
                    setState(() {
                      searchText = '';
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: filteredItems.isEmpty
                ? const Center(
                    child: Text('No items found'),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(
                            widget.isLost
                                ? Icons.search
                                : Icons.inventory_2,
                            color: Colors.indigo,
                          ),
                          title: Text(filteredItems[index]),
                          subtitle: Text(
                            widget.isLost
                                ? 'Lost item'
                                : 'Found item',
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
