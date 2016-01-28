class TodoList
    # methods and stuff go here
    def initialize(list_title)
    	@title = list_title
    	@items = Array.new #Starts empty!
    end

    attr_reader :title, :items

    def name_list(name)
    	@title = name
    end

    def add_item(new_item)
    	item = Item.new(new_item)
    	@items.push(item)
    end 

    def remove_item(item_id)
    	@items.delete_at(item_id)
    end
end

class Item 
	attr_reader :description, :completed_status

	def initialize (item_description)
		@description = item_description
		@completed_status = false
	end

	def completed?
		completed_status == true
	end

	def change_status
			@completed_status = !@completed_status
	end
end