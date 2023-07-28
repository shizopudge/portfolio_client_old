import 'package:flutter/material.dart';

import '../../../styles/colors.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      color: Pallete.primary,
      child: FittedBox(
        alignment: Alignment.centerRight,
        child: Row(
          children: [
            const Icon(
              Icons.wifi,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'RUS',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              TimeOfDay.now().format(context),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
