# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# Redirects to docs-book-services-sdk
r301 %r{/on-demand-service-broker/(?![\d-]+)(.*)}, "/svc-sdk/odb/$1"
r301 %r{/service-metrics/(?![\d-]+)(.*)}, "/svc-sdk/service-metrics/$1"
r301 %r{/service-backup/(?![\d-]+)(.*)}, "/svc-sdk/service-backup/$1"

r301 %r{/bbr/(.*)}, 'https://docs.cloudfoundry.org/bbr/$1'
r301 %r{/buildpacks/(.*)}, '/pivotalcf/2-4/buildpacks/$1'
r301 %r{/deploying/(.*)}, '/pivotalcf/2-4/deploying/$1'
r301 %r{/concepts/(.*)}, '/pivotalcf/2-4/concepts/$1'
r301 %r{/adminguide/(.*)}, '/pivotalcf/2-4/adminguide/$1'
r301 %r{/cf-cli/(.*)}, '/pivotalcf/2-4/cf-cli/$1'
r301 %r{/devguide/(.*)}, '/pivotalcf/2-4/devguide/$1'
r301 %r{/loggregator/(.*)}, '/pivotalcf/2-4/loggregator/$1'
r301 %r{/services/(.*)}, '/pivotalcf/2-4/services/$1'
r301 %r{/opsguide/(.*)}, '/pivotalcf/2-4/opsguide/$1'
r301 %r{/installing/(.*)}, '/pivotalcf/2-4/installing/$1'
r301 %r{/customizing/(.*)}, '/pivotalcf/2-4/customizing/$1'
r301 %r{/appsman-services/(.*)}, '/pivotalcf/2-4/appsman-services/$1'
r301 %r{/console/(.*)}, '/pivotalcf/2-4/console/$1'
r301 %r{/pcf-release-notes/(.*)}, '/pivotalcf/2-4/pcf-release-notes/$1'
r301 %r{/pivotalcf/2-4/pcf-release-notes/opsmanager-ki.html}, '/pivotalcf/2-4/pcf-release-notes/opsmanager-rn.html#knownissues'
r301 %r{/pivotalcf/2-4/pcf-release-notes/runtime-ki.html}, 'pivotalcf/2-4/pcf-release-notes/runtime-rn.html#knownissues'

r301 %r{/pivotalcf/1-10/pcf-release-notes/opsmanager-ki.html}, '/pivotalcf/1-10/pcf-release-notes/opsmanager-rn.html#knownissues'
r301 %r{/pivotalcf/1-10/pcf-release-notes/runtime-ki.html}, 'pivotalcf/1-10/pcf-release-notes/runtime-rn.html#knownissues'

r301 %r{/pivotalcf/1-9/pcf-release-notes/opsmanager-ki.html}, '/pivotalcf/1-9/pcf-release-notes/opsmanager-rn.html#knownissues'
r301 %r{/pivotalcf/1-9/pcf-release-notes/runtime-ki.html}, 'pivotalcf/1-9/pcf-release-notes/runtime-rn.html#knownissues'

r301 %r{/bosh/(.*)}, 'http://bosh.io/docs/$1'

# JMX Bridge
r301 %r{/jmx-bridge/(?![\d-]+)(.*)}, 'https://github.com/cloudfoundry-community/jmx-consumer-release'
r301 %r{/jmx-bridge/1-9/(.*)}, 'https://github.com/cloudfoundry-community/jmx-consumer-release'
r301 %r{/jmx-bridge/1-8/(.*)}, 'http://docs.pivotal.io/archives/jmx-bridge-1.8.pdf'
r301 %r{/jmx-bridge/1-7/(.*)}, 'http://docs.pivotal.io/archives/jmx-bridge-1.7.pdf'

