<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="../include/header.jsp" %>
    <%@ include file ="../include/aside.jsp" %>
  <!-- 회원 탈퇴 서비스 시작 -->
  
    <!-- 회원 탈퇴 서비스 시작 -->
    <div class="container bootstrap snippet">
        <div class="row">
            <!--/col-3-->
            <div class="col-sm-9" id="withdrawFrame" style="margin-top:20vh">
                <ul class="nav nav-tabs">
                    <!-- 회원 탈퇴 클릭 시 -->
                    <li class="active"><a data-toggle="tab" href="#home">회원탈퇴</a></li>
                </ul>
                <!-- 회원 탈퇴 시 유의 사항 배너 -->
           <!--      <h3><img src="/resources/image/withdrawal.jpg"></h3> -->
                <br>
                <br>
                <!-- 제이쿼리 온 / 오프 버튼 -->
                <a href="javascript:doDisplay()" class="btn btn-danger">탈퇴 시 유의사항</a>
                <div class="beforeWithdraw" id="withdraw">
                   <!-- 탈퇴 시 유의사항 자세한 글 -->
                    <h4 class="h4_style">1.개인정보(통신 및 신용정보) 노출 우려</h4>
                    <p class="txt_00">
                        IT 디스크는 고객님의 소중한 개인정보 노출 방지를 위해 
                        <em class="em_style">개인정보보호법 등 관계법령에서 정한 암호화 조치</em> 등을 통하여<br>
                        노출에 최선의 대비를 다하고 있습니다. 이러한 고객님의 개인정보 노출에 대한 위험이 전혀 없습니다.<br>
                        고객님의 개인정보보호를 위해 늘 앞장서서 노력하겠습니다.         
                    </p>
                    <h4 class="h4_style">2. 불필요한 광고 및 홍보성 게시물</h4>
                    <p class="txt00">
                        IT 디스크는 고객님을 상대로 고객님의 동의 없는 불필요한 광고나, 홍보성 게시물을 제공하고 있지 않습니다.<br>
                        혹, 고객님계서 IT디스크를 이용하시면 불필요한 광고나, 홍보성 게시물의 제공을 받으셨다면, 언제든 고객센터를 통해<br>
                        말씀하여 주시기 바랍니다. 고객님의 의견을 적극 반영 하도록 하겠습니다.
                    </p>
                    <h4 class="h4_style">3. 시스템장애(속도저하, 잦은 에러 등)</h4>
                    <p class="txt_00">
                        다운로드 속도의 저하는 고객님의 pc 및 주변환경으로부터 기인할 수 있습니다.<br>
                        IT 디스크 고객센터(1544-4211)로 문의하여 주시면,
                        <em style="color: red;">고객님의 PC환경을 원격으로 진단</em> 하여 보다 빠르고 쾌적한 서비스를<br>
                        이용하실 수 있도록 최선을 다하겠습니다.
                    </p>
                    <h4 class="h4_style">4. 타 사이트의 유사서비스 사용</h4>
                    <p class="txt_00">
                        IT 디스크는 동종업계 내에서 가장 빠르고 쾌적한 서비스 및 양질의 다양한 콘텐츠 제공을 위하여 최선을 다하고 있습니다.<br>
                        온디스크 서비스 이용에 불편하신 사항이나, 바라시는 점 있으시면 언제든 IT 디스크 고객센터(1544-4211)을 통하여<br>
                        말씀하여 주시기 바랍니다. 고객님 의견에 항상 귀 기울이는 IT 디스크가 되겠습니다.
                    </p>  
                    <h4 class="h4_style">5. 재 가입을 위하여</h4>
                    <p class="txt_00">
                        재 가입을 위해 탈퇴를 하시는 경우
                        <em class="em_style" style="color: red;"> 30일 동안 재 가입이 제한됩니다.</em><br>
                        이 경우 회원님의 서비스 이용에 제약이 따를 수 있기 때문에 저희 IT 디스크 고객센터(1544-4211)를 통하여 재 가입 사유를<br>
                        말씀하여 주시면 탈퇴절차 없이, 신속하게 도움 드리겠습니다.
                    </p>
                    <h4 class="h4_style">6. 콘텐츠 부족 등 이용할 만한 서비스 부족</h4>
                    <p class="txt_00">
                        IT 디스크는 회원님의
                        <em class="em_style" style="color: red;">안전과 관계법령을 준수하기 위하여, 합법적인 제휴 콘텐츠를 제공</em> 해 드리고 있습니다.<br>
                        혹, 고객님께서 찾으시는 자료가 없으시다면, IT 디스크 자료요청 서비스를 이용하여 주시면 신속히 제공해 드릴수 있도록<br>
                        노력하겠습니다. IT 디스크는 양질의 다양한 콘텐츠 제공을 위해 최선을 다하겠습니다.
                    </p>
                </div>
                <br>
                <!-- 아이디 & 비밀번호 입력 시작 -->
                <div class="tab-content_del">
                    <div class="tab-pane active" id="home">
                        <hr>
                        
                        <form class="form" action="withdraw" method="post" id="registrationForm_del">
                            <!-- 아이디는 입력 -->
                            <div class="form-group_del">
                                <div class="col-xs-6">
                                    <label for="id">
                                        <h4>아이디</h4>
                                    </label>
                                    <input type="text" class="form-control" name="id" id="id" value="${member.id }">
                                </div>
                            </div>
                            <!-- 비밀번호 입력 -->
                            <div class="form-group_del">
                                <div class="col-xs-6">
                                    <label for="password">
                                        <h4>비밀번호</h4>
                                    </label>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="password">
                                </div>
                            </div>
                            <!-- 탈퇴 / 리셋 / 취소 버튼 활성화와 클릭 시 출력 되는 메시지 -->
                            <div class="form-group_del">
                                <div class="col-xs-12">
                                    <br>
                                  <button class="btn btn-lg btn-success" type="submit" onclick="javascript:alert('탈퇴가 완료되었습니다.')"><i class="glyphicon glyphicon-ok-sign"></i> 그래도 탈퇴하시겠습니까?</button></a>
                                    <button class="btn btn-lg btn-info" type="reset"><i class="glyphicon glyphicon-repeat"></i> 초기화</button>
                                    <button class="btn btn-lg btn-warning" onclick="javascript:alert('취소 되었습니다.')"><i class="glyphicon glyphicon-remove-sign"></i> 취소</button></a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    function doDisplay(){
        var con = document.getElementById("withdraw");
        if(con.style.display=='none'){ 
            con.style.display = 'block';
        }else{
            con.style.display = 'none';
        }
    }
    $(document).ready(function(e){

       $('#letsWithdraw').click(function(){
          if($.trim($('#userPwd').val()) == ''){
             alert("패스워드 입력");
             $('#userPwd').focus(); //마우스 클릭해서 포커스가지기
             return;
          }
       });
       
    });
</script>
 <%@ include file ="../include/footer.jsp" %>