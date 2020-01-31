require './caesar_cipher.rb'

describe "caesar_cipher" do
  it "accepts letters and numbers" do 
    expect(caesar_cipher("hello world", 5)).to eql("mjqqt btwqi")
  end
  it "changes capital and lowercase letters" do
    expect(caesar_cipher("Hello World", 5)).to eql("Mjqqt Btwqi")    
  end
  it "has different output for the number given" do 
    expect(caesar_cipher("Hello World", 6)).to eql("Nkrru Cuxrj")    
  end
  it "doesn't change special characters" do 
    expect(caesar_cipher("~`!@#$%^&*()[]{}| ", 5)).to eql("~`!@#$%^&*()[]{}| ")    
  end
  it "accepts numbers out of alphabet range" do
    expect(caesar_cipher("Test", 27)).to eql("Uftu") 
    expect(caesar_cipher("Test", 1)).to eql("Uftu")
    expect(caesar_cipher("Test", -1)).to eql("Sdrs")  
    expect(caesar_cipher("Test", 0)).to eql("Test")
    expect(caesar_cipher("Test", 26)).to eql("Test")         
  end
end