import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ImagesViewer extends HookWidget {
  const ImagesViewer({
    required this.productImages,
    super.key,
  });

  final List<String> productImages;

  @override
  Widget build(BuildContext context) {
    final index = useState(0);
    return Container(
      margin: const EdgeInsets.all(22),
      height: 350,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            ValueListenableBuilder(
              valueListenable: index,
              builder: (context, value, child) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: Image.asset(
                    key: ValueKey<String>(
                      productImages[value],
                    ),
                    productImages[value],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
            Positioned(
              top: 25,
              left: 13,
              child: Column(
                children: List.generate(
                  productImages.length,
                  (i) => InkWell(
                    onTap: () {
                      index.value = i;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                            image: AssetImage(productImages[i]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
