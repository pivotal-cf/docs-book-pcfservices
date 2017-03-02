r301 %r{.*}, 'http://docs.pivotal.io$&', :if => Proc.new {|rack_env|
  rack_env['SERVER_NAME'] == 'docs.gopivotal.com' ||
    rack_env['SERVER_NAME'] == 'cf-p1-docs-prod.cfapps.io'
}
r301 %r{.*}, 'http://docs-pcf-staging.cfapps.io$&', if: Proc.new {|rack_env|
  rack_env['SERVER_NAME'] == 'cf-p1-docs-staging.cfapps.io'
}

r301 %r{/on-demand-service-broker/(?![\d-]+)(.*)}, "/on-demand-service-broker/0-14/$1"
r301 %r{/service-metrics/(?![\d-]+)(.*)}, "/service-metrics/1-5/$1"
r301 %r{/service-backup/(?![\d-]+)(.*)}, "/service-backup/18-0/$1"
r301 %r{/buildpacks/(.*)}, '/pivotalcf/1-9/buildpacks/$1'
r301 %r{/deploying/(.*)}, '/pivotalcf/1-9/deploying/$1'
r301 %r{/concepts/(.*)}, '/pivotalcf/1-9/concepts/$1'
r301 %r{/adminguide/(.*)}, '/pivotalcf/1-9/adminguide/$1'
r301 %r{/cf-cli/(.*)}, '/pivotalcf/1-9/cf-cli/$1'
r301 %r{/devguide/(.*)}, '/pivotalcf/1-9/devguide/$1'
r301 %r{/loggregator/(.*)}, '/pivotalcf/1-9/loggregator/$1'
r301 %r{/services/(.*)}, '/pivotalcf/1-9/services/$1'
r301 %r{/opsguide/(.*)}, '/pivotalcf/1-9/opsguide/$1'
r301 %r{/installing/(.*)}, '/pivotalcf/1-9/installing/$1'
r301 %r{/customizing/(.*)}, '/pivotalcf/1-9/customizing/$1'
r301 %r{/appsman-services/(.*)}, '/pivotalcf/1-9/appsman-services/$1'
r301 %r{/console/(.*)}, '/pivotalcf/1-9/console/$1'
r301 %r{/pcf-release-notes/(.*)}, '/pivotalcf/1-9/pcf-release-notes/$1'

r301 %r{/redis/(?![\d-]+)(.*)}, "/redis/1-7/$1"
r301 %r{/p-identity/(?![\d-]+)(.*)}, "/p-identity/1-9/$1"
r301 %r{/sso/(?![\d-]+)(.*)}, "/p-identity/1-9/$1"

r301 %r{/rabbitmq-cf/(?![\d-]+)(.*)}, "/rabbitmq-cf/1-7/$1"
r301 %r{/rabbitmq-cf/1-7-[\d]+/(.*)}, "/rabbitmq-cf/1-7/$1"
r301 %r{/rabbitmq-cf/1-6-[\d]+/(.*)}, "/rabbitmq-cf/1-6/$1"
r301 %r{/rabbitmq-cf/1-5-[\d]+/(.*)}, "/rabbitmq-cf/1-5/$1"

r301 %r{/bosh/(.*)}, 'http://bosh.io/docs/$1'
r301 %r{/jmx-bridge/(?![\d-]+)(.*)}, "/jmx-bridge/1-8/$1"

r301 %r{/p-mysql/(?![\d-]+)(.*)}, "/p-mysql/1-8/$1"
r301 %r{/p-MySQL/(?![\d-]+)(.*)}, "/p-mysql/1-8/$1"

r301 %r{/200/(.*)}, "http://hdb.docs.pivotal.io/200/$1"
r301 %r{/201/(.*)}, "http://hdb.docs.pivotal.io/201/$1"
r301 %r{/130/(.*)}, "http://hdb.docs.pivotal.io/130/$1"
r301 %r{/131/(.*)}, "http://hdb.docs.pivotal.io/131/$1"
r301 %r{/210/(.*)}, "http://hdb.docs.pivotal.io/210/$1"
r301 %r{/211/(.*)}, "http://hdb.docs.pivotal.io/211/$1"

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

