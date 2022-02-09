<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<style>
body{
	font-size:2rem;
}
.profile{
     border-radius: 50%;
     padding: 5px;
}
.com-container{
	line-height:40px;
	height:800px;
}
.com-container .com-content-block .com-out-block .com-in-block img{
	height: 80px;
	width: 80px;
	border-radius: 50%;
	border: none;
}

.com-in-block{
	display:block;
}
.com-content-block{
	margin: 0 auto;
	width: 1000px;
}
.com-writer{
	position: absolute;
	top:5%;
}
.com-write-block{
	position:relative;
	margin: -8% 76% -1% 11%;
	width:1000px;
}
.com-view{
	position: relative;
    margin: 1% 0% 2% 0%;
}
.com-date{
	position: relative;
    margin: -2% 0% 2% 71%;
}
.com-title{
	font-size:3rem;
	margin-top:5%;
	margin-bottom:3%;
}
.com-out-block{
	background: #d2d2d2;
    border: none;
    padding: 4%;
    width: 111%;
    height: 100px;
    border-right:3px solid #a2a2a2;
    border-bottom:3px solid #a2a2a2;
    margin-bottom:1%;
}
.com-delBtn{
    width: 63px;
    height: 35px;
    border-radius: 2rem;
    border:none;
}
.com-del{
	position: relative;
    margin: -18% -4% 0% 91%;
}
</style>
</head>
<body>
   	<div class="com-container">
    	<div class="com-content-block">
    		<p class="title">댓글</p>
		    <div class="com-out-block">
		    	<div class="com-in-block">
		    		<span>
			    		<img src="./img/profile.jpg"/>
			    	</span>
			    	<div class="com-write-block">
				    	<span>
				    		마둥석
				    	</span>
				    	<div class="com-view">
			    			<span>그만 하고 싶다!!!!!!!!</span>
			    		</div>
			    		<div class="com-date">
			    			<span>2022.02.10 00:00:00</span>
			    		</div>
			    		<div class="com-del">
		    				<button class="com-delBtn">삭제</button>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		    <div class="com-out-block">
		    	<div class="com-in-block">
		    		<span>
			    		<img src="./img/profile.jpg"/>
			    	</span>
			    	<div class="com-write-block">
				    	<span>
				    		마둥석
				    	</span>
				    	<div class="com-view">
			    			<span>그만 하고 싶다!!!!!!!!</span>
			    		</div>
			    		<div class="com-date">
			    			<span>2022.02.10 00:00:00</span>
			    		</div>
			    		<div class="com-del">
		    				<button class="com-delBtn">삭제</button>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		    <div class="com-out-block">
		    	<div class="com-in-block">
		    		<span>
			    	<img src="./img/profile.jpg"/>
			    	</span>
			    	<div class="com-write-block">
				    	<span>
				    		마둥석
				    	</span>
				    	<div class="com-view">
			    			<span>그만 하고 싶다!!!!!!!!</span>
			    		</div>
			    		<div class="com-date">
			    			<span>2022.02.10 00:00:00</span>
			    		</div>
		    			<div class="com-del">
		    				<button class="com-delBtn">삭제</button>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		</div>
	</div>
</body>
</html>