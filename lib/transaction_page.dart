import 'package:bank_app/colors.dart';
import 'package:bank_app/home_page.dart';
import 'package:bank_app/login_page.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACK_GROUND_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.BACK_GROUND_COLOR,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_ios_outlined, size: 20, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search, size: 20, color: Colors.black),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Text("Recent Transaction", style: TextStyle(fontSize: 20, color: AppColors.MAIN_COLOR, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 90,
                      decoration: BoxDecoration(color: AppColors.MAIN_COLOR, borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text("All", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 90,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text("Expenses", style: TextStyle(color: Colors.black.withOpacity(0.4))),
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 90,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text("Income", style: TextStyle(color: Colors.black.withOpacity(0.4))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Text("Today", style: TextStyle(color: AppColors.MAIN_COLOR, fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              // card payment
              PaymentDetail(
                icon: Icons.local_atm,
                title: "Payment",
                subtitle: "Payment Received from client",
              ),
              PaymentDetail(
                icon: Icons.local_atm,
                title: "Payment",
                subtitle: "Payment Received from client",
              ),
              SizedBox(height: 60),
              Center(
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/images.jpg"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/images.jpg"),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/images.jpg"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70, left: 60, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/images.jpg"),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/images.jpg"),
                    )
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                onPressed: () {},
                label: "See detail",
              )
            ],
          ),
          Positioned(
            bottom: 120,
            left: 100,
            right: 100,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(border: Border.all(color: Color(0xffc8cbe8), width: 15), shape: BoxShape.circle),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(border: Border.all(color: AppColors.MAIN_COLOR, width: 4), shape: BoxShape.circle),
                    child: Container(
                      margin: EdgeInsets.all(2),
                      child: CircleAvatar(radius: 50, backgroundImage: AssetImage("images/images.jpg")),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
