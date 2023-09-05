package com.btb.chalKak.domain.post.repository;

import com.btb.chalKak.domain.member.entity.Member;
import com.btb.chalKak.domain.post.entity.Post;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface PostRepository extends JpaRepository<Post, Long>, CustomPostRepository {

    Page<Post> findAllByContentContaining(String keyword, Pageable pageable);

    @Query("SELECT COUNT(p.id) FROM Post p WHERE p.writer.id = :memberId")
    Long countPostIdsByMemberId(Long memberId);

    List<Post> findAllByWriter(Member writer);
}
