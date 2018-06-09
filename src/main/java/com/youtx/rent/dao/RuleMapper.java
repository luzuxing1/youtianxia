package com.youtx.rent.dao;

import com.youtx.rent.entity.Rule;
import org.springframework.stereotype.Repository;

@Repository
public interface RuleMapper {
    int deleteByPrimaryKey(Integer ruleId);

    int insert(Rule record);

    int insertSelective(Rule record);

    Rule selectByPrimaryKey(Integer ruleId);

    int updateByPrimaryKeySelective(Rule record);

    int updateByPrimaryKey(Rule record);
}