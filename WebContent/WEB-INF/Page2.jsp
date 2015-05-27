<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<style>
.columns {
    -moz-column-count: 2;
    -webkit-column-count: 2;
    column-count: 2;
}
</style>

<script type="text/javascript">
	function chkcontrol(j) {
	var total=0;
	for(var i=0; i < document.form1.what.length; i++){
	if(document.form1.what[i].checked){
	total =total +1;}
	if(total > 5){
	alert("Please Select only five") 
	document.form1.what[j].checked = false ;
	return false;
	}
    }
} 



function validateForm() {
    var x = document.forms["form1"]["institution"].value;
    if (x == null || x == "") {
        alert("Institution Name is required!");
        return false;
    }
}

var countBox =1;
var boxName = 0;
function addInput()
{
     var boxName="textBox"+countBox; 
document.getElementById('ins').innerHTML+='<br/><input type="text" id="'+boxName+'" value="'+boxName+'" "  /><br/>';
     countBox += 1;
}

function enabletextarea1() {
    if (document.form1.q3[1].checked) {
        document.form1.provision.disabled = true;
        
        return false;
    }
     else if(document.form1.q3[0].checked) {
       document.form1.provision.disabled = false;
    }
}

function enabletextarea2() {
    if (document.form1.q6[0].checked) {
        document.form1.ta1.disabled = true;
document.form1.ta2.disabled = true;
document.form1.ta3.disabled = true;
document.form1.ta4.disabled = true;
        
        return false;
    }
     else if(document.form1.q6[1].checked) {
       document.form1.ta1.disabled = true;
document.form1.ta2.disabled = true;
document.form1.ta3.disabled = true;
document.form1.ta4.disabled = true;
    }
else if(document.form1.q6[2].checked) {
       document.form1.ta1.disabled = false;
document.form1.ta2.disabled = false;
document.form1.ta3.disabled = false;
document.form1.ta4.disabled = false;
}
}

function enabletextarea3() {
    if (document.form1.q7[0].checked) {
        document.form1.ta5.disabled = true;
        
        return false;
    }
     else if(document.form1.q7[1].checked) {
       document.form1.ta5.disabled = false;
    }
}

function enabletextarea4() {
    if (document.form1.q8[0].checked) {
        document.form1.ta6.disabled = true;
        
        return false;
    }
     else if(document.form1.q8[1].checked) {
       document.form1.ta6.disabled = false;
    }
}
</script>
</head>
<body>
<div>
    	<h3>Create Privacy Notice</h3>

</div>
<form name="form1" class="bs-example bs-example-form"
	onsubmit="return validateForm()" role="form" method="post" action="page1.do">
	<div class="panel panel-default">
		<br>
		<p>Please enter the details requested below:</p>
		<br>
		<div>
			<b><font size="4">Who we are?</font></b>
		</div>
		<br>
		<div id="ins" class="input-group">
			<label for="institution">Please enter the name and brief
				description of the institution(s) providing this notice?</label> &nbsp; <br>

			<br>
			<textarea rows="4" cols="50">
</textarea>
			<br>
		</div>
		<br>
		<div>
			<b><font size="4">What we do?</font></b>
		</div>


		<br>
		<div id="protect" class="input-group">
			<label for="protect">How does your institution protects
				customer personal information?</label> (Word limit: 30) <br> <br>
			<textarea rows="4" cols="50">
</textarea>
			<br> <br>
		</div>
		<div class="cb">
			<label for="what">How does your institution collect a
				customer's personal information? (Choose any 5)</label>
		</div>
		<br>
		<div class="columns">
			<input type="checkbox" name="what" value="open an account"
				onclick='chkcontrol(0)'> Open an account <br> <input
				type="checkbox" name="what" value="deposit money"
				onclick='chkcontrol(1)'> Deposit money <br> <input
				type="checkbox" name="what" value="pay your bills"
				onclick='chkcontrol(2)'> Pay your bills <br> <input
				type="checkbox" name="what" value="apply for a loan"
				onclick='chkcontrol(3)'> Apply for a loan <br> <input
				type="checkbox" name="what" value="use your credit or debit card"
				onclick='chkcontrol(4)'> Use your credit or debit card <br>
			<input type="checkbox" name="what"
				value="seek financial or tax advice" onclick='chkcontrol(5)'>
			Seek financial or tax advice <br> <input type="checkbox"
				name="what" value="apply for insurance" onclick='chkcontrol(6)'>
			Apply for insurance <br> <input type="checkbox" name="what"
				value="pay insurance premiums" onclick='chkcontrol(7)'> Pay
			insurance premiums <br> <input type="checkbox" name="what"
				value="file an insurance claim" onclick='chkcontrol(8)'>
			File an insurance claim <br> <input type="checkbox" name="what"
				value="seek advice about your investments" onclick='chkcontrol(9)'>
			Seek advice about your investments <br> <input type="checkbox"
				name="what" value="buy securities from us" onclick='chkcontrol(10)'>
			Buy securities from us <br> <input type="checkbox" name="what"
				value="sell securities to us" onclick='chkcontrol(11)'>
			Sell securities to us <br> <input type="checkbox" name="what"
				value="direct us to buy securities" onclick='chkcontrol(12)'>
			Direct us to buy securities <br> <input type="checkbox"
				name="what" value="direct us to sell your securities"
				onclick='chkcontrol(13)'> Direct us to sell your securities
			<br> <input type="checkbox" name="what"
				value="make deposits or withdrawals from your account"
				onclick='chkcontrol(14)'> Make deposits or withdrawals from
			your account <br> <input type="checkbox" name="what"
				value="enter into an investment advisory contract"
				onclick='chkcontrol(15)'> Enter into an investment advisory
			contract <br> <input type="checkbox" name="what"
				value="give us your income information" onclick='chkcontrol(16)'>
			Give us your income information <br> <input type="checkbox"
				name="what" value="provide employment information"
				onclick='chkcontrol(17)'> Provide employment information <br>
			<input type="checkbox" name="what"
				value="give us your employment history" onclick='chkcontrol(18)'>
			Give us your employment history <br> <input type="checkbox"
				name="what"
				value="tell us about your investment or retirement portfolio"
				onclick='chkcontrol(19)'> Tell us about your investment or
			retirement portfolio <br> <input type="checkbox" name="what"
				value="tell us about your investment or retirement earnings"
				onclick='chkcontrol(20)'> Tell us about your investment or
			retirement earnings <br> <input type="checkbox" name="what"
				value="apply for financing" onclick='chkcontrol(21)'> Apply
			for financing <br> <input type="checkbox" name="what"
				value="apply for a lease" onclick='chkcontrol(22)'> Apply
			for a lease <br> <input type="checkbox" name="what"
				value="provide account information" onclick='chkcontrol(23)'>
			Provide account information <br> <input type="checkbox"
				name="what" value="give us your contact information"
				onclick='chkcontrol(24)'> Give us your contact information
			<br> <input type="checkbox" name="what" value="pay us by check"
				onclick='chkcontrol(25)'> Pay us by check <br> <input
				type="checkbox" name="what" value="give us your wage statements"
				onclick='chkcontrol(26)'> Give us your wage statements <br>
			<input type="checkbox" name="what"
				value="provide your mortgage information" onclick='chkcontrol(27)'>
			Provide your mortgage information <br> <input type="checkbox"
				name="what" value="make a wire transfer" onclick='chkcontrol(28)'>
			Make a wire transfer <br> <input type="checkbox" name="what"
				value="tell us who receives the money" onclick='chkcontrol(29)'>
			Tell us who receives the money <br> <input type="checkbox"
				name="what" value="tell us where to send the money"
				onclick='chkcontrol(30)'> Tell us where to send the money <br>
			<input type="checkbox" name="what"
				value="show your government-issued ID" onclick='chkcontrol(31)'>
			Show your government-issued ID <br> <input type="checkbox"
				name="what" value="show your driver’s license"
				onclick='chkcontrol(32)'> Show your driver’s license <br>
			<input type="checkbox" name="what"
				value="order a commodity futures or option trade"
				onclick='chkcontrol(33)'> Order a commodity futures or
			option trade <br>

		</div>
		<br>
		<div class="rb">
			<label for="q1">Does your institution collect personal
				information from your affiliates and/or other credit bureaus?</label> <br>
			<input type="radio" name="q1"
				value="We also collect your personal information from others, such as credit bureaus, affiliates, or other companies."
				checked> Yes <br> <input type="radio" name="q1"
				value=""> No <br> <br> <label for="q1">Does
				your institution collect personal information from other companies
				if it does not collect personal information from your affiliates
				and/or other credit bureaus?</label> <br> <input type="radio" name="q2"
				value="We also collect your personal information from other companies."
				checked> Yes <br> <input type="radio" name="q2"
				value=""> No <br> <br> <label for="q1">Does
				your institution describe state privacy law provisions in the “Other
				important information” box?</label> <br> <input type="radio" name="q3"
				value="See below for more on your rights under state law." checked onclick='enabletextarea()'>
			Yes <br> <input type="radio" name="q3" value="" onclick='enabletextarea1()'> No <br>
			<br> If you answered YES to the previous question, please enter
			the state privacy law provisions described by your institution below:
			<br>
			<textarea name="provision" rows="4" cols="50">
</textarea>
			&nbsp; &nbsp;<u>Add</u> <br> <br> Please answer the
			following question if your institution provide opt-out options. <br>
			<br> <label for="q1">What happens when a customer limit
				sharing for an account he/she hold jointly with someone else?</label> <br>
			<input type="radio" name="q4"
				value="Your choices will apply to everyone on your account.">
			Customer's choices will apply to everyone on their account <br>
			<input type="radio" name="q4"
				value="Your choices will apply to everyone on your account–unless you tell us otherwise.">
			Customer's choices will apply to everyone on their account–unless
			they tell us otherwise <br> <br> <label for="q1">Does
				your institution provide insurance products or services?</label> <br> <input
				type="radio" name="q5" value="Yes"> Yes <br> <input
				type="radio" name="q5" value="No" checked> No <br> <br>
		</div>
		<div>
			<b><font size="4">Definitions</font></b>
		</div>

		<br> <i><u>Affiliates</u></i> <br> <br> <label for="q6">Does
			your institution : </label> <br> <input type="radio" name="q6"
			value="has no affiliates" checked onclick='enabletextarea2()'> has no affiliates <br>
		<input type="radio" name="q6"
			value="has affiliates but does not share personal information" onclick='enabletextarea2()'>
		has affiliates but does not share personal information <br> <input
			type="radio" name="q6" value="shares with its affiliates" onclick='enabletextarea2()'>
		shares with its affiliates <br> <br> Please answer the below
		questions marked [1], [2], [3], [4] <b><u>ONLY</u></b> if your
		institution share with its affiliates. <br> <br>
		<div>
			<label for="def">[1]. Enter the common corporate identity of
				financial institution.</label> <br> <br> 

 <textarea name="ta1" rows="1" cols="80">
</textarea>
<br>

           <br>
            <label for="def">[2].
			Enter the names of <u>financial</u> companies which are your
			affiliates.</label> <br> <br>
			<textarea name="ta2" rows="4" cols="50">
</textarea>
			<br> <br> <label for="def">[3]. Enter the names of
				<u>non-financial</u> companies which are your affiliates.
			</label> &nbsp; <br> <br>
			<textarea name="ta3" rows="4" cols="50">
</textarea>
			<br> <br> <label for="def">[4]. Enter the name of <u>other</u>
				companies which are your affiliates.
			</label> &nbsp; <br> <br>
			<textarea name="ta4" rows="4" cols="50">
</textarea>

			<br> <br> <i><u>Nonaffiliates</u></i> <br> <br>
			Please select an appropriate choice: <br> <br> <label
				for="q6">Our financial institution : </label> <br> <input
				type="radio" name="q7"
				value="does not share with nonaffiliated third parties" checked onclick='enabletextarea3()'>
			does not share with nonaffiliated third parties <br> <input
				type="radio" name="q7"
				value="shares with nonaffiliated third parties" onclick='enabletextarea3()'> shares with
			nonaffiliated third parties <br> <br> Please answer the
			below question <b><u>ONLY</u></b> if your institution shares with
			nonaffiliated third parties. <br> <br> <label for="def">
				Please enter the names of nonaffiliate companies such as mortgage
				companies, insurance companies, direct marketing companies, and
				nonprofit organizations with whom you share information.</label> <br> <br>
			<textarea name="ta5" rows="4" cols="50">
</textarea>
			<br> <br> <i><u>Joint Marketing</u></i> <br> <br>
			Please select an appropriate choice: <br> <br> <label
				for="q6">Our financial institution : </label> <br> <input
				type="radio" name="q8" value="does not engage in joint marketing"
				checked onclick='enabletextarea4()'> does not engage in joint marketing <br> <input
				type="radio" name="q8"
				value="shares personal information for joint marketing" onclick='enabletextarea4()'>
			shares personal information for joint marketing <br> <br>
			Please answer the below question <b><u>ONLY</u></b> if your
			institution shares shares personal information for joint marketing. <br>
			<br> <label for="def"> Please enter the names of your
				joint marketing partners such as credit card companies.</label> &nbsp; <br>
			<br>
			<textarea name="ta6" rows="4" cols="50">
</textarea>
			<br> <br>
			<div>
				<b><font size="4">Other important information</font></b>
			</div>

			<br> <label for="oinfo">Please provide any other
				important information if any: </label> <br> <br>


			<textarea rows="4" cols="50">
</textarea>

			<br> <br>
		</div>
		<br>
		<button id="fat-btn" class="btn btn-primary"
			data-loading-text="Loading..." type="button" onclick="form.submit();">Previous</button>
		<td valign="top">&nbsp; &nbsp; &nbsp;
			<button id="fat-btn" class="btn btn-primary"
				data-loading-text="Loading..." type="button"
				onclick="form.submit();">Preview Form</button>
		<td valign="top">
		</td>
		</div>
</form>
</body>
</html>