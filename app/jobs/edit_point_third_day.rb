# Example: /app/jobs/myjob.rb

module EditPointThirdDay
  @queue = :high
  
  def self.perform()
    @users = User.all
    
    print "blala"
    
    @users.each do |user| 
      
      # TODO Remove this inconvenient code later
      if user.edit_points == nil
        user.edit_points = 0
      end
      
      user.edit_points += 1
      
      # TODO Fix so that user attrs be changed with validation
      user.save(:validate => false)
    end
  end  
end