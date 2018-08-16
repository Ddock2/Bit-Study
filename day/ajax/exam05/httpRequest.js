/**
 * Ajax통신을 위한 함수집합
 */

var httpRequest = null;

function getXMLHttpRequest() {
	if (window.XMLHttpRequest) {
		return new XMLHttpRequest();
	}
	if (window.ActiveXObject) {
		return new ActiveXObject("Microsoft.XMLHTTP");
	}
	return null;
}

function sendProcess(method, url, params, callback) {
	httpRequest = getXMLHttpRequest();
	httpRequest.onreadystatechange = callback;
	
	var httpMethod = method.toUpperCase();
	if(httpMethod != 'GET' && httpMethod != 'POST') {
		httpMethod = 'GET';
	}

	var httpParams = '';
	if(params != null && params != '') {
		switch(typeof params) {
		case 'object' : 		
			for(var key in params) {
				if(httpParams != '') 
					httpParams += '&';
				httpParams += key + "=" + encodeURIComponent(params[key]);
			}
			break;
		case 'string' : 
			var datas = params.split('&');
			datas.forEach(function(element, index) {
				var key = element.split('=')[0];
				var value = element.split('=')[1];
				var data = key + "=" + encodeURIComponent(value);
				httpParams += index == 0 ? data : "&"+data; 
			});
			break;	
		}
	}
	
/*	
	// {name:'hong', age:24}
	if(params != null && params != '') {
		for(var key in params) {
			if(httpParams != '') 
				httpParams += '&';
			httpParams += key + "=" + encodeURIComponent(params[key]);
		}
	}
*/	
/*
 	// "name=hong&age=24"
	var datas = params.split('&');
	datas.forEach(function(element, index) {
		var key = element.split('=')[0];
		var value = element.split('=')[1];
		var data = key + "=" + encodeURIComponent(value);
		httpParams += index == 0 ? data : "&"+data; 
	});
 */	
	console.log(httpParams);
	
	
	var httpUrl = url;
	if(httpMethod == 'GET' && httpParams != '' && httpParams != null) {
		httpUrl = url + '?' + httpParams;
	}
		
	httpRequest.open(httpMethod, httpUrl, true);
	if(httpMethod == 'POST') {
		httpRequest.setRequestHeader(
				'content-type', 'application/x-www-form-urlencoded');
	}
	httpRequest.send(httpMethod == 'GET' ? null : httpParams);
}
