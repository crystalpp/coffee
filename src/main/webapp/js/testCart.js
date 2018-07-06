/*改变所购商品的数量*/

function changeNum(numId, flag) {
	var tom = document.getElementById(numId);
	if (flag == 'add') {
		tom.value++;
	}
	if (flag == 'minus') {
		if (tom.value > 1) {
			tom.value = tom.value - 1;
		}
	}
	var id = tom.parentNode.parentNode.childNodes[3].innerHTML;
	$.ajax({
		type : "get",
		url : "http://localhost:8080/coffee/carts/updateCart?id="+id+"&&number="+tom.value,
		async : false,
	/*
	 * success:function(data){ alert(data.msg); window.location.reload(); },
	 */
	});

	getSubTotal(tom.parentNode.parentNode.id);
	productCount();
}
function getSubTotal(tr) {
	var tds = document.getElementById(tr);
	var price = parseFloat(tds.cells[4].innerHTML);// 获取价格
	var count = parseInt(tds.cells[5].getElementsByTagName('input')[0].value);// 获取数量
	var SubTotal = parseFloat(price * count);
	tds.cells[6].innerHTML = SubTotal.toFixed(2);// 四舍五入
}

/* 自动计算商品的总金额、总共节省的金额和积分 */
function productCount() {
	var checkAllInputs = document.getElementById('allCheckBox');
	var tableTr = document.getElementById("shopping").getElementsByTagName("tr");
	var total = 0; // 所有商品的总计
	var integral = 0; // 所有商品的积分
	console.log(tableTr);
	/*
	 * if(tableTr.length==3){ checkAllInputs.checked=false; }
	 */
	var checkInputs = document.getElementsByName("cartCheckBox");
	for (var i = 0; i < checkInputs.length; i++) {
		/* var point=0; */// 每一行商品的单品积分
		var price = 0; // 每一行商品的单价
		var nums = 0; // 每一行商品的数量

		if (checkInputs[i].checked) { // 判断复选框是否被选中
			var c = checkInputs[i].parentNode.parentNode;
			price = c.childNodes[9].innerHTML;
			/* alert(price); */
			nums = c.childNodes[11].childNodes[3].value; // 选中行商品的数量

			console.log(nums);
			/* integral+=point*nums; */// 所有商品的积分的和 = 每一行商品的单价积分 x 数量 相加
			total += price * nums;// 所有商品的总计的和 = 每一个商品的单价 x 数量 相加
			c.childNodes[13].innerHTML = price * nums; // 商品小计 =商品的单价 x 数量
		} else {
			total += 0;// 思考这里为什么是“+=”
			/* integral+=0; */
		}
	}
	document.getElementById("total").innerHTML = total;
	/* document.getElementById("integral").innerHTML=integral; */
}

function productCountAll() {
	var checkInputs = document.getElementsByName("cartCheckBox");
	var totalAll = 0;
	for (var i = 0; i < checkInputs.length; i++) {
		var price = 0; // 每一行商品的单价
		var nums = 0; // 每一行商品的数量
		var c = checkInputs[i].parentNode.parentNode;
		price = c.childNodes[9].innerHTML;
		nums = c.childNodes[11].childNodes[3].value;
		console.log(nums);
		totalAll += price * nums; // 所有商品的总计的和 = 每一个商品的单价 x 数量 相加
		c.childNodes[13].innerHTML = price * nums; // 商品小计 =商品的单价 x 数量

	}
	document.getElementById("totalCart").innerHTML = totalAll;
}
window.onload = productCountAll;

/* 复选框全选或全不选效果 */
function selectAll() {

	var checkInputs = document.getElementsByName("cartCheckBox");
	var checkAllInputs = document.getElementById('allCheckBox');
	/* checkAllInputs.checked=true; */
	for (var i = 0; i < checkInputs.length; i++) {
		checkInputs[i].checked = checkAllInputs.checked;
	}
	productCount();

}

/* 根据单个复选框的选择情况确定全选复选框是否被选中 */
function selectSingle() {
	var checkInputs = document.getElementsByName("cartCheckBox");
	var checkAllInputs = document.getElementById('allCheckBox');
	var count = 0;
	for (var i = 0; i < checkInputs.length; i++) {
		if (checkInputs[i].checked) {
			count++;
		}
		if (count === checkInputs.length) {// 判断是否全选
			checkAllInputs.checked = true;
			selectAll();

		} else {
			checkAllInputs.checked = false;
		}
	}
	productCount();

}
// 删除
function deleteRow(rowId) {
	var t = document.getElementById(rowId);
	t.previousSibling.previousSibling.remove();
	t.remove();
	var id = t.childNodes[3].innerHTML;
	alert(id);
	$.ajax({
		type : "post",
		url : "http://localhost:8080/coffee/carts/deleteCart?id="+id,
		async : false,
		success : function(data) {
			alert(data.msg);
			window.location.reload();
		},
	});
	productCount();
}

//结算功能
function checkCart() {
/*	alert("hahaha");*/
	var checkInputs = document.getElementsByName("cartCheckBox");
	for (var i = 0; i < checkInputs.length; i++) {
		// //
		var nums = 0; // 每一行商品的数量
		if (checkInputs[i].checked) { // 判断复选框是否被选中
			var c = checkInputs[i].parentNode.parentNode;
			var id = c.childNodes[3].innerHTML;// 选中行的id
			alert(id);
			$.ajax({
				type :"post",
				url : "http://localhost:8080/coffee/carts/checkCart?id="+id,
				async : false,
			/*
			 * success:function(data){ alert(data.msg); window.location.reload(); },
			 */
			});
		}
	}
	window.location.href="http://localhost:8080/coffee/recordCarts/findAll";
	
}

