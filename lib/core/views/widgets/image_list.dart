import 'package:flutter/material.dart';

class ImageListDrug extends StatelessWidget {
  const ImageListDrug({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
                      padding: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 134, 178, 206),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            const Color.fromARGB(255, 134, 178, 206)
                                .withOpacity(0.5), // لون الخلفية مع الشفافية
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            'assets/images/drug_grey.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
  }
}