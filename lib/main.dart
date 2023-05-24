import 'package:flutter/material.dart';
import 'second_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  final thirdController = TextEditingController();
  final fourController = TextEditingController();

  bool _avanzaValue = false;
  bool _elfValue = false;
  bool _12jamValue = false;
  bool _18jamValue = false;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        key: _formKey,
        child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                labelText: 'Nama',
                                border: OutlineInputBorder()),
                            controller: firstController,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                labelText: 'Prodi',
                                border: OutlineInputBorder()),
                            controller: secondController,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                labelText: 'Fakultas',
                                border: OutlineInputBorder()),
                            controller: thirdController,
                          ),
                        ),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            maxLines: 2,
                            maxLength: 200,
                            decoration: const InputDecoration(
                                labelText: 'Keperluan Peminjaman Kendaraan',
                                border: OutlineInputBorder()),
                            controller: fourController,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Jenis Kendaraan"),
                        CheckboxListTile(
                          value: _avanzaValue,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _avanzaValue = newValue!;
                            });
                          },
                          title: Text("Avanza"),
                        ),
                        CheckboxListTile(
                          title: Text('Elf'),
                          value: _elfValue,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _elfValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Durasi Peminjaman Kendaraan"),
                        CheckboxListTile(
                          value: _12jamValue,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _12jamValue = newValue!;
                            });
                          },
                          title: Text("12 jam"),
                        ),
                        CheckboxListTile(
                          title: Text('18 jam'),
                          value: _18jamValue,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _18jamValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                  // const SizedBox(
                  //   width: double.infinity,
                  //   child: Text(
                  //     "Password :",
                  //     style: TextStyle(fontSize: 15),
                  //   ),
                  // ),

                  // children: [
                  //   const Icon(Icons.password),
                  //   const SizedBox(width: 15),
                  //   const Text(": "),
                  //   Expanded(
                  //     child: TextField(
                  //       controller: secondController,
                  //       obscureText: true, //untuk secure password
                  //       // obscuringCharacter: ".",
                  //       enableInteractiveSelection: false,
                  //       //...
                  //     ),
                  //   ),
                  // ],
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        // if (_formKey.currentState!.validate()) {
                        //   // If the form is valid, display a snackbar. In the real world,
                        //   // you'd often call a server or save the information in a database.
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(content: Text('Processing Data')),
                        //   );
                        // }
                        // List<String> formData = [];

                        String kirim1 = firstController.text;
                        String kirim2 = secondController.text;
                        String kirim3 = thirdController.text;
                        String kirim4 = fourController.text;

                        // AlertDialog alert = AlertDialog(
                        //   title: const Text("coba get data"),
                        //   content: Text('$kirim1 - $kirim2'),
                        // );

                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return alert;
                        //     });

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondLayout(
                                      data: [kirim1, kirim2, kirim3, kirim4],
                                    )));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            )));
  }
}
