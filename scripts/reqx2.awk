#!/usr/bin/env -S sh -c 'cat datasets/roff-requests.csv | awk -v REQ=$2  -f scripts/reqx2.awk'

function echo_signature(signature)  {
	split(signature, acc, "&");
	print "Signature for " $1 " is: \n";
	for (item_i in acc) {
		split(acc[item_i], acc_prime, "!");
		print "Name: " acc_prime[1] "; Type: " acc_prime[2] ";;\n";
	}
	exit 0
}

BEGIN { FS=","; }

$1 ~ REQ { 
	echo_signature($2);
}

