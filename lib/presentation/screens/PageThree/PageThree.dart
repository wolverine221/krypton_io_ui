import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final String _wireThumb = 'file:///mnt/data/Wireframe_Low-fi ui.jpg';

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Resources & Guides', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 12),
          // big hero block like wireframe
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('Find Your Dream Home With Ease.', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Text('Discover top listings, explore virtual tours, and connect with trusted agents.', style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 16),
                    ElevatedButton(onPressed: () {}, child: const Text('Browse Listing')),
                  ]),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.network(_wireThumb, fit: BoxFit.contain, errorBuilder: (_,__,___) => Container(color: Colors.grey.shade200))),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // three small panels
          Row(
            children: List.generate(3, (i) => Expanded(child: Padding(padding: const EdgeInsets.all(8.0), child: _infoBox(i)))),
          ),

          const SizedBox(height: 18),
          // testimonials row (rounded cards)
          Text('Satisfied Clients Speak', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          Row(children: List.generate(3, (i) => Expanded(child: Card(margin: const EdgeInsets.all(8), child: Padding(padding: const EdgeInsets.all(12), child: Text('Client testimonial #${i+1} ...')))))),
        ],
      ),
    );
  }

  Widget _infoBox(int idx) {
    return Container(
      height: 120,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 12)]),
      padding: const EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Service ${idx + 1}', style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Text('Quick description for this feature or service that explains value in a line or two.', style: TextStyle(color: Colors.grey.shade700)),
      ]),
    );
  }
}
