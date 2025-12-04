import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sathi/constant/constants.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  final String callId;
  final String userName; // <-- added

  const CallPage({super.key, required this.callId, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZegoUIKitPrebuiltCall(
        appID: int.parse(Appinfo.appID),
        appSign: Appinfo.appSign,
        userID: Random().nextInt(99999).toString(),
        userName: userName, // use user input
        callID: callId,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          ..bottomMenuBarConfig = ZegoBottomMenuBarConfig(
            buttons: [
              ZegoMenuBarButtonName.toggleCameraButton,
              ZegoMenuBarButtonName.toggleMicrophoneButton,
              ZegoMenuBarButtonName.hangUpButton,
              ZegoMenuBarButtonName.chatButton,
            ],
          )
          ..chatView = ZegoCallInRoomChatViewConfig(),
      ),
    );
  }
}
