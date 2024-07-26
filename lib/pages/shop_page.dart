import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershopping_flutter/components/shoe_tile.dart';
import 'package:sneakershopping_flutter/models/cart.dart';
import 'package:sneakershopping_flutter/models/shoe.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context,value,child) => Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search',
                style: TextStyle(color: Colors.grey),),
              Icon(Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),


        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text('everyone Flies.. some fly longer than others',
            style: TextStyle(color: Colors.grey[600]),),
        ),

        // hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text('See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10,),

        Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) {

            // get a shoe from shop list
            Shoe shoe = value.getShoeList()[index];

            // return the shoe
            return ShoeTile(
              shoe: shoe,
            );
          }, ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 100.0 , left: 25.0, right: 25.0),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    ),
    );
  }
}
