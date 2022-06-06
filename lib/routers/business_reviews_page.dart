import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class BusinessReviewsPage extends StatelessWidget {
  const BusinessReviewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Reviews(267)",
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
              color: kBlackHeadingColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ))),
        leading: InkWell(
          onTap: () => Get.back(),
          child: Image.asset(
            "assets/graphics/ic_back_button.png",
          ),
        ),
        leadingWidth: 80,
        shadowColor: Colors.transparent,
      ),
      body: Material(
        color: Colors.white,
        child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, position) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Ink(
                        width: size.width * .9,
                        padding: EdgeInsets.zero,
                        decoration: const BoxDecoration(
                          color: kLoationFiedlBgColor,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(children: [
                              Container(
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: kLoationFiedlBgColor,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                                  Flexible(flex: 1, fit: FlexFit.tight, child: Image.asset("assets/graphics/img_business_user_comment.png")),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    flex: 6,
                                    fit: FlexFit.tight,
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                      Text(
                                        "Kenny Kessler",
                                        style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                          color: kBlackHeadingColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                      ),
                                      Row(children: [
                                        Image.asset("assets/graphics/Icon ionic-ios-star.png"),
                                        const SizedBox(width: 5),
                                        Text("3.1 Rating",
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                            ))
                                      ]),
                                    ]),
                                  ),
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        "12 months ago",
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Ipsam Magni Amet Dolores. Quisquam Exercitationem Repudiandae Consequatur Nihil Magni Ut Voluptatem Dolor. "
                                
                                "Asperiores Ea Distinctio Laboriosam Laudantium. Officiis Consequatur Molestias Sed Doloremque Sint Veniam.",
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                                ),
                                maxLines: null,
                              )
                            ]))),
                    const SizedBox(height: 15),
                  ],
                );
              },
              itemCount: 5,
            )),
      ),
    );
  }
}
