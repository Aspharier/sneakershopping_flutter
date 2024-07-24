import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershopping_flutter/models/cart.dart';
import 'package:sneakershopping_flutter/models/shoe.dart';

class CartItem extends StatefulWidget {

  Shoe shoe;
  CartItem({super.key,
    required this.shoe,
  });


  @override
  State<CartItem> createState() => _CarItemState();
}

class _CarItemState extends State<CartItem> {

  // remove item from cart
  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );;
  }
}



