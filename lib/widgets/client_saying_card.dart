import 'package:flutter/material.dart';
import 'package:taskapp/models/custom_style.dart';

import 'border_side.dart';

class ClientSayingCard extends StatelessWidget {
  final String img;

  final String title;

  final String name;

  final String description;

  const ClientSayingCard(this.description, this.img, this.name, this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      margin: const EdgeInsets.all(2.0),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: myBoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  for (var i = 0; i < 6; i++)
                    const Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.amber,
                    )
                ],
              ),
              Text(description, style: custom_style_body),
              Row(
                children: [
                  Image.asset(
                    img,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontSize: 8),
                        ),
                        Text(
                          title,
                          style: const TextStyle(fontSize: 6, color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ), // ///
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