# For GPCC
r301 %r{/300/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/300/gp-wlm/$1"
r301 %r{/250/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/250/gp-wlm/$1"
r301 %r{/240/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/240/gp-wlm/$1"
r301 %r{/230/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/230/gp-wlm/$1"
r301 %r{/220/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/220/gp-wlm/$1"
r301 %r{/210/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/210/gp-wlm/$1"
r301 %r{/300/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/300/gpcc/$1"
r301 %r{/250/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/250/gpcc/$1"
r301 %r{/240/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/240/gpcc/$1"
r301 %r{/230/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/230/gpcc/$1"
r301 %r{/220/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/220/gpcc/$1"
r301 %r{/210/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/210/gpcc/$1"

r301 '/gemfire/index.html', 'http://gemfire.docs.pivotal.io/index.html'
r301 '/gemfire/', 'http://gemfire.docs.pivotal.io/index.html'
r301 '/gemfirexd/index.html', 'http://gemfirexd.docs.pivotal.io/index.html'
r301 '/gemfirexd/', 'http://gemfirexd.docs.pivotal.io/index.html'
r301 '/rabbitmq/index.html', 'http://rabbitmq.docs.pivotal.io/index.html'
r301 '/rabbitmq/', 'http://rabbitmq.docs.pivotal.io/index.html'
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
r301 %r{^/push/(?![\d-]+)(.*)}, "/push/1-8/$1"

r301 %r{/pivotalcf/packaging/(.*)}, '/tiledev/$1'
r301 %r{/pivotalcf/partners/(.*)}, '/tiledev/$1'

# r301 '/partners/', '/tiledev/index.html'
# r301 '/partners/index.html', '/tiledev/index.html'
r301 '/partners/creating.html', '/tiledev/tile-generator.html'
r301 '/partners/decrypt-encrypt-install-file.html', '/pivotalcf/customizing/modify-ops-man.html'
r301 '/partners/deploying-with-bosh.html', '/tiledev/tile-generator.html'
r301 '/partners/deploying-with-ops-man-tile.html', '/tiledev/tile-generator.html'
r301 '/partners/lifecycle-errands.html', '/tiledev/tile-errands.html'
r301 '/partners/migrations.html', '/tiledev/tile-upgrades.html'
r301 '/partners/preparing-ops-man.html', '/tiledev/tile-generator.html'
r301 '/partners/product-template-reference.html', '/tiledev/product-template-reference.html'
r301 '/partners/release-notes-1-7.html', '/tiledev/release-notes-1-7.html'
r301 '/partners/release-notes-1-8.html', '/tiledev/release-notes-1-8.html'
r301 '/partners/release-notes.html', '/tiledev/release-notes-1-8.html'
r301 '/partners/releases.html', '/tiledev/releases.html'
r301 '/partners/sdk.html', '/tiledev/sdk.html'
r301 '/partners/tiles.html', '/tiledev/property-reference.html'

r301 '/p1-services/MongoDB.html', '/mongodb/index.html'
r301 '/p1-services/Neo4j.html', '/neo4j/index.html'
r301 '/p1-services/Cassandra.html', 'https://github.com/pivotal-cf/docs-cassandra'

r301 '/compatibility-matrix.pdf', '/resources/product-compatibility-matrix.pdf'

r301 '/services/asynchronous-operations.html', '/services/api.html#asynchronous-operations'

# Spring Cloud Services redirects
r301 '/spring-cloud-services/circuit-breaker/using-a-circuit-breaker.html', '/spring-cloud-services/circuit-breaker/writing-client-applications.html'
r301 '/spring-cloud-services/config-server/updating-instance-settings.html', '/spring-cloud-services/config-server/updating-an-instance.html'
r301 '/spring-cloud-services/config-server/writing-a-spring-client.html', '/spring-cloud-services/config-server/writing-client-applications.html'
r301 '/spring-cloud-services/service-registry/consuming-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'
r301 '/spring-cloud-services/service-registry/registering-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'
r301 '/spring-cloud-services/service-registry/background.html', '/spring-cloud-services/service-registry/oss.html'

r301 %r{/spring-cloud-services/1-3/circuit-breaker/(.*)}, "/spring-cloud-services/1-3/common/circuit-breaker/$1"
r301 %r{/spring-cloud-services/1-3/config-server/(.*)}, "/spring-cloud-services/1-3/common/config-server/$1"
r301 %r{/spring-cloud-services/1-3/service-registry/(.*)}, "/spring-cloud-services/1-3/common/service-registry/$1"

r301 '/spring-cloud-services', '/spring-cloud-services/common/'
r301 '/spring-cloud-services/1-3/index.html', '/spring-cloud-services/1-3/common/index.html'
r301 '/spring-cloud-services/1-3/security-overview.html', '/spring-cloud-services/1-3/common/security-overview.html'
r301 '/spring-cloud-services/1-3/client-dependencies.html', '/spring-cloud-services/1-3/common/client-dependencies.html'
r301 '/spring-cloud-services/1-3/client-troubleshooting.html', '/spring-cloud-services/1-3/common/client-troubleshooting.html'
r301 '/spring-cloud-services/1-3/service-instance-upgrades.html', '/spring-cloud-services/1-3/common/service-instance-upgrades.html'

r301 %r{/spring-cloud-services/shared/(?![\d-]+)(.*)}, "/spring-cloud-services/common/$1"

r301 %r{/spring-cloud-services/(?![\d-]+)(.*+)}, "/spring-cloud-services/1-3/$1"

r301 '/owners.html', 'http://docs-owners-app-staging.cfapps.io'

r301 %r{/pre-release/(.*)}, 'https://docs-pcf-staging.cfapps.io/pivotalcf/1-9/installing/pcf-docs.html'

r301 %r{/mobile/app_analytics(.*)}, 'https://network.pivotal.io/products/api-gateway'
r301 %r{/mobile/apigateway(.*)}, 'https://network.pivotal.io/products/api-gateway'
r301 %r{/mobile/data/(.*)}, 'https://network.pivotal.io/products/p-data-sync'
r301 '/mobile/index.html', 'https://network.pivotal.io/products/api-gateway'
r301 '/mobile/', 'https://network.pivotal.io/products/api-gateway'

r301 %r{/appmon/(.*)}, '/dynatrace/index.html'
r301 %r{/ruxit/(.*)}, '/dynatrace/index.html'

r301 %r{/windows/(.*)}, 'http://docs.pivotal.io/pivotalcf/1-9/windows/index.html'

# Link structure changed for ODB, service-backup and service-metrics
r301 %r{/on-demand-service-broker/(\d+)-(\d+)-\d+/(.*)}, "/on-demand-service-broker/$1-$2/$3"
r301 %r{/service-metrics/(\d+)-(\d+)-\d+/(.*)}, "/service-metrics/$1-$2/$3"
r301 %r{/service-backup/(\d+)-(\d+)-\d+/(.*)}, "/service-backup/$1-$2/$3"

# Metrics redirects, change version at each release. Have to do it this way
# because edge.
r301 '/pcf-metrics/', '/pcf-metrics/1-3/index.html'
r301 '/pcf-metrics/index.html', '/pcf-metrics/1-3/index.html'
r301 '/pcf-metrics/installing.html', '/pcf-metrics/1-3/installing.html'
r301 '/pcf-metrics/sizing.html', '/pcf-metrics/1-3/sizing.html'
r301 '/pcf-metrics/using.html', '/pcf-metrics/1-3/using.html'
r301 '/pcf-metrics/architecture.html', '/pcf-metrics/1-2/architecture.html'
r301 '/pcf-metrics/rn-ki.html', '/pcf-metrics/1-3/rn-ki.html'
r301 '/pcf-metrics/troubleshooting.html', '/pcf-metrics/1-3/troubleshooting.html'

r301 '/pcf-metrics/1-2/installing.html#troubleshooting', '/pcf-metrics/1-2/troubleshooting.html'

# Upgrade landing page redirects
r302 '/pivotalcf/1-8/upgrading/index.html', '/pivotalcf/1-9/upgrading/index.html'
r302 '/pivotalcf/1-7/upgrading/index.html', '/pivotalcf/1-9/upgrading/index.html'
r302 '/pivotalcf/1-6/upgrading/index.html', '/pivotalcf/1-9/upgrading/index.html'

r301 %r{/cjoc/(.*)}, 'https://docs.pivotal.io'
r301 %r{/p-riakcs/(.*)}, 'https://docs.pivotal.io'

r301 %r{/pivotalcf/(?![\d-]+)(.*)}, "/pivotalcf/1-9/$1"

# Spring Cloud Services

# DataStax Cassandra
r301 %r{/cassandra/(.*)}, 'https://github.com/pivotal-cf/docs-cassandra'

# Partners

r301 %r{/a9s-bosh/(.*)}, "/partners/a9s-bosh/$1"
r301 %r{/a9s-consul-dns/(.*)}, "/partners/a9s-consul-dns/$1"
r301 %r{/a9s-elasticsearch/(.*)}, "/partners/a9s-elasticsearch/$1"
r301 %r{/a9s-mongodb/(.*)}, "/partners/a9s-mongodb/$1"
r301 %r{/a9s-postgresql/(.*)}, "/partners/a9s-postgresql/$1"
r301 %r{/aerospike/(.*)}, "/partners/aerospike/$1"
r301 %r{/aerospike-ee/(.*)}, "/partners/aerospike-ee/$1"
r301 %r{/apigee/(.*)}, "/partners/apigee/$1"
r301 %r{/apigee-bosh/(.*)}, "/partners/apigee-bosh/$1"
r301 %r{/appdynamics/(.*)}, "/partners/appdynamics/$1"
r301 %r{/azuqua/(.*)}, "/partners/azuqua/$1"
r301 %r{/azure-sb/(.*)}, "/partners/azure-sb/$1"
r301 %r{/blue-medora/(.*)}, "/partners/blue-medora/$1"
r301 %r{/cloudbees/(.*)}, "/partners/cloudbees/$1"
r301 %r{/cloudsoft/(.*)}, "/partners/cloudsoft/$1"
r301 %r{/crunchy/(.*)}, "/partners/crunchy/$1"
r301 %r{/dynatrace/(.*)}, "/partners/dynatrace/$1"
r301 %r{/edb-postgres/(.*)}, "/partners/edb-postgres/$1"
r301 %r{/wombat/(.*)}, "/partners/wombat/$1"
r301 %r{/firstdata/(.*)}, "/partners/firstdata/$1"
r301 %r{/forgerock/(.*)}, "/partners/forgerock/$1"
r301 %r{/gitlab/(.*)}, "/partners/gitlab/$1"
r301 %r{/gcp-sb/(.*)}, "/partners/gcp-sb/$1"
r301 %r{/guardtime/(.*)}, "/partners/guardtime/$1"
r301 %r{/hazelcast/(.*)}, "/partners/hazelcast/$1"
r301 %r{/jfrog/(.*)}, "/partners/jfrog/$1"
r301 %r{/knowtify/(.*)}, "/partners/knowtify/$1"
r301 %r{/mongodb/(.*)}, "/partners/mongodb/$1"
r301 %r{/mulesoft/(.*)}, "/partners/mulesoft/$1"
r301 %r{/neo4j/(.*)}, "/partners/neo4j/$1"
r301 %r{/newrelic/(.*)}, "/partners/newrelic/$1"
r301 %r{/rlec/(.*)}, "/partners/rlec/$1"
r301 %r{/signalsciences/(.*)}, "/partners/signalsciences/$1"
r301 %r{/solace-messaging/(.*)}, "/partners/solace-messaging/$1"
r301 %r{/splunk/(.*)}, "/partners/splunk/$1"
r301 %r{/tibco-businessworks/(.*)}, "/partners/tibco-businessworks/$1"
