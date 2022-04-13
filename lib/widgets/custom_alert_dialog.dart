import 'package:flutter/material.dart';
import 'package:venuedashbusiness/utils/dimensions.dart';
import 'package:venuedashbusiness/utils/styles.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';

class CustomAlertDialog extends StatelessWidget {
  final String description;
  final Function onOkPressed;
  const CustomAlertDialog(
      {Key? key, required this.description, required this.onOkPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.PADDING_SIZE_LARGE,
            vertical: Dimensions.PADDING_SIZE_SMALL),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(Icons.info, size: 80, color: Theme.of(context).primaryColor),
          Padding(
            padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style:
                  robotoMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE),
            ),
          ),
          RoundedButtonLong(
            text: "Okay",
            press: () => Navigator.pop(context, 'OK'),
            imgName: "assets/graphics/ic_okay_icon.png",
            textColor: Colors.white,
          ),
        ]),
      ),
    );
  }
}
