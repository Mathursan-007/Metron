package com.service;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.model.Utility;


public interface IUtility {


public void AddUtility(Utility utility);


public ArrayList<Utility> listExpense();

public Utility GetUtility(int Payment_ID);

public void UpdateUtility(Utility utility);

public void DeleteUtility(int Payment_ID);


}