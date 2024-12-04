Before("@bedrockdataautomationruntime") do
  @service = Aws::BedrockDataAutomationRuntime::Resource.new
  @client = @service.client
end

After("@bedrockdataautomationruntime") do
  # shared cleanup logic
end
