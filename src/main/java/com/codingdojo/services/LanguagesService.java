package com.codingdojo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.models.Language;
import com.codingdojo.repositories.LanguagesRepository;

@Service
public class LanguagesService {
	//Attribute
	private final LanguagesRepository languagesRepository;
	
	//Constructor
	public LanguagesService( LanguagesRepository languagesRepository ) {
		this.languagesRepository = languagesRepository;
	}
	
	//Create
	public Language createLanguage( Language language ) {
		return languagesRepository.save( language );
	}
	
	//Update
		public Language updateLanguage( Language language ) {
			return languagesRepository.save( language );
		}
	
	
	
	//Retrieve all languages
	public List<Language> getAllLanguages(){
			return languagesRepository.findAll();
		}
	
	//Retrieve by Id
	public Language getLanguageById( Long id ) {
		Optional<Language> optionalLanguage = languagesRepository.findById( id );
		if( optionalLanguage.isPresent() ) {
			return optionalLanguage.get();
		}
		else {
			return null;
		}
	}
	
	//Delete
	public void deleteLanguage(Long id) {
		languagesRepository.deleteById(id);
	}

}
