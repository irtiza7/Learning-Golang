class InsufficientBalanceException extends Exception {
    private int accountId;

    public InsufficientBalanceException(String msg) {
        super(msg);
    }
    
    public InsufficientBalanceException(String msg, int accountId) {
        super(msg);
        this.accountId = accountId;
    }

    public int getAccountId() {
        return this.accountId;
    }
}