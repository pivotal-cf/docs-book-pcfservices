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
r301 %r{/pivotalcf/2-8/windows/(.*)}, "/platform/application-service-windows/2-8/$1"
r301 %r{/pivotalcf/2-9/windows/(.*)}, "/platform/application-service-windows/2-9/$1"
r301 %r{/platform/application-service-windows/2-6/(.*)}, "/pivotalcf/2-6/windows/$1"
r301 %r{/platform/application-service-windows/2-5/(.*)}, "/pivotalcf/2-5/windows/$1"
r301 %r{/platform/application-service-windows/2-4/(.*)}, "/pivotalcf/2-4/windows/$1"
r301 %r{/platform/application-service-windows/2-3/(.*)}, "/pivotalcf/2-3/windows/$1"

# Redirects for Application Service Book starting in 2.7


# 2-3 to 2-6 redirects
r301 %r{/platform/application-service/(2-[3-6])/buildpacks/(.*)}, "/pivotalcf/$1/buildpacks/$2"
r301 %r{/platform/application-service/(2-[3-6])/adminguide/(.*)}, "/pivotalcf/$1/adminguide/$2"
r301 %r{/platform/application-service/(2-[3-6])/cf-cli/(.*)}, "/pivotalcf/$1/cf-cli/$2"
r301 %r{/platform/application-service/(2-[3-6])/concepts/(.*)}, "/pivotalcf/$1/concepts/$2"
r301 %r{/platform/application-service/(2-[3-6])/devguide/(.*)}, "/pivotalcf/$1/devguide/$2"
r301 %r{/platform/application-service/(2-[3-6])/loggregator/(.*)}, "/pivotalcf/$1/loggregator/$2"
r301 %r{/platform/application-service/(2-[3-6])/routing/(.*)}, "/pivotalcf/$1/routing/$2"
r301 %r{/platform/application-service/(2-[3-6])/services/(.*)}, "/pivotalcf/$1/services/$2"
r301 %r{/platform/application-service/(2-[3-6])/uaa/(.*)}, "/pivotalcf/$1/uaa/$2"
r301 %r{/platform/application-service/(2-[3-6])/metric-registrar/(.*)}, "/pivotalcf/$1/metric-registrar/$2"
r301 %r{/platform/application-service/(2-[3-6])/mysql/(.*)}, "/pivotalcf/$1/mysql/$2"
r301 %r{/platform/application-service/(2-[3-6])/overview/(.*)}, "/pivotalcf/$1/pas/$2"
r301 %r{/platform/application-service/(2-[3-6])/appsman-services/(.*)}, "/pivotalcf/$1/appsman-services/$2"
r301 %r{/platform/application-service/(2-[3-6])/console/(.*)}, "/pivotalcf/$1/console/$2"

# 2.7 and later redirects
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/buildpacks/$2}, '/platform/application-service/$1/buildpacks/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/adminguide/$2}, '/platform/application-service/$1/adminguide/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/cf-cli/$2}, '/platform/application-service/$1/cf-cli/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/concepts/$2}, '/platform/application-service/$1/concepts/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/devguide/$2}, '/platform/application-service/$1/devguide/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/loggregator/$2}, '/platform/application-service/$1/loggregator/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/routing/$2}, '/platform/application-service/$1/routing/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/services/$2}, '/platform/application-service/$1/services/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/uaa/$2}, '/platform/application-service/$1/uaa/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/metric-registrar/$2}, '/platform/application-service/$1/metric-registrar/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/mysql/$2}, '/platform/application-service/$1/mysql/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/pas/$2}, '/platform/application-service/$1/overview/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/appsman-services/$2}, '/platform/application-service/$1/appsman-services/$2'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/console/$2}, '/platform/application-service/$1/console/$2'


# Install Redirects

