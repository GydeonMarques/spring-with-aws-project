package br.com.gyn.springwithawsproject.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/api/test")
public class TestController {


    @GetMapping(value = "/{name}")
    public ResponseEntity<?> test(@PathVariable String name) {
        return ResponseEntity.ok("Hello " + name);
    }
}
