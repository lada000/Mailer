class FailingJob
  include Sidekiq::Job

  sidekiq_options retry: 5 

  def perform
    raise StandardError.new("Something went wrong in the job!")
  end
end
