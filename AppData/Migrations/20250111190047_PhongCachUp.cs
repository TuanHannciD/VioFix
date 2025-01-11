using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppData.Migrations
{
    public partial class PhongCachUp : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_PhongCach_IDChatLieu",
                table: "SanPham");

            migrationBuilder.RenameColumn(
                name: "IDChatLieu",
                table: "SanPham",
                newName: "IDPhongCach");

            migrationBuilder.RenameIndex(
                name: "IX_SanPham_IDChatLieu",
                table: "SanPham",
                newName: "IX_SanPham_IDPhongCach");

            migrationBuilder.AddForeignKey(
                name: "FK_SanPham_PhongCach_IDPhongCach",
                table: "SanPham",
                column: "IDPhongCach",
                principalTable: "PhongCach",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_PhongCach_IDPhongCach",
                table: "SanPham");

            migrationBuilder.RenameColumn(
                name: "IDPhongCach",
                table: "SanPham",
                newName: "IDChatLieu");

            migrationBuilder.RenameIndex(
                name: "IX_SanPham_IDPhongCach",
                table: "SanPham",
                newName: "IX_SanPham_IDChatLieu");

            migrationBuilder.AddForeignKey(
                name: "FK_SanPham_PhongCach_IDChatLieu",
                table: "SanPham",
                column: "IDChatLieu",
                principalTable: "PhongCach",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
