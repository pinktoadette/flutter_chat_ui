import 'package:flutter/material.dart';

import '../state/inherited_chat_theme.dart';

/// A class that represents system message widget.
class BottomMessage extends StatelessWidget {
  const BottomMessage({
    super.key,
    required this.currentUserIsAuthor,
    required this.listFooterWidget,
    required this.onMessageFooterTap,
  });

  final List<Widget> listFooterWidget;
  final bool currentUserIsAuthor;
  final void Function(BuildContext context) onMessageFooterTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => onMessageFooterTap.call(context),
        child: Row(
          mainAxisAlignment: currentUserIsAuthor
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: listFooterWidget,
        ),
      );
}
