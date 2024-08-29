class SendBulkEmailsJob
  include Sidekiq::Job

  def perform
    100.times do |i|
      ScheduledEmailJob.perform_in(i * 10.seconds, "test_#{i}@example.com")
    end
  end
end
