<%-- 
    Document   : insertProductInfo
    Created on : Jul 23, 2020, 1:10:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Insert Product Information</title>

        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
    </head>
    <body class="bg-dark">

        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Insert Product Information</div>
                <div class="card-body">
                    <form action="InsertProductInfoController" method="post">           
                        <!--Product ID-->
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="text"  name="txtId" value="" class="form-control" >
                                <label>Product ID</label>
                            </div>
                        </div>
                        <!--Description-->
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="text"  name="txtDetail" value="" class="form-control" >
                                <label>Description</label>
                            </div>
                        </div>

                        <!--Logo 1-->
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="file"  name="txtLogo1" value="" class="form-control" >
                                <label>Image1</label>
                            </div>
                        </div>
                        <!--Logo 2-->
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="file"  name="txtLogo2" value="" class="form-control" >
                                <label>Image2</label>
                            </div>
                        </div>
                        <!--Logo 3-->
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="file"  name="txtLogo3" value="" class="form-control" >
                                <label>Image3</label>
                            </div>
                        </div>
                        <!--Logo 4-->
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="file"  name="txtLogo4" value="" class="form-control" >
                                <label>Image4</label>
                            </div>
                        </div>        
                        <input class="btn btn-primary btn-block" type="submit" value="Insert"/>
                        <a class="btn btn-dark btn-block" href="productInfo.jsp">Cancel</a>
                    </form>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    </body>
</html>
