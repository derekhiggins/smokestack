Smokestack::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
end

ENV['NOVA_GIT_MASTER'] = "git://github.com/openstack/nova.git"
ENV['NOVACLIENT_GIT_MASTER'] = "git://github.com/openstack/python-novaclient.git"
ENV['GLANCE_GIT_MASTER'] = "git://github.com/openstack/glance.git"
ENV['GLANCECLIENT_GIT_MASTER'] = "git://github.com/openstack/python-glanceclient.git"
ENV['KEYSTONE_GIT_MASTER'] = "git://github.com/openstack/keystone.git"
ENV['KEYSTONECLIENT_GIT_MASTER'] = "git://github.com/openstack/python-keystoneclient.git"
ENV['SWIFT_GIT_MASTER'] = "git://github.com/openstack/swift.git"
ENV['SWIFTCLIENT_GIT_MASTER'] = "git://github.com/openstack/python-swiftclient.git"
ENV['CINDER_GIT_MASTER'] = "git://github.com/openstack/cinder.git"
ENV['CINDERCLIENT_GIT_MASTER'] = "git://github.com/openstack/python-cinderclient.git"
ENV['QUANTUM_GIT_MASTER'] = "git://github.com/openstack/quantum.git"
ENV['QUANTUMCLIENT_GIT_MASTER'] = "git://github.com/openstack/python-quantumclient.git"

ENV['FIRESTACK_URL'] = "git://github.com/dprince/firestack.git"

# Default packager URLS use Fedora
# NOTE: you can override/set these in your distro specific environments
ENV['NOVA_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-nova.git"
ENV['NOVACLIENT_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-python-novaclient.git"
ENV['GLANCE_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-glance.git"
ENV['GLANCECLIENT_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-python-glanceclient.git"
ENV['KEYSTONE_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-keystone.git"
ENV['KEYSTONECLIENT_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-python-keystoneclient.git"
ENV['SWIFT_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-swift.git"
ENV['SWIFTCLIENT_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-python-swiftclient.git"
ENV['CINDER_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-cinder.git"
ENV['CINDERCLIENT_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-python-cinderclient.git"
ENV['QUANTUM_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-quantum.git"
ENV['QUANTUMCLIENT_PACKAGER_URL'] = "git://github.com/fedora-openstack/openstack-python-quantumclient.git"

ENV['PASTE_SITE_URL'] = "http://paste.openstack.org/"
ENV['METRICS_DATA_FILE'] = "/tmp/smokestack_metrics.txt"
