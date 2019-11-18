package 'cowsay' do
    action :install
end


file '/home/opc/hello.txt' do
    action :create
    content 'Hello! Welcome to Chef'
end