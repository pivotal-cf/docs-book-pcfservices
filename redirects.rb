r301 %r{.*}, 'http://docs.pivotal.io$&', :if => Proc.new {|rack_env|
  rack_env['SERVER_NAME'] == 'docs.gopivotal.com' ||
    rack_env['SERVER_NAME'] == 'cf-p1-docs-prod.cfapps.io'
}
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

r302 '/pivotalcf/autoscaling/', '/pivotalcf/customizing/autoscale-configuration.html'
r302 '/pivotalcf/autoscaling/index.html', '/pivotalcf/customizing/autoscale-configuration.html'
r302 '/pivotalcf/autoscaling/create-bind-from-cli.html', '/pivotalcf/devguide/services/bind-service.html'
r302 '/pivotalcf/autoscaling/create-bind-from-console.html', '/pivotalcf/console/manage-spaces.html'
r302 '/pivotalcf/autoscaling/instance-configuration.html', '/pivotalcf/customizing/autoscale-configuration.html'
r302 '/pivotalcf/autoscaling/scheduled-scaling.html', '/pivotalcf/customizing/scheduled-scaling.html'

r302 '/pivotalcf/customizing/network-segmentation.html', '/pivotalcf/customizing/index.html'

r302 '/pivotalcf/concepts/diego/diego-components.html', '/pivotalcf/concepts/diego/diego-architecture.html#core'

r302 '/pivotalcf/', '/pivotalcf/installing/pcf-docs.html'
r302 '/pivotalcf/index.html', '/pivotalcf/installing/pcf-docs.html'

r302 '/pivotalcf/console/console-env-variables.html', '/pivotalcf/customizing/console-env-variables.html'
r302 '/pivotalcf/console/manage_accounts.html', '/pivotalcf/console/manage-accounts.html'
r302 '/pivotalcf/console/manage_spaces.html', '/pivotalcf/console/manage-spaces.html'
r302 '/pivotalcf/console/pcf_console.html', '/pivotalcf/console/dev-console.html'

r302 '/pivotalcf/customizing/backup-settings.html', '/pivotalcf/customizing/backup-restore/backup-pcf.html'
r302 '/pivotalcf/customizing/config-ssh.html', '/pivotalcf/opsguide/config-ssh.html'
r302 '/pivotalcf/customizing/nsx-switch.html', '/pivotalcf/customizing/nexus-switch.html'
r302 '/pivotalcf/customizing/pcf-aws-component-config.html', '/pivotalcf/customizing/pcf-aws-manual-config.html'
r302 '/pivotalcf/customizing/pcf-aws-er-config.html', '/pivotalcf/customizing/pcf-aws-manual-er-config.html'
r302 '/pivotalcf/customizing/pcf-aws-om-config.html', '/pivotalcf/customizing/pcf-aws-manual-om-config.html'
r302 '/pivotalcf/customizing/diego-ssh/config-ssh.html', '/pivotalcf/opsguide/config-ssh.html'
r302 '/pivotalcf/customizing/ldap-user-management.html', '/pivotalcf/customizing/external-user-management.html'

r302 %r{/devguide/installcf/(.*)}, '/cf-cli/$1'
r302 %r{/devguide/cf-cli/(.*)}, '/cf-cli/$1'

r302 '/pivotalcf/devguide/deploy-apps/api-endpoint.html', '/pivotalcf/customizing/api-endpoint.html'
r302 '/pivotalcf/devguide/deploy-apps/domains-routes.html', '/pivotalcf/devguide/deploy-apps/routes-domains.html'
r302 '/pivotalcf/devguide/deploy-apps/sts.html', '/pivotalcf/buildpacks/java/sts.html'
r302 '/pivotalcf/devguide/installcf/whats-new-v6.html', '/pivotalcf/cf-cli/getting-started.html'
r302 '/pivotalcf/devguide/installcf/http-proxy.html', '/pivotalcf/cf-cli/https-proxy.html'
r302 '/pivotalcf/devguide/services/bind-service.html', '/pivotalcf/devguide/services/managing-services.html#bind'

r302 '/pivotalcf/getstarted/', '/pivotalcf/installing/pcf-docs.html'
r302 '/pivotalcf/getstarted/index.html', '/pivotalcf/installing/pcf-docs.html'
r302 '/pivotalcf/getstarted/pcf-docs.html', '/pivotalcf/installing/pcf-docs.html'

r302 '/pivotalcf/opsguide/aws-diego-beta.html', '/pivotalcf/opsguide/deploying-diego.html'
r302 '/pivotalcf/opsguide/diego-beta.html', '/pivotalcf/opsguide/diego-overview.html'
r302 '/pivotalcf/opsguide/domains.html', '/pivotalcf/devguide/deploy-apps/domains.html'
r302 '/pivotalcf/opsguide/vsphere-diego-beta.html', '/pivotalcf/opsguide/deploying-diego.html'
r302 '/pivotalcf/opsguide/sso.html', '/pivotalcf/opsguide/auth-sso.html'

r302 '/pivotalcf/sshfs/', '/pivotalcf/index.html'
r302 '/pivotalcf/sshfs/index.html', '/pivotalcf/index.html'

r302 '/services/asynchronous-operations.html', '/services/api.html#asynchronous-operations'

r302 '/spring-cloud-services/circuit-breaker/using-a-circuit-breaker.html', '/spring-cloud-services/circuit-breaker/writing-client-applications.html'
r302 '/spring-cloud-services/config-server/writing-a-spring-client.html', '/spring-cloud-services/config-server/writing-client-applications.html'
r302 '/spring-cloud-services/service-registry/consuming-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'
r302 '/spring-cloud-services/service-registry/registering-a-service.html', '/spring-cloud-services/service-registry/writing-client-applications.html'
r302 '/pivotalcf/customizing/diego-ssh/config-ssh.html', '/pivotalcf/opsguide/config-ssh.html'
r302 '/pivotalcf/customizing/config-ssh.html', '/pivotalcf/opsguide/config-ssh.html'
r302 '/pivotalcf/devguide/deploy-apps/domains-routes.html', '/pivotalcf/devguide/deploy-apps/routes-domains.html'
r302 '/pivotalcf/concepts/diego/diego-components.html', '/pivotalcf/concepts/diego/diego-architecture.html#core'
r302 '/pivotalcf/adminguide/enabling-https-to-routers.html', '/pivotalcf/adminguide/securing-traffic.html'
r302 '/pivotalcf/opsguide/ldap-uaa.html', '/pivotalcf/opsguide/auth-sso.html'
r302 '/pivotalcf/buildpacks/ruby/ruby-prod-server.html', '/pivotalcf/buildpacks/prod-server.html'
