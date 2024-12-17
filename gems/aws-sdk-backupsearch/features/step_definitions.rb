Before("@backupsearch") do
  @service = Aws::BackupSearch::Resource.new
  @client = @service.client
end

After("@backupsearch") do
  # shared cleanup logic
end