# 2-3 to 2-6 redirects
r301 %r{/platform/application-service/(2-[3-6])/operating/configure-pas.html}, '/pivotalcf/$1/customizing/configure-pas.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/console-login.html}, '/pivotalcf/$1/customizing/console-login.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/create-pas-dbs.html}, '/pivotalcf/$1/customizing/create-pas-dbs.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/creating-account.html}, '/pivotalcf/$1/customizing/creating-account.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/custom-load-balancer.html}, '/pivotalcf/$1/customizing/custom-load-balancer.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/custom-syslog-rules.html}, '/pivotalcf/$1/customizing/custom-syslog-rules.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/day2.html} , '/pivotalcf/$1/customizing/day2.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/pas-file-storage.html}, '/pivotalcf/$1/customizing/pas-file-storage.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/pas-vsphere-requirements.html}, '/pivotalcf/$1/customizing/pas-vsphere-requirements.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/pas.html}, '/pivotalcf/$1/customizing/pas.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/diagnostics.html}, '/pivotalcf/$1/customizing/diagnostics.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/disk-format.html}, '/pivotalcf/$1/customizing/disk-format.html'
r301 %r{platform/application-service/(2-[3-6])/operating/elb-ssh-proxy.html}, '/pivotalcf/$1/customizing/elb-ssh-proxy.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/external-user-management.html}, '/pivotalcf/$1/customizing/external-user-management.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/f5-lb.html}, '/pivotalcf/$1/customizing/f5-lb.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/frontend-idle-timeout.html}, '/pivotalcf/$1/customizing/frontend-idle-timeout.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/quickstart-pas.html}, '/pivotalcf/$1/customizing/quickstart-pas.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/route-service-lookup.html}, '/pivotalcf/$1/customizing/route-service-lookup.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/api-endpoint.html}, '/pivotalcf/$1/customizing/api-endpoint.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/gcp-troubleshooting.html}, '/pivotalcf/$1/customizing/gcp-troubleshooting.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/small-footprint.html}, '/pivotalcf/$1/customizing/small-footprint.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/installing-pcf-is.html}, '/pivotalcf/$1/customizing/installing-pcf-is.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/cfpush-availability-during-upgrade.html}, '/pivotalcf/$1/customizing/cfpush-availability-during-upgrade.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/user-types.html}, '/pivotalcf/$1/customizing/user-types.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/vsphere-nsx-t.html}, '/pivotalcf/$1/customizing/vsphere-nsx-t.html'
r301 %r{/platform/application-service/(2-[3-6])/operating/configure-lb.html}, '/pivotalcf/$1/customizing/configure-lb.html'


# 2-7 redirects and later
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/configure-pas.html}, '/platform/application-service/$1/operating/configure-pas.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/console-login.html}, '/platform/application-service/$1/operating/console-login.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/create-pas-dbs.html}, '/platform/application-service/$1/operating/create-pas-dbs.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/creating-account.html}, '/platform/application-service/$1/operating/creating-account.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/custom-load-balancer.html}, '/platform/application-service/$1/operating/custom-load-balancer.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/custom-syslog-rules.html}, '/platform/application-service/$1/operating/custom-syslog-rules.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/day2.html}, '/platform/application-service/$1/operating/day2.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/pas-file-storage.html}, '/platform/application-service/$1/operating/pas-file-storage.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/pas-vsphere-requirements.html}, '/platform/application-service/$1/operating/pas-vsphere-requirements.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/pas.html}, '/platform/application-service/$1/operating/pas.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/diagnostics.html}, '/platform/application-service/$1/operating/diagnostics.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/disk-format.html}, '/platform/application-service/$1/operating/disk-format.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/elb-ssh-proxy.html}, 'platform/application-service/$1/operating/elb-ssh-proxy.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/external-user-management.html}, '/platform/application-service/$1/operating/external-user-management.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/f5-lb.html}, '/platform/application-service/$1/operating/f5-lb.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/frontend-idle-timeout.html}, '/platform/application-service/$1/operating/frontend-idle-timeout.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/quickstart-pas.html}, '/platform/application-service/$1/operating/quickstart-pas.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/route-service-lookup.html}, '/platform/application-service/$1/operating/route-service-lookup.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/api-endpoint.html}, '/platform/application-service/$1/operating/api-endpoint.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/gcp-troubleshooting.html}, '/platform/application-service/$1/operating/gcp-troubleshooting.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/small-footprint.html}, '/platform/application-service/$1/operating/small-footprint.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/installing-pcf-is.html}, '/platform/application-service/$1/operating/installing-pcf-is.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/cfpush-availability-during-upgrade.html}, '/platform/application-service/$1/operating/cfpush-availability-during-upgrade.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/user-types.html}, '/platform/application-service/$1/operating/user-types.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/vsphere-nsx-t.html}, '/platform/application-service/$1/operating/vsphere-nsx-t.html'
r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/customizing/configure-lb.html}, '/platform/application-service/$1/operating/configure-lb.html'

