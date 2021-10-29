package com.codingdojo.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.models.Language;
import com.codingdojo.services.LanguagesService;



@Controller
public class LanguagesController {
	private final LanguagesService languagesService;
	
	//Constructor
	public LanguagesController( LanguagesService languagesService ) {
		this.languagesService = languagesService;
		
	}
	
	//Retrieving all languages
	@RequestMapping( value = "/languages", method = RequestMethod.GET )
	public String displayAllLanguages( @ModelAttribute( "language" ) Language language, Model model ) {
		List<Language> languageList = languagesService.getAllLanguages();
		
		model.addAttribute( "languageList", languageList );
		return "index.jsp";
	}
	
	//Creating a language
	@RequestMapping( value = "/languages", method = RequestMethod.POST )
	public String createLanguage( @Valid @ModelAttribute( "language" ) Language language,
								  BindingResult result,
								  RedirectAttributes redirectAttributes) {
		
		if( result.hasErrors() ) {
			return "index.jsp";
		}
		languagesService.createLanguage( language );
		return "redirect:/languages";
	}
	
	//Displays/renders the form to edit book by id
    @RequestMapping( value = "/languages/edit/{id}", method=RequestMethod.GET)
    public String edit(@PathVariable("id") Long id, Model model) {
        model.addAttribute("language", languagesService.getLanguageById( id ) );
        return "edit.jsp";
    }

    //Updates book by id
    @RequestMapping(value="/languages/edit/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("language") Language language, 
    					 BindingResult result ) {
        if (result.hasErrors()) {
            return "edit.jsp";
        } 
        else {
        	languagesService.updateLanguage( language );
    		return "redirect:/languages";
        }
    }
    
    //Show
    @RequestMapping( value = "/{id}", method=RequestMethod.GET)
    public String show(@PathVariable("id") Long id, Model model) {
        model.addAttribute("language", languagesService.getLanguageById( id ) );
        return "show.jsp";
    }
	
    //Delete
    @RequestMapping(value="/{id}", method=RequestMethod.DELETE)
	public String Delete(@PathVariable("id") Long id) {
    	languagesService.deleteLanguage(id);
		return "redirect:/languages";
	}
    
}
