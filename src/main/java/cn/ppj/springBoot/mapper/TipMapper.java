package cn.ppj.springBoot.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.ppj.springBoot.pojo.UserInfo;

public interface TipMapper {

	List<UserInfo> findNewFriend(String userId);

	void addFriends(@Param("userInfoId")String userInfoId,@Param("userId")String userId);

	void deleteMyBeFriend(@Param("userInfoId")String userInfoId,@Param("userId")String userId);

}
