package com.hisoft.news.service;

import com.hisoft.news.javabean.Comments;

/**
 * @Created by IntelliJ IDEA.
 * @Author: XiaoMing
 * @Date: 2021/6/29
 * @Time: 17:17
 * Come on, boy
 **/
public interface CommentsService {

    /**
     * 发布评论
     * @param comments
     * @return
     */
    int publlishComents(Comments comments);
}
