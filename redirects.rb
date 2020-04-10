# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# Remove 'pcf' in release notes
r301 %r{/platform/2-9/pcf-release-notes/(.*)}, '/platform/2-9/release-notes/$1'
r301 %r{/platform/2-8/pcf-release-notes/(.*)}, '/platform/2-8/release-notes/$1'
r301 %r{/platform/2-7/pcf-release-notes/(.*)}, '/platform/2-7/release-notes/$1'

# PASW redirects for /platform/application-service-windows to old way
r301 %r{/pivotalcf/2-7/windows/(.*)}, "/platform/application-service-windows/2-7/$1"
r301 %r{/platform/application-service-windows/2-6/(.*)}, "/pivotalcf/2-6/windows/$1"
r301 %r{/platform/application-service-windows/2-5/(.*)}, "/pivotalcf/2-5/windows/$1"
r301 %r{/platform/application-service-windows/2-4/(.*)}, "/pivotalcf/2-4/windows/$1"
r301 %r{/platform/application-service-windows/2-3/(.*)}, "/pivotalcf/2-3/windows/$1"

# Redirects for Application Service Book starting in 2.7

r301 %r{/platform/application-service/2-6/buildpacks/(.*)}, "/pivotalcf/2-6/buildpacks/$1"
r301 %r{/platform/application-service/2-6/adminguide/(.*)}, "/pivotalcf/2-6/adminguide/$1"
r301 %r{/platform/application-service/2-6/cf-cli/(.*)}, "/pivotalcf/2-6/cf-cli/$1"
r301 %r{/platform/application-service/2-6/concepts/(.*)}, "/pivotalcf/2-6/concepts/$1"
r301 %r{/platform/application-service/2-6/devguide/(.*)}, "/pivotalcf/2-6/devguide/$1"
r301 %r{/platform/application-service/2-6/loggregator/(.*)}, "/pivotalcf/2-6/loggregator/$1"
r301 %r{/platform/application-service/2-6/routing/(.*)}, "/pivotalcf/2-6/routing/$1"
r301 %r{/platform/application-service/2-6/services/(.*)}, "/pivotalcf/2-6/services/$1"
r301 %r{/platform/application-service/2-6/uaa/(.*)}, "/pivotalcf/2-6/uaa/$1"
r301 %r{/platform/application-service/2-6/metric-registrar/(.*)}, "/pivotalcf/2-6/metric-registrar/$1"
r301 %r{/platform/application-service/2-6/mysql/(.*)}, "/pivotalcf/2-6/mysql/$1"
r301 %r{/platform/application-service/2-6/overview/(.*)}, "/pivotalcf/2-6/pas/$1"
r301 %r{/platform/application-service/2-6/appsman-services/(.*)}, "/pivotalcf/2-6/appsman-services/$1"
r301 %r{/platform/application-service/2-6/console/(.*)}, "/pivotalcf/2-6/console/$1"

r301 %r{/platform/application-service/2-5/buildpacks/(.*)}, "/pivotalcf/2-5/buildpacks/$1"
r301 %r{/platform/application-service/2-5/adminguide/(.*)}, "/pivotalcf/2-5/adminguide/$1"
r301 %r{/platform/application-service/2-5/cf-cli/(.*)}, "/pivotalcf/2-5/cf-cli/$1"
r301 %r{/platform/application-service/2-5/concepts/(.*)}, "/pivotalcf/2-5/concepts/$1"
r301 %r{/platform/application-service/2-5/devguide/(.*)}, "/pivotalcf/2-5/devguide/$1"
r301 %r{/platform/application-service/2-5/loggregator/(.*)}, "/pivotalcf/2-5/loggregator/$1"
r301 %r{/platform/application-service/2-5/routing/(.*)}, "/pivotalcf/2-5/routing/$1"
r301 %r{/platform/application-service/2-5/services/(.*)}, "/pivotalcf/2-5/services/$1"
r301 %r{/platform/application-service/2-5/uaa/(.*)}, "/pivotalcf/2-5/uaa/$1"
r301 %r{/platform/application-service/2-5/metric-registrar/(.*)}, "/pivotalcf/2-5/metric-registrar/$1"
r301 %r{/platform/application-service/2-5/mysql/(.*)}, "/pivotalcf/2-5/mysql/$1"
r301 %r{/platform/application-service/2-5/overview/(.*)}, "/pivotalcf/2-5/pas/$1"
r301 %r{/platform/application-service/2-5/appsman-services/(.*)}, "/pivotalcf/2-5/appsman-services/$1"
r301 %r{/platform/application-service/2-5/console/(.*)}, "/pivotalcf/2-5/console/$1"

r301 %r{/platform/application-service/2-4/buildpacks/(.*)}, "/pivotalcf/2-4/buildpacks/$1"
r301 %r{/platform/application-service/2-4/adminguide/(.*)}, "/pivotalcf/2-4/adminguide/$1"
r301 %r{/platform/application-service/2-4/cf-cli/(.*)}, "/pivotalcf/2-4/cf-cli/$1"
r301 %r{/platform/application-service/2-4/concepts/(.*)}, "/pivotalcf/2-4/concepts/$1"
r301 %r{/platform/application-service/2-4/devguide/(.*)}, "/pivotalcf/2-4/devguide/$1"
r301 %r{/platform/application-service/2-4/loggregator/(.*)}, "/pivotalcf/2-4/loggregator/$1"
r301 %r{/platform/application-service/2-4/routing/(.*)}, "/pivotalcf/2-4/routing/$1"
r301 %r{/platform/application-service/2-4/services/(.*)}, "/pivotalcf/2-4/services/$1"
r301 %r{/platform/application-service/2-4/uaa/(.*)}, "/pivotalcf/2-4/uaa/$1"
r301 %r{/platform/application-service/2-4/metric-registrar/(.*)}, "/pivotalcf/2-4/metric-registrar/$1"
r301 %r{/platform/application-service/2-4/mysql/(.*)}, "/pivotalcf/2-4/mysql/$1"
r301 %r{/platform/application-service/2-4/overview/(.*)}, "/pivotalcf/2-4/pas/$1"
r301 %r{/platform/application-service/2-4/appsman-services/(.*)}, "/pivotalcf/2-4/appsman-services/$1"
r301 %r{/platform/application-service/2-4/console/(.*)}, "/pivotalcf/2-4/console/$1"

r301 %r{/platform/application-service/2-3/buildpacks/(.*)}, "/pivotalcf/2-3/buildpacks/$1"
r301 %r{/platform/application-service/2-3/adminguide/(.*)}, "/pivotalcf/2-3/adminguide/$1"
r301 %r{/platform/application-service/2-3/cf-cli/(.*)}, "/pivotalcf/2-3/cf-cli/$1"
r301 %r{/platform/application-service/2-3/concepts/(.*)}, "/pivotalcf/2-3/concepts/$1"
r301 %r{/platform/application-service/2-3/devguide/(.*)}, "/pivotalcf/2-3/devguide/$1"
r301 %r{/platform/application-service/2-3/loggregator/(.*)}, "/pivotalcf/2-3/loggregator/$1"
r301 %r{/platform/application-service/2-3/routing/(.*)}, "/pivotalcf/2-3/routing/$1"
r301 %r{/platform/application-service/2-3/services/(.*)}, "/pivotalcf/2-3/services/$1"
r301 %r{/platform/application-service/2-3/uaa/(.*)}, "/pivotalcf/2-3/uaa/$1"
r301 %r{/platform/application-service/2-3/metric-registrar/(.*)}, "/pivotalcf/2-3/metric-registrar/$1"
r301 %r{/platform/application-service/2-3/mysql/(.*)}, "/pivotalcf/2-3/mysql/$1"
r301 %r{/platform/application-service/2-3/overview/(.*)}, "/pivotalcf/2-3/pas/$1"
r301 %r{/platform/application-service/2-3/appsman-services/(.*)}, "/pivotalcf/2-3/appsman-services/$1"
r301 %r{/platform/application-service/2-3/console/(.*)}, "/pivotalcf/2-3/console/$1"

