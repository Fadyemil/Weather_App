import 'package:flutter/material.dart';

AppBar AppBarSearchPage() {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
    ),
    title: const Text(
      "Weathwe",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.linear_scale_outlined,
          color: Colors.white,
        ),
      ),
    ],
  );
}
