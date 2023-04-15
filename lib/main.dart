import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '最高！',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: const[
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //       TweetTitle(),
        //     ],
        //   ),
        // ),
        body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return const TweetTitle();
          },
        ),
      ),
    );
  }
}

class TweetTitle extends StatelessWidget {
  const TweetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/bSc87L-ma1NbJxFBlepLXcpRsdFCkC0P-NtONnWVvVZddA6rK0dXmYIrsnC88hOxntXLhz1WXLy349FtB2vJPS6nHAwhdX7KW0WpVQokf4QVEQvOesFMPnbfWh7JYNbG8q9JtD1hjp5e9eGXyMLWh1CZUV--e4lvXvSY5s6gkCOKF5DySzqFQ7G1xEfgLgTA-_d6OE41HTwdiTV2x0TvyOpGDUIF4_sxHAhttskoxyhwBTD-CsLuSmA3z3JsQMsBd7mX0LavIC2Wjjvz0ZXfO4l-96R50Op5OXyuljlgOTpPMfvf026eCJ_lYD_NRuj0WY-qzwemXEXhgrb2WwZR2QLwOtY3iLtxRyaa8dNVbCTKwrF-ZNq7ZpXmBu4t7jCijVrrOhDnZgWnxVgr4_RNrwbyF-9GFWxIF5usMLkFCsBZLfI_5nQkjDZOeek5--vifoTmmcvuPSwskTke42DtQr3YYrJ71LHHnU7B8lTri28X4KMF7piahmuMUZZmbdlO5LzYZ_62eMW0wg_6bdTf7NovePKp994i4J8ijUKvcDt9FRLFhxPUokgXyDquwVvWRMDfS_4nVwL232cNWX3qff_7hhqI40aD_DiNjgcRR33LRWwX3ljrKkAWpqlvqOdzLTCGp0qefLIfKlfxqyt0QgU_dg5N6c_hTcujSdrO4ziCNF44PBG99c9txklehXncONK3Xvd265HFkr5Vsv3CQJ_E-zuQL-XUtb-4jHSHPCZX4HAu_eBCAqYvPvVG-a-h3cM3kAv3DKhwm5-PDfPcnP-TILuLOSRYMhdww48OFpIyYJAdmRvCqoK1DVPTHYh9nyH5LudTECr82CK8N6in_qXZZPxH_jwMl9SgSGoJzCc8fU-XQ2cI7FqPmti-O1HA65FT8AbxaBh5l2goeBmvsfzZcz9Ef22Juh5diH4p7c1K8d__-z0XpovwihKXzlGfPjRDHFnc-6aLqBFn6khzAA=w1170-h1065-s-no?authuser=0"),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text("明治大学"),
                SizedBox(width: 8),
                Text("2022/3/4"),
              ]),
              const Text("最高すぎです！"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
