package Class;
import java.util.*;
public class Kullanici {
	public Boolean ozelvarmi(String yazar_sifre){
		Boolean b=true;
		String[] ozel= {"-","*","/","%","^","!","!","+","<",">"};
		int sayac=0;
		for(int i=0; i<yazar_sifre.length();i++) {
			
			if(Arrays.asList(ozel).contains(String.valueOf(yazar_sifre.charAt(i)))) {
				sayac++;
			}
		}
		if(sayac<2) {
			b=false;
		}
		return b;
		
	}

}
