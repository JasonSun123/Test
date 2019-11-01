package com.example.springboot.controller;

import com.example.springboot.bean.Person;
import com.example.springboot.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class PersonController {

    @Autowired
    private PersonService personService;

    @RequestMapping("/list")
    public String getAllPersons(Map<String,Object> map){
        List<Person> list = personService.getAllPersons();
        map.put("persons",list);
        return "person/list";
    }

    @GetMapping("/add")
    public String addPerson(){
        return "person/add";
    }

    @PostMapping("/add")
    public String addPerson(Person person){
        personService.addPerson(person);
        return "redirect:/list";
    }

    @GetMapping("/update/{id}")
    public String updatePerson(@PathVariable("id") int id,Map<String,Person> map){
        Person person = personService.getPersonByID(id);
        map.put("person",person);
        return "person/update";
    }

    @PostMapping("/update")
    public String updatePerson(Person person){
        personService.updatePerson(person);
        return "redirect:/list";
    }

    @GetMapping("/delete/{id}")
    public String deletePerson(@PathVariable("id") int id){
        personService.deletePersonByID(id);
        return "redirect:/list";
    }
}

