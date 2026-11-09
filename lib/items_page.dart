import 'package:flutter/material.dart';
import 'item_details_page.dart';
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
  String selectedCategory = 'All';

final List<String> categories = [
  'All',
  'Electronics',
  'ID Cards',
  'Books',
  'Bags',
  'Other',
];

String getCategory(String item) {
  switch (item) {
    case 'ID Card':
      return 'ID Cards';
    case 'Notebook':
      return 'Books';
    case 'Phone':
      return 'Electronics';
    case 'Backpack':
      return 'Bags';
    default:
      return 'Other';
  }
}
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.isLost ? lostItems : foundItems;
    final filteredItems = items.where((item) {
  final matchesSearch =
      item.toLowerCase().contains(searchText.toLowerCase());

  final matchesCategory = selectedCategory == 'All' ||
      getCategory(item) == selectedCategory;

  return matchesSearch && matchesCategory;
}).toList();

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
          Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16),
  child: DropdownButtonFormField<String>(
    initialValue: selectedCategory,
    decoration: const InputDecoration(
      labelText: 'Filter by Category',
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.category),
    ),
    items: categories.map((category) {
      return DropdownMenuItem(
        value: category,
        child: Text(category),
      );
    }).toList(),
    onChanged: (value) {
      if (value != null) {
        setState(() {
          selectedCategory = value;
        });
      }
    },
  ),
),
const SizedBox(height: 12),
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
        widget.isLost ? Icons.search : Icons.inventory_2,
        color: Colors.indigo,
      ),
      title: Text(filteredItems[index]),
      subtitle: Text(
        widget.isLost ? 'Lost item' : 'Found item',
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemDetailsPage(
              itemName: filteredItems[index],
              itemType: widget.isLost ? 'Lost Item' : 'Found Item',
            ),
          ),
        );
      },
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
