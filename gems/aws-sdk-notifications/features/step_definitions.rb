Before("@notifications") do
  @service = Aws::Notifications::Resource.new
  @client = @service.client
end

After("@notifications") do
  # shared cleanup logic
end
