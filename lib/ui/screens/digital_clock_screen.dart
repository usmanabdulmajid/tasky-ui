import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:test_app/core/models/task.dart';
import 'package:test_app/ui/screens/challenge_detail_screen.dart';
import 'package:test_app/ui/widgets/info_card.dart';
import 'package:test_app/ui/widgets/left_done.dart';
import 'package:test_app/ui/widgets/today_task_tile.dart';

class DigitalClockScreen extends StatelessWidget {
  const DigitalClockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
            horizontal: kspace, vertical: kxtraLargeSpace),
        children: [
          SizedBox(
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TaskyIcons.cloudBig,
                    const Text(
                      '36°C',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 18,
                      ),
                    ),
                    const XMargin(ksmallSpace),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TaskyIcons.topWeather,
                            const XMargin(ksmallSpace),
                            const Text(
                              '06:15 AM',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColor.white,
                              ),
                            ),
                            VerticalDivider(
                              color: AppColor.torchRed.withOpacity(0.7),
                            ),
                            TaskyIcons.topWeather,
                            const XMargin(ksmallSpace),
                            const Text(
                              '05:12 PM',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Lucknow,',
                            children: [
                              TextSpan(
                                text: ' Uttar Pradesh',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColor.breakerBay,
                                ),
                              ),
                            ],
                            style:
                                TextStyle(fontSize: 10, color: AppColor.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TaskyIcons.ranking,
                    const XMargin(kmediumSpace),
                    TaskyIcons.calendar,
                    const XMargin(kmediumSpace),
                    TaskyIcons.chart,
                  ],
                ),
              ],
            ),
          ),
          const YMargin(kxtraLargeSpace),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Text(
                    '02',
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        '32',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: AppColor.breakerBay,
                        ),
                      ),
                      Text(
                        '23',
                        style: TextStyle(fontSize: 20, color: AppColor.white),
                      ),
                    ],
                  ),
                  const YMargin(ksmallSpace),
                  const Text(
                    'Monday',
                    style: TextStyle(
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
                  ),
                ],
              ),
              const InfoCard(),
            ],
          ),
          const YMargin(kmediumSpace),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today Task',
                style: TextStyle(
                    color: AppColor.white.withOpacity(0.5), fontSize: 20),
              ),
              const LeftDone(),
            ],
          ),
          const YMargin(kmediumSpace),
          Column(
            children: List.generate(
              taskList.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChallengeDetailScreen(),
                    ),
                  );
                },
                child: TodayTaskTile(
                  day: taskList[index].dateTime.toDay,
                  month: taskList[index].dateTime.toMonth,
                  year: taskList[index].dateTime.toYear,
                  state: taskList[index].state,
                  duration: taskList[index].duration,
                  content: taskList[index].content,
                  time: index == 0 ? '' : taskList[index].dateTime.toTime,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
