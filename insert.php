<!DOCTYPE html>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <FORM METHOD="post" ACTION="insert_result.php">
        <div id="container">
            <div id="idx_top">
            </div>


        <div id="wrapper">

            <div id="content">

                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="CustomerID" name ="CustomerID" class="int" maxlength="20" placeholder='email@example.com'>
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="CustomerName" name="CustomerName" class="int" maxlength="20" placeholder="필수입력">
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="Gender" name="Gender" class="sel">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>                            
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="email">주소</label></h3>
                    <span class="box int_addr">
                        <input type="text" id="Address" name="Address" class="int" maxlength="100" placeholder="필수입력">
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="Licence">면허증 종류</label></h3>
                    <span class="box gender_code">
                        <select id="Licence" name="Licence" class="sel">
                            <option>면허증 종류</option>
                            <option value="1종보통">1종 보통</option>
                            <option value="1종특수">1종 특수</option>
                            <option value="1종대형">1종 대형</option>
                            <option value="2종보통">2종 보통</option>

                        </select>                            
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="Password">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="Password" name="Password" class="int" maxlength="20">
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="Password2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="Password2" name="Password2" class="int" maxlength="20">
                    </span>
                </div>
                
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="Phone" name="Phone" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                </div>
               
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <div id="bir_dt">
                            <span class="box">
                                <input type="text" id="BirthDate" name="BirthDate" class="int" maxlength="20" placeholder="ex)001122">
                            </span>
                        </div>
                </div>   

                <center><div class="btn_area">
                    <button type="submit" id="btnjoin" name="btnJoin" value="가입하기">
                        <span>가입하기</span>
                    </button>
                    <a href=main.html><input type="button" name="back" id="btnjoin" value="뒤로가기"></a>
                </div>

            </div> 

        </div> 
</FORM>
    </body>
</html>