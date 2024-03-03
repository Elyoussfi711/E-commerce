
<%@  page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AJOUTER</title>
</head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@ page import="metier.USER,java.util.*"%>
<style>
body {
	color: #404E67;
	background: #F5F7FA;
	font-family: 'Open Sans', sans-serif;
}

.table-wrapper {
	width: 700px;
	margin: 30px auto;
	background: #fff;
	padding: 20px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 10px;
	margin: 0 0 10px;
}

.table-title h2 {
	margin: 6px 0 0;
	font-size: 22px;
}

.table-title .add-new {
	float: right;
	height: 30px;
	font-weight: bold;
	font-size: 12px;
	text-shadow: none;
	min-width: 100px;
	border-radius: 50px;
	line-height: 13px;
}

.table-title .add-new i {
	margin-right: 4px;
}

table.table {
	table-layout: fixed;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table th:last-child {
	width: 100px;
}

table.table td a {
	cursor: pointer;
	display: inline-block;
	margin: 0 5px;
	min-width: 24px;
}

table.table td a.add {
	color: #27C46B;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #E34724;
}

table.table td i {
	font-size: 19px;
}

table.table td a.add i {
	font-size: 24px;
	margin-right: -1px;
	position: relative;
	top: 3px;
}

table.table .form-control {
	height: 32px;
	line-height: 32px;
	box-shadow: none;
	border-radius: 2px;
}

table.table .form-control.error {
	border-color: #f50000;
}

table.table td .add {
	display: none;
}
</style>
<body>
	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-8">
						<h2>
							<center>
								USER <b>Details</b>
							</center>
						</h2>
					</div>
					<a href="index"><button type="submit" class="btn btn-primary">RETOUR</button></a>

					<form action="ajouter.php" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">USER</label> <input type="text"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter login"
								name="user"> <small id="emailHelp"
								class="form-text text-muted">We'll never share your data
								with anyone else.</small>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" name="password" class="form-control"
								id="exampleInputPassword1" placeholder="Password">
						</div>

						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>


			</div>
		</div>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Name</th>
					<th>Password</th>
				</tr>
			</thead>
			<tbody>
				<%
				List<USER> users = (List<USER>) request.getAttribute("users");
				for (USER user : users) {
					out.println("<tr>");
					out.println("<td>" + user.getLogin() + "</td>");
					out.println("<td >" + user.getMdp() + "</td>");
					//out.println("<td><a href=modifier.do?login=" + user.getLogin() + ">EDIT</a></td>");
					out.println("</tr>");
				}
				%>
			
		</table>
	</div>
	</div>

</body>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('[data-toggle="tooltip"]').tooltip();
						var actions = $("table td:last-child").html();
						// Append table with add row form on add new button click
						$(".add-new")
								.click(
										function() {
											$(this)
													.attr("disabled",
															"disabled");
											var index = $(
													"table tbody tr:last-child")
													.index();
											var row = '<tr>'
													+ '<td><input type="text" class="form-control" name="name" id="name"></td>'
													+ '<td><input type="password" class="form-control" name="pwd" id="department"></td>'
													+ '<td>' + actions
													+ '</td>' + '</tr>';
											$("table").append(row);
											$("table tbody tr").eq(index + 1)
													.find(".add, .edit")
													.toggle();
											$('[data-toggle="tooltip"]')
													.tooltip();
										});

						// Edit row on edit button click
						$(document).on(
								"click",
								".edit",
								function() {
									$(this).parents("tr").find(
											"td:not(:last-child)").each(
											function() {
												$(this).html(
														'<input type="text" class="form-control" value="'
																+ $(this)
																		.text()
																+ '">');
											});
									$(this).parents("tr").find(".add, .edit")
											.toggle();
									$(".add-new").attr("disabled", "disabled");
								});
						// Delete row on delete button click
						$(document).on("click", ".delete", function() {
							$(this).parents("tr").remove();
							$(".add-new").removeAttr("disabled");
						});
					});
</script>
</html>
