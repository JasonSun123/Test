package com.example.springboot.service;


import com.example.springboot.bean.Person;

import java.util.List;

public interface PersonService {

    List<Person> getAllPersons();

    Person getPersonByID(int id);

    int addPerson(Person person);

    int updatePerson(Person person);

    int deletePersonByID(int id);


}
