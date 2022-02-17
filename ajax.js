function get_comunas(region_id) {

	var conection;

	if (window.XMLHttpRequest) {
		conection = new XMLHttpRequest();
	}

	conection.onreadystatechange = function () {
		if (conection.readyState == 4 && conection.status == 200) {
			document.getElementById('comuna').innerHTML = conection.responseText;
		}
	}
	conection.open('GET', 'get_data.php?region_id=' + region_id, true);
	conection.send();

}
