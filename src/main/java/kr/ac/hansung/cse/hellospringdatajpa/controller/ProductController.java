package kr.ac.hansung.cse.hellospringdatajpa.controller;

import kr.ac.hansung.cse.hellospringdatajpa.entity.Product;
import kr.ac.hansung.cse.hellospringdatajpa.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    // 상품 목록
    @GetMapping
    public String viewHomePage(Model model) {
        List<Product> listProducts = productService.listAll();
        model.addAttribute("listProducts", listProducts);
        return "index";
    }

    // 등록 폼
    @GetMapping("/new")
    public String showNewForm(Model model) {
        model.addAttribute("product", new Product());
        return "new_product";
    }

    // 등록/수정 처리
    @PostMapping("/save")
    public String saveProduct(@ModelAttribute("product") Product product, BindingResult result, Model model) {
        if (product.getPrice() < 0) {
            result.rejectValue("price", "error.product", "가격은 0 이상이어야 합니다.");
            if (product.getId() == null) {
                return "new_product";
            } else {
                return "edit_product";
            }
        }
        productService.save(product);
        return "redirect:/products";
    }

    // 수정 폼
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        Product product = productService.get(id);
        model.addAttribute("product", product);
        return "edit_product";
    }

    // 삭제
    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable("id") Long id) {
        productService.delete(id);
        return "redirect:/products";
    }
}
