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
		var total = 0;
		for (var i = 0; i < document.form1.what.length; i++) {
			if (document.form1.what[i].checked) {
				total = total + 1;
			}
			if (total > 5) {
				alert("Please Select only five")
				document.form1.what[j].checked = false;
				return false;
			}
		}
	}

	function showpop() {
		document.getElementById("pop").style.display = "block";
	}
	function showout() {
		document.getElementById("pop").style.display = "none";
	}

	function showpop1() {
		document.getElementById("pop1").style.display = "block";
<<<<<<< HEAD
		document.getElementById("pop1").style.width = "500px";
=======
>>>>>>> 0d99b52a319e0ccb9ff0d0a2c6227da288dd2c29
	}
	function showout1() {
		document.getElementById("pop1").style.display = "none";
	}

	function showpop2() {
		document.getElementById("pop2").style.display = "inline";
		document.getElementById("pop2").style.width = "10px";
	}
	function showout2() {
		document.getElementById("pop2").style.display = "none";
	}

	function showpop3() {
		document.getElementById("pop3").style.display = "inline";
		document.getElementById("pop3").style.width = "10px";
	}
	function showout3() {
		document.getElementById("pop3").style.display = "none";
	}

	function showpop4() {
		document.getElementById("pop4").style.display = "block";
	}
	function showout4() {
		document.getElementById("pop4").style.display = "none";
	}

	function showpop5() {
		document.getElementById("pop5").style.display = "block";
	}
	function showout5() {
		document.getElementById("pop5").style.display = "none";
	}
	function showpop6() {
		document.getElementById("pop6").style.display = "inline";
	}
	function showout6() {
		document.getElementById("pop6").style.display = "none";
	}
	function showpop7() {
		document.getElementById("pop7").style.display = "inline";
	}
	function showout7() {
		document.getElementById("pop7").style.display = "none";
	}
	function showpop8() {
		document.getElementById("pop8").style.display = "inline";
	}
	function showout8() {
		document.getElementById("pop8").style.display = "none";
	}
	function showpop9() {
		document.getElementById("pop9").style.display = "inline";
	}
	function showout9() {
		document.getElementById("pop9").style.display = "none";
	}
	function showpop10() {
		document.getElementById("pop10").style.display = "inline";
	}
	function showout10() {
		document.getElementById("pop10").style.display = "none";
	}
	function showpop11() {
		document.getElementById("pop11").style.display = "inline";
	}
	function showout11() {
		document.getElementById("pop11").style.display = "none";
	}

	function showpop12() {
		document.getElementById("pop12").style.display = "inline";
	}
	function showout12() {
		document.getElementById("pop12").style.display = "none";
	}

	function showpop13() {
		document.getElementById("pop13").style.display = "inline";
	}
	function showout13() {
		document.getElementById("pop13").style.display = "none";
	}

	function showpop14() {
		document.getElementById("pop14").style.display = "inline";
	}
	function showout14() {
		document.getElementById("pop14").style.display = "none";
	}

	function showpop15() {
		document.getElementById("pop15").style.display = "inline";
	}
	function showout15() {
		document.getElementById("pop15").style.display = "none";
	}
	function showpop16() {
		document.getElementById("pop16").style.display = "inline";
	}
	function showout16() {
		document.getElementById("pop16").style.display = "none";
	}
	function showpop17() {
		document.getElementById("pop17").style.display = "inline";
	}
	function showout17() {
		document.getElementById("pop17").style.display = "none";
	}
	function showpop18() {
		document.getElementById("pop18").style.display = "inline";
	}
	function showout18() {
		document.getElementById("pop18").style.display = "none";
	}
	function showpop19() {
		document.getElementById("pop19").style.display = "inline";
	}
	function showout19() {
		document.getElementById("pop19").style.display = "none";
	}
	function showpop20() {
		document.getElementById("pop20").style.display = "inline";
	}
	function showout20() {
		document.getElementById("pop20").style.display = "none";
	}
	function showpop21() {
		document.getElementById("pop21").style.display = "inline";
	}
	function showout21() {
		document.getElementById("pop21").style.display = "none";
	}
	function showpop22() {
		document.getElementById("pop22").style.display = "inline";
	}
	function showout22() {
		document.getElementById("pop22").style.display = "none";

	}
	function showpop23() {
		document.getElementById("pop23").style.display = "inline";
	}
	function showout23() {
		document.getElementById("pop23").style.display = "none";
	}
	function showpop24() {
		document.getElementById("pop24").style.display = "inline";
	}
	function showout24() {
		document.getElementById("pop24").style.display = "none";
	}
	function showpop25() {
		document.getElementById("pop25").style.display = "inline";
	}
	function showout25() {
		document.getElementById("pop25").style.display = "none";
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
		} else if (document.form1.q1[0].checked) {
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
		} else if (document.form1.q3[0].checked) {
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
		} else if (document.form1.q5[0].checked) {
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
		} else if (document.form1.q7[0].checked) {
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
		} else if (document.form1.q9[0].checked) {
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
		} else if (document.form1.q11[0].checked) {
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
		} else if (document.form1.q12[0].checked) {
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
		} else if (document.form1.q15[0].checked) {
			document.form1.q16[2].disabled = true;
			document.form1.q16[1].disabled = false;
			document.form1.q16[0].disabled = false;
			document.form1.q16[2].checked = false;
		}
	}

	function mailin() {
		if (document.form1.q17[1].checked) {

			document.form1.al1.disabled = true;
			document.form1.al2.disabled = true;
			document.form1.city.disabled = true;
			document.form1.state.disabled = true;
			document.form1.zip.disabled = true;
			document.form1.accnt[0].disabled = true;
			document.form1.accnt[1].disabled = true;
			document.form1.days.disabled = true;
			document.form1.reverse1[0].disabled = true;
			document.form1.reverse1[1].disabled = true;
			document.form1.reverse2[0].disabled = true;
			document.form1.reverse2[1].disabled = true;
			document.form1.reverse3[0].disabled = true;
			document.form1.reverse3[1].disabled = true;
			document.form1.reverse4[0].disabled = true;
			document.form1.reverse4[1].disabled = true;

			return false;
		} else if (document.form1.q17[0].checked) {
			document.form1.al1.disabled = false;
			document.form1.al2.disabled = false;
			document.form1.city.disabled = false;
			document.form1.state.disabled = false;
			document.form1.zip.disabled = false;
			document.form1.accnt[0].disabled = false;
			document.form1.accnt[1].disabled = false;
			document.form1.days.disabled = false;
			document.form1.reverse1[0].disabled = false;
			document.form1.reverse1[1].disabled = false;
			document.form1.reverse2[0].disabled = false;
			document.form1.reverse2[1].disabled = false;
			document.form1.reverse3[0].disabled = false;
			document.form1.reverse3[1].disabled = false;
			document.form1.reverse4[0].disabled = false;
			document.form1.reverse4[1].disabled = false;
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
				<label for="revdate">Date of revision for privacy notice</label> <span
					id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop();"
					onmouseout="showout();"></img></span><span id="pop"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Insert
					the date on which the notice was last revised in [month/year]
					format using either the name or number of the month.</span> <br> <input
					class="form-control" type="month" placeholder=mm/yyyy
					name="revdate" style="width: 200px;" required />
			</div>
			<br>
			<div class="input-group">
				<label for="institution">Name of your Institution</label> <span
					id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop1();"
					onmouseout="showout1();"></img></span><span id="pop1"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Insert
					the name of the financial institution providing the notice or a
					common identity of affiliated institutions jointly providing the
					notice.</span>
					<span><input required class="form-control" type="text"
					placeholder="" name="institution" required /></span>
			</div>
			<br>
			<div>
				<b><font size="4">What does your financial institution do
						with customer's personal information?</font></b>
			</div>
			<br>
			<div class="input-group">
				<label for="what">What type of information will you collect
					and share? (Choose any 5)</label> <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop2();" onmouseout="showout2();"></img></span><span
					id="pop2"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					five(5) types of personal information that your institution
					collects and shares. All institutions must use the term 'Social
					Security number' in the first bullet. </span>
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
				<b><font size="4">Disclosure Table</font></b>
			</div>
			<br>
			<div class="rb">
				<div id="">
					<i>For institution's everyday business purposes:</i> <br> <label
						for="q1">Will your institution share customer's personal
						information for your everday business purposes?</label> <span id="help"
						style="margin-left: 20px;"><img src="./img/help2.png"
						onmouseover="showpop3();" onmouseout="showout3();"></img></span><span
						id="pop3"
						style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
						a “Yes” or “No” response that accurately reflects its information
						sharing policies and practices with respect to the reason
						specified in this question.</span>
				</div>

				<input type="radio" name="q1" value="Yes" checked onclick='wds1()'>
				Yes <br> <input type="radio" name="q1" value="No"
					onclick='wds1()'> No <br> <br> <label for="q2">Can
					customers limit the personal information your institution share for
					your everyday business purposes?</label> <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop4();" onmouseout="showout4();"></img></span><span
					id="pop4"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					one of the three responses, as applicable, that reflects whether a
					consumer can limit sharing for the reason mentioned in the
					question: “Yes” if it is required to or voluntarily provides an
					opt-out; “No” if it does not provide an opt-out; or “We don’t
					share” if your institution doesn't share the information for the
					mentioned reason.</span> <br> <input type="radio" name="q2"
					value="Yes" checked> Yes <br> <input type="radio"
					name="q2" value="No"> No <br> <input type="radio"
					name="q2" value="We don't share"> We don't share <br>
				<br> <i>For institution's marketing purposes:</i> <br> <label
					for="q1">Will your institution share customer's personal
					information for your marketing purposes?</label> <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop5();" onmouseout="showout5();"></img></span><span
					id="pop5"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					a “Yes” or “No” response that accurately reflects its information
					sharing policies and practices with respect to the reason specified
					in this question. An institution that shares for this reason may
					choose to provide an opt-out.</span> <br> <input type="radio"
					name="q3" value="Yes" checked onclick='wds2()'> Yes <br>
				<input type="radio" name="q3" value="No" onclick='wds2()'>
				No <br> <br> <label for="q2">Can customers limit
					the personal information your institution share for your everyday
					marketing purposes?</label><span id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop6();"
					onmouseout="showout6();"></img></span><span id="pop6"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					one of the three responses, as applicable, that reflects whether a
					consumer can limit sharing for the reason mentioned in the
					question: “Yes” if it is required to or voluntarily provides an
					opt-out; “No” if it does not provide an opt-out; or “We don’t
					share” if your institution doesn't share the information for the
					mentioned reason.</span> <br> <input type="radio" name="q4"
					value="Yes" checked> Yes <br> <input type="radio"
					name="q4" value="No"> No <br> <input type="radio"
					name="q4" value="We don't share"> We don't share <br>
				<br> <i>For joint marketing with other financial companies:</i>
				<br> <label for="q1">Will your institution share
					customer's personal information for joint marketing with other
					financial companies?</label><span id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop7();"
					onmouseout="showout7();"></img></span><span id="pop7"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					a “Yes” or “No” response that accurately reflects its information
					sharing policies and practices with respect to the reason specified
					in this question. An institution that shares for this reason may
					choose to provide an opt-out.</span> <br> <input type="radio"
					name="q5" value="Yes" checked onclick='wds3()'> Yes <br>
				<input type="radio" name="q5" value="No" onclick='wds3()'>
				No <br> <br> <label for="q2">Can customers limit
					the personal information your institution share for joint marketing
					with other financial companies?</label> <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop8();" onmouseout="showout8();"></img></span><span
					id="pop8"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					one of the three responses, as applicable, that reflects whether a
					consumer can limit sharing for the reason mentioned in the
					question: “Yes” if it is required to or voluntarily provides an
					opt-out; “No” if it does not provide an opt-out; or “We don’t
					share” if your institution doesn't share the information for the
					mentioned reason.</span> <br> <input type="radio" name="q6"
					value="Yes" checked> Yes <br> <input type="radio"
					name="q6" value="No"> No <br> <input type="radio"
					name="q6" value="We don't share"> We don't share <br>
				<br> <i>For your institution's affiliates' everyday
					business purposes- information about transactions and experiences:</i>
				<br> <label for="q1">Will your institution share
					customer's personal information about their transactions and
					experiences for your affiliates' everday business purposes?</label><span
					id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop9();"
					onmouseout="showout9();"></img></span><span id="pop9"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					a “Yes” or “No” response that accurately reflects its information
					sharing policies and practices with respect to the reason specified
					in this question. An institution that shares for this reason may
					choose to provide an opt-out.</span> <br> <input type="radio"
					name="q7" value="Yes" checked onclick='wds4()'> Yes <br>
				<input type="radio" name="q7" value="No" onclick='wds4()'>
				No <br> <br> <label for="q2">Can customers limit
					the personal information aboout their transactions and experiences
					your institution share for your affiliates' everyday business
					purposes?</label> <span id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop10();"
					onmouseout="showout10();"></img></span><span id="pop10"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					one of the three responses, as applicable, that reflects whether a
					consumer can limit sharing for the reason mentioned in the
					question: “Yes” if it is required to or voluntarily provides an
					opt-out; “No” if it does not provide an opt-out; or “We don’t
					share” if your institution doesn't share the information for the
					mentioned reason.</span> <br> <input type="radio" name="q8"
					value="Yes" checked> Yes <br> <input type="radio"
					name="q8" value="No"> No <br> <input type="radio"
					name="q8" value="We don't share"> We don't share <br>
				<br> <i>For your institution's affiliates' everyday
					business purposes- information about creditworthiness:</i> <br> <label
					for="q1">Will your institution share customer's personal
					information about their creditworthiness for your affiliates'
					everday business purposes?</label> <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop11();" onmouseout="showout11();"></img></span><span
					id="pop11"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					a “Yes” or “No” response that accurately reflects its information
					sharing policies and practices with respect to the reason specified
					in this question. An institution that shares for this reason may
					choose to provide an opt-out.</span> <br> <input type="radio"
					name="q9" value="Yes" checked onclick='wds5()'> Yes <br>
				<input type="radio" name="q9" value="No" onclick='wds5()'>
				No <br> <br> <label for="q2">Can customers limit
					the personal information aboout their creditworthiness your
					institution share for your affiliates' everyday business purposes?</label><span
					id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop12();"
					onmouseout="showout12();"></img></span><span id="pop12"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					one of the three responses, as applicable, that reflects whether a
					consumer can limit sharing for the reason mentioned in the
					question: “Yes” if it is required to or voluntarily provides an
					opt-out; “No” if it does not provide an opt-out; or “We don’t
					share” if your institution doesn't share the information for the
					mentioned reason.</span> <br> <input type="radio" name="q10"
					value="Yes" checked> Yes <br> <input type="radio"
					name="q10" value="No"> No <br> <input type="radio"
					name="q10" value="We don't share"> We don't share <br>
				<br> <i>For institution's affiliates to market to
					customers:</i> <br> <label for="q1">Does your institution
					have affiliates?</label> <span id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop13();"
					onmouseout="showout13();"></img></span><span id="pop13"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please
					select 'Yes' if your institution has affiliates, select 'No' if
					your institution does not have affiliates. For our affiliates to
					market to you- reason may be omitted from the disclosure table when
					the institution does not have affiliates (or does not disclose
					personal information to its affiliates); the institution’s
					affiliates do not use personal information in a manner that
					requires an opt-out; or the institution provides the affiliate
					marketing notice separately. Institutions that include this reason
					must provide an opt-out of indefinite duration.</span> <br> <input
					type="radio" name="q11" value="Yes" checked onclick='wds6()'>
				Yes <br> <input type="radio" name="q11" value="No"
					onclick='wds6()'> No <br> <br>Please answer the
				following question if you answered 'YES' for the previous question.
				<br> <br> <label for="q1">Does your institution
					disclose customer's personal information to your affiliates?</label><span
					id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop14();"
					onmouseout="showout14();"></img></span><span id="pop14"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please
					select 'Yes' if your institution disclose customer's personal
					information to your affiliates, select 'No' if your institution
					does not disclose customer's personal information to your
					affiliates.</span> <br> <input type="radio" name="q12" value="Yes"
					onclick='wds7()'> Yes <br> <input type="radio"
					name="q12" value="No" onclick='wds7()'> No <br> <br>
				Please answer the following question if you answered 'YES' for the
				previous question. <br> <br> <label for="q1">Does
					your institution's affiliate use customer's personal information in
					a manner that requires an opt-out?</label><span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop15();" onmouseout="showout15();"></img></span><span
					id="pop15"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please
					select 'Yes' if your institution's affiliate use customer's
					personal information in a manner that requires an opt-out,
					otherwise select 'No'.</span> <br> <input type="radio" name="q13"
					value="Yes" checked> Yes <br> <input type="radio"
					name="q13" value="No"> No <br> <br> <label
					for="q1">Does your institution provides the affiliate
					marketing notice separately?</label><span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop16();" onmouseout="showout16();"></img></span><span
					id="pop16"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please
					select 'Yes' if your institution provides the affiliate marketing
					notice separately, otherwise select 'No'.</span> <br> <input
					type="radio" name="q14" value="Yes"> Yes <br> <input
					type="radio" name="q14" value="No"> No <br> <br>
				<i>For nonaffiliates to market to customers:</i> <br> <label
					for="q1">Does your institution share customer's personal
					information for non-affiliates to market to customers?</label><span
					id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop17();"
					onmouseout="showout17();"></img></span><span id="pop17"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					a “Yes” or “No” response that accurately reflects its information
					sharing policies and practices with respect to the reason specified
					in this question. An institution that shares personal information
					for this reason must provide an opt-out.</span> <br> <br> <input
					type="radio" name="q15" value="Yes" checked onclick='wds8()'>
				Yes <br> <input type="radio" name="q15" value="No"
					onclick='wds8()'> No <br> <br> <label for="q2">Can
					customers limit the personal information your institution share for
					non-affiliates to market to them?</label> <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop18();" onmouseout="showout18();"></img></span><span
					id="pop18"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Provide
					one of the three responses, as applicable, that reflects whether a
					consumer can limit sharing for the reason mentioned in the
					question: “Yes” if it is required to or voluntarily provides an
					opt-out; “No” if it does not provide an opt-out; or “We don’t
					share” if your institution doesn't share the information for the
					mentioned reason.</span> <br> <input type="radio" name="q16"
					value="Yes" checked> Yes <br> <input type="radio"
					name="q16" value="No"> No <br> <input type="radio"
					name="q16" value="We don't share"> We don't share <br>
				<br>
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
				<label for="optout">Website URL</label> <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop19();" onmouseout="showout19();"></img></span><span
					id="pop19"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please
					provide either a specific Web address that takes consumers directly
					to the opt-out page or a general Web address that provides a clear
					and conspicuous direct link to the opt-out page.</span> <br> <input
					required class="form-control" type="url" placeholder=""
					name="website"> <br> <br> <br> <label
					for="q1">Would your institution like to provide mail-in
					opt-out form for the customers?</label> <br> <input type="radio"
					name="q17" value="Yes"  onclick='mailin()'>Yes <br>
				<input type="radio" name="q17" value="No" onclick='mailin()'>No
				<br> <br>If you answered YES for the previous question,
				then please enter your institution's address information below: <br>
				<br> <label for="optout">Address Line 1</label> <br> <input
					required class="form-control" type="text" placeholder="" name="al1">
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
					style="width: 120px;"> <br> <br> <br> <label
					for="q1">Please indicate if your institution requires the
					customers with multiple accounts to identify each account to which
					the opt-out should apply. </label> <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop20();" onmouseout="showout20();"></img></span><span
					id="pop20"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select
					'Yes' if your institution require additional or different
					information, such as a random opt-out number or a truncated account
					number, to implement an opt-out election, otherwise select 'No'.</span> <br>
				<input type="radio" name="accnt" value="“[account #]">Yes <br>
				<input type="radio" name="accnt" value="No">No <br> <br>
				<label for="optout">Please enter the number of days after
					which your institution will begin sharing customer's information
					from the date of sending privacy notice to a new customer. </label><span
					id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop21();"
					onmouseout="showout21();"></img></span><span id="pop21"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Please
					insert a number that is 30 or greater in the field below.</span> <br>
				<input required class="form-control" type="text" placeholder=""
					name="days" style="width: 60px;"> <br> <br> <br>
				<label for="q1">Does your institution provide your joint
					accountholders the choice to opt out for only one accountholder?</label> <span
					id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop22();"
					onmouseout="showout22();"></img></span><span id="pop22"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select
					'Yes' if your institution provide your joint accountholders the
					choice to opt out for only one accountholder , otherwise select
					'No'. This will include in the mail-in opt-out form the following
					statement:“If you have a joint account, your choice(s) will apply
					to everyone on your account unless you mark below. □ Apply my
					choice(s) only to me.”</span> <br> <input type="radio"
					name="reverse1"
					value="If you have a joint account, your choice(s) will apply to everyone on your account unless you mark below. □ Apply my choice(s) only to me.">Yes
				<br> <input type="radio" name="reverse1" value="">No <br>
				<br> <br> <label for="q1">Does your institution
					shares personal information pursuant to section 603(d)(2)(A)(iii)
					of the FCRA? </label> <span id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop23();"
					onmouseout="showout23();"></img></span><span id="pop23"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select
					'Yes' if your institution shares personal information pursuant to
					section 603(d)(2)(A)(iii) of the FCRA, otherwise select 'No'. This
					will include in the mail-in opt-out form the following statement:
					“□ Do not share information about my creditworthiness with your
					affiliates for their everyday business purposes.”</span> <br> <input
					type="radio" name="reverse2"
					value="□ Do not share
information about my creditworthiness with your affiliates for
their everyday business purposes">Yes
				<br> <input type="radio" name="reverse2" value="">No <br>
				<br> <br> <label for="q1">Does your institution
					incorporates section 624 of the FCRA? </label> <span id="help"
					style="margin-left: 20px;"><img src="./img/help2.png"
					onmouseover="showpop24();" onmouseout="showout24();"></img></span><span
					id="pop24"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select
					'Yes' if your institution incorporates section 624 of the FCRA,
					otherwise select 'No'. This will include in the mail-in opt-out
					form the following statement: “□ Do not allow your affiliates to
					use my personal information to market to me.”</span> <br> <input
					type="radio" name="reverse3"
					value="□ Do not allow your affiliates
to use my personal information to market to me">Yes
				<br> <input type="radio" name="reverse3" value="">No <br>
				<br> <br> <label for="q1">Does your financial
					institution share personal information pursuant to § 313.10(a) of
					this part? </label> <span id="help" style="margin-left: 20px;"><img
					src="./img/help2.png" onmouseover="showpop25();"
					onmouseout="showout25();"></img></span><span id="pop25"
					style="display: none; border: 1px solid; margin-left: 7px; padding: 2px;">Select
					'Yes' if your institution shares personal information pursuant to §
					313.10(a), otherwise select 'No'. This will include in the mail-in
					opt-out form the following statement: “□ Do not share my personal
					information with nonaffiliates to market their products and
					services to me."</span> <br> <input type="radio" name="reverse4"
					value="□ Do not share my personal information with
nonaffiliates to market their products and services to me.">Yes
				<br> <input type="radio" name="reverse4" value="">No <br>
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