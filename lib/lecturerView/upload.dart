// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class UploadFilePage extends StatefulWidget {
  const UploadFilePage({Key? key}) : super(key: key);

  @override
  _UploadFilePageState createState() => _UploadFilePageState();
}

class _UploadFilePageState extends State<UploadFilePage> {
  final List<String> _files = [];

  void _selectFiles() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.any);
    if (result != null) {
      setState(() {
        _files.add(result.files.single.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: _selectFiles,
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: DottedBorder(
                    dashPattern: const [4],
                    strokeWidth: 2,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Upload your legal ',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'document here',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 16),
                            Icon(
                              Icons.folder_copy,
                              color: Color.fromRGBO(88, 101, 242, 1.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

// instructions widget
class PointedTextList extends StatelessWidget {
  final List<String> items;

  const PointedTextList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: items
            .map((item) => ListTile(
          title: Text(
            item,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          contentPadding: const EdgeInsets.only(left: 4.0),
        ))
            .toList(),
      ),
    );
  }
}