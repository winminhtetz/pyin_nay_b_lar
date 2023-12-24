import 'package:flutter/material.dart';
import 'package:pyin_nay_b_lar/const/const_data.dart';

class DescriptionUI extends StatelessWidget {
  const DescriptionUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 126,
      ),
      width: 479,
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Random Activity Generator',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 10),
            child: Text(
              'Unleash spontaneity with PyinNayBeLar',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          ...bulletList
              .map((e) => Row(
                    children: [
                      const Center(
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(e),
                    ],
                  ))
              .toList(),
        ],
      ),
    );
  }
}
