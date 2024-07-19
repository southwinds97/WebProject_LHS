<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>댓글 목록</title>
  </head>
  <script>
    function CommentDelete(idx, postnum, board_type) {
      var url =
        "commentDelete.do?idx=" +
        idx +
        "&postnum=" +
        postnum +
        "&board_type=" +
        board_type;
      location.href = url;
    }
  </script>
  <body>
  	<div style="padding: 10px;">
    총 댓글 수 : ${totalCount}
  	</div>
    <!-- 댓글목록 리스트-->
    <c:choose>
      <c:when test="${ empty commentLists }"> 등록된 답변이 없습니다. </c:when>
      <c:otherwise>
        <c:forEach items="${commentLists}" var="row" varStatus="loop">
          <div style="width:890px; display:flex; gap:10px; border:1px solid black; margin-bottom:20px;">
            <div style="width:15%; text-align:center; padding:10px">${row.name}</div>
            <div style="width:75%; padding:10px;">${row.content}</div>
            <c:if test="${ UserId eq row.id }">
              <button type="button" id="commentEdit${row.idx}" style="width:5%; background:black; color:white;">수정</button>
              <button
                type="button" 
                onclick="CommentDelete('${row.idx}', '${postnum}', '${board_type}')"
              	style="width:5%; margin-right:-1px; background:black; color:white;"
              >
                삭제
              </button>
            </c:if>
          </div>
            <div id="comment_edit_form${row.idx}" style="margin-bottom:20px;">
              <script
                src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"
              ></script>
              <script>
                $("#commentEdit${row.idx}").click(function () {
                  var idx = ${row.idx}; // Add this line
                  $.ajax({
                    url: "./commentEdit.do",
                    type: "GET",
                    data: {
                      idx: "${row.idx}",
                      postnum: "${param.postnum}",
                      id: "${row.id}",
                      name: "${row.name}",
                      board_type: "${param.board_type}",
                      content: "${row.content}",
                    },
                    success: function (response) {
                      $("#comment_edit_form" + idx).html(response);
                    },
                  });
                });
              </script>
            </div>
        </c:forEach>
      </c:otherwise>
    </c:choose>
  </body>
</html>
