import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ContactsModel(),
      child: MaterialApp(
        title: 'Flutter Contacts',
        home: ContactScreen(),
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ContactList(),
          ),
          AddContactButton(),
        ],
      ),
    );
  }
}

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contacts = Provider.of<ContactsModel>(context).contacts;
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(contacts[index].name),
          subtitle: Text(contacts[index].phone),
        );
      },
    );
  }
}

class AddContactButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Provider.of<ContactsModel>(context, listen: false)
            .addContact(Contact('New Contact', 'New Phone'));
      },
      tooltip: 'Add Contact',
      child: Icon(Icons.add),
    );
  }
}

class ContactsModel with ChangeNotifier {
  List<Contact> _contacts = [
    Contact('John Doe', '123-456-7890'),
    Contact('Jane Doe', '555-555-1212'),
  ];

  List<Contact> get contacts => _contacts;

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}

class Contact {
  final String name;
  final String phone;

  Contact(this.name, this.phone);
}
