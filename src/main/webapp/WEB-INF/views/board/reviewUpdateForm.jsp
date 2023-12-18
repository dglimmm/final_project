<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- jquery 3.7.1 -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>


        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
        <link rel="stylesheet" href="./resources/css/grade.css">
        <link rel="stylesheet" href="./resources/css/scheduleListModal.css">
        <link rel="stylesheet" href="./resources/css/board-card.css">
        <link rel="stylesheet" href="./resources/css/reviewUpdateForm.css">
        
      
        <script src="./resources/js/reviewUpdateForm.js"></script>
        <script src="./resources/js/board-api.js"></script>
        <script src="./resources/js/boardReviewNotice.js"></script>
    </head>

    <body>
        <jsp:include page="/WEB-INF/views/common/header.jsp" />

        <div class="schedule-container">
            <div class="dropdown">
                <i class="bi bi-pencil-square dropdown-toggle" type="button" data-bs-toggle="dropdown"
                    aria-expanded="false" id="editBtn"></i>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#myschedulelistModal" onclick="pickupSchedule(${loginUser.memberNo})">일정수정</a></li>
                    <li><a class="dropdown-item" href="#">취소</a></li>
                </ul>
            </div>
            <div id="map" ><img src="${list[0].tripPlanThumbnail}" alt="" style="width: 100%; height: 100%;"></div>
            
            <div id="schedule-area">

                <div class="nDay-content" id="ndayContent">

                <c:forEach var="i" begin = "1" end = "${list[list.size() - 1].tripNday}" step="1">

                        <div class="nDay">${i}일차</div>
                

                        <div class="location">
                            <c:forEach var="p" items="${list}">
                                <c:choose>
                                    <c:when test="${i eq p.tripNday}">
                                        <div data-bs-toggle="modal" data-bs-target="#gradeModal${i}${p.attractionNo}"
                                            class="location-img"><img src="${p.attractionChangeNameImg}"
                                                alt="장소"> 
                                        </div>
                                        <!-- The Modal -->
                                        <div class="modal fade" id="gradeModal${i}${p.attractionNo}">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content style grade">
                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <button type="button" class="btn-close"
                                                            data-bs-dismiss="modal"></button>
                                                    </div>

                                                    <div class="modal-body">

                                                        <h4 class="modal-title">${p.attractionName}<span>${p.categoryName}</span>
                                                        </h4>



                                                        <div class="img-area">
                                                            <img src="${p.attractionChangeNameImg}"
                                                                alt="">
                                                        </div>


                                                        <div class="text-area" style="height: 100%;">
                                                            <p>${p.attractionAddress}</p>
                                                        </div>
                                                        <div class="grade">
                                                            <div class="ui-grade half" attractionNo="${p.attractionNo}"
                                                                role="radiogroup">
                                                                <button type="button" role="radio"
                                                                    aria-checked="false"
                                                                    class="">1</button>
                                                                <button type="button" role="radio"
                                                                    aria-checked="false"
                                                                    class="">2</button>
                                                                <button type="button" role="radio"
                                                                    aria-checked="false"
                                                                    class="">3</button>
                                                                <button type="button" role="radio"
                                                                    aria-checked="false"
                                                                    class="">4</button>
                                                                <button type="button" role="radio"
                                                                    aria-checked="false"
                                                                    class="">5</button>

                                                                <span class="result-text">0점</span>

                                                                
                                                            </div>
                                                        
                                                        </div>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </c:forEach>


                        </div>



                
                        



                </c:forEach>
                
                
                    

                    

                </div>

            </div>

        </div>
        <div class="notice-up-wrap" align="center">
            <form action="reviewUpdate.bo" id="enroll-form" method="post">
                <input type="hidden" name="boardNo" value="${list[0].boardNo}">
                <input type="hidden" name="boardTripPlanNo" value="${list[0].boardTripPlanNo}">
                <input type="hidden" name="boardRegionNo" value="${list[0].boardRegionNo}">
                <dl class="title">
                    <dt><label>제목</label></dt>
                    <dd><input type="text" name="boardTitle" id="titlebox" value="${list[0].boardTitle}" required></dd>
                </dl>
                <dl class="content">
                    <dt><label>내용</label></dt>
                    <dd><textarea name="boardContent" id="summernote" rows="10" style="resize: none;" required>${list[0].boardContent}</textarea>
                    </dd>
                </dl>
                <div class="btn-wrap">
                    <button type="button" onclick="history.back();">뒤로가기</button>
                    <button type="button" onclick="sumReset()">초기화</button>
                    <button type="submit" class="submit">수정하기</button>
                </div>
            </form>
        </div>

        <!-- 글쓰기버튼 클릭시 나의 모든일정 보여주는 modal -->
        <div class="modal fade" id="myschedulelistModal">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content style list">
            
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">나의 여행</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
              

                    <!-- Modal body -->
                    <div class="modal-body" style="max-height: 700px; overflow-x: hidden;">
                        <div class="contents-wrap">
                          <div class="travel-list">
                            <div>
                              <!-- 여행지 클릭 버튼-->
                              <div class="tab-menu button-group button-type" role="tablist" aria-label="여행지 클릭 버튼" >
                                  
                              </div>
                            </div>
                          </div>
                          <div class="travel-detail">
                              <div class="tab-contents">
                                  <!-- tab1에 대한 contents -->
                                  <div tabindex="0" role="tabpanel" id="tabPanel1" aria-labelledby="tab1">
                                      
                                      
                                  </div>
                                  
                                  
                                  </div>
                              </div>
                              <button class="btn" id="writeBtn" onclick="reviewReDraw()" data-bs-dismiss="modal">일정선택</button>
                          </div>
                        </div>
                    </div>

                </div>
            </div>
        <!-- 글쓰기버튼 클릭시 나의 모든일정 보여주는 modal -->




    </body>


    </html>