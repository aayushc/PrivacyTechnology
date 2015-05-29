<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Privacy Notice</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/task.js"></script>
<style>
.columns {
	-moz-column-count: 2;
	-webkit-column-count: 2;
	column-count: 2;
}
</style>
</head>
<body>
	<div>
		<h3>Create Privacy Notice</h3>
	</div>
	<form name="form1" class="bs-example bs-example-form"
		onsubmit="return validateForm()" role="form" method="post"
		action="page1.do">
		<div class="panel panel-default">
			<br>
			<p>Please enter the details requested below:</p>
			<br>
			<div>
				<b><font size="4">Who we are?</font></b>
			</div>
			<br>
			<div id="ins" class="input-group">
				<label for="institution">Please enter the name and brief description of the institution(s) providing this notice?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop');" onmouseout="showout('pop');"></img>
				</span>
				<span id="pop" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Two or more financial institutions that jointly provide the model form must use this question to identify themselves. </span> <br> <br>
				<textarea name="institution" rows="4" cols="70" required onkeyup="limitTextarea(this, 4, 50)">${page2.institution}</textarea>
				<br>
			</div>
			<br>
			<div>
				<b><font size="4">What we do?</font></b>
			</div>
			<br>
			<div id="protect" class="input-group">
				<label for="protect">How does your institution protects customer personal information?</label> (Word limit: 30) 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop1');" onmouseout="showout('pop1');"></img>
				</span>
				<span id="pop1" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide additional information pertaining to your institution's safeguards practices such as information about the institution’s use of cookies or other measures used by your institution to safeguard personal information.</span> <br> <br>
				<textarea name="protect" rows="4" cols="50">${page2.protect}</textarea>
				<br> <br>
			</div>
			<div class="cb">
				<label for="what">How does your institution collect a customer's personal information? (Choose any 5)</label> 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop2');" onmouseout="showout('pop2');"></img>
				</span>
				<span id="pop2" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide 5 ways in which your institution will collect customer's personal information.</span>
			</div>
			<br>
			<div class="columns">
				<input type="checkbox" name="what" value="open an account" onclick='chkcontrol(0)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'open an account'}">checked</c:if>
				</c:forEach> > Open an account <br> 
				<input type="checkbox" name="what" value="deposit money" onclick='chkcontrol(1)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'deposit money'}">checked</c:if>
				</c:forEach> > Deposit money <br> 
				<input type="checkbox" name="what" value="pay your bills" onclick='chkcontrol(2)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'pay your bills'}">checked</c:if>
				</c:forEach> > Pay your bills <br> 
				<input type="checkbox" name="what" value="apply for a loan" onclick='chkcontrol(3)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'apply for a loan'}">checked</c:if>
				</c:forEach> > Apply for a loan <br> 
				<input type="checkbox" name="what" value="use your credit or debit card" onclick='chkcontrol(4)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'use your credit or debit card'}">checked</c:if>
				</c:forEach> > Use your credit or debit card <br>
				<input type="checkbox" name="what" value="seek financial or tax advice" onclick='chkcontrol(5)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'seek financial or tax advice'}">checked</c:if>
				</c:forEach> > Seek financial or tax advice <br> 
				<input type="checkbox" name="what" value="apply for insurance" onclick='chkcontrol(6)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'apply for insurance'}">checked</c:if>
				</c:forEach> > Apply for insurance <br> 
				<input type="checkbox" name="what" value="pay insurance premiums" onclick='chkcontrol(7)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'pay insurance premiums'}">checked</c:if>
				</c:forEach> > Pay insurance premiums <br> 
				<input type="checkbox" name="what" value="file an insurance claim" onclick='chkcontrol(8)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'file an insurance claim'}">checked</c:if>
				</c:forEach> > File an insurance claim <br> 
				<input type="checkbox" name="what" value="seek advice about your investments" onclick='chkcontrol(9)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'seek advice about your investments'}">checked</c:if>
				</c:forEach> > Seek advice about your investments <br> 
				<input type="checkbox" name="what" value="buy securities from us" onclick='chkcontrol(10)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'buy securities from us'}">checked</c:if>
				</c:forEach> > Buy securities from us <br> 
				<input type="checkbox" name="what" value="sell securities to us" onclick='chkcontrol(11)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'sell securities to us'}">checked</c:if>
				</c:forEach> > Sell securities to us <br> 
				<input type="checkbox" name="what" value="direct us to buy securities" onclick='chkcontrol(12)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'direct us to buy securities'}">checked</c:if>
				</c:forEach> > Direct us to buy securities <br> 
				<input type="checkbox" name="what" value="direct us to sell your securities" onclick='chkcontrol(13)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'direct us to sell your securities'}">checked</c:if>
				</c:forEach> > Direct us to sell your securities <br> 
				<input type="checkbox" name="what" value="make deposits or withdrawals from your account" onclick='chkcontrol(14)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'make deposits or withdrawals from your account'}">checked</c:if>
				</c:forEach> > Make deposits or withdrawals from your account <br> 
				<input type="checkbox" name="what" value="enter into an investment advisory contract" onclick='chkcontrol(15)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'enter into an investment advisory contract'}">checked</c:if>
				</c:forEach> > Enter into an investment advisory contract <br> 
				<input type="checkbox" name="what" value="give us your income information" onclick='chkcontrol(16)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'give us your income information'}">checked</c:if>
				</c:forEach> > Give us your income information <br> 
				<input type="checkbox" name="what" value="provide employment information" onclick='chkcontrol(17)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'provide employment information'}">checked</c:if>
				</c:forEach> > Provide employment information <br>
				<input type="checkbox" name="what" value="give us your employment history" onclick='chkcontrol(18)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'give us your employment history'}">checked</c:if>
				</c:forEach> > Give us your employment history <br> 
				<input type="checkbox" name="what" value="tell us about your investment or retirement portfolio" onclick='chkcontrol(19)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'tell us about your investment or retirement portfolio'}">checked</c:if>
				</c:forEach> > Tell us about your investment or retirement portfolio <br> 
				<input type="checkbox" name="what" value="tell us about your investment or retirement earnings" onclick='chkcontrol(20)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'tell us about your investment or retirement earnings'}">checked</c:if>
				</c:forEach> > Tell us about your investment or retirement earnings <br> 
				<input type="checkbox" name="what" value="apply for financing" onclick='chkcontrol(21)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'pply for financing'}">checked</c:if>
				</c:forEach> > Apply for financing <br> 
				<input type="checkbox" name="what" value="apply for a lease" onclick='chkcontrol(22)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'apply for a lease'}">checked</c:if>
				</c:forEach> > Apply for a lease <br> 
				<input type="checkbox" name="what" value="provide account information" onclick='chkcontrol(23)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'provide account information'}">checked</c:if>
				</c:forEach> > Provide account information <br> 
				<input type="checkbox" name="what" value="give us your contact information" onclick='chkcontrol(24)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'give us your contact information'}">checked</c:if>
				</c:forEach> > Give us your contact information <br> 
				<input type="checkbox" name="what" value="pay us by check" onclick='chkcontrol(25)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'pay us by check'}">checked</c:if>
				</c:forEach> > Pay us by check <br> 
				<input type="checkbox" name="what" value="give us your wage statements" onclick='chkcontrol(26)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'give us your wage statements'}">checked</c:if>
				</c:forEach> > Give us your wage statements <br>
				<input type="checkbox" name="what" value="provide your mortgage information" onclick='chkcontrol(27)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'provide your mortgage information'}">checked</c:if>
				</c:forEach> > Provide your mortgage information <br> 
				<input type="checkbox" name="what" value="make a wire transfer" onclick='chkcontrol(28)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'make a wire transfer'}">checked</c:if>
				</c:forEach> > Make a wire transfer <br> 
				<input type="checkbox" name="what" value="tell us who receives the money" onclick='chkcontrol(29)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'tell us who receives the money'}">checked</c:if>
				</c:forEach> > Tell us who receives the money <br> 
				<input type="checkbox" name="what" value="tell us where to send the money" onclick='chkcontrol(30)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'tell us where to send the money'}">checked</c:if>
				</c:forEach> > Tell us where to send the money <br>
				<input type="checkbox" name="what" value="show your government-issued ID" onclick='chkcontrol(31)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'show your government-issued ID'}">checked</c:if>
				</c:forEach> > Show your government-issued ID <br> 
				<input type="checkbox" name="what" value="show your drivers license" onclick='chkcontrol(32)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'show your drivers license'}">checked</c:if>
				</c:forEach> > Show your drivers license <br>
				<input type="checkbox" name="what" value="order a commodity futures or option trade" onclick='chkcontrol(33)' 
				<c:forEach var="check" items="${page2.what}">
				<c:if test="${check eq 'order a commodity futures or option trade'}">checked</c:if>
				</c:forEach> > Order a commodity futures or option trade <br>
			</div>
			<br>
			<div class="rb">
				<label for="q1">Does your institution collect personal information from your affiliates and/or other credit bureaus?</label> 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop3');" onmouseout="showout('pop3');"></img>
				</span>
				<span id="pop3" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please indicate if your institution collect personal information fromtheir affiliates and/or credit bureaus. </span> <br> 
				<input type="radio" name="q1" value="We also collect your personal information from others, such as credit bureaus, affiliates, or other companies." <c:if test="${page2.q1 eq 'We also collect your personal information from others, such as credit bureaus, affiliates, or other companies.'}">checked</c:if> onclick='wds9()'> Yes <br> 
				<input type="radio" name="q1" value="" <c:if test="${page2.q1 eq ''}">checked</c:if> onclick='wds9()'> No <br> <br> 
				<label for="q1">Does your institution collect personal information from other companies if it does not collect personal information from your affiliates and/or other credit bureaus?</label> 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop4');" onmouseout="showout('pop4');"></img>
				</span>
				<span id="pop4" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please indicate if your institution does not collect personal information from their affiliates and/or credit bureaus but do collect information from other companies. </span> <br> 
				<input type="radio" name="q2" value="We also collect your personal information from other companies." <c:if test="${page2.q2 eq 'We also collect your personal information from other companies.'}">checked</c:if> onclick='wds10()'> Yes <br>
				<input type="radio" name="q2" value="" <c:if test="${page2.q2 eq ''}">checked</c:if> onclick='wds10()'> No <br> <br> 
				<label for="q1">Does your institution describe state privacy law provisions in the Other important information box?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop5');" onmouseout="showout('pop5');"></img>
				</span>
				<span id="pop5" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please select "Yes" if your institution describe state privacy law provisions, otherwise select "No". This will add a bracketed sentence: “See below for more on your rights under state law.” </span> <br>
				<input type="radio" name="q3" value="See below for more on your rights under state law." <c:if test="${page2.q1 eq 'See below for more on your rights under state law.'}">checked</c:if> onclick='enabletextarea1()'> Yes <br> 
				<input type="radio" name="q3" value="" <c:if test="${page2.q3 eq ''}">checked</c:if> onclick='enabletextarea1()'> No <br> 
				<br> <label>If you answered YES to the previous question, please enter the state privacy law provisions described by your institution below: </label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop6');" onmouseout="showout('pop6');"></img
				></span>
				<span id="pop6" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;"> If your institution describe state privacy law provisions, then add them in the space provided below. This information will appear in the “Other important information” block. </span> <br>
				<textarea name="provision" rows="4" cols="50"></textarea>
				<br> <br> Please answer the following question if your institution provide opt-out options. <br>
				<br> <label for="q1">What happens when a customer limit sharing for an account he/she hold jointly with someone else?</label>
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop7');" onmouseout="showout('pop7');"></img>
				</span>
				<span id="pop7" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;"> Please select one of the options provided below to indicate what will happen when a customer limit sharing for an account he/she hold jointly with someone else. </span>  <br>
				<input type="radio" name="q4" value="Your choices will apply to everyone on your account." <c:if test="${page2.q4 eq 'Your choices will apply to everyone on your account.'}">checked</c:if>> Customer's choices will apply to everyone on their account <br>
				<input type="radio" name="q4" value="Your choices will apply to everyone on your account unless you tell us otherwise." <c:if test="${page2.q4 eq 'Your choices will apply to everyone on your account unless you tell us otherwise.'}">checked</c:if>> Customer's choices will apply to everyone on their account unless they tell us otherwise <br> <br> 
				<!-- <label for="q1">Does your institution provide insurance products or services?</label> <br>
				<input type="radio" name="q5" value="Yes"> Yes <br> 
				<input type="radio" name="q5" value="No" checked> No <br> <br> -->
			</div>
			<div>
				<b><font size="4">Definitions</font></b>
			</div>
			<br> <ins><em>Affiliates</em></ins> <br> <br> 
			<label for="q6">Does your institution : </label> <br> 
			<input type="radio" name="q6" value="1" <c:if test="${page2.q6 eq '1'}">checked</c:if>onclick='enabletextarea2()'> has no affiliates 
			<span id="help" style="margin-left: 20px;">
				<img src="./img/help2.png" onmouseover="showpop('pop8');" onmouseout="showout('pop8');"></img>
			</span>
			<span id="pop8" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;"> This option will state: “[name of financial institution] has no affiliates” </span> <br> 
			<input type="radio" name="q6" value="2" <c:if test="${page2.q6 eq '2'}">checked</c:if> onclick='enabletextarea2()'> has affiliates but does not share personal information
			<span id="help" style="margin-left: 20px;">
				<img src="./img/help2.png" onmouseover="showpop('pop9');" onmouseout="showout('pop9');"></img>
			</span>
			<span id="pop9" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;"> This option will state: “[name of financial institution] does not share with our affiliates”</span> <br> 
			<input type="radio" name="q6" value="3" <c:if test="${page2.q6 eq '3'}">checked</c:if> onclick='enabletextarea2()'> shares with its affiliates
			<span id="help" style="margin-left: 20px;">
				<img src="./img/help2.png" onmouseover="showpop('pop10');" onmouseout="showout('pop10');"></img>
			</span>
			<span id="pop10" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;"> This option will state: “Our affiliates include companies with a [common corporate identity of financial institution] name; financial companies such as [insert illustrative list of companies]; nonfinancial companies, such as [insert illustrative list of companies;] and others, such as [insert illustrative list].”</span>
			<br> <br> Please answer the below questions marked [1], [2], [3], [4] <strong><ins>ONLY</ins></strong> if your institution share with its affiliates. <br> <br>
			<div>
				<label for="def">[1]. Enter the common corporate identity of financial institution.</label> <br> <br>
				<textarea name="ta1" rows="1" cols="80">${page2.ta1}</textarea>
				<br> <br> <label for="def">[2]. Enter the names of <ins>financial</ins> companies which are your affiliates. </label> <br> <br>
				<textarea name="ta2" rows="4" cols="50">${page2.ta2}</textarea>
				<br> <br> <label for="def">[3]. Enter the names of <ins>non-financial</ins> companies which are your affiliates. </label> &nbsp; <br> <br>
				<textarea name="ta3" rows="4" cols="50">${page2.ta3}</textarea>
				<br> <br> <label for="def">[4]. Enter the name of <ins>other</ins> companies which are your affiliates. </label> &nbsp; <br> <br>
				<textarea name="ta4" rows="4" cols="50">${page2.ta4}</textarea>
				<br> <br> <em><ins>Nonaffiliates</ins></em> <br> <br> Please select an appropriate choice: <br> <br> 
				<label for="q6">Our financial institution : </label> <br> 
				<input type="radio" name="q7" value="1" <c:if test="${page2.q7 eq '1'}">checked</c:if> onclick='enabletextarea3()'> does not share with nonaffiliated third parties 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop11');" onmouseout="showout('pop11');"></img>
				</span>
				<span id="pop11" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;"> This option will state: “[name of financial institution] does not share with nonaffiliates so they can market to you”</span><br> 
				<input type="radio" name="q7" value="2" <c:if test="${page2.q7 eq '2'}">checked</c:if> onclick='enabletextarea3()'> shares with nonaffiliated third parties 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop12');" onmouseout="showout('pop12');"></img>
				</span>
				<span id="pop12" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;"> This option will state: “Nonaffiliates we share with can include [list categories of companies such as mortgage companies, insurance companies, direct marketing companies, and nonprofit organizations].”</span> 
				<br> <br> Please answer the below question <strong><ins>ONLY</ins></strong> if your institution shares with nonaffiliated third parties. <br> <br> 
				<label for="def"> Please enter the names of nonaffiliate companies such as mortgage companies, insurance companies, direct marketing companies, and nonprofit organizations with whom you share information.</label> <br> <br>
				<textarea name="ta5" rows="4" cols="50">${page2.ta5}</textarea>
				<br> <br> <em><ins>Joint Marketing</ins></em> <br> <br> Please select an appropriate choice: <br> <br> 
				<label for="q6">Our financial institution : </label> <br> 
				<input type="radio" name="q8" value="1" <c:if test="${page2.q8 eq '1'}">checked</c:if> onclick='enabletextarea4()'> does not engage in joint marketing
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop13');" onmouseout="showout('pop13');"></img>
				</span>
				<span id="pop13" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;"> This option will state: “[name of financial institution] doesn’t jointly market”</span><br> 
				<input type="radio" name="q8" value="2" <c:if test="${page2.q8 eq '2'}">checked</c:if> onclick='enabletextarea4()'> shares personal information for joint marketing 
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop14');" onmouseout="showout('pop14');"></img>
				</span>
				<span id="pop14" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">This option will state: “Our joint marketing partners include [list categories of companies such as credit card companies].”</span>
				<br> <br> Please answer the below question <strong><ins>ONLY</ins></strong> if your institution shares shares personal information for joint marketing. <br> <br> 
				<label for="def"> Please enter the names of your joint marketing partners such as credit card companies.</label> &nbsp; <br> <br>
				<textarea name="ta6" rows="4" cols="50">${page2.ta6}</textarea>
				<br> <br>
				<div>
					<b><font size="4">Other important information</font></b>
				</div>
				<br> 
				<label for="oinfo">Please provide any other important information if any: </label>  
				<span id="help" style="margin-left: 20px;">
					<img src="./img/help2.png" onmouseover="showpop('pop15');" onmouseout="showout('pop15');"></img>
				</span>
				<span id="pop15" style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please include only the "Acknowledgment of receipt form" in the text area provided below.</span>
				<br> <br>
				<textarea name="other" rows="4" cols="50">${page2.other}</textarea>
				<br> <br>
			</div>
			<br>
			<!-- <button id="fat-btn" class="btn btn-primary" data-loading-text="Loading..." type="button" onclick="history.back(-1)">Previous</button>
			<span>&nbsp; &nbsp; &nbsp;</span>
			<button id="fat-btn" class="btn btn-primary" data-loading-text="Loading..." type="button" onclick="form.submit();">Preview Form</button>
			<span></span> -->
			<!-- <button id="fat-btn" class="btn btn-primary" data-loading-text="Loading..." type="button" onclick="history.back(-1)">Previous</button>
			<td valign="top">&nbsp; &nbsp; &nbsp;</td>
			<button id="fat-btn" class="btn btn-primary" data-loading-text="Loading..." type="button" onclick="form.submit();">Preview Form</button>
			<td valign="top"></td> -->
			<input id="fat-btn" class="btn btn-primary"
				data-loading-text="Loading..." type="submit" name= "previous" onclick="history.back(-1)" value="Previous"></input>			
			<input id="fat-btn" class="btn btn-primary"
				data-loading-text="Loading..." type="submit" name= "button" value="Preview Form"></input>
			<input id="fat-btn" class="btn btn-primary"
				data-loading-text="Loading..." type="submit" name= "download" value="Download"></input></div>
		</div>
	</form>
</body>
</html>