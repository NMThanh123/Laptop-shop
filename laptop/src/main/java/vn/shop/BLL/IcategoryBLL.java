package vn.shop.BLL;

import java.util.List;

import vn.shop.Models.category;

public interface IcategoryBLL {
	
	List<category> find_by_provider(int id);
}
