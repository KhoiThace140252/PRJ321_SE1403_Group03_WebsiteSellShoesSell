<%-- 
    Document   : feedback
    Created on : Jul 14, 2020, 12:28:47 AM
    Author     : HAOVNCE140475
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.Collection"%>
<%@page import="Dao.PhanHoiDAO"%>
<%@page import="Model.PhanHoi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin - Feedbacks</title>

        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <jsp:include page="header-admin/header-top.jsp"></jsp:include>

            <div id="wrapper">

                <!-- Headerbottom -->
            <jsp:include page="header-admin/header-bottom.jsp"></jsp:include>
                <!-- Header bottom -->

                <div id="content-wrapper">

                    <div class="container-fluid">

                        <!-- Breadcrumbs-->
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="indexadmin.jsp">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Feedbacks</li>

                        </ol>

                        <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-user"></i>
                                List Feedbacks</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Feedback ID</th>
                                                <th>Content</th>
                                                <th>Customer's Name</th>
                                                <th>Email</th>                                            
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>                     
                                        <tbody>                  
                                            <tr>
                                            <%
                                                Map<String, PhanHoi> mapPhanHoi = new PhanHoiDAO().loadPhanHoi();       //call method use to get data and add to map
                                                Collection<PhanHoi> values = mapPhanHoi.values();
                                                for (PhanHoi row : values) {//get data from map and print out


                                            %>

                                            <td><%=row.getChude()%></td>
                                            <td><%=row.getNoidung()%></td>
                                            <td><%=row.getTentaikhoan()%></td>
                                            <td><%=row.getEmail()%></td>                            
                                            <td><%=row.getCurrentDate()%></td>

                                            <td>
                                                <%--Click to delete feedback--%>
                                                <a class="nav-link" href="DeleteFeedbackController?id=<%=row.getIdphanhoi()%>"><i class="fas fa-fw fa-trash"></i></a>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>



        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="vendor/datatables/jquery.dataTables.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="js/demo/datatables-demo.js"></script>

    </body>

</html>



