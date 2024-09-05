<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="${description}">
  <meta name="author" content="svygh123、风雨心行、软件开发与技术设计、357228560" />
  <title>${title}</title>
  <!-- 引入 highlight.js 的样式：v11.10.0   
  <link href="default.min.css" rel="stylesheet">
  -->
  <!-- 引入 Markdown-it.js：v13.0.2 和 highlight.js：v11.10.0
  <script src="markdown-it.min.js"></script>
  <script src="highlight.min.js"></script>
    -->
  <link href="skeleton.css" rel="stylesheet">
  <link href="content.css" rel="stylesheet">
  <script src="common.js"></script>
  <script>
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?83dfc5cd77f5e1c0765062c74f6c2162";;
      var s = document.getElementsByTagName("script")[0]; 
      s.parentNode.insertBefore(hm, s);
    })();
    </script>
</head>
<body>
	<div id="article">
    <div title="返回首页" class="container bread" style="margin: 10px auto; cursor: pointer; border-bottom: 1px solid #49a7ea;">
		     <a class="underline-none" href="/">源码家园</a> 
	  </div>
		<h1 class="title text-center">${title}</h1>
		<div class="info text-center">发布日期：${date}   作者：${author} 分类：${category}</div>
		<div id="content" class="container" style="padding:8px">
      <div class="summary">${summary}</div>
      ${content}
      ${contract}
    </div>
	</div>
  <script>
      show_large_image();
  </script>
</body>
</html>