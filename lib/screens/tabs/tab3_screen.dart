import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final spots = [
      {'name': 'St. Jude Emergency Center', 'dist': '0.8 km', 'time': '3 mins', 'open': '24/7 ER'},
      {'name': 'Metropolitan General Hospital', 'dist': '1.6 km', 'time': '7 mins', 'open': '24/7 Trauma Level 1'},
      {'name': 'Urgent Care & Trauma Clinic', 'dist': '2.4 km', 'time': '10 mins', 'open': 'Open until 23:00'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearest Medical Aid', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: spots.length,
        itemBuilder: (context, i) {
          final s = spots[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                const Icon(Icons.local_hospital, color: AppTheme.secondary, size: 28),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(s['name'] as String, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                      Text('${s['dist']} • ${s['time']} drive', style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                      Text(s['open'] as String, style: const TextStyle(color: Colors.greenAccent, fontSize: 11, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: AppTheme.surface, foregroundColor: Colors.white),
                  child: const Text('Route'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
