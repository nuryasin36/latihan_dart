import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      initialRoute: '/',
      routes: {
        '/': (context) => Contacts(),
        '/create_contact': (context) => CreateContact(),
      },
    );
  }
}

class Contact {
  final String name;
  final String phone;

  Contact({required this.name, required this.phone});
}

List<Contact> contacts = [
  Contact(name: 'John Doe', phone: '08123456789'),
  Contact(name: 'Jane Doe', phone: '08234567890'),
  Contact(name: 'Mark Smith', phone: '08345678901'),
];

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  void _openCreateContact() async {
    final result = await Navigator.pushNamed(context, '/create_contact');
    if (result != null) {
      setState(() {
        contacts.add(result as Contact);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].phone),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openCreateContact,
        child: Icon(Icons.add),
      ),
    );
  }
}

class CreateContact extends StatefulWidget {
  @override
  _CreateContactState createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  bool _saving = false;
  String _message = '';

  void _saveContact() {
    setState(() {
      _saving = true;
    });
    // Simulate saving contact
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        final newContact = Contact(
          name: _nameController.text,
          phone: _phoneController.text,
        );
        _message = 'Contact saved successfully!';
        _nameController.clear();
        _phoneController.clear();
        _saving = false;
        Navigator.pop(context, newContact);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Name',
              ),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: 'Phone Number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _saving ? null : _saveContact,
              child: _saving ? CircularProgressIndicator() : Text('Submit'),
            ),
            SizedBox(height: 16.0),
            Text(
              _message,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
