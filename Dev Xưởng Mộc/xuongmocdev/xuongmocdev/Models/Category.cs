using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace xuongmocdev.Models;

public partial class Category
{
    public int Id { get; set; }
    [Display(Name ="Tên Danh Mục")]
    public string? Title { get; set; }
    [Display(Name = "Ảnh")]
    public string? Icon { get; set; }
    [Display(Name = "Ghi Chú")]
    public string? MateTitle { get; set; }
    [Display(Name = "Sản Phẩm")]
    public string? MetaKeyword { get; set; }
    [Display(Name = "Mô Tả")]
    public string? MetaDescription { get; set; }
    [Display(Name = "Danh Mục")]
    public string? Slug { get; set; }
    [Display(Name = "Đặt Hàng")]
    public int? Orders { get; set; }

    public int? Parentid { get; set; }

    public DateTime? CreatedDate { get; set; }

    public DateTime? UpdatedDate { get; set; }

    public string? AdminCreated { get; set; }

    public string? AdminUpdated { get; set; }
    [Display(Name = "Ghi chú")]
    public string? Notes { get; set; }
    [Display(Name = "Trạng Thái")]
    public byte? Status { get; set; }

    public bool? Isdelete { get; set; }
}
