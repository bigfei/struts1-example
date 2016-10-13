package com.oracle.oats.otm.poc.action;

import com.oracle.oats.otm.poc.form.InputForm;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by bigfei on 10/13/16.
 */
public class InputAction extends Action {
    public ActionForward execute(
            ActionMapping mapping,
            ActionForm form,
            HttpServletRequest request,
            HttpServletResponse response) {
        InputForm inputForm = (InputForm) form;
        inputForm.setMessage("Hello World! Struts");

        return mapping.findForward("success");
    }
}
