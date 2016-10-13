package com.oracle.oats.otm.poc.form;

import com.oracle.oats.otm.poc.model.Customer;
import com.oracle.oats.otm.poc.model.Department;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Collection;

public class InputForm extends ActionForm {

    Department department;
    String message;


    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public void reset(ActionMapping mapping,
                      HttpServletRequest request) {

        //initial a dummy collection of customers
        Collection customers = new ArrayList();
        customers.add(new Customer(1, "Shit"));
        customers.add(new Customer(2, "Fxxk"));
        customers.add(new Customer(3, "Kao"));

        //initial a dummy department
        department = new Department(1, "Department Dummy", customers);
    }
}