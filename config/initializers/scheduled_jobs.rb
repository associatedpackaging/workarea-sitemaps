Sidekiq::Cron::Job.create(
  name: 'Workarea::GenerateSitemaps',
  klass: 'Workarea::GenerateSitemaps',
  cron: '0 5 * * *',
  queue: 'low'
)
