<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>댓글작성</title>
    <script type="text/javascript">
      function validateForm(form) {
        // 필수 항목 입력 확인
        if (form.content.value == "") {
          alert("내용을 입력하세요.");
          form.content.focus();
          return false;
        }
      }
    </script>
  </head>
  <body>
    <!-- 댓글 작성 폼 -->
    <form
      name="commentEditFrm"
      method="post"
      action="commentEdit.do"
      onsubmit="return validateForm(this);"
    >
      <input type="hidden" name="postnum" value="${param.postnum }" />
      <input type="hidden" name="board_type" value="${param.board_type }" />
      <input type="hidden" name="idx" value="${idx}" />
      <input type="hidden" name="id" value="${id}" />
      <input type="hidden" name="name" value="${name}" />
      <ul>
        <li style="width:890px; display:flex;">
          <textarea name="content" rows="5" cols="50" style="width:90%; height:100px; border:1px solid black;">${content}</textarea>
            <% if (session.getAttribute("UserId") != null) { %>
                <input type="submit" value="수정완료" style="margin-left: 10px; display:block; line-height:100px; width:10%; 
                	border:1px solid black; text-align:center;"/>
            <% } else { %>
                <a href="login.do" class="button" style="margin-left: 10px; display:block; line-height:100px; width:10%; 
                	border:1px solid black; text-align:center;">로그인</a>
            <% } %>
        </li>
      </ul>
    </form>
  </body>
</html>
