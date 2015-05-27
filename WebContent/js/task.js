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

	function showpop(popId) {
		document.getElementById(popId).style.display = "block";
		document.getElementById(popId).style.width = "700px";
	}
	
	function showout(popId) {
		document.getElementById(popId).style.display = "none";
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