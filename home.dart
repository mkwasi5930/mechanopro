import 'package:flutter/material.dart';
import 'package:mech_app/model/mech.dart';
import 'package:mech_app/widgets/mechanicBox.dart';

class mainPage extends StatelessWidget {
  mainPage({required Key? key}) : super(key: key);
  final String title = 'Mechapro';
  final items = Mechapro.getmechapro();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: mechBox(item: items[index], key: const ValueKey(0)),

    );
          }
      ),
      
    );
  }

}