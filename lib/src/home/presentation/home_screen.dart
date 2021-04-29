import 'package:buddy_budge/src/invoice/presentation/add_invoice_screen.dart';
import 'package:buddy_budge/src/invoice/presentation/list_invoices_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomeScreen extends StatefulWidget {
  static final String screenName = "/homeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: _isEditing
              ? IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      _isEditing = false;
                    });
                  })
              : null,
          title: Text("Buddy Budge"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Contas"),
              Tab(text: "Grupo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: ListView.separated(
                        itemCount: 3,
                        separatorBuilder: (context, index) {
                          return Divider(height: 1);
                        },
                        itemBuilder: (context, index) {
                          return ListTile(
                            trailing: _isEditing
                                ? Checkbox(
                              tristate: false,
                              value: false,
                              onChanged: (bool) {},
                            )
                                : IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {}),
                            leading: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                              ),
                              child: Icon(Icons.description),
                            ),
                            isThreeLine: true,
                            title: Text("Energia"),
                            subtitle:
                            Text("Ult. fat: R\$131,0 \nP/ morador: R\$32,75"),
                            onTap: () => Navigator.pushNamed(
                                context, ListInvoicesScreen.screenName),
                          );
                        }),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ListView.separated(
                      itemCount: 3,
                      separatorBuilder: (context, index) {
                        return Divider(height: 1);
                      },
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.all(8.0),
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: Icon(Icons.person),
                          ),
                          title: Text("Lucas Duarte"),
                        );
                      }),
                )
              ],
            ),
          ]
        ),
        bottomNavigationBar: _isEditing
            ? Container(
                color: Colors.blue,
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:\nR\$ 130,00",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Pagar',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : null,
        floatingActionButton: _isEditing
            ? null
            : SpeedDial(
                icon: Icons.add,
                iconTheme: IconThemeData(color: Colors.white),
                activeIcon: Icons.close,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
                shape: CircleBorder(),
                children: [
                  SpeedDialChild(
                    child: Icon(Icons.monetization_on),
                    backgroundColor: Colors.white,
                    label: 'Pagar contas',
                    labelStyle: TextStyle(fontSize: 18.0),
                    onTap: () => setState(() {
                      _isEditing = true;
                    }),
                  ),
                  SpeedDialChild(
                    child: Icon(Icons.add_to_photos),
                    backgroundColor: Colors.white,
                    label: 'Cadastrar Conta',
                    labelStyle: TextStyle(fontSize: 18.0),
                    onTap: () => Navigator.pushNamed(
                        context, AddInvoiceScreen.screenName),
                  ),
                ],
              ),
      ),
    );
    ;
  }
}
