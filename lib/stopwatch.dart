import 'package:flutter/material.dart';


class StopWatch extends StatefulWidget {
  @override
  _StopWatchState createState() => _StopWatchState();

  }


Widget stopwatch() {
	return Container(
		child: Column(
			children: <Widget>[
				Expanded(
					flex: 2,
					child: Container(
						alignment: Alignment.center,
						child: Text(
							"00:00:00",
							style: TextStyle(
								fontSize: 50.0,
								fontWeight: FontWeight.w700,
							),
						),
					),
				),
				Expanded(
					flex: 2,
					child: Container(
						child: Column(
							children: <Widget>[
								Row(
									children: <Widget>[
										RaisedButton(
											onPressed: (){},
											color: Colors.red,
											padding: EdgeInsets.symmetric(
												horizontal: 40.0,
												vertical: 15.0,
											),
											child: Text(
												"Stop",
												style: TextStyle(
														fontSize: 20.0,
														color: Colors.white
												),
											),
										)
									],
								)
							],
						),
					),
				),
			],
		),
	);
}



class _StopWatchState extends State<StopWatch> {
  @override
  Widget build(BuildContext context) {
	  // TODO: implement build
	  return  Scaffold(
		  backgroundColor: Colors.grey,
		  appBar: AppBar(
			  title: Text("TIMER",
				  style: TextStyle(
					  color: Colors.grey
				  ),
			  ),
			  elevation: 15.0,
			  backgroundColor: Colors.transparent,
		  ),
		  body: Center(
				  child: Column(
					  children: <Widget>[
						  Text(""
								  "The StopWatch",
						  ),
					  ],
				  )
		  ),
	  );


  }
}



Widget stopWatch() {
	return Container(
		child: Column(
			children: <Widget>[
				Expanded(
					flex: 2,
					child: Container(
						alignment: Alignment.center,
						child: Text(
							"00:00:00",
							style: TextStyle(
								fontSize: 50.0,
								fontWeight: FontWeight.w700,
							),
						),
					),
				),
				Expanded(
					flex: 2,
					child: Container(
						child: Column(
							children: <Widget>[
								Row(
									children: <Widget>[
										RaisedButton(
											onPressed: (){},
											color: Colors.red,
											padding: EdgeInsets.symmetric(
												horizontal: 40.0,
												vertical: 15.0,
											),
											child: Text(
												"Stop",
												style: TextStyle(
														fontSize: 20.0,
														color: Colors.white
												),
											),
										)
									],
								)
							],
						),
					),
				),
			],
		),
	);
}


