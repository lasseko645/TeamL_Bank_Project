public class Opsparingskonto extends Konti {

    /**
     * <h1>Opsparingskonto klassen</h1>
     * This class allows a savings account, to deposit and withdraw money, only from owned accounts.
     * <b>Note:</b> The account is NOT ALLOWED to go below limit.
     *
     * @author Michael "SaneStreet" Hansen
     * @version 1.0
     * @since 30-11-2017
     */


    private double deposit = 0;
    private double withDraw = 0;
    private double limit = 0;

    public Opsparingskonto(String typeName) {
        super(typeName);
    }

    public Opsparingskonto(int acc_Regno, double acc_No, String typeName) {
        super(acc_Regno, acc_No, typeName);
    }

    public Opsparingskonto(String typeName, double deposit, double withDraw, double limit) {
        super(typeName);
        this.deposit = deposit;
        this.withDraw = withDraw;
        this.limit = limit;
    }

    public Opsparingskonto(int acc_Regno, double acc_No, String typeName, double deposit, double withDraw, double limit) {
        super(acc_Regno, acc_No, typeName);
        this.deposit = deposit;
        this.withDraw = withDraw;
        this.limit = limit;
    }

    public double getLimit() {
        return limit;
    }

    public void setLimit(double limit) {
        this.limit = limit;
    }
}
