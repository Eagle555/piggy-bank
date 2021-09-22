require "piggy_bank"

describe PiggyBank do
 
  bank = PiggyBank.new
  
  it "creates new Piggy Bank object" do
    expect(bank).to be_instance_of PiggyBank
  end
  
  it "Check if menu exist" do
    expect(bank).to respond_to(:menu)
  end 
  
  it "Check if menu exist" do
    expect(bank).to respond_to(:shake)
  end 
  
  it "Check if menu exist" do
    expect(bank).to respond_to(:show)
  end 
  
  it "Check if menu exist" do
    expect(bank).to respond_to(:smash)
  end 
  
  it "Check if menu exist" do
    expect(bank).to respond_to(:add)
  end 
  
  it "Check if menu exist" do
    expect(bank).to respond_to(:withdraw)
  end 
  
  it "Piggy bank empty" do
    expect { bank.smash }.to output("Empty\n").to_stdout
  end
  
  it "Piggy bank empty" do
    expect { bank.shake }.to output("Empty\n").to_stdout
  end
  
  it "Piggy bank empty" do
    expect { bank.show }.to output("You have 0 on you account\n").to_stdout
  end
  
end

describe PiggyBank do
 
  bank = PiggyBank.new
  
  bank.instance_variable_set(:@bank, 12) 
  
  it "Piggy bank shows 12 when passed 12" do
    expect(bank.instance_variable_get(:@bank)).to eq(12)
  end
  
  it "Piggy bank 12 coins" do
    expect { bank.show }.to output("You have 12 on you account\n").to_stdout
  end
  
  it "Sound cling when something in the bank" do
    expect { bank.shake }.to output("Cling\n").to_stdout
  end
  
  it "Piggy bank smashed and 12 coins avalible" do
    expect { bank.smash }.to output("Piggy bank smashed and 12 land on the floor\n").to_stdout
  end
  
end