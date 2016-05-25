r301 %r{.*}, 'http://docs.pivotal.io$&', :if => Proc.new {|rack_env|
  rack_env['SERVER_NAME'] == 'docs.gopivotal.com' ||
    rack_env['SERVER_NAME'] == 'cf-p1-docs-prod.cfapps.io'
}
r301 r%{.*}, 'http://docs-pcf-staging.cfapps.io$&', :if Proc.new {|rack_env|
  rack_env['SERVER_NAME'] == 'cf-p1-docs-staging.cfapps.io'
}

r302 %r{/pivotalcf/(?![\d-]+)(.*)}, "/pivotalcf/1-7/$1"

r302 %r{/pivotalhd/1010/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/1010/$1'
r302 %r{/pivotalhd/1030/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/1030/$1'
r302 %r{/pivotalhd/1100/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/1100/$1'
r302 %r{/pivotalhd/1110/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/1110/$1'
r302 %r{/pivotalhd/2000/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/2000/$1'
r302 %r{/pivotalhd/2010/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/2010/$1'
r302 %r{/pivotalhd/advisories/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/advisories/$1'
r302 %r{/pivotalhd/index.html}, 'http://pivotalhd.docs.pivotal.io/docs/index.html'
r302 %r{/pivotalhd/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/2100/$1'

r302 %r{/gpdb/(.*)}, 'http://gpdb.docs.pivotal.io/$1'
r302 %r{/gptext/(.*)}, 'http://gpdb.docs.pivotal.io/gptext/$1'

r302 '/gemfire/index.html', 'http://gemfire.docs.pivotal.io/index.html'
r302 '/gemfire/', 'http://gemfire.docs.pivotal.io/index.html'
r302 '/gemfirexd/index.html', 'http://gemfirexd.docs.pivotal.io/index.html'
r302 '/gemfirexd/', 'http://gemfirexd.docs.pivotal.io/index.html'
r302 '/rabbitmq/index.html', 'http://rabbitmq.docs.pivotal.io/index.html'
r302 '/rabbitmq/', 'http://rabbitmq.docs.pivotal.io/index.html'
r302 '/sqlfire/index.html', 'http://sqlfire.docs.pivotal.io/index.html'
r302 '/sqlfire/', 'http://sqlfire.docs.pivotal.io/index.html'
r302 '/dca/index.html', 'http://data.docs.pivotal.io/dca/index.html'
r302 '/dca/', 'http://data.docs.pivotal.io/dca/index.html'
r302 '/tcserver/index.html', 'http://tcserver.docs.pivotal.io/index.html'
r302 '/tcserver/', 'http://tcserver.docs.pivotal.io/index.html'
r302 '/webserver/index.html', 'http://webserver.docs.pivotal.io/index.html'
r302 '/webserver/', 'http://webserver.docs.pivotal.io/index.html'

r302 '/mobile/datasync/introduction.html', '/mobile/datasync/index.html'
r302 '/mobile/datasync/user-guide.html', '/mobile/datasync/dashboard-user-guide.html'
r302 %r{/mobile/api-gateway/(.*)}, '/mobile/apigateway/'
r302 %r{/mobile/datasync/(.*)}, '/mobile/data/'
r302 '/mobile/notifications/mobile-home.html', '/mobile/index.html'
r302 %r{/mobile/notifications/(.*)}, '/push/'
r302 %r{/mobile/app_distribution/(.*)}, '/app-dist/'
r302 %r{/mobile/push/(.*)}, '/push/'

r302 %r{/pivotalcf/packaging/(.*)}, '/partners/$1'
r302 %r{/pivotalcf/partners/(.*)}, '/partners/$1'

r302 '/p1-services/MongoDB.html', '/mongodb/index.html'
r302 '/p1-services/Neo4j.html', '/neo4j/index.html'
r302 '/p1-services/Cassandra.html', '/cassandra/index.html'

r302 '/compatibility-matrix.pdf', '/resources/product-compatibility-matrix.pdf'

r302 '/services/asynchronous-operations.html', '/services/api.html#asynchronous-operations'

r302 '/spring-cloud-services/circuit-breaker/using-a-circuit-breaker.html', '/spring-cloud-services/circuit-breaker/writing-client-applications.html'
r302 '/spring-cloud-services/config-server/writing-a-spring-client.html', '/spring-cloud-services/config-server/writing-client-applications.html'
r302 '/spring-cloud-services/service-registry/consuming-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'
r302 '/spring-cloud-services/service-registry/registering-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'
