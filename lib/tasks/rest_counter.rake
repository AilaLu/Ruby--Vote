namespace :db do
    desc 'Reset Counter Cache!' #在terminal會有描述
    task :reset_counter => :environment do #把rails引進來 在這個task裡才能使用這個model

        Candidate.all.each do |candidate|
            Candidate.reset_counters(candidate.id, :vote_logs)
        end
    end
    end