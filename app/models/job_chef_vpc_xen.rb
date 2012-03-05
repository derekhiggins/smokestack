class JobChefVpcXen < Job

  @queue=:xen

  def self.perform(id)
    5.times do 
      begin
        job=JobChefVpcXen.find(id)
        self.run_job(job)
        break
      rescue ActiveRecord::RecordNotFound
        sleep 5
      end
    end
  end

  after_create :handle_after_create
  def handle_after_create
    AsyncExec.run_job(JobChefVpcXen, self.id)
  end

end