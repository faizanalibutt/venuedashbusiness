import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:venuedashbusiness/controller/text_controller.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_action_dialog.dart';
import 'package:venuedashbusiness/widgets/custom_alert_dialog.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_location_input_field.dart';

class LocationEditPage extends StatefulWidget {
  const LocationEditPage({Key? key}) : super(key: key);

  @override
  _LocationEditPageState createState() => _LocationEditPageState();
}

class _LocationEditPageState extends State<LocationEditPage> {
  final textController = Get.find<TextController>();

  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = LatLng(45.521563, -122.677433);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  late BitmapDescriptor markerIcon;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    BitmapDescriptor.fromAssetImage(const ImageConfiguration(size: Size(12, 12)), 'assets/graphics/ic_location_mark_icon.png').then((icon) {
      markerIcon = icon;
    });
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: size.height * .035,
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                width: size.width,
                height: size.height * .07,
                child: Text("Edit Location",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * .025,
                  ),
                  SizedBox(
                    width: size.width * .15,
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: Image.asset(
                        "assets/graphics/ic_back_button.png",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: size.height * .87,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: size.width * .9,
                    child: Row(
                      children: [
                        RoundedLocationInputField(
                          fieldWidth: .75,
                          textInputType: TextInputType.text,
                          onChanged: (value) {},
                          focus: false,
                          color: Colors.grey,
                          textColor: kBlackFieldColor,
                          cursorColor: Colors.black,
                          hintText: "Search Manually...",
                          textController: textController.textController,
                          fieldIconCallback: () {
                            setState(() {
                              _markers.clear();
                              _markers.add(Marker(
                                // This marker id can be anything that uniquely identifies each marker.
                                markerId: MarkerId(_lastMapPosition.toString()),
                                position: _lastMapPosition,
                                infoWindow: const InfoWindow(
                                  title: 'Really cool place',
                                  snippet: '5 Star Rating',
                                ),
                                icon: markerIcon,
                              ));
                            });
                          },
                        ),
                        SizedBox(
                          child: InkWell(
                              onTap: () async {
                                enableUserLocation();
                              },
                              child: Container(
                                padding: const EdgeInsets.only(top: 3, right: 0),
                                child: Image.asset(
                                  "assets/graphics/ic_current_location_icon.png",
                                ),
                              )),
                          width: size.width * .15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  Container(
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.0)), boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 4,
                        blurRadius: 14,
                        offset: Offset(0, 3),
                      )
                    ]),
                    height: size.height * .5,
                    width: size.width * .9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        markers: _markers,
                        onCameraMove: _onCameraMove,
                        initialCameraPosition: const CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  RoundedButtonLong(
                    buttonWidth: .9,
                    text: "Update Location",
                    press: () => Get.back(),
                    imgName: 'assets/graphics/ic_confirm_location_icon.png',
                    color: kPrimaryColor,
                    textColor: Colors.white,
                    onPrimaryColor: Colors.white54,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  ),
                ],
              ),
            ),
          )
        ]));
  }

  void svgParser() {
    final SvgParser parser = SvgParser();
    try {
      parser.parse("assets/graphics/images/ic_current_location_icon.svg", warningsAsErrors: false);
      if (kDebugMode) print('SVG is supported');
    } catch (e) {
      if (kDebugMode) print('SVG contains unsupported features');
    }
  }

  void _checkPermission(Function callback) async {
    Location location = Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        _serviceEnabled = false;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        _serviceEnabled = false;
      }
    }
    _serviceEnabled = true;
    if (!_serviceEnabled || _permissionGranted == PermissionStatus.denied || _permissionGranted == PermissionStatus.grantedLimited) {
      Get.dialog(
          CustomAlertDialog(
              description: "You denied location permission or allowed for "
                  "foreground use only. You need to allow permission for all time to use this service.",
              onOkPressed: () async {
                Get.back();
                await location.requestPermission();
              }),
          barrierDismissible: false);
    } else if (_permissionGranted == PermissionStatus.deniedForever) {
      Get.dialog(
          CustomAlertDialog(
              description: "You denied location permission for forever. You "
                  "need to allow permission to use this service.",
              onOkPressed: () async {
                Get.back();
                await Geolocator.openAppSettings();
              }),
          barrierDismissible: false);
    } else {
      callback();
    }
  }

  void enableUserLocation() async {
    PermissionStatus _permissionGranted;
    Location location = Location();
    bool _serviceEnabled;

    _permissionGranted = await location.hasPermission();
    _serviceEnabled = await location.serviceEnabled();

    if (_permissionGranted == PermissionStatus.denied ||
        _permissionGranted == PermissionStatus.deniedForever ||
        _permissionGranted == PermissionStatus.grantedLimited) {
      Get.dialog(
          CustomActionDialog(
            icon: "assets/graphics/ic_location_mark_icon.png",
            description:
                "This app collects location data to enable location fetching at the time of your online status, even when the app is closed or not in use.",
            onYesPressed: () {
              Get.back();
              _checkPermission(() {});
            },
            onNoPressed: () {
              if (kDebugMode) print("getProfile Called");
              Get.dialog(
                  CustomAlertDialog(
                      description: "You denied location permission for forever. You need to allow permission to use this service.",
                      onOkPressed: () async {
                        Get.back();
                        await Geolocator.openAppSettings();
                      }),
                  barrierDismissible: false);
            },
          ),
          barrierDismissible: false);
    } else if (!_serviceEnabled) {
      Get.dialog(
          CustomActionDialog(
            icon: "assets/graphics/ic_location_mark_icon.png",
            description:
                "This app collects location data to enable location fetching at the time of your online status, even when the app is closed or not in use.",
            onYesPressed: () {
              Get.back();
              _checkPermission(() => {});
            },
            onNoPressed: () {
              if (kDebugMode) print("getProfile Called");
              Get.dialog(
                  CustomAlertDialog(
                      description: "You denied location permission for forever. You need to allow permission to use this service.",
                      onOkPressed: () async {
                        Get.back();
                        await Geolocator.openAppSettings();
                      }),
                  barrierDismissible: false);
            },
          ),
          barrierDismissible: false);
    } else {
      // nothing here will add later
    }
  }
}
