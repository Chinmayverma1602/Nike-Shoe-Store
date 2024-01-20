import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset('lib/images/logo2.jpg',
                height: 350,
                ),
                
                ),
                const SizedBox(height: 48),
        
                 const Text('Just Do It',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                 ),
                ),
              const SizedBox(height: 24),
              
                 const Text('Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                fontSize: 16,
                color: Colors.grey
                 ),
                 textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),

                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage() )),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: const Text('Shop Now',
                      style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      ),
                      
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}