class TodoList
    # methods and stuff go here
    def initialize(list_title)
    	@title = list_title
    	@items = Array.new #Starts empty!
    end

    attr_reader :title, :items

    def set_title(title)
    	@title = title
    end

    def add_item(new_item)
    	item = Item.new(new_item)
    	@items.push(item)
    end 

    def remove_item(item_id)
    	@items.delete_at(item_id)
    end

    def print_list
    	print_title
    	puts
    	print_items
    end

    def print_title
    	puts @title
    end

    def print_items
    	@items.each do |item|
    		item.print_item
    	end
    end

    def change_item_status(item_id)
    	@items.at(item_id).change_status
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

	def print_item
		puts "#{@description} Status: #{@completed_status.to_s}"
	end

end