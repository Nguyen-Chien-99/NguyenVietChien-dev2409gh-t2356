﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using xuongmocdev.Models;

namespace xuongmocdev.Controllers
{
    public class ProductController : Controller
    {
        private readonly DevXuongMocContext _context;
        public ProductController(DevXuongMocContext context)
        {
            _context = context;
        }
        public async Task<IActionResult>Index()
        {
            var data = await _context.Products.ToListAsync();
            return View(data);
        }
    }
}
