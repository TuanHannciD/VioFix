using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppData.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AppData.Configurations
{
    internal class ChiTietSanPhamConfiguration : IEntityTypeConfiguration<ChiTietSanPham>
    {
        public void Configure(EntityTypeBuilder<ChiTietSanPham> builder)
        {
            builder.ToTable("ChiTietSanPham");
            builder.HasKey(x => x.ID);
            builder.Property(x => x.Ma).HasColumnType("nvarchar(100)");
            builder.Property(x => x.SoLuong).HasColumnType("int");
            builder.Property(x => x.GiaBan).HasColumnType("int");
            builder.Property(x => x.NgayTao).HasColumnType("datetime");
            builder.Property(x => x.TrangThai).HasColumnType("int");
            builder.HasOne(x => x.PhanLoai).WithMany(x => x.ChiTietSanPhams).HasForeignKey(x => x.IDPhanLoai);
            builder.HasOne(x => x.DungTich).WithMany(x => x.ChiTietSanPhams).HasForeignKey(x => x.IDDungTich);
            builder.HasOne(x => x.SanPham).WithMany(x => x.ChiTietSanPhams).HasForeignKey(x => x.IDSanPham);
            builder.HasOne(x => x.KhuyenMai).WithMany(x => x.ChiTietSanPhams).HasForeignKey(x => x.IDKhuyenMai);
        }
    }
}
