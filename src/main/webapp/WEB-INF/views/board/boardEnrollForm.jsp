<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <link rel="stylesheet" href="./resources/css/boardEnrollForm.css">

        <!--카카오 지도 api 토큰-->
        <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=46465c1e54053b370d7b004cf8ed3df6"></script>
        <script src="./resources/js/boardEnrollForm.js"></script>
    </head>

    <body>
        <jsp:include page="/WEB-INF/views/common/header.jsp" />

        <div class="schedule-container">
            <div class="dropdown">
                <i class="bi bi-pencil-square dropdown-toggle" type="button" data-bs-toggle="dropdown"
                    aria-expanded="false" id="editBtn"></i>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">일정수정</a></li>
                    <li><a class="dropdown-item" href="#">취소</a></li>
                </ul>
            </div>
            <div id="map"></div>
            <div id="schedule-area">

                <div class="nDay-content">

                    <div class="nDay">n일차</div>
                    <div class="location">
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>


                    </div>

                    <div class="nDay">n일차</div>
                    <div class="location">
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                    </div>
                    <div class="nDay">n일차</div>
                    <div class="location">
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                    </div>
                    <div class="nDay">n일차</div>
                    <div class="location">
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#gradeModal">
                            <div class="location-img"><img src="resources/images/Jeonju.jpeg" alt="전주"></div>
                            <!--기본적으로 별점은 0 점으로 나와야 통일성 있을듯-->
                            <div><img src="resources/images/ico_star_on.svg" alt="별" style="height: 16px;"> 0</div>
                        </button>
                    </div>
                    <!-- The Modal -->
                    <div class="modal fade" id="gradeModal">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content style grade">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <h4 class="modal-title">성산 일출봉<span>명소</span></h4>
                                    <div class="img-area">
                                        <img src="./resources/images/modal_sample.jpg" alt="">
                                    </div>
                                    <div class="text-area">
                                        <p>성산 일출봉은 명소인가요 안가봐서 모르겠습니다.</p>
                                    </div>
                                    <div class="grade">
                                        <div class="ui-grade half" role="radiogroup">
                                            <button type="button" role="radio" aria-checked="false" class="">1점</button>
                                            <button type="button" role="radio" aria-checked="false" class="">2점</button>
                                            <button type="button" role="radio" aria-checked="false" class="">3점</button>
                                            <button type="button" role="radio" aria-checked="false" class="">4점</button>
                                            <button type="button" role="radio" aria-checked="false" class="">5점</button>

                                            <span class="result-text">0점</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="notice-up-wrap" align="center">
            <form action="#" id="enroll-form" method="post">
                <dl class="title">
                    <dt><label>제목</label></dt>
                    <dd><input type="text" name="title" required></dd>
                </dl>
                <dl class="content">
                    <dt><label>내용</label></dt>
                    <dd><textarea name="content" id="summernote" rows="10" style="resize: none;" required></textarea>
                    </dd>
                </dl>
                <div class="btn-wrap">
                    <button type="button" onclick="history.back();">뒤로가기</button>
                    <button type="reset">초기화</button>
                    <button class="submit" type="button" onclick="goWrite(this.form)">등록하기</button>
                </div>
            </form>
        </div>
    </body>


    </html>