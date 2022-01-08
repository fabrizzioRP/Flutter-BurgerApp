import 'package:flutter/material.dart';
//
import 'selected_food_screen.dart';
import 'package:burger_app/themes/themes.dart';
import 'package:burger_app/widgets/custom_navigator_bar.dart';

class OptionsFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('BURGER',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black)),
            Text('C I T Y',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.black)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, color: primary),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // definicion de direccion :
          _DateTimes(Colors.black.withOpacity(0.9),
              'No. 02, 6th Lane, Colombo 03', 'Delivery Address'),
          // fecha actual :
          _DateTimes(Colors.blueGrey.shade900, '08 / 01 / 2022  06:50:00 PM',
              'Delivery Date & Time'),
          // Tables Food :
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: _TablesMenusOpts(),
            ),
          ),
          // Botom secret menu :
          _ButtomMoreMenus(),
        ],
      ),
      bottomNavigationBar: CustomNavigatorBar(),
    );
  }
}

class _DateTimes extends StatelessWidget {
  final String title;
  final String address;
  final Color color;
  const _DateTimes(this.color, this.address, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 100,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(this.title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22)),
          SizedBox(height: 10),
          Text(this.address, style: TextStyle(color: primary))
        ],
      ),
    );
  }
}

class _ButtomMoreMenus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text('Secret Menu',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class _TablesMenusOpts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 620,
      child: Table(
        children: <TableRow>[
          TableRow(
            children: [
              _TableRowsMenus('Combos Hamburgesas', 'assets/hamburger.png'),
              _TableRowsMenus('Fajitas', 'assets/fajita.png'),
            ],
          ),
          TableRow(
            children: [
              _TableRowsMenus('Salchipapas', 'assets/salchipapa.png'),
              _TableRowsMenus('Pizzas', 'assets/pizza.png'),
            ],
          ),
        ],
      ),
    );
  }
}

class _TableRowsMenus extends StatelessWidget {
  final String description;
  final String image;
  const _TableRowsMenus(this.description, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => SelectedFoodScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              // IMAGEN :
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 125,
                child: Image.asset(this.image),
              ),
              SizedBox(height: 20),
              // DESCRIPTION :
              Text(
                this.description,
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