# Ops Guide

# 2-3 to 2-6 redirects
 r301 '/platform/application-service/(2-[3-6])/operating/gdpr.html', '/pivotalcf/$1/opsguide/gdpr.html'
 r301 '/platform/application-service/(2-[3-6])/operating/id-jobs.html', '/pivotalcf/$1/opsguide/id-jobs.html'
 r301 '/platform/application-service/(2-[3-6])/operating/identify-metric-source.html', '/pivotalcf/$1/opsguide/identify-metric-source.html'
 r301 '/platform/application-service/(2-[3-6])/operating/accounting-report-apps-man.html', '/pivotalcf/$1/opsguide/accounting-report-apps-man.html'
 r301 '/platform/application-service/(2-[3-6])/operating/accounting-report.html', '/pivotalcf/$1/opsguide/accounting-report.html'
 r301 '/platform/application-service/(2-[3-6])/operating/internal-databases.html', '/pivotalcf/$1/opsguide/internal-databases.html'
 r301 '/platform/application-service/(2-[3-6])/operating/api-endpoint.html', '/pivotalcf/$1/opsguide/api-endpoint.html'
 r301 '/platform/application-service/(2-[3-6])/operating/logging-config-opsman.html', '/pivotalcf/$1/opsguide/logging-config-opsman.html'
 r301 '/platform/application-service/(2-[3-6])/operating/app-sec-groups.html', '/pivotalcf/$1/opsguide/app-sec-groups.html'
 r301 '/platform/application-service/(2-[3-6])/operating/notifications-asg.html', '/pivotalcf/$1/opsguide/notifications-asg.html'
 r301 '/platform/application-service/(2-[3-6])/operating/auth-sso.html', '/pivotalcf/$1/opsguide/auth-sso.html'
 r301 '/platform/application-service/(2-[3-6])/operating/ca-sso-config.html', '/pivotalcf/$1/opsguide/ca-sso-config.html'
 r301 '/platform/application-service/(2-[3-6])/operating/ping-federate-sso-configuration.html', '/pivotalcf/$1/opsguide/ping-federate-sso-configuration.html'
 r301 '/platform/application-service/(2-[3-6])/operating/config-cell-cleanup.html', '/pivotalcf/$1/opsguide/config-cell-cleanup.html'
 r301 '/platform/application-service/(2-[3-6])/operating/power-failure.html', '/pivotalcf/$1/opsguide/power-failure.html'
 r301 '/platform/application-service/(2-[3-6])/operating/config-proxy.html', '/pivotalcf/$1/opsguide/config-proxy.html'
 r301 '/platform/application-service/(2-[3-6])/operating/pw-policy.html', '/pivotalcf/$1/opsguide/pw-policy.html'
 r301 '/platform/application-service/(2-[3-6])/operating/pws_upgrade_load.html', '/pivotalcf/$1/opsguide/pws_upgrade_load.html'
 r301 '/platform/application-service/(2-[3-6])/operating/config-ssh.html', '/pivotalcf/$1/opsguide/config-ssh.html'
 r301 '/platform/application-service/(2-[3-6])/operating/rotate-ccdb-key.html', '/pivotalcf/$1/opsguide/rotate-ccdb-key.html'
 r301 '/platform/application-service/(2-[3-6])/operating/configure-multi-foundation.html', '/pivotalcf/$1/opsguide/configure-multi-foundation.html'
 r301 '/platform/application-service/(2-[3-6])/operating/scaling-cloud-controller.html', '/pivotalcf/$1/opsguide/scaling-cloud-controller.html'
 r301 '/platform/application-service/(2-[3-6])/operating/creating-account.html', '/pivotalcf/$1/opsguide/creating-account.html'
 r301 '/platform/application-service/(2-[3-6])/operating/scaling-ert-components.html', '/pivotalcf/$1/opsguide/scaling-ert-components.html'
 r301 '/platform/application-service/(2-[3-6])/operating/credential-rotation.html', '/pivotalcf/$1/opsguide/credential-rotation.html'
 r301 '/platform/application-service/(2-[3-6])/operating/secure-si-creds.html', '/pivotalcf/$1/opsguide/secure-si-creds.html'
 r301 '/platform/application-service/(2-[3-6])/operating/custom-branding.html', '/pivotalcf/$1/opsguide/custom-branding.html'
 r301 '/platform/application-service/(2-[3-6])/operating/securing-endpoints.html', '/pivotalcf/$1/opsguide/securing-endpoints.html'
 r301 '/platform/application-service/(2-[3-6])/operating/deploying-service-mesh.html', '/pivotalcf/$1/opsguide/deploying-service-mesh.html'
 r301 '/platform/application-service/(2-[3-6])/operating/security_config.html', '/pivotalcf/$1/opsguide/security_config.html'
 r301 '/platform/application-service/(2-[3-6])/operating/docker-registry.html', '/pivotalcf/$1/opsguide/docker-registry.html'
 r301 '/platform/application-service/(2-[3-6])/operating/ssl-term-haproxy.html', '/pivotalcf/$1/opsguide/ssl-term-haproxy.html'
 r301 '/platform/application-service/(2-[3-6])/operating/enable-vol-services.html', '/pivotalcf/$1/opsguide/enable-vol-services.html'
 r301 '/platform/application-service/(2-[3-6])/operating/ssl-term.html', '/pivotalcf/$1/opsguide/ssl-term.html'
 r301 '/platform/application-service/(2-[3-6])/operating/er_network.html', '/pivotalcf/$1/opsguide/er_network.html'
 r301 '/platform/application-service/(2-[3-6])/operating/switching-domains.html', '/pivotalcf/$1/opsguide/switching-domains.html'
 r301 '/platform/application-service/(2-[3-6])/operating/external-user-management.html', '/pivotalcf/$1/opsguide/external-user-management.html'
 r301 '/platform/application-service/(2-[3-6])/operating/tcp-routing-ert-config.html', '/pivotalcf/$1/opsguide/tcp-routing-ert-config.html'

