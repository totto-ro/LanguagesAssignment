package com.codingdojo.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.Repository;

import com.codingdojo.models.Language;

public interface LanguagesRepository extends Repository <Language, Long> {
	
	List<Language> findAll();
	
	Optional<Language> findById( Long id );
	
	Language save( Language language );
	
	// DELETE FROM hobbies WHERE identifier = id
	Long deleteById( Long id );

}
