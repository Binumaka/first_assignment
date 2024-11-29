import 'package:flutter/material.dart';

class CircleAreaView extends StatefulWidget {
  const CircleAreaView({super.key});

  @override
  State<CircleAreaView> createState() => _CircleAreaViewState();
}

class _CircleAreaViewState extends State<CircleAreaView> {
  final radiusController = TextEditingController(text: '0');
  double area = 0;

  // Global key for form state
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Area Calculator'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: radiusController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter radius of the circle',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the radius';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              Text(
                'Area: $area',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        double radius = double.parse(radiusController.text);
                        area = 3.14159 * radius * radius;
                      });
                    }
                  },
                  child: const Text('Calculate Area'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
