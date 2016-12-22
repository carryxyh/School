function changeWork(obj){
	if(obj.value == "worker"){
		$(".student_info").css("display","none");
		$(".company_info").css("display","");
		if($("#uniDiv").css("display") != "none"){
			$("#uniDiv").css("display","none");
		}
	}else if(obj.value == "student"){
		$(".student_info").css("display","");
		$(".company_info").css("display","none");
	}else if(obj.value == "midstu"){
		$(".student_info").css("display","none");
		$(".company_info").css("display","none");
		if($("#uniDiv").css("display") != "none"){
			$("#uniDiv").css("display","none");
		}
	}else{
		$(".student_info").css("display","none");
		$(".company_info").css("display","none");
		if($("#uniDiv").css("display") != "none"){
			$("#uniDiv").css("display","none");
		}
	}
}

var xmlHttpRequest;

function init(){
	try{
		xmlHttpRequest = new XMLHttpRequest();
	}catch(e){
		try{
			xmlHttpRequest = new ActiveXObject("Msxml2.XMLHTTP");
		}catch(e){
			try{
				xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			}catch(e){
				throw e;
			}
		}
	}
}

function setUniInPro(obj){
	init();
	if(xmlHttpRequest){
		
		var counID = obj.getAttribute("counID");
		
		var req = "/School_A/changeInfo?proID=" + obj.id +"&counID=" + counID;

		xmlHttpRequest.open("get",req,true);
		
		xmlHttpRequest.onreadystatechange = setUni;
		
		xmlHttpRequest.send();
	}
}

function showUniDiv(){
	$("#uniDiv").show();
}

function closeUniDiv(){
//	document.getElementById("uniDiv").style.display = "none";
	$("#uniDiv").css("display","none");
}

function setMyUni(obj){
	$("#university").val(obj.innerHTML);
	$("#uniDiv").css("display","none");
	$("#universityId").val(obj.id);
}

function setUni(){
	if(xmlHttpRequest.readyState == 4){
		if(xmlHttpRequest.status == 200){
			var result = xmlHttpRequest.responseText;
			var jsonArray = eval("("+ result +")");
			var con = "<table id='uniTable'><tr><td>";
			for (var i = 0; i < jsonArray.length; i++) {
				con += "<li><a onclick='setMyUni(this)' href='javascript:void(0)' id='" + jsonArray[i].uniID + "'>" + jsonArray[i].uniName + "</a></li>";
			}
			con += "</td></tr></table>";
			document.getElementById("uniTable").innerHTML = con;
		}
	}
}