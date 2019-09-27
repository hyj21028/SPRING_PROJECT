<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

    <!-- include summernote css/js -->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>

<title>Insert title here</title>


</head>
  <%@ include file ="../include/header.jsp" %>
    <%@ include file ="../include/aside.jsp" %>
<section id="mainList">
        <div class="container">
<form method="post" action="register"  enctype="multipart/form-data">
<table class="table table-bordered">
<tr><td>제목</td><td><input type="text" class="form-control" name="title" style="width:630px;"></td></tr>
<tr><td>카테고리 </td><td>
	<select name = "categoryname" class="form-control" style="width:400px;height:36px;">
      <option>영화</option>
      <option>드라마</option>
      <option>음악</option>
      <option>유틸</option>
     </select> </td> </tr>
<tr><td>내용</td><td><textarea id="summernote" name="content"></textarea></td></tr>
<!-- <tr><td>작성자</td><td><input type="text" name="writer"></td></tr> -->
</table>
<div class="text-center">
<h3 class="bg-light">파일등록</h3><div class="file-upload-wrapper btn btn-primary"> <input type="file"  name="uploadFile" multiple/> </div>
<!-- <br><p class="bg-light" style="color:#ff0000;">파일 드래그하여 게시판에 드랍하여도 파일 등록이 됩니다.</p> -->
<br>
<input type="submit" class="btn btn-info" value="저장">
<a class="btn btn-danger" href="/board/main">취소</a>
</div>
</form>
</div>
</section>

<script type="text/javascript">
$('#summernote').summernote({
	  height: 300,
	  minHeight: null,
	  maxHeight: null,
	  focus: true
	});
$(document).ready(function() {
	  $('#summernote').summernote({
	    popover: {
	      image: [

	        // This is a Custom Button in a new Toolbar Area
	        ['custom', ['examplePlugin']],
	        ['imagesize', ['imageSize100', 'imageSize50', 'imageSize25']],
	        ['float', ['floatLeft', 'floatRight', 'floatNone']],
	        ['remove', ['removeMedia']]
	      ]
	    }
	  });
	});
$(document).ready(function() {
	  $('#summernote').summernote({
	    toolbar:[

	      // This is a Custom Button in a new Toolbar Area
	      ['custom', ['examplePlugin']],

	      // You can also add Interaction to an existing Toolbar Area
	      ['style', ['style' ,'examplePlugin']]
	    ]
	  });
	});
$.extend($.summernote.options, {
    examplePlugin: {
      icon: '<i class="note-icon-pencil"/>',
      tooltip: 'Example Plugin Tooltip'
    }
  });
  $('.dropdown-toggle').dropdown();

	//파일 드래그 앤 드랍
// $(document).on("dragover drop", function(e) {
//     e.preventDefault();
// }).on("drop", function(e) {
//     $("input[type='file']")
//         .prop("files", e.originalEvent.dataTransfer.files)

// });
	
</script>
 <%@ include file ="../include/footer.jsp" %>