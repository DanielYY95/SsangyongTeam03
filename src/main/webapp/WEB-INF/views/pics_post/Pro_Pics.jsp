<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="Pro_Pics.css" rel="stylesheet" /> <!-- CSS 파일 -->

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script> <!-- jquery 라이브러리 CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script> <!-- 부트스트랩 JS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- 부트스트랩  CSS CDN -->



</head>

<body>

    <!--start #### bootstrap: 갤러리형 #### -->
    <!-- 992(테블릿)에서 두 블록, 576(모바일)에서 한 블록-->

    <!--
        카드를 어떻게 동일한 높이로...??
        => 해결방법
            1.사진을 첨부했을 때 아예 같은 사이즈로 만든다.
            2. css를 사용하여 card-img-top클래스에 height 맞추고, object-fit:cover로 바꿔준다.
    -->

    <div id="Pro_Pics_Container">

        <div class="title">전문가사진</div><br>


        <div class="filter">


            <div class="place_tag_filter">
                <div><label style="padding-right: 10px;">지역명</label><input type="text" size="10"><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                  </svg></button></div>

                <div><label style="padding:0 10px;">태그</label><select name="" id="">
                        <option value="" selected>
                            전체 <svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor"
                                preserveAspectRatio="xMidYMid meet">
                                <path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
                            </svg></button>
                        </option>
                        <option value="">자연</option>
                        <option value="">야경</option>
                        <option value="">도시</option>
                        <option value="">셀카</option>
                        <option value="">공원</option>
                        <option value="">사람</option>
                        <option value="">동물</option>



                    </select></div>

            </div>
            <div class="view_filter">
                <div><a href="#">최근순</a></div>
                <div><a href="#">조회순</a></div>
                <div><a href="#">베스트순</a></div>


            </div>
        </div><br>

        <div class="row">
            <div class="card col-sm-6 col-lg-3 ">
                <!-- card 형태 -->
                <div class="profile">
                    <!-- 프로필 사진과 닉네임 -->
                    <span>프로필</span>
                    <span>닉네임</span>
                </div>
                <a href="#">
                    <img src="IMG/attraction.png" class="img-thumbnail card-img-top" alt="">
                    <!-- 이미지에 둥근 1px 테두리 모양을 제공, card 이미지가 위로 -->

                </a>
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                </div>
            </div>

            <div class="card col-sm-6 col-lg-3">
                <!-- card 형태 -->
                <div class="profile">
                    <!-- 프로필 사진과 닉네임 -->
                    <span>프로필</span>
                    <span>닉네임</span>
                </div>
                <a href="#">
                    <img src="IMG/mountain.png" class="img-thumbnail card-img-top" alt="">
                    <!-- 이미지에 둥근 1px 테두리 모양을 제공, card 이미지가 위로 -->

                </a>
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                </div>
            </div>

            <div class="card col-sm-6 col-lg-3">
                <!-- card 형태 -->
                <div class="profile">
                    <!-- 프로필 사진과 닉네임 -->
                    <span>프로필</span>
                    <span>닉네임</span>
                </div>
                <a href="#">
                    <img src="IMG/chicage.png" class="img-thumbnail card-img-top" alt="">
                    <!-- 이미지에 둥근 1px 테두리 모양을 제공, card 이미지가 위로 -->

                </a>
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                </div>
            </div>

            <div class="card col-sm-6 col-lg-3">
                <!-- card 형태 -->
                <div class="profile">
                    <!-- 프로필 사진과 닉네임 -->
                    <span>프로필</span>
                    <span>닉네임</span>
                </div>
                <a href="#">
                    <img src="IMG/sea.png" class="img-thumbnail card-img-top" alt="">
                    <!-- 이미지에 둥근 1px 테두리 모양을 제공, card 이미지가 위로 -->

                </a>
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                </div>
            </div>


        </div>


        <!--end #### bootstrap: 갤러리형 #### -->

    </div>

    <script>
        $("document").ready(function () { })
    </script>


</body>

</html>