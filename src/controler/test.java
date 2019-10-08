package controler;

import model.CoinItem;
import model.locationitem;

public class test {

	public static void main(String[] args) {
		
		CoinItem test = new CoinItem("changemerge", 350.00);
		
		CoinController instance = new CoinController();
		
		instance.insert(test);
		
		locationitem location = new locationitem();
		
		locationcontroller instancelocation = new locationcontroller();
		
		location.setCoin(test);
		location.setLocation("new location");
		
		instancelocation.insert(location);

	}

}
