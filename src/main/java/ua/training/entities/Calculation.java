package ua.training.entities;


import java.math.BigDecimal;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.NumberFormat;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Getter
@Setter
public class Calculation {

    @NotNull
    @NumberFormat
    @Digits(integer=20, fraction=10, message = "invalid format")
    private BigDecimal paramA;

    @NotNull
    @NumberFormat
    @Digits(integer=20, fraction=10, message = "invalid format")
    private BigDecimal paramB;

    @NotNull
    @NumberFormat
    @Digits(integer=20, fraction=10, message = "invalid format")
    private BigDecimal paramC;

    private BigDecimal discriminant;
    private BigDecimal x1;
    private BigDecimal x2;
}


//    final static String DOUBLE_PATTERN = "[0-9]+(\\.){0,1}[0-9]*";
//@Pattern(regexp = DOUBLE_PATTERN, message = "invalid format")
