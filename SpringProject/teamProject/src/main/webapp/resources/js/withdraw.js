function doDisplay(){
    var con = document.getElementById("withdraw");
    if(con.style.display=='none'){ 
        con.style.display = 'block';
    }else{
        con.style.display = 'none';
    }
}
$(document).ready(function(e){

   $('#letsWithdraw').click(function(){
      if($.trim($('#userPwd').val()) == ''){
         alert("패스워드 입력");
         $('#userPwd').focus(); //마우스 클릭해서 포커스가지기
         return;
      }
   });
   
});