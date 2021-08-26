/*
 * 
 * */
// 호출
$(document).ready(function(){
	var bno=$("#bno").val();
	showList();
	
	function showList(){
		replyService.getList(
				{bno:bno},
				function(list){
					var str="";
					for(var i=0; i<list.length;i++){
						str+="<li>"+list[i].replyer+"</li>"
						str+="<li><textarea rows='3' col='30' id='modreply"+list[i].rno+"'>"+list[i].reply+"</textarea></li>"
						str+="<li>"+list[i].replydate+"</li>"
						str+="<li><button class='replymod' id='replymod' data-rno='"+list[i].rno+"'>댓글수정</button><button class='replydel' id='replydel' data-rno='"+list[i].rno+"'>댓글삭제</button></li><hr>"
					}
					$("#replyList").html(str)
				}
		)
	}
	
	// 댓글 작성 클릭시
	$("#replyadd").click(function(e){
		// 댓글값가져오기
		var reply=$("#reply").val();
		// 댓글작성자가져오기
		var replyer=$("#reWriter").val();
		replyService.add(
				{reply:reply,replyer:replyer,bno:bno},
				function(result){	// 정상처리 후 작업(callback)
					showList();
				}
		);
	}); //댓글 작성끝
	// 댓글 수정 $("#replyList").on("click",".replymod",function(e)) 이렇게 정확히 지정해주어야 replyList가 막지않고 클릭버튼을 실행할수있다
	$("#replyList").on("click",".replymod",function(e){
		console.log("수정클릭");
		
		var rno=$(this).data("rno");
		var reply=$("#modreply"+rno).val();
		replyService.update(
			{reply:reply,rno:rno},
			function(result){
				alert("수정");
				showList();
			}
		)
	})
	
	// 댓글삭제 	수정과 마찬가지로 정확하게 지정해주어야한다
	$("#replyList").on("click",".replydel",function(e){
		var rno=$(this).data("rno");
		replyService.remove(
			rno,
			function(result){
				alert("댓글이 삭제되었습니다");
				showList();
			}
		)
	})
	
})
// 선언
var replyService=(function(){
	// 댓글작성 함수
	function add(reply, callback, error){
		console.log("add reply");
		alert("댓글이 작성되었습니다");
		$.ajax({
			type:"post",
			url:"/reply/new",
			data:JSON.stringify(reply),	// JSON.stringify는 JavaScript 값이나 객체를 JSON 문자열로 변환
			contentType:"application/json; charset=uft-8",
			success:function(result,status,xhr){ // 요청이 성공했을때 선언되는 함수function(result,status,xhr)
				if(callback){
					callback(result);
				}
			},
			error:function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		})
	}// add함수의 끝
	// getList (댓글작성후 목록리스트가 나오도록)
	function getList(param,callback,error){
		var bno=param.bno;
		$.getJSON("/reply/page/"+bno+".json",
			function(data){
				if(callback){
					callback(data);
				}
			}
		).fail(function(xhr,status,err){
			if(error){
				error(er);
			}
		});
	}// getList함수 끝
	
	// update함수 끝
	function update(reply,callback,error){
		$.ajax({
			type:"put",
			url:"/reply/"+reply.rno,
			data:JSON.stringify(reply),
			contentType:"application/json; charset=utf-8",
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		})
	}
	
	//remove 시작
	function remove(rno,callback,error){
		console.log("del reply");
		$.ajax({
			type:"delete",
			url:"/reply/"+rno,
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		})
	} // remove 끝
	
	return{
		add:add,
		getList:getList,
		update:update,
		remove:remove
		
	};
})();




























