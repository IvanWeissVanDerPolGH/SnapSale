import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:snapsale/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoryService {
  static const String _storageKey = 'categories';
  List<Category>? _cachedCategories;

  Future<List<Category>> loadCategories() async {
    if (_cachedCategories != null) {
      return _cachedCategories!;
    }

    final prefs = await SharedPreferences.getInstance();
    final String? categoriesJson = prefs.getString(_storageKey);

    if (categoriesJson != null) {
      final List<dynamic> jsonList = json.decode(categoriesJson) as List<dynamic>;
      _cachedCategories = jsonList.map((json) => Category.fromJson(json)).toList();
    } else {
      final String response = await rootBundle.loadString('assets/data/categories.json');
      final List<dynamic> data = json.decode(response) as List<dynamic>;
      _cachedCategories = data.map((json) => Category.fromJson(json)).toList();
      await saveCategories(_cachedCategories!);
    }

    return _cachedCategories!;
  }

  // Method to load a single category by ID
  Future<Category?> loadCategory(String categoryId) async {
    await loadCategories(); // Ensure categories are loaded
    return _cachedCategories?.firstWhere(
      (cat) => cat.id == categoryId,
    );
  }

  Future<void> saveCategories(List<Category> categories) async {
    final prefs = await SharedPreferences.getInstance();
    final String json = jsonEncode(categories.map((category) => category.toJson()).toList());
    await prefs.setString(_storageKey, json);
    _cachedCategories = categories;
  }

  void addCategory(Category category) {
    _cachedCategories?.add(category);
  }

  void updateCategory(String id, String newName) {
    final category = _cachedCategories?.firstWhere((cat) => cat.id == id);
    if (category != null) {
      category.updateName(newName);
    }
  }

  void deleteCategory(String id) {
    _cachedCategories?.removeWhere((cat) => cat.id == id);
  }
}
