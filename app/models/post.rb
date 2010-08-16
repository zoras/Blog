class Post < ActiveRecord::Base
  # validates :title, :presence => true
  validate :custom_presence_of
  #validates :body, :presence => true, :length => { :minimum => 5}
  
  has_many :comments, :dependent => :destroy
  
   before_validation :before_validation_callback
   after_validation :before_validation_callback
   before_save :before_save_callback
   after_save :after_save_callback
   before_create :before_create_callback
   around_create :around_create_callback
   after_create :after_create_callback
   before_update :before_update_callback
   around_update :around_update_callback
   after_update :after_update_callback
   
   def before_validation_callback
    puts :before_validation_callback
   end
   
   def after_validation_callback
    puts "After Validation"
   end
  
   def before_save_callback
     puts "Before Save"
    end
    
    def after_save_callback
      puts "After Save"
     end
     
    def before_create_callback
       puts "Before Create"
    end
      
    def around_create_callback
        puts "Around Create Validation"
    end
       
    def after_create_callback
         puts "After Create"
    end
     
    def before_update_callback
           puts "Before Update"
      end
          
          def around_update_callback
             puts "Around Update"
            end
            def after_create_callback
               puts "After Create"
              end
  
  def custom_presence_of
     errors.add(:title, "should not be empty") if self.title.blank?
  end
end
