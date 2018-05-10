<%-- 
    Document   : memberaccount
    Created on : May 4, 2018, 2:45:46 PM
    Author     : Bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entities.*" %>
<%@page import="model.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Free Bootstrap Admin Template : Binary Admin</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="../Resource/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- FONTAWESOME STYLES-->
        <link href="../Resource/assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <!-- MORRIS CHART STYLES-->

        <!-- CUSTOM STYLES-->
        <link href="../Resource/assets/css/custom.css" rel="stylesheet" type="text/css"/>
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <!-- TABLE STYLES-->
        <link href="../Resource/assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Binary admin</a> 
                </div>
                <div style="color: white;
                     padding: 15px 50px 5px 50px;
                     float: right;
                     font-size: 16px;"> Last access : 30 May 2014 &nbsp; <a href="#" class="btn btn-danger square-btn-adjust">Logout</a> </div>
            </nav>   
            <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li class="text-center">

                            <img src="../Resource/assets/img/find_user.png" alt="" class="user-image img-responsive"/>
                        </li>


                        <li>
                            <a  href="index.html"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
                        </li>
                        <li>
                            <a  href="ui.html"><i class="fa fa-desktop fa-3x"></i> UI Elements</a>
                        </li>
                        <li>
                            <a  href="tab-panel.html"><i class="fa fa-qrcode fa-3x"></i> Tabs & Panels</a>
                        </li>
                        <li  >
                            <a  href="chart.html"><i class="fa fa-bar-chart-o fa-3x"></i> Morris Charts</a>
                        </li>	
                        <li  >
                            <a class="active-menu"  href="table.html"><i class="fa fa-table fa-3x"></i> Table Examples</a>
                        </li>
                        <li  >
                            <a  href="form.html"><i class="fa fa-edit fa-3x"></i> Forms </a>
                        </li>				


                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-3x"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Second Level Link</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Link</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">Third Level Link</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Link</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Link</a>
                                        </li>

                                    </ul>

                                </li>
                            </ul>
                        </li>  
                        <li  >
                            <a   href="blank.html"><i class="fa fa-square-o fa-3x"></i> Blank Page</a>
                        </li>	
                    </ul>

                </div>

            </nav>  
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper" >
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Table Examples</h2>   
                            <h5>Welcome Jhon Deo , Love to see you back. </h5>

                        </div>
                    </div>
                    <!-- /. ROW  -->
                    <hr />

                    <div class="row">
                        <div class="col-md-12">
                            <!-- Advanced Tables -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <header>Quản lý thành viên</header>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">

                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th width="99" scope="col"><div align="center">Mã tài khoản</div></th>
                                                    <th width="146" scope="col"><div align="center">Tên đăng nhập</div></th>
                                                    <th width="133" scope="col"><div align="center">Mật khẩu</div></th>
                                                    <th width="174" scope="col"><div align="center">Giới tính</div></th>
                                                    <th width="80" scope="col"><div align="center">Địa chỉ</div></th>
                                                    <th width="96" scope="col"><div align="center">Điện thoại</div></th>
                                                    <th width="96" scope="col"><div align="center"></div></th>
                                                </tr>
                                            </thead>
                                            <tbody>                                                                                                                            

                                                <c:forEach var="tk" items="<%= new MemberAccountModel().ListMember()%>">
                                                    <tr>
                                                        <td style="text-align: center">${tk.memberId}</td>
                                                        <td style="text-align: center">${tk.memberLoginName}</td>
                                                        <td style="text-align: center">${tk.memberPassword}</td>
                                                        <td style="text-align: center">${tk.memberGender}</td>
                                                        <td style="text-align: center">${tk.memberAddress}</td>
                                                        <td style="text-align: center">${tk.memberPhoneNumber}</td>
                                                        <td>
                                                            <div align="center">
                                                                <a href="${pageContext.request.contextPath}/MemberAccountServlet?memberId=${tk.memberId}&action=xoa" class="btn btn-danger" onclick="return confirm('Are you sure?')"> <img src="../Resource/images/delete_user.png" alt="" style="height: 30px"/></a>                                                         

                                                            </div>
                                                        </td>

                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>

                                    </div>

                                </div>
                            </div>
                            <!--End Advanced Tables -->
                        </div>
                    </div>

                </div>
            </div>
            <!-- /. ROW  -->
        </div>

        </div>
        <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
        <!-- /. WRAPPER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="../Resource/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="../Resource/assets/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="../Resource/assets/js/jquery.metisMenu.js" type="text/javascript"></script>
        <!-- DATA TABLE SCRIPTS -->
        <script src="../Resource/assets/js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="../Resource/assets/js/dataTables/dataTables.bootstrap.js" type="text/javascript"></script>
        <script>
                                                    $(document).ready(function () {
                                                        $('#dataTables-example').dataTable();
                                                    });
        </script>
        <!-- CUSTOM SCRIPTS -->
        <script src="../Resource/assets/js/custom.js" type="text/javascript"></script>



    </body>
</html>
