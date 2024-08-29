require 'sidekiq'
require 'sidekiq-cron'

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379/0' }

  schedule = {
    'send_bulk_emails' => {
      'class' => 'SendBulkEmailsJob',
      'cron' => '*/15 * * * *', 
      'queue' => 'mailers'
    }
  }

  Sidekiq::Cron::Job.load_from_hash schedule
end