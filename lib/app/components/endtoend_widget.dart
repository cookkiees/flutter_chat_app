import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class EndtoEndWidget extends StatelessWidget {
  const EndtoEndWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.lock,
          size: 12,
        ),
        const SizedBox(width: 8),
        RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Your status updates are',
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              TextSpan(
                text: ' end-to-end encrypted',
                style: TextStyle(fontSize: 11, color: MyColors.green),
              ),
            ],
          ),
        )
      ],
    );
  }
}
