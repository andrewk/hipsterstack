require 'sinatra'

frameworks = [
  %w{AngularJS http://angularjs.org/},
  %w{Backbone.js http://backbonejs.org/},
  %w{Meteor http://meteor.com/},
  %w{Knockout http://knockoutjs.com/},
  %w{batman.js http://batmanjs.org},
  %w{ember.js http://emberjs.com/},
  %w{tower.js http://towerjs.org/},
]

servers = [
  %w{sinatra http://www.sinatrarb.com/},
  %w{rails http://rubyonrails.org/},
  %w{node.js http://nodejs.org/},
  %w{django https://www.djangoproject.com/'},
  %w{yesod http://www.yesodweb.com/},
  %w{pyramid http://www.pylonsproject.org/},
  %w{Grails http://grails.org/},
  %w{Zotonic http://zotonic.com/},
]

databases = [
  %w{PostgresSQL http://www.postgresql.org/},
  %w{MongoDB http://www.mongodb.org/},
  %w{Redis http://redis.io/},
  %w{Cassandra http://cassandra.apache.org/},
  %w{Riak http://basho.com/riak/},
  %w{MariaDB https://mariadb.org/},
]

get '/' do
  @framework = frameworks.sample
  @server = servers.sample
  @database = databases.sample
  erb :index
end
