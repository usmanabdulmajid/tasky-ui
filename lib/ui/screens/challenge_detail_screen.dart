import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/core/models/activity.dart';
import 'package:test_app/ui/widgets/left_done.dart';
import 'package:test_app/ui/widgets/people_tile.dart';

class ChallengeDetailScreen extends StatelessWidget {
  const ChallengeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
            horizontal: kspace, vertical: kxtraLargeSpace),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.chevron_left,
                  color: AppColor.breakerBay,
                  size: 30,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColor.shark,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColor.white.withOpacity(0.3),
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        TaskyIcons.edit,
                        const Text(
                          'Edit',
                          style: TextStyle(color: AppColor.white, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  const XMargin(kmediumSpace),
                  TaskyIcons.qrCode
                ],
              ),
            ],
          ),
          const YMargin(kxtraLargeSpace),
          Row(
            children: [
              Container(
                height: 92,
                width: 92,
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
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Figma',
                        style: TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                            text: ' 30 Day’s ',
                            style: TextStyle(color: AppColor.breakerBay),
                            children: [
                              TextSpan(
                                text: 'challenge',
                                style: TextStyle(color: AppColor.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const YMargin(ksmallSpace),
                    Text(
                      'Deepak Ray',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColor.white.withOpacity(0.7),
                      ),
                    ),
                    const YMargin(ksmallSpace),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 5),
                          decoration: BoxDecoration(
                            color: AppColor.shark,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: AppColor.white.withOpacity(0.3),
                              width: 0.5,
                            ),
                          ),
                          child: const Text(
                            'Design & Art',
                            style: TextStyle(
                              color: AppColor.breakerBay,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const XMargin(ksmallSpace),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 5),
                          decoration: BoxDecoration(
                            color: AppColor.shark,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: AppColor.white.withOpacity(0.3),
                              width: 0.5,
                            ),
                          ),
                          child: const Text(
                            'Personal',
                            style: TextStyle(
                              color: AppColor.breakerBay,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const YMargin(kspace),
          Text(
            'People often overlook the power of simple walking. It increases cardiovascular and pulmonary. Optimize your schedule for this approach by blocking out time at the start of every day...',
            style: TextStyle(
              fontSize: 12,
              color: AppColor.white.withOpacity(0.7),
            ),
          ),
          const YMargin(kspace),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'People Joined',
                style: TextStyle(
                    color: AppColor.white.withOpacity(0.5), fontSize: 20),
              ),
              Row(
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
                            'TASKS',
                            style:
                                TextStyle(color: AppColor.white, fontSize: 12),
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
                            'People',
                            style: TextStyle(
                                color: AppColor.white.withOpacity(0.4),
                                fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const XMargin(kspace),
                  TaskyIcons.shareCircle,
                ],
              ),
            ],
          ),
          const YMargin(kmediumSpace),
          Column(
            children: List.generate(
              peopleList.length,
              (index) => PeopleTile(
                content: peopleList[index].content,
                day: peopleList[index].date,
                duration: peopleList[index].duration,
                state: peopleList[index].state,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
