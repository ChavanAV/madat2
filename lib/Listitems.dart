import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list {

  final String AssetsImage;

  const list(
      {
        required this.AssetsImage,
      }
      );
}
List<list> litem = [
  list(AssetsImage: "assets/images/a7.jpg"),
  list(AssetsImage: "assets/images/a8.jpg"),
  list(AssetsImage: "assets/images/a5.jpg"),
  list(AssetsImage: "assets/images/a6.jpg"),
  // list(AssetsImage: "assets/images/a9.jpg"),
  list(AssetsImage: "assets/images/a4.jpg"),
  list(AssetsImage: "assets/images/a1.jpg"),
  list(AssetsImage: "assets/images/a2.jpg"),
  list(AssetsImage: "assets/images/a3.jpg"),
];
class fpage {

  final BoxDecoration decoration;
  final BoxDecoration decorationa;
  final String Text;
  final String AssetsImage;

  const fpage(
      {
        required this.decoration,
        required this.Text,
        required this.AssetsImage,
        required this.decorationa,
      }
      );
}
List<fpage> f1=[
  fpage(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.cyan.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 9,
              spreadRadius: 3,
              blurStyle: BlurStyle.normal,
              offset: Offset(1, 4),
            ),
          ]
        ),
    decorationa: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 9,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 4),
          ),
        ]
    ),
        Text: 'Why should i help them',
        AssetsImage: "assets/illustrations/illustration-01.png",
  ),
  fpage(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.lightGreenAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 9,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 4),
          ),
        ]
    ),
    decorationa: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 9,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 4),
          ),
        ]
    ),
    Text: 'How it benefits to me',
    AssetsImage: "assets/illustrations/illustration-02.png",
  ),
  fpage(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.yellow,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 9,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 4),
          ),
        ]
    ),
    decorationa: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 9,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 4),
          ),
        ]
    ),
    Text: 'what is the procedure',
    AssetsImage: "assets/illustrations/illustration-03.png",
  ),
  fpage(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.lightBlueAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 9,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 4),
          ),
        ]
    ),
    decorationa: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 9,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 4),
          ),
        ]
    ),
    Text: 'How can i help',
    AssetsImage: "assets/illustrations/illustration-04.png",
  ),
  fpage(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.teal,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 9,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 4),
          ),
        ]
    ),
    decorationa: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 9,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 4),
          ),
        ]
    ),
    Text: 'How can i get help',
    AssetsImage: "assets/illustrations/illustration-06.png",
  ),
];