import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ProfileWidget extends StatefulWidget {
  // final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    // required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  File? image;

  // const ProfileWidget({super.key});
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(bottom: 0, right: 4, child: buildEditIcon(color)),
        ],
      ),
    );
  }

  Widget buildImage() {
    // final image = NetworkImage(widget.imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: image != null
            ? Image.file(
                image!,
                width: 160,
                height: 160,
                fit: BoxFit.cover,
              )
            : FlutterLogo(size: 160),

        // child: Ink.image(

        //   fit: BoxFit.cover,
        //   width: 128,
        //   height: 128,
        //   child: InkWell(
        //     onTap: widget.onClicked,
        //   ),
        // ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: IconButton(
            icon: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onPressed: () => pickImage(),
            // Icons.edit,
            // color: Colors.white,
            // size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
