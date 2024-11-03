package com.dao;

import com.entity.MianshitongzhiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.MianshitongzhiView;

/**
 * 面试通知 Dao 接口
 *
 * @author 
 * @since 2021-04-06
 */
public interface MianshitongzhiDao extends BaseMapper<MianshitongzhiEntity> {

   List<MianshitongzhiView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
