import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBgColor.withOpacity(0.5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 35,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: kBody1.copyWith(
                              color: kMatterhornBlack,
                            ),
                          ),
                          Text(
                            'Septya Handayani 👋',
                            style: kHeading6.copyWith(
                              color: kMatterhornBlack,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints.expand(
                          height: 40,
                          width: 40,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/images/user.png'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: kGrey,
                              blurRadius: 5,
                              offset: Offset.fromDirection(2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    constraints: BoxConstraints.expand(height: 170),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/Mask-Group.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kGrey,
                          blurRadius: 5,
                          offset: Offset.fromDirection(2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My savings',
                          style: kSubtitle2.copyWith(color: kWhite),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Rp. 16.199.214',
                          style: kHeading5.copyWith(
                            color: kWhite,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          lineHeight: 4,
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          progressColor: kEgyptianBlue,
                          percent: 0.3,
                          backgroundColor: kWhite,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Rp. 16.199.214 / Rp. 40.000.000',
                          style: kCaption.copyWith(
                            color: kWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      _transactionButton('assets/icon/save.png', 'Save Money'),
                      SizedBox(
                        width: 25,
                      ),
                      _transactionButton('assets/icon/pay.png', 'Pay'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _transactionButton(String icon, String text) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(
          height: 60,
        ),
        decoration: BoxDecoration(
          color: kNightBlack,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 24,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: kBody1.copyWith(color: kWhite),
            ),
          ],
        ),
      ),
    );
  }
}