# Install Redirects

r301 '/platform/application-service/2-6/operating/configure-pas.html', '/pivotalcf/2-6/customizing/configure-pas.html'
r301 '/platform/application-service/2-6/operating/console-login.html', '/pivotalcf/2-6/customizing/console-login.html'
r301 '/platform/application-service/2-6/operating/create-pas-dbs.html', '/pivotalcf/2-6/customizing/create-pas-dbs.html'
r301 '/platform/application-service/2-6/operating/creating-account.html', '/pivotalcf/2-6/customizing/creating-account.html'
r301 '/platform/application-service/2-6/operating/custom-load-balancer.html', '/pivotalcf/2-6/customizing/custom-load-balancer.html'
r301 '/platform/application-service/2-6/operating/custom-syslog-rules.html', '/pivotalcf/2-6/customizing/custom-syslog-rules.html'
r301 '/platform/application-service/2-6/operating/day2.html' , '/pivotalcf/2-6/customizing/day2.html'
r301 '/platform/application-service/2-6/operating/pas-file-storage.html', '/pivotalcf/2-6/customizing/pas-file-storage.html'
r301 '/platform/application-service/2-6/operating/pas-vsphere-requirements.html', '/pivotalcf/2-6/customizing/pas-vsphere-requirements.html'
r301 '/platform/application-service/2-6/operating/pas.html', '/pivotalcf/2-6/customizing/pas.html'
r301 '/platform/application-service/2-6/operating/diagnostics.html', '/pivotalcf/2-6/customizing/diagnostics.html'
r301 '/platform/application-service/2-6/operating/disk-format.html', '/pivotalcf/2-6/customizing/disk-format.html'
r301 'platform/application-service/2-6/operating/elb-ssh-proxy.html/', '/pivotalcf/2-6/customizing/elb-ssh-proxy.html'
r301 '/platform/application-service/2-6/operating/external-user-management.html', '/pivotalcf/2-6/customizing/external-user-management.html'
r301 '/platform/application-service/2-6/operating/f5-lb.html', '/pivotalcf/2-6/customizing/f5-lb.html'
r301 '/platform/application-service/2-6/operating/frontend-idle-timeout.html', '/pivotalcf/2-6/customizing/frontend-idle-timeout.html'
r301 '/platform/application-service/2-6/operating/quickstart-pas.html', '/pivotalcf/2-6/customizing/quickstart-pas.html'
r301 '/platform/application-service/2-6/operating/route-service-lookup.html ', '/pivotalcf/2-6/customizing/route-service-lookup.html'
r301 '/platform/application-service/2-6/operating/api-endpoint.html', '/pivotalcf/2-6/customizing/api-endpoint.html'
r301 '/platform/application-service/2-6/operating/gcp-troubleshooting.html', '/pivotalcf/2-6/customizing/gcp-troubleshooting.html'
r301 '/platform/application-service/2-6/operating/small-footprint.html', '/pivotalcf/2-6/customizing/small-footprint.html'
r301 '/platform/application-service/2-6/operating/installing-pcf-is.html', '/pivotalcf/2-6/customizing/installing-pcf-is.html'
r301 '/platform/application-service/2-6/operating/cfpush-availability-during-upgrade.html', '/pivotalcf/2-6/customizing/cfpush-availability-during-upgrade.html'
r301 '/platform/application-service/2-6/operating/user-types.html', '/pivotalcf/2-6/customizing/user-types.html'
r301 '/platform/application-service/2-6/operating/vsphere-nsx-t.html', '/pivotalcf/2-6/customizing/vsphere-nsx-t.html'
r301 '/platform/application-service/2-6/operating/configure-lb.html', '/pivotalcf/2-6/customizing/configure-lb.html'

r301 '/platform/application-service/2-5/operating/configure-pas.html', '/pivotalcf/2-5/customizing/configure-pas.html'
r301 '/platform/application-service/2-5/operating/console-login.html', '/pivotalcf/2-5/customizing/console-login.html'
r301 '/platform/application-service/2-5/operating/create-pas-dbs.html', '/pivotalcf/2-5/customizing/create-pas-dbs.html'
r301 '/platform/application-service/2-5/operating/creating-account.html', '/pivotalcf/2-5/customizing/creating-account.html'
r301 '/platform/application-service/2-5/operating/custom-load-balancer.html', '/pivotalcf/2-5/customizing/custom-load-balancer.html'
r301 '/platform/application-service/2-5/operating/custom-syslog-rules.html', '/pivotalcf/2-5/customizing/custom-syslog-rules.html'
r301 '/platform/application-service/2-5/operating/day2.html' , '/pivotalcf/2-5/customizing/day2.html'
r301 '/platform/application-service/2-5/operating/pas-file-storage.html', '/pivotalcf/2-5/customizing/pas-file-storage.html'
r301 '/platform/application-service/2-5/operating/pas-vsphere-requirements.html', '/pivotalcf/2-5/customizing/pas-vsphere-requirements.html'
r301 '/platform/application-service/2-5/operating/pas.html', '/pivotalcf/2-5/customizing/pas.html'
r301 '/platform/application-service/2-5/operating/diagnostics.html', '/pivotalcf/2-5/customizing/diagnostics.html'
r301 '/platform/application-service/2-5/operating/disk-format.html', '/pivotalcf/2-5/customizing/disk-format.html'
r301 'platform/application-service/2-5/operating/elb-ssh-proxy.html/', '/pivotalcf/2-5/customizing/elb-ssh-proxy.html'
r301 '/platform/application-service/2-5/operating/external-user-management.html', '/pivotalcf/2-5/customizing/external-user-management.html'
r301 '/platform/application-service/2-5/operating/f5-lb.html', '/pivotalcf/2-5/customizing/f5-lb.html'
r301 '/platform/application-service/2-5/operating/frontend-idle-timeout.html', '/pivotalcf/2-5/customizing/frontend-idle-timeout.html'
r301 '/platform/application-service/2-5/operating/quickstart-pas.html', '/pivotalcf/2-5/customizing/quickstart-pas.html'
r301 '/platform/application-service/2-5/operating/route-service-lookup.html ', '/pivotalcf/2-5/customizing/route-service-lookup.html'
r301 '/platform/application-service/2-5/operating/api-endpoint.html', '/pivotalcf/2-5/customizing/api-endpoint.html'
r301 '/platform/application-service/2-5/operating/gcp-troubleshooting.html', '/pivotalcf/2-5/customizing/gcp-troubleshooting.html'
r301 '/platform/application-service/2-5/operating/small-footprint.html', '/pivotalcf/2-5/customizing/small-footprint.html'
r301 '/platform/application-service/2-5/operating/installing-pcf-is.html', '/pivotalcf/2-5/customizing/installing-pcf-is.html'
r301 '/platform/application-service/2-5/operating/cfpush-availability-during-upgrade.html', '/pivotalcf/2-5/customizing/cfpush-availability-during-upgrade.html'
r301 '/platform/application-service/2-5/operating/user-types.html', '/pivotalcf/2-5/customizing/user-types.html'
r301 '/platform/application-service/2-5/operating/vsphere-nsx-t.html', '/pivotalcf/2-5/customizing/vsphere-nsx-t.html'
r301 '/platform/application-service/2-5/operating/configure-lb.html', '/pivotalcf/2-5/customizing/configure-lb.html'

