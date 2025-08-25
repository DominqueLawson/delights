import 'package:flutter/material.dart';

class FilterChipsRow extends StatelessWidget {
  const FilterChipsRow({super.key, required this.filters});
  final List<String> filters;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: filters
          .map((f) => FilterChip(
                label: Text(f),
                selected: false,
                onSelected: (_) {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ))
          .toList(),
    );
  }
}
