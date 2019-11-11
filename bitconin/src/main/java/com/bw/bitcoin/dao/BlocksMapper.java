package com.bw.bitcoin.dao;

import com.bw.bitcoin.po.Blocks;

import java.util.List;

public interface BlocksMapper {
    int deleteByPrimaryKey(Integer bid);

    int insert(Blocks record);

    int insertSelective(Blocks record);

    Blocks selectByPrimaryKey(Integer bid);

    int updateByPrimaryKeySelective(Blocks record);

    int updateByPrimaryKey(Blocks record);

    List toBlocks();
}