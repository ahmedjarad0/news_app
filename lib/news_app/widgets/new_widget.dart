import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:review0/news_app/models/new_response.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';


class NewModel extends StatelessWidget {
  const NewModel(this.response, this.function, {Key? key}) : super(key: key);
  final NewResponse response;
  final Function function;

  sharedMessage(){
    Share.share(response.title??'');

  }

  connectedWhatsApp(String phone, String message) {
    String whatsApp =
        "whatsapp://send?phone=$phone&text=${Uri.encodeFull(message)}";
    launchUrl(Uri.parse(whatsApp));
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(
      Uri.parse('sms:0597181403'),
      // mode: LaunchMode.externalApplication,
    )) {}
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: () {
          // _launchUrl();
          // sharedMessage();
          // connectedWhatsApp('972597181403', 'Hello Ahmed');
        },
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: response.urlToImage ?? 'not found',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) {
                return Image.network(
                  'https://thumbs.dreamstime.com/b/computer-error-message-screen-system-warning-179071664.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                );
              },
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              children: [
                Text(
                  response.title ?? 'Not Fount',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        response.content ?? 'Not Fount',
                        style: TextStyle(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          function(response);
                          // _launchUrl();
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: response.isLiked ? Colors.red : Colors.grey,
                        )),
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
