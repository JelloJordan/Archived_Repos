/*
        Name : Jordan Millett
        Class : Adv. Lang.
        Date :  11/7/2017
*/

#include <iostream>
#include <fstream>
#include <iomanip>

using namespace std;

const double MINIMUM_BALANCE  = 1000.00;
const double SERVICE_CHARGE = 25.00;

int main()
{
	int acctNumber;
	double beginBalance;
	double acctBalance;

	double amtDeposit = 0.0;
	int numberOfDeposits = 0;

	double amtWithdrawn = 0.0;
	int numberOfWithdrawls = 0;
	double interestPaid = 0.0;
	char transactionCode;
	double transactionAmount;

	bool isServiceCharged = false;
    double amtCharged = 0.0;
	ifstream infile;
	ofstream outfile;

	infile.open("money.txt");

	if (!infile)
	{
		cout << "ERROR : No account file detected";
		return 1;
	}

    infile >> acctNumber >> beginBalance;
    acctBalance = beginBalance;
    cout << "Processing";

	while (infile)
	{
	    infile >> transactionCode;
	    transactionCode = toupper(transactionCode);

		switch (transactionCode)
		{
            case 'W':
                infile >> transactionAmount;
                acctBalance = acctBalance - transactionAmount;
                numberOfWithdrawls++;
                amtWithdrawn = amtWithdrawn + transactionAmount;
            break;

            case 'D':
                infile >> transactionAmount;
                acctBalance = acctBalance + transactionAmount;
                numberOfDeposits++;
                amtDeposit = amtDeposit + transactionAmount;
            break;

            case 'I':
                infile >> transactionAmount;
                acctBalance = acctBalance + transactionAmount;
                interestPaid = interestPaid + transactionAmount;
            break;

            default :
                infile.close();
		}
        transactionCode = 'E';
        if(acctBalance < MINIMUM_BALANCE)
        {
            acctBalance = acctBalance - SERVICE_CHARGE;
            amtCharged = amtCharged + SERVICE_CHARGE;
            isServiceCharged = true;
        }
	}
    outfile.open("money.out");
    outfile << fixed;
    outfile << "Account Number :      " << acctNumber;
    outfile << "\nBeginning Balance :   $" << setprecision(2) << beginBalance;
    outfile << "\nCurrent Balance :     $" << setprecision(2) << acctBalance;
    outfile << "\nNumber of Deposits :  " << numberOfDeposits;
    outfile << "\nAmount Deposited :    $" << setprecision(2) << amtDeposit;
    outfile << "\nInterest Paid :       $" << setprecision(2) << interestPaid;
    outfile << "\nNumber of Withdraws : " << numberOfWithdrawls;
    outfile << "\nAmount Withdrawn :    $" << setprecision(2) << amtWithdrawn;
    if(isServiceCharged == true)
    {
        outfile << "\nService Charge :      $" << amtCharged;
    }
    outfile.close();

}