r301 '/platform/application-service/2-4/operating/configure-pas.html', '/pivotalcf/2-4/customizing/configure-pas.html'
r301 '/platform/application-service/2-4/operating/console-login.html', '/pivotalcf/2-4/customizing/console-login.html'
r301 '/platform/application-service/2-4/operating/create-pas-dbs.html', '/pivotalcf/2-4/customizing/create-pas-dbs.html'
r301 '/platform/application-service/2-4/operating/creating-account.html', '/pivotalcf/2-4/customizing/creating-account.html'
r301 '/platform/application-service/2-4/operating/custom-load-balancer.html', '/pivotalcf/2-4/customizing/custom-load-balancer.html'
r301 '/platform/application-service/2-4/operating/custom-syslog-rules.html', '/pivotalcf/2-4/customizing/custom-syslog-rules.html'
r301 '/platform/application-service/2-4/operating/day2.html' , '/pivotalcf/2-4/customizing/day2.html'
r301 '/platform/application-service/2-4/operating/pas-file-storage.html', '/pivotalcf/2-4/customizing/pas-file-storage.html'
r301 '/platform/application-service/2-4/operating/pas-vsphere-requirements.html', '/pivotalcf/2-4/customizing/pas-vsphere-requirements.html'
r301 '/platform/application-service/2-4/operating/pas.html', '/pivotalcf/2-4/customizing/pas.html'
r301 '/platform/application-service/2-4/operating/diagnostics.html', '/pivotalcf/2-4/customizing/diagnostics.html'
r301 '/platform/application-service/2-4/operating/disk-format.html', '/pivotalcf/2-4/customizing/disk-format.html'
r301 'platform/application-service/2-4/operating/elb-ssh-proxy.html/', '/pivotalcf/2-4/customizing/elb-ssh-proxy.html'
r301 '/platform/application-service/2-4/operating/external-user-management.html', '/pivotalcf/2-4/customizing/external-user-management.html'
r301 '/platform/application-service/2-4/operating/f5-lb.html', '/pivotalcf/2-4/customizing/f5-lb.html'
r301 '/platform/application-service/2-4/operating/frontend-idle-timeout.html', '/pivotalcf/2-4/customizing/frontend-idle-timeout.html'
r301 '/platform/application-service/2-4/operating/quickstart-pas.html', '/pivotalcf/2-4/customizing/quickstart-pas.html'
r301 '/platform/application-service/2-4/operating/route-service-lookup.html ', '/pivotalcf/2-4/customizing/route-service-lookup.html'
r301 '/platform/application-service/2-4/operating/api-endpoint.html', '/pivotalcf/2-4/customizing/api-endpoint.html'
r301 '/platform/application-service/2-4/operating/gcp-troubleshooting.html', '/pivotalcf/2-4/customizing/gcp-troubleshooting.html'
r301 '/platform/application-service/2-4/operating/small-footprint.html', '/pivotalcf/2-4/customizing/small-footprint.html'
r301 '/platform/application-service/2-4/operating/installing-pcf-is.html', '/pivotalcf/2-4/customizing/installing-pcf-is.html'
r301 '/platform/application-service/2-4/operating/cfpush-availability-during-upgrade.html', '/pivotalcf/2-4/customizing/cfpush-availability-during-upgrade.html'
r301 '/platform/application-service/2-4/operating/user-types.html', '/pivotalcf/2-4/customizing/user-types.html'
r301 '/platform/application-service/2-4/operating/vsphere-nsx-t.html', '/pivotalcf/2-4/customizing/vsphere-nsx-t.html'
r301 '/platform/application-service/2-4/operating/configure-lb.html', '/pivotalcf/2-4/customizing/configure-lb.html'

r301 '/platform/application-service/2-3/operating/configure-pas.html', '/pivotalcf/2-3/customizing/configure-pas.html'
r301 '/platform/application-service/2-3/operating/console-login.html', '/pivotalcf/2-3/customizing/console-login.html'
r301 '/platform/application-service/2-3/operating/create-pas-dbs.html', '/pivotalcf/2-3/customizing/create-pas-dbs.html'
r301 '/platform/application-service/2-3/operating/creating-account.html', '/pivotalcf/2-3/customizing/creating-account.html'
r301 '/platform/application-service/2-3/operating/custom-load-balancer.html', '/pivotalcf/2-3/customizing/custom-load-balancer.html'
r301 '/platform/application-service/2-3/operating/custom-syslog-rules.html', '/pivotalcf/2-3/customizing/custom-syslog-rules.html'
r301 '/platform/application-service/2-3/operating/day2.html' , '/pivotalcf/2-3/customizing/day2.html'
r301 '/platform/application-service/2-3/operating/pas-file-storage.html', '/pivotalcf/2-3/customizing/pas-file-storage.html'
r301 '/platform/application-service/2-3/operating/pas-vsphere-requirements.html', '/pivotalcf/2-3/customizing/pas-vsphere-requirements.html'
r301 '/platform/application-service/2-3/operating/pas.html', '/pivotalcf/2-3/customizing/pas.html'
r301 '/platform/application-service/2-3/operating/diagnostics.html', '/pivotalcf/2-3/customizing/diagnostics.html'
r301 '/platform/application-service/2-3/operating/disk-format.html', '/pivotalcf/2-3/customizing/disk-format.html'
r301 'platform/application-service/2-3/operating/elb-ssh-proxy.html/', '/pivotalcf/2-3/customizing/elb-ssh-proxy.html'
r301 '/platform/application-service/2-3/operating/external-user-management.html', '/pivotalcf/2-3/customizing/external-user-management.html'
r301 '/platform/application-service/2-3/operating/f5-lb.html', '/pivotalcf/2-3/customizing/f5-lb.html'
r301 '/platform/application-service/2-3/operating/frontend-idle-timeout.html', '/pivotalcf/2-3/customizing/frontend-idle-timeout.html'
r301 '/platform/application-service/2-3/operating/quickstart-pas.html', '/pivotalcf/2-3/customizing/quickstart-pas.html'
r301 '/platform/application-service/2-3/operating/route-service-lookup.html ', '/pivotalcf/2-3/customizing/route-service-lookup.html'
r301 '/platform/application-service/2-3/operating/api-endpoint.html', '/pivotalcf/2-3/customizing/api-endpoint.html'
r301 '/platform/application-service/2-3/operating/gcp-troubleshooting.html', '/pivotalcf/2-3/customizing/gcp-troubleshooting.html'
r301 '/platform/application-service/2-3/operating/small-footprint.html', '/pivotalcf/2-3/customizing/small-footprint.html'
r301 '/platform/application-service/2-3/operating/installing-pcf-is.html', '/pivotalcf/2-3/customizing/installing-pcf-is.html'
r301 '/platform/application-service/2-3/operating/cfpush-availability-during-upgrade.html', '/pivotalcf/2-3/customizing/cfpush-availability-during-upgrade.html'
r301 '/platform/application-service/2-3/operating/user-types.html', '/pivotalcf/2-3/customizing/user-types.html'
r301 '/platform/application-service/2-3/operating/vsphere-nsx-t.html', '/pivotalcf/2-3/customizing/vsphere-nsx-t.html'
r301 '/platform/application-service/2-3/operating/configure-lb.html', '/pivotalcf/2-3/customizing/configure-lb.html'

