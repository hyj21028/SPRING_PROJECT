/**
 * 
 */

console.log("reply Model....")
var replyService=(function(){
   
   function add(reply, callback, error){
      console.log("add reply...")
      $.ajax({
         type:'post', //HTTP 요청 메소드
         url:'/reply/new', //클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
         data :JSON.stringify(reply), //HTTP 요청과 함께 서버로 보낼 데이터, 성공적으로 값을 보냈을 경우 처리
         contentType:"application/json;charset=utf-8", 
         success:function(result,status, xhr){ //요청이 성공일때 실행되는 callback 함수
            if(callback){
               callback(result)
            }
         },
         error:function(xhr,status,er){
            if(error){
               error(er)
            }
         }
      });
   }
   function getList(param,callback, error){
      console.log("getList...");
      var bno=param.bno;
      var page=param.page || 1;
      
      $.getJSON("/reply/pages/"+bno+"/"+page+".json",function(data){
            if(callback){
               callback(data.replyCnt, data.list);
            }   
         }).fail(function(xhr,status, err){
            if(error){
               error();
            }
         });
   }
   function remove(rno,callback,error){
      console.log("remove()..."+rno);
      $.ajax({
         type:'delete',
         url:'/reply/'+rno,
         success:function(deleteResult, status, xhr){
            if(callback){
               callback(deleteResult);
            }
         },
         error:function(xhr,status,er){
            if(error){
               error(er)
            }
         }
      });
   }
   function update(reply, callback, error){
      console.log("update..."+reply.rno);
      $.ajax({
         type:'put',
         url:'/reply/'+reply.rno,
         data:JSON.stringify(reply),
         contentType:"application/json;charset=utf-8",
         success:function(result,status, xhr){
            if(callback){
               callback(result);
            }
         },
         error:function(xhr,status, er){
            if(error){
               error(er);
            }
         }
      });
   }
   function get(rno, callback,error){
      $.get("/reply/"+rno+".json",function(result){
         if(callback){
            callback(result);
         }
      }).fail(function(xhr, status, err){
         if(error){
            error()
         }
      });
   }
   function displayTime(timeValue) {
      var today = new Date();
      var gap = today.getTime() - timeValue;
      var dateObj = new Date(timeValue);
      var str = "";

      if (gap < (1000 * 60 * 60 * 24)) {

         var hh = dateObj.getHours();
         var mi = dateObj.getMinutes();
         var ss = dateObj.getSeconds();

         return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
               ':', (ss > 9 ? '' : '0') + ss ].join('');

      } else {
         var yy = dateObj.getFullYear();
         var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
         var dd = dateObj.getDate();

         return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
               (dd > 9 ? '' : '0') + dd ].join('');
      }
   }
   return{
      add:add,
      getList:getList,
      remove:remove,
      update:update,
      get:get,
      displayTime:displayTime
   }
   
})();
