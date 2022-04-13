import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(height: size.height * .05),
      Container(
        padding: const EdgeInsets.only(left: 20.0, right: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Get.back(),
              child: Image.asset(
                "assets/graphics/ic_back_button.png",
              ),
            ),
            Container(
                height: size.height * .1,
                padding: const EdgeInsets.only(left: 18.0),
                alignment: Alignment.centerLeft,
                child: const FittedBox(
                  child: Text("Terms & Conditions",
                      style:
                          TextStyle(color: kBlackHeadingColor, fontSize: 24)),
                )),
          ],
        ),
      ),
      SizedBox(
        height: size.height * .85,
        child: SingleChildScrollView(
          child: Container(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30),
              alignment: Alignment.topLeft,
              child: const AutoSizeText(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel imperdiet augue. Proin a porta orci, eu vulputate nulla. Cras iaculis turpis eget mi egestas commodo. Donec in euismod odio. Vivamus cursus facilisis est, et lobortis nibh ornare facilisis. Sed dictum quam lorem, nec tempor velit auctor non. Vivamus porttitor mollis dolor, vehicula placerat quam faucibus ac. Fusce et ante nec urna condimentum scelerisque in in sem. Suspendisse purus dolor, rutrum quis semper id, consectetur et mauris. Mauris nec risus nec odio posuere tincidunt. Aliquam ultricies scelerisque ante, vitae tempus mi pretium sit amet. Phasellus vel sem vitae quam gravida gravida."
                "Sed iaculis dui velit. Vivamus sit amet justo et dolor consequat ultrices ut a justo. Ut eu condimentum massa, a dignissim urna. Phasellus facilisis eleifend arcu, in maximus diam scelerisque eu. Duis sed est gravida nulla iaculis consectetur id eget mauris. Maecenas quam leo, lacinia id semper id, placerat sit amet purus. Pellentesque eu quam eget lacus vestibulum placerat. Quisque massa est, dictum ut egestas ac, sagittis a mauris. Donec posuere blandit nulla, et pulvinar odio pellentesque non."
                "Vestibulum dignissim, tellus vitae aliquam condimentum, lacus metus accumsan ipsum, vitae pharetra ipsum sapien nec nisl. Nulla at suscipit ipsum, sed bibendum felis. Morbi tincidunt, sem et gravida efficitur, risus arcu egestas purus, ut interdum lectus mauris ac dui. Donec pretium nisl nec massa eleifend dignissim. Cras finibus neque quam, ac malesuada massa tincidunt non. Suspendisse tempor orci sed velit ultrices vestibulum. Aliquam faucibus lacus nec justo dapibus vehicula. Aliquam erat volutpat. Vestibulum ut turpis id ante malesuada blandit a ut orci. Vestibulum ut vehicula magna."
                "Etiam vitae purus ullamcorper sem venenatis gravida tincidunt a enim. Aenean eu convallis orci, sed congue diam. Nunc suscipit, est nec tempus pellentesque, ipsum felis placerat arcu, at consequat mi diam eu tellus. Fusce vel sapien ac justo tristique luctus. Aenean aliquam mi sed massa feugiat, eu egestas justo fringilla. Etiam semper tincidunt lorem elementum tristique. In vel pulvinar elit. Nunc sit amet auctor enim.",
                style: TextStyle(color: kBlackSubHeadingColor, fontSize: 12),
                minFontSize: 8,
                maxLines: 50,
                overflow: TextOverflow.ellipsis,
              )),
        ),
      ),
    ]));
  }
}
