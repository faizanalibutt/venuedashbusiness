import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/add_product_page.dart';
import 'package:venuedashbusiness/routers/business_profile_page.dart';
import 'package:venuedashbusiness/routers/feedback_page.dart';
import 'package:venuedashbusiness/routers/help_page.dart';
import 'package:venuedashbusiness/routers/home_page.dart';
import 'package:venuedashbusiness/routers/login_page.dart';
import 'package:venuedashbusiness/routers/manage_products_main_page.dart';
import 'package:venuedashbusiness/routers/order_history_page.dart';
import 'package:venuedashbusiness/routers/privacy_policy_page.dart';
import 'package:venuedashbusiness/routers/profile_edit_page.dart';
import 'package:venuedashbusiness/routers/settings_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_action_dialog.dart';

class BottomBarPage extends StatefulWidget {
  BottomBarPage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;
  final screens = [HomePage(), const ManageProductsMainPage(), const BusinessProfilePage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: widget._key,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        titleSpacing: 5,
        title: Text(
          (_selectedIndex == 0)
              ? "Orders Request"
              : (_selectedIndex == 1)
                  ? "Manage Products"
                  : "Business Profile",
          style: GoogleFonts.lato(
              textStyle: const TextStyle(
            color: kBlackHeadingColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )),
        ),
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            widget._key.currentState!.openDrawer();
          },
          child: Image.asset(
            "assets/graphics/ic_home_drawer_button.png",
          ),
        ),
        actions: (_selectedIndex == 0)
            ? [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/graphics/ic_notification_icon.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const OrderHistoryPage());
                  },
                  child: Image.asset(
                    "assets/graphics/ic_history_green_icon.png",
                  ),
                ),
              ]
            : (_selectedIndex == 1)
                ? [
                    InkWell(
                      onTap: () {
                        Get.to(() => const AddProductPage());
                      },
                      child: Image.asset(
                        "assets/graphics/ic_add_circle_green_icon.png",
                      ),
                    ),
                  ]
                : [
                    InkWell(
                      onTap: () {
                        Get.to(() => ProfileEditPage());
                      },
                      child: Image.asset(
                        "assets/graphics/ic_edit_icon.png",
                      ),
                    ),
                  ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: Material(
        elevation: 35,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset("assets/graphics/ic_order_request_white_icon.png"),
                activeIcon: Image.asset("assets/graphics/ic_order_request_green_icon.png"),
                label: 'Orders Request',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/graphics/ic_manage_products_white_icon.png"),
                activeIcon: Image.asset("assets/graphics/ic_manage_products_green_icon.png"),
                label: 'Manage Products',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/graphics/ic_business_profile_white_icon.png"),
                activeIcon: Image.asset("assets/graphics/ic_business_profile_green_icon.png"),
                label: 'Business Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: kBottomBarUnSelectedColor,
            backgroundColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ),
      ),
      drawer: SizedBox(
        width: size.width * .7,
        child: Drawer(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * .13,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      widget._key.currentState!.openEndDrawer();
                    },
                    child: Image.asset(
                      "assets/graphics/ic_close_icon.png",
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: kBlackColor30,
                  height: 1.0,
                ),
              ),
              SizedBox(
                height: size.height * .7,
                child: Padding(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        InkWell(
                            onTap: () => {widget._key.currentState!.openEndDrawer(), Get.to(() => const HelpPage())},
                            child: Padding(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/graphics/ic_help_black_icon.png",
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Need Help?",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      color: kBlackHeadingColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              widget._key.currentState!.openEndDrawer();
                              Get.to(() => const FeedbackPage());
                            },
                            child: Padding(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/graphics/ic_feedback_black_icon.png",
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Give us Feedback",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      color: kBlackHeadingColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              widget._key.currentState!.openEndDrawer();
                              Get.to(() => const PrivacyPolicyPage());
                            },
                            child: Padding(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/graphics/ic_terms_black_icon.png",
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Terms & Conditions",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      color: kBlackHeadingColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              widget._key.currentState!.openEndDrawer();
                              Get.to(() => const SettingsPage());
                            },
                            child: Padding(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/graphics/ic_setting_black_icon.png",
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Settings",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      color: kBlackHeadingColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          color: kBlackColor30,
                          height: 1.0,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Ink(
                          decoration: const BoxDecoration(
                            color: kLoationFiedlBgColor,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: InkWell(
                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                              onTap: () {
                                widget._key.currentState!.openEndDrawer();
                                Get.dialog(
                                    CustomActionDialog(
                                      icon: "assets/graphics/ic_sign_out_green_icon.png",
                                      title: "Logout?",
                                      description: "Are you sure you want to logout your account?",
                                      iconVe: "assets/graphics/ic_sign_out_white_icon.png",
                                      iconNve: "assets/graphics/ic_cancel_icon.png",
                                      titleBtnYes: "Logout",
                                      titleBtnNo: "No",
                                      onYesPressed: () {
                                        Get.back();
                                        Get.to(() => const LoginPage());
                                      },
                                      onNoPressed: () {},
                                    ),
                                    barrierDismissible: true);
                              },
                              child: Padding(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/graphics/ic_logout_black_icon.png",
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "Logout",
                                      style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                        color: kBlackHeadingColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              )),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).viewInsets.bottom,
                        ),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
