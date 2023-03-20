import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Contact {
  final String name;
  final String phone;

  Contact({required this.name, required this.phone});
}

class CreateContactPage extends StatefulWidget {
  const CreateContactPage({Key? key}) : super(key: key);

  @override
  _CreateContactPageState createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  void _saveContact() {
    final String name = _nameController.text;
    final String phone = _phoneController.text;

    if (name.isNotEmpty && phone.isNotEmpty) {
      final Contact newContact = Contact(name: name, phone: phone);
      Navigator.pop(context, newContact);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16.0),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _saveContact,
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final List<Contact> _contacts = [
    {'name': 'John Doe', 'phone': '08123456789'},
    {'name': 'Jane Doe', 'phone': '08234567890'},
    {'name': 'Bob Smith', 'phone': '08345678901'}
  ].map((e) => Contact(name: e['name']!, phone: e['phone']!)).toList();

  Future<void> _openCreateContactPage() async {
    final Contact? newContact = await Navigator.push<Contact>(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return const CreateContactPage();
    }));

    if (newContact != null) {
      setState(() {
        _contacts.add(newContact);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (BuildContext context, int index) {
          final Contact contact = _contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phone),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openCreateContactPage(),
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactsPage(),
    );
  }
}
