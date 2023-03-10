import 'package:flutter/material.dart';
import 'package:threebee_challenge/shared_export.dart';
import 'package:jiffy/jiffy.dart';

const _colorGreen = Color(0xFFACC16F);

class ApiaryCard extends StatelessWidget {
  const ApiaryCard({
    super.key,
    required this.apiary,
  });

  final ApiaryModel apiary;

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
            if (apiary.thumbnailApiaryListUrl == null) ...[
              Positioned.fill(
                child: Container(
                  color: const Color(0xFFDA954B),
                ),
              ),
            ] else ...[
              Positioned.fill(
                child: Image.network(
                  apiary.thumbnailApiaryListUrl!,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ],
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22.0),
                            child: Text(
                              apiary.name ?? 'Apiary name not available',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
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
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: apiary.lastWeight != null ? apiary.lastWeight?.toStringAsFixed(2) : '-',
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: 'kg',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
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
                              apiary.lastUpdateAt != null
                                  ? Jiffy.parseFromMillisecondsSinceEpoch(apiary.lastUpdateAt! * 1000)
                                      .format(pattern: "dd MMM")
                                  : '-',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              apiary.imageId?.toString() ?? '',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
