import 'package:flutter/material.dart';

import '../../widgets/placeholder_feature_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          PlaceholderFeatureCard(
            title: 'Account settings',
            description:
                'Basic account and role settings will live here after authentication is added.',
            icon: Icons.manage_accounts,
          ),
          PlaceholderFeatureCard(
            title: 'Payments later',
            description:
                'The MVP has no payment system, but this area leaves room for online payments later.',
            icon: Icons.credit_card,
          ),
        ],
      ),
    );
  }
}
