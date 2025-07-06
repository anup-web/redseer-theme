<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="#" />
	<meta name="keywords" content="#">
	<meta name="author" content="Aranax Technologies Pvt Ltd"> 	
	<!-- <link rel="shortcut icon" href="<?php echo get_bloginfo('template_directory');?>/images/ico/favicon.ico">	
	<link rel="icon" type="image/png" sizes="16x16" href="<?php echo get_bloginfo('template_directory');?>/images/ico/favicon-16x16.png">	 -->
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="<?php echo get_bloginfo('template_directory');?>/images/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">

	<title><?php wp_title('|',1,'right'); ?> <?php bloginfo('name');?> - <?php echo "redseer";?></title>
    <!-- <script src="https://use.fontawesome.com/6993b1ea51.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLbKmeVr5vvxG-3h_0mlWBbmVbLJoMkY8"></script>  -->
	<!-- CSS -->
	
	<link href="<?php bloginfo('stylesheet_url');?>" rel="stylesheet">
    
	<!-- Custom CSS -->
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->    
	<?php wp_enqueue_script("jquery"); ?>
	<?php wp_head(); ?>
    
</head>

<body id="page-top">

    

    <!-- Main Header / Style One-->
    <header class="main-header">
        <!--Header-Lower-->
        <div class="header-lower">
            <div class="container">
                <div class="nav-outer clearfix">
                    <!--Logo-->
                    
                    <div class="logo">
                        <a href="#">
						<img src="<?php echo get_bloginfo('template_directory');?>/images/logo/RedSeer-logo_new.png" class="img-responsive" alt=""/>
						</a>
                    </div>

                    <!-- Main Menu -->
                    <nav class="main-menu">
                        <div class="navbar-header">
                            <!-- Toggle Button -->      
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            </button>
                        </div>
                        
                        <div class="navbar-collapse collapse clearfix">                           
							<?php					
								wp_nav_menu( array(
									'menu'       => 'primary',
									'depth'      => 2,
									'container'  => false,
									'menu_class' => 'navigation navbar-left',
									'walker'     => new wp_bootstrap_navwalker())
									);
							?>
                        </div>
                         <button type="button" class="btn btn-default talkt-btn">Talk to us</button>
                    </nav>

                   
                    
                </div>
            </div>
        </div>

        <!--Bounce In Header-->
        <div class="bounce-in-header hidden-xs">
            <div class="container clearfix">
                <!--Logo-->
                <div class="logo">
                    <img src="<?php echo get_bloginfo('template_directory');?>/images/logo/RedSeer-logo_new.png" class="img-responsive" alt=""/>
                </div>
                
                <!--Right Col-->
                    <!-- Main Menu -->
                    <nav class="main-menu">
                        <div class="navbar-header">
                            <!-- Toggle Button -->      
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        
                        <div class="navbar-collapse collapse clearfix">                           
							<?php					
								wp_nav_menu( array(
									'menu'       => 'primary',
									'depth'      => 2,
									'container'  => false,
									'menu_class' => 'navigation navbar-left dropdown-btn',
									'walker'     => new wp_bootstrap_navwalker())
									);
							?>
                        </div>
                    </nav>
                    <!-- Main Menu End-->
            </div>
        </div>
    </header>
    <!--End Main Header -->