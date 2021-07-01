package com.hisoft.news.service.impl;

import com.hisoft.news.dao.CommentsDao;
import com.hisoft.news.dao.impl.CommentsDaoImpl;
import com.hisoft.news.javabean.Comments;
import com.hisoft.news.service.CommentsService;
import com.hisoft.news.util.JdbcUtil;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * @Created by IntelliJ IDEA.
 * @Author: XiaoMing
 * @Date: 2021/6/29
 * @Time: 17:23
 * Come on, boy
 **/
public class CommentsServiceImpl implements CommentsService {
    private Connection conn;
    @Override
    public int publlishComents(Comments comments) {
        conn = JdbcUtil.getConnection();
        CommentsDao commentsDao = new CommentsDaoImpl(conn);
        int count = 0;
        try {
            conn.setAutoCommit(false);
            count = commentsDao.saveComments(comments);
            conn.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                conn.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }finally {
            JdbcUtil.closeAll(null,null,conn);
        }
        return count;
    }
}
