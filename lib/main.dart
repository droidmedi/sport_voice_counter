import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
import 'classe count.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arabic Voice Counter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> _oFormKeyy = GlobalKey<FormState>();
  TextEditingController _controller;
  TextEditingController _controllerr;

  //String _initialValue;
  String _valueChanged = '';
  String _valueToValidate = '';
  String _valueSaved = '';
  String _valueChangedd = '';
  String _valueToValidatee = '';
  String _valueSavedd = '';
  String _valueChangeddd = '';
  String _valueToValidateee = '';
  String _valueSaveddd = '';
  AudioCache audioCache = new AudioCache();

  final List<Map<String, dynamic>> _items = [
    {
      'value': '10',
      'label': 'DIX',
      'icon': Icon(Icons.stop),
    },
    {
      'value': '15',
      'label': 'QUIZ',
      'icon': Icon(Icons.fiber_manual_record),
      'textStyle': TextStyle(color: Colors.red),
    },
    {
      'value': '20',
      'label': 'VINGT',
      // 'enable': false,
      'icon': Icon(Icons.grade),
    },
  ];
  final List<Map<String, dynamic>> _itemss = [
    {
      'value': '1',
      'label': '1',
      'icon': Icon(Icons.stop),
    },
    {
      'value': '2',
      'label': '2',
      'icon': Icon(Icons.fiber_manual_record),
      'textStyle': TextStyle(color: Colors.red),
    },


    {
      'value': '3',
      'label': '3',
      // 'enable': false,
      'icon': Icon(Icons.grade),
    },
  ];
  final List<Map<String, dynamic>> _itemsss = [
    {
      'value': 'hsabAr.mp3',
      'label': 'arabic',
      'icon': Icon(Icons.stop),
    },
    {
      'value': 'hsabAr.mp3',
      'label': 'arabic',
      'icon': Icon(Icons.fiber_manual_record),
      'textStyle': TextStyle(color: Colors.red),
    },
    {
      'value': 'hsabFr.mp3',
      'label': 'francais',
      // 'enable': false,
      'icon': Icon(Icons.grade),
    },
  ];

  @override
  void initState() {
    super.initState();

    //_initialValue = 'starValue';
    _controller = TextEditingController(text: 'starValue');

    _getValue();
  }

  /// This implementation is just to simulate a load data behavior
  /// from a data base sqlite or from a API
  Future<void> _getValue() async {
    await Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        //_initialValue = 'circleValue';
        _controller.text = 'circleValue';
      });
    });
  }

  var count = new Count();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('voice counter'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Form(
          key: _oFormKey,
          // key: _oFormKey,
          child: Column(
            children: <Widget>[
              SelectFormField(
                //type: SelectFormFieldType.dialog,
                controller: _controller,
                //initialValue: _initialValue,
                icon: Icon(Icons.add_alarm,textDirection: TextDirection.rtl,),
                labelText: 'nombre a compté',
                changeIcon: true,
                dialogTitle: 'Pick a item',
                dialogCancelBtn: 'CANCEL',
                enableSearch: true,
                dialogSearchHint: 'Search item',
                items: _items,
                onChanged: (val) => setState(() => _valueChanged = val),
                validator: (val) {
                  setState(() => _valueToValidate = val);
                  return null;
                },
                onSaved: (val) => setState(() => _valueSaved = val),
              ),
              SelectFormField(
                //type: SelectFormFieldType.dialog,
                controller: _controller,
                //initialValue: _initialValue,
                icon: Icon(Icons.accessibility_new),
                labelText: 'nombre de serie',
                changeIcon: true,
                dialogTitle: 'Pick a item',
                dialogCancelBtn: 'CANCEL',
                enableSearch: true,
                dialogSearchHint: 'Search item',
                items: _itemss,
                onChanged: (vall) => setState(() => _valueChangedd = vall),
                validator: (vall) {
                  setState(() => _valueToValidatee = vall);
                  return null;
                },
                onSaved: (vall) => setState(() => _valueSavedd = vall),
              ),
              SelectFormField(
                //type: SelectFormFieldType.dialog,
                controller: _controller,
                //initialValue: _initialValue,
                icon: Icon(Icons.airplanemode_active),
                labelText: 'langue',
                changeIcon: true,
                dialogTitle: 'Pick a item',
                dialogCancelBtn: 'CANCEL',
                enableSearch: true,
                dialogSearchHint: 'Search item',
                items: _itemsss,
                onChanged: (vall) => setState(() => _valueChangeddd = vall),
                validator: (vall) {
                  setState(() => _valueToValidateee = vall);
                  return null;
                },
                onSaved: (vall) => setState(() => _valueSaveddd = vall),
              ),
              SizedBox(height: 15),
              Card(
                elevation: 2.2,
                shadowColor: Colors.red,
                semanticContainer: false,
                child: Text(
                  'Nombre a compté choisi:',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.2),
                  textAlign: TextAlign.center,
                ),

              ),
              SizedBox(height: 5),
              Card(
                  elevation: 2.2,
                  shadowColor: Colors.blue,
                  semanticContainer: false,
                  child: SelectableText(_valueChanged,style: TextStyle(fontSize: 30.5),)),
              SizedBox(height: 10),
              Card(
                elevation: 2.2,
                shadowColor: Colors.red,
                semanticContainer: false,
                child: Text(
                  'Nombre de serie a choisi:',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.2),
                  textAlign: TextAlign.center,
                ),

              ),

              Card(
                  elevation: 2.2,
                  shadowColor: Colors.blue,
                  semanticContainer: false,
                  child: SelectableText(_valueChangedd,style: TextStyle(fontSize: 30.5),)),
              SizedBox(height: 10),
              SizedBox(height: 5),
              Card(
                elevation: 2.2,
                shadowColor: Colors.red,
                semanticContainer: false,
                child: Text(
                  'Langue:',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.2),
                  textAlign: TextAlign.center,
                ),

              ),
              SizedBox(height: 5),
              Card(
                  elevation: 2.2,
                  shadowColor: Colors.blue,
                  semanticContainer: false,
                  child: SelectableText(_valueChangeddd,style: TextStyle(fontSize: 30.5),)),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  if (_valueChanged == "10") {
                    audioCache.play(_valueChangeddd);
                  }
                },
                child: Text('GO'),
              ),
              SizedBox(height: 10),
           

              RaisedButton(
                onPressed: () {
                  final loForm = _oFormKey.currentState;
                  loForm.reset();

                  setState(() {
                    _valueChanged = '';
                    _valueToValidate = '';
                    _valueSaved = '';
                  });
                  setState(() {
                    _valueChangedd = '';
                    _valueToValidatee = '';
                    _valueSavedd = '';
                  });
                  setState(() {
                    _valueChangeddd = '';
                    _valueToValidateee = '';
                    _valueSaveddd = '';
                  });
                },
                child: Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
