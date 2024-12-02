Before("@networkflowmonitor") do
  @service = Aws::NetworkFlowMonitor::Resource.new
  @client = @service.client
end

After("@networkflowmonitor") do
  # shared cleanup logic
end
