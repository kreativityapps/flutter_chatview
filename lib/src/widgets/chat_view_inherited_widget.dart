import 'package:chatview/src/widgets/reaction_popup.dart';
import 'package:flutter/material.dart';
import 'package:chatview/chatview.dart';

/// This widget for alternative of excessive amount of passing arguments
/// over widgets.
class ChatViewInheritedWidget extends InheritedWidget {
  ChatViewInheritedWidget({
    super.key,
    required super.child,
    required this.featureActiveConfig,
    required this.chatController,
    this.profileCircleConfiguration,
  });
  final FeatureActiveConfig featureActiveConfig;
  final ProfileCircleConfiguration? profileCircleConfiguration;
  final ChatController chatController;
  static final GlobalKey chatTextFieldViewKey = GlobalKey();
  final ValueNotifier<bool> showPopUp = ValueNotifier(false);
  final GlobalKey<ReactionPopupState> reactionPopupKey = GlobalKey();

  static ChatViewInheritedWidget? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ChatViewInheritedWidget>();

  @override
  bool updateShouldNotify(covariant ChatViewInheritedWidget oldWidget) =>
      oldWidget.featureActiveConfig != featureActiveConfig;
}
