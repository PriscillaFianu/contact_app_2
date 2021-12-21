import 'package:contact_app_2/views/Contact_details.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final List<Map<String, String>> data = [
    {
      "image":"https://images.unsplash.com/photo-1639986587553-1d994ffc66d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
      "name": "Bridget Akorsihu",
      "phone": "1-565-827-8982",
      "email": "BridgetAkorsihu@gmail.com",
      "country": "Achimota",
      "region": "Ghana"
    },
    {
      "image":"https://images.unsplash.com/photo-1640009349927-0ce2dbccca3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
      "name": "mummy",
      "phone": "434-5712",
      "email": "tempor.diam@aol.edu",
      "country": "Accra",
      "region": "Ghana"
    },
    {
      "image":"https://images.unsplash.com/photo-1640039985592-df9c2e3f2605?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
      "name": "Babes",
      "phone": "1-567-743-4341",
      "email": "Babes@gmail.com",
      "country": "Accra",
      "region": "Ghana"
    },
    {
      "image":"https://images.unsplash.com/photo-1640043285014-3d1e095b3ebe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
      "name": "jenny",
      "phone": "582-3896",
      "email": "eros.proin.ultrices@hotmail.com",
      "country": "Accra",
      "region": "Ghana"
    },
    {
      "image":"https://images.unsplash.com/photo-1593642532454-e138e28a63f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
      "name": "Brian Ramos",
      "phone": "674-3271",
      "email": "at.egestas@aol.couk",
      "country": "South Korea",
      "region": "Azad Kashmir"
    },
    {
      "image":"https://images.unsplash.com/photo-1640036279464-732f75d8628b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
      "name": "Carlos Harper",
      "phone": "1-238-113-6033",
      "email": "proin.nisl@icloud.org",
      "country": "Russian Federation",
      "region": "Guanacaste"
    },
    {
      "image":"https://images.unsplash.com/photo-1640056844620-0fb7546b3eff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
      "name": "Britanney Dorsey",
      "phone": "871-3241",
      "email": "non@yahoo.couk",
      "country": "Indonesia",
      "region": "Jharkhand"
    },
    {
      "image":"https://images.unsplash.com/photo-1529704817457-9f19aad72e1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60"
      "name": "William Ortiz",
      "phone": "1-412-819-7163",
      "email": "molestie.in@yahoo.ca",
      "country": "Vietnam",
      "region": "North Island"
    },
    {
      "image":"https://images.unsplash.com/photo-1640037984424-ac1a02cb742a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60"
      "name": "Shellie Merrill",
      "phone": "1-241-690-5206",
      "email": "non@google.couk",
      "country": "Turkey",
      "region": "Gorontalo"
    },
    {
      "image":"https://images.unsplash.com/photo-1640035283313-cc67bd0afc23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60"
      "name": "Clinton Mosley",
      "phone": "1-768-578-0868",
      "email": "sagittis.augue@google.edu",
      "country": "Chile",
      "region": "South Chungcheong"
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: Icon(Icons.menu),
        elevation: 0,
        backgroundColor: Colors.pink[900],
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
  itemBuilder: (context,index){
    return Card(
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage("${data["image"]}"),
          ),
          Column(
            children: [
              Text("${data["name"]}"),
              Text("${data["phone"]}"),
               
                
            ],
          )
        ],
      ),
    );
  },
 separatorBuilder: (context ,index){
return SizedBox(height: 5,);
 } ,
  itemCount: data.length),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Contactdetails();
              },
            ),
          );
        },
        child: Icon(Icons.edit),
        backgroundColor: Color(0xff20306c),
      )
      ); 
  
     
      
  }
}
