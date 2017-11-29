public class Loenkonto extends Konti {

    //Klassen Loenkonto:
    //Håndterer data om Lønkonti. Skal kunne ting indenfor de parametre vi har fået.
    //Indsætte penge, Udtrække penge, Sende penge til Opsparing, etc..

    private double deposit = 0;
    private double withDraw = 0;
    private double limit = 0;

    private Loenkonto(String typeName) {
        super(typeName);
    }

    private Loenkonto(int acc_Regno, double acc_No, String typeName) {
        super(acc_Regno, acc_No, typeName);
    }

    public Loenkonto(String typeName, double deposit, double withDraw, double limit) {
        super(typeName);
        this.deposit = deposit;
        this.withDraw = withDraw;
        this.limit = limit;
    }

    public Loenkonto(int acc_Regno, double acc_No, String typeName, double deposit, double withDraw, double limit) {
        super(acc_Regno, acc_No, typeName);
        this.deposit = deposit;
        this.withDraw = withDraw;
        this.limit = limit;
    }

    public double getDeposit() {
        return deposit;
    }

    public void setDeposit(double deposit) {
        this.deposit = deposit;
    }

    public double getWithDraw() {
        return withDraw;
    }

    public void setWithDraw(double withDraw) {
        this.withDraw = withDraw;
    }

    public double getLimit() {
        return limit;
    }

    public void setLimit(double limit) {
        this.limit = limit;
    }
}
