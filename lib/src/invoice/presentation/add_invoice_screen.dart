import 'package:flutter/material.dart';

class AddInvoiceScreen extends StatefulWidget {
  static final String screenName = "/invoiceScreen";

  @override
  _AddInvoiceScreenState createState() => _AddInvoiceScreenState();
}

class _AddInvoiceScreenState extends State<AddInvoiceScreen> {
  DateTime _overdueDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adic. Conta"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Categoria da conta',
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mês ref.',
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Valor da conta',
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.datetime,
                      controller: TextEditingController()
                        ..text =
                            "${_overdueDate.day}/${_overdueDate.month}/${_overdueDate.year}",
                      onTap: () async {
                        final DateTime date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate:
                              DateTime.now().subtract(Duration(days: 31)),
                          lastDate: DateTime.now().add(Duration(days: 31)),
                        );
                        setState(() {
                          _overdueDate = date ?? _overdueDate;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Vencimento',
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        print("adicionando fatura");
                      },
                      child: Text("adicionar"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
