import 'package:flutter/material.dart';
// import 'global_variable.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String, Object> product;
  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int selectedSize = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Details"),
        ),
        body: Column(
          children: [
            Center(
                child: Text(widget.product['title'] as String,
                    style: Theme.of(context).textTheme.titleLarge)),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(widget.product['imageUrl'] as String),
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$${widget.product['price']}",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              (widget.product['size'] as List<int>).length,
                          itemBuilder: (context, index) {
                            final size =
                                (widget.product['size'] as List<int>)[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Center(
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedSize = size;
                                      });
                                    },
                                    child: Chip(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            30), // Optional: more pill-shaped
                                      ),
                                      labelPadding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      elevation: 10,
                                      backgroundColor: selectedSize == size
                                          ? Colors.black
                                          : Colors.white12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 12),
                                      label: Text(
                                        size.toString(),
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      side: const BorderSide(
                                          color: Colors.white12),
                                    )),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton.icon(
                          icon: const Icon(Icons.add_shopping_cart),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          label: const Text(
                            "Add To Cart",
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ],
                )),
          ],
        ));
  }
}
