import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfinitiScreen extends StatefulWidget {
  const InfinitiScreen({super.key});

  @override
  State<InfinitiScreen> createState() => _InfinitiScreenState();
}

class _InfinitiScreenState extends State<InfinitiScreen> {
  List<int> imagesId = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    addFiveImages();
    isLoading = false;

    if (!isMounted) return;
    setState(() {});

    moveScrollToBottom();
  }

  Future<void> onRefresh() async {
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    if (!isMounted) return;

    isLoading = false;

    final lastId = imagesId.last;
    imagesId.clear();
    imagesId.add(lastId + 1);
    addFiveImages();
    setState(() {});
  }

  void moveScrollToBottom() {
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent)
      return;

    scrollController.animateTo(
      scrollController.position.pixels + 120,
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  void addFiveImages() {
    //Obtener el ultimo elemento de la lista
    final lastId = imagesId.last;

    imagesId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scroll Infinito')),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: onRefresh,
          edgeOffset: 10,
          strokeWidth: 2,
          child: ListView.builder(
            controller: scrollController, // <- Aquí está el cambio
            itemCount: imagesId.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: const AssetImage('assets/images/Loading.gif'),
                image: NetworkImage(
                  'https://picsum.photos/id/${imagesId[index]}/500/300',
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: isLoading
            ? SpinPerfect(child: const Icon(Icons.refresh_rounded))
            : FadeIn(child: const Icon(Icons.arrow_back)),
      ),
    );
  }
}
