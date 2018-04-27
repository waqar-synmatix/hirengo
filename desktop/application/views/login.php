<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.7
Version: 4.7.5
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js' ?>"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js' ?>"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>Hire n Go</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #1 for " name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url().'assets/global/plugins/font-awesome/css/font-awesome.min.css' ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url().'assets/global/plugins/simple-line-icons/simple-line-icons.min.css' ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url().'assets/global/plugins/bootstrap/css/bootstrap.min.css' ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url().'assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css' ?>" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="<?php echo base_url().'assets/global/plugins/select2/css/select2.min.css' ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url().'assets/global/plugins/select2/css/select2-bootstrap.min.css' ?>" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="<?php echo base_url().'assets/global/css/components.min.css' ?>" rel="stylesheet" id="style_components" type="text/css" />
        <link href="<?php echo base_url().'assets/global/css/plugins.min.css' ?>" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="<?php echo base_url().'assets/pages/css/login-2.min.css' ?>" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
        <style type="text/css">
            .login{
                /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#fb9b23+0,fc7f24+100 */
background: #fb9b23; /* Old browsers */
background: -moz-linear-gradient(top, #fb9b23 0%, #fc7f24 100%); /* FF3.6-15 */
background: -webkit-linear-gradient(top, #fb9b23 0%,#fc7f24 100%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(to bottom, #fb9b23 0%,#fc7f24 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fb9b23', endColorstr='#fc7f24',GradientType=0 ); /* IE6-9 */
            }
            .login .content .form-control {
    background-color: transparent;
    border: 1px solid #fff;
    height: 43px;
    color: #fff !important;
    background: rgba(255,255,255,0.2);}

    .login .form-subtitle, .login .content .form-control::placeholder, .login .content .mt-checkbox, .login .content .forget-password, .login .content .hint, .login a, .login .form-title { /* Chrome, Firefox, Opera, Safari 10.1+ */
    color: #fff !important;
    }
    .btn.btn-block.uppercase,  #register-back-btn, #register-submit-btn {

    background: rgba(255,255,255,0.2);
    border-color: #fff;
    border-radius: 20px !important;
    color: #fff;

}
.login-options .social-icons {

    float: right;
    padding-top: 3px;
    margin-right: 130px;

}
.login-options{
    border-color: #fff
}
#register-btn {

    background: rgba(255,255,255,0.3);
    border-color: #fff;

}
.login .logo {
    margin-top: 20px;
}
select {
    background-color: transparent !important;
}

        </style>
    <!-- END HEAD -->

    <body class=" login">
        <!-- BEGIN LOGO -->
        <div class="logo">
            <a href="index.html">
                <img src="<?php echo base_url().'assets/logo.png' ?>" style="height: 100px;" alt="" /> </a>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN LOGIN -->
        <div class="content">
                                <?php
              $success_msg= $this->session->flashdata('success_msg');
              $error_msg= $this->session->flashdata('error_msg');
 
                  if($success_msg){
                    ?>
                    <div class="alert alert-success">
                      <?php echo $success_msg; ?>
                    </div>
                  <?php
                  }
                  if($error_msg){
                    ?>
                    <div class="alert alert-danger">
                      <?php echo $error_msg; ?>
                    </div>
                    <?php
                  }
                  ?>
            <!-- BEGIN 
            <!-- BEGIN LOGIN FORM -->
            <form class="login-form" action="index.html" method="post">
                <div class="form-title">
                    <span class="form-title">Welcome.</span>
                    <span class="form-subtitle">Please login.</span>
                </div>
                <div class="alert alert-danger display-hide">
                    <button class="close" data-close="alert"></button>
                    <span> Enter any username and password. </span>
                </div>
                <div class="form-group">
                    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                    <label class="control-label visible-ie8 visible-ie9">Username</label>
                    <input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="username" /> </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Password</label>
                    <input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password" /> </div>
                <div class="form-actions">
                    <button type="submit" class="btn red btn-block uppercase">Login</button>
                </div>
                <div class="form-actions">
                    <div class="pull-left">
                        <label class="rememberme mt-checkbox mt-checkbox-outline">
                            <input type="checkbox" name="remember" value="1" /> Remember me
                            <span></span>
                        </label>
                    </div>
                    <div class="pull-right forget-password-block">
                        <a href="javascript:;" id="forget-password" class="forget-password">Forgot Password?</a>
                    </div>
                </div>
                <div class="login-options">

                    <ul class="social-icons text-center">
                        <li>
                            <a class="social-icon-color facebook" data-original-title="facebook" href="javascript:;"></a>
                        </li>
                        <li>
                            <a class="social-icon-color twitter" data-original-title="Twitter" href="javascript:;"></a>
                        </li>
                        <li>
                            <a class="social-icon-color googleplus" data-original-title="Goole Plus" href="javascript:;"></a>
                        </li>
                        <li>
                            <a class="social-icon-color linkedin" data-original-title="Linkedin" href="javascript:;"></a>
                        </li>
                    </ul>
                </div>
                <div class="create-account">
                    <p>
                        <a href="javascript:;" class="btn-primary btn" id="register-btn">Create an account</a>
                    </p>
                </div>
            </form>
            <!-- END LOGIN FORM -->
            <!-- BEGIN FORGOT PASSWORD FORM -->
            <form class="forget-form" action="" method="post">
                <div class="form-title">
                    <span class="form-title">Forget Password ?</span>
                    <span class="form-subtitle">Enter your e-mail to reset it.</span>
                </div>
                <div class="form-group">
                    <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" /> </div>
                <div class="form-actions">
                    <button type="button" id="back-btn" class="btn btn-default">Back</button>
                    <button type="submit" class="btn btn-primary uppercase pull-right">Submit</button>
                </div>
            </form>
            <!-- END FORGOT PASSWORD FORM -->
            <!-- BEGIN REGISTRATION FORM -->
            <form class="register-form" action="<?php echo base_url('login_register/register_user'); ?>" method="post">
                <div class="form-title">
                    <span class="form-title">Sign Up</span>
                </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Select User Type</label>
                    <select name="usertype" class="form-control">
                        <option value="">User Type</option>
                        <option value="driver">Driver</option>
                        <option value="passenger">Passenger</option>
                    </select>
                </div>
                <div class="form-group">
                    <input class="form-control placeholder-no-fix" type="hidden" placeholder="" name="status" value="pending" /> </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Email</label>
                    <input class="form-control placeholder-no-fix" type="text" placeholder="Email" name="email" /> </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Phone</label>
                    <input class="form-control placeholder-no-fix" type="text" placeholder="Phone Number" name="phone" /> </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Password</label>
                    <input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Password" name="password" /> </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
                    <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Re-type Your Password" name="rpassword" /> </div>
                <div class="form-group margin-top-20 margin-bottom-20">
                    <label class="mt-checkbox mt-checkbox-outline">
                        <input type="checkbox" name="tnc" /> I agree to the
                        <a href="javascript:;">Terms of Service </a> &
                        <a href="javascript:;">Privacy Policy </a>
                        <span></span>
                    </label>
                    <div id="register_tnc_error"> </div>
                </div>
                <div class="form-actions">
                    <button type="button" id="register-back-btn" class="btn btn-default">Back</button>
                    <button type="submit" id="register-submit-btn" class="btn red uppercase pull-right">Submit</button>
                </div>
            </form>
            <!-- END REGISTRATION FORM -->
        </div>
        <div class="copyright hide"> 2018 © Hire n Go. </div>
        <!-- END LOGIN -->
        <!--[if lt IE 9]>
