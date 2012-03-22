every 1.day, :at => '6:00 am' do
  runner 'Account.send_daily_activity_report'
end
