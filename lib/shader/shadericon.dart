import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon(
     {
    required this.gradient,
    required this.child,
    
  });

  final Widget child; 
  
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: child,
    );
  }
}