import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class LeftDone extends StatelessWidget {
  const LeftDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              color: AppColor.white.withOpacity(0.4),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 44,
                decoration: BoxDecoration(
                  color: AppColor.breakerBay,
                  borderRadius: BorderRadius.circular(3),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'LEFT',
                  style: TextStyle(color: AppColor.white, fontSize: 12),
                ),
              ),
              Container(
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(3),
                ),
                alignment: Alignment.center,
                child: Text(
                  'DONE',
                  style: TextStyle(
                      color: AppColor.white.withOpacity(0.4), fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        const XMargin(kspace),
        TaskyIcons.plus,
      ],
    );
  }
}
