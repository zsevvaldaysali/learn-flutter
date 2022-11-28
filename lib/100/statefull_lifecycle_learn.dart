import 'package:flutter/material.dart';

class StatefullLifecycleLearn extends StatefulWidget {
  //değişmez bir widgettır sadece data alır verir
  const StatefullLifecycleLearn({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<StatefullLifecycleLearn> createState() => _StatefullLifecycleLearnState();
}

class _StatefullLifecycleLearnState extends State<StatefullLifecycleLearn> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    // initState'ten sonra çalışır
    super.didChangeDependencies();
    print("c");
  }

  @override
  void didUpdateWidget(covariant StatefullLifecycleLearn oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

  void dispose() {
    super.dispose();
    _message = "";
  }

  @override
//initState'ten sonra ekran çizilir
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();

    print("a");
  }

  void _computeName() {
    if (_isOdd) {
      _message += " çift ";
    } else {
      _message += " tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
