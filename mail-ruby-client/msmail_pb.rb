# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: msmail.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "mailservice.ClicRdvMail" do
    optional :fromName, :string, 1
    optional :fromEmail, :string, 2
    optional :replyToName, :string, 3
    optional :replyToEmail, :string, 4
    optional :htmlContent, :string, 5
    optional :textContent, :string, 6
    optional :subject, :string, 7
    map :toMap, :string, :string, 8
    optional :groupId, :string, 9
  end
  add_message "mailservice.SendMailStatus" do
    optional :status, :string, 1
    optional :uniqueId, :string, 2
  end
end

module Mailservice
  ClicRdvMail = Google::Protobuf::DescriptorPool.generated_pool.lookup("mailservice.ClicRdvMail").msgclass
  SendMailStatus = Google::Protobuf::DescriptorPool.generated_pool.lookup("mailservice.SendMailStatus").msgclass
end
