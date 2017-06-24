<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>New Document </title>
    <meta name="Generator" content="EditPlus">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
</head>
<body>
    <input type="button" value="open 10 page" onclick="javascript:gopen(10);" />
    <input type="button" value="open 20 page" onclick="javascript:gopen(20);" />
    <input type="button" value="open 30 page" onclick="javascript:gopen(30);" />
    <input type="button" value="open 40 page" onclick="javascript:gopen(40);" />
    <input type="button" value="open 50 page" onclick="javascript:gopen(50);" />

    <script language="javascript" type="text/javascript">
	function gopen(number){
		for(var i=0;i!=number/2;++i){
		    window.open("http://localhost/WebAppFilterForbiddenWord/cnBeta.aspx");
		    window.open("http://localhost/WebAppFilterForbiddenWord/Default.aspx");
		}
	}
    </script>

</body>
</html>
