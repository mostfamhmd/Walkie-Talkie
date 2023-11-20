import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CallPage(callID: "300"),
    );
  }
}

String userID = Random().nextInt(1000).toString();

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          960957439, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "4d3b73397529249349efb3eb941bd1caadb91f55d94ef89d3bc82ce851909367", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userID,
      userName: 'user_name$userID',
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall(),
    );
  }
}
