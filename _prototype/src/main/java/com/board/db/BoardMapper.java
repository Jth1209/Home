package com.board.db;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface BoardMapper {
	@Select("select count(*) from board")
	int Count();
	@Select("select * from (select rownum as rn,b.* from (select * from board order by num desc) as b where rownum<#{num}+5) where rn>#{num}+1")
	List<BoardpDto> selectPage(int num);
	@Select("select * from board where num=#{num}")
	BoardDto selectOne(int num);
	@Update("update board set writer=#{writer},title=#{title},content=#{content},regtime=#{regtime},hits=0 where num=#{num}")
	void updateBoard(BoardDto dto);
	@Insert("insert into board (num,writer,title,content,regtime,hits) values (board_a.nextval,#{writer},#{title},#{content},#{regtime},0)")
	void insertBoard(BoardDto dto);
	@Delete("delete from board where num=#{num}")
	void deleteBoard(int num);
}
