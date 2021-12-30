using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GioHang
/// </summary>
public class GioHang
{
    private int maTC;

    public int MaTC
    {
        get { return maTC; }
        set { maTC = value; }
    }
    private string tenGiong;

    public string TenGiong
    {
        get { return tenGiong; }
        set { tenGiong = value; }
    }
    private int donGia;

    public int DonGia
    {
        get { return donGia; }
        set { donGia = value; }
    }
    private int soLuong;

    public int SoLuong
    {
        get { return soLuong; }
        set { soLuong = value; }
    }
    private int thanhTien;

    public int ThanhTien
    {
        get { return soLuong * donGia; }
    }
    public GioHang()
    {

    }
}