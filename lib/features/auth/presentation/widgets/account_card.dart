import '../../../../core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

import '../../../../core/presentation/animations/hover_animation.dart';
import '../../../../core/styles/colors.dart';

class AccountCard {
  final VoidCallback onTap;
  final double width;
  const AccountCard({
    required this.onTap,
    required this.width,
  });
}

class UserCard extends AccountCard {
  final String imagePath;
  final String username;
  UserCard({
    required super.onTap,
    required super.width,
    required this.imagePath,
    required this.username,
  });
}

class GuestCard extends AccountCard {
  GuestCard({required super.onTap, required super.width});
}

class AccountCardUser extends StatelessWidget implements UserCard {
  const AccountCardUser({
    super.key,
    required this.onTap,
    required this.width,
    required this.imagePath,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return HoverAnimation(
      matrixOnHover: Matrix4.compose(
        Vector3(0, -2.0, 2.0),
        Quaternion.identity(),
        Vector3(1.1, 1.1, 1.1),
      ),
      builder: (isHovered) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Pallete.primary,
            borderRadius: BorderRadius.circular(21),
            boxShadow: [
              BoxShadow(
                color: Pallete.primary.withOpacity(.2),
                blurRadius: 8,
                spreadRadius: 3,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Pallete.transparent,
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(
                width: 12,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Pallete.second,
                          ),
                    ),
                    Text(
                      'Администратор',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Pallete.second.withOpacity(.4),
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  final VoidCallback onTap;
  @override
  final double width;
  @override
  final String imagePath;
  @override
  final String username;
}

class AccountCardGuest extends StatelessWidget implements GuestCard {
  const AccountCardGuest({
    super.key,
    required this.onTap,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return HoverAnimation(
      matrixOnHover: Matrix4.compose(
        Vector3(0, -2.0, 2.0),
        Quaternion.identity(),
        Vector3(1.1, 1.1, 1.1),
      ),
      builder: (isHovered) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Pallete.primary,
            borderRadius: BorderRadius.circular(21),
            boxShadow: [
              BoxShadow(
                color: Pallete.primary.withOpacity(.2),
                blurRadius: 8,
                spreadRadius: 3,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Pallete.transparent,
                backgroundImage: AssetImage(Assets.person),
              ),
              const SizedBox(
                width: 12,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Войти как гость',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Pallete.second,
                          ),
                    ),
                    Text(
                      'Гость',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Pallete.second.withOpacity(.4),
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  final VoidCallback onTap;
  @override
  final double width;
}
