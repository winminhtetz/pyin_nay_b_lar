import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pyin_nay_b_lar/const/const_texts.dart';
import 'package:pyin_nay_b_lar/extensions/screen_size_ext.dart';
import 'package:pyin_nay_b_lar/provider/api_provider.dart';
import 'package:pyin_nay_b_lar/screens/mobile/mobile_view.dart';
import 'package:pyin_nay_b_lar/widgets/body_ui.dart';
import 'package:pyin_nay_b_lar/widgets/header_ui.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexS = useState(0);
    final activity = ref.watch(apiNotifierProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth.isMobile) {
          return const MobileView();
        } else {
          return Scaffold(
            body: SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const HeaderUI(
                      iconSize: 40,
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                      titlePadding: EdgeInsets.only(left: 20),
                      height: 76,
                      fontSize: 25,
                    ),
                    const Divider(),
                    switch (activity) {
                      AsyncData(:final value) => BodyUI(
                          index: indexS.value,
                          value: value,
                          onPressed: () {
                            var random = Random().nextInt(value.length - 1);
                            indexS.value = random;
                          },
                        ),
                      AsyncError() => const Text(errorMessage),
                      _ => const CircularProgressIndicator(),
                    },
                    Divider(
                      color: Colors.grey[80],
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(madeWithLove),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
