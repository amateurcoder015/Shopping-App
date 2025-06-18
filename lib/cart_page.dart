import 'package:flutter/material.dart';
import 'package:shop_app/cart_provider.dart';
import 'package:provider/provider.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cart;
    //final cart = context.watch<CartProvider>().cart;
    return Scaffold(
      appBar: AppBar(title: const Text("Your Cart")),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final CartItem = cart[index];

          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white10,
              backgroundImage: AssetImage(CartItem['imageUrl'].toString()),
            ),
            trailing: IconButton(onPressed: (){
              showDialog(barrierDismissible: false,context: context, builder:(context){
                
                return AlertDialog(
                  title: const Text("Delete Item"),
                  content: const Text("Are you sure you want to delete this item?"),
                  actions: [
                    TextButton(onPressed: () {
                      
                      Navigator.of(context).pop();
                    }, child: const Text("Cancel")),
                    TextButton(onPressed: () {
                      // context.read<CartProvider>().removeProduct(CartItem);
                      Provider.of<CartProvider>(context, listen: false).removeProduct(CartItem);
                      Navigator.of(context).pop();
                    }, child: const Text("Delete"))
                  ],);
              });
            }, icon: Icon(Icons.delete, color: Colors.red,)),
            title: Text(CartItem['title'].toString(),
            style: Theme.of(context).textTheme.bodySmall,),
            subtitle: Text('Size: ${CartItem['size']}'),
            );
        } 
      )
    );
  }
}