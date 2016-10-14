r301 %r{.*}, 'http://docs.pivotal.io$&', :if => Proc.new {|rack_env|
  rack_env['SERVER_NAME'] == 'docs.gopivotal.com' ||
    rack_env['SERVER_NAME'] == 'cf-p1-docs-prod.cfapps.io'
}
r301 %r{.*}, 'http://docs-pcf-staging.cfapps.io$&', if: Proc.new {|rack_env|
  rack_env['SERVER_NAME'] == 'cf-p1-docs-staging.cfapps.io'
}

r302 %r{/spring-cloud-services/(?![\d-]+)(.*)}, "/spring-cloud-services/1-2/$1"
r302 %r{/pcf-metrics/(?![\d-]+)(.*)}, "/pcf-metrics/1-1/$1"
r302 %r{/on-demand-service-broker/(?![\d-]+)(.*)}, "/on-demand-service-broker/0-11-0/$1"
r302 %r{/service-metrics/(?![\d-]+)(.*)}, "/service-metrics/1-5-0/$1"
r302 %r{/service-backup/(?![\d-]+)(.*)}, "/service-backup/17-1-0/$1"
r302 %r{/buildpacks/(.*)}, '/pivotalcf/1-8/buildpacks/$1'
r302 %r{/deploying/(.*)}, '/pivotalcf/1-8/deploying/$1'
r302 %r{/concepts/(.*)}, '/pivotalcf/1-8/concepts/$1'
r302 %r{/adminguide/(.*)}, '/pivotalcf/1-8/adminguide/$1'
r302 %r{/cf-cli/(.*)}, '/pivotalcf/1-8/cf-cli/$1'
r302 %r{/devguide/(.*)}, '/pivotalcf/1-8/devguide/$1'
r302 %r{/loggregator/(.*)}, '/pivotalcf/1-8/loggregator/$1'
r302 %r{/services/(.*)}, '/pivotalcf/1-8/services/$1'
r302 %r{/opsguide/(.*)}, '/pivotalcf/1-8/opsguide/$1'
r302 %r{/installing/(.*)}, '/pivotalcf/1-8/installing/$1'
r302 %r{/customizing/(.*)}, '/pivotalcf/1-8/customizing/$1'
r302 %r{/appsman-services/(.*)}, '/pivotalcf/1-8/appsman-services/$1'
r302 %r{/console/(.*)}, '/pivotalcf/1-8/console/$1'
r302 %r{/pcf-release-notes/(.*)}, '/pivotalcf/1-8/pcf-release-notes/$1'
r302 %r{/pivotalcf/(?![\d-]+)(.*)}, "/pivotalcf/1-8/$1"
r302 %r{/redis/(?![\d-]+)(.*)}, "/redis/1-6/$1"
r302 %r{/p-identity/(?![\d-]+)(.*)}, "/p-identity/1-8/$1"
r302 %r{/rabbitmq-cf/(?![\d-]+)(.*)}, "/rabbitmq-cf/1-7-2/$1"
r302 %r{/bosh/(.*)}, 'http://bosh.io/docs/$1'
r302 %r{/jmx-bridge/(?![\d-]+)(.*)}, "/jmx-bridge/1-8/$1"
r302 %r{/p-mysql/(?![\d-]+)(.*)}, "/p-mysql/1-8/$1"
r302 %r{/pcf-metrics/(?![\d-]+)(.*)}, "/pcf-metrics/1-1/$1"

r302 %r{/200/(.*)}, "http://hdb.docs.pivotal.io/200/$1"
r302 %r{/201/(.*)}, "http://hdb.docs.pivotal.io/201/$1"
r302 %r{/130/(.*)}, "http://hdb.docs.pivotal.io/130/$1"
r302 %r{/131/(.*)}, "http://hdb.docs.pivotal.io/131/$1"

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
r302 'v1_6_0/api/tags/index.html', '/v1_6_0/api/topics/index.html'

r302 %r{/pivotalcf/packaging/(.*)}, '/partners/$1'
r302 %r{/pivotalcf/partners/(.*)}, '/partners/$1'

r302 '/p1-services/MongoDB.html', '/mongodb/index.html'
r302 '/p1-services/Neo4j.html', '/neo4j/index.html'
r302 '/p1-services/Cassandra.html', '/cassandra/index.html'

r302 '/compatibility-matrix.pdf', '/resources/product-compatibility-matrix.pdf'

r302 '/services/asynchronous-operations.html', '/services/api.html#asynchronous-operations'

r302 '/spring-cloud-services/circuit-breaker/using-a-circuit-breaker.html', '/spring-cloud-services/circuit-breaker/writing-client-applications.html'
r302 '/spring-cloud-services/config-server/updating-instance-settings.html', '/spring-cloud-services/config-server/updating-an-instance.html'
r302 '/spring-cloud-services/config-server/writing-a-spring-client.html', '/spring-cloud-services/config-server/writing-client-applications.html'
r302 '/spring-cloud-services/service-registry/consuming-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'
r302 '/spring-cloud-services/service-registry/registering-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'

r302 '/owners.html', 'http://docs-owners-app-staging.cfapps.io'

r302 %r{/pre-release/(.*)}, 'https://docs-pcf-staging.cfapps.io/pivotalcf/1-8/installing/pcf-docs.html'

r302 %r{/mobile/app_analytics(.*)}, 'https://network.pivotal.io/products/api-gateway'
r302 %r{/mobile/apigateway(.*)}, 'https://network.pivotal.io/products/api-gateway'
r302 %r{/mobile/data/(.*)}, 'https://network.pivotal.io/products/p-data-sync'
r302 '/mobile/index.html', 'https://network.pivotal.io/products/api-gateway'
r302 '/mobile/', 'https://network.pivotal.io/products/api-gateway'
r302 '/jmx-bridge/', '/jmx-bridge/1-8/index.html'

r302 '/partners/decrypt-encrypt-install-file.html', 'http://docs.pivotal.io/pivotalcf/1-7/customizing/modify-ops-man.html'

r302 %r{/appmon/(.*)}, '/dynatrace/index.html'
r302 %r{/ruxit/(.*)}, '/dynatrace/index.html'

r302 %r{/windows/(.*)}, 'http://docs.pivotal.io/pivotalcf/1-8/windows/index.html'
