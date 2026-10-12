import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final guides = [
      {'title': 'CPR Resuscitation', 'sub': '100-120 bpm rhythm guide', 'icon': Icons.favorite},
      {'title': 'Choking / Heimlich', 'sub': 'Abdominal thrusts protocol', 'icon': Icons.air},
      {'title': 'Severe Bleeding', 'sub': 'Direct pressure & tourniquet', 'icon': Icons.healing},
      {'title': 'Burns & Scalds', 'sub': 'Cool running water 20 min', 'icon': Icons.water_drop},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Aid Guides', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: guides.length,
        itemBuilder: (context, i) {
          final g = guides[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppTheme.card,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.primary.withValues(alpha: 0.2),
                  child: Icon(g['icon'] as IconData, color: AppTheme.primary),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(g['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
                      Text(g['sub'] as String, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right, color: Colors.white54),
              ],
            ),
          );
        },
      ),
    );
  }
}
