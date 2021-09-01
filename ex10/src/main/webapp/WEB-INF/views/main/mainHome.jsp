<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
 
<script src="../resources/js/home.js"></script>

<link rel="stylesheet" href="../resources/css/home.css">


<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
        <header class="header">
            <div class="headerin">
                <div class="logo">
                    <a href="">로고</a>
                </div>
                <div class="gnb">
                    <ul>
                        <li class="pro_list">
                            <a href="#">프로그램 리스트</a>
                            <div class="sub">
                                <ul>
                                    <li><a href="">10Χ10</a></li>
                                    <li><a href="">Y3T</a></li>
                                    <li><a href="">PHAT</a> </li>
                                </ul>
                            </div> 
                        </li>
                        <li><a href="">칼로리 카운터(영양성분,식단)</a></li>
                        <li><a href="/crud/crudList">커뮤니티</a></li>
                        <li><a href="">문의</a></li>
                    </ul>
                </div>
                
                <div class="login">
                    <ul>
                        <li><a href="/login/join" target="blank">로그인</a></li>
                        <li><a href="/login/test">회원가입</a></li>
                        <li><a href="">아이디/비밀번호 찾기</a></li>
                    </ul>
                </div>
                
            </div> <!--headerin-->
        </header> <!--header-->

        <section class="container">
            
            <div class="main">
                <div class="weight">
                    <ul>
                        <li class="back way">
                            <a href="" class="weight_body">등</a>
                            <div class="weight_list">
                                <ul>
                                    <li><a href=""><img src="../resources/imgs/back/등-랫풀다운.png" alt=""><span>랫풀다운</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/back/바벨로우.PNG" alt=""><span>바벨로우</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/back/시티드로우.PNG" alt=""><span>시티드로우</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/back/원덤.PNG" alt=""><span>원암덤벨로우</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/back/풀업.PNG" alt=""><span>풀업</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="front way">
                            <a href="" class="weight_body">가슴</a>
                            <div class="weight_list">
                                <ul>
                                    <li><a href	=""><img src="../resources/imgs/front/밴치덤프.PNG" alt=""><span>벤치덤벨프레스</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/front/밴치프레스.PNG" alt=""><span>벤치프레스</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/front/인클라인.PNG" alt=""><span>인클라인</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/front/인클라인덤벨.PNG" alt=""><span>인클라인덤벨</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/front/인클라인바벨.PNG" alt=""><span>인클라인바벨</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/front/케이블 플라이.PNG" alt=""><span>케이블플라이</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="leg way">
                            <a href="" class="weight_body">하체</a>
                            <div class="weight_list">
                                <ul>
                                    <li><a href=""><img src="../resources/imgs/leg/레그컬.PNG" alt=""><span>레그컬</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/leg/레그익스텐션.PNG" alt=""><span>레그익스텐션</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/leg/렠프.PNG" alt=""><span>레그프레스</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/leg/스퀴트.PNG" alt=""><span>스쿼트</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="shoulder way">
                            <a href="" class="weight_body">어깨</a>
                            <div class="weight_list">
                                <ul>
                                    <li><a href=""><img src="../resources/imgs/shoulder/덤프.PNG" alt=""><span>덤벨프레스</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/shoulder/밀프.PNG" alt=""><span>밀리터리프레스</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/shoulder/후삼각사레레.PNG" alt=""><span>밴트오버 레터널 레이즈</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/shoulder/사레레.PNG" alt=""><span>사이드레터널 레이즈</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="arm way">
                            <a href="" class="weight_body">팔</a>
                            <div class="weight_list">
                                <ul>
                                    <li><a href=""><img src="../resources/imgs/arm/바벨컬.PNG" alt=""><span>바벨컬</span></a></lia>
                                    <li><a href=""><img src="../resources/imgs/arm/해머컬.PNG" alt=""><span>해머컬</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/arm/라잉트라이셉션.PNG" alt=""><span>라잉트라이셉스 익스텐션</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/arm/케이블푸쉬다운.PNG" alt=""><span>케이블 푸쉬다운</span></a></li>
                                    <li><a href=""><img src="../resources/imgs/arm/프리처컬.PNG" alt=""><span>프리처컬</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="body way">
                            <a href="" class="weight_body">전신</a>
                            <div class="weight_list">
                                <ul>
                                    <li><a href=""><img src="../resources/imgs/body/데드리프트.PNG" alt=""><span>데드리프트</span></a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                
                <table class="mypro" border="1">
                    <th colspan="5">1 Day</th>
                    <tr>
                        <th>1</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>1</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>1</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>1</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
               
            </div>

            <div class="diet banner">
                <a href="">
                    <img src="../resources/imgs/banner/diet.jpg" alt="">
                </a>
            </div>

            <div class="d-day banner">
                <a href="">
                   <img src="../resources/imgs/banner/대회일정.PNG" alt="">
                </a>
            </div>
            
            <div class="main2">
                <div class="news">
                    <h2>이달의 소식</h2>
                    <ul>
                        <li>
                            <a href="">
                                <img src="../resources/imgs/news/소식.PNG" alt="">
                                <p>
                                    <span>최대봉은 약물을썼을까?</span><br>
                                    앞서 최대봉은 한국도핑방지위원회(KADA) 제재위원회를 통해 도핑방지규약 위반관련 4년 자격 정지<br>
                                    (2021-02-08~2025-02-17) 처분을 받았다.
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="../resources/imgs/news/소식.PNG" alt="">
                                <p>
                                    <span>최대봉은 약물을썼을까?</span><br>
                                    앞서 최대봉은 한국도핑방지위원회(KADA) 제재위원회를 통해 도핑방지규약 위반관련 4년 자격 정지<br>
                                    (2021-02-08~2025-02-17) 처분을 받았다.
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="../resources/imgs/news/소식.PNG" alt="">
                                <p>
                                    <span>최대봉은 약물을썼을까?</span><br>
                                    앞서 최대봉은 한국도핑방지위원회(KADA) 제재위원회를 통해 도핑방지규약 위반관련 4년 자격 정지<br>
                                    (2021-02-08~2025-02-17) 처분을 받았다.
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="video">
                    <h2>몸으로 말한다</h2>
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/Tzv0pMnIHF4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
            
        </section>

        <footer class="footer">풋터영역</footer>
        
    </div>
    <!--poster="./이미지모음/비디오.PNG"-->
</body>
</html>