package com.youtx.rent.entity;

public class LandlordReply {
    private Integer landlordReplyId;

    private LodgerOpinion lodgerOpinion;

    private User user;

    private String replyContent;

    public Integer getLandlordReplyId() {
        return landlordReplyId;
    }

    public void setLandlordReplyId(Integer landlordReplyId) {
        this.landlordReplyId = landlordReplyId;
    }

    public LodgerOpinion getLodgerOpinion() {
        return lodgerOpinion;
    }

    public void setLodgerOpinion(LodgerOpinion lodgerOpinion) {
        this.lodgerOpinion = lodgerOpinion;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent == null ? null : replyContent.trim();
    }
}