r301 %r{/200/hawq/(.*)}, "http://hdb.docs.pivotal.io/200/hawq/$1"
r301 %r{/201/hawq/(.*)}, "http://hdb.docs.pivotal.io/201/hawq/$1"
r301 %r{/130/hawq/(.*)}, "http://hdb.docs.pivotal.io/130/hawq/$1"
r301 %r{/131/hawq/(.*)}, "http://hdb.docs.pivotal.io/131/hawq/$1"
r301 %r{/210/hawq/(.*)}, "http://hdb.docs.pivotal.io/210/hawq/$1"
r301 %r{/211/hawq/(.*)}, "http://hdb.docs.pivotal.io/211/hawq/$1"
r301 %r{/212/hawq/(.*)}, "http://hdb.docs.pivotal.io/212/hawq/$1"
r301 %r{/220/hawq/(.*)}, "http://hdb.docs.pivotal.io/220/hawq/$1"
r301 %r{/230/hawq/(.*)}, "http://hdb.docs.pivotal.io/230/hawq/$1"

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

# For Spark Connector

r301 %r{/120/(.*)}, 'https://greenplum-spark.docs.pivotal.io/120/$1'
r301 %r{/110/(.*)}, 'https://greenplum-spark.docs.pivotal.io/110/$1'
r301 %r{/100/(.*)}, 'https://greenplum-spark.docs.pivotal.io/100/$1'

# For GPText

r301 %r{/310/topics/(.*)}, "https://gptext.docs.pivotal.io/310/topics/$1"
r301 %r{/300/topics/(.*)}, "https://gptext.docs.pivotal.io/300/topics/$1"
r301 %r{/230/topics/(.*)}, "https://gptext.docs.pivotal.io/230/topics/$1"
r301 %r{/220/topics/(.*)}, "https://gptext.docs.pivotal.io/220/topics/$1"
r301 %r{/210/topics/(.*)}, "https://gptext.docs.pivotal.io/210/topics/$1"
r301 %r{/200/topics/(.*)}, "https://gptext.docs.pivotal.io/200/topics/$1"

# For GPDB
r301 %r{/4320/(.*)}, 'http://gpdb.docs.pivotal.io/4320/$1'
r301 %r{/4330/(.*)}, 'http://gpdb.docs.pivotal.io/4330/$1'
r301 %r{/4340/(.*)}, 'http://gpdb.docs.pivotal.io/4340/$1'
r301 %r{/4350/(.*)}, 'http://gpdb.docs.pivotal.io/4350/$1'
r301 %r{/4360/(.*)}, 'http://gpdb.docs.pivotal.io/4360/$1'
r301 %r{/4370/(.*)}, 'http://gpdb.docs.pivotal.io/4370/$1'
r301 %r{/4380/(.*)}, 'http://gpdb.docs.pivotal.io/4380/$1'
r301 %r{/4390/(.*)}, 'http://gpdb.docs.pivotal.io/4390/$1'
r301 %r{/43100/(.*)}, 'http://gpdb.docs.pivotal.io/43100/$1'
r301 %r{/43110/(.*)}, 'http://gpdb.docs.pivotal.io/43110/$1'
r301 %r{/43120/(.*)}, 'http://gpdb.docs.pivotal.io/43120/$1'
r301 %r{/43130/(.*)}, 'http://gpdb.docs.pivotal.io/43130/$1'
r301 %r{/43140/(.*)}, 'http://gpdb.docs.pivotal.io/43140/$1'
r301 %r{/43150/(.*)}, 'http://gpdb.docs.pivotal.io/43150/$1'
r301 %r{/43160/(.*)}, 'http://gpdb.docs.pivotal.io/43160/$1'
r301 %r{/43170/(.*)}, 'http://gpdb.docs.pivotal.io/43170/$1'
r301 %r{/43180/(.*)}, 'http://gpdb.docs.pivotal.io/43180/$1'
r301 %r{/43190/(.*)}, 'http://gpdb.docs.pivotal.io/43190/$1'
r301 %r{/43200/(.*)}, 'http://gpdb.docs.pivotal.io/43200/$1'
r301 %r{/43210/(.*)}, 'http://gpdb.docs.pivotal.io/43210/$1'
r301 %r{/43220/(.*)}, 'http://gpdb.docs.pivotal.io/43220/$1'
r301 %r{/43230/(.*)}, 'http://gpdb.docs.pivotal.io/43230/$1'
r301 %r{/43240/(.*)}, 'http://gpdb.docs.pivotal.io/43240/$1'
r301 %r{/500/(.*)}, 'http://gpdb.docs.pivotal.io/500/$1'
r301 %r{/510/(.*)}, 'http://gpdb.docs.pivotal.io/510/$1'
r301 %r{/520/(.*)}, 'http://gpdb.docs.pivotal.io/520/$1'
r301 %r{/530/(.*)}, 'http://gpdb.docs.pivotal.io/530/$1'
r301 %r{/540/(.*)}, 'http://gpdb.docs.pivotal.io/540/$1'
r301 %r{/550/(.*)}, 'http://gpdb.docs.pivotal.io/550/$1'
r301 %r{/560/(.*)}, 'http://gpdb.docs.pivotal.io/560/$1'
r301 %r{/570/(.*)}, 'http://gpdb.docs.pivotal.io/570/$1'

# For GPCC
r301 '/supported-platforms/gpcc.html/', 'https://gpcc.docs.pivotal.io/supported-platforms/gpcc.html'
r301 %r{/330/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/330/gp-wlm/$1"
r301 %r{/320/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/320/gp-wlm/$1"
r301 %r{/310/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/310/gp-wlm/$1"
r301 %r{/300/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/300/gp-wlm/$1"
r301 %r{/250/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/250/gp-wlm/$1"
r301 %r{/240/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/240/gp-wlm/$1"
r301 %r{/230/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/230/gp-wlm/$1"
r301 %r{/220/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/220/gp-wlm/$1"
r301 %r{/210/gp-wlm/(.*)}, "http://gpcc.docs.pivotal.io/210/gp-wlm/$1"
r301 %r{/400/(.*)}, "http://gpcc.docs.pivotal.io/400/$1"
r301 %r{/410/(.*)}, "http://gpcc.docs.pivotal.io/410/$1"
r301 %r{/420/(.*)}, "http://gpcc.docs.pivotal.io/420/$1"
r301 %r{/430/(.*)}, "http://gpcc.docs.pivotal.io/430/$1"
r301 %r{/440/(.*)}, "http://gpcc.docs.pivotal.io/440/$1"
r301 %r{/330/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/330/gpcc/$1"
r301 %r{/320/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/320/gpcc/$1"
r301 %r{/310/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/310/gpcc/$1"
r301 %r{/300/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/300/gpcc/$1"
r301 %r{/250/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/250/gpcc/$1"
r301 %r{/240/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/240/gpcc/$1"
r301 %r{/230/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/230/gpcc/$1"
r301 %r{/220/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/220/gpcc/$1"
r301 %r{/210/gpcc/(.*)}, "http://gpcc.docs.pivotal.io/210/gpcc/$1"

# For GemFire
r301 '/gemfire/', 'http://gemfire.docs.pivotal.io/'
r301 %r{/docs-gemfire/(.*)}, 'http://gemfire82.docs.pivotal.io/docs-gemfire/$1'
r301 %r{/(.*)/gemfire/(.*)}, "http://gemfire.docs.pivotal.io/$1/gemfire/$2"
r301 %r{/(.*)/geode/(.*)}, "http://gemfire.docs.pivotal.io/$1/geode/$2"
r301 %r{/(.*)/ggc/(.*)}, "http://ggc.docs.pivotal.io/$1/ggc/$2"
r301 %r{/(.*)/gemfire-native-client/(.*)}, "http://gemfire-native-client.docs.pivotal.io/$1/gemfire/$2"
r301 %r{/(.*)/geode-native-client/(.*)}, "http://gemfire-native-client.docs.pivotal.io/$1/geode/$2"
r301 %r{/(.*)/gemfire-native-client-ssp/(.*)}, "http://gemfire-native-client.docs.pivotal.io/$1/gemfire/$2"

#For GemFire for PCF
r301 %r{/gemfire-cf/(.*)}, 'http://docs.pivotal.io/archives/gemfire-for-pcf-1.7.pdf'

#For SSC for GemFire
r301 %r{/ssc-gemfire/(.*)}, 'http://docs.pivotal.io/archives/ssc-gemfire-1.2.pdf'


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
r301 %r{^/push/(?![\d-]+)(.*)}, "/push/1-10/$1"
r301 %r{/pcf-scheduler/(?![\d-]+)(.*)}, "/pcf-scheduler/1-2/$1"

r301 %r{https://docs.pivotal.io/ksm/(.*)}, 'https://docs.pivotal.io/'

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

r301 '/owners.html', 'http://docs-owners-app-staging.cfapps.io'

r301 %r{/pre-release/(.*)}, 'https://docs-pcf-staging.cfapps.io/pivotalcf/2-4/installing/pcf-docs.html'

r301 %r{/mobile/app_analytics(.*)}, 'https://network.pivotal.io/products/api-gateway'
r301 %r{/mobile/apigateway(.*)}, 'https://network.pivotal.io/products/api-gateway'
r301 %r{/mobile/data/(.*)}, 'https://network.pivotal.io/products/p-data-sync'
r301 '/mobile/index.html', 'https://network.pivotal.io/products/api-gateway'
r301 '/mobile/', 'https://network.pivotal.io/products/api-gateway'

r301 %r{/appmon/(.*)}, '/dynatrace/index.html'
r301 %r{/ruxit/(.*)}, '/dynatrace/index.html'

r301 %r{/windows/(.*)}, 'http://docs.pivotal.io/pivotalcf/2-4/windows/index.html'

# Link structure changed for ODB, service-backup and service-metrics
r301 %r{/on-demand-service-broker/(\d+)-(\d+)-\d+/(.*)}, "/svc-sdk/odb/$1-$2/$3"
r301 %r{/service-metrics/(\d+)-(\d+)-\d+/(.*)}, "/svc-sdk/service-metrics/$1-$2/$3"
r301 %r{/service-backup/(\d+)-(\d+)-\d+/(.*)}, "/svc-sdk/service-backup/$1-$2/$3"

# Redirect older versions to PDFs
r301 %r{/pivotalcf/1-2/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.2.pdf'
r301 %r{/pivotalcf/1-3/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.3.pdf'
r301 %r{/pivotalcf/1-4/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.4.pdf'
r301 %r{/pivotalcf/1-5/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.5.pdf'
r301 %r{/pivotalcf/1-6/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.6.pdf'
r301 %r{/pivotalcf/1-7/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.7.pdf'
r301 %r{/pivotalcf/1-8/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.8.pdf'
r301 %r{/pivotalcf/1-9/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.9.pdf'
r301 %r{/pivotalcf/1-10/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.10.pdf'
r301 %r{/pivotalcf/1-11/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.11.pdf'
r301 %r{/pivotalcf/1-12/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-1.12.pdf'
r301 %r{/pivotalcf/2-0/(.*)}, 'https://docs.pivotal.io/archives/pcf-docs-2.0.pdf'

r301 %r{/pcf-scheduler/1-0/(.*)}, 'https://docs.pivotal.io/archives/scheduler-1.0.pdf'
r301 %r{/pcf-scheduler/1-1/(.*)}, 'https://docs.pivotal.io/archives/scheduler-1.1.pdf'

r301 %r{/cjoc/(.*)}, 'https://docs.pivotal.io'
r301 %r{/p-riakcs/(.*)}, 'https://docs.pivotal.io'

r301 %r{/pivotalcf/(?![\d-]+)(.*)}, "/pivotalcf/2-4/$1"

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

r301 %r{/redis/syslog.html}, '/redis/1-9/installing.html#syslog'

r301 %r{/concourse-olm/(.*)}, "/p-concourse/$1"

r301 '/pivotalcf/2-4/getstarted/pcf-docs.html', '/pivotalcf/2-4/'

r301 %r{/push/1-7/(.*)}, 'http://docs.pivotal.io/archives/push-notifications-1.7.pdf'
r301 %r{/push/1-6/(.*)}, 'http://docs.pivotal.io/archives/push-notifications-1.6.pdf'

r301 %r{/pcf/nist/(.*)}, '/nist/$1'

r301 %r{/pks/1-1/concourse-helm.html}, '/pks/1-2/helm.html'
r301 %r{/pks/1-2/concourse-helm.html}, '/pks/1-2/helm.html'
r301 %r{/pks/1-3/concourse-helm.html}, '/pks/1-3/helm.html'

# Redirect older PKS to PDF
r301 %r{/runtimes/pks/1-0/(.*)}, 'https://docs.pivotal.io/archives/pks-1-0.pdf'
r301 %r{/runtimes/pks/1-1/(.*)}, 'https://docs.pivotal.io/archives/pks-1-1.pdf'
