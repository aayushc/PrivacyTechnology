<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Privacy Technology</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/task.js"></script>	
<style>
.columns {
	-moz-column-count: 3;
	-webkit-column-count: 3;
	column-count: 3;
}
</style>
</head>
<body>
	<div>
		<h2>Create Privacy Notice</h2>
	</div>
	<form name="form1" class="bs-example bs-example-form" role="form"
		onsubmit="return validateForm()" method="post" action="page.do">
		<div class="panel panel-default">
			<p>Please enter the details requested below:</p>
			<br>
			<div class="input-group">
				<label for="revdate">Date of revision for privacy notice</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop');" onmouseout="showout('pop');"></img>
				</span>
				<span id="pop" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">
					Insert the date on which the notice was last revised in [month/year] format using either the name or number of the month.
				</span>
				<br>
				<input class="form-control" type="month" placeholder=mm/yyyy name="revdate" value="${page1.revdate}" style="width: 200px;" required />
			</div>
			<br>
			<div class="input-group">
				<label for="institution">Name of your Institution</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop1');" onmouseout="showout('pop1');"></img>
				</span>
				<span id="pop1" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">
					Insert the name of the financial institution providing the notice or a common identity of affiliated institutions jointly providing the notice.
				</span>
				<span><input required class="form-control" type="text" placeholder="" name="institution"  value="${page1.institution}" required /></span>
			</div>
			<br>
			<div>
				<b><font size="4">What does your financial institution do with customer's personal information?</font></b>
			</div>
			<br>
			<div class="input-group">
				<label for="what">What type of information will you collect and share? (Choose any 5)</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop2');" onmouseout="showout('pop2');"></img>
				</span>
				<span id="pop2" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">
					Provide five(5) types of personal information that your institution collects and shares. All institutions must use the term 'Social Security number' in the first bullet.
				</span>
			</div>
			<div class="columns">
				<input type="checkbox" name="xyz" value="Social Security number" disabled checked> Social Security Number<br>
				<input type="checkbox" name="what" value="income" onclick='chkcontrol(0)' 
				<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'income'}">checked</c:if>
				</c:forEach> 
				>Income<br>
				<input type="checkbox" name="what" value="account balances" onclick='chkcontrol(1)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'account balances'}">checked</c:if>
				</c:forEach> 
				>Account Balances<br> 
				<input type="checkbox" name="what" value="payment history" onclick='chkcontrol(2)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'payment history'}">checked</c:if>
				</c:forEach> 
				>Payment History<br> 
				<input type="checkbox" name="what" value="transaction history" onclick='chkcontrol(3)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'transaction history'}">checked</c:if>
				</c:forEach> 
				>Transaction History<br> 
				<input type="checkbox" name="what" value="transaction or loss history" onclick='chkcontrol(4)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'transaction or loss history'}">checked</c:if>
				</c:forEach> 
				>Transaction or Loss History<br> 
				<input type="checkbox" name="what" value="credit history" onclick='chkcontrol(5)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'credit history'}">checked</c:if>
				</c:forEach> 
				>Credit History<br> 
				<input type="checkbox" name="what" value="credit scores" onclick='chkcontrol(6)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'credit scores'}">checked</c:if>
				</c:forEach> 
				>Credit Scores <br> 
				<input type="checkbox" name="what" value="assets" onclick='chkcontrol(7)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'assets'}">checked</c:if>
				</c:forEach> 
				>Assets<br>
				<input type="checkbox" name="what" value="investment experience" onclick='chkcontrol(8)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'investment experience'}">checked</c:if>
				</c:forEach> 
				>Investment Experience<br>
				<input type="checkbox" name="what" value="credit-based insurance scores" onclick='chkcontrol(9)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'credit-based insurance scores'}">checked</c:if>
				</c:forEach> 
				>Credit-based Insurance Scores<br>
				<input type="checkbox" name="what" value="transaction history" onclick='chkcontrol(10)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'transaction history'}">checked</c:if>
				</c:forEach> 
				>Transaction History<br>
				<input type="checkbox" name="what" value="insurance claim history" onclick='chkcontrol(11)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'insurance claim history'}">checked</c:if>
				</c:forEach> 
				>Insurance Claim History<br>
				<input type="checkbox" name="what" value="medical information" onclick='chkcontrol(12)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'medical information'}">checked</c:if>
				</c:forEach> 
				>Medical Information<br>
				<input type="checkbox" name="what" value="overdraft history" onclick='chkcontrol(13)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'overdraft history'}">checked</c:if>
				</c:forEach> 
				>Overdraft History<br>
				<input type="checkbox" name="what" value="purchase history" onclick='chkcontrol(14)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'purchase history'}">checked</c:if>
				</c:forEach> 
				>Purchase History<br>
				<input type="checkbox" name="what" value="account transactions" onclick='chkcontrol(15)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'account transactions'}">checked</c:if>
				</c:forEach> 
				>Account Transactions<br>
				<input type="checkbox" name="what" value="risk tolerance" onclick='chkcontrol(16)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'risk tolerance'}">checked</c:if>
				</c:forEach> 
				>Risk Tolerance<br>
				<input type="checkbox" name="what" value="medical-related debts" onclick='chkcontrol(17)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'medical-related debts'}">checked</c:if>
				</c:forEach> 
				>Medical-related Debts<br>
				<input type="checkbox" name="what" value="credit card or other debt" onclick='chkcontrol(18)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'credit card or other debt'}">checked</c:if>
				</c:forEach> 
				>Credit Card or Other Debt<br>
				<input type="checkbox" name="what" value="mortgage rates and payments" onclick='chkcontrol(19)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'mortgage rates and payments'}">checked</c:if>
				</c:forEach> 
				>Mortgage rates and Payments<br>
				<input type="checkbox" name="what" value="retirement assets" onclick='chkcontrol(20)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'retirement assets'}">checked</c:if>
				</c:forEach> 
				>Retirement Assets<br>
				<input type="checkbox" name="what" value="checking account information" onclick='chkcontrol(21)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'checking account information'}">checked</c:if>
				</c:forEach> 
				>Checking Account Information<br>
				<input type="checkbox" name="what" value="employment information" onclick='chkcontrol(22)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'employment information'}">checked</c:if>
				</c:forEach> 
				>Employment Information<br>
				<input type="checkbox" name="what" value="wire transfer instructions" onclick='chkcontrol(23)'<c:forEach var="check" items="${page1.what}">
				<c:if test="${check eq 'wire transfer instructions'}">checked</c:if>
				</c:forEach> 
				>Wire Transfer Instructions<br>
			</div>
			<%-- <c:forEach var="check" items="${page1.what}">
			<c:if test="${check eq 'income'}">checked</c:if>
			</c:forEach> --%>
			<br>
			<div>
				<b><font size="4">Disclosure Table</font></b>
			</div>
			<br>
			<div class="rb">
				<div id="">
					<i>For institution's everyday business purposes:</i> 
					<br> 
					<label for="q1">Will your institution share customer's personal information for your everday business purposes?</label> 
					<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop3');" onmouseout="showout('pop3');"></img></span>
					<span id="pop3" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide a Yes€ or €œNo€ response that accurately reflects its information sharing policies and practices with respect to the reason specified in this question.</span>
				</div>

				<input type="radio" name="q1" value="Yes" <c:if test="${page1.q1 eq 'Yes'}">checked</c:if> onclick='wds1()'>Yes<br>
				<input type="radio" name="q1" value="No" <c:if test="${page1.q1 eq 'No'}">checked</c:if> onclick='wds1()'>No<br><br>
				<label for="q2">Can	customers limit the personal information your institution share for your everyday business purposes?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop4');" onmouseout="showout('pop4');"></img></span>
				<span id="pop4" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide one of the three responses, as applicable, that reflects whether a consumer can limit sharing for the reason mentioned in the question: €œYes€ if it is required to or voluntarily provides an opt-out; €œNo if it does not provide an opt-out; or €œWe dont share if your institution doesn't share the information for the mentioned reason.</span><br>
				<input type="radio" name="q2" value="Yes" <c:if test="${page1.q2 eq 'Yes'}">checked</c:if> >Yes<br>
				<input type="radio" name="q2" value="No" <c:if test="${page1.q2 eq 'No'}">checked</c:if> >No<br>
				<input type="radio" name="q2" value="We don&#39;t share" <c:if test='${page1.q2 eq "We don\'t share"}'>checked</c:if> >We don&#39;t share<br>
				<br> 
				<i>For institution's marketing purposes:</i>
				<br> 
				<label for="q1">Will your institution share customer's personal information for your marketing purposes?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop5');" onmouseout="showout('pop5');"></img>
				</span>
				<span id="pop5" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide a Yes or No response that accurately reflects its information sharing policies and practices with respect to the reason specified in this question. An institution that shares for this reason may choose to provide an opt-out.</span><br>
				<input type="radio" name="q3" value="Yes"  <c:if test="${page1.q3 eq 'Yes'}">checked</c:if>  onclick='wds2()'>Yes<br>
				<input type="radio" name="q3" value="No"  <c:if test="${page1.q3 eq 'No'}">checked</c:if> onclick='wds2()'>No<br>
				<br>
				<label for="q2">Can customers limit the personal information your institution share for your everyday marketing purposes?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop6');" onmouseout="showout('pop6');"></img>
				</span>
				<span id="pop6" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide one of the three responses, as applicable, that reflects whether a consumer can limit sharing for the reason mentioned in the question: Yes if it is required to or voluntarily provides an opt-out; No if it does not provide an opt-out; or We don€™t share€ if your institution doesn't share the information for the mentioned reason.</span><br>
				<input type="radio" name="q4" value="Yes"  <c:if test="${page1.q4 eq 'Yes'}">checked</c:if> >Yes<br>
				<input type="radio" name="q4" value="No" <c:if test="${page1.q4 eq 'No'}">checked</c:if> >No<br>
				<input type="radio" name="q4" value="We don&#39;t share" <c:if test='${page1.q4  eq "We don\'t share"}'>checked</c:if> >We don&#39;t share<br>
				<br> 
				<i>For joint marketing with other financial companies:</i>
				<br>
				<label for="q1">Will your institution share customer's personal information for joint marketing with other financial companies?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop7');" onmouseout="showout('pop7');"></img>
				</span>
				<span id="pop7" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide a €œYes or €œNo response that accurately reflects its information sharing policies and practices with respect to the reason specified in this question. An institution that shares for this reason may choose to provide an opt-out.</span><br>
				<input type="radio" name="q5" value="Yes"  <c:if test="${page1.q5 eq 'Yes'}">checked</c:if>  onclick='wds3()'>Yes<br>
				<input type="radio" name="q5" value="No"  <c:if test="${page1.q5 eq 'No'}">checked</c:if> onclick='wds3()'>No<br>
				<br>
				<label for="q2">Can customers limit the personal information your institution share for joint marketing with other financial companies?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop8');" onmouseout="showout('pop8');"></img>
				</span>
				<span id="pop8" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide one of the three responses, as applicable, that reflects whether a consumer can limit sharing for the reason mentioned in the question: Yes if it is required to or voluntarily provides an opt-out; €œNo if it does not provide an opt-out; or €œWe dont share if your institution doesn't share the information for the mentioned reason.</span><br>
				<input type="radio" name="q6" value="Yes"  <c:if test="${page1.q6 eq 'Yes'}">checked</c:if> >Yes<br>
				<input type="radio" name="q6" value="No" <c:if test="${page1.q6 eq 'No'}">checked</c:if> >No<br>
				<input type="radio" name="q6" value="We don&#39;t share" <c:if test='${page1.q6  eq "We don\'t share"}'>checked</c:if> >We don&#39;t share<br>
				<br> 
				<i>For your institution's affiliates' everyday business purposes- information about transactions and experiences:</i>
				<br> 
				<label for="q1">Will your institution share customer's personal information about their transactions and experiences for your affiliates' everday business purposes?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop9');" onmouseout="showout('pop9');"></img>
				</span>
				<span id="pop9"	style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide a €œYes€ or €œNo response that accurately reflects its information sharing policies and practices with respect to the reason specified in this question. An institution that shares for this reason may choose to provide an opt-out.</span><br>
				<input type="radio" name="q7" value="Yes"  <c:if test="${page1.q7 eq 'Yes'}">checked</c:if>  onclick='wds4()'>Yes<br>
				<input type="radio" name="q7" value="No"  <c:if test="${page1.q7 eq 'No'}">checked</c:if> onclick='wds4()'>No<br>
				<br>
				<label for="q2">Can customers limit the personal information aboout their transactions and experiences purposes?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop10');" onmouseout="showout('pop10');"></img>
				</span>
				<span id="pop10" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide one of the three responses, as applicable, that reflects whether a consumer can limit sharing for the reason mentioned in the question: €œYes€ if it is required to or voluntarily provides an opt-out; No if it does not provide an opt-out; or €œWe don€™t share if your institution doesn't share the information for the mentioned reason.</span><br>
				<input type="radio" name="q8" value="Yes"  <c:if test="${page1.q8 eq 'Yes'}">checked</c:if> >Yes<br>
				<input type="radio" name="q8" value="No" <c:if test="${page1.q8 eq 'No'}">checked</c:if> >No<br>
				<input type="radio" name="q8" value="We don&#39;t share" <c:if test='${page1.q8  eq "We don\'t share"}'>checked</c:if> >We don&#39;t share<br>
				<br>
				<i>For your institution's affiliates' everyday business purposes- information about creditworthiness:</i><br>
				<label for="q1">Will your institution share customer's personal information about their creditworthiness for your affiliates' everday business purposes?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop11');" onmouseout="showout('pop11');"></img>
				</span>
				<span id="pop11" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide a €œYes or No€ response that accurately reflects its information sharing policies and practices with respect to the reason specified in this question. An institution that shares for this reason may choose to provide an opt-out.</span><br>
				<input type="radio" name="q9" value="Yes"  <c:if test="${page1.q9 eq 'Yes'}">checked</c:if>  onclick='wds5()'>Yes<br>
				<input type="radio" name="q9" value="No"  <c:if test="${page1.q9 eq 'No'}">checked</c:if> onclick='wds5()'>No<br>
				<br>
			<!-- 	<label for="q2">Can customers limit	the personal information aboout their creditworthiness your institution share for your affiliates' everyday business purposes?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop12');" onmouseout="showout('pop12');"></img>
				</span>
				<span id="pop12" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide one of the three responses, as applicable, that reflects whether a consumer can limit sharing for the reason mentioned in the question: €œYes if it is required to or voluntarily provides an opt-out; €œNo if it does not provide an opt-out; or €œWe dont share if your institution doesn't share the information for the mentioned reason.</span><br>
				<input type="radio" name="q10" value="Yes" checked>Yes<br>
				<input type="radio" name="q10" value="No">No<br>
				<input type="radio" name="q10" value="We don&#39;t share">We don&#39;t share<br>
				<br>  -->
				<i>For institution's affiliates to market to customers:</i><br>
				<label for="q1">Does your institution have affiliates?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop13');" onmouseout="showout('pop13');"></img>
				</span>
				<span id="pop13" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please select 'Yes' if your institution has affiliates, select 'No' if your institution does not have affiliates. For our affiliates to market to you- reason may be omitted from the disclosure table when the institution does not have affiliates (or does not disclose personal information to its affiliates); the institution€™s affiliates do not use personal information in a manner that requires an opt-out; or the institution provides the affiliate marketing notice separately. Institutions that include this reason must provide an opt-out of indefinite duration.</span><br>
				<input type="radio" name="q11" value="Yes"  <c:if test="${page1.q11 eq 'Yes'}">checked</c:if>  onclick='wds6()'>Yes<br>
				<input type="radio" name="q11" value="No"  <c:if test="${page1.q11 eq 'No'}">checked</c:if> onclick='wds6()'>No<br>
				<br>Please answer the following question if you answered 'YES' for the previous question.<br> 
				<br> 
				<label for="q1">Does your institution disclose customer's personal information to your affiliates?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop14');" onmouseout="showout('pop14');"></img>
				</span>
				<span id="pop14" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please select 'Yes' if your institution disclose customer's personal information to your affiliates, select 'No' if your institution does not disclose customer's personal information to your affiliates.</span><br>
				<input type="radio" name="q12" value="Yes"  <c:if test="${page1.q12 eq 'Yes'}">checked</c:if> onclick='wds7()'>Yes<br>
				<input type="radio" name="q12" value="No"  <c:if test="${page1.q12 eq 'No'}">checked</c:if> onclick='wds7()'>No<br>
				<br>Please answer the following question if you answered 'YES' for the previous question.<br>
				<br>
				<label for="q1">Does your institution's affiliate use customer's personal information in a manner that requires an opt-out?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop15');" onmouseout="showout('pop15');"></img>
				</span>
				<span id="pop15" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please select 'Yes' if your institution's affiliate use customer's personal information in a manner that requires an opt-out, otherwise select 'No'.</span><br>
				<input type="radio" name="q13" value="Yes"  <c:if test="${page1.q13 eq 'Yes'}">checked</c:if> >Yes<br>
				<input type="radio"	name="q13" value="No" <c:if test="${page1.q13 eq 'No'}">checked</c:if> >No<br>
				<br> 
				<label for="q1">Does your institution provides the affiliate marketing notice separately?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop16');" onmouseout="showout('pop16');"></img>
				</span>
				<span id="pop16" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please select 'Yes' if your institution provides the affiliate marketing notice separately, otherwise select 'No'.</span><br>
				<input type="radio" name="q14" value="Yes" <c:if test="${page1.q14 eq 'Yes'}">checked</c:if> >Yes<br>
				<input type="radio" name="q14" value="No" <c:if test="${page1.q14 eq 'No'}">checked</c:if> >No<br>
				<br>
				<i>For nonaffiliates to market to customers:</i><br>
				<label for="q1">Does your institution share customer's personal information for non-affiliates to market to customers?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop17');" onmouseout="showout('pop17');"></img>
				</span>
				<span id="pop17" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide a Yes or €œNo response that accurately reflects its information sharing policies and practices with respect to the reason specified in this question. An institution that shares personal information for this reason must provide an opt-out.</span><br>
				<br>
				<input type="radio" name="q15" value="Yes"  <c:if test="${page1.q15 eq 'Yes'}">checked</c:if>  onclick='wds8()'>Yes<br>
				<input type="radio" name="q15" value="No"  <c:if test="${page1.q15 eq 'No'}">checked</c:if> onclick='wds8()'>No<br>
				<br>
				<!-- <label for="q2">Can customers limit the personal information your institution share for non-affiliates to market to them?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop18');" onmouseout="showout('pop18');"></img>
				</span>
				<span id="pop18" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide one of the three responses, as applicable, that reflects whether a consumer can limit sharing for the reason mentioned in the question: Yes€ if it is required to or voluntarily provides an opt-out; œNo if it does not provide an opt-out; or €œWe dont share if your institution doesn't share the information for the mentioned reason.</span><br>
				<input type="radio" name="q16" value="Yes" checked>Yes<br>
				<input type="radio" name="q16" value="No">No<br>
				<input type="radio" name="q16" value="We don&#39;t share">We don&#39;t share<br>
				<br> -->
			</div>
			<br>

			<div>
				<b><font size="4">Opt-out Details</font></b>
			</div>
			<br>
			<div class="input-group">
				Please enter details of your institution's applicable <ins><em>opt-out</em></ins> method(s) below: <br> <br> 
				<label for="optout">Phone Number</label> <br> 
				<input class="form-control" type="number" placeholder="" name="phone" value="${page1.phone}" style="width: 200px;"> <br> <br> <br> 
				<label for="q1">Is the telephone number you provided above a toll-free number? </label> <br>
				<input type="radio" name="q" value="Toll-free"  <c:if test="${page1.q eq 'Toll-free'}">checked</c:if> >Yes<br>
				<input type="radio" name="q" value="No" <c:if test="${page1.q eq 'No'}">checked</c:if> >No <br> <br>
				<label for="optout">Website URL</label> 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop19');" onmouseout="showout('pop19');"></img>
				</span>
				<span id="pop19" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please provide either a specific Web address that takes consumers directly to the opt-out page or a general Web address that provides a clear and conspicuous direct link to the opt-out page.</span> <br> 
				<input class="form-control" type="url" placeholder="" name="website" value="${page1.website}"> <br> <br> <br> 
				<label for="q1">Would your institution like to provide mail-in opt-out form for the customers?</label> <br> 
				<input type="radio" name="q17" value="Yes"  onclick='mailin()'  <c:if test="${page1.q17 eq 'Yes'}">checked</c:if> >Yes <br>
				<input type="radio" name="q17" value="No" onclick='mailin()' <c:if test="${page1.q17 eq 'No'}">checked</c:if> >No
				<br> 
				<br>If you answered YES for the previous question, then please enter your institution's address information below: <br>
				<br> <label for="optout">Address Line 1</label> <br> 
				<input required class="form-control" type="text" placeholder="" name="al1" value="${page1.al1}">
				<br> <br> <label for="optout">Address Line 2</label> <br>
				<input class="form-control" type="text" placeholder="" name="al2" value="${page1.al2}"> <br> <br> 
				<label for="optout">City</label> <br> 
				<input required class="form-control" type="text" placeholder="" name="city" value="${page1.city}" style="width: 200px;"> <br>
				<br> <label for="optout">State</label> <br> 
				<select name="state" id="state">
					<option value="Select">Select</option>
					<option value="AL">Alabama</option>
					<option value="AK">Alaska</option>
					<option value="AZ">Arizona</option>
					<option value="AR">Arkansas</option>
					<option value="CA">California</option>
					<option value="CO">Colorado</option>
					<option value="CT">Connecticut</option>
					<option value="DE">Delaware</option>
					<option value="DC">District of Columbia</option>
					<option value="FL">Florida</option>
					<option value="GA">Georgia</option>
					<option value="HI">Hawaii</option>
					<option value="ID">Idaho</option>
					<option value="IL">Illinois</option>
					<option value="IN">Indiana</option>
					<option value="IA">Iowa</option>
					<option value="KS">Kansas</option>
					<option value="KY">Kentucky</option>
					<option value="LA">Louisiana</option>
					<option value="ME">Maine</option>
					<option value="MD">Maryland</option>
					<option value="MA">Massachusetts</option>
					<option value="MI">Michigan</option>
					<option value="MN">Minnesota</option>
					<option value="MS">Mississippi</option>
					<option value="MO">Missouri</option>
					<option value="MT">Montana</option>
					<option value="NE">Nebraska</option>
					<option value="NV">Nevada</option>
					<option value="NH">New Hampshire</option>
					<option value="NJ">New Jersey</option>
					<option value="NM">New Mexico</option>
					<option value="NY">New York</option>
					<option value="NC">North Carolina</option>
					<option value="ND">North Dakota</option>
					<option value="OH">Ohio</option>
					<option value="OK">Oklahoma</option>
					<option value="OR">Oregon</option>
					<option value="PA">Pennsylvania</option>
					<option value="RI">Rhode Island</option>
					<option value="SC">South Carolina</option>
					<option value="SD">South Dakota</option>
					<option value="TN">Tennessee</option>
					<option value="TX">Texas</option>
					<option value="UT">Utah</option>
					<option value="VT">Vermont</option>
					<option value="VA">Virginia</option>
					<option value="WA">Washington</option>
					<option value="WV">West Virginia</option>
					<option value="WI">Wisconsin</option>
					<option value="WY">Wyoming</option>
				</select> <br> <br> 
				<label for="optout">Zipcode</label> <br> 
				<input required class="form-control" type="number" placeholder="" name="zip" value="${page1.zip}" style="width: 120px;"> <br> <br> <br> 
				<label for="q1">Please indicate if your institution requires the customers with multiple accounts to identify each account to which the opt-out should apply. </label> 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop20');" onmouseout="showout('pop20');"></img>
				</span>
				<span id="pop20" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select 'Yes' if your institution require additional or different information, such as a random opt-out number or a truncated account number, to implement an opt-out election, otherwise select 'No'.</span> <br>
				<input type="radio" name="accnt" value="Yes" <c:if test="${page1.accnt eq 'Yes'}">checked</c:if>>Yes <br>
				<input type="radio" name="accnt" value="No" <c:if test="${page1.accnt eq 'No'}">checked</c:if>>No <br> <br>
				<label for="optout">Please enter the number of days after which your institution will begin sharing customer's information from the date of sending privacy notice to a new customer. </label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop21');" onmouseout="showout('pop21');"></img>
				</span>
				<span id="pop21" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please insert a number that is 30 or greater in the field below.</span> <br>
				<input required class="form-control" type="number" min="30" placeholder="" name="days" value="${page1.days}" style="width: 60px;"> <br> <br> <br>
				<label for="q1">Does your institution provide your joint accountholders the choice to opt out for only one accountholder?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop22');" onmouseout="showout('pop22');"></img>
				</span>
				<span id="pop22" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select 'Yes' if your institution provide your joint accountholders the choice to opt out for only one accountholder , otherwise select 'No'. This will include in the mail-in opt-out form the following statement: €œIf you have a joint account, your choice(s) will apply to everyone on your account unless you mark below. Apply my choice(s) only to me.€</span> <br> 
				<input type="radio" name="reverse1" value="Yes"   <c:if test="${page1.reverse1 eq 'Yes'}">checked</c:if>>Yes
				<br> <input type="radio" name="reverse1" value="No"  <c:if test="${page1.reverse1 eq 'No'}">checked</c:if>>No <br>
				<br> <br> 
				<label for="q1">Does your institution shares personal information pursuant to section 603(d)(2)(A)(iii) of the FCRA? </label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop23');" onmouseout="showout('pop23');"></img>
				</span>
				<span id="pop23" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select 'Yes' if your institution shares personal information pursuant to section 603(d)(2)(A)(iii) of the FCRA, otherwise select 'No'. This will include in the mail-in opt-out form the following statement: Do not share information about my creditworthiness with your affiliates for their everyday business purposes.â€</span> <br> 
				<input type="radio" name="reverse2" value="Yes"   <c:if test="${page1.reverse2 eq 'Yes'}">checked</c:if>>Yes
				<br> <input type="radio" name="reverse2" value="No" <c:if test="${page1.reverse2 eq 'No'}">checked</c:if>>No <br>
				<br> <br> 
				<label for="q1">Does your institution incorporates section 624 of the FCRA? </label> 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop24');" onmouseout="showout('pop24');"></img>
				</span>
				<span id="pop24" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select 'Yes' if your institution incorporates section 624 of the FCRA, otherwise select 'No'. This will include in the mail-in opt-out form the following statement: â€œâ–¡ Do not allow your affiliates to use my personal information to market to me.â€</span> <br> 
				<input type="radio" name="reverse3" value="Yes"  <c:if test="${page1.reverse3 eq 'Yes'}">checked</c:if>>Yes
				<br> <input type="radio" name="reverse3" value="No" <c:if test="${page1.reverse3 eq 'No'}">checked</c:if>>No <br>
				<br> <br> 
				<label for="q1">Does your financial institution share personal information pursuant to Â§ 313.10(a) of this part? </label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop25');" onmouseout="showout('pop25');"></img>
				</span>
				<span id="pop25" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select 'Yes' if your institution shares personal information pursuant to Â§ 313.10(a), otherwise select 'No'. This will include in the mail-in opt-out form the following statement: â€œâ–¡ Do not share my personal information with nonaffiliates to market their products and services to me."</span> <br> 
				<input type="radio" name="reverse4" value="Yes"  <c:if test="${page1.reverse4 eq 'Yes'}">checked</c:if>>Yes
				<br> <input type="radio" name="reverse4" value="No" <c:if test="${page1.reverse4 eq 'No'}">checked</c:if>>No <br>
				<br>
			</div>
			<br>

			<div>
				<b><font size="4">Customer service contact information</font></b>
			</div>
			<br>
			<div class="input-group">
				Please enter your institution's <ins><em>customer service</em></ins> contact information : <br> <br> 
				<label for="optout">Phone Number</label> <br> 
				<input required class="form-control" type="number"
					placeholder="" name="phone1" value="${page1.phone1}" style="width: 200px;"> <br>
				<br> <label for="optout">Website URL</label> <br> 
				<input required class="form-control" type="url" placeholder="" name="website1"  value="${page1.website1}"> <br>
			</div>
			<br>
			<!-- <button id="fat-btn" class="btn btn-primary"
				data-loading-text="Loading..." type="button"
				onclick="form.submit();" name="button">Next</button> -->
				<input id="fat-btn" class="btn btn-primary"
				data-loading-text="Loading..." type="submit" name= "button" value="Next"></input>
		<input id="fat-btn" class="btn btn-primary"
				data-loading-text="Loading..." type="submit" name= "download" value="Download"></input></div>
	</form>
	<form method="post" action="UploadServlet"
        enctype="multipart/form-data">
        Select file to upload: <input type="file" name="file" size="60" /><br />
        <br /> <input type="submit" value="Upload" />
    </form>
</body>
</html>