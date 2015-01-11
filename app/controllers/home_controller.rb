class HomeController < ApplicationController

  before_action :authenticate_user!

  def step1 
    @property = Property.new
    @cities=['']
    business.business_cities.each {|bc| @cities << bc.city }
  end

  def step2 
    @bid = Bid.find(params[:id])
    @rooms = Room.all . order("display_order")
  end

  def step2proc 
    rooms = params[:rooms]
    bid_id = params[:bid_id]
    BidRoom.delete_all(["bid_id = ?", bid_id])
    ActiveRecord::Base.transaction do
      rooms.each do |room|
        if room[1].to_i > 0 
           br = BidRoom.new
           br.bid_id = bid_id
           br.room_id = room[0]
           br.num_rooms = room[1]
           br.save
        end       
      end 
    end
    redirect_to :action => 'step3', :id => bid_id
  end

  def step3 
    @bid = Bid.find(params[:id])
    @bid_rooms = BidRoom.where("bid_id = #{@bid.id}")
    @business = business
  end

  def step3proc 
    bid_id = params[:bid_id]
    quantities = params[:bid_rooms_item_quantity]
    ActiveRecord::Base.transaction do
      BidRoomItem.delete_all(["bid_id = ?", bid_id])
      quantities.each do |bid_room_id, instance|
        instance.each do |instance_num, bid_room_qty_hash|
          bid_room_qty_hash.each do |item_id, qty|
            if qty.to_i > 0
              bri = BidRoomItem.new
              bri.bid_id = bid_id
              bri.bid_room_id = bid_room_id
              bri.room_instance = instance_num
              bri.item_id = item_id
              bri.item_name = params[:bid_rooms_item][bid_room_id][instance_num][item_id]
              bri.item_qty = qty
              bri.rental_price = params[:bid_rooms_item_rental_price][bid_room_id][instance_num][item_id]
              bri.save
            end
          end
        end
      end
    end
    redirect_to :action => 'step4', :id => bid_id
    #render :text => "hello"
  end

  def step4 
    @bid = Bid.find(params[:id])
    @bid_rooms = BidRoom.find_all_by_bid_id(@bid.id)
  end

end
