// 给图片添加点击事件，显示放大的图片
function show_large_image() {	
	var images = document.getElementsByTagName('img');
	for (let i = 0; i < images.length; i++) {
		images[i].onclick = function() {
			var overlay = document.getElementById('overlay');
			var zoomedImage = document.getElementById('zoomedImage');

			// 显示遮罩层
			overlay.style.display = 'flex';
			overlay.addEventListener('click', function() {
				this.style.display = 'none';
			});

			// 设置放大图片的源
			zoomedImage.src = this.src;
		};
	}
}