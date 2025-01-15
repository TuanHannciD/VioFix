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
    internal class PhanLoaiConfiguration : IEntityTypeConfiguration<PhanLoai>
    {
        public void Configure(EntityTypeBuilder<PhanLoai> builder)
        {
            builder.ToTable("PhanLoai");
            builder.HasKey(x => x.ID);
            builder.Property(x => x.Ten).HasColumnType("nvarchar(10)").IsRequired();
            builder.Property(x => x.Ma).HasColumnType("nvarchar(10)");
            builder.Property(x => x.TrangThai).HasColumnType("int").IsRequired();
        }
    }
}
