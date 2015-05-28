<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>U.S Consumer Privacy Notice</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
	<!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
	<!--script src="js/less-1.3.3.min.js"></script-->
	<!--append â#!watchâ to the browser URL, then refresh the page. -->

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/form.css">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<![endif]-->

	<!-- Fav and touch icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="img/favicon.png">

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
</head>

<body>
	<div class="container">
		<div class="row clearfix">
			<h1>U.S Consumer Privacy Notice</h1>
			<div class="col-md-12 column">				
				<table class="table table-condensed table-bordered">
				<fmt:parseDate value="${page1.revdate}" var="parsedDate" pattern="yyyy-MM" />
				<caption><span>Rev. <fmt:formatDate pattern="MM/yy" value="${parsedDate}" /></span></caption>
					<tbody>
						<tr>
							<td>FACTS</td>
							<td>WHAT DOES <c:out value="${page1.institution}" /> DO WITH YOUR PERSONAL INFORMATION?</td>
						</tr>
						<tr>
							<td>Why?</td>
							<td>Financial companies choose how they share your personal information. Under federal law, that means personally identifiable information. Federal law gives consumers the right to limit some but not all sharing. Federal law also requires us to tell you how we collect, share, and protect your personal information. Please read this notice carefully to understand what we do.</td>
						</tr>
						<tr>
							<td>What?</td>
							<td>The types of personal information we collect and share depend on the product or service you have 	with us.
								This information can include:
								<ul>
									<li>Social Security number and  <c:out value="${page1.what[0]}" /></li>
									<li><c:out value="${page1.what[1]}" /> and <c:out value="${page1.what[2]}" /></li>
									<li><c:out value="${page1.what[3]}" /> and <c:out value="${page1.what[4]}" /></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td>How?</td>
							<td>All financial companies need to share customers personal information to run their everyday business. In the section below, we list the reasons financial companies can share their customersâ personal information; the reasons  <c:out value="${page1.institution}" /> chooses to share; and whether you can limit this sharing.
							</td>
						</tr>
					</tbody> 
				</table>
			</div>
			<div class="col-md-12 column">
				<table class="table table-condensed table-bordered">
					<thead>
						<tr>
							<td>Reasons we can share your personal information</td>
							<td>Does <c:out value="${page1.institution}" /> share?</td>
							<td>Can you limit this sharing?</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>For our everyday business purposes such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus</td>
							<td><c:out value="${page1.q1}" /></td>
							<td><c:out value="${page1.q2}" /></td>
						</tr>
						<tr>
							<td>For our marketing purposes with service providers we use to offer our products and services to you (please see below to limit the ways we contact you)</td>
							<td><c:out value="${page1.q3}" /></td>
							<td><c:out value="${page1.q4}" /></td>
						</tr>
						<tr>
							<td>For joint marketing with other financial companies</td>
							<td><c:out value="${page1.q5}" /></td>
							<td><c:out value="${page1.q6}" /></td>
						</tr>
						<tr>
							<td>For our affiliates everyday business purposes Information about your transactions and experiences</td>
							<td><c:out value="${page1.q7}" /></td>
							<td><c:out value="${page1.q8}" /></td>
						</tr>
						<tr>
							<td>For our affiliates everyday business purposes Information about your creditworthiness</td>
							<td><c:out value="${page1.q9}" /></td>
							<td>
								<c:choose>
									<c:when test="${page1.q9 eq 'Yes'}">Yes</c:when>
									<c:otherwise>We don't share</c:otherwise>
								</c:choose>
							</td>
						</tr>
						<c:choose>
						<c:when test="${(page1.q11 eq 'Yes') || (page1.q12 eq 'Yes') || (page1.q13 eq 'Yes') || (page1.q14 eq 'No')}">
						<tr>
							<td>For our affiliates to market to you</td>
							<td>Yes</td>
							<td><c:out value="${page1.q14}" /></td>
						</tr>
						</c:when>
						</c:choose>
						<tr>
							<td>For nonaffiliates to market to you</td>
							<td><c:out value="${page1.q15}" /></td>
							<td>
								<c:choose>
									<c:when test="${page1.q15 eq 'Yes'}">Yes</c:when>
									<c:otherwise>We don't share</c:otherwise>
								</c:choose>
							</td>
						</tr>
					</tbody> 
				</table>
			</div>
			<div class="col-md-12 column">
				<table class="table table-condensed table-bordered">
					<tbody>
					<c:choose>
					  <c:when test="${(page1.q2 eq 'Yes') || (page1.q4 eq 'Yes') || (page1.q6 eq 'Yes') || (page1.q8 eq 'Yes') || (page1.q11 eq 'Yes') || (page1.q12 eq 'Yes') || (page1.q13 eq 'Yes') || (page1.q14 eq 'No') || (page1.q15 eq 'Yes')}">
						<tr>
							<td>To limit our sharing</td>
							<td>
								<ul>
									<li>Call <c:if test="${page1.q eq 'Yes'}">toll-free&nbsp;</c:if><c:out value="${page1.phone}" /> - our menu will prompt you through your choice(s) or</li>
									<li>Visit us online: <a href="<c:out value="${page1.website}" />"><c:out value="${page1.website}" /></a></li>
									<c:if test="${page1.q17 eq 'Yes'}"><li>Mail the <b>form</b> below</li></c:if>
								</ul>
								Please note: <br>
								If you are a new customer, we can begin sharing your information <c:out value="${page1.days}" /> days from the date we sent this notice. When you are no longer our customer, we continue to share your information as described in this notice. 
								<br>
								However, you can contact us at any time to limit our sharing.
							</td>
						</tr>
					  </c:when>
					</c:choose>
						<tr>
							<td>Questions?</td>
							<td>Call <c:out value="${page1.phone1}" /> or go to <a href="<c:out value="${page1.website1}" />"><c:out value="${page1.website1}" /></a></td>
						</tr>
					</tbody> 
				</table>
			</div>
			<c:if test="${page1.q17 eq 'Yes'}">
			<hr>
			<div class="col-md-12 column">
				<table class="table table-condensed table-bordered">
					<tbody>
						<tr>
							<td>Mail In Form</td>
							<td></td>
						</tr>
						<tr>
							<td style="width:30%">Leave Blank 
							<c:if test="${page1.reverse1 eq 'Yes'}"><b>Or</b><br>
								If you have a joint account, your choice will apply to everyone on your account unless you mark below<br>
								<label>
    								<input type="checkbox" value=""> Apply my choices only to me
  								</label>
  							</c:if>									
							</td>
							<td>
								<table class="table table-condensed table-bordered">
									<tr>
										<td> Mark any or all you want to limit:<br>
											<label>
	    										<input type="checkbox" value=""> Do not share information about my creditworthiness with your affiliates for their everyday business purposes.
	  										</label><br>
	  										<label>
	    										<input type="checkbox" value=""> Do not allow your affiliates to use my personal information to market to me.
	  										</label><br>
	  										<label>
	    										<input type="checkbox" value=""> Do not share my personal information with nonaffiliates to market their products and services to me.
	  										</label>											
										</td>
									</tr>
								</table>
								<table class="table table-condensed table-bordered">
									<tr>
										<td>
											<table class="table table-condensed table-bordered"> 
												<tr>
													<td>Name</td>
													<td style="width:70%"></td>
												</tr>
												<tr>
													<td>Address</td>
													<td style="width:70%"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td style="width:70%"></td>
												</tr>
												<tr>
													<td>City, State, Zip</td>
													<td style="width:70%"></td>
												</tr>
												<c:if test="${page1.accnt eq 'Yes'}">
													<tr>
														<td>Account #</td>
														<td style="width:70%"></td>
													</tr>
												</c:if>
											</table>
										</td>
										<td style="width:30%">
											Mail to:
											<c:out value="${page1.institution}" /><br>
											<c:out value="${page1.al1}" /><br>
											<c:out value="${page1.al2}" /><br>
											<c:out value="${page1.city}" />, <c:out value="${page1.state}" /> <c:out value="${page1.zip}" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody> 
				</table>
			</div>
			</c:if>
			<!-- Page 2 -->
			<div class="col-md-12 column">
				<table class="table table-condensed table-bordered">
					<tbody>
						<tr>
							<td style="width:30%">Who we are</td>
							<td></td>
						</tr>
						<tr>
							<td style="width:30%">Who is providing this notice?</td>
							<td><c:out value="${page2.institution}" /></td>
						</tr>
					</tbody> 
				</table>
			</div>
			<div class="col-md-12 column">
				<table class="table table-condensed table-bordered">
					<tbody>
						<tr>
							<td>What we do</td>
							<td></td>
						</tr>
						<tr>
							<td style="width:30%">How does <c:out value="${page1.institution}" /> protect my personal information?</td>
							<td>To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings. 
								<br>
								<c:out value="${page2.protect}" />
							</td>
						</tr>
						<tr>
							<td style="width:30%">How does <c:out value="${page1.institution}" /> collect my personal information?</td>
							<td>We collect your personal information, for example, when you:<br>
								<ul>
									<li><c:out value="${page2.what[0]}" /> or <c:out value="${page2.what[1]}" /></li>
									<li><c:out value="${page2.what[2]}" /> or <c:out value="${page2.what[3]}" /></li>
									<li><c:out value="${page2.what[4]}" /></li>
								</ul><br>
									<c:out value="${page2.q1}" /><c:out value="${page2.q2}" />
							</td>
						</tr>
						<tr>
							<td style="width:30%"">Why can't I limit all sharing?</td>
							<td>Federal law gives you the right to limit some but not all sharing related to:
								<ul>
									<li>sharing for affiliates' everyday business purposes information about your creditworthiness</li>
									<li>affiliates from using your information to market to you</li>
									<li>sharing for nonaffiliates to market to you</li>
								</ul>							
								State laws and individual Bank of America companies may give you more rights to limit sharing.
								<c:out value="${page2.q3}" />
							</td>
						</tr>
						<tr>
							<td style="width:30%">What happens when I limit sharing for an account I hold jointly with someone else?</td>
							<td><c:out value="${page2.q4}" /></td>
						</tr>
					</tbody> 
				</table>
			</div>
			<div class="col-md-12 column">
				<table class="table table-condensed table-bordered">
					<tbody>
						<tr>
							<td>Definitions</td>
							<td></td>
						</tr>
						<tr>
							<td style="width:30%">Affiliates</td>
							<td>Companies related by common ownership or control. They can be Financial and nonfinancial companies.
								<br>
								<ul><li>
								<c:choose>
					  				<c:when test="${page2.q6 == 1}">
										<c:out value="${page1.institution}" /> has no affiliates.
									</c:when>
									<c:when test="${page2.q6 == 2}">
										<c:out value="${page1.institution}" /> does not share with our affiliates.
									</c:when>
									<c:when test="${page2.q6 == 3}">
										Our affiliates include companies with a <c:out value="${page2.ta1}" /> name; 
										financial companies such as <c:out value="${page2.ta2}" />; 
										nonfinancial companies, such as <c:out value="${page2.ta3}" />;
										and others, such as <c:out value="${page2.ta4}" />.
									</c:when>
								</c:choose>
								</li></ul>
							</td>
						</tr>
						<tr>
							<td style="width:30%">Nonaffiliates</td>
							<td>Companies not related by common ownership or control. They can be Financial and nonfinancial companies.
								<br>
								<ul><li>
								<c:choose>
					  				<c:when test="${page2.q7 == 1}">
										<c:out value="${page1.institution}" /> does not share with nonaffiliates so they can market to you.
									</c:when>
									<c:when test="${page2.q7 == 2}">
										Nonaffiliates we share can include <c:out value="${page2.ta5}" />.
									</c:when>
								</c:choose>
								</li></ul>
							</td>
						</tr>
						<tr>
							<td style="width:30%">Joint Marketing</td>
							<td>A formal agreement between nonaffiliated financial companies that together market financial products or services to you.
								<br>
								<ul><li>
								<c:choose>
					  				<c:when test="${page2.q8 == 1}">
										<c:out value="${page1.instution}" /> doesn't jointly market.
									</c:when>
									<c:when test="${page2.q7 == 2}">
										Our joint marketing partners include <c:out value="${page2.ta6}" />.
									</c:when>
								</c:choose>
								</li></ul>
							</td>
						</tr>
					</tbody> 
				</table>
			</div>
			<div class="col-md-12 column">
				<table class="table table-condensed table-bordered">
					<tbody>
						<tr>
							<td>Other important information</td>
						</tr>
						<tr>
							<td><c:out value="${page2.other}" /></td>
						</tr>
						<tr>
							<td><c:out value="${page2.provision}" /></td>
						</tr>
					</tbody> 
				</table>
			</div>
		</div>
	</div>
</body>
</html>
