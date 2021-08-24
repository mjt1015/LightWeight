/*
 * 
 * */
// 호출
$(document).ready(function(){
	var bno=$("#bno").val();
	var replyer=$("#writer").val();
	
	showList();
	
	function showList(){
		replyService.getList()
	}
	
	// 댓글 작성 클릭시
	$("#replyadd").click(function(e){
		// 댓글값가져오기
		var reply=$("#reply").val();
		replyService.add(
				{reply:reply,replyer:replyer,bno:bno},
				function(result){	// 정상처리 후 작업(callback)
					alert("댓글이 작성되었습니다");
					showList();
				}
		);
	});
	
	
})
// 선언
var replyService=(function(){
	// 댓글작성 함수
	function add(reply, collback, error){
		console.log("add reply");
		$.ajax({
			type:"post",
			url:"/reply/new",
			data:JSON.stringify(reply),
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
	return{
		add:add
	};
})();




























