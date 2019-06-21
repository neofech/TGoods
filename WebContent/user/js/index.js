ajax("get", "http://localhost:8080/tgou/user_show_pro", null, function(
				result) {
			// succeed
			initData(result);
		}, function() {
			// failed

		});

		function initData(result) {
			//假设已经知道了json的长度,用len表示
			var content = JSON.parse(result);
			var data = content.data;
			console.log(data);
			var items = "";
			for ( var i = 0; i < data.length; i++) {
				var item = document.getElementById("model").innerHTML;
				var list = item.replace("$title$", data[i].title).replace(
						"$id$", data[i].goodNumber).replace("$oldMoney$",
						data[i].oldMoney).replace("$money$", data[i].money)
						.replace("$img$", data[i].images).replace("$count$",
								data[i].sellNumber);
				items += list;
			}
			var goods = document.getElementById("goods");
			goods.innerHTML = items;
			var product = goods.getElementsByClassName("product");
			for ( var i = 0; i < product.length; i++) {
				product[i].onclick = function() {
					console.log(this);
					window.open("goodinfo.jsp?id=" + this.id);
				}
			}
		}