require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "PostmarkRails3" do

  it "should use postmark for delivery" do
    Postmark.should_receive(:send_through_postmark) do |message|
      message.subject.should == "hello"
    end
    TestMailer.simple_message.deliver
  end

  # it "should allow tagging of message" do
  #   Postmark.should_receive(:send_through_postmark) do |message|
  #     message.tag.to_s.should == "delivery"
  #   end
  #   TestMailer.tagged_message.deliver
  # end
  # 
  # it "should work with multipart messages" do
  #   Postmark.should_receive(:send_through_postmark) do |message|
  #       message.should be_multipart
  #       message.body_text.should == "hello"
  #       message.body_html.should == "<b>hello</b>"
  #   end
  #   TestMailer.multipart_message.deliver
  # end

end
