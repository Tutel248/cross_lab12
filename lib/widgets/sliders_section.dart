import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/container_config_provider.dart';

class SlidersSection extends StatelessWidget {
  const SlidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ContainerConfigProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('Width: ', style: TextStyle(fontSize: 16)),
              Text(
                config.width.toStringAsFixed(2),
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Slider(
            value: config.width,
            min: 10.0,
            max: 100.0,
            onChanged: (value) {
              context.read<ContainerConfigProvider>().setWidth(value);
            },
          ),

          Row(
            children: [
              const Text('Height: ', style: TextStyle(fontSize: 16)),
              Text(
                config.height.toStringAsFixed(2),
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Slider(
            value: config.height,
            min: 10.0,
            max: 100.0,
            onChanged: (value) {
              context.read<ContainerConfigProvider>().setHeight(value);
            },
          ),

          Row(
            children: [
              const Text('Radius: ', style: TextStyle(fontSize: 16)),
              Text(
                config.topRightRadius.toStringAsFixed(2),
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Slider(
            value: config.topRightRadius,
            min: 0.0,
            max: 100.0,
            onChanged: (value) {
              context.read<ContainerConfigProvider>().setTopRightRadius(value);
            },
          ),
        ],
      ),
    );
  }
}