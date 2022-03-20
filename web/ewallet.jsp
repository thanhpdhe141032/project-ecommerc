<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>E-wallet</title>
	<link rel="stylesheet" href="E-wallet.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/ewallet.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="wallet-container text-center">
		<p class="page-title"><i class="fa fa-align-left"></i>My E-wallet<i class="fa fa-user"></i></p>

		<div class="amount-box text-center">
			<img src="https://lh3.googleusercontent.com/ohLHGNvMvQjOcmRpL4rjS3YQlcpO0D_80jJpJ-QA7-fQln9p3n7BAnqu3mxQ6kI4Sw" alt="wallet">
			<p>Total Balance</p>
			<p class="amount">$ 123</p>
		</div>

		<div class="btn-group text-center">
			<button type="button" class="btn btn-outline-light">Add Money</button>
			<button type="button" class="btn btn-outline-light">Widthdraw</button>
			</div>

			<div class="txn-history">
				<p><b>History</b></p>
				<p class="txn-list">Payment to xyz shop<span class="debit-amount">-$100</span></p>

				<p class="txn-list">Payment to abc shop<span class="debit-amount">-$150</span></p>

				<p class="txn-list">Credit From abc ltd<span class="credit-amount">+$300</span></p>

				<p class="txn-list">Transfer From John Doe<span class="credit-amount">+$100</span></p>
			</div>

			<div class="footer-menu">
				<div class="row text-center">
					<div class="col-md-3">
						<i class="fa fa-home"></i>
						<p>Home</p>
					</div>

					<div class="col-md-3">
						<i class="fa fa-inbox"></i>
						<p>Inbox</p>
					</div>

					<div class="col-md-3">
						<i class="fa fa-university"></i>
						<p>Bank</p>
					</div>

					<div class="col-md-3">
						<i class="fa fa-barcode"></i>
						<p>Scan</p>
					</div>
				</div>
			</div>
</div>
</body>
</html>