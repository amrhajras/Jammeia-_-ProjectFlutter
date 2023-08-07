import 'package:flutter/material.dart';
import 'package:untitled1/core/functions/show_image_dialog.dart';

class BuildDrawerHeader extends StatelessWidget {
  final String userName;
  final String userEmail;
  final void Function()? onTapCamera;
  final void Function()? onTapGallery;
  final ImageProvider<Object>? image;
  const BuildDrawerHeader(
      {required this.userName,
      required this.onTapCamera,
      required this.onTapGallery,
      required this.userEmail,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                backgroundImage: image,
              ),
              Positioned(
                top: 40,
                right: 40,
                child: IconButton(
                    onPressed: () {
                      showImageDialog(
                          onTap1: onTapCamera, onTap2: onTapGallery);
                    },
                    icon: const Icon(
                      Icons.add_circle_outlined,
                      size: 35,
                      color: Colors.blue,
                    )),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                userName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                userEmail,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
