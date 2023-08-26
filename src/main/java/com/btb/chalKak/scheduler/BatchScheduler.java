package com.btb.chalKak.scheduler;

import java.time.LocalDateTime;
import lombok.RequiredArgsConstructor;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecutionException;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class BatchScheduler {

  private final Job job;  // tutorialJob
  private final JobLauncher jobLauncher;

  // 20초마다 실행
  @Scheduled(fixedDelay = 20 * 1000L)
  public void executeJob () {
    try {
      jobLauncher.run(
          job,
          new JobParametersBuilder()
              .addString("datetime", LocalDateTime.now().toString())
              .toJobParameters()  // job parameter 설정
      );
    } catch (JobExecutionException ex) {
      System.out.println(ex.getMessage());
      ex.printStackTrace();
    }
  }

}