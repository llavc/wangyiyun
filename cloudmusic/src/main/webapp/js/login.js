var unames="";
$(function () {
    H_login = {};
    H_login.openLogin = function(){
        $('.login-header a').click(function(){
            $('.login').show();
            $('.login-bg').show();
        });
    };
    H_login.closeLogin = function(){
        $('.close-login').click(function(){
        	$("#regWindow").css("display","none");
        	$("#alertPwdWindow").css("display","none");
        	$("#loginWindow").css("display","block");
            $('.login').hide();
            $('.login-bg').hide();
        });
    };
    H_login.loginForm = function () {
        $("#login-button-submit").on('click',function(){
              var username = $("#username");
              var usernameValue = $("#username").val();
              var password = $("#password");
              var passwordValue = $("#password").val();
            if(usernameValue == ""){
                alert("用户名不能为空");
                username.focus();
                return false;
            }else if(usernameValue.length > 15){
                alert("用户名长度不能大于15字符");
                username.focus();
                return false;
            }else if(passwordValue == ""){
                alert("密码不能为空");
                password.focus();
                return false;
            }else if(passwordValue.length < 6 || passwordValue.length > 30){
                alert("密码长度不能小于6或大于30位字符");
                password.focus();
                return false;
            }else{
                $.post("userLogin",{uname:usernameValue,pwd:passwordValue},function(data){
                	data=parseInt(data);
                	if(data>0){
                		setTimeout(function(){
                            $('.login').hide();
                            $('.login-bg').hide();
                            $('.list-input').val('');
                        },2000);
                		location.href="index.jsp";
                	}else{
                		alert("用户名或密码错误...");
                	}
                },"text");
                
            }
        });
    };
    H_login.run = function () {
        this.closeLogin();
        this.openLogin();
        this.loginForm();
    };
    H_login.run();
    
    $.post("findAll",null,function(data){
    	$.each(data,function(index,row){
    		unames+=row.uname;
    	});
    },"json");
});

function userExit(){
	$.post("userExit",null,function(data){
		data=parseInt(data);
		if(data>0){
			location.href="index.jsp";
		}
	},"text");
}

function userReg(){
	var uname=$.trim( $("#reg_uname").val() );
	var pwd=$.trim( $("#reg_pwd").val() );
	var pwd1=$.trim( $("#reg_pwd1").val() );
	
	if(pwd!=pwd1){
		alert("两次密码不一致");
		return;
	}
	
	$.post("regUserInfo",{uname:uname,pwd:pwd},function(data){
		data=parseInt(data);
		if(data>0){
			alert("注册成功...");
			$("#reg_uname").val("");
			$("#reg_pwd").val("");
			$("#reg_pwd1").val("");
		}else{
			alert("注册失败...");
		}
	},"text");
}

function checkUname(){
	var uname=$.trim( $("#username").val() );
	if(uname==null){
		alert("请输入用户名...");
	}else if(!unames.contrains(uname)){
		
	}
}

function alertPwd(){
	var uname=$.trim( $("#alertPwd_uname").val() );
	var pwd=$.trim( $("#alertPwd_pwd").val() );
	var pwd1=$.trim( $("#alertPwd_pwd1").val() );
	
	if(pwd!=pwd1){
		alert("两次密码不一致");
		return;
	}
	
	$.post("alertPwd",{uname:uname,pwd:pwd},function(data){
		data=parseInt(data);
		if(data>0){
			alert("修改成功...");
			$("#reg_uname").val("");
			$("#reg_pwd").val("");
			$("#reg_pwd1").val("");
		}else{
			alert("修改失败...");
		}
	},"text");
}