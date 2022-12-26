import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 99,
      width: size.width,
      margin: const EdgeInsets.only(bottom: kspace),
      padding: const EdgeInsets.only(
        top: ksmallSpace,
        bottom: ksmallSpace,
        right: ksmallSpace,
        left: ktinyspace,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        gradient: LinearGradient(
          colors: [
            AppColor.white.withOpacity(0.2),
            AppColor.white.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: [
          const RotatedBox(
            quarterTurns: -1,
            child: Text(
              'TODAY’S TASK',
              style: TextStyle(fontSize: 10, color: AppColor.white),
            ),
          ),
          Container(
            height: 67,
            width: 67,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                color: AppColor.white.withOpacity(0.3),
              ),
            ),
            child: Image.asset('assets/images/avatar.png'),
          ),
          const XMargin(ksmallSpace),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'WORK TO DO.',
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColor.white,
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: '03',
                        style:
                            TextStyle(fontSize: 10, color: AppColor.breakerBay),
                        children: [
                          TextSpan(
                            text: ' May',
                            style: TextStyle(color: AppColor.white),
                            children: [
                              TextSpan(
                                text: ' 2021',
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const YMargin(ksmallSpace),
                Text(
                  'People often overlook the power of simple walking. It increases cardiovascular and pulmonary',
                  style: TextStyle(
                    fontSize: 9,
                    color: AppColor.white.withOpacity(0.7),
                  ),
                ),
                const YMargin(ksmallSpace),
                Row(
                  children: const [
                    Text(
                      'DONE',
                      style: TextStyle(color: AppColor.lima, fontSize: 10),
                    ),
                    XMargin(kxtraLargeSpace),
                    Text(
                      '01:16 mins you Save',
                      style: TextStyle(color: AppColor.lima, fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
