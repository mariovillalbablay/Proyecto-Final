<?php
/**
 * Template Name: survivors
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package WordPress
 * @subpackage Twenty_Twelve
 * @since Twenty Twelve 1.0
 */

get_header(); ?>

	<div id="primary" class="site-content">
		<div id="content" role="main">

<div id="survivor-list">	
<h1 class="survivor-lista-nombre" style="font-size: 135%;">PICOTECA (Admin)</h1><br/>
   <ul>
	<li class="survivor-lista"> <span name="survivor">Mario Picoteca</span></li>
	<li class="survivor-lista"><span name="survivor">Picoteca Soprano</span></li>
	<li class="survivor-lista"><span name="survivor">Picoteca</span></li>
	<li class="survivor-lista"><span name="survivor">Mariete Picoteca</span></li>
	<li class="survivor-lista"> <span name="survivor">Mariete</span></li></ul>
	 <br/><br/><br/>
	 
<h1 class="survivor-lista-nombre" style="font-size: 135%;">RICK (Admin)</h1><br/>
   <ul>
	<li class="survivor-lista"> <span name="survivor">Rick Grimes</span></li>
	<li class="survivor-lista"><span name="survivor">Rick Grimes1</span></li>
	<li class="survivor-lista"><span name="survivor">Rick Grimes2</span></li>
	<li class="survivor-lista"><span name="survivor">Rick Grimes3</span></li>
	<li class="survivor-lista"><span name="survivor">Rick Grimes4</span></li></ul>
<br/><br/><br/>	
<?php

$usuarios = get_users('orderby=user_login&role=subscriber');
foreach ($usuarios as $usuario) {


	echo '<h1 class="survivor-lista-nombre" style="font-size: 135%;">' . $usuario->user_login .' (Expire Date: '.$usuario->expire_date. ')</h1><br/>';
    echo '<ul>';
	echo '<li class="survivor-lista"> <span name="survivor">' . $usuario->survivor1 . '</span></li>';
	echo '<li class="survivor-lista"><span name="survivor">' . $usuario->survivor2 . '</span></li>';
	echo '<li class="survivor-lista"> <span name="survivor">' . $usuario->survivor3 . '</span></li>';
	echo '<li class="survivor-lista"> <span name="survivor">' . $usuario->survivor4 . '</span></li>';
	echo '<li class="survivor-lista"><span name="survivor">' . $usuario->survivor5 . '</span></li></ul>';
	 echo '<br/><br/><br/>';
	
	
}
echo '</div>';
?>


		</div><!-- #content -->
	</div><!-- #primary -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>