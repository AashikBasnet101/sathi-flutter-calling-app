import 'package:flutter/material.dart';
import 'package:sathi/call_page.dart';

class SathiJoinCallScreen extends StatefulWidget {
  const SathiJoinCallScreen({super.key});

  @override
  State<SathiJoinCallScreen> createState() => _SathiJoinCallScreenState();
}

class _SathiJoinCallScreenState extends State<SathiJoinCallScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _callIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            // ---------- Logo ----------
            Center(
              child: Image.asset(
                'assets/sathi.png',
                height: MediaQuery.of(context).size.height * 0.4,

              ),
            ),

            const SizedBox(height: 10),

            // ---------- Card Container ----------
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Join a Call",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ---------- Name TextField ----------
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: "Enter Your Name",
                      prefixIcon: Icon(Icons.person),
                      filled: true,
                      fillColor: const Color(0xfff0f2f5),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ---------- Call ID TextField ----------
                  TextField(
                    controller: _callIdController,
                    decoration: InputDecoration(
                      labelText: "Enter Call ID",
                      prefixIcon: Icon(Icons.video_call_outlined),
                      filled: true,
                      fillColor: const Color(0xfff0f2f5),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // ---------- Gradient Button ----------
                  InkWell(
                    onTap: () {
                      if (_nameController.text.isNotEmpty &&
                          _callIdController.text.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CallPage(
                              callId: _callIdController.text,
                              userName: _nameController.text,
                            ),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 52,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xff4e8cff),
                            Color(0xff6a5cff),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Join Call",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
