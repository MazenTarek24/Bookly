import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarDetails extends StatelessWidget {
  const CustomAppBarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: const Icon(Icons.close),
        ),
        IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.cartShopping),
        ),
      ],
      ),
    );
  }
}
