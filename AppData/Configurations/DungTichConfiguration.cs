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
    internal class DungTichConfiguration : IEntityTypeConfiguration<DungTich>
    {
        public void Configure(EntityTypeBuilder<DungTich> builder)
        {
            builder.ToTable("DungTich");
            builder.HasKey(x => x.ID);
            builder.Property(x => x.Ten).HasColumnType("nvarchar(110)").IsRequired();
            builder.Property(x => x.Ma).HasColumnType("nvarchar(110)");
            builder.Property(x => x.TrangThai).HasColumnType("int").IsRequired();
        }
    }
}
