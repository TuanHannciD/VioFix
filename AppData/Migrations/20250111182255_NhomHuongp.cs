using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppData.Migrations
{
    public partial class NhomHuongp : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ChiTietSanPham_KichCo_IDKichCo",
                table: "ChiTietSanPham");

            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_Nhom Huong_IDChatLieu",
                table: "SanPham");

            migrationBuilder.DropTable(
                name: "KichCo");

            migrationBuilder.DropTable(
                name: "Nhom Huong");

            migrationBuilder.RenameColumn(
                name: "IDKichCo",
                table: "ChiTietSanPham",
                newName: "IDNhomHuong");

            migrationBuilder.RenameIndex(
                name: "IX_ChiTietSanPham_IDKichCo",
                table: "ChiTietSanPham",
                newName: "IX_ChiTietSanPham_IDNhomHuong");

            migrationBuilder.CreateTable(
                name: "NhomHuong",
                columns: table => new
                {
                    ID = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Ten = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    TrangThai = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_NhomHuong", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "PhongCach",
                columns: table => new
                {
                    ID = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Ten = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    TrangThai = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PhongCach", x => x.ID);
                });

            migrationBuilder.AddForeignKey(
                name: "FK_ChiTietSanPham_NhomHuong_IDNhomHuong",
                table: "ChiTietSanPham",
                column: "IDNhomHuong",
                principalTable: "NhomHuong",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_SanPham_PhongCach_IDChatLieu",
                table: "SanPham",
                column: "IDChatLieu",
                principalTable: "PhongCach",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ChiTietSanPham_NhomHuong_IDNhomHuong",
                table: "ChiTietSanPham");

            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_PhongCach_IDChatLieu",
                table: "SanPham");

            migrationBuilder.DropTable(
                name: "NhomHuong");

            migrationBuilder.DropTable(
                name: "PhongCach");

            migrationBuilder.RenameColumn(
                name: "IDNhomHuong",
                table: "ChiTietSanPham",
                newName: "IDKichCo");

            migrationBuilder.RenameIndex(
                name: "IX_ChiTietSanPham_IDNhomHuong",
                table: "ChiTietSanPham",
                newName: "IX_ChiTietSanPham_IDKichCo");

            migrationBuilder.CreateTable(
                name: "KichCo",
                columns: table => new
                {
                    ID = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Ten = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    TrangThai = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_KichCo", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Nhom Huong",
                columns: table => new
                {
                    ID = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Ten = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    TrangThai = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Nhom Huong", x => x.ID);
                });

            migrationBuilder.AddForeignKey(
                name: "FK_ChiTietSanPham_KichCo_IDKichCo",
                table: "ChiTietSanPham",
                column: "IDKichCo",
                principalTable: "KichCo",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_SanPham_Nhom Huong_IDChatLieu",
                table: "SanPham",
                column: "IDChatLieu",
                principalTable: "Nhom Huong",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
