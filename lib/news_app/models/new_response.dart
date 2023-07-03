class NewResponse {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? content;
  bool isLiked = false;
  Source? source;

  NewResponse(this.author, this.title, this.description, this.url,
      this.urlToImage, this.content, this.isLiked);

  NewResponse.fromJson(Map<String, dynamic> data) {
    source = Source.fromJson(data['source']);
    author = data['author'];
    title = data['title'];
    description = data['description'];
    url = data['url'];
    urlToImage = data['urlToImage'];
    content = data['content'];
    isLiked = false;
  }
}

class Source {
  String? id;

  String? name;

  Source(this.id, this.name);

  Source.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    name = data['name'];
  }
}
