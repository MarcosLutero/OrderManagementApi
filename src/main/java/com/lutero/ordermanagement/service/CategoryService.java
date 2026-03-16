package com.lutero.ordermanagement.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lutero.ordermanagement.dto.category.CategoryRequest;
import com.lutero.ordermanagement.dto.category.CategoryResponse;
import com.lutero.ordermanagement.entity.Category;
import com.lutero.ordermanagement.exception.BusinessException;
import com.lutero.ordermanagement.exception.ResourceNotFoundException;
import com.lutero.ordermanagement.repository.CategoryRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;

    public CategoryResponse create(CategoryRequest request) {
        if (categoryRepository.existsByNameIgnoreCase(request.getName().trim())) {
            throw new BusinessException("Já existe uma categoria com esse nome");
        }

        Category category = new Category();
        category.setName(request.getName().trim());
        category.setDescription(request.getDescription());

        Category saved = categoryRepository.save(category);

        return toResponse(saved);
    }

    public List<CategoryResponse> findAll() {
        return categoryRepository.findAll().stream().map(this::toResponse).toList();
    }

    public CategoryResponse findById(Long id) {
        Category category = categoryRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Categoria não encontrada"));
        return toResponse(category);
    }

    public CategoryResponse update(Long id, CategoryRequest request) {
        Category category = categoryRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Categoria não encontrada"));

        if (request.getName() != null && !request.getName().isBlank()) {
            boolean alreadyExists = categoryRepository.existsByNameIgnoreCase(request.getName().trim())
                    && !category.getName().equalsIgnoreCase(request.getName().trim());

            if (alreadyExists) {
                throw new BusinessException("Já existe uma categoria com esse nome");
            }

            category.setName(request.getName().trim());
        }

        if (request.getDescription() != null) {
            category.setDescription(request.getDescription());
        }

        Category updated = categoryRepository.save(category);
        return toResponse(updated);
    }

    public void delete(Long id) {
        Category category = categoryRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Categoria não encontrada"));

        categoryRepository.delete(category);
    }

    private CategoryResponse toResponse(Category category) {
        return CategoryResponse.builder()
                .id(category.getId())
                .name(category.getName())
                .description(category.getDescription())
                .build();
    }

}
