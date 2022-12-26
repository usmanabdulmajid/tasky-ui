import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: size.width * 0.6),
      padding: const EdgeInsets.all(kspace),
      decoration: BoxDecoration(
        //color: AppColor.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(3),
        gradient: LinearGradient(
          colors: [
            AppColor.white.withOpacity(0.2),
            AppColor.white.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          //stops: const [0.0, 0.3, 0.6, 1.0],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Figma',
                        style: TextStyle(fontSize: 12),
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
                    Text(
                      'Deepak Ray',
                      style: TextStyle(
                        fontSize: 9,
                        color: AppColor.white.withOpacity(0.7),
                      ),
                    ),
                    const YMargin(ktinyspace),
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
                              fontSize: 8,
                            ),
                          ),
                        ),
                        const XMargin(ktinyspace),
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
                            'Globle',
                            style: TextStyle(
                              color: AppColor.breakerBay,
                              fontSize: 8,
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
          const YMargin(ksmallSpace),
          const Text(
            'People often overlook the power of simple walking. It increases cardiovascular and pulmonary. Optimize your schedule for this approach by blocking out time at the start of every day...',
            style: TextStyle(
              color: AppColor.white,
            ),
          ),
          const YMargin(kspace),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarStack(
                settings: RestrictedPositions(maxCoverage: 0.8),
                height: 50,
                width: 100,
                avatars: const [
                  AssetImage('assets/images/stacked_image_1.png'),
                  AssetImage('assets/images/stacked_image_2.png'),
                  AssetImage('assets/images/stacked_image_3.png'),
                ],
                // infoWidgetBuilder: ((surplus) {
                //   return Text(
                //     '+$surplus',
                //     style: TextStyle(color: AppColor.white),
                //   );
                // }),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Joined on',
                    style: TextStyle(
                      color: AppColor.white.withOpacity(0.7),
                      fontSize: 9,
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
              )
            ],
          )
        ],
      ),
    );
  }
}
