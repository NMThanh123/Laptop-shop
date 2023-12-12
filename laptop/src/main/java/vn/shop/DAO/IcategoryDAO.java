package vn.shop.DAO;

import java.util.List;

import vn.shop.Models.category;

public interface IcategoryDAO {

	List<category> find_by_provider(int id);

}
