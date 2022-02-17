<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Votaciones</title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<h1>Votaciones</h1>
<form action="<?php htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
	<table>
		<tr class="form-group">
			<td>Nombre y apellido</td>
			<td>
				<input type="text" class="form-control" name="nombre_apellido" id="nombre_apellido">
			</td>
		</tr>
		<tr class="form-group">
			<td>Alias</td>
			<td>
				<input type="text" class="form-control" name="alias" id="alias">
			</td>
		</tr>
		<tr class="form-group">
			<td>RUT</td>
			<td>
				<input type="text" class="form-control" name="rut" id="rut">
			</td>
		</tr>
		<tr class="form-group">
			<td>Email</td>
			<td>
				<input type="email" class="form-control" name="email" id="email">
			</td>
		</tr>
		<tr class="form-group">
			<td>Regi&oacute;n</td>
			<td>
				<select class="form-control" id="region" name="region" onclick="get_comunas(this.value)">
					<option value=""></option>
					<?php
					include 'conection.php';
					include 'get_data.php';

					$result = get_data($conn, "region");
					if ($result) {
						get_region($result, $conn);
					}

					?>

				</select>
			</td>
		</tr>
		<tr class="form-group">
			<td>Comuna</td>
			<td>
				<select class="form-control" id="comuna" name="comuna">
					<option value=""></option>
				</select>
			</td>
		</tr>
		<tr class="form-group">
			<td>Candidato</td>
			<td>
				<select class="form-control" id="candidato" name="candidato">
					<option value=""></option>
					<?php
					$result = get_data($conn, "candidato");
					if ($result) {
						get_candidato($result, $conn);
					}

					?>
				</select>
			</td>
		</tr>
		<tr class="form-group">
			<td>Como se enter&oacute; de Nosotros</td>
			<td>
				<div class="form-check form-check-inline">
					<input type="checkbox" class="form-check-input" name="checkbox[]" id="web" value="WEB">
					<label class="form-check-label" for="web">Web</label>
				</div>
				<div class="form-check form-check-inline">
					<input type="checkbox" class="form-check-input" name="checkbox[]" id="tv" value="TV">
					<label for="tv" class="form-check-label">TV</label>
				</div>
				<div class="form-check form-check-inline">
					<input type="checkbox" class="form-check-input" name="checkbox[]" id="r_sociales" value="Redes_Sociales">
					<label for="r_sociales" class="form-check-label">Redes Sociales</label>
				</div>
				<div class="form-check form-check-inline">
					<input type="checkbox" class="form-check-input" name="checkbox[]" id="amigo" value="Amigo">
					<label for="amigo" class="form-check-label">Amigo</label>
				</div>

			</td>
		</tr>
		<tr>
			<td>
				<br>
				<input type="submit" class="btn btn-primary" id="votar" name="votar" value="Votar">
			</td>
		</tr>
	</table>
	<?php
	include 'validations.php';
	?>

</form>

<footer>
	<script src="ajax.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</footer>
</body>

</html>