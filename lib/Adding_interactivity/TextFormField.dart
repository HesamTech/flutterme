import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'comic'),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("SignIn"),
          ),
          body: const MyBody(),
        ),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  final _keyform = GlobalKey<FormState>(); // Key for Form (U)
  late String status = "Status ?";

  void _states() {
    setState(() {
      status.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyform,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Name
              TextFormField(
                cursorColor: Colors.black,
                cursorRadius: const Radius.circular(10),
                autofocus: true,
                keyboardType: TextInputType.name,
                maxLength: 40,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Is Empty";
                  }
                  if (!RegExp(r"^([^0-9]*)$").hasMatch(value)) {
                    return "Number is24 Not Valid";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.abc),
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              sizedBox(),
              //Email
              TextFormField(
                cursorColor: Colors.black,
                cursorRadius: const Radius.circular(10),
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Is Empty";
                  }
                  if (!RegExp(
                          r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                      .hasMatch(value)) {
                    return "Is Not Valid";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  counterText: "/0",
                  prefixIcon: const Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              sizedBox(),
              //Password
              TextFormField(
                obscureText: true,
                obscuringCharacter: '!',
                cursorColor: Colors.black,
                cursorRadius: const Radius.circular(10),
                keyboardType: TextInputType.visiblePassword,
                maxLength: 40,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Is Empty";
                  }
                  if (!RegExp(
                          r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$")
                      .hasMatch(value)) {
                    return "Is Not Valid";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              sizedBox(),
              //Phone Number
              TextFormField(
                cursorColor: Colors.black,
                cursorRadius: const Radius.circular(10),
                keyboardType: TextInputType.phone,
                maxLength: 15,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Is Empty";
                  }
                  if (!RegExp(
                          r"^\s*(?:\+?(\d{1,3}))?([-. (]*(\d{3})[-. )]*)?((\d{3})[-. ]*(\d{2,4})(?:[-.x ]*(\d+))?)\s*$")
                      .hasMatch(value)) {
                    return "Is Not Valid";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  helperText: "Enter With Country Code : +98",
                  prefixIcon: const Icon(Icons.phone),
                  hintText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              sizedBox(),
              //Address
              TextFormField(
                cursorColor: Colors.black,
                cursorRadius: const Radius.circular(10),
                keyboardType: TextInputType.streetAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Is Empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.where_to_vote),
                  counterText: "/0",
                  hintText: "Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              sizedBox(),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      _keyform.currentState!.validate()
                          ? status = "OK ✔"
                          : status = "Not Valid ❗";
                      _states();
                    },
                    child: const Text("Sumbit"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _keyform.currentState!.reset();
                      status = "Status ?";

                      _states();
                    },
                    child: const Text(
                      "Reset Form",
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    status,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget sizedBox() {
  return const SizedBox(height: 10);
}
