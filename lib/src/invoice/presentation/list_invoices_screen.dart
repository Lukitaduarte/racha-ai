import 'package:buddy_budge/src/invoice/presentation/add_invoice_screen.dart';
import 'package:flutter/material.dart';

class ListInvoicesScreen extends StatelessWidget {
  static const String screenName = "/listInvoices";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Buddy Budge"),
      ),
      body: Center(
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
                      trailing: IconButton(
                          icon: Icon(Icons.more_vert), onPressed: () {}),
                      isThreeLine: true,
                      title: Text("Abril"),
                      subtitle:
                          Text("Ult. fat: R\$131,0 \nP/ morador: R\$32,75"),
                      onTap: () {},
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        onPressed: () =>
            Navigator.pushNamed(context, AddInvoiceScreen.screenName),
      ),
    );
  }
}
