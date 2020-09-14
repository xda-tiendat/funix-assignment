/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.model;

import java.sql.Date;

/**
 *
 * @author xdati
 */
public class PostDTO {
    private int postId;
    private String title;
    private String summary;
    private String description;
    private String author;
    private Date timePost;
    private String status;

    public PostDTO() {
    }

    public PostDTO(int postId, String title, String summary, String description, String author, Date timePost, String status) {
        this.postId = postId;
        this.title = title;
        this.summary = summary;
        this.description = description;
        this.author = author;
        this.timePost = timePost;
        this.status = status;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getTimePost() {
        return timePost;
    }

    public void setTimePost(Date timePost) {
        this.timePost = timePost;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
    
    
}
