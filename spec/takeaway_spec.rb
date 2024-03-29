require "takeaway"

describe Takeaway do

  let (:takeaway) { Takeaway.new     }
  let (:customer) { double :customer }

  it "has a menu" do
    expect(takeaway).to respond_to(:menu)
  end

  it "has a menu that contains food I like" do
    expect(takeaway.menu).to include("Peanut Butter Sandwich")
  end

  it "takes a call from a customer" do
    expect(takeaway).to respond_to(:take_call_from)
  end

  xit "outputs the menu to the command line" do
    expect { takeaway.show_menu }.to output("\e[0;31;49mPeanut Butter Sandwich \e[0m.......... £1.12\n\e[0;31;49mBowl of Cornflakes \e[0m.............. £0.99\n\e[0;31;49mBanana \e[0m.......................... £0.1\n\e[0;31;49mApple \e[0m........................... £0.15\n\e[0;31;49mCroissant \e[0m....................... £0.67\n\e[0;31;49mTea \e[0m............................. £0.7\n\e[0;31;49mCoffee \e[0m.......................... £0.8\n").to_stdout
  end
  
  it "stores order information once the customer has input it" do
    expect(takeaway).to respond_to(:order_information)
  end

  it "repeats an order back to a customer" do
    expect(takeaway).to respond_to(:repeat_order)
  end

  it "confirms an order with customer before placing it" do
    expect(takeaway).to respond_to(:confirm_order)
  end

end