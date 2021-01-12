package com.duobab.lhq.utils;

import java.util.Objects;

public class ParamValidation {
    public static void checkParam(Object ... objects ){
        for(Object o: objects){
            if(Objects.isNull(o)){
                throw new RuntimeException("param is error");
            }
        }
    }
}
