import 'package:bank_app/colors.dart';
import 'package:bank_app/transaction_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACK_GROUND_COLOR,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // profile
                      CircleAvatar(radius: 60, backgroundImage: AssetImage("images/images.jpg")),
                      SizedBox(height: 15),
                      Text("IHSA KHAN", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.5)),
                      SizedBox(height: 05),
                      Text("Flutter Developer", style: TextStyle(fontSize: 16)),
                      // 3 details
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GeneralInformation(
                              title: "\$40000",
                              label: "income",
                            ),
                            Container(margin: EdgeInsets.only(left: 30), height: 60, width: 3, color: Color(0xff20256b)),
                            GeneralInformation(
                              title: "\$40000",
                              label: "expenses",
                            ),
                            Container(margin: EdgeInsets.only(left: 30), height: 60, width: 3, color: Color(0xff20256b)),
                            GeneralInformation(
                              title: "\$1500",
                              label: "loan",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                    children: [
                      Text("Overview", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xff20256b))),
                      SizedBox(height: 10),
                      Icon(Icons.notifications_active_outlined, color: Colors.black, size: 20),
                      Spacer(),
                      Text("22 Dec 2021", style: TextStyle(fontSize: 14, color: Color(0xff20256b))),
                    ],
                  ),
                ),
                PaymentDetail(
                  icon: Icons.arrow_upward_outlined,
                  title: "Sent",
                  subtitle: "Sending Payment to Client",
                ),
                PaymentDetail(
                  icon: Icons.arrow_downward_outlined,
                  title: "Receive",
                  subtitle: "Receive Payment to Client",
                ),
                PaymentDetail(
                  icon: Icons.arrow_upward_outlined,
                  title: "Sent",
                  subtitle: "Sending Payment to Client",
                ),
                PaymentDetail(
                  icon: Icons.local_atm,
                  title: "Loan",
                  subtitle: "Loan Taken From Client",
                )
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            height: 77,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45), bottomRight: Radius.circular(45))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.home, size: 30),
                  Icon(Icons.local_atm, size: 30),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff20256b),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Center(
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  Icon(Icons.attach_money, size: 30),
                  Icon(Icons.person, size: 30)
                ],
              ),
            )),
      ),
    );
  }
}

class GeneralInformation extends StatelessWidget {
  final String? title;
  final String? label;

  GeneralInformation({this.title, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color(0xff20256b))),
        SizedBox(height: 05),
        Text(label!, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black)),
      ],
    );
  }
}

class PaymentDetail extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final String? subtitle;

  PaymentDetail({this.icon, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransactionPage()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 30, right: 30),
        height: 87,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(color: Color(0xffd5d8f2), borderRadius: BorderRadius.circular(12)),
                child: Icon(this.icon!),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(title!, style: TextStyle(fontSize: 20, color: Color(0xff20256b), fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  Text(subtitle!, style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
