class FirstWorker
    include Sidekiq::Worker
    sidekiq_options queue: :first, retry: 5

    def perform(title)
        p 'work: title=' + title
    end
end