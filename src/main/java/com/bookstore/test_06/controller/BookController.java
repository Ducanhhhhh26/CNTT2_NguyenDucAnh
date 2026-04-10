package com.bookstore.test_06.controller;

import com.bookstore.test_06.model.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/books")
public class BookController {

    private List<Book> getMockBooks() {
        List<Book> books = new ArrayList<>();
        books.add(new Book(1, "IT210", "Duc Anh", 250000));
        books.add(new Book(2, "JavaWeb", "Viet Trung", 350000));
        books.add(new Book(3, "Hau tu cốt java", "Huy Dinh", 300000));
        books.add(new Book(4, "Spring Web MVC", "Son Nguyen", 280000));
        return books;
    }
    @GetMapping
    public String listBooks(Model model) {
        model.addAttribute("books", getMockBooks());
        return "list";
    }

    @GetMapping("/{id}")
    public String bookDetail(@PathVariable("id") int id, Model model) {
        Book foundBook = null;
        for (Book book : getMockBooks()) {
            if (book.getId() == id) {
                foundBook = book;
                break;
            }
        }
        model.addAttribute("book", foundBook);
        return "book-detail";
    }
}
