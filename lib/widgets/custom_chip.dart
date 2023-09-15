import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({super.key});

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      padding: const EdgeInsets.all(2.0),
      avatar: const Icon(
        Icons.facebook,
        color: Colors.white,
      ),
      label: Text(
        'Facebook',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.white),
      ),
      onPressed: () {},
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: const Color(0xff0F5EA2),
    );
  }
}
