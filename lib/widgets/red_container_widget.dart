import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/container_config_provider.dart';

class RedContainerWidget extends StatelessWidget {
  const RedContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ContainerConfigProvider>();

    return Center(
      child: Container(
        width: config.width,
        height: config.height,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(config.topRightRadius),
          ),
        ),
      ),
    );
  }
}