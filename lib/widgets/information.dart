import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 95,
        width: 155,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 233, 232, 232),
          borderRadius: BorderRadius.circular(3),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 4,
              color: Color.fromARGB(255, 177, 176, 176),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xff95BCCC),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
