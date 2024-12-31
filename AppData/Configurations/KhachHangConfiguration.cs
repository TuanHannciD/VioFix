using AppData.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppData.Configurations
{
    internal class KhachHangConfiguration : IEntityTypeConfiguration<KhachHang>
    {
        public void Configure(EntityTypeBuilder<KhachHang> builder)
        {
            builder.ToTable("KhachHang");
            builder.HasKey(x => x.IDKhachHang);
            builder.Property(x => x.Ten).HasColumnType("nvarchar(100)");
            builder.Property(x => x.Password).HasColumnType("varchar(MAX)");
            builder.Property(x => x.GioiTinh).HasColumnType("int");
            builder.Property(x => x.NgaySinh).HasColumnType("datetime");
            builder.Property(x => x.Email).HasColumnType("varchar(250)");
            builder.Property(x => x.DiaChi).HasColumnType("nvarchar(100)");
            builder.Property(x => x.SDT).HasColumnType("varchar(10)");
            builder.Property(x => x.DiemTich).HasColumnType("int");
            builder.Property(x => x.TrangThai).HasColumnType("int");
            builder.HasData(new KhachHang() {IDKhachHang = new Guid("2EC27AB7-5F67-4ED5-AE67-52F9C9726EBF"),Ten = "Admin" ,Email= "doba2311@gmail.com" ,SDT="0773332975",DiaChi="Thanh Hoa" ,DiemTich= 1, GioiTinh= 0 ,Password = "$2a$10$gvO967pZ88UeyW693ps38.FTkSii9XrNtTI1vLoONujRx.uKjJOEq" ,TrangThai = 0 });
        }
    }
}
