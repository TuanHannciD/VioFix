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
    internal class MauSacConfiguration : IEntityTypeConfiguration<PhongCach>
    {
        public void Configure(EntityTypeBuilder<PhongCach> builder)
        {
            builder.ToTable("PhongCach");
            builder.HasKey(x => x.ID);
            builder.Property(x => x.Ten).HasColumnType("nvarchar(10)").IsRequired();
            builder.Property(x => x.Ma).HasColumnType("varchar(10)");
            builder.Property(x => x.TrangThai).HasColumnType("int").IsRequired();
        }
    }
}
