using AppData.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
namespace AppData.Configurations
{
    public class GioHangConfiguration : IEntityTypeConfiguration<GioHang>
    {
        public void Configure(EntityTypeBuilder<GioHang> builder)
        {
            builder.ToTable("GioHang");
            builder.HasKey(x => x.IDKhachHang);
            builder.Property(x => x.NgayTao).HasColumnType("datetime");
            builder.HasOne(x => x.KhachHang)
            .WithOne(x => x.GioHang)
            .HasForeignKey<GioHang>(x => x.IDKhachHang);
            builder.HasData(new GioHang
            {
                IDKhachHang = new Guid("2EC27AB7-5F67-4ED5-AE67-52F9C9726EBF"),
                NgayTao = DateTime.Now
            });


        }
    }
}