# Ops Guide

 r301 '/platform/application-service/2-6/operating/gdpr.html', '/pivotalcf/2-6/opsguide/gdpr.html'
 r301 '/platform/application-service/2-6/operating/id-jobs.html', '/pivotalcf/2-6/opsguide/id-jobs.html'
 r301 '/platform/application-service/2-6/operating/identify-metric-source.html', '/pivotalcf/2-6/opsguide/identify-metric-source.html'
 r301 '/platform/application-service/2-6/operating/accounting-report-apps-man.html', '/pivotalcf/2-6/opsguide/accounting-report-apps-man.html'
 r301 '/platform/application-service/2-6/operating/accounting-report.html', '/pivotalcf/2-6/opsguide/accounting-report.html'
 r301 '/platform/application-service/2-6/operating/internal-databases.html', '/pivotalcf/2-6/opsguide/internal-databases.html'
 r301 '/platform/application-service/2-6/operating/api-endpoint.html', '/pivotalcf/2-6/opsguide/api-endpoint.html'
 r301 '/platform/application-service/2-6/operating/logging-config-opsman.html', '/pivotalcf/2-6/opsguide/logging-config-opsman.html'
 r301 '/platform/application-service/2-6/operating/app-sec-groups.html', '/pivotalcf/2-6/opsguide/app-sec-groups.html'
 r301 '/platform/application-service/2-6/operating/notifications-asg.html', '/pivotalcf/2-6/opsguide/notifications-asg.html'
 r301 '/platform/application-service/2-6/operating/auth-sso.html', '/pivotalcf/2-6/opsguide/auth-sso.html'
 r301 '/platform/application-service/2-6/operating/ca-sso-config.html', '/pivotalcf/2-6/opsguide/ca-sso-config.html'
 r301 '/platform/application-service/2-6/operating/ping-federate-sso-configuration.html', '/pivotalcf/2-6/opsguide/ping-federate-sso-configuration.html'
 r301 '/platform/application-service/2-6/operating/config-cell-cleanup.html', '/pivotalcf/2-6/opsguide/config-cell-cleanup.html'
 r301 '/platform/application-service/2-6/operating/power-failure.html', '/pivotalcf/2-6/opsguide/power-failure.html'
 r301 '/platform/application-service/2-6/operating/config-proxy.html', '/pivotalcf/2-6/opsguide/config-proxy.html'
 r301 '/platform/application-service/2-6/operating/pw-policy.html', '/pivotalcf/2-6/opsguide/pw-policy.html'
 r301 '/platform/application-service/2-6/operating/pws_upgrade_load.html', '/pivotalcf/2-6/opsguide/pws_upgrade_load.html'
 r301 '/platform/application-service/2-6/operating/config-ssh.html', '/pivotalcf/2-6/opsguide/config-ssh.html'
 r301 '/platform/application-service/2-6/operating/rotate-ccdb-key.html', '/pivotalcf/2-6/opsguide/rotate-ccdb-key.html'
 r301 '/platform/application-service/2-6/operating/configure-multi-foundation.html', '/pivotalcf/2-6/opsguide/configure-multi-foundation.html'
 r301 '/platform/application-service/2-6/operating/scaling-cloud-controller.html', '/pivotalcf/2-6/opsguide/scaling-cloud-controller.html'
 r301 '/platform/application-service/2-6/operating/creating-account.html', '/pivotalcf/2-6/opsguide/creating-account.html'
 r301 '/platform/application-service/2-6/operating/scaling-ert-components.html', '/pivotalcf/2-6/opsguide/scaling-ert-components.html'
 r301 '/platform/application-service/2-6/operating/credential-rotation.html', '/pivotalcf/2-6/opsguide/credential-rotation.html'
 r301 '/platform/application-service/2-6/operating/secure-si-creds.html', '/pivotalcf/2-6/opsguide/secure-si-creds.html'
 r301 '/platform/application-service/2-6/operating/custom-branding.html', '/pivotalcf/2-6/opsguide/custom-branding.html'
 r301 '/platform/application-service/2-6/operating/securing-endpoints.html', '/pivotalcf/2-6/opsguide/securing-endpoints.html'
 r301 '/platform/application-service/2-6/operating/deploying-service-mesh.html', '/pivotalcf/2-6/opsguide/deploying-service-mesh.html'
 r301 '/platform/application-service/2-6/operating/security_config.html', '/pivotalcf/2-6/opsguide/security_config.html'
 r301 '/platform/application-service/2-6/operating/docker-registry.html', '/pivotalcf/2-6/opsguide/docker-registry.html'
 r301 '/platform/application-service/2-6/operating/ssl-term-haproxy.html', '/pivotalcf/2-6/opsguide/ssl-term-haproxy.html'
 r301 '/platform/application-service/2-6/operating/enable-vol-services.html', '/pivotalcf/2-6/opsguide/enable-vol-services.html'
 r301 '/platform/application-service/2-6/operating/ssl-term.html', '/pivotalcf/2-6/opsguide/ssl-term.html'
 r301 '/platform/application-service/2-6/operating/er_network.html', '/pivotalcf/2-6/opsguide/er_network.html'
 r301 '/platform/application-service/2-6/operating/switching-domains.html', '/pivotalcf/2-6/opsguide/switching-domains.html'
 r301 '/platform/application-service/2-6/operating/external-user-management.html', '/pivotalcf/2-6/opsguide/external-user-management.html'
 r301 '/platform/application-service/2-6/operating/tcp-routing-ert-config.html', '/pivotalcf/2-6/opsguide/tcp-routing-ert-config.html'


 r301 '/platform/application-service/2-5/operating/gdpr.html', '/pivotalcf/2-5/opsguide/gdpr.html'
 r301 '/platform/application-service/2-5/operating/id-jobs.html', '/pivotalcf/2-5/opsguide/id-jobs.html'
 r301 '/platform/application-service/2-5/operating/identify-metric-source.html', '/pivotalcf/2-5/opsguide/identify-metric-source.html'
 r301 '/platform/application-service/2-5/operating/accounting-report-apps-man.html', '/pivotalcf/2-5/opsguide/accounting-report-apps-man.html'
 r301 '/platform/application-service/2-5/operating/accounting-report.html', '/pivotalcf/2-5/opsguide/accounting-report.html'
 r301 '/platform/application-service/2-5/operating/internal-databases.html', '/pivotalcf/2-5/opsguide/internal-databases.html'
 r301 '/platform/application-service/2-5/operating/api-endpoint.html', '/pivotalcf/2-5/opsguide/api-endpoint.html'
 r301 '/platform/application-service/2-5/operating/logging-config-opsman.html', '/pivotalcf/2-5/opsguide/logging-config-opsman.html'
 r301 '/platform/application-service/2-5/operating/app-sec-groups.html', '/pivotalcf/2-5/opsguide/app-sec-groups.html'
 r301 '/platform/application-service/2-5/operating/notifications-asg.html', '/pivotalcf/2-5/opsguide/notifications-asg.html'
 r301 '/platform/application-service/2-5/operating/auth-sso.html', '/pivotalcf/2-5/opsguide/auth-sso.html'
 r301 '/platform/application-service/2-5/operating/ca-sso-config.html', '/pivotalcf/2-5/opsguide/ca-sso-config.html'
 r301 '/platform/application-service/2-5/operating/ping-federate-sso-configuration.html', '/pivotalcf/2-5/opsguide/ping-federate-sso-configuration.html'
 r301 '/platform/application-service/2-5/operating/config-cell-cleanup.html', '/pivotalcf/2-5/opsguide/config-cell-cleanup.html'
 r301 '/platform/application-service/2-5/operating/power-failure.html', '/pivotalcf/2-5/opsguide/power-failure.html'
 r301 '/platform/application-service/2-5/operating/config-proxy.html', '/pivotalcf/2-5/opsguide/config-proxy.html'
 r301 '/platform/application-service/2-5/operating/pw-policy.html', '/pivotalcf/2-5/opsguide/pw-policy.html'
 r301 '/platform/application-service/2-5/operating/pws_upgrade_load.html', '/pivotalcf/2-5/opsguide/pws_upgrade_load.html'
 r301 '/platform/application-service/2-5/operating/config-ssh.html', '/pivotalcf/2-5/opsguide/config-ssh.html'
 r301 '/platform/application-service/2-5/operating/rotate-ccdb-key.html', '/pivotalcf/2-5/opsguide/rotate-ccdb-key.html'
 r301 '/platform/application-service/2-5/operating/configure-multi-foundation.html', '/pivotalcf/2-5/opsguide/configure-multi-foundation.html'
 r301 '/platform/application-service/2-5/operating/scaling-cloud-controller.html', '/pivotalcf/2-5/opsguide/scaling-cloud-controller.html'
 r301 '/platform/application-service/2-5/operating/creating-account.html', '/pivotalcf/2-5/opsguide/creating-account.html'
 r301 '/platform/application-service/2-5/operating/scaling-ert-components.html', '/pivotalcf/2-5/opsguide/scaling-ert-components.html'
 r301 '/platform/application-service/2-5/operating/credential-rotation.html', '/pivotalcf/2-5/opsguide/credential-rotation.html'
 r301 '/platform/application-service/2-5/operating/secure-si-creds.html', '/pivotalcf/2-5/opsguide/secure-si-creds.html'
 r301 '/platform/application-service/2-5/operating/custom-branding.html', '/pivotalcf/2-5/opsguide/custom-branding.html'
 r301 '/platform/application-service/2-5/operating/securing-endpoints.html', '/pivotalcf/2-5/opsguide/securing-endpoints.html'
 r301 '/platform/application-service/2-5/operating/deploying-service-mesh.html', '/pivotalcf/2-5/opsguide/deploying-service-mesh.html'
 r301 '/platform/application-service/2-5/operating/security_config.html', '/pivotalcf/2-5/opsguide/security_config.html'
 r301 '/platform/application-service/2-5/operating/docker-registry.html', '/pivotalcf/2-5/opsguide/docker-registry.html'
 r301 '/platform/application-service/2-5/operating/ssl-term-haproxy.html', '/pivotalcf/2-5/opsguide/ssl-term-haproxy.html'
 r301 '/platform/application-service/2-5/operating/enable-vol-services.html', '/pivotalcf/2-5/opsguide/enable-vol-services.html'
 r301 '/platform/application-service/2-5/operating/ssl-term.html', '/pivotalcf/2-5/opsguide/ssl-term.html'
 r301 '/platform/application-service/2-5/operating/er_network.html', '/pivotalcf/2-5/opsguide/er_network.html'
 r301 '/platform/application-service/2-5/operating/switching-domains.html', '/pivotalcf/2-5/opsguide/switching-domains.html'
 r301 '/platform/application-service/2-5/operating/external-user-management.html', '/pivotalcf/2-5/opsguide/external-user-management.html'
 r301 '/platform/application-service/2-5/operating/tcp-routing-ert-config.html', '/pivotalcf/2-5/opsguide/tcp-routing-ert-config.html'

 r301 '/platform/application-service/2-4/operating/gdpr.html', '/pivotalcf/2-4/opsguide/gdpr.html'
 r301 '/platform/application-service/2-4/operating/id-jobs.html', '/pivotalcf/2-4/opsguide/id-jobs.html'
 r301 '/platform/application-service/2-4/operating/identify-metric-source.html', '/pivotalcf/2-4/opsguide/identify-metric-source.html'
 r301 '/platform/application-service/2-4/operating/accounting-report-apps-man.html', '/pivotalcf/2-4/opsguide/accounting-report-apps-man.html'
 r301 '/platform/application-service/2-4/operating/accounting-report.html', '/pivotalcf/2-4/opsguide/accounting-report.html'
 r301 '/platform/application-service/2-4/operating/internal-databases.html', '/pivotalcf/2-4/opsguide/internal-databases.html'
 r301 '/platform/application-service/2-4/operating/api-endpoint.html', '/pivotalcf/2-4/opsguide/api-endpoint.html'
 r301 '/platform/application-service/2-4/operating/logging-config-opsman.html', '/pivotalcf/2-4/opsguide/logging-config-opsman.html'
 r301 '/platform/application-service/2-4/operating/app-sec-groups.html', '/pivotalcf/2-4/opsguide/app-sec-groups.html'
 r301 '/platform/application-service/2-4/operating/notifications-asg.html', '/pivotalcf/2-4/opsguide/notifications-asg.html'
 r301 '/platform/application-service/2-4/operating/auth-sso.html', '/pivotalcf/2-4/opsguide/auth-sso.html'
 r301 '/platform/application-service/2-4/operating/ca-sso-config.html', '/pivotalcf/2-4/opsguide/ca-sso-config.html'
 r301 '/platform/application-service/2-4/operating/ping-federate-sso-configuration.html', '/pivotalcf/2-4/opsguide/ping-federate-sso-configuration.html'
 r301 '/platform/application-service/2-4/operating/config-cell-cleanup.html', '/pivotalcf/2-4/opsguide/config-cell-cleanup.html'
 r301 '/platform/application-service/2-4/operating/power-failure.html', '/pivotalcf/2-4/opsguide/power-failure.html'
 r301 '/platform/application-service/2-4/operating/config-proxy.html', '/pivotalcf/2-4/opsguide/config-proxy.html'
 r301 '/platform/application-service/2-4/operating/pw-policy.html', '/pivotalcf/2-4/opsguide/pw-policy.html'
 r301 '/platform/application-service/2-4/operating/pws_upgrade_load.html', '/pivotalcf/2-4/opsguide/pws_upgrade_load.html'
 r301 '/platform/application-service/2-4/operating/config-ssh.html', '/pivotalcf/2-4/opsguide/config-ssh.html'
 r301 '/platform/application-service/2-4/operating/rotate-ccdb-key.html', '/pivotalcf/2-4/opsguide/rotate-ccdb-key.html'
 r301 '/platform/application-service/2-4/operating/configure-multi-foundation.html', '/pivotalcf/2-4/opsguide/configure-multi-foundation.html'
 r301 '/platform/application-service/2-4/operating/scaling-cloud-controller.html', '/pivotalcf/2-4/opsguide/scaling-cloud-controller.html'
 r301 '/platform/application-service/2-4/operating/creating-account.html', '/pivotalcf/2-4/opsguide/creating-account.html'
 r301 '/platform/application-service/2-4/operating/scaling-ert-components.html', '/pivotalcf/2-4/opsguide/scaling-ert-components.html'
 r301 '/platform/application-service/2-4/operating/credential-rotation.html', '/pivotalcf/2-4/opsguide/credential-rotation.html'
 r301 '/platform/application-service/2-4/operating/secure-si-creds.html', '/pivotalcf/2-4/opsguide/secure-si-creds.html'
 r301 '/platform/application-service/2-4/operating/custom-branding.html', '/pivotalcf/2-4/opsguide/custom-branding.html'
 r301 '/platform/application-service/2-4/operating/securing-endpoints.html', '/pivotalcf/2-4/opsguide/securing-endpoints.html'
 r301 '/platform/application-service/2-4/operating/deploying-service-mesh.html', '/pivotalcf/2-4/opsguide/deploying-service-mesh.html'
 r301 '/platform/application-service/2-4/operating/security_config.html', '/pivotalcf/2-4/opsguide/security_config.html'
 r301 '/platform/application-service/2-4/operating/docker-registry.html', '/pivotalcf/2-4/opsguide/docker-registry.html'
 r301 '/platform/application-service/2-4/operating/ssl-term-haproxy.html', '/pivotalcf/2-4/opsguide/ssl-term-haproxy.html'
 r301 '/platform/application-service/2-4/operating/enable-vol-services.html', '/pivotalcf/2-4/opsguide/enable-vol-services.html'
 r301 '/platform/application-service/2-4/operating/ssl-term.html', '/pivotalcf/2-4/opsguide/ssl-term.html'
 r301 '/platform/application-service/2-4/operating/er_network.html', '/pivotalcf/2-4/opsguide/er_network.html'
 r301 '/platform/application-service/2-4/operating/switching-domains.html', '/pivotalcf/2-4/opsguide/switching-domains.html'
 r301 '/platform/application-service/2-4/operating/external-user-management.html', '/pivotalcf/2-4/opsguide/external-user-management.html'
 r301 '/platform/application-service/2-4/operating/tcp-routing-ert-config.html', '/pivotalcf/2-4/opsguide/tcp-routing-ert-config.html'

 r301 '/platform/application-service/2-3/operating/gdpr.html', '/pivotalcf/2-3/opsguide/gdpr.html'
 r301 '/platform/application-service/2-3/operating/id-jobs.html', '/pivotalcf/2-3/opsguide/id-jobs.html'
 r301 '/platform/application-service/2-3/operating/identify-metric-source.html', '/pivotalcf/2-3/opsguide/identify-metric-source.html'
 r301 '/platform/application-service/2-3/operating/accounting-report-apps-man.html', '/pivotalcf/2-3/opsguide/accounting-report-apps-man.html'
 r301 '/platform/application-service/2-3/operating/accounting-report.html', '/pivotalcf/2-3/opsguide/accounting-report.html'
 r301 '/platform/application-service/2-3/operating/internal-databases.html', '/pivotalcf/2-3/opsguide/internal-databases.html'
 r301 '/platform/application-service/2-3/operating/api-endpoint.html', '/pivotalcf/2-3/opsguide/api-endpoint.html'
 r301 '/platform/application-service/2-3/operating/logging-config-opsman.html', '/pivotalcf/2-3/opsguide/logging-config-opsman.html'
 r301 '/platform/application-service/2-3/operating/app-sec-groups.html', '/pivotalcf/2-3/opsguide/app-sec-groups.html'
 r301 '/platform/application-service/2-3/operating/notifications-asg.html', '/pivotalcf/2-3/opsguide/notifications-asg.html'
 r301 '/platform/application-service/2-3/operating/auth-sso.html', '/pivotalcf/2-3/opsguide/auth-sso.html'
 r301 '/platform/application-service/2-3/operating/ca-sso-config.html', '/pivotalcf/2-3/opsguide/ca-sso-config.html'
 r301 '/platform/application-service/2-3/operating/ping-federate-sso-configuration.html', '/pivotalcf/2-3/opsguide/ping-federate-sso-configuration.html'
 r301 '/platform/application-service/2-3/operating/config-cell-cleanup.html', '/pivotalcf/2-3/opsguide/config-cell-cleanup.html'
 r301 '/platform/application-service/2-3/operating/power-failure.html', '/pivotalcf/2-3/opsguide/power-failure.html'
 r301 '/platform/application-service/2-3/operating/config-proxy.html', '/pivotalcf/2-3/opsguide/config-proxy.html'
 r301 '/platform/application-service/2-3/operating/pw-policy.html', '/pivotalcf/2-3/opsguide/pw-policy.html'
 r301 '/platform/application-service/2-3/operating/pws_upgrade_load.html', '/pivotalcf/2-3/opsguide/pws_upgrade_load.html'
 r301 '/platform/application-service/2-3/operating/config-ssh.html', '/pivotalcf/2-3/opsguide/config-ssh.html'
 r301 '/platform/application-service/2-3/operating/rotate-ccdb-key.html', '/pivotalcf/2-3/opsguide/rotate-ccdb-key.html'
 r301 '/platform/application-service/2-3/operating/configure-multi-foundation.html', '/pivotalcf/2-3/opsguide/configure-multi-foundation.html'
 r301 '/platform/application-service/2-3/operating/scaling-cloud-controller.html', '/pivotalcf/2-3/opsguide/scaling-cloud-controller.html'
 r301 '/platform/application-service/2-3/operating/creating-account.html', '/pivotalcf/2-3/opsguide/creating-account.html'
 r301 '/platform/application-service/2-3/operating/scaling-ert-components.html', '/pivotalcf/2-3/opsguide/scaling-ert-components.html'
 r301 '/platform/application-service/2-3/operating/credential-rotation.html', '/pivotalcf/2-3/opsguide/credential-rotation.html'
 r301 '/platform/application-service/2-3/operating/secure-si-creds.html', '/pivotalcf/2-3/opsguide/secure-si-creds.html'
 r301 '/platform/application-service/2-3/operating/custom-branding.html', '/pivotalcf/2-3/opsguide/custom-branding.html'
 r301 '/platform/application-service/2-3/operating/securing-endpoints.html', '/pivotalcf/2-3/opsguide/securing-endpoints.html'
 r301 '/platform/application-service/2-3/operating/deploying-service-mesh.html', '/pivotalcf/2-3/opsguide/deploying-service-mesh.html'
 r301 '/platform/application-service/2-3/operating/security_config.html', '/pivotalcf/2-3/opsguide/security_config.html'
 r301 '/platform/application-service/2-3/operating/docker-registry.html', '/pivotalcf/2-3/opsguide/docker-registry.html'
 r301 '/platform/application-service/2-3/operating/ssl-term-haproxy.html', '/pivotalcf/2-3/opsguide/ssl-term-haproxy.html'
 r301 '/platform/application-service/2-3/operating/enable-vol-services.html', '/pivotalcf/2-3/opsguide/enable-vol-services.html'
 r301 '/platform/application-service/2-3/operating/ssl-term.html', '/pivotalcf/2-3/opsguide/ssl-term.html'
 r301 '/platform/application-service/2-3/operating/er_network.html', '/pivotalcf/2-3/opsguide/er_network.html'
 r301 '/platform/application-service/2-3/operating/switching-domains.html', '/pivotalcf/2-3/opsguide/switching-domains.html'
 r301 '/platform/application-service/2-3/operating/external-user-management.html', '/pivotalcf/2-3/opsguide/external-user-management.html'
 r301 '/platform/application-service/2-3/operating/tcp-routing-ert-config.html', '/pivotalcf/2-3/opsguide/tcp-routing-ert-config.html'

