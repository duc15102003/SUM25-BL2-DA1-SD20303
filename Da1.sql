CREATE DATABASE DA1_SD20303


CREATE TABLE sanpham (
    id INT PRIMARY KEY IDENTITY(1,1),
    ten NVARCHAR(100),
    gia DECIMAL(10,2),
    size VARCHAR(10),
    mau VARCHAR(50),
    soluong INT
);

CREATE TABLE khachhang (
    id INT PRIMARY KEY IDENTITY(1,1),
    ten VARCHAR(100),
    sdt VARCHAR(20),
    diachi VARCHAR(200)
);

CREATE TABLE giohang (
    id INT PRIMARY KEY IDENTITY(1,1),
    khachhang_id INT,
    tongtien DECIMAL(10,2),
    ngay DATETIME DEFAULT GETDATE(), -- SQL Server dùng GETDATE() thay cho CURRENT_TIMESTAMP
    FOREIGN KEY (khachhang_id) REFERENCES khachhang(id)
);

CREATE TABLE giohangchitiet (
    id INT PRIMARY KEY IDENTITY(1,1),
    giohang_id INT,
    sanpham_id INT,
    soluong INT,
    giaban DECIMAL(10,2),
    FOREIGN KEY (giohang_id) REFERENCES giohang(id),
    FOREIGN KEY (sanpham_id) REFERENCES sanpham(id)
);
