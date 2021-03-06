package org.o7planning.sbjdbctrans.controller;

import id.co.homecredit.mobile.common.secure.security.SecuredV2;
import id.co.homecredit.mobile.common.secure.security.SecurityContextHolder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SecureController
{
    private static final Logger logger = LoggerFactory.getLogger(SecureController.class);

    private final SecurityContextHolder contextHolder;

    @Autowired
    public SecureController(SecurityContextHolder contextHolder)
    {
        this.contextHolder = contextHolder;
    }

    @SecuredV2
    @GetMapping(value = "/secure")
    public void getResource2()
    {
        logger.info(contextHolder.getCuid());
        logger.info(contextHolder.getMobId());
        logger.info(contextHolder.getUserName());
    }
}
