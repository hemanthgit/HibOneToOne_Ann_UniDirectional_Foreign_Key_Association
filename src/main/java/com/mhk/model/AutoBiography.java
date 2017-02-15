package com.mhk.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AUTOBIOGRAPHY")
public class AutoBiography {

	@Id
    @GeneratedValue
    private Long id;
     
	@Column(name="book_name")
    private String bookName;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	@Override
	public String toString() {
		return "AutoBiography [authorId=" + id + ", bookName=" + bookName + "]";
	}
}
