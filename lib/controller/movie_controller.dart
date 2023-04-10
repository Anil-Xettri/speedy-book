import 'dart:developer';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedy_book/model/movies.dart';
import 'package:speedy_book/repo/movies/movies_repo.dart';
import 'package:video_player/video_player.dart';

class MovieController extends GetxController {
  Rxn<Movie> movie = Rxn<Movie>();
  RxBool isLoading = RxBool(false);

  RxString currentTab = RxString("details");

  RxBool videoInitialized = RxBool(false);
  late FlickManager flickManager;
  late VideoPlayerController videoPlayerController;

  RxList<String> showDates = RxList();
  RxString selectedDate = RxString("");
  RxMap<String, Show> shows = RxMap();

  PageController pageController = PageController(keepPage: false);

  @override
  void onInit() {
    var data = Get.arguments;
    movie.value = data[0];
    getMovieDetails();
    super.onInit();
  }

  void changeTab(String tab) {
    if (currentTab.value == tab) return;
    currentTab.value = tab;
    if (tab == "details") {
      pageController.animateToPage(0,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    } else if (tab == "show_details") {
      pageController.animateToPage(1,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    }
  }

  void getMovieDetails() async {
    isLoading.value = true;

    await MoviesRepo.getMovieDetails(
      movieId: movie.value!.id!,
      onSuccess: (movie) {
        this.movie.value = movie;
        log("Trailer Url ====> ${this.movie.value!.trailerUrl}");
        videoPlayerController = VideoPlayerController.network(
            this.movie.value!.trailerUrl!,
            videoPlayerOptions: VideoPlayerOptions(
                mixWithOthers: true, allowBackgroundPlayback: true));
        videoPlayerController.addListener(() {});
        videoPlayerController
            .initialize()
            .then((value) => videoInitialized.value = true);
        flickManager =
            FlickManager(videoPlayerController: videoPlayerController);
        videoInitialized.value = true;
        getShows();
        isLoading.value = false;
      },
      onError: (message) {},
    );
  }

  getShows() {
    showDates.add(DateTime.now().toString());
    showDates.add(DateTime.now().add(const Duration(days: 1)).toString());
    selectedDate.value = showDates[0];
  }

  void selectShowDate(String showDate) {
    selectedDate.value = showDate;
  }

  @override
  void onClose() {
    videoPlayerController.pause();
    videoPlayerController.dispose();
    flickManager.dispose();
    log("Disposed Controller");
    super.onClose();
  }
}