# 2-7 redirects and later
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/gdpr.html}, '/platform/application-service/$1/operating/gdpr.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/id-jobs.html}, '/platform/application-service/$1/operating/id-jobs.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/identify-metric-source.html}, '/platform/application-service/$1/operating/identify-metric-source.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/accounting-report-apps-man.html}, '/platform/application-service/$1/operating/accounting-report-apps-man.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/accounting-report.html}, '/platform/application-service/$1/operating/accounting-report.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/internal-databases.html}, '/platform/application-service/$1/operating/internal-databases.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/api-endpoint.html}, '/platform/application-service/$1/operating/api-endpoint.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/logging-config-opsman.html}, '/platform/application-service/$1/operating/logging-config-opsman.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/app-sec-groups.html}, '/platform/application-service/$1/operating/app-sec-groups.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/notifications-asg.html}, '/platform/application-service/$1/operating/notifications-asg.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/auth-sso.html}, '/platform/application-service/$1/operating/auth-sso.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/ca-sso-config.html}, '/platform/application-service/$1/operating/ca-sso-config.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/ping-federate-sso-configuration.html}, '/platform/application-service/$1/operating/ping-federate-sso-configuration.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/config-cell-cleanup.html}, '/platform/application-service/$1/operating/config-cell-cleanup.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/power-failure.html}, '/platform/application-service/$1/operating/power-failure.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/config-proxy.html}, '/platform/application-service/$1/operating/config-proxy.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/pw-policy.html}, '/platform/application-service/$1/operating/pw-policy.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/pws_upgrade_load.html}, '/platform/application-service/$1/operating/pws_upgrade_load.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/config-ssh.html}, '/platform/application-service/$1/operating/config-ssh.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/rotate-ccdb-key.html}, '/platform/application-service/$1/operating/rotate-ccdb-key.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/configure-multi-foundation.html}, '/platform/application-service/$1/operating/configure-multi-foundation.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/scaling-cloud-controller.html}, '/platform/application-service/$1/operating/scaling-cloud-controller.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/creating-account.html}, '/platform/application-service/$1/operating/creating-account.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/scaling-ert-components.html}, '/platform/application-service/$1/operating/scaling-ert-components.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/credential-rotation.html}, '/platform/application-service/$1/operating/credential-rotation.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/secure-si-creds.html}, '/platform/application-service/$1/operating/secure-si-creds.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/custom-branding.html}, '/platform/application-service/$1/operating/custom-branding.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/securing-endpoints.html}, '/platform/application-service/$1/operating/securing-endpoints.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/deploying-service-mesh.html}, '/platform/application-service/$1/operating/deploying-service-mesh.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/security_config.html}, '/platform/application-service/$1/operating/security_config.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/docker-registry.html}, '/platform/application-service/$1/operating/docker-registry.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/ssl-term-haproxy.html}, '/platform/application-service/$1/operating/ssl-term-haproxy.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/enable-vol-services.html}, '/platform/application-service/$1/operating/enable-vol-services.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/ssl-term.html}, '/platform/application-service/$1/operating/ssl-term.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/er_network.html}, '/platform/application-service/$1/operating/er_network.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/switching-domains.html}, '/platform/application-service/$1/operating/switching-domains.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/external-user-management.html}, '/platform/application-service/$1/operating/external-user-management.html'
 r301 %r{/pivotalcf/(2-[7-9]|2-\d\d+)/opsguide/tcp-routing-ert-config.html}, '/platform/application-service/$1/operating/tcp-routing-ert-config.html'

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



