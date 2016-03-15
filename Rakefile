def run_tests(platform, browser, version, junit_dir)
  system("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\" JUNIT_DIR=\"#{junit_dir}\" parallel_cucumber features -n 20")
end

# Windows 8.1, Chrome 43
task :windows_10_chrome_48 do
  run_tests('Windows 10', 'chrome', '48', 'junit_reports/windows_8_1_chrome_43')
end

# Windows 7, Firefox 40
task :os_x_10_11_firefox_44 do
  run_tests('OS X 10.11', 'firefox', '44', 'junit_reports/windows_7_firefox40')
end

# OS X 10.9 Chrome 45
task :os_x_10_9_safari_7 do
  run_tests('OS X 10.9', 'safari', '7', 'junit_reports/os_x_10_9_chrome_45')
end


# Task to run all the above configurations in parallel
multitask :test_sauce => [
    :windows_10_chrome_48,
    :os_x_10_11_firefox_44,
    :os_x_10_9_safari_7,
  ] do
    puts 'Running automation'
end
