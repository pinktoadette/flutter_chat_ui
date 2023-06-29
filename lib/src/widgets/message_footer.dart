import 'package:flutter/material.dart';

class MessageFooter extends StatefulWidget {
  const MessageFooter({
    super.key,
    required this.bottomWidget,
    required this.onElementClick,
    required this.currentUserIsAuthor,
  });

  final bool currentUserIsAuthor;

  /// Bottom row underneath message.
  final List<Widget> bottomWidget;

  /// Upon clicking the bottom row.
  final Function(bool isClicked) onElementClick;

  @override
  State<MessageFooter> createState() => _MessageFooterState();
}

class _MessageFooterState extends State<MessageFooter>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => widget.onElementClick(true),
        child: Row(
          mainAxisAlignment: widget.currentUserIsAuthor
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: widget.bottomWidget,
        ),
      );
}
