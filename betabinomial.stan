data {

	int<lower=1> N;           	// n. of observations;
	int<lower=0, upper=N> k;   	// n. of successes;
}
parameters{
  	real<lower=0, upper=1> theta;  	// p. of success;
}
model{
 	theta ~ beta(3,3);            	// prior
 	k ~ binomial(N,theta);         	// likelihood
}
