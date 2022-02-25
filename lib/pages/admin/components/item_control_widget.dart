import 'package:flutter/material.dart';
import 'package:flutter_vscode_frikitec/ui/general/constants.dart';

class ItemControlWidget extends StatelessWidget {
  String image;
  String title;
  Function onPressed;

  ItemControlWidget({
    required this.image,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Container(
            margin: const EdgeInsets.only(left: 16.0, top: 20.0),
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            width: size.width * 0.4,
            height: size.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: primaryColor,
                width: size.width * 0.003,
              ),
            ),
            child: Image.asset(
              "assets/icons/$image",
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}
