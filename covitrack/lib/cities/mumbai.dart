import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Mumbai extends StatefulWidget {
  Mumbai({Key key}) : super(key: key);
  final String title = 'Launch Url';

  @override
  _MumbaiState createState() => _MumbaiState();
}

class _MumbaiState extends State<Mumbai> {
  Future<void> _launched;
  String phoneNumber = '';
  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
        );
      }
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mumbai',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(                      //---> scroll view
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(14.0),          //---> padding, vo alag alag screens ka issue solve
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 15.0),
                  Card(
                    color: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      // width: 370,                                            //---> no need of width now                            
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Government",
                            style: TextStyle(
                                color: Colors.green[600],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("King Edward Memorial Hospital",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(
                            "Address: Acharya Donde Marg, Parel East, Parel, Mumbai, Maharashtra 400012",
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: 40,
                            child: TextButton(
                              child: const Text(
                                'Open In Google Maps',
                                style: TextStyle(color: Colors.blue),
                              ),
                              onPressed: () {
                                setState(() {
                                  _launched = _launchUniversalLinkIos(
                                      'https://www.google.com/maps/dir//king+edward+memorial+hospital+mumbai+maharashtra/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3be7cee53670c759:0x3509dc5c13cbc2e0!2m2!1d72.8415408!2d19.0025221');
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 30,
                            child: TextButton(
                              child: const Text('Call',
                                  style: TextStyle(fontSize: 15)),
                              onPressed: () {
                                setState(() {
                                  _launched = _makePhoneCall('tel:022 2410 7000');
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Card(
                    color: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      width: 370,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Private",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Saifee Hospital",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(
                            "Address: 15/17, Maharshi Karve Rd, Charni Road East, Girgaon, Mumbai, Maharashtra 400004",
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: 40,
                            child: TextButton(
                              child: const Text('Open In Google Maps'),
                              onPressed: () {
                                setState(() {
                                  _launched = _launchUniversalLinkIos(
                                      'https://www.google.com/maps/dir//saifee+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7ce1a9b19f6e5:0xc8b9c2b8a00a89ae?sa=X&ved=2ahUKEwjZ-rGDgbfxAhXn8HMBHfzNAncQ9RcwHHoECEwQBQ');
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 30,
                            child: TextButton(
                              child: const Text('Call',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              onPressed: () {
                                setState(() {
                                  _launched = _makePhoneCall('tel:+917506514832');
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Card(
                    color: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      width: 370,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Private",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Lilavati Hospital",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(
                            "Address: A-791, Bandra Reclamation Rd, General Arunkumar Vaidya Nagar, Bandra West, Mumbai, Maharashtra 400050",
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: 40,
                            child: TextButton(
                              child: const Text('Open In Google Maps'),
                              onPressed: () {
                                setState(() {
                                  _launched = _launchUniversalLinkIos(
                                      'https://www.google.com/maps/dir//lilavati+hospital+mumbai/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7c938c9dfd491:0x88790013d219e1cc?sa=X&ved=2ahUKEwjdvN6agbfxAhVT4XMBHSUDBcsQ9RcwKHoECF0QBA');
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 30,
                            child: TextButton(
                              child: const Text('Call',
                                  style: TextStyle(fontSize: 15)),
                              onPressed: () {
                                setState(() {
                                  _launched =
                                      _makePhoneCall('tel:+91 9769250010');
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
