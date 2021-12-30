<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThongKe.aspx.cs" Inherits="Admin_ThongKe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" href="../images/logo/petshop.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="css/Menu.css" rel="stylesheet" type="text/css" />
	<link href="css/thongke.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <style>
    * {
	box-sizing:border-box;
	-moz-box-sizing:border-box;
	-webkit-box-sizing:border-box;	
    }

    ::-webkit-scrollbar {
        width:5px;	
    }

    ::-webkit-scrollbar-thumb {
        background:lightpink;
        border-radius:20px;	
    }
    
    html {
 	    scroll-behavior: smooth;
    }

    body {
	    margin:0;
        padding: 0;
    }

    html, body { 
        cursor:url('http://www.snazzyspace.com/cursorsfolder/dog-paw.png'), auto; 
    }

    h2 {
      margin: 0 0 20px 0;
      padding: 0 0 5px 0;
      border-bottom: 1px solid #999;
      font-family: sans-serif;
      font-weight: normal;
      color: #333;
    }
    </style>
    <script>
        function signout() {
            document.location.href = '/Page/DangNhap.aspx'
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="MENU" class="menu" >
            <img src="images/logo.png">
            <div class="menu-content">
		        <a href="ThongKe.aspx" class="current"><i class="fa fa-chart-bar" style="padding-left: 3px"> Thống kê</i></a>
                <a href="QuanLySanPham.aspx"><i class="fas fa-box-open"></i> Quản lý sản phẩm</a>
                <a href="QuanLyUser.aspx"><i class="fa fa-users"></i> Quản lý user</a>
                <a href="QuanLyDatHang.aspx"><i class="fas fa-shipping-fast"></i> Quản lý đơn hàng</a>
                <a href="#" onClick="signout()"><i class="fas fa-power-off"></i> Đăng xuất</a>
                <a href="../Page/IndexLogined.aspx">Quay lại Home</a>
            </div>
        </div>

        <div class="admin-logo"><img src="images/rsz_admin-header.png"></div>
	
        <div class="main" style="background-color: #f5f5f5">
	        <div id="piechart" style="float: left;width: 500px"></div>
	        <div id="chart_div" style="float: left"></div>
	        <div style="clear: both"></div>
	        <table cellpadding="10px" cellspacing="30px">
		        <tr>
			        <td>
				        <a href="QuanLySanPham.aspx" class="muc">
					        <div class="muc-soluong">18</div>
					        <div class="muc-icon"><i class="fas fa-boxes"></i></div>
					        <div style="clear: both"></div>
					        <div class="muc-tieude">Sản phẩm</div>
				        </a>
			        </td>
			        <td>
				        <a href="QuanLyUser.aspx" class="muc">
					        <div class="muc-soluong">3</div>
					        <div class="muc-icon"><i class="fas fa-users"></i></div>
					        <div style="clear: both"></div>
					        <div class="muc-tieude">User</div>
				        </a>	
			        </td>
			        <td>
				        <a href="QuanLyDatHang.aspx" class="muc">
					        <div class="muc-soluong">1</div>
					        <div class="muc-icon"><i class="fas fa-people-carry"></i></div>
					        <div style="clear: both"></div>
					        <div class="muc-tieude">Đơn hàng</div>
				        </a>
			        </td>
		        </tr>
	        </table>
        </div>

        <script type="text/javascript">
            // Load google charts
            google.charts.load('current', { 'packages': ['corechart'] });
            google.charts.setOnLoadCallback(drawChart);

            // Draw the chart and set the chart values
            function drawChart() {
                var data1 = google.visualization.arrayToDataTable([
  			        ['Task', 'Hours per Day'],
  			        ['Chó', 164051],
			        ['Mèo', 142648],
			        ['Chim', 35784],
			        ['Cá', 35349],
  			        ['Hamster', 61582]
                ]);

                var data2 = google.visualization.arrayToDataTable([
        	        ['Năm', 'Phí thu', 'Phí tổn thất'],
          	        ['2013', 151544000, 16548000],
          	        ['2014', 100458000, 85685000],
          	        ['2015', 80486000, 145970000],
          	        ['2016', 64690000, 200485000],
			        ['2017', 95468000, 165885000],
			        ['2018', 145986000, 96485000],
                ]);

                // Optional; add a title and set the width and height of the chart
                var options1 = {
                    title: 'Số sản phẩm bán được',
                    width: 550,
                    height: 500,
                    backgroundColor: '#f5f5f5',
                    fontSize: 16
                };

                var options2 = {
                    title: 'Lợi nhuận',
                    fontSize: 16,
                    backgroundColor: '#f5f5f5',
                    width: 610,
                    height: 500
                };
                // Display the chart inside the <div> element with id="piechart"
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                chart.draw(data1, options1);

                var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
                chart.draw(data2, options2);
            }
        </script>
    </div>
    </form>
</body>
</html>
