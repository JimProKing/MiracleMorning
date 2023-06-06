import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _loged = prefs.getBool('ff_loged') ?? _loged;
    });
    _safeInit(() {
      _name = prefs.getString('ff_name') ?? _name;
    });
    _safeInit(() {
      _GoalTime = prefs.getString('ff_GoalTime') ?? _GoalTime;
    });
    _safeInit(() {
      _id = prefs.getInt('ff_id') ?? _id;
    });
    _safeInit(() {
      _temp1 = prefs.getInt('ff_temp1') ?? _temp1;
    });
    _safeInit(() {
      _yrList =
          prefs.getStringList('ff_yrList')?.map(int.parse).toList() ?? _yrList;
    });
    _safeInit(() {
      _monList = prefs.getStringList('ff_monList')?.map(int.parse).toList() ??
          _monList;
    });
    _safeInit(() {
      _dayList = prefs.getStringList('ff_dayList')?.map(int.parse).toList() ??
          _dayList;
    });
    _safeInit(() {
      _total = prefs.getInt('ff_total') ?? _total;
    });
    _safeInit(() {
      _isDeploy = prefs.getBool('ff_isDeploy') ?? _isDeploy;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? _value) {
    _selectedDate = _value;
  }

  bool _loged = false;
  bool get loged => _loged;
  set loged(bool _value) {
    _loged = _value;
    prefs.setBool('ff_loged', _value);
  }

  String _name = '';
  String get name => _name;
  set name(String _value) {
    _name = _value;
    prefs.setString('ff_name', _value);
  }

  String _GoalTime = '';
  String get GoalTime => _GoalTime;
  set GoalTime(String _value) {
    _GoalTime = _value;
    prefs.setString('ff_GoalTime', _value);
  }

  int _id = 0;
  int get id => _id;
  set id(int _value) {
    _id = _value;
    prefs.setInt('ff_id', _value);
  }

  int _temp1 = 0;
  int get temp1 => _temp1;
  set temp1(int _value) {
    _temp1 = _value;
    prefs.setInt('ff_temp1', _value);
  }

  List<int> _yrList = [];
  List<int> get yrList => _yrList;
  set yrList(List<int> _value) {
    _yrList = _value;
    prefs.setStringList('ff_yrList', _value.map((x) => x.toString()).toList());
  }

  void addToYrList(int _value) {
    _yrList.add(_value);
    prefs.setStringList('ff_yrList', _yrList.map((x) => x.toString()).toList());
  }

  void removeFromYrList(int _value) {
    _yrList.remove(_value);
    prefs.setStringList('ff_yrList', _yrList.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYrList(int _index) {
    _yrList.removeAt(_index);
    prefs.setStringList('ff_yrList', _yrList.map((x) => x.toString()).toList());
  }

  void updateYrListAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_yrList[_index]);
    prefs.setStringList('ff_yrList', _yrList.map((x) => x.toString()).toList());
  }

  List<int> _monList = [];
  List<int> get monList => _monList;
  set monList(List<int> _value) {
    _monList = _value;
    prefs.setStringList('ff_monList', _value.map((x) => x.toString()).toList());
  }

  void addToMonList(int _value) {
    _monList.add(_value);
    prefs.setStringList(
        'ff_monList', _monList.map((x) => x.toString()).toList());
  }

  void removeFromMonList(int _value) {
    _monList.remove(_value);
    prefs.setStringList(
        'ff_monList', _monList.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMonList(int _index) {
    _monList.removeAt(_index);
    prefs.setStringList(
        'ff_monList', _monList.map((x) => x.toString()).toList());
  }

  void updateMonListAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_monList[_index]);
    prefs.setStringList(
        'ff_monList', _monList.map((x) => x.toString()).toList());
  }

  List<int> _dayList = [];
  List<int> get dayList => _dayList;
  set dayList(List<int> _value) {
    _dayList = _value;
    prefs.setStringList('ff_dayList', _value.map((x) => x.toString()).toList());
  }

  void addToDayList(int _value) {
    _dayList.add(_value);
    prefs.setStringList(
        'ff_dayList', _dayList.map((x) => x.toString()).toList());
  }

  void removeFromDayList(int _value) {
    _dayList.remove(_value);
    prefs.setStringList(
        'ff_dayList', _dayList.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromDayList(int _index) {
    _dayList.removeAt(_index);
    prefs.setStringList(
        'ff_dayList', _dayList.map((x) => x.toString()).toList());
  }

  void updateDayListAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_dayList[_index]);
    prefs.setStringList(
        'ff_dayList', _dayList.map((x) => x.toString()).toList());
  }

  int _total = 0;
  int get total => _total;
  set total(int _value) {
    _total = _value;
    prefs.setInt('ff_total', _value);
  }

  bool _isDeploy = true;
  bool get isDeploy => _isDeploy;
  set isDeploy(bool _value) {
    _isDeploy = _value;
    prefs.setBool('ff_isDeploy', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
