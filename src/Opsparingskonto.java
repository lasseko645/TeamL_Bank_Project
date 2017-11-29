public class Opsparingskonto extends Konti {

    //Klassen Opsparingskonto:
    //Håndterer data om Opsparingskonti. Skal kunne ting indenfor de parametre vi har fået.
    //Modtage penge, IKKE være i minus, etc..

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
