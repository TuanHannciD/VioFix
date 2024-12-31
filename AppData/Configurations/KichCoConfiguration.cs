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
    internal class KichCoConfiguration : IEntityTypeConfiguration<DungTich>
    {
        public void Configure(EntityTypeBuilder<DungTich> builder)
        {
            builder.ToTable("DungTich");
            builder.HasKey(x => x.ID);
            builder.Property(x => x.Ten).HasColumnType("nvarchar(10)").IsRequired();
            builder.Property(x => x.TrangThai).HasColumnType("int").IsRequired();           
        }
    }
}
