public class Konti {

    //Vores Konti-klasse:
    //Hvor vi håndterer Data (fra TeamL_DB) som indeholder info om Konti.
    //Account Reg.No, Account No., Account Type, etc..
    private int acc_Regno = 0;
    private double acc_No = 0;
    private int acc_Type = 0;
    private String typeName;


    public Konti(String typeName) {
        this.typeName = typeName;
    }

    protected Konti(int acc_Regno, double acc_No, String typeName) {
        this.acc_Regno = acc_Regno;
        this.acc_No = acc_No;
        this.typeName = typeName;
    }

    public int getAcc_Regno() {
        return acc_Regno;
    }

    private void setAcc_Regno(int acc_Regno) {
        this.acc_Regno = acc_Regno;
    }

    public double getAcc_No() {
        return acc_No;
    }

    private void setAcc_No(double acc_No) {
        this.acc_No = acc_No;
    }
}
