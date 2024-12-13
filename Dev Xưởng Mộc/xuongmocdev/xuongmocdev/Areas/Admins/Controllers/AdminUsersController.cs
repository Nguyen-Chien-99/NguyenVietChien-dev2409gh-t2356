using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using xuongmocdev.Models;

namespace DevXuongMoc.Areas.Admins.Controllers
{
    [Area("Admins")]
    public class AdminUsersController : Controller
    {
        private readonly DevXuongMocContext _context;

        public AdminUsersController(DevXuongMocContext context)
        {
            _context = context;
        }

        // GET: Admins/AdminUsers
        public async Task<IActionResult> Index(string searchString)
        {
            ViewData["SearchString"] = searchString;

            // Truy vấn danh sách Admin Users
            var users = from u in _context.AdminUsers
                        select u;

            // Lọc dữ liệu nếu có từ khóa tìm kiếm
            if (!string.IsNullOrEmpty(searchString))
            {
                users = users.Where(u => u.Name.Contains(searchString) || u.Account.Contains(searchString));
            }

            return View(users.ToList());
        }

        // GET: Admins/AdminUsers/Details/5
        /*public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var adminUser = await _context.AdminUsers
                .FirstOrDefaultAsync(m => m.Id == id);
            if (adminUser == null)
            {
                return NotFound();
            }

            return View(adminUser);
        }*/
        // Phương thức trả về Partial View chi tiết
        public PartialViewResult Details(int id)
        {
            var adminUser = _context.AdminUsers.FirstOrDefault(x => x.Id == id);
            return PartialView("Details", adminUser); // Trả về Partial View với dữ liệu chi tiết
        }

        // GET: Admins/AdminUsers/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admins/AdminUsers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Account,Password,MaNhanSu,Name,Phone,Email,Avatar,IdPhongBan,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat,SessionToken,Salt,IsAdmin,TrangThai,IsDelete")] AdminUser adminUser)
        {
            if (ModelState.IsValid)
            {

                _context.Add(adminUser);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(adminUser);
        }

        // GET: Admins/AdminUsers/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var adminUser = await _context.AdminUsers.FindAsync(id);
            if (adminUser == null)
            {
                return NotFound();
            }
            return View(adminUser);
        }

        // POST: Admins/AdminUsers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Account,Password,MaNhanSu,Name,Phone,Email,Avatar,IdPhongBan,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat,SessionToken,Salt,IsAdmin,TrangThai,IsDelete")] AdminUser adminUser)
        {
            if (id != adminUser.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(adminUser);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AdminUserExists(adminUser.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(adminUser);
        }

        // GET: Admins/AdminUsers/Delete/5
        /* public async Task<IActionResult> Delete(int? id)
         {
             if (id == null)
             {
                 return NotFound();
             }

             var adminUser = await _context.AdminUsers
                 .FirstOrDefaultAsync(m => m.Id == id);
             if (adminUser == null)
             {
                 return NotFound();
             }

             return View(adminUser);
         }*/
        // Hiển thị trang xác nhận xóa
        [HttpGet]
        public IActionResult Delete(int id)
        {
            var user = _context.AdminUsers.Find(id);
            if (user == null) return NotFound();

            return View(user); // Trả về view xác nhận xóa
        }

        // Xử lý hành động xóa
        [HttpPost, ActionName("Delete")] // Đổi tên action để tránh trùng
        public IActionResult DeleteConfirmed(int id)
        {
            var user = _context.AdminUsers.Find(id);
            if (user == null) return NotFound();

            _context.AdminUsers.Remove(user);
            _context.SaveChanges();

            return RedirectToAction("Index");
        }


        // POST: Admins/AdminUsers/Delete/5
        /*[HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var adminUser = await _context.AdminUsers.FindAsync(id);
            if (adminUser != null)
            {
                _context.AdminUsers.Remove(adminUser);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }*/

        private bool AdminUserExists(int id)
        {
            return _context.AdminUsers.Any(e => e.Id == id);
        }
    }
}
