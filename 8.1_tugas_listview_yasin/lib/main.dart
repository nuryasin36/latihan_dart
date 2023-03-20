import 'package:flutter/material.dart';

List<Map<String, dynamic>> contacts = [
  {"username": "Leanne Graham", "phone": "1-770-736-8031 x56442"},
  {"username": "Ervin Howell", "phone": "010-692-6593 x09125"},
  {"username": "Clementine Bauch", "phone": "1-463-123-4447"},
  {"username": "Patricia Lebsack", "phone": "493-170-9623 x156"},
  {"username": "Chelsey Dietrich", "phone": "(254)954-1289"},
  {"username": "Mrs. Dennis Schulist", "phone": "1-447-935-8478 x6430"},
  {"username": "Kurtis Weissnat", "phone": "210.067.6132"}
];

class ContactListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xff67a958),
              child: Text(contact['username'][0]),
            ),
            title: Text(contact['username']),
            subtitle: Text(contact['phone']),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ContactListView(),
  ));
}
