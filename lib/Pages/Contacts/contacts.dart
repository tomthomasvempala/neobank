import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class Contacts extends StatefulWidget {
  // const Contacts({ Key? key }) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}


class _ContactsState extends State<Contacts> {
List<Contact> contacts;

void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      contacts = await FlutterContacts.getContacts(
          withProperties: true, withPhoto: true);
      print(contacts);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
           "Contacts",
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: (contacts) == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  var image = contacts[index].photo;
                  String num = (contacts[index].phones.isNotEmpty) ? (contacts[index].phones.first.number) : "--";
                  return ListTile(
                      leading: (contacts[index].photo == null)
                          ? const CircleAvatar(child: Icon(Icons.person))
                          : CircleAvatar(backgroundImage: MemoryImage(image)),
                      title: Text(
                          "${contacts[index].name.first} ${contacts[index].name.last}"),
                      subtitle: Text(num),
                      onTap: () {
                        if (contacts[index].phones.isNotEmpty) {
                          // launch('tel: ${num}');
                        }
                      });
                },
              ));
  }
}