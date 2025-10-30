package model;

public class Post {
	
private int id;
private String title,image,created_at,updated_at,like,category,year;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getImage() {
	return image;
}

public void setImage(String image) {
	this.image = image;
}

public String getCreated_at() {
	return created_at;
}

public void setCreated_at(String created_at) {
	this.created_at = created_at;
}

public String getUpdated_at() {
	return updated_at;
}

public void setUpdated_at(String updated_at) {
	this.updated_at = updated_at;
}

public String getLike() {
	return like;
}

public void setLike(String like) {
	this.like = like;
}

public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}

public String getYear() {
	return year;
}

public void setYear(String year) {
	this.year = year;
}

}
