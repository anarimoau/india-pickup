package in.gov.indiapost;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class BusinessService {

	String fname, lname, email, address, addselect, date, time, weight;

	public void setPersonal(String f, String l, String e, String add,
			String adds) {

		fname = f;
		lname = l;
		email = e;
		address = add;
		addselect = adds;

	}

	public void setPackage(String d, String t, String w) {

		date = d;
		time = t;
		weight = w;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddselect() {
		return addselect;
	}

	public void setAddselect(String addselect) {
		this.addselect = addselect;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public boolean regAuthenticate(String fname, String lname, String email,
			String address, String addselect) {

		if (fname == null || lname == null || email == null || address == null
				|| addselect == null) {
			return false;

		} else if (fname.isEmpty() || lname.isEmpty() || email.isEmpty()
				|| address.isEmpty() || addselect.isEmpty())
			return false;

		else if (!validateName(fname, lname))
			return false;

		 else if (!validateEmail(email))
		 return false;
		else
			return true;
	}

	public boolean packCheck(String date, String time, String weight) {

		if (date == null || time == null || weight == null)
			return false;

		else if (date.isEmpty() || time.isEmpty() || weight.isEmpty())
			return false;

		else if (!validateDate(date))
			return false;
		else if (!validateTime(time))
			return false;
		else if (!validateWeight(weight))
			return false;
		else
			return true;

	}

	public boolean validateName(String f, String l) {
		return (f.matches("[a-zA-Z]*") && l.matches("[a-zA-Z]*"));
	}

	 private boolean validateEmail(String email) {
	
	 return (email.matches("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"));
	 }

	private boolean validateDate(String date) {
		return (date
				.matches("^(3[01]|[12][0-9]|0[1-9])/(1[0-2]|0[1-9])/[0-9]{4}$"));

	}

	private boolean validateTime(String time) {
		return (time.matches("([01]?[0-9]|2[0-3]):[0-5][0-9]"));
	}

	private boolean validateWeight(String weight) {
		return (weight.matches("[0-9]*"));
	}

}