# Scheduler rename redirect
r301 %r{/pcf-scheduler/(.*)}, "/scheduler/$1"
r301 %r{/scheduler/(?![\d-]+)(.*)}, "/scheduler/1-2/$1"

# service mesh redirects
r301 %r{/service-mesh/(.*)}, "/ingress-router/$1"
r301 %r{/ingress-router/(?![\d-]+)(.*)}, "/platform/ingress-router/$1"
r301 %r{/ingress-router/0-1/(.*)}, "/platform/ingress-router/0-1/$1"
r301 %r{/ingress-router/0-2/(.*)}, "/platform/ingress-router/0-2/$1"

# function service redirects
r301 %r{/pfs/(.*)}, "/platform/function-service/$1" # redirect from old URL
r301 %r{/platform/function-service/(?![\d-]+)(.*)}, "/platform/function-service/0-4/$1" # redirect to current released version

# service instance manager redirects
r302 %r{/service-instance-manager/(?![\d-]+)(.*)}, "/service-instance-manager/0-8/$1"

# Redirects to docs-book-services-sdk
r301 %r{/on-demand-service-broker/(?![\d-]+)(.*)}, "/svc-sdk/odb/$1"
r301 %r{/service-metrics/(?![\d-]+)(.*)}, "/svc-sdk/service-metrics/$1"
r301 %r{/service-backup/(?![\d-]+)(.*)}, "/svc-sdk/service-backup/$1"

r301 %r{/bbr/(.*)}, 'https://docs.cloudfoundry.org/bbr/$1'
# r301 %r{/buildpacks/(.*)}, '/pivotalcf/2-6/buildpacks/$1'
# r301 %r{/deploying/(.*)}, '/pivotalcf/2-6/deploying/$1'
# r301 %r{/concepts/(.*)}, '/pivotalcf/2-6/concepts/$1'
# r301 %r{/adminguide/(.*)}, '/pivotalcf/2-6/adminguide/$1'
# r301 %r{/cf-cli/(.*)}, '/pivotalcf/2-6/cf-cli/$1'
# r301 %r{/devguide/(.*)}, '/pivotalcf/2-6/devguide/$1'
# r301 %r{/loggregator/(.*)}, '/pivotalcf/2-6/loggregator/$1'
# r301 %r{/services/(.*)}, '/pivotalcf/2-6/services/$1'
# r301 %r{/opsguide/(.*)}, '/pivotalcf/2-6/opsguide/$1'
# r301 %r{/installing/(.*)}, '/pivotalcf/2-6/installing/$1'
# r301 %r{/customizing/(.*)}, '/pivotalcf/2-6/customizing/$1'
# r301 %r{/appsman-services/(.*)}, '/pivotalcf/2-6/appsman-services/$1'
# r301 %r{/console/(.*)}, '/pivotalcf/2-6/console/$1'
# r301 %r{/pcf-release-notes/(.*)}, '/pivotalcf/2-6/pcf-release-notes/$1'


r301 %r{/pivotalcf/2-6/pcf-release-notes/opsmanager-ki.html}, '/pivotalcf/2-6/pcf-release-notes/opsmanager-rn.html#knownissues'
r301 %r{/pivotalcf/2-6/pcf-release-notes/runtime-ki.html}, 'pivotalcf/2-6/pcf-release-notes/runtime-rn.html#knownissues'

r301 %r{/pivotalcf/1-10/pcf-release-notes/opsmanager-ki.html}, '/pivotalcf/1-10/pcf-release-notes/opsmanager-rn.html#knownissues'
r301 %r{/pivotalcf/1-10/pcf-release-notes/runtime-ki.html}, 'pivotalcf/1-10/pcf-release-notes/runtime-rn.html#knownissues'

r301 %r{/pivotalcf/1-9/pcf-release-notes/opsmanager-ki.html}, '/pivotalcf/1-9/pcf-release-notes/opsmanager-rn.html#knownissues'
r301 %r{/pivotalcf/1-9/pcf-release-notes/runtime-ki.html}, 'pivotalcf/1-9/pcf-release-notes/runtime-rn.html#knownissues'

r301 %r{/bosh/(.*)}, 'http://bosh.io/docs/$1'

# JMX Bridge
r301 %r{/jmx-bridge/(?![\d-]+)(.*)}, 'https://resources.docs.pivotal.io/pdfs/jmx-bridge-1.9.pdf'
r301 %r{/jmx-bridge/1-9/(.*)}, 'https://resources.docs.pivotal.io/pdfs/jmx-bridge-1.9.pdf'
r301 %r{/jmx-bridge/1-8/(.*)}, 'https://resources.docs.pivotal.io/pdfs/jmx-bridge-1.8.pdf'
r301 %r{/jmx-bridge/1-7/(.*)}, 'https://resources.docs.pivotal.io/pdfs/jmx-bridge-1.7.pdf'

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

# For GemFire
r301 '/gemfire/', 'http://gemfire.docs.pivotal.io/'
r301 %r{/docs-gemfire/(.*)}, 'http://gemfire82.docs.pivotal.io/docs-gemfire/$1'
r301 %r{/(.*)/gemfire/(.*)}, "http://gemfire.docs.pivotal.io/$1/gemfire/$2"
r301 %r{/(.*)/geode/(.*)}, "http://gemfire.docs.pivotal.io/$1/geode/$2"
r301 %r{/(.*)/ggc/(.*)}, "http://ggc.docs.pivotal.io/$1/ggc/$2"

# For GemFire Nativehttps://resources.docs.pivotal.io/pdfs/
r301 %r{/(.*)/gemfire-native-client/(.*)}, "http://gemfire-native.docs.pivotal.io/$1/gemfire-native-client/$2"
r301 %r{/(.*)/geode-native-client/(.*)}, "http://gemfire-native.docs.pivotal.io/$1/geode-native-client/$2"
r301 %r{/(.*)/gemfire-native-client-ssp/(.*)}, "http://gemfire-native.docs.pivotal.io/$1/gemfire-native-client-ssp/$2"

#For GemFire for PCF
r301 %r{/gemfire-cf/(.*)}, 'https://resources.docs.pivotal.io/pdfs/gemfire-for-pcf-1.7.pdf'

#For SSC for GemFire
r301 %r{/ssc-gemfire/(.*)}, 'https://resources.docs.pivotal.io/pdfs/ssc-gemfire-1.2.pdf'

#For GPDB
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

# For Pivotal Postgres
r301 %r{/11-1/(.*)}, "https://postgres.docs.pivotal.io/11-1/$1"
r301 %r{/11-2/(.*)}, "https://postgres.docs.pivotal.io/11-2/$1"

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
r301 %r{/app-dist/(.*)}, 'https://resources.docs.pivotal.io/pdfs/app-dist.pdf'
r301 %r{/mobile/push/(.*)}, '/push/'
r301 'v1_6_0/api/tags/index.html', '/v1_6_0/api/topics/index.html'
r301 %r{^/push/(?![\d-]+)(.*)}, "/push/1-10/$1"


#For Kubernates Service Manager

r301 %r{/ksm/(?![\d-]+)(.*)}, "/ksm/0-7/$1"

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

r301 %r{/pre-release/(.*)}, 'https://docs-pcf-staging.cfapps.io/pivotalcf/2-6/installing/pcf-docs.html'

r301 %r{/mobile/app_analytics(.*)}, 'https://network.pivotal.io/products/api-gateway'
r301 %r{/mobile/apigateway(.*)}, 'https://network.pivotal.io/products/api-gateway'
r301 %r{/mobile/data/(.*)}, 'https://network.pivotal.io/products/p-data-sync'
r301 '/mobile/index.html', 'https://network.pivotal.io/products/api-gateway'
r301 '/mobile/', 'https://network.pivotal.io/products/api-gateway'

r301 %r{/appmon/(.*)}, '/dynatrace/index.html'
r301 %r{/ruxit/(.*)}, '/dynatrace/index.html'

r301 %r{/windows/(.*)}, 'http://docs.pivotal.io/pivotalcf/2-6/windows/index.html'