r301 %r{/concourse-olm/(.*)}, "/p-concourse/$1"

r301 '/platform/2-7/getstarted/pcf-docs.html', '/platform/2-7/'


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
r301 %r{/pra/(?![\d-]+)(.*)}, "/pra/2-3/$1"

# Redirect 'archives' (contains PDFs)
r301 %r{/archives/(.*)}, "https://resources.docs.pivotal.io/pdfs/$1"

# Redirect TAS for K8s v0.1 Beta
r301 %r{/pas-kubernetes/0-1/(.*)}, '/tas-kubernetes/0-1/$1'
# Redirect PAS for k8s unversioned to TAS for k8s 0.1
r301 %r{/pas-kubernetes/(?!\d-\d[^/]*/)(.*)$}, '/tas-kubernetes/0-1/$1'
# Redirect TAS for K8s unversioned to 0.1
r301 %r{/tas-kubernetes/(?!\d-\d[^/]*/)(.*)$}, '/tas-kubernetes/0-1/$1'
# Redirect PAS Kubernetes 2.6.0 alpha to current version of TAS Kubernetes
r301 %r{/pas-kubernetes/2-6-0-alpha-1/(.*)}, '/tas-kubernetes/$1'

# Redirect to the most recent version of Build Service
r301 %r{/build-service/(?![\d-]+)(.*)}, "/build-service/0-1-0/$1"

# Redirect unversioned and 'latest' calls for application-service-windows/ to 2-9
r301 %r{/platform/application-service-windows/(?![\d-]+)(.*)}, "/platform/application-service-windows/2-9/$1"
r301 %r{/platform/application-service-windows/latest/(.*)}, "/platform/application-service-windows/2-9/$1"



# Services

# Redirect for Antivirus
r302 %r{/addon-antivirus/(?![\d-]+)(.*)}, "/addon-antivirus/2-2/$1"

# Redirect for Compliance Scanner
r301 %r{/addon-compliance-tools/(?![\d-]+)(.*)}, "/addon-compliance-tools/1-2/$1"

