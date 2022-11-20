import 'package:flutter/material.dart';

class TugasPage extends StatefulWidget {
  const TugasPage({super.key});

  @override
  State<TugasPage> createState() => _TugasPageState();
}

class _TugasPageState extends State<TugasPage> {
  TextEditingController searchController = new TextEditingController();
  List<String> originList = [
    "Pemrograman Web",
    "Pemrograman Mobile",
    "Sistem Mikroprosesor",
    "Network Security",
    "Sistem Informasi Enterprise",
    "Keamanan Informasi",
    "Bahasa Indonesia",
    "Teknik Penulisan Literatur Ilmiah"
  ];
  late List<String> filteredList;
  late String keyword;

  @override
  void initState() {
    super.initState();
    originList.sort();
    // ignore: deprecated_member_use, prefer_collection_literals
    filteredList = <String>[];
    keyword = '';
  }

  @override
  Widget build(BuildContext context) {
    searchController.addListener(() {
      setState(() {
        keyword = searchController.text;
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Materi Perkuliahan (+Search)'),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Container(
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Cari',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            (keyword.isEmpty) ? createOriginListView() : searchData(),
          ],
        ),
      ),
    );
  }

  searchData() {
    // ignore: deprecated_member_use, prefer_collection_literals
    filteredList = <String>[];
    for (int i = 0; i < originList.length; i++) {
      var item = originList[i];
      if (item.toLowerCase().contains(keyword.toLowerCase())) {
        filteredList.add(item);
      }
    }
    return createFilteredListView();
  }

  createOriginListView() {
    return Expanded(
      child: ListView.separated(
        itemCount: originList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 45,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                originList[index],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
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
    );
  }

  createFilteredListView() {
    return Expanded(
      child: ListView.separated(
        itemCount: filteredList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 45,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                filteredList[index],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
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
    );
  }
}
