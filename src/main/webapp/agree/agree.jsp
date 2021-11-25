<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="agree.css" rel="stylesheet">
</head>
<body>
    
<form id="form1" class="class1">

   	<ul>
   		<li>
   			<ul>
   				<li>
   					<h1>전체 이용약관</h1>
   				</li>
	        	<li>
	                <input type="checkbox" id="checkAll" name="checkAll"/>일괄선택
	            </li>
            </ul>
        </li>
           
     	<li>
    		<ul>
   				<li>
   					<h4 class="h4">전자상거래표준약관(필수)</h4>
   				</li>
   				<li>
   					<input type="checkbox" id="check_1"  name="" /> 위의 약관에 동의 합니다.
   				</li>
     		</ul>	
            <textarea class="license auto" style="font-size:1em;" readonly>
               <jsp:include page="agreement/license.jsp" />	
            </textarea>
        </li>   
                  
   	   	<li>   
   	   		<ul>  
   	   			<li>        
         			<h4 class="h4">개인정보보호지침</h4>
         		</li>
         		<li>
        			<input type="checkbox" id="check_2"  name="" /> 위의 약관에 동의 합니다.
		   	     </li>
      		</ul>

       		<textarea class="license auto" style="font-size:1em;">
   				<jsp:include page="agreement/license2.jsp" />	
        	</textarea>
     	</li>
        
  		<li>
  			<ul>
		        <li>   
		           <h4 class="h4">선택적 개인정보 수집동의 및 이용약관</h4>
		        </li>
		         
	         	<li>   
	           	   <input type="checkbox" id="check_3"  name="" /> 위의 약관에 동의 합니다.<br />
	        	</li>	
       		</ul>
            <textarea class="license auto" style="font-size:1em;">
   				<jsp:include page="agreement/license3.jsp" />
			</textarea>
		</li>
 	 </ul>
</form>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){

        $("#nextBtn").click(function(){    
            if($("#check_1").is(":checked") == false){
                alert("전자 상거래 표준약관에 동의 하셔야 다음 단계로 진행 가능합니다");
                return;
            }else if($("#check_2").is(":checked") == false){
                alert("개인정보 보호지침에 동의 하셔야 다음 단계로 진행 가능합니다");
                return;
            }else{
                $("#terms_form").submit();
            }
        });    
    });
</script>
</body>
</html>

