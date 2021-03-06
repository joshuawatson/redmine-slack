require 'redmine'

require_dependency 'redmine_slack/listener'

Redmine::Plugin.register :redmine_slack do
	name 'Redmine Slack'
	author 'Samuel Cormier-Iijima'
	url 'https://github.com/sciyoshi/redmine-slack'
	author_url 'http://www.sciyoshi.com'
	description 'Slack chat integration'
	version '0.1'

	requires_redmine :version_or_higher => '0.8.0'

	settings \
		:default => {
			'callback_url' => 'http://slack.com/callback/',
			'channel' => nil,
			'username' => 'redmine'
		},
		:partial => 'settings/slack_settings'
end
