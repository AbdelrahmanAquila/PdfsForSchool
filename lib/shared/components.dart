import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdfs_4th_grade/modules/pdf_viewer.dart';
import 'package:pdfs_4th_grade/shared/colors.dart';

Widget? myCard(
        {required String title,
        required Function()? downloadMethod,
        required Function()? playVid,
        required context}) =>
    Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 10),
        child: Row(
          children: [
            Text(title,
                style: Theme.of(context!)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: mainColor)),
            const Spacer(),
            IconButton(
                onPressed: playVid,
                icon: Icon(Icons.play_circle_outlined,
                    size: 35, color: mainColor))
          ],
        ),
      ),
    );

void navigateTo(
  context,
  Widget screen,
) =>
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));

void openPDF(BuildContext context, File file) =>
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return PDFViewerPage(file: file);
      },
    ));
