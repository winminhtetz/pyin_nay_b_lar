import 'package:flutter/material.dart';
import 'package:pyin_nay_b_lar/const/const_texts.dart';
import 'package:pyin_nay_b_lar/widgets/header_ui.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const HeaderUI(
              fontSize: 18,
              height: 50,
              iconSize: 38,
              titlePadding: EdgeInsets.only(left: 8),
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
            ),
            const Divider(),
            SingleChildScrollView(
              child: SizedBox(
                width: 193,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        descTitle,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 8,
                          bottom: 16,
                        ),
                        child: Text(
                          shortDesc,
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Container(
                        height: 223,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
