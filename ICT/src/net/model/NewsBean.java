package net.model;

import java.util.*;

public class NewsBean {
    protected String idnews;
    protected String title;
    protected String caption;
    protected String content;
    protected String thumbnail;
    protected Date datecreated;
    protected String category;

    public void setIdnews(String idnews) {
        this.idnews = idnews;
    }

    public String getIdnews() {
        return idnews;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public String getCaption() {
        return caption;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setDatecreated(Date datecreated) {
        this.datecreated = datecreated;
    }

    public Date getDatecreated() {
        return datecreated;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCategory() {
        return category;
    }
}
