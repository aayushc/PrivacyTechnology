<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<style>
.columns {
	-moz-column-count: 3;
	-webkit-column-count: 3;
	column-count: 3;
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

function showpop() {
	document.getElementById("pop").style.display="inline";
}

function showout() {
	document.getElementById("pop").style.display="none";
}
function validateForm() {
    var x = document.forms["form1"]["institution"].value;
    if (x == null || x == "") {
        alert("Institution Name is required!");
        return false;
    }
}

function wds1() {
    if (document.form1.q1[1].checked) {
        document.form1.q2[2].checked = true;
        document.form1.q2[1].disabled = true;
        document.form1.q2[0].disabled = true;
        return false;
    }
    else if(document.form1.q1[0].checked) {
        document.form1.q2[2].disabled = true;
        document.form1.q2[1].disabled = false;
        document.form1.q2[0].disabled = false;
	document.form1.q2[2].checked = false;
    }
}

function wds2() {
    if (document.form1.q3[1].checked) {
        document.form1.q4[2].checked = true;
        document.form1.q4[1].disabled = true;
        document.form1.q4[0].disabled = true;
        return false;
    }
     else if(document.form1.q3[0].checked) {
        document.form1.q4[2].disabled = true;
        document.form1.q4[1].disabled = false;
        document.form1.q4[0].disabled = false;
	document.form1.q2[2].checked = false;
    }
}
function wds3() {
    if (document.form1.q5[1].checked) {
        document.form1.q6[2].checked = true;
        document.form1.q6[1].disabled = true;
        document.form1.q6[0].disabled = true;
        return false;
    }
     else if(document.form1.q5[0].checked) {
        document.form1.q6[2].disabled = true;
        document.form1.q6[1].disabled = false;
        document.form1.q6[0].disabled = false;
    	document.form1.q2[2].checked = false;
}
}
function wds4() {
    if (document.form1.q7[1].checked) {
        document.form1.q8[2].checked = true;
        document.form1.q8[1].disabled = true;
        document.form1.q8[0].disabled = true;
        return false;
    }
     else if(document.form1.q7[0].checked) {
        document.form1.q8[2].disabled = true;
        document.form1.q8[1].disabled = false;
        document.form1.q8[0].disabled = false;
	document.form1.q2[2].checked = false;
    }
}
function wds5() {
    if (document.form1.q9[1].checked) {
        document.form1.q10[2].checked = true;
        document.form1.q10[1].disabled = true;
        document.form1.q10[0].disabled = true;
        return false;
    }
     else if(document.form1.q9[0].checked) {
        document.form1.q10[2].disabled = true;
        document.form1.q10[1].disabled = false;
        document.form1.q10[0].disabled = false;
	document.form1.q2[2].checked = false;
    }
}
function wds6() {
    if (document.form1.q11[1].checked) {
        document.form1.q12[1].disabled = true;
        document.form1.q12[0].disabled = true;
        document.form1.q12[0].checked = false;
        document.form1.q12[1].checked = false;
	document.form1.q13[1].disabled = true;
        document.form1.q13[0].disabled = true;
        document.form1.q13[0].checked = false;
        document.form1.q13[1].checked = false;
	document.form1.q14[1].disabled = true;
        document.form1.q14[0].disabled = true;
        document.form1.q14[0].checked = false;
        document.form1.q14[1].checked = false;
        return false;
    }
     else if(document.form1.q11[0].checked) {
        document.form1.q12[0].checked = false;
        document.form1.q12[1].checked = false;
        document.form1.q12[1].disabled = false;
        document.form1.q12[0].disabled = false;
        document.form1.q13[0].checked = false;
        document.form1.q13[1].checked = false;
        document.form1.q13[1].disabled = false;
        document.form1.q13[0].disabled = false;
        document.form1.q14[0].checked = false;
        document.form1.q14[1].checked = false;
        document.form1.q14[1].disabled = false;
        document.form1.q14[0].disabled = false;


    }
}
function wds7() {
    if (document.form1.q12[1].checked) {
        document.form1.q13[1].disabled = true;
        document.form1.q13[0].disabled = true;
        return false;
    }
     else if(document.form1.q12[0].checked) {
        document.form1.q13[0].checked = false;
	document.form1.q13[1].checked = false;
        document.form1.q13[1].disabled = false;
        document.form1.q13[0].disabled = false;
    }
}
function wds8() {
    if (document.form1.q15[1].checked) {
        document.form1.q16[2].checked = true;
        document.form1.q16[1].disabled = true;
        document.form1.q16[0].disabled = true;
        return false;
    }
    else if(document.form1.q15[0].checked) {
        document.form1.q16[2].disabled = true;
        document.form1.q16[1].disabled = false;
        document.form1.q16[0].disabled = false;
	document.form1.q16[2].checked = false;
    }
}
</script>
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
				<span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop();" onmouseout="showout();"></img></span><span
					id="pop"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Insert
					the date on which the notice was last revised in [month/year] format using either the name or number of the month, such as “rev. July 2009” or “rev. 7/09”.</span>
				 <br>
				<input class="form-control" type="month" placeholder=mm/yyyy
					name="revdate" style="width: 200px;" required />
			</div>
			<br>
			<div class="input-group">
				<label for="institution">Name of your Institution</label>
				 <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop();" onmouseout="showout();"></img></span><span
					id="pop"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Insert
					the name of the financial institution providing the notice or a
					common identity of affiliated institutions jointly providing the
					notice.</span>
				 <input
					required class="form-control" type="text" placeholder=""
					name="institution" required />
			</div>
			<br>
			<div>
				<b><font size="4">What does your financial institution do
						with customer's personal information?</font></b>
			</div>
			<br>
			<div class="input-group">
				<label for="what">What type of information will you collect
					and share? (Choose any 5)</label>
			</div>
			<div class="columns">
				<input type="checkbox" name="xyz" value="Social Security number"
					disabled checked> Social Security Number <br> <input
					type="checkbox" name="what" value="income" onclick='chkcontrol(0)'>
				Income <br> <input type="checkbox" name="what"
					value="account balances" onclick='chkcontrol(1)'> Account
				Balances <br> <input type="checkbox" name="what"
					value="payment history" onclick='chkcontrol(2)'> Payment
				History <br> <input type="checkbox" name="what"
					value="transaction history" onclick='chkcontrol(3)'>
				Transaction History <br> <input type="checkbox" name="what"
					value="transaction or loss history" onclick='chkcontrol(4)'>
				Transaction or Loss History <br> <input type="checkbox"
					name="what" value="credit history" onclick='chkcontrol(5)'>
				Credit History <br> <input type="checkbox" name="what"
					value="credit scores" onclick='chkcontrol(6)'> Credit
				Scores <br> <input type="checkbox" name="what" value="assets"
					onclick='chkcontrol(7)'> Assets <br> <input
					type="checkbox" name="what" value="investment experience"
					onclick='chkcontrol(8)'> Investment Experience <br> <input
					type="checkbox" name="what" value="credit-based insurance scores"
					onclick='chkcontrol(9)'> Credit-based Insurance Scores <br>
				<input type="checkbox" name="what" value="transaction history"
					onclick='chkcontrol(10)'> Transaction History <br> <input
					type="checkbox" name="what" value="insurance claim history"
					onclick='chkcontrol(11)'> Insurance Claim History <br>
				<input type="checkbox" name="what" value="medical information"
					onclick='chkcontrol(12)'> Medical Information <br> <input
					type="checkbox" name="what" value="overdraft history"
					onclick='chkcontrol(13)'> Overdraft History <br> <input
					type="checkbox" name="what" value="purchase history"
					onclick='chkcontrol(14)'> Purchase History <br> <input
					type="checkbox" name="what" value="account transactions"
					onclick='chkcontrol(15)'> Account Transactions <br> <input
					type="checkbox" name="what" value="risk tolerance"
					onclick='chkcontrol(16)'> Risk Tolerance <br> <input
					type="checkbox" name="what" value="medical-related debts"
					onclick='chkcontrol(17)'> Medical-related Debts <br> <input
					type="checkbox" name="what" value="credit card or other debt"
					onclick='chkcontrol(18)'> Credit Card or Other Debt <br>
				<input type="checkbox" name="what"
					value="mortgage rates and payments" onclick='chkcontrol(19)'>
				Mortgage rates and Payments <br> <input type="checkbox"
					name="what" value="retirement assets" onclick='chkcontrol(20)'>
				Retirement Assets <br> <input type="checkbox" name="what"
					value="checking account information" onclick='chkcontrol(21)'>
				Checking Account Information <br> <input type="checkbox"
					name="what" value="employment information" onclick='chkcontrol(22)'>
				Employment Information <br> <input type="checkbox" name="what"
					value="wire transfer instructions" onclick='chkcontrol(23)'>
				Wire Transfer Instructions <br>
			</div>
			<br>

			<div>
				<b><font size="4">Reasons your institution can share
						customer's personal information</font></b>
			</div>
			<br>
			<div class="rb">
				<div id="">
					<i>For institution's everyday business purposes:</i> <br> <label
						for="q1">Will your institution share customer's personal
						information for your everday business purposes?</label> <span id="help"
						style="margin-left: 20px;"><img src="./img/help2.png"
						onmouseover="showpop();" onmouseout="showout();"></img></span><span
						id="pop"
						style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Hello
						How are you</span>
				</div>

				<input type="radio" name="q1" value="Yes" checked onclick='wds1()'>
				Yes <br> <input type="radio" name="q1" value="No"
					onclick='wds1()'> No <br> <br> <label for="q2">Can
					customers limit the personal information your institution share for
					your everyday business purposes?</label> <br> <input type="radio"
					name="q2" value="Yes" checked> Yes <br> <input
					type="radio" name="q2" value="No"> No <br> <input
					type="radio" name="q2" value="We don't share"> We don't
				share <br> <br> <i>For institution's marketing
					purposes:</i> <br> <label for="q1">Will your institution
					share customer's personal information for your marketing purposes?</label>
				<br> <input type="radio" name="q3" value="Yes" checked
					onclick='wds2()'> Yes <br> <input type="radio"
					name="q3" value="No" onclick='wds2()'> No <br> <br>
				<label for="q2">Can customers limit the personal information
					your institution share for your everyday marketing purposes?</label> <br>
				<input type="radio" name="q4" value="Yes" checked> Yes <br>
				<input type="radio" name="q4" value="No"> No <br> <input
					type="radio" name="q4" value="We don't share"> We don't
				share <br> <br> <i>For joint marketing with other
					financial companies:</i> <br> <label for="q1">Will your
					institution share customer's personal information for joint
					marketing with other financial companies?</label> <br> <input
					type="radio" name="q5" value="Yes" checked onclick='wds3()'>
				Yes <br> <input type="radio" name="q5" value="No"
					onclick='wds3()'> No <br> <br> <label for="q2">Can
					customers limit the personal information your institution share for
					joint marketing with other financial companies?</label> <br> <input
					type="radio" name="q6" value="Yes" checked> Yes <br> <input
					type="radio" name="q6" value="No"> No <br> <input
					type="radio" name="q6" value="We don't share"> We don't
				share <br> <br> <i>For your institution's affiliates'
					everyday business purposes- information about transactions and
					experiences:</i> <br> <label for="q1">Will your
					institution share customer's personal information about their
					transactions and experiences for your affiliates' everday business
					purposes?</label> <br> <input type="radio" name="q7" value="Yes"
					checked onclick='wds4()'> Yes <br> <input type="radio"
					name="q7" value="No" onclick='wds4()'> No <br> <br>
				<label for="q2">Can customers limit the personal information
					aboout their transactions and experiences your institution share
					for your affiliates' everyday business purposes?</label> <br> <input
					type="radio" name="q8" value="Yes" checked> Yes <br> <input
					type="radio" name="q8" value="No"> No <br> <input
					type="radio" name="q8" value="We don't share"> We don't
				share <br> <br> <i>For your institution's affiliates'
					everyday business purposes- information about creditworthiness:</i> <br>
				<label for="q1">Will your institution share customer's
					personal information about their creditworthiness for your
					affiliates' everday business purposes?</label> <br> <input
					type="radio" name="q9" value="Yes" checked onclick='wds5()'>
				Yes <br> <input type="radio" name="q9" value="No"
					onclick='wds5()'> No <br> <br> <label for="q2">Can
					customers limit the personal information aboout their
					creditworthiness your institution share for your affiliates'
					everyday business purposes?</label> <br> <input type="radio"
					name="q10" value="Yes" checked> Yes <br> <input
					type="radio" name="q10" value="No"> No <br> <input
					type="radio" name="q10" value="We don't share"> We don't
				share <br> <br> <i>For institution's affiliates to
					market to customers:</i> <br> <label for="q1">Does your
					institution have affiliates?</label> <br> <input type="radio"
					name="q11" value="Yes" checked onclick='wds6()'> Yes <br>
				<input type="radio" name="q11" value="No" onclick='wds6()'>
				No <br> <br>Please answer the following question if you
				answered 'YES' for the previous question. <br> <br> <label
					for="q1">Does your institution disclose customer's personal
					information with your affiliates?</label> <br> <input type="radio"
					name="q12" value="Yes" onclick='wds7()'> Yes <br> <input
					type="radio" name="q12" value="No" onclick='wds7()'> No <br>
				<br> Please answer the following question if you answered 'YES'
				for the previous question. <br> <br> <label for="q1">Does
					your institution's affiliate use customer's personal information in
					a manner that requires an opt-out?</label> <br> <input type="radio"
					name="q13" value="Yes" checked> Yes <br> <input
					type="radio" name="q13" value="No"> No <br> <br>
				<label for="q1">Does your institution provides the affiliate
					marketing notice separately?</label> <br> <input type="radio"
					name="q14" value="Yes"> Yes <br> <input type="radio"
					name="q14" value="No"> No <br> <br> <i>For
					nonaffiliates to market to customers:</i> <br> <label for="q1">Does
					your institution share customer's personal information for
					non-affiliates to market to customers?</label><br> (If your answer to
				this question is YES, then your institution must provide an
				opt-out.) <br> <br> <input type="radio" name="q15"
					value="Yes" checked onclick='wds8()'> Yes <br> <input
					type="radio" name="q15" value="No" onclick='wds8()'> No <br>
				<br> <label for="q2">Can customers limit the personal
					information your institution share for non-affiliates to market to
					them?</label> <br> <input type="radio" name="q16" value="Yes" checked>
				Yes <br> <input type="radio" name="q16" value="No"> No
				<br> <input type="radio" name="q16" value="We don't share">
				We don't share <br> <br>
			</div>
			<br>

			<div>
				<b><font size="4">Opt-out Details</font></b>
			</div>
			<br>
			<div class="input-group">
				Please enter details of your institution's applicable <u><i>opt-out</i></u>
				method(s) below: <br> <br> <label for="optout">Phone
					Number</label> <br> <input required class="form-control" type="text"
					placeholder="" name="phone" style="width: 200px;"> <br>
				<br> <br> <label for="q1">Is the telephone number
					you provided above a toll-free number? </label> <br> <input
					type="radio" name="q" value="Toll-free" checked>Yes <br>
				<input type="radio" name="q" value="No">No <br> <br>
				<label for="optout">Website URL</label> <br> <input required
					class="form-control" type="url" placeholder="" name="website">
				<br> <br>
				<br> <label for="q1">Would your institution like to
					provide mail-in opt-out form for the customers?</label> <br> <input
					type="radio" name="q17" value="Yes" checked>Yes <br> <input
					type="radio" name="q17" value="No">No <br> <br>If
				you answered YES for the previous question, then please enter your
				institution's address information below: <br> <br> <label
					for="optout">Address Line 1</label> <br> <input required
					class="form-control" type="text" placeholder="" name="al1">
				<br> <br> <label for="optout">Address Line 2</label> <br>
				<input required class="form-control" type="text" placeholder=""
					name="al2"> <br> <br> <label for="optout">City</label>
				<br> <input required class="form-control" type="text"
					placeholder="" name="city" style="width: 200px;"> <br>
				<br> <label for="optout">State</label> <br> <select
					name="state" id="state">
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
				</select> <br> <br> <label for="optout">Zipcode</label> <br> <input
					required class="form-control" type="text" placeholder="" name="zip"
					style="width: 120px;"> <br>
				<br> <br> <label for="optout">Please enter the
					number of days after which your institution will begin sharing
					customer's information from the date of sending privacy notice to a
					new customer. </label> <br> <input required class="form-control"
					type="text" placeholder="" name="days" style="width: 60px;">
				<br>

			</div>
			<br>

			<div>
				<b><font size="4">Customer service contact information</font></b>
			</div>
			<br>
			<div class="input-group">
				Please enter your institution's <u><i>customer service</i></u>
				contact information : <br> <br> <label for="optout">Phone
					Number</label> <br> <input required class="form-control" type="text"
					placeholder="" name="phone1" style="width: 200px;"> <br>
				<br> <label for="optout">Website URL</label> <br> <input
					required class="form-control" type="url" placeholder=""
					name="website1"> <br>
			</div>

			<br>
			<button id="fat-btn" class="btn btn-primary"
				data-loading-text="Loading..." type="button"
				onclick="form.submit();">Next</button>

		</div>
	</form>

</body>
</html>