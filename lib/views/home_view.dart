
import 'package:contact_app_2/views/data.dart';
import 'package:contact_app_2/views/models/Contact_individuals.dart';
import 'package:contact_app_2/views/models/details.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  List<Details> contacts = Data.detailsOfPeople();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          elevation: 0,
          backgroundColor: Colors.purple[500],
          centerTitle: true,
          title: Text(
            'Contacts',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  ContactsIndividuals();
                  }));
                },
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage("${contacts[index].image}"),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${contacts[index].name}"),
                              SizedBox(
                                width: 50,
                              ),
                              Text("${contacts[index].phone}"),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 5),
                          Text("${contacts[index].time}")
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10,
              );
            },
            itemCount: contacts.length),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                return ContactsIndividuals( );
                },
              ),
            );
          },
          child: Icon(Icons.edit),
          backgroundColor: Colors.purple[500],
        ));
  }
}
