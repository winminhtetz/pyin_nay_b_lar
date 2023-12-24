import 'package:flutter/material.dart';
import 'package:pyin_nay_b_lar/const/const_data.dart';
import 'package:pyin_nay_b_lar/model/activity_model.dart';
import 'package:pyin_nay_b_lar/widgets/card_ui.dart';
import 'package:pyin_nay_b_lar/widgets/description_ui.dart';

class BodyUI extends StatelessWidget {
  const BodyUI({
    super.key,
    required this.value,
    required this.index,
    required this.onPressed,
  });

  final List<Activity> value;
  final int index;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DescriptionUI(),
          Container(
            width: 384,
            padding: const EdgeInsets.only(
              top: 126,
            ),
            child: Column(
              children: [
                CardUI(
                  value: value,
                  index: index,
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
