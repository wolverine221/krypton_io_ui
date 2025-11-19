import 'dart:math';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  final double pageOffset; // keep same signature as your original PageOne
  const PageOne({Key? key, required this.pageOffset}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  // Local path from uploaded images (use asset if you move the file)
  final String _heroFile = 'file:///mnt/data/E-Commerce Website Design - Travel Bag store.jpg';

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // pageOffset is: pageController.page - index; range near -1..1
    final double offset = widget.pageOffset.clamp(-1.0, 1.0);

    // map offset to transforms
    final double textOpacity = (1 - offset.abs()).clamp(0.0, 1.0);
    final double imageTranslate = 120 * offset; // slide image horizontally
    final double imageScale = 1.0 - 0.05 * offset; // subtle scale while scrolling

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Row(
        children: [
          // Left: title + CTA
          Expanded(
            flex: 5,
            child: Opacity(
              opacity: textOpacity,
              child: Transform.translate(
                offset: Offset(-imageTranslate * 0.6, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Unpack\nYour Style', style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold, height: 1.05)),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 520,
                      child: Text(
                        'Our speakers are crafted to blend timeless design and powerful audio for every space. Crisp mids, deep bass, and a look that stands out.',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {}, child: const Padding(padding: EdgeInsets.symmetric(horizontal:18, vertical:14), child: Text('See all'))),
                        const SizedBox(width: 12),
                        OutlinedButton(onPressed: () {}, child: const Padding(padding: EdgeInsets.symmetric(horizontal:18, vertical:14), child: Text('Play Video'))),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          // Right: hero image & small carousel dots
          Expanded(
            flex: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // soft circular background
                Transform.translate(
                  offset: Offset(imageTranslate * 0.35, 0),
                  child: Container(
                    width: 420,
                    height: 420,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [Colors.white, Colors.grey.shade200]),
                      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 30, offset: Offset(0, 12))],
                    ),
                  ),
                ),

                // Hero image (file path) - slide & scale
                Transform.translate(
                  offset: Offset(imageTranslate, -8),
                  child: Transform.scale(
                    scale: imageScale,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 360, maxHeight: 360),
                      child: Image.network(
                        _heroFile,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stack) {
                          return Container(
                            width: 300,
                            height: 300,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(18)),
                            child: const Icon(Icons.speaker, size: 110, color: Colors.black26),
                          );
                        },
                      ),
                    ),
                  ),
                ),

                // Price + color dots (bottom-right)
                Positioned(
                  right: 36,
                  bottom: 36,
                  child: Opacity(
                    opacity: textOpacity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('\$768.00', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            _dot(Colors.black),
                            const SizedBox(width: 8),
                            _dot(Colors.orange),
                            const SizedBox(width: 8),
                            _dot(Colors.green),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _dot(Color c) {
    return Container(width: 18, height: 18, decoration: BoxDecoration(color: c, shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 2)));
  }
}
