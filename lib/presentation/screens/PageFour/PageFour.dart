import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final String _banner = 'file:///mnt/data/E-Commerce Website Design - Travel Bag store.jpg';
  final String _thumb = 'file:///mnt/data/download.jpg';

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Large banner
            Container(
              width: double.infinity,
              height: 320,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.white, boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 18)]),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                        Text('Wireless Headphone', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 12),
                        Text('Beats Solo — summer sale. Powerful sound, sleek design.', style: Theme.of(context).textTheme.bodyLarge),
                        const SizedBox(height: 18),
                        ElevatedButton(onPressed: () {}, child: const Padding(padding: EdgeInsets.symmetric(horizontal:16, vertical:12), child: Text('Shop by Category'))),
                      ]),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ClipRRect(borderRadius: BorderRadius.circular(14), child: Image.network(_banner, fit: BoxFit.cover, errorBuilder: (_,__,___) => Container(color: Colors.grey.shade200))),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 22),

            // Best sellers horizontal strip
            Text('Best Seller Products', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 12),
            SizedBox(
              height: 240,
              child: ListView.separated(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemBuilder: (context, i) {
                  return _productCard(title: 'Speaker ${i+1}', price: 99 + i * 50, image: _thumb);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _productCard({required String title, required double price, required String image}) {
    return Container(
      width: 200,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 14)]),
      padding: const EdgeInsets.all(12),
      child: Column(children: [
        Expanded(child: ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.network(image, fit: BoxFit.cover, errorBuilder: (_, __, ___) => Container(color: Colors.grey.shade100)))),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 6),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('\$${price.toStringAsFixed(2)}', style: const TextStyle(fontWeight: FontWeight.bold)),
          ElevatedButton(onPressed: () {}, child: const Icon(Icons.add_shopping_cart), style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
        ])
      ]),
    );
  }
}
