import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class ProgressBar extends StatelessWidget {
  final String daysLeft;
  final double percentage;
  const ProgressBar({
    Key? key,
    required this.daysLeft,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: 12,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColor.shark,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.centerLeft,
          child: Container(
            width: size.width * percentage,
            decoration: BoxDecoration(
              color: AppColor.breakerBay,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const YMargin(ksmallSpace),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${(percentage * 100).toInt()}%',
              style: const TextStyle(
                color: AppColor.breakerBay,
              ),
            ),
            RichText(
              text: TextSpan(
                text: daysLeft,
                style: TextStyle(
                  color: AppColor.breakerBay.withOpacity(0.7),
                ),
                children: const [
                  TextSpan(
                    text: ' Day’s left',
                    style: TextStyle(color: AppColor.white),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
