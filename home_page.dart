import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    ("object build method call");
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 100,
                color: Color.fromARGB(255, 38, 95, 139),
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "Push ups",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            // SizedBox(height: 3.h),
            // IconButton(
            //   onPressed: () {
            //     setState(() {
            //       counter++;
            //       ("object Haroon $counter");
            //     });
            //   },
            //   icon: const Icon(
            //     Icons.add_box,
            //     size: 140,
            //   ),
            // ),
            SizedBox(height: 33.h),

            // ElevatedButton(
            //     onPressed: () {
            //       setState(() {
            //         counter++;
            //         ("object Haroon $counter");
            //       });
            //     },
            //     child: const Text(
            //       "increment no",
            //       style: TextStyle(
            //         fontSize: 30,
            //       ),
            //     )),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                  ("object Haroon $counter");
                });
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18), // <-- Radius
                  ),
                  backgroundColor: const Color.fromARGB(255, 38, 95, 139),
                  padding:
                      EdgeInsets.symmetric(vertical: 38.h, horizontal: 38.w)),
              child: const Text(
                '+',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.h),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter--;
                  ("object Haroon $counter");
                });
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18), // <-- Radius
                ),
                backgroundColor: const Color.fromARGB(255, 38, 95, 139),
                padding: EdgeInsets.symmetric(vertical: 38.h, horizontal: 40.w),
              ),
              child: const Text(
                '-',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 20.h),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                    // print("object Haroon $counter");
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18), // <-- Radius
                  ),
                  backgroundColor: const Color.fromARGB(255, 38, 95, 139),
                  padding:
                      EdgeInsets.symmetric(vertical: 46.h, horizontal: 35.w),
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
