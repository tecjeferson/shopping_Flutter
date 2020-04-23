import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/products/product-list.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        color: Color(0xFFF5F5F5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              SearchBox(),
              SizedBox(
                height: 20,
              ),
              Text('Categories',
                  style: TextStyle(
                    fontSize: 30,
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(height: 5),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('Best Selling',
                    style: TextStyle(
                      fontSize: 30,
                    )),
                FlatButton(
                  child: Text('See All'),
                  onPressed: () {},
                )
              ]),
              SizedBox(height: 5),
              Container(
                height: 300,
                child: ProductList(
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
