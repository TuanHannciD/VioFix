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
    internal class LuuHuongConfiguration : IEntityTypeConfiguration<LuuHuong>
    {
        public void Configure(EntityTypeBuilder<LuuHuong> builder)
        {
            builder.ToTable("LuuHuong");
            builder.HasKey(x => x.ID);
            builder.Property(x => x.Ten).HasColumnType("nvarchar(20)");
            builder.Property(x => x.TrangThai).HasColumnType("int");
        }
    }
}
