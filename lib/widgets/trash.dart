import 'package:carapp/other/car_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../carprovider.dart';

class Wastebasket extends StatelessWidget {
  const Wastebasket({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<CarProvider>();
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: vm.wastebasket.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) =>
            CarList(model: vm.wastebasket[index], onTap: () {}),
      ),
    );
  }
}
