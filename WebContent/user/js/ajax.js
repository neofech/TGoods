function ajax(method, url, data, fun1, fun2) {
	var xhr = null;
	if (window.XMLHttpRequest) {
		xhr = new XMLHttpRequest();
	} else {
		xhr = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (method == "get") {
		xhr.open("get", url + "?" + data, true);
		xhr.send();
	} else { // post
		xhr.open("post", url, true);
		xhr.setRequestHeader('content-type',
				'application/x-www-form-urlencoded');
		xhr.send(data);
	}
	xhr.onreadystatechange = function() {

		if (xhr.readyState == 4) {

			if (xhr.status == 200) {

				fun1(xhr.responseText);

			} else {
				if (fun2) {
					fun2();
				}

			}
		}
	}
}