import 'package:chatview/src/widgets/reaction_popup.dart';
import 'package:material_ui/material_ui.dart';
import 'package:chatview/chatview.dart';

/// This widget for alternative of excessive amount of passing arguments
/// over widgets.
class ChatViewInheritedWidget extends InheritedWidget {
  const ChatViewInheritedWidget({
    super.key,
    required super.child,
    required this.featureActiveConfig,
    required this.chatController,
    required this.showPopUp,
    required this.reactionPopupKey,
    this.profileCircleConfiguration,
  });
  final FeatureActiveConfig featureActiveConfig;
  final ProfileCircleConfiguration? profileCircleConfiguration;
  final ChatController chatController;
  static final GlobalKey chatTextFieldViewKey = GlobalKey();
  final ValueNotifier<bool> showPopUp;
  final GlobalKey<ReactionPopupState> reactionPopupKey;

  static ChatViewInheritedWidget? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ChatViewInheritedWidget>();

  @override
  bool updateShouldNotify(covariant ChatViewInheritedWidget oldWidget) =>
      oldWidget.featureActiveConfig != featureActiveConfig;
}
