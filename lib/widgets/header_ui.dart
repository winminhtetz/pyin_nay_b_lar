import 'package:flutter/material.dart';

class HeaderUI extends StatelessWidget {
  const HeaderUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 40),
      width: double.infinity,
      height: 76,
      child: const Row(
        children: [
          Icon(
            Icons.self_improvement_sharp,
            size: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'PyinNayBeLar',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
