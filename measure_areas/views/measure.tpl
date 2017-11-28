<!DOCTYPE html>
<html lang="en" class="full-height">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>Quotation Estimate 0.27 alpha</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">

    <link href="css/style.css" rel="stylesheet">
    
</head>

<body class="hm-black-strong">

    <!--Navbar-->
    <!--/.Navbar-->
        <!--Intro Section-->
        <section class="intro-1">
            <div class="full-bg-img flex-top">
                <div class="container">
                    <section>

                        <div class="row pt-3">

                            <!--First columnn-->
                            <div class="col-md-9 mb-r">

                                <!--Card-->
                                <div class="card wow fadeIn">

                                    <!--Card image-->

                                    <!--Card content-->
                                    <div class="card-body">
                                        <!--Title-->
                                        <h4 class="card-title text-center">Design</h4>
                                        <hr>
                                        {{!svg}}
                                        <!--Text-->
                                        <p class="card-text"></p>
                                    </div>

                                </div>
                                <!--/.Card-->
                            </div>
                            <!--First columnn-->

                            <!--First columnn-->
                            <div class="col-md-3 mb-r">
                                <!--Card-->
                                <div class="card wow fadeIn" data-wow-delay="0.6s">

                                    <!--Card image-->
                                    <!-- <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Work/4-col/img%20(37).jpg" alt="Card image cap"> -->

                                    <!--Card content-->
                                    <div class="card-body">
                                        <!--Title-->
                                        <h4 class="card-title text-center">Design Measurements</h4>
                                        <hr>
                                        <!--Text-->
                                        <p class="card-text"><b>Canvas Width: </b><span id="canvas-width"></span></p>
                                        <p class="card-text"><b>Canvas Height: </b><span id="canvas-height"></span></p>
                                        <p class="card-text"><b>Object(s) Area: </b><span id="area">{{area}}</span></p>
                                    </div>

                                </div>
                                <!--/.Card-->
                                <a href="/" class="btn btn-default btn-lg wow fadeInRight"
                                data-wow-delay="0.2s" rel="nofollow" >Upload Again</a>
                            </div>
                            <!--First columnn-->
                        </div>

                    </section>

                </div>
            </div>
        </section>

    <!-- Main container-->

    <!--Footer-->
    <!--/.Footer-->


    <!-- SCRIPTS -->

    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>

    <!-- Bootstrap dropdown -->
    <script type="text/javascript" src="js/popper.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>



    <!-- Animations init-->
    <script>
        new WOW().init();
        $('#canvas-width').text($('svg').attr('width'));
        $('#canvas-height').text($('svg').attr('height'));
        var units = $('svg').attr('width');
        if (typeof units==='string') {
            units = units.replace(/[0-9]/g, '');
        }
        var area = $('#area').text() + ' ' + units + '';
        $('#area').text($('#area').text() + ' ' + units).append('<sup>2<sup>');
        $('svg').attr('width', '90%').attr('height', '90%');
    </script>


</body>

</html>