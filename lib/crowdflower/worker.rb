module CrowdFlower
  class Worker < Base
    attr_reader :job

    def initialize( job )
      super job.connection
      @job = job
      connect
    end

    def resource_uri
      "/jobs/#{@job.id}/workers"
    end

    def bonus( worker_id, amount, reason=nil )
      params = {
        :amount => amount,
        :reason => reason
      }
      connection.post( "#{resource_uri}/#{worker_id}/bonus", :body => params )
    end

    def reject( worker_id )
      connection.put( "#{resource_uri}/#{worker_id}/reject", :headers => { "Content-Length" => "0" } )
    end

    def notify( worker_id, message )
      params = {
        :message => message
      }
      connection.post( "#{resource_uri}/#{worker_id}/notify", :body => params )
    end

    def flag( worker_id, reason = nil, persist = false )
      params = {
        :reason => reason,
        :persist => persist
      }
      connection.put( "#{resource_uri}/#{worker_id}/flag", :body => params, :headers => { "Content-Length" => "0" })
    end

    def deflag(worker_id, reason)
      connection.put( "#{resource_uri}/#{worker_id}/deflag", :body => { :reason => reason }, :headers => { "Content-Length" => "0" })
    end
  end
end
