package com.bw.bitcoin.Bcontroller;

import com.bw.bitcoin.dao.BlocksMapper;
import com.bw.bitcoin.po.Blocks;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController("/blocks")
public class BlocksController {

    private BlocksMapper mapper;

    public  PageInfo<Blocks> toBlocks(@RequestParam(defaultValue = "1") Integer page){

        PageHelper.startPage(page,3);

        List list=mapper.toBlocks();

        PageInfo<Blocks> pageInfo=new PageInfo<>(list);
        return pageInfo;

    }


}
