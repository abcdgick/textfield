import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: const IconButton(
              onPressed: null,
              icon: Icon(Icons.menu, color: Colors.white),
              tooltip: "Navigation Menu"),
          centerTitle: true,
          title: const Text("Contacts",
              style: TextStyle(fontWeight: FontWeight.bold)),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search, color: Colors.white),
              tooltip: "Search",
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.more_vert, color: Colors.white),
              tooltip: "More",
            )
          ]),
      body: Container(
          padding: const EdgeInsets.all(25),
          child: Column(children: <Widget>[
            TextFormField(
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black54, width: 2.0))),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: const [
                Icon(Icons.phone),
                SizedBox(width: 15),
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          labelText: "Phone",
                          labelStyle: TextStyle(color: Colors.black87),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 2.0)))),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          labelText: "Area",
                          labelStyle: TextStyle(color: Colors.black87),
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 2.0)))),
                )
              ],
            ),
            const SizedBox(height: 25),
            TextFormField(
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  icon: Icon(Icons.location_on),
                  labelText: "Address",
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black54, width: 2.0))),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  icon: Icon(null),
                  labelText: "City",
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black54, width: 2.0))),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: const [
                Icon(null),
                SizedBox(width: 15),
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          labelText: "State",
                          labelStyle: TextStyle(color: Colors.black87),
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 2.0)))),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          labelText: "Zip",
                          labelStyle: TextStyle(color: Colors.black87),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 2.0)))),
                )
              ],
            ),
            const SizedBox(height: 25),
            TextFormField(
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black54, width: 2.0))),
            ),
            const SizedBox(height: 25),
            TextFormField(
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  icon: Icon(Icons.cake),
                  labelText: "Birthday",
                  labelStyle: TextStyle(color: Colors.black87),
                  suffixIcon: Icon(Icons.event),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black54, width: 2.0))),
            ),
          ])),
    ));
  }
}
