import 'package:carapp/details/fonts.dart';
import 'package:carapp/widgets/change.dart';
import 'package:carapp/widgets/information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details/images.dart';
import 'model/carclassmodel.dart';

class CarDetiles extends StatelessWidget {
  const CarDetiles({
    super.key,
    required this.data,
  });

  final CarModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xff95BCCC),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45))),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 27,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Stack(
                    children: [
                      Container(
                        child: const Text(
                          'TIRA',
                          style: AppFonts.w400h160,
                        ),
                      ),
                      Image.asset(data.image),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              children: [
                Text(
                  data.title,
                  style: AppFonts.w400h20,
                ),
                Spacer(),
                Text(
                  '\$${data.price}.00',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            height: 95.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('RENDER'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: SizedBox(
                    width: 90,
                    height: 90,
                    child: ClipOval(
                      child: Image.asset(
                        AppImages.avatar,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                const Text('Lorem Ipsum'),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImages.vector1),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImages.phone),
                ),
              ],
            ),
          ),
          WidgetAddRemove(),
        ],
      ),
    );
  }
}
