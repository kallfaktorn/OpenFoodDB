module UsersHelper
  
  def earned_thumbs_up()
    
    @audits = Audit.all
    
    
    print "blalalalalalala"
    print "blalalalalalala"
    print "blalalalalalala"
    print current_user
    
    @audits_by_user = []
    @audits.each do |audit| 
      if audit.user_id == current_user.id 
        @audits_by_user << audit
      end
    end
    
    thumbs_up = 0
    @audits_by_user.each do |audit|
      a = AuditThumbsUp.find_by_audit_id(audit.id)
      if a != nil
        thumbs_up += a.votes_for  
      end
    end

    return thumbs_up
  end
end