<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/WEB-INF/views/common/header.jsp"%>  
<body>
	<!-- Navigation -->
	<%@include file="/WEB-INF/views/common/navbar.jsp"%> 
	
   	<!-- Header --> 
   	<header class="masthead text-white text-center">
   	<br>
 	<div class="container">
    	<div class="row">
        	<div class="col-xl-9 mx-auto">
            	<h3 class="mb-5"> 공공 도서관의 도서 검색 가능한 사이트입니다.</h3>
            </div>
            <br>
            <div class="col-md-10 col-lg-10 cl-xl-9 mx-auto">
            	<form name="searchform" method="post" action="${pageContext.request.contextPath}/board.do">
	                <div class="form-row">
                  		<div class="col-md-20 col-md-2">
                      		<select id="searchOption1" name="searchOption1"  class="form-control form-control-lg" aria-controls="dataTable">
		                  		<option value="강남도서관">강남도서관</option>
								<option value="강동도서관">강동도서관</option>
								<option value="강서도서관">강서도서관</option>
								<option value="개포도서관">개포도서관</option>
								<option value="고덕평생학습관">고덕평생학습관</option>
								<option value="고척도서관">고척도서관</option>
								<option value="구로도서관">구로도서관</option>
								<option value="남산도서관">남산도서관</option>
								<option value="노원평생학습관">노원평생학습관</option>
								<option value="도봉도서관">도봉도서관</option>
								<option value="동대문도서관">동대문도서관</option>
								<option value="동작도서관">동작도서관</option>
								<option value="마포평생아현분관">마포평생아현분관</option>
								<option value="마포평생학습관">마포평생학습관</option>
								<option value="서대문도서관">서대문도서관</option>
								<option value="송파도서관">송파도서관</option>
								<option value="양천도서관">양천도서관</option>
								<option value="어린이도서관">어린이도서관</option>
								<option value="영등포평생학습관">영등포평생학습관</option>
								<option value="용산도서관">용산도서관</option>
								<option value="정독도서관">정독도서관</option>
								<option value="종로도서관">종로도서관</option>
	                   		</select>
	                	</div>
                     	<div class="col-md-20 col-md-2">
                       		<select  id="searchOption2" name="searchOption2" class="form-control form-control-lg" aria-controls="dataTable" >
                           		<option value="title">도서제목</option>
	                           	<option value="publisher">출판사</option>
	                           	<option value="author">저자</option>
                        	</select>
                    	</div>
                    	</div>
                        <div class="col-md-20 col-md-6">
                        	<!-- 엔터키 방지 -->
                           	<input hidden="hidden"/> 
                            <input type="text" id="search" name="search" class="form-control form-control-lg" placeholder="도서명을 입력하세요...">
                       	</div>
                        <div class="col-md-20 col-md-2">
                            <button type="submit" id="btnSearch" class="btn btn-block btn-lg btn-primary" onclick=""> 
                            	<img class="mb-2" src="${pageContext.request.contextPath}/resources/img/search.png" alt="" width="20" height="20">  
                            </button>
                       	</div>
           			</div>
               	</form>
       		</div>
       	</div>
   	</div>
   	</header>
   	<br>
   	<br>
   	<br>
    <!-- Page Content -->
    <div class="container text-center">
   		<div class="row">
        <!-- Page Features -->
        	<div class="col-md-4">
            	<h4><strong>최근 조회 도서</strong></h4>
             	<table class="table table-bordered table-hover">
	                <thead>
		                <tr>
		                  <th><strong>번호</strong></th>
		                  <th><strong>제목</strong></th>
		                </tr>
	                </thead>
	                <tbody>
		            <c:forEach var="book" items="${booklist}" varStatus="status">
		                <tr class="active">
		                   <td>${status.count}</td>
		                   <td>${book.title}</td>
		                </tr>
		            </c:forEach>    
	                </tbody>                                
           		</table> 
       		</div>
          	<div class="col-md-8">
           		<h4><strong>베스트셀러 (Best5)</strong></h4>
	            <table class="table table-hover">
	            	<thead>
	              		<tr>
	                  		<td width="150px" height="180px">1</td>
		                  	<td width="150px" height="180px">2</td>
		                  	<td width="150px" height="180px">3</td>
		                  	<td width="150px" height="180px">4</td>
		                  	<td width="150px" height="180px">5</td>
		               </tr>
	               </thead>
	               <tbody>
		               <tr>
		                  	<td>1</td>
		                  	<td>2</td>
		                  	<td>3</td>
		                  	<td>4</td>
		                 	<td>5</td>
		               </tr>
	               </tbody>               
	            </table>
       		</div>
		</div>
  	</div>      
	<br>
   	<br>
   	<br>
   	<br>
   	<br>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>   
   
</body>
</html>   
   
   
    
