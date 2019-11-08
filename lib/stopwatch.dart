import 'dart:async';

import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
	@override
	Widget build(
			BuildContext context
			) {
		return Scaffold(
			backgroundColor: Colors.grey[900],
			appBar: AppBar(
				backgroundColor: Colors.transparent,
			),
			body: chronometre(),
		);
	}

	bool startispressed = true;
	bool stopispressed = true;
	bool resetispressed = true;
	String stoptimetodisplay = "00:00:00";
	var swatch = Stopwatch();
	final dur = const Duration(seconds : 1);

	
	void starttimer(){
		Timer(dur, keeprunning);
	}

	void keeprunning(){
		if(swatch.isRunning){
			starttimer();

		}
		setState(() {
		  stoptimetodisplay = swatch.elapsed.inHours.toString().padLeft(2,"0") + ":"
				  + (swatch.elapsed.inMinutes%60).toString().padLeft(2,"0")+ ":"
				  + (swatch.elapsed.inSeconds%60).toString().padLeft(2,"0");
		});
	}

	void startstopwatch() {
		setState(() {
			stopispressed = false;
			startispressed = false;
		});
		swatch.start();
		starttimer();
	}

	void stopstopwatch() {
setState(() {
  stopispressed = true;
  resetispressed = false;
});
swatch.stop();
	}

	void resetstopwatch() {
	setState(() {
	  startispressed = true;
	  resetispressed = true;
	});
	swatch.reset();
	stoptimetodisplay = "00:00:00";

	}


	Widget chronometre(
			) {
		return Column(
			children: <Widget>[
				Expanded(
					flex: 1,
					child: Container(
						alignment: Alignment.center,
						child: Text(
							stoptimetodisplay,
							style: TextStyle(
									fontSize: 50.0,
									fontWeight: FontWeight.w700,
									color: Colors.white
							),
						),
					),
				),
				Expanded(
					flex: 1,
					child: Container(
						color: Colors.grey[900],
						child: Column(
							mainAxisAlignment: MainAxisAlignment.spaceEvenly,
							children: <Widget>[
								Row(
									mainAxisAlignment: MainAxisAlignment.spaceEvenly,
									children: <Widget>[
										RaisedButton(
											onPressed: stopispressed ? null : stopstopwatch,
											color: Colors.deepOrange[400],
											padding: EdgeInsets.symmetric(
												horizontal: 50.0,
												vertical: 20.0,
											),
											child: Text(
												"Stop",
												style: TextStyle(
														fontSize: 20.0,
														color: Colors.white
												),
											),
										),
										RaisedButton(
											onPressed: resetispressed ? null : resetstopwatch,
											color: Colors.blue[400],
											padding: EdgeInsets.symmetric(
												horizontal: 50.0,
												vertical: 20.0,
											),
											child: Text(
												"Reset",
												style: TextStyle(
														fontSize: 20.0,
														color: Colors.white
												),
											),
										),
									],
								),
								RaisedButton(
									onPressed: startispressed ? startstopwatch : null,
									color: Colors.greenAccent[400],
									padding: EdgeInsets.symmetric(
										horizontal: 60.0,
										vertical: 25.0,
									),
									child: Text(
										"Start",
										style: TextStyle(
												fontSize: 20.0,
												color: Colors.white
										),
									),
								),
							],
						),
					),
				),
			],
		);
	}
 }

