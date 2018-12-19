package com.chiangte.exception;

/**
 * @ClassName CustomException
 * @Description TODO 系统自定义异常类，针对预期异常，需要在程序中抛出此类的异常
 * @Author Chiangte
 * @Date  2018/12/16
 **/
public class CustomException extends Exception {

    //异常信息
    public String message;

    public CustomException(String message) {
        super(message);
        this.message=message;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
