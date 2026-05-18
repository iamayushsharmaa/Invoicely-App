import 'package:flutter/material.dart';

import '../../domain/entities/user_entity.dart';

class ProfileInfoCard extends StatelessWidget {
  final UserEntity user;

  const ProfileInfoCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: const Color(0xFF3F51B5),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.person, color: Colors.white, size: 40),
          ),
          const SizedBox(height: 12),
          Text(
            user.name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
          ),
          if (user.phone != null) ...[
            const SizedBox(height: 4),
            Text(
              user.phone!,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
            ),
          ],
        ],
      ),
    );
  }
}