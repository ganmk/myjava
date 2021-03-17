package org.mybatis_plus.controller;

import org.mybatis_plus.model.user;
import org.mybatis_plus.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user/basic")
public class UserController {
    @Autowired
    UserService userService;

    @GetMapping("/{id}")
    public user getBookById(@PathVariable Integer id)
    {
        return  userService.selectByPrimaryKey(id);
    }
}
