import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pdfs_4th_grade/shared/components.dart';
import 'package:pdfs_4th_grade/shared/pdf_api.dart';

class MathScreen extends StatefulWidget {
  const MathScreen({super.key});

  @override
  State<MathScreen> createState() => _MathScreenState();
}

class _MathScreenState extends State<MathScreen> {
  List pdfs = [];

  CollectionReference mathFiles = FirebaseFirestore.instance.collection('math');
  getData() async {
    var response = await mathFiles.get();
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
      appBar: AppBar(title: const Text('Math Lessons'), centerTitle: true),
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
