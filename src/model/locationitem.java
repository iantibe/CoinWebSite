package model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="location_history")
public class locationitem {

	//data fields
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="locid")
	private int locid;
	
	@Column(name="location")
	private String location;
	
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="coinid")
	private CoinItem coin;
	
	//constructors
	public locationitem() {
		super();
	}
	
	
	//getter and setter
	public int getLocid() {
		return locid;
	}

	public void setLocid(int locid) {
		this.locid = locid;
	}

	
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}


	public CoinItem getCoin() {
		return coin;
	}


	public void setCoin(CoinItem coin) {
		this.coin = coin;
	}
	
	
	
}