# Redirect for Developer Console
r302 %r{/developer-console/(?![\d-]+)(.*)}, "/developer-console/0-alpha/$1"

# Redirect for FIM
r302 %r{/addon-fim/(?![\d-]+)(.*)}, "/addon-fim/2-0/$1"

# Redirect for IPsec
r301 %r{/addon-ipsec/(?![\d-]+)(.*)}, "/addon-ipsec/1-9/$1"

# Redirect for Kubernates Service Manager
r301 %r{/ksm/(?![\d-]+)(.*)}, "/ksm/0-8/$1"

# Redirects for MySQL
r302 %r{/p-mysql/(?![\d-]|[p][a][r][t]+)(.*)}, "/p-mysql/2-8/$1"
r302 %r{/p-MySQL/(?![\d-]|[p][a][r][t]+)(.*)}, "/p-mysql/2-8/$1"

# Redirect for ODB
r302 %r{/svc-sdk/odb/(?![\d-]|[p][a][r][t]+)(.*)}, "/svc-sdk/odb/0-39/$1"

# Redirect for RabbitMQ for K8s
r302 %r{/rabbitmq-kubernetes/(?![\d-]+)(.*)}, "/rabbitmq-kubernetes/0-7/$1"

# Redirect for RabbitMQ for VMs
r302 %r{/rabbitmq-cf/(?![\d-]|[p][a][r][t]+)(.*)}, "/rabbitmq-cf/1-18/$1"

# Redirect for Redis
r302 %r{/redis/(?![\d-]|[p][a][r][t]+)(.*)}, "/redis/2-3/$1"

# Redirect for SIM
r302 %r{/service-instance-manager/(?![\d-]+)(.*)}, "/service-instance-manager/0-8/$1"

# Redirects for SSO
r302 %r{/p-identity/(?![\d-]+)(.*)}, "/p-identity/1-12/$1"
r302 %r{/sso/(?![\d-]+)(.*)}, "/p-identity/1-12/$1"

# Link structure changed for ODB, service-backup and service-metrics
r301 %r{/on-demand-service-broker/(\d+)-(\d+)-\d+/(.*)}, "/svc-sdk/odb/$1-$2/$3"
r301 %r{/service-metrics/(\d+)-(\d+)-\d+/(.*)}, "/svc-sdk/service-metrics/$1-$2/$3"
r301 %r{/service-backup/(\d+)-(\d+)-\d+/(.*)}, "/svc-sdk/service-backup/$1-$2/$3"

# Redirects to docs-book-services-sdk
r301 %r{/on-demand-service-broker/(?![\d-]+)(.*)}, "/svc-sdk/odb/$1"
r301 %r{/service-metrics/(?![\d-]+)(.*)}, "/svc-sdk/service-metrics/$1"
r301 %r{/service-backup/(?![\d-]+)(.*)}, "/svc-sdk/service-backup/$1"

# Redirect old Push notifications versions to PDFs
r301 %r{/push/1-6/(.*)}, 'https://resources.docs.pivotal.io/pdfs/push-notifications-1.6.pdf'
r301 %r{/push/1-7/(.*)}, 'https://resources.docs.pivotal.io/pdfs/push-notifications-1.7.pdf'
r301 %r{/push/1-8/(.*)}, 'https://resources.docs.pivotal.io/pdfs/push-notifications-1.8.pdf'
r301 %r{/push/1-9/(.*)}, 'https://resources.docs.pivotal.io/pdfs/push-notifications-1.9.pdf'
# Redirect old IPsec versions to PDFs
r301 %r{/addon-ipsec/1-8/(.*)}, 'http://docs.pivotal.io/archives/addon-ipsec-1.8.pdf'
r301 %r{/addon-ipsec/1-7/(.*)}, 'http://docs.pivotal.io/archives/addon-ipsec-1.7.pdf'
r301 %r{/addon-ipsec/1-6/(.*)}, 'http://docs.pivotal.io/archives/addon-ipsec-1.6.pdf'
r301 %r{/addon-ipsec/1-5/(.*)}, 'http://docs.pivotal.io/archives/addon-ipsec-1.5.pdf'
