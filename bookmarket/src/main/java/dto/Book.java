package dto;

import java.io.Serializable;

public class Book implements Serializable {
    private static final long serialVersionUID=-4274700572038677000L;

    private String bookId;
    private String name;
    private int unitPrice;
    private String author;
    private String description;
    private String publisher;
    private String category;
    private long unitsInStock;
    private String releaseDate;
    private String condition;
    
    public Book() {
        super();
    }

    public Book(String bookId, String name, Integer unitPrice) {
        this.bookId=bookId;
        this.name=name;
        this.unitPrice=unitPrice;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public void setUnitsInStock(long unitsInStock) {
        this.unitsInStock = unitsInStock;
    }
    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }
    public void setCondition(String condition) {
        this.condition = condition;
    }
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
    public String getBookId() {
        return bookId;
    }
    public String getName() {
        return name;
    }
    public int getUnitPrice() {
        return unitPrice;
    }
    public String getAuthor() {
        return author;
    }
    public String getDescription() {
        return description;
    }
    public String getPublisher() {
        return publisher;
    }
    public String getCategory() {
        return category;
    }
    public long getUnitsInStock() {
        return unitsInStock;
    }
    public String getReleaseDate() {
        return releaseDate;
    }
    public String getCondition() {
        return condition;
    }
    
}
