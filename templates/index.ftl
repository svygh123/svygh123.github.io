<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="软件开发、软件设计、原型设计、软件定制、企业级开发、毕业设计" />
    <meta name="author" content="svygh123、风雨心行、软件开发与技术设计、357228560" />
    <title>代码说 - java javase swing javafx java web jsp servlet springmvc springboot springcloud c# winform python django flask nodejs 数据库</title>
	  <link href="post/skeleton.css" rel="stylesheet">
	  <link href="post/com.css" rel="stylesheet">
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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container px-5">
            <a class="navbar-brand ls-1" href="/" id="top">代码说</a>
            <button class="navbar-toggler text-white pd-0 mb-02 mt-02" style="order:1" id="toggleBtn">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0" id="menu">
				
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">首页</a></li>
                    
                    <#list mapData?keys as key>
                        <li class="nav-item"><a class="nav-link" href="#${key}">${key}</a></li>
                    </#list>

                    <li class="nav-item"><a class="nav-link" href="#footer" title="系统定制/咨询">系统定制/咨询</a></li>
				
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container px-4 px-lg-5" id="pageContent">

      <#list mapData?keys as key>
        <div class="row card text-white bg-secondary my-5 py-4 text-center" id="${key}">
          <div class="card-body"><p class="text-white m-0">${key}</p></div>
        </div>
        <div class="row gx-4 gx-lg-5">
          <#list mapData[key] as item>
              <a class="four columns bb-1 mb-15 item" href="${item.url}">
                  <div class="card h-100">
                      <div class="card-body">
                          <h2 class="card-header">${item.title}</h2>
                          <div class="info">发布日期：${item.date}&nbsp;&nbsp;&nbsp;&nbsp;作者：${item.author}</div>
                          <div class="info">文章标签：${item.tag}</div>
                          <p>${item.summary}</p>
                      </div> 
                  </div>
              </a>
              <hr>
          </#list>
        </div>
      </#list>


    </div> <!-- Page Content end -->

    <span id="last-seperator" class="mb-5">&nbsp;</span>

    <!-- Footer -->
    <footer class="py-5 bg-dark" id="footer">
		<div class="container px-4 px-lg-5">
			<!-- <p class="m-0 text-center text-white">系统定制/咨询：<span id="email">357228560@qq.com</span><a href="#top" class="pull-right un-line text-white">返回顶部</a></p> -->
      <p>
			代码说 2023&nbsp;|&nbsp;<a href="http://beian.miit.gov.cn/">桂ICP备2023001078号</a>&nbsp;|&nbsp;Email: <a href=mailto:357228560@qq.com>357228560@qq.com</a>
			</p>
		</div>
	</footer>

    
	<script type="module">
        document.getElementById('toggleBtn').addEventListener('click', function (event) {
            const menu = document.getElementById('navbarSupportedContent');			
            const toggleBtn = document.getElementById('toggleBtn');			
			if (menu.className.indexOf('show') > -1) {
				menu.classList.remove('show');
				menu.classList.add('hidden');
				toggleBtn.style.order=1;
            } else {
				menu.classList.remove('hidden');
				menu.classList.add('show');
				toggleBtn.style.order=0;
            }
        });

        // 双击选中邮箱
		document.getElementById('email').addEventListener('dblclick', function (event) {
            var range = document.createRange();
            range.selectNodeContents(this);
            var selection = window.getSelection();
            selection.removeAllRanges();
            selection.addRange(range);
        });
    </script>
</body>
</html>