import 'package:flutter/material.dart';
import 'package:pyin_nay_b_lar/model/activity_model.dart';

class CardUI extends StatelessWidget {
  const CardUI({
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
    return Container(
      width: 384,
      height: 321,
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ပျင်းနေပြီလား',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(8),
            width: 288,
            height: 115,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Text(
              value[index].activity,
              style: const TextStyle(
                fontSize: 14,
                height: 2,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              animationDuration: const Duration(milliseconds: 1000),
              backgroundColor: Colors.indigo,
              minimumSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text(
              'Generate New',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
