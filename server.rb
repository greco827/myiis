powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
end

file 'C:\inetpub\wwwroot\Default.htm' do
  content 'Hello, world!'
end

service "w3svc"
  action [ :enable, :start]
end
