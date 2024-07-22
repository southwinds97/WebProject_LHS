<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>좋아요 페이지</title>
  </head>
  <script></script>
  <body>
    <div style="padding: 10px 0">
      <!-- id가 있으면 버튼 보이기-->
      <% if (session.getAttribute("UserId") != null) { %>
      <c:if test="${isLike}">
        <form
          name="likeOff"
          method="post"
          action="like.do"
          style="display: inline"
        >
          <input type="hidden" name="board_type" value="${board_type}" />
          <input type="hidden" name="id" value="${id}" />
          <input type="hidden" name="postnum" value="${postnum}" />
          <div style="display: flex; justify-content: space-between">
            총 좋아요 수 : ${totalCount}
            <input
              type="submit"
              value="좋아요 취소"
              style="
                background: url('images/LikeOn.svg') no-repeat;
                border: none;
                color: transparent;
                width: 30px;
              "
            />
          </div>
        </form>
      </c:if>
      <c:if test="${!isLike}">
        <form
          name="likeOn"
          method="post"
          action="like.do"
          style="display: inline"
        >
          <input type="hidden" name="board_type" value="${board_type}" />
          <input type="hidden" name="id" value="${id}" />
          <input type="hidden" name="postnum" value="${postnum}" />
          <div style="display: flex; justify-content: space-between">
            총 좋아요 수 : ${totalCount}
            <input
              type="submit"
              value="좋아요"
              style="
                background: url('images/LikeOff.svg') no-repeat;
                border: none;
                color: transparent;
                width: 30px;
              "
            />
          </div>
        </form>
      </c:if>
      <% } %>
    </div>
  </body>
</html>
