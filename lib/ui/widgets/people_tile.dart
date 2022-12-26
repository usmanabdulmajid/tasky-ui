import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class PeopleTile extends StatelessWidget {
  const PeopleTile({Key? key}) : super(key: key);

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
          left: ksmallSpace),
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
                      text: const TextSpan(
                        text: 'DAY',
                        style: TextStyle(fontSize: 10, color: AppColor.white),
                        children: [
                          TextSpan(
                            text: ' 01',
                            style: TextStyle(color: AppColor.breakerBay),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const YMargin(ksmallSpace),
                Text(
                  'Chemical Reaction/ Letter to god',
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
                      'Duration 24 hours',
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