# Link structure changed for ODB, service-backup and service-metrics
r301 %r{/on-demand-service-broker/(\d+)-(\d+)-\d+/(.*)}, "/svc-sdk/odb/$1-$2/$3"
r301 %r{/service-metrics/(\d+)-(\d+)-\d+/(.*)}, "/svc-sdk/service-metrics/$1-$2/$3"
r301 %r{/service-backup/(\d+)-(\d+)-\d+/(.*)}, "/svc-sdk/service-backup/$1-$2/$3"

# Redirect older versions to PDFs
r301 %r{/pivotalcf/1-2/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.2.pdf'
r301 %r{/pivotalcf/1-3/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.3.pdf'
r301 %r{/pivotalcf/1-4/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.4.pdf'
r301 %r{/pivotalcf/1-5/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.5.pdf'
r301 %r{/pivotalcf/1-6/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.6.pdf'
r301 %r{/pivotalcf/1-7/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.7.pdf'
r301 %r{/pivotalcf/1-8/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.8.pdf'
r301 %r{/pivotalcf/1-9/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.9.pdf'
r301 %r{/pivotalcf/1-10/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.10.pdf'
r301 %r{/pivotalcf/1-11/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.11.pdf'
r301 %r{/pivotalcf/1-12/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-1.12.pdf'
r301 %r{/pivotalcf/2-0/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-2.0.pdf'
r301 %r{/pivotalcf/2-1/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-2.1.pdf'
r301 %r{/pivotalcf/2-2/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pcf-docs-2.2.pdf'

r301 %r{/pcf-scheduler/1-0/(.*)}, 'https://resources.docs.pivotal.io/pdfs/scheduler-1.0.pdf'
r301 %r{/pcf-scheduler/1-1/(.*)}, 'https://resources.docs.pivotal.io/pdfs/scheduler-1.1.pdf'

r301 %r{/cjoc/(.*)}, 'https://docs.pivotal.io'
r301 %r{/p-riakcs/(.*)}, 'https://docs.pivotal.io'


r301 %r{/platform/application-service/(?![\d-]+)(.*)}, "/platform/application-service/2-9/$1"
r301 %r{/pivotalcf/2-6/operating/(.*)}, '/platform/application-service/2-6/operating/$1'
r301 %r{/pivotalcf/2-5/operating/(.*)}, '/platform/application-service/2-5/operating/$1'
r301 %r{/pivotalcf/2-4/operating/(.*)}, '/platform/application-service/2-4/operating/$1'
r301 %r{/pivotalcf/2-3/operating/(.*)}, '/platform/application-service/2-3/operating/$1'
r301 %r{/pivotalcf/2-2/operating/(.*)}, '/platform/application-service/2-2/operating/$1'
r301 %r{/pivotalcf/2-1/operating/(.*)}, '/platform/application-service/2-1/operating/$1'
r301 %r{/pivotalcf/2-0/operating/(.*)}, '/platform/application-service/2-0/operating/$1'

r301 %r{/pivotalcf/(?![\d-]+)(.*)}, "/platform/2-9/$1"
r301 %r{/pivotalcf/2-8/(.*)}, '/platform/2-8/$1'
r301 %r{/pivotalcf/2-7/(.*)}, '/platform/2-7/$1'
r301 %r{/platform/(?![\d-]+)(.*)}, "/platform/2-9/$1"
r301 %r{/platform/2-6/(.*)}, '/pivotalcf/2-6/$1'
r301 %r{/platform/2-5/(.*)}, '/pivotalcf/2-5/$1'
r301 %r{/platform/2-4/(.*)}, '/pivotalcf/2-4/$1'
r301 %r{/platform/2-3/(.*)}, '/pivotalcf/2-3/$1'
r301 %r{/platform/2-2/(.*)}, '/pivotalcf/2-2/$1'
r301 %r{/platform/2-1/(.*)}, '/pivotalcf/2-1/$1'
r301 %r{/platform/2-0/(.*)}, '/pivotalcf/2-0/$1'




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

r301 '/platform/2-7/getstarted/pcf-docs.html', '/platform/2-7/'

r301 %r{/push/1-6/(.*)}, 'https://resources.docs.pivotal.io/pdfs/push-notifications-1.6.pdf'
r301 %r{/push/1-7/(.*)}, 'https://resources.docs.pivotal.io/pdfs/push-notifications-1.7.pdf'
r301 %r{/push/1-8/(.*)}, 'https://resources.docs.pivotal.io/pdfs/push-notifications-1.8.pdf'
r301 %r{/push/1-9/(.*)}, 'https://resources.docs.pivotal.io/pdfs/push-notifications-1.9.pdf'

r301 %r{/pcf/nist/(.*)}, '/nist/$1'

r301 %r{/pks/1-1/concourse-helm.html}, '/pks/1-2/helm.html'
r301 %r{/pks/1-2/concourse-helm.html}, '/pks/1-2/helm.html'
r301 %r{/pks/1-3/concourse-helm.html}, '/pks/1-3/helm.html'

r301 %r{/spring-flo/(.*)}, 'https://resources.docs.pivotal.io/pdfs/spring-flo.pdf'

# Redirect older PKS to PDF
r301 %r{/1-0/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pks-docs-1.0.pdf'
r301 %r{/pks/1-0/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pks-docs-1.0.pdf'
r301 %r{/pks/1-1/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pks-1-1.pdf'
r301 %r{/pks/1-2/(.*)}, 'https://resources.docs.pivotal.io/pdfs/pks-1-2.pdf'

# Redirect non-versioned and 'latest' URL calls to the most recent version of PKS
r301 %r{/runtimes/pks/(.*)}, "/pks/$1"
r301 %r{/runtimes/pks/latest/(.*)}, "/pks/1-6/$1"
r301 %r{/runtimes/pks/(?![\d-]+)(.*)}, "/pks/1-6/$1"
r301 %r{/pks/latest/(.*)}, "/pks/1-6/$1"
r301 %r{/pks/(?![\d-]+)(.*)}, "/pks/1-6/$1"

# Redirect PRA docs
r301 %r{/pra/(?![\d-]+)(.*)}, "/pra/2-2/$1"

# Redirect 'archives' (contains PDFs)
r301 %r{/archives/(.*)}, "https://resources.docs.pivotal.io/pdfs/$1"

# Redirect TAS for K8s v0.1 Beta
r301 %r{/pas-kubernetes/0-1/(.*)}, '/tas-kubernetes/0-1/$1'
# Redirect PAS WOK unversioned to 2.6.0
r301 %r{/pas-kubernetes/(?!\d-\d[^/]*/)(.*)$}, '/pas-kubernetes/2-6-0-alpha-1/$1'
# Redirect TAS for K8s unversioned to 0.1
r301 %r{/tas-kubernetes/(?!\d-\d[^/]*/)(.*)$}, '/tas-kubernetes/0-1/$1'

# Redirect for SSO docs
r302 %r{/p-identity/(?![\d-]+)(.*)}, "/p-identity/1-12/$1"
r302 %r{/sso/(?![\d-]+)(.*)}, "/p-identity/1-12/$1"

# Redirect for MySQL docs
r302 %r{/p-mysql/(?![\d-]|[p][a][r][t]+)(.*)}, "/p-mysql/2-7/$1"
r302 %r{/p-MySQL/(?![\d-]|[p][a][r][t]+)(.*)}, "/p-mysql/2-7/$1"

# Redirect for Compliance Scanner
r301 %r{/addon-compliance-tools/(?![\d-]+)(.*)}, "/addon-compliance-tools/1-2/$1"

# Redirect to the most recent version of Build Service
r301 %r{/build-service/(?![\d-]+)(.*)}, "/build-service/0-1-0/$1"
