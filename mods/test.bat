@echo off

rem Tạo biến để lưu tên file .txt
set "filename=output.txt"

rem Mở file .txt để ghi
echo "" > "%filename%"

rem Lấy danh sách tất cả các file trong thư mục hiện tại
for /r %%f in (*.*) do (

rem Lấy tên file và đuôi file
set "filename=%%~nxf"
set "fileext=%%~xf"

rem In ra tên file và đuôi file vào file .txt
echo "%%f%%", >> "%filename%"
)

rem Đóng file .txt
type "%filename%"