desc "run"
task :run do
  ruby "try-eth-rb.rb"
end

desc "parity"
task :parity do
  sh "docker run -p 8545:8545 appliedblockchain/parity-solo-instant"
end

desc "build"
task :build do
  sh "docker build -t try-eth ."
end

desc "docker run"
task :drun do
  Rake::Task["build"].invoke
  sh "docker run try-eth"
end

task default: :run
