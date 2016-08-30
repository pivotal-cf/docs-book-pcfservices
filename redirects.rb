r301 %r{.*}, 'http://docs.pivotal.io$&', :if => Proc.new {|rack_env|
  rack_env['SERVER_NAME'] == 'docs.gopivotal.com' ||
    rack_env['SERVER_NAME'] == 'cf-p1-docs-prod.cfapps.io'
}
r301 %r{.*}, 'http://docs-pcf-staging.cfapps.io$&', if: Proc.new {|rack_env|
  rack_env['SERVER_NAME'] == 'cf-p1-docs-staging.cfapps.io'
}

r301 %r{/pivotalcf/(?![\d-]+)(.*)}, "/pivotalcf/1-7/$1"
r301 %r{/redis/(?![\d-]+)(.*)}, "/redis/1-5/$1"
r301 %r{/p-mysql/(?![\d-]+)(.*)}, "/p-mysql/1-7/$1"
r301 %r{/rabbitmq-cf/(?![\d-]+)(.*)}, "/rabbitmq-cf/1-6-5/$1"
r301 %r{/on-demand-service-broker/(?![\d-]+)(.*)}, "/on-demand-service-broker/0.8.0/$1"

r301 %r{/pivotalhd/1010/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/1010/$1'
r301 %r{/pivotalhd/1030/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/1030/$1'
r301 %r{/pivotalhd/1100/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/1100/$1'
r301 %r{/pivotalhd/1110/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/1110/$1'
r301 %r{/pivotalhd/2000/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/2000/$1'
r301 %r{/pivotalhd/2010/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/2010/$1'
r301 %r{/pivotalhd/advisories/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/advisories/$1'
r301 %r{/pivotalhd/index.html}, 'http://pivotalhd.docs.pivotal.io/docs/index.html'
r301 %r{/pivotalhd/(.*)}, 'http://pivotalhd-210.docs.pivotal.io/doc/2100/$1'

r301 %r{/gpdb/(.*)}, 'http://gpdb.docs.pivotal.io/$1'
r301 %r{/gptext/(.*)}, 'http://gpdb.docs.pivotal.io/gptext/$1'

r301 '/gemfire/index.html', 'http://gemfire.docs.pivotal.io/index.html'
r301 '/gemfire/', 'http://gemfire.docs.pivotal.io/index.html'
r301 '/gemfirexd/index.html', 'http://gemfirexd.docs.pivotal.io/index.html'
r301 '/gemfirexd/', 'http://gemfirexd.docs.pivotal.io/index.html'
r301 '/rabbitmq/index.html', 'http://rabbitmq.docs.pivotal.io/index.html'
r301 '/rabbitmq/', 'http://rabbitmq.docs.pivotal.io/index.html'
r301 '/sqlfire/index.html', 'http://sqlfire.docs.pivotal.io/index.html'
r301 '/sqlfire/', 'http://sqlfire.docs.pivotal.io/index.html'
r301 '/dca/index.html', 'http://data.docs.pivotal.io/dca/index.html'
r301 '/dca/', 'http://data.docs.pivotal.io/dca/index.html'
r301 '/tcserver/index.html', 'http://tcserver.docs.pivotal.io/index.html'
r301 '/tcserver/', 'http://tcserver.docs.pivotal.io/index.html'
r301 '/webserver/index.html', 'http://webserver.docs.pivotal.io/index.html'
r301 '/webserver/', 'http://webserver.docs.pivotal.io/index.html'

r301 '/mobile/datasync/introduction.html', '/mobile/datasync/index.html'
r301 '/mobile/datasync/user-guide.html', '/mobile/datasync/dashboard-user-guide.html'
r301 %r{/mobile/api-gateway/(.*)}, '/mobile/apigateway/'
r301 %r{/mobile/datasync/(.*)}, '/mobile/data/'
r301 '/mobile/notifications/mobile-home.html', '/mobile/index.html'
r301 %r{/mobile/notifications/(.*)}, '/push/'
r301 %r{/mobile/app_distribution/(.*)}, '/app-dist/'
r301 %r{/mobile/push/(.*)}, '/push/'
r301 'v1_6_0/api/tags/index.html', '/v1_6_0/api/topics/index.html'

r301 %r{/pivotalcf/packaging/(.*)}, '/partners/$1'
r301 %r{/pivotalcf/partners/(.*)}, '/partners/$1'

r301 '/p1-services/MongoDB.html', '/mongodb/index.html'
r301 '/p1-services/Neo4j.html', '/neo4j/index.html'
r301 '/p1-services/Cassandra.html', '/cassandra/index.html'

r301 '/compatibility-matrix.pdf', '/resources/product-compatibility-matrix.pdf'

r301 '/services/asynchronous-operations.html', '/services/api.html#asynchronous-operations'

r301 '/spring-cloud-services/circuit-breaker/using-a-circuit-breaker.html', '/spring-cloud-services/circuit-breaker/writing-client-applications.html'
r301 '/spring-cloud-services/config-server/updating-instance-settings.html', '/spring-cloud-services/config-server/updating-an-instance.html'
r301 '/spring-cloud-services/config-server/writing-a-spring-client.html', '/spring-cloud-services/config-server/writing-client-applications.html'
r301 '/spring-cloud-services/service-registry/consuming-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'
r301 '/spring-cloud-services/service-registry/registering-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'

r301 '/owners.html', 'http://docs-owners-app-staging.cfapps.io'

r301 %r{/dynatrace/(.*)}, '/appmon/$1'

r301 %r{/pre-release/(.*)}, 'https://docs-pcf-staging.cfapps.io/pivotalcf/1-8/installing/pcf-docs.html'

r301 %r{/mobile/app_analytics(.*)}, 'https://network.pivotal.io/products/api-gateway'
r301 %r{/mobile/apigateway(.*)}, 'https://network.pivotal.io/products/api-gateway'
r301 %r{/mobile/data/(.*)}, 'https://network.pivotal.io/products/p-data-sync'
r301 '/mobile/index.html', 'https://network.pivotal.io/products/api-gateway'
r301 '/mobile/', 'https://network.pivotal.io/products/api-gateway'

r301 %r{/pcf-metrics/(?![\d-]+)(.*)}, "/pcf-metrics/1-1/$1"

r301 '/partners/decrypt-encrypt-install-file.html', 'http://docs.pivotal.io/pivotalcf/1-7/customizing/modify-ops-man.html'
