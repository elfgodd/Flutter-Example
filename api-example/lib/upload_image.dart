/*
* Add in Android AndroidManifest.xml
* <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
* <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
* <uses-permission android:name="android.permission.CAMERA" />
* 
* Add in iOS Info.plist
* <key>NSCameraUsageDescription</key>
* <string>hello app camera description.</string>

* <key>NSPhotoLibraryUsageDescription</key>
* <string>hello app photos description.</string>
*/


import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:http/http.dart' as http;

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({Key? key}) : super(key: key);

  @override
  State<UploadImageScreen> createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> {
  File? image;
  final _picker = ImagePicker();
  bool showSpinner = false;

  Future getImage() async {
    final pickedFile =
        await _picker.getImage(source: ImageSource.gallery, imageQuality: 80);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      setState(() {});
    } else {
      print('no image selected');
    }
  }

  Future<void> uploadImage() async {
    setState(() {
      showSpinner = true;
    });

    var stream = new http.ByteStream(image!.openRead());
    stream.cast();

    var length = await image!.length();

    var uri = Uri.parse('https://fakestoreapi.com/products');

    var request = new http.MultipartRequest('POST', uri);

    request.fields['title'] = 'Static title';

    var multiport = new http.MultipartFile(
      'image',
      stream,
      length,
    );

    request.files.add(multiport);

    var response = await request.send();

    print(response.stream.toString());
    if (response.statusCode == 200) {
      setState(() {
        showSpinner = false;
      });
      print('image uploaded');
    } else {
      print('failed image upload');
      setState(() {
        showSpinner = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Upload Image'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                getImage();
              },
              child: Container(
                child: image == null
                  ? const Center(
                      child: Text('Pick Image'),
                    )
                  : Container(
                      child: Center(
                        child: Image.file(
                          File(image!.path).absolute,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 150),
                GestureDetector(
                  onTap: () {
                    uploadImage();
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Colors.green,
                    child: Center(
                      child: Text('Upload'),
                    ),
                  ),
                ),            
          ],
        ),
      ),
    );
  }
}
