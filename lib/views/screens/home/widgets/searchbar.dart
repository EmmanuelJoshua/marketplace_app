import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/utils/utils.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: SizedBox(
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: kGrey.withOpacity(.5),
                    width: 1.3,
                  ),
                ),
                child: Row(
                  children: [
                    //Added to make icon theme constant
                    Theme(
                      data: ThemeData(
                        iconTheme: const IconThemeData(),
                      ),
                      child: const Icon(
                        Iconsax.search_normal_14,
                        color: kGrey,
                        size: 23,
                      ),
                    ),
                    const Gap(15),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: TextFormField(
                          style: const TextStyle(
                            color: Color(0xffB0B3C7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Search..',
                            hintStyle: TextStyle(
                              color: black.withOpacity(0.3),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    )
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
