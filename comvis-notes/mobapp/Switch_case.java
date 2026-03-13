public class Switch_case {    
    public static void main(String[] args) {
        double[] nilai = {25, 35.5, 40.1, 59.9, 60.31415, 75, 80, 99};
        for (int i = 0; i < 8; i++) {
            int nilai_normalized = (int)nilai[i] / 10;
            char indeks;
            switch (nilai_normalized) {
                case 0:
                case 1:
                case 2:
                    indeks = 'E'; break;
                case 3:
                case 4:
                    indeks = 'D'; break;
                case 5:
                case 6:
                    indeks = 'C'; break;
                case 7:
                    indeks = 'B'; break;
                default:
                    indeks = 'A';
            }
            System.out.println(indeks + " ("  + nilai[i] + ")" );	
        }        
    }
}
