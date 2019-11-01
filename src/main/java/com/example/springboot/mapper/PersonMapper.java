package com.example.springboot.mapper;

import com.example.springboot.bean.Person;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PersonMapper {
    @Select("select * from persons")
    List<Person> getAllPersons();

    @Select("select * from persons where id=#{id}")
    Person getPersonByID(int id);

    @Insert("insert into persons(name,gender,age) values(#{name},#{gender},#{age})")
    int addPerson(Person person);

    @Update("update persons set name=#{name},gender=#{gender},age=#{age} where id=#{id}")
    int updatePerson(Person person);

    @Delete("delete from persons where id=#{id}")
    int deletePersonByID(int id);



}
