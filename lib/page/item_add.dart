import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  late String _itemName;
  late String _description;
  late String _sellPrice;
  //late String _password;

  final GlobalKey<FormState> _itemFormKey = GlobalKey<FormState>();

  Widget? _buildItemName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Enter the name of the product'),
      keyboardType: TextInputType.name,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required*';
        }
      },
      onSaved: (String? value) {
        _itemName = value!;
      },
    );
  }

  Widget? _buildDescription() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Describe the product!'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Description is Required*';
        }
      },
      onSaved: (String? value) {
        _description = value!;
      },
    );
  }

  Widget? _buildPrice() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Sell Price'),
      maxLength: 10,
      keyboardType: TextInputType.number,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required*';
        }
      },
      onSaved: (String? value) {
        _sellPrice = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var _itemFormKey;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text("Green App"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        elevation: 0.00,
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
            key: _itemFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 ElevatedButton(
                  child: Text(
                    'Add Image',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () => {
                    Navigator.pushNamed(context, '/page2', arguments: {})}),
                _buildItemName()!,
                _buildDescription()!,
                _buildPrice()!,
                SizedBox(height: 100),
                ElevatedButton(
                  child: Text(
                    'Add Item',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () => {
                    if (!_itemFormKey.currentState!.validate()) {},
                    _itemFormKey.currentState?.save(),
                    print(_itemName),
                    print(_description),
                    print(_sellPrice),
                  },
                )
                  
                ],
            )),
      ),
    ));
  }
}
