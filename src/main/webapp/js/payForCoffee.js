/**
 * 
 */
function chooseCard(obj){
	 var ss= document.getElementsByName("checkboxCard");
	  for (var i = 0; i < ss.length; i++) {
	   ss[i].checked = false;
	  }
	  obj.checked = true;
}

 function choose(obj){
  var ss= document.getElementsByName("cartCheckBox");
  for (var i = 0; i < ss.length; i++) {
   ss[i].checked = false;
  }
  obj.checked = true;
 }
 var addrssid;
 var cardId;
function submitAddrss(){
	var checkInputs = document.getElementsByName("cartCheckBox");
	//alert(checkInputs.length);
	var i=0;
	for( i=0;i< checkInputs.length;i++){
		if(checkInputs[i].checked) {
			var c=checkInputs[i].parentNode.parentNode;
			addrssid=c.childNodes[3].innerHTML;
			break;
		}	
	}
	if(i==checkInputs.length){
			alert(" Please choose address");
		}else{
			var address=document.getElementById("table-address");
			address.style.display="none";
			document.getElementById("card-table").style.display="block";
			document.getElementById("progress-bar").style.width="100%";
		}
	
}
function submitCard(totalPrice){
	var checkInputs = document.getElementsByName("checkboxCard");
	/*alert(totalPrice);*/
	//alert(checkInputs.length);
	var blance=0;
	var i=0;
	for( i=0;i< checkInputs.length;i++){
		if(checkInputs[i].checked) {
			var c=checkInputs[i].parentNode.parentNode;
			cardId=c.childNodes[3].innerHTML;
			blance=c.childNodes[9].innerHTML;
			break;
		}	
	}
	if(i==checkInputs.length){
			alert(" Please choose Card");
		}else{
			if(blance<totalPrice){
				
				alert("no banlance");
			}else{
				var c=checkInputs[i].parentNode.parentNode;
				c.childNodes[9].innerHTML=(blance-totalPrice).toFixed(2);
				$.ajax({
					type : "get",
					url : "http://localhost:8080/coffee/records/addRecord?id="+cardId+"&&blance="+(blance-totalPrice).toFixed(2)+"&&addrssid="+addrssid,
					async : false,				
					success:function(data){ 
					  alert(data.msg);
					  window.location.href = "${pageContext.request.contextPath}/jsp/coffee.jsp";
					  },
				 
				});
			}
		}
}
