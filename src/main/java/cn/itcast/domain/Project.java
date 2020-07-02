package cn.itcast.domain;

import java.io.Serializable;

public class Project implements Serializable {
    private Integer id;
    private String title;
    private String price;
    private String img;
    private  String pages;
    private String content;
    private Integer views;

    public Project() {

    }

    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", price='" + price + '\'' +
                ", img='" + img + '\'' +
                ", pages='" + pages + '\'' +
                ", content='" + content + '\'' +
                ", views=" + views +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPages() {
        return pages;
    }

    public void setPages(String pages) {
        this.pages = pages;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getViews() {
        return views;
    }

    public void setViews(Integer views) {
        this.views = views;
    }

    public Project(Integer id, String title, String price, String img, String pages, String content, Integer views) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.img = img;
        this.pages = pages;
        this.content = content;
        this.views = views;
    }
}
