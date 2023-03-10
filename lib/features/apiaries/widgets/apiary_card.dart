import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

const _colorGreen = Color(0xFFACC16F);

class ApiaryCard extends StatelessWidget {
  const ApiaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: _colorGreen,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                'https://source.unsplash.com/random/300×300',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.0),
                          child: Text(
                            'Arnia Lulu',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: _colorGreen,
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(20),
                              ),
                            ),
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 10,
                              top: 5,
                              bottom: 5,
                            ),
                            child: const Text(
                              "Ciancia",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            Jiffy.now().format(pattern: "dd MMM"),
                          ),
                        ),
                        const Flexible(
                          child: Text(
                            '75775',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
