import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage(
      {super.key,
      required String npm,
      required String email,
      required String password,
      required String tanggal,
      required String nama});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _selectDate = DateTime.now();
  final DateFormat _dateFormat = DateFormat('dd-MM--yyy');

  final TextEditingController _npm = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _tanggal = TextEditingController();

  void _showDatePicker(context) async {
    final datePick = await showDatePicker(
      context: context,
      initialDate: DateTime(2015),
      firstDate: DateTime(1980),
      lastDate: DateTime(2015),
    );

    if (datePick != null) {
      setState(() {
        _selectDate = datePick;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text('E-Learning',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 6, 30, 138),
                  )),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Selamat datang di E-Learning',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 6, 30, 138),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border.all(
                        color: const Color.fromARGB(255, 6, 30, 138)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _npm,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 6, 30, 138)),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'NPM',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 6, 30, 138)),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border.all(
                        color: const Color.fromARGB(255, 6, 30, 138)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 6, 30, 138)),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 6, 30, 138)),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border.all(
                        color: const Color.fromARGB(255, 6, 30, 138)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _password,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 6, 30, 138)),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 6, 30, 138)),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border.all(
                        color: const Color.fromARGB(255, 6, 30, 138)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _tanggal,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 6, 30, 138)),
                      decoration: const InputDecoration(
                          icon: Icon(Icons.calendar_today_rounded),
                          labelText: 'Tanggal Lahir',
                          border: InputBorder.none,
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 6, 30, 138))),
                      onTap: () {
                        _showDatePicker(context);
                        if (_selectDate != null) {
                          setState(() {
                            _tanggal.text = _dateFormat.format(_selectDate);
                          });
                        }
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                                npm: _npm.text,
                                email: _email.text,
                                password: '',
                                tanggal: _tanggal.text,
                                nama: '',
                              )));
                },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                      Color.fromARGB(255, 6, 30, 138)),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.fromLTRB(35, 15, 35, 15),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 6, 30, 138)))),
                ),
                child: const Text(
                  "Masuk",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Lupa password?",
                style: TextStyle(
                    color: Color.fromARGB(255, 6, 30, 138),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
