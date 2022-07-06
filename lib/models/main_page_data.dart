//models
import './movie.dart';
import './search_category.dart';

class MainPageData {
  final List<Movie> movies;
  final int? page;
  final String? searchCategory;
  final String? searchText;

  MainPageData(this.movies, this.page, this.searchCategory, this.searchText);

  MainPageData.initial() : movies = [], page = 1, searchCategory = SearchCategory.popular, searchText = '';

  MainPageData copyWith(
    {List<Movie>? movies, int? page, String? searchCategory, String? searchText}) {
      return MainPageData(
        movies ?? this.movies,
        page ?? this.page,
        searchCategory ?? this.searchCategory,
        searchText ?? this.searchText );


}
}