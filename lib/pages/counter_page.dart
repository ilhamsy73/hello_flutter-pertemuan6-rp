import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/result_page.dart';
import 'package:hello_flutter/widgets/custom_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '$_count',
                style: const TextStyle(fontSize: 70, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Tekan tombol di bawah untuk mengubah value',
                style: TextStyle(fontSize: 25, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _decrement,
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: _increment,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
              CustomButton(
                  text: 'Go to result page',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(count: _count),
                      ),
                    );
                  }),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     elevation: 0,
              //   ),
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => ResultPage(count: _count),
              //       ),
              //     );
              //   },
              //   child: const Text('Go to result page'),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
