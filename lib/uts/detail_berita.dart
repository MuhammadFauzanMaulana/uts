import 'package:flutter/material.dart';

import '../uts/model_berita.dart';
import 'package:intl/intl.dart';

class PageDetailBerita extends StatelessWidget {

  final Datum? data;
  const PageDetailBerita(this.data, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Berita"),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, top: 4, right:
            4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "http://192.168.1.16/uts_mobile/image/${data?.gambar}",
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data?.judul ?? "",
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  'Author: ${data?.author ?? ""}',
                  style: TextStyle(color: Colors.orange, fontSize: 14),
                ),
                Text(
                  'Tanggal: ${data?.created ?? ""}',
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ],
            ),
            trailing: Icon(
              Icons.star,
              color: Colors.red,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16, bottom: 16, left: 16),
            child: Text(
              data?.konten ?? "",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              textAlign: TextAlign.justify,
            ),
          ),

        ],
      ),
    );
  }
}