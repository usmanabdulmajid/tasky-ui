import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/core/utils/enums.dart';

class TodayTaskTile extends StatelessWidget {
  final String day;
  final String month;
  final String year;
  final String time;
  final String pm;
  final String content;
  final TaskState state;
  final String duration;
  const TodayTaskTile({
    Key? key,
    required this.day,
    required this.month,
    required this.year,
    required this.state,
    required this.duration,
    required this.content,
    this.time = '',
    this.pm = '',
  }) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      text: TextSpan(
                        text: day,
                        style: const TextStyle(
                            fontSize: 10, color: AppColor.breakerBay),
                        children: [
                          TextSpan(
                            text: ' $month',
                            style: const TextStyle(color: AppColor.white),
                            children: [
                              TextSpan(
                                text: ' $year',
                              ),
                              if (time.isNotEmpty)
                                const TextSpan(
                                  text: ' |',
                                ),
                              TextSpan(
                                text: ' $time',
                                style: const TextStyle(
                                  color: AppColor.breakerBay,
                                ),
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
                  content,
                  style: TextStyle(
                    fontSize: 9,
                    color: AppColor.white.withOpacity(0.7),
                  ),
                ),
                const YMargin(ksmallSpace),
                Row(
                  children: [
                    Text(
                      state.name.toUpperCase(),
                      style: TextStyle(
                        color: state == TaskState.done
                            ? AppColor.lima
                            : AppColor.mySin,
                        fontSize: 10,
                      ),
                    ),
                    const XMargin(kxtraLargeSpace),
                    Text(
                      duration.toUpperCase(),
                      style: TextStyle(
                        color: state == TaskState.done
                            ? AppColor.lima
                            : AppColor.mySin,
                        fontSize: 10,
                      ),
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