<script src="<?php echo base_url().'assets/global/plugins/respond.min.js' ?>"></script>
<script src="<?php echo base_url().'assets/global/plugins/excanvas.min.js' ?>"></script> 
<script src="<?php echo base_url().'assets/global/plugins/ie8.fix.min.js' ?>"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="<?php echo base_url().'assets/global/plugins/jquery.min.js' ?>" type="text/javascript"></script>
        <script src="<?php echo base_url().'assets/global/plugins/bootstrap/js/bootstrap.min.js' ?>" type="text/javascript"></script>
        <script src="<?php echo base_url().'assets/global/plugins/js.cookie.min.js' ?>" type="text/javascript"></script>
        <script src="<?php echo base_url().'assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js' ?>" type="text/javascript"></script>
        <script src="<?php echo base_url().'assets/global/plugins/jquery.blockui.min.js' ?>" type="text/javascript"></script>
        <script src="<?php echo base_url().'assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js' ?>" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="<?php echo base_url().'assets/global/plugins/jquery-validation/js/jquery.validate.min.js' ?>" type="text/javascript"></script>
        <script src="<?php echo base_url().'assets/global/plugins/jquery-validation/js/additional-methods.min.js' ?>" type="text/javascript"></script>
        <script src="<?php echo base_url().'assets/global/plugins/select2/js/select2.full.min.js' ?>" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="<?php echo base_url().'assets/global/scripts/app.min.js' ?>" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="<?php echo base_url().'assets/pages/scripts/login.min.js' ?>" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <!-- END THEME LAYOUT SCRIPTS -->
        <script>
            $(document).ready(function()
            {
                $('#clickmewow').click(function()
                {
                    $('#radio1003').attr('checked', 'checked');
                });
            })
        </script>
    </body>

</html>