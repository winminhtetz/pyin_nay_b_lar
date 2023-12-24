import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pyin_nay_b_lar/provider/api_provider.dart';
import 'package:pyin_nay_b_lar/widgets/body_ui.dart';
import 'package:pyin_nay_b_lar/widgets/header_ui.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexS = useState(0);
    final activity = ref.watch(apiNotifierProvider);

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HeaderUI(),
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
                AsyncError() => const Text('An Error Occured!'),
                _ => const CircularProgressIndicator(),
              },
              Divider(
                color: Colors.grey[80],
                height: 1,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Made with ❤️ by Win Min Htet'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
