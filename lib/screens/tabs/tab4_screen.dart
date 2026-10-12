import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Medical ID', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppTheme.card,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: AppTheme.primary.withValues(alpha: 0.3)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Blood Type: O (Positive)', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
                  SizedBox(height: 6),
                  Text('Allergies: Penicillin, Peanuts', style: TextStyle(color: Colors.orangeAccent, fontSize: 13)),
                  SizedBox(height: 6),
                  Text('Emergency Contact: Sarah (+1 555-0199)', style: TextStyle(color: Colors.white70, fontSize: 13)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => RoutingService.openRegistrationUrl(),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primary,
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Sync With Official National Health Register'),
            ),
          ],
        ),
      ),
    );
  }
}
