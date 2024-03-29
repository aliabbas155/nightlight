import 'dart:math';

import 'package:flutter/material.dart';
import 'package:funvas/funvas.dart';

/// Widget for viewing a list of [Funvas] animations.
class FunvasViewer extends StatefulWidget {
  /// Constructs [FunvasViewer].
  const FunvasViewer({
    super.key,
    required this.funvases,
  });

  /// The funvases to be shown in the viewer.
  final List<Funvas> funvases;

  @override
  _FunvasViewerState createState() => _FunvasViewerState();
}

class _FunvasViewerState extends State<FunvasViewer> {
  int _selectedIndex = 0;

  @override
  void didUpdateWidget(covariant FunvasViewer oldWidget) {
    super.didUpdateWidget(oldWidget);

    _selectedIndex = min(_selectedIndex, widget.funvases.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: FunvasContainer(
                funvas: widget.funvases[_selectedIndex],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
