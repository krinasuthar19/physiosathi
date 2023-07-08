import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> _messages = [];
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 20,
                ),
                const Text(
                  "PhysioSathi",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: Image.asset("assets/images/menu.png"),
                  onPressed: () {},
                ),
                Container(
                  width: 20,
                ),
              ],
            ),
            Container(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(
                    width: 50,
                    child: Image.asset("assets/images/profile.png"),
                  ),
                  const Text(
                    "Dr.Rajvi Patel",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    width: 30,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.videocam_outlined,
                      color: Colors.grey,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    width: 20,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.call,
                      color: Colors.grey,
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  return _buildMessage(message);
                },
              ),
            ),
            _buildInputField(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessage(Message message) {
    final isMe = message.sender == Sender.Me;
    final bubbleColor = isMe ? Colors.green[200] : Colors.grey[300];
    final textColor = isMe ? const Color.fromARGB(255, 0, 0, 0) : Colors.black;

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: bubbleColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          message.content,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.photo_camera,
              color: Color.fromARGB(255, 18, 142, 64),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.mic,
              color: Color.fromARGB(255, 18, 142, 64),
            ),
            onPressed: () {},
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  hintText: 'Type a message...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.send,
              color: Color.fromARGB(255, 18, 142, 64),
            ),
            onPressed: () => _handleSubmitted(_textController.text),
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();

    setState(() {
      _messages.add(Message(content: text, sender: Sender.Me));
    });
  }
}

enum Sender { Me, Other }

class Message {
  final String content;
  final Sender sender;

  Message({required this.content, required this.sender});
}
