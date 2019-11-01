package com.example.springboot.service;

import com.example.springboot.bean.Person;
import com.example.springboot.mapper.PersonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService{

    @Autowired
    private PersonMapper personMapper;

    @Override
    public List<Person> getAllPersons() {
        return personMapper.getAllPersons();
    }

    @Override
    public Person getPersonByID(int id) {
        return personMapper.getPersonByID(id);
    }

    @Override
    public int addPerson(Person person) {
        return personMapper.addPerson(person);
    }

    @Override
    public int updatePerson(Person person) {
        return personMapper.updatePerson(person);
    }

    @Override
    public int deletePersonByID(int id) {
        return personMapper.deletePersonByID(id);
    }
}