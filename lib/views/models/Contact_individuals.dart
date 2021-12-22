// ignore_for_file: file_names

import 'package:contact_app_2/views/data.dart';
import 'package:flutter/material.dart';
import 'package:contact_app_2/views/models/details.dart';

class ContactsIndividuals extends StatelessWidget {
  //const ContactDetailsView({Key? key}) : super(key: key);

  List<Details> contacts = Data.detailsOfPeople();

  ContactsIndividuals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Contacts',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          actions: [Icon(Icons.more_vert, color: Colors.black)],
          bottom: PreferredSize(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Priscilla Fianu',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Ghana',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            preferredSize: Size.fromHeight(220),
          ),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 1,
              );
            },
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                  color: Colors.grey,
                  child: Column(children: [
                    ListTile(
                      title: Text('Mobile'),
                      subtitle: Text('${contacts[index].phone}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: null,
                            child: Icon(Icons.message),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder()),
                          ),
                          TextButton(
                            onPressed: null,
                            child: Icon(Icons.phone),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder()),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      title: Text('Email'),
                      subtitle: Text('${contacts[index].email}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: null,
                            child: Icon(Icons.email),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Text('Group'),
                      subtitle: Text('Friends'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        'Account Linked',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: Column(children: [
                        ListTile(
                          title: Text('Telegram'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            TextButton(
                              onPressed: null,
                              child: Icon(Icons.message),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: CircleBorder()),
                            ),
                          ]),
                        ),
                        ListTile(
                          title: Text('WhatsApp'),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            TextButton(
                              onPressed: null,
                              child: Icon(Icons.message),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: CircleBorder()),
                            ),
                          ]),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        'More options',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('Share contact'),
                          ),
                          ListTile(
                            title: Text('QR code'),
                          ),
                        ],
                      ),
                    ),
                  ]));
            }));
  }
}
