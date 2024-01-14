package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.CheliangleixingDao;
import com.entity.CheliangleixingEntity;
import com.service.CheliangleixingService;
import com.entity.vo.CheliangleixingVO;
import com.entity.view.CheliangleixingView;

@Service("cheliangleixingService")
public class CheliangleixingServiceImpl extends ServiceImpl<CheliangleixingDao, CheliangleixingEntity> implements CheliangleixingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CheliangleixingEntity> page = this.selectPage(
                new Query<CheliangleixingEntity>(params).getPage(),
                new EntityWrapper<CheliangleixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CheliangleixingEntity> wrapper) {
		  Page<CheliangleixingView> page =new Query<CheliangleixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<CheliangleixingVO> selectListVO(Wrapper<CheliangleixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public CheliangleixingVO selectVO(Wrapper<CheliangleixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<CheliangleixingView> selectListView(Wrapper<CheliangleixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CheliangleixingView selectView(Wrapper<CheliangleixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
