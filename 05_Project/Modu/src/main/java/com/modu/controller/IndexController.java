package com.modu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.modu.domain.member.Member;
import com.modu.domain.recipe.RecipeList;
import com.modu.service.MembershipService;
import com.modu.service.RecipeFindingService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class IndexController {
	
	private MembershipService membershipService;
	private RecipeFindingService recipeFindingService;	
	
	@GetMapping("/")
	public ModelAndView index() {
		long beginRow, endRow;
		beginRow = 1;
		endRow = 8;
		
		List<Member> rankList = membershipService.selectMemberRankS();
		List<RecipeList> recipeList = recipeFindingService.selectRecipeListByBestHits(beginRow, endRow);
		
		// ��ŷ TOP 6 ��� Ȯ��
		for (Member member: rankList) {
			//log.info("#IndexController: " + member);
		}
		
		ModelAndView mv = new ModelAndView("index", "rankList", rankList);
		mv.addObject("recipeList", recipeList);
		return mv;
	}
	
    @GetMapping("/recent-recipe")
    public @ResponseBody List<RecipeList> displayRecentRecipe(HttpServletRequest request){
        return recipeFindingService.findRecentRecipes(request);
    }
	
}
