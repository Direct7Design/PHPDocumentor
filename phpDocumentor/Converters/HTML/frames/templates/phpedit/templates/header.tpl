<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
   <html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>{$title}</title>
  <link rel="stylesheet" href="{$subdir}media/stylesheet.css" />
{if $top2 || $top3}
  <script src="{$subdir}media/lib/classTree.js"></script>
<link id="webfx-tab-style-sheet" type="text/css" rel="stylesheet" href="{$subdir}media/lib/tab.webfx.css" />
<script type="text/javascript" src="{$subdir}media/lib/tabpane.js"></script>
{/if}
{if $top2}
  <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
{/if}
{if $top3 || $top2}
  <script language="javascript" type="text/javascript" src="{$subdir}media/lib/ua.js"></script>
<script language="javascript" type="text/javascript">
	var imgPlus = new Image();
	var imgMinus = new Image();
	imgPlus.src = "{$subdir}media/images/plus.gif";
	imgMinus.src = "{$subdir}media/images/minus.gif";
	
	function showNode(Node){ldelim}
        switch(navigator.family){ldelim}
        	case 'nn4':
        		// Nav 4.x code fork...
				var oTable = document.layers["span" + Node];
				var oImg = document.layers["img" + Node];
        		break;
        	case 'ie4':
        		// IE 4/5 code fork...
				var oTable = document.all["span" + Node];
				var oImg = document.all["img" + Node];
        		break;
        	case 'gecko':
        		// Standards Compliant code fork...
				var oTable = document.getElementById("span" + Node);
				var oImg = document.getElementById("img" + Node);
        		break;
        {rdelim}
		oImg.src = imgMinus.src;
		oTable.style.display = "block";
	{rdelim}
	
	function hideNode(Node){ldelim}
        switch(navigator.family){ldelim}
        	case 'nn4':
        		// Nav 4.x code fork...
				var oTable = document.layers["span" + Node];
				var oImg = document.layers["img" + Node];
        		break;
        	case 'ie4':
        		// IE 4/5 code fork...
				var oTable = document.all["span" + Node];
				var oImg = document.all["img" + Node];
        		break;
        	case 'gecko':
        		// Standards Compliant code fork...
				var oTable = document.getElementById("span" + Node);
				var oImg = document.getElementById("img" + Node);
        		break;
        {rdelim}
		oImg.src = imgPlus.src;
		oTable.style.display = "none";
	{rdelim}
	
	function nodeIsVisible(Node){ldelim}
        switch(navigator.family){ldelim}
        	case 'nn4':
        		// Nav 4.x code fork...
				var oTable = document.layers["span" + Node];
        		break;
        	case 'ie4':
        		// IE 4/5 code fork...
				var oTable = document.all["span" + Node];
        		break;
        	case 'gecko':
        		// Standards Compliant code fork...
				var oTable = document.getElementById("span" + Node);
        		break;
        {rdelim}
		return (oTable && oTable.style.display == "block");
	{rdelim}
	
	function toggleNodeVisibility(Node){ldelim}
		if (nodeIsVisible(Node)){ldelim}
			hideNode(Node);
		{rdelim}else{ldelim}
			showNode(Node);
		{rdelim}
	{rdelim}
</script>
{/if}
<!-- template designed by Julien Damon based on PHPEdit's generated templates, and tweaked by Greg Beaver -->
<body bgcolor="#ffffff" {if $top2} topmargin="3" leftmargin="3" rightmargin="2" bottommargin="3"{/if}>
