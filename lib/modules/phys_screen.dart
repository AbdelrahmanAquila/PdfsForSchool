import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pdfs_4th_grade/shared/components.dart';
import 'package:pdfs_4th_grade/shared/pdf_api.dart';

class PhysScreen extends StatefulWidget {
  const PhysScreen({super.key});

  @override
  State<PhysScreen> createState() => _PhysScreenState();
}

class _PhysScreenState extends State<PhysScreen> {
  List pdfs = [];

  CollectionReference esFiles = FirebaseFirestore.instance.collection('ES');
  getData() async {
    var response = await esFiles.get();
    for (var element in response.docs) {
      setState(() {
        pdfs.add(element.data());
        print(pdfs);
        print('========================');
      });
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ES Lessons'), centerTitle: true),
      body: ListView.separated(
        itemCount: pdfs.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return myCard(
            context: context,
            title: "${pdfs[index]["name"]}",
            downloadMethod: () {},
            playVid: () async {
              final url = '${pdfs[index]["url"]}';
              final file = await PDFapi.loadNetwork(url);
              print('$file');
              print('=========================');
              openPDF(context, file);
            },
          );
        },
      ),
    );
  }
}
