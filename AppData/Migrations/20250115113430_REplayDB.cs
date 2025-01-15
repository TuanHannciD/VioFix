using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppData.Migrations
{
    public partial class REplayDB : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Anh_PhanLoai_IDMauSac",
                table: "Anh");

            migrationBuilder.DropForeignKey(
                name: "FK_ChiTietSanPham_DungTich_IDKichCo",
                table: "ChiTietSanPham");

            migrationBuilder.DropForeignKey(
                name: "FK_ChiTietSanPham_PhanLoai_IDMauSac",
                table: "ChiTietSanPham");

            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_Luuhuong_IDChatLieu",
                table: "SanPham");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Luuhuong",
                table: "Luuhuong");

            migrationBuilder.RenameTable(
                name: "Luuhuong",
                newName: "LuuHuong");

            migrationBuilder.RenameColumn(
                name: "IDChatLieu",
                table: "SanPham",
                newName: "IDLuuHuong");

            migrationBuilder.RenameIndex(
                name: "IX_SanPham_IDChatLieu",
                table: "SanPham",
                newName: "IX_SanPham_IDLuuHuong");

            migrationBuilder.RenameColumn(
                name: "IDMauSac",
                table: "ChiTietSanPham",
                newName: "IDPhanLoai");

            migrationBuilder.RenameColumn(
                name: "IDKichCo",
                table: "ChiTietSanPham",
                newName: "IDDungTich");

            migrationBuilder.RenameIndex(
                name: "IX_ChiTietSanPham_IDMauSac",
                table: "ChiTietSanPham",
                newName: "IX_ChiTietSanPham_IDPhanLoai");

            migrationBuilder.RenameIndex(
                name: "IX_ChiTietSanPham_IDKichCo",
                table: "ChiTietSanPham",
                newName: "IX_ChiTietSanPham_IDDungTich");

            migrationBuilder.RenameColumn(
                name: "IDMauSac",
                table: "Anh",
                newName: "IDPhanLoai");

            migrationBuilder.RenameIndex(
                name: "IX_Anh_IDMauSac",
                table: "Anh",
                newName: "IX_Anh_IDPhanLoai");

            migrationBuilder.AddPrimaryKey(
                name: "PK_LuuHuong",
                table: "LuuHuong",
                column: "ID");

            migrationBuilder.UpdateData(
                table: "NhanVien",
                keyColumn: "ID",
                keyValue: new Guid("2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf"),
                column: "PassWord",
                value: "$2a$10$gvO967pZ88UeyW693ps38.FTkSii9XrNtTI1vLoONujRx.uKjJOEq");

            migrationBuilder.AddForeignKey(
                name: "FK_Anh_PhanLoai_IDPhanLoai",
                table: "Anh",
                column: "IDPhanLoai",
                principalTable: "PhanLoai",
                principalColumn: "ID");

            migrationBuilder.AddForeignKey(
                name: "FK_ChiTietSanPham_DungTich_IDDungTich",
                table: "ChiTietSanPham",
                column: "IDDungTich",
                principalTable: "DungTich",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ChiTietSanPham_PhanLoai_IDPhanLoai",
                table: "ChiTietSanPham",
                column: "IDPhanLoai",
                principalTable: "PhanLoai",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_SanPham_LuuHuong_IDLuuHuong",
                table: "SanPham",
                column: "IDLuuHuong",
                principalTable: "LuuHuong",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Anh_PhanLoai_IDPhanLoai",
                table: "Anh");

            migrationBuilder.DropForeignKey(
                name: "FK_ChiTietSanPham_DungTich_IDDungTich",
                table: "ChiTietSanPham");

            migrationBuilder.DropForeignKey(
                name: "FK_ChiTietSanPham_PhanLoai_IDPhanLoai",
                table: "ChiTietSanPham");

            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_LuuHuong_IDLuuHuong",
                table: "SanPham");

            migrationBuilder.DropPrimaryKey(
                name: "PK_LuuHuong",
                table: "LuuHuong");

            migrationBuilder.RenameTable(
                name: "LuuHuong",
                newName: "Luuhuong");

            migrationBuilder.RenameColumn(
                name: "IDLuuHuong",
                table: "SanPham",
                newName: "IDChatLieu");

            migrationBuilder.RenameIndex(
                name: "IX_SanPham_IDLuuHuong",
                table: "SanPham",
                newName: "IX_SanPham_IDChatLieu");

            migrationBuilder.RenameColumn(
                name: "IDPhanLoai",
                table: "ChiTietSanPham",
                newName: "IDMauSac");

            migrationBuilder.RenameColumn(
                name: "IDDungTich",
                table: "ChiTietSanPham",
                newName: "IDKichCo");

            migrationBuilder.RenameIndex(
                name: "IX_ChiTietSanPham_IDPhanLoai",
                table: "ChiTietSanPham",
                newName: "IX_ChiTietSanPham_IDMauSac");

            migrationBuilder.RenameIndex(
                name: "IX_ChiTietSanPham_IDDungTich",
                table: "ChiTietSanPham",
                newName: "IX_ChiTietSanPham_IDKichCo");

            migrationBuilder.RenameColumn(
                name: "IDPhanLoai",
                table: "Anh",
                newName: "IDMauSac");

            migrationBuilder.RenameIndex(
                name: "IX_Anh_IDPhanLoai",
                table: "Anh",
                newName: "IX_Anh_IDMauSac");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Luuhuong",
                table: "Luuhuong",
                column: "ID");

            migrationBuilder.UpdateData(
                table: "NhanVien",
                keyColumn: "ID",
                keyValue: new Guid("2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf"),
                column: "PassWord",
                value: "$2a$10$SkimxxBIlrv/l33hTFvbkutV/.jF4rlwd9APgp1ZZjNEgVDYXvHa6");

            migrationBuilder.AddForeignKey(
                name: "FK_Anh_PhanLoai_IDMauSac",
                table: "Anh",
                column: "IDMauSac",
                principalTable: "PhanLoai",
                principalColumn: "ID");

            migrationBuilder.AddForeignKey(
                name: "FK_ChiTietSanPham_DungTich_IDKichCo",
                table: "ChiTietSanPham",
                column: "IDKichCo",
                principalTable: "DungTich",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ChiTietSanPham_PhanLoai_IDMauSac",
                table: "ChiTietSanPham",
                column: "IDMauSac",
                principalTable: "PhanLoai",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_SanPham_Luuhuong_IDChatLieu",
                table: "SanPham",
                column: "IDChatLieu",
                principalTable: "Luuhuong",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
