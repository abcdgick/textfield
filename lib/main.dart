import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dateInput = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? selectedArea;
  String? selectedState;

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
              child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    TextFormField(
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          labelText: "Name",
                          labelStyle: TextStyle(color: Colors.black87),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 2.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(children: <Widget>[
                      const Icon(Icons.phone),
                      const SizedBox(width: 15),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              labelText: "Phone",
                              labelStyle: TextStyle(color: Colors.black87),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black54, width: 2.0))),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                          child: DropdownButtonFormField<String>(
                        value: selectedArea,
                        items: <String>['Dis', 'Nut'].map((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                        onChanged: (area) =>
                            setState(() => selectedArea = area!),
                        validator: (value) =>
                            value == null ? 'Pls enter your area' : null,
                        decoration: const InputDecoration(
                            labelText: "Area",
                            labelStyle: TextStyle(color: Colors.black87),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54, width: 2.0))),
                      ))
                    ]),
                    const SizedBox(height: 25),
                    TextFormField(
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.location_on),
                          labelText: "Address",
                          labelStyle: TextStyle(color: Colors.black87),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 2.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
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
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 2.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your city';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const Icon(null),
                        const SizedBox(width: 15),
                        Expanded(
                            child: DropdownButtonFormField<String>(
                          value: selectedState,
                          items: <String>['Fuck', 'You'].map((String value) {
                            return DropdownMenuItem<String>(
                                value: value, child: Text(value));
                          }).toList(),
                          onChanged: (state) =>
                              setState(() => selectedState = state),
                          validator: (value) =>
                              value == null ? 'Pls enter your state' : null,
                          decoration: const InputDecoration(
                              labelText: "State",
                              labelStyle: TextStyle(color: Colors.black87),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black54, width: 2.0))),
                        )),
                        const SizedBox(width: 15),
                        Expanded(
                          child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
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
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 2.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      controller: dateInput,
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));
                        if (pickedDate != null) {
                          String formattedDate =
                              DateFormat('dd MMMM yyyy').format(pickedDate);
                          setState(() {
                            dateInput.text = formattedDate;
                          });
                        } else {}
                      },
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.cake),
                          labelText: "Birthday",
                          labelStyle: TextStyle(color: Colors.black87),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 2.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your birthday';
                        }
                        return null;
                      },
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: ElevatedButton(
                            child: const Text('Submit'),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text('Data has been submitted')));
                              }
                            }))
                  ])),
            )));
  }
}
