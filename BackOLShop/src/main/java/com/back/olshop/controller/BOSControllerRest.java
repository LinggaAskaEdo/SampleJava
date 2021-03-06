/*
 * Copyright (c) 2018 by Lingga "Aska" Edo
 */

package com.back.olshop.controller;

import com.back.olshop.constant.ApplicationStatus;
import com.back.olshop.constant.MessagePreference;
import com.back.olshop.model.Request;
import com.back.olshop.model.Response;
import com.back.olshop.model.User;
import com.back.olshop.service.BOSServiceRest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
class BOSControllerRest
{
    private final Logger log = LoggerFactory.getLogger(BOSControllerRest.class);

    @Autowired
    private BOSServiceRest service;

    @RequestMapping(value = "request", method = RequestMethod.POST)
    ResponseEntity<?> requestHandlerRest(@RequestBody Request request)
    {
        log.debug("Request: {}", request.toString());

        if (request.getPhone() != null && request.getToken() != null && request.getMessage() != null)
        {
            //load user by token
            User user = service.loadUserByToken(request.getToken());

            if (user != null)
            {
                log.debug("user: {}", user);

                //check expired
                boolean tokenExpired = service.checkTokenExpired(user.getUserTokenExpired());

                //check store open
                boolean storeOpen = service.checkStoreOpen(user.getUserOpenTime(), user.getUserCloseTime());

                log.debug("isExpired: {}", tokenExpired);
                log.debug("storeOpen: {}", storeOpen);

                //if (tokenExpired)
                if (false)
                {
                    return new ResponseEntity<>(new Response(ApplicationStatus.FAILED.toString(), MessagePreference.MESSAGE_TOKEN_EXPIRED), HttpStatus.OK);
                }
                //else if (!storeOpen)
                else if (false)
                {
                    return new ResponseEntity<>(new Response(ApplicationStatus.FAILED.toString(), MessagePreference.MESSAGE_STORE_CLOSE), HttpStatus.OK);
                }
                else
                {
                    Response response = service.checkMessage(user, request);

                    return new ResponseEntity<>(response, HttpStatus.OK);
                }
            }
            else
            {
                return new ResponseEntity<>(new Response(ApplicationStatus.FAILED.toString(), MessagePreference.MESSAGE_INVALID_USER), HttpStatus.OK);
            }
        }
        else
        {
            return new ResponseEntity<>(new Response(ApplicationStatus.FAILED.toString(), MessagePreference.MESSAGE_BAD_REQUEST), HttpStatus.OK);
        }
    }
}