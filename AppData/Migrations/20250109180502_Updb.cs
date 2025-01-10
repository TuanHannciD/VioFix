using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppData.Migrations
{
    public partial class Updb : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Anh_MauSac_IDMauSac",
                table: "Anh");

            migrationBuilder.DropForeignKey(
                name: "FK_ChiTietSanPham_KichCo_IDKichCo",
                table: "ChiTietSanPham");

            migrationBuilder.DropForeignKey(
                name: "FK_ChiTietSanPham_MauSac_IDMauSac",
                table: "ChiTietSanPham");

            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_ChatLieu_IDChatLieu",
                table: "SanPham");

            migrationBuilder.DropPrimaryKey(
                name: "PK_MauSac",
                table: "MauSac");

            migrationBuilder.DropPrimaryKey(
                name: "PK_KichCo",
                table: "KichCo");

            migrationBuilder.DropPrimaryKey(
                name: "PK_ChatLieu",
                table: "ChatLieu");

            migrationBuilder.RenameTable(
                name: "MauSac",
                newName: "PhanLoai");

            migrationBuilder.RenameTable(
                name: "KichCo",
                newName: "DungTich");

            migrationBuilder.RenameTable(
                name: "ChatLieu",
                newName: "Luuhuong");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PhanLoai",
                table: "PhanLoai",
                column: "ID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_DungTich",
                table: "DungTich",
                column: "ID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Luuhuong",
                table: "Luuhuong",
                column: "ID");

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

        protected override void Down(MigrationBuilder migrationBuilder)
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
                name: "PK_PhanLoai",
                table: "PhanLoai");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Luuhuong",
                table: "Luuhuong");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DungTich",
                table: "DungTich");

            migrationBuilder.RenameTable(
                name: "PhanLoai",
                newName: "MauSac");

            migrationBuilder.RenameTable(
                name: "Luuhuong",
                newName: "ChatLieu");

            migrationBuilder.RenameTable(
                name: "DungTich",
                newName: "KichCo");

            migrationBuilder.AddPrimaryKey(
                name: "PK_MauSac",
                table: "MauSac",
                column: "ID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_ChatLieu",
                table: "ChatLieu",
                column: "ID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_KichCo",
                table: "KichCo",
                column: "ID");

            migrationBuilder.AddForeignKey(
                name: "FK_Anh_MauSac_IDMauSac",
                table: "Anh",
                column: "IDMauSac",
                principalTable: "MauSac",
                principalColumn: "ID");

            migrationBuilder.AddForeignKey(
                name: "FK_ChiTietSanPham_KichCo_IDKichCo",
                table: "ChiTietSanPham",
                column: "IDKichCo",
                principalTable: "KichCo",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ChiTietSanPham_MauSac_IDMauSac",
                table: "ChiTietSanPham",
                column: "IDMauSac",
                principalTable: "MauSac",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_SanPham_ChatLieu_IDChatLieu",
                table: "SanPham",
                column: "IDChatLieu",
                principalTable: "ChatLieu",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
