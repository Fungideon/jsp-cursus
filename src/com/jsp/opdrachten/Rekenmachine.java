package com.jsp.opdrachten;

public class Rekenmachine {
	private double uitkomst;
	
	public Rekenmachine(){
		
	}
	
	public double keer(String sGetalEen, String sGetalTwee) throws NumberFormatException {
		double getalEen = Double.parseDouble(sGetalEen);
		double getalTwee = Double.parseDouble(sGetalTwee);
		uitkomst = getalEen * getalTwee;
		return uitkomst;
	}
	
	public double deel(String sGetalEen, String sGetalTwee) throws NumberFormatException {
		double getalEen = Double.parseDouble(sGetalEen);
		double getalTwee = Double.parseDouble(sGetalTwee);
		uitkomst = getalEen / getalTwee;
		return uitkomst;
	}
	
	public double plus(String sGetalEen, String sGetalTwee) throws NumberFormatException {
		double getalEen = Double.parseDouble(sGetalEen);
		double getalTwee = Double.parseDouble(sGetalTwee);
		uitkomst = getalEen + getalTwee;
		return uitkomst;
	}
	
	public double minus(String sGetalEen, String sGetalTwee) throws NumberFormatException {
		double getalEen = Double.parseDouble(sGetalEen);
		double getalTwee = Double.parseDouble(sGetalTwee);
		uitkomst = getalEen - getalTwee;
		return uitkomst;
	}
}
