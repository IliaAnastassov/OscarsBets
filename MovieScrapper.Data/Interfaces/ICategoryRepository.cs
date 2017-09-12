﻿using MovieScrapper.Entities;
using System.Collections.Generic;

namespace MovieScrapper.Data.Interfaces
{
    public interface ICategoryRepository
    {
        void AddCategory(Category category);

        void AddMovie(int categoryId, int movieId);

        bool AreWinnersSet();

        void DeleteCategory(int id);

        void EditCategory(Category category);

        IEnumerable<Category> GetAll();

        Category GetCategory(int id);

        Movie GetMovieInCategory(int categoryId, int movieId);

        bool HasMovieInCategory(int categoryId, int movieId);

        void MarkAsWinner(int categoryId, int movieId);

        void RemoveMovieFromCategory(int categoryId, int movieId);                           

    }
}
