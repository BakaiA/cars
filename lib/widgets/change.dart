import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../details/color.dart';

class WidgetAddRemove extends StatefulWidget {
  const WidgetAddRemove({
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetAddRemove> createState() => _WidgetAddRemoveState();
}

class _WidgetAddRemoveState extends State<WidgetAddRemove> {
  int namber = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              namber--;
              setState(() {});
            },
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: AppColor.bluedark,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: Icon(Icons.remove),
              ),
            ),
          ),
          const SizedBox(width: 9),
          Text(
            namber.toString(),
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 9),
          InkWell(
            onTap: () {
              namber++;
              setState(() {});
            },
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: AppColor.bluedark,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
