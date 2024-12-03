Before("@s3tables") do
  @service = Aws::S3Tables::Resource.new
  @client = @service.client
end

After("@s3tables") do
  # shared cleanup logic
end
