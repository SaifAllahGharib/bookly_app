import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class SlidingLogo extends StatelessWidget {
  final Animation<Offset> slidingAnimation;

  const SlidingLogo({
    super.key,
    required this.slidingAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) => SlideTransition(
        position: slidingAnimation,
        child: Image.asset(Assets.logo),
      ),
    );
  }
}
