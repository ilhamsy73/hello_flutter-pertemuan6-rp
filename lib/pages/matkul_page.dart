import 'package:flutter/material.dart';

class MatkulPage extends StatefulWidget {
  const MatkulPage({super.key});

  @override
  State<MatkulPage> createState() => _MatkulPageState();
}

class _MatkulPageState extends State<MatkulPage> {
  List<String> originList = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mata Kuliah'),
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Pemrograman Mobile',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 6, 30, 138),
                  child: Center(
                    child: Text(
                      'Pemrograman Web',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 6, 30, 138),
                  child: Center(
                    child: Text(
                      'Sistem Informasi Enterprise',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Sistem Mikroprosesor',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Keamanan Sistem Informasi',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 6, 30, 138),
                  child: Center(
                    child: Text(
                      'Network Security',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 6, 30, 138),
                  child: Center(
                    child: Text(
                      'Bahasa Indonesia',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Teknik Penulisan literatur Ilmiah',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: originList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 1,
                  child: Container(
                    color: Color.fromARGB(255, 6, 30, 138),
                    height: 150,
                    width: 150,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        originList[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Colors.blueAccent,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
