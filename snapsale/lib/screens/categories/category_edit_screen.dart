import 'package:flutter/material.dart';
import 'package:snapsale/models/category.dart';
import 'package:snapsale/services/category_service.dart';

class CategoryEditScreen extends StatefulWidget {
  final Category? category;

  const CategoryEditScreen({Key? key, this.category}) : super(key: key);

  @override
  _CategoryEditScreenState createState() => _CategoryEditScreenState();
}

class _CategoryEditScreenState extends State<CategoryEditScreen> {
  final TextEditingController _nameController = TextEditingController();
  final CategoryService _categoryService = CategoryService();

  @override
  void initState() {
    super.initState();
    if (widget.category != null) {
      _nameController.text = widget.category!.name;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

Future<void> _saveCategory() async {
  if (widget.category != null) {
    // Update existing category
    _categoryService.updateCategory(widget.category!.id, _nameController.text);
  } else {
    // Add new category
    final newCategory = Category(id: DateTime.now().toString(), name: _nameController.text);
    _categoryService.addCategory(newCategory);
  }

  // Await the result of loadCategories before saving
  List<Category> categories = await _categoryService.loadCategories();
  await _categoryService.saveCategories(categories);

  Navigator.pop(context);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category == null ? 'Add Category' : 'Edit Category'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Category Name'),
            ),
            ElevatedButton(
              onPressed: _saveCategory,
              child: Text(widget.category == null ? 'Add' : 'Save'),
            ),
          ],
        ),
      ),
    );
  }
}
