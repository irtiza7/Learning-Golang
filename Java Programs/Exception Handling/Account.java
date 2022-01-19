import java.util.*;
import java.io.*;

import javax.sound.sampled.SourceDataLine;

class Account {
	private int id;
	private String title;
	private float balance;

	public Account(int id, String title, float balance) {
		this.id = id;
		this.title = title;
		this.balance = balance;
	}

	public static void main(String args[]) {
		Account account = new Account(1, "Irtiza", 10000);
		try {
			account.withdraw(20000);
		} catch(InsufficientBalanceException exp) {
			System.out.println(exp.toString());
		}
	}

	public void withdraw(float amount) throws InsufficientBalanceException {
		if (amount > this.balance) {
			throw new InsufficientBalanceException("Not enough balance", this.id);
		}
		balance -= amount;
	}
}