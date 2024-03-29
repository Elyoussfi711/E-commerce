<%@  page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX</title>
</head>
<style type="text/css">
@import "compass/css3";

* {
	margin: 0;
	padding: 0;
}

@import
	url(https://fonts.googleapis.com/css?family=Droid+Sans:400,700|Droid+Serif:400,700)
	;

html, body {
	height: 100%;
}

body {
	text-align: center;
	background-color: #5d4660; @ include filter-gradient(#5d4660, #f7eec7,
	vertical); $
	experimental-support-for-svg: true; @ include
	background-image(linear-gradient(top, #5d4660 0%,#f7eec7 100%));
	font-family: 'Droid Sans', sans-serif;
}

.wrap {
	width: 800px;
	margin: 0 auto;
	text-align: left;
	color: #989A8F;
}

.table {
	background-color: #ffffff;
	height: 325px;
	width: 100%;
	margin-top: 50px;
}

ul li {
	float: left;
	width: 199px;
	text-align: center;
	border-left: 1px solid #DDDCD8;
}

.top {
	background-color: #EAE9E4;
	height: 75px;
	h1
	{
	padding-top
	:
	20px;
}

}
.circle {
	width: 60px;
	height: 60px;
	border-radius: 60px;
	font-size: 20px;
	color: #fff;
	line-height: 60px;
	text-align: center;
	background: #989A8F;
	margin-left: 70px;
	margin-top: 10px;
}

.bottom {
	margin-top: 50px; p { font-size : 13px;
	font-family: 'Droid Serif', sans-serif;
	padding: 5px;
	span
	{
	font-weight
	:
	bold;
}

}
}
.sign {
	margin-top: 50px; . button { border : 1px solid #989A8F;
	padding: 10px 40px;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	color: #989A8F;
	font-size: 14px;
	text-decoration: none;
	vertical-align: middle;
	font-size: 17px;
}

}
.purple {
	background-color: #5D4660;
}

.white {
	color: #FFFFFF;
}

.pink {
	background-color: #BC9B94;
}
</style>
<body>
	<div class="wrap">
		<div class="table">
			<ul>

				<li>
					<div class="top">
						<h1>AJOUTER</h1>
						<div class="circle">ADD</div>
					</div>
					<div class="bottom">
						AJOUTER
						<div class="sign">
							<a href='ajouter' class='button'>AJOUTER</a>
						</div>
					</div>
				</li>

				<li>
					<div class="top">
						<h1>AFFICHER</h1>
						<div class="circle">SHOW</div>
					</div>
					<div class="bottom">
						LISTER
						<div class="sign">
							<a href='lister' class='button'>LISTER</a>
						</div>
					</div>
				</li>

				<li>
					<div class="top">
						<h1>SUPPRIMER</h1>
						<div class="circle">DEL</div>
					</div>
					<div class="bottom">
						SUPPRIMER
						<div class="sign">
							<a href='supprimer' class="button">SUPPRIMER</a>
						</div>
					</div>
				</li>

				<li>
					<div class="top">
						<h1>MODIFIER</h1>
						<div class="circle">UPD</div>
					</div>
					<div class="bottom">
						MODIFIER
						<div class="sign">
							<a href='modifier' class='button'> MODIFIER</a>
						</div>
					</div>
				</li>

			</ul>
		</div>
	</div>

</body>
</html>
