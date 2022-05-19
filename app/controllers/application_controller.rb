class ApplicationController < ActionController::Base

def hello
    render html: 'welcome hello world!';
end

def kika
    render plain: 'leave form!'
end

end
