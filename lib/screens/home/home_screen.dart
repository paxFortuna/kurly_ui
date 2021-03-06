import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../theme.dart';
import '../components/custom_actions.dart';
import 'components/benefit_page.dart';
import 'components/kurly_page.dart';
import 'components/new_product_page.dart';
import 'components/thrifty_shopping_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categories = ["컬리추천", "신상품", "금주혜택", "알뜰쇼핑"];
    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Kurly"),
          actions: [
            CustomActions(),
          ],
          bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.3, color: Colors.grey)),
                  color: Colors.white),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                      (index) => Tab(
                    text: categories[index],
                  ),
                ),
                labelColor: kPrimaryColor,
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().headline2?.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColor),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(42),
          ),
        ),
        // 8
        body: TabBarView(
          children: [
            KurlyPage(),
            NewProductPage(),
            BenefitPage(),
            ThriftyShoppingPage()
          ],
        ),
      ),
    );
  }
}