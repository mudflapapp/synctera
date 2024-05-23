=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.111.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Synctera
  class CardStatusReasonCode
    ACT = "ACT".freeze
    ADD = "ADD".freeze
    AUX = "AUX".freeze
    CLO = "CLO".freeze
    COM = "COM".freeze
    DOB = "DOB".freeze
    EML = "EML".freeze
    EXP = "EXP".freeze
    FRD = "FRD".freeze
    FUL = "FUL".freeze
    INA = "INA".freeze
    INF = "INF".freeze
    ISS = "ISS".freeze
    KYC = "KYC".freeze
    LOS = "LOS".freeze
    MAT = "MAT".freeze
    NAM = "NAM".freeze
    NEG = "NEG".freeze
    NEW = "NEW".freeze
    OTH = "OTH".freeze
    OUT = "OUT".freeze
    PHO = "PHO".freeze
    PIN = "PIN".freeze
    PRC = "PRC".freeze
    REQ = "REQ".freeze
    REV = "REV".freeze
    SSN = "SSN".freeze
    STO = "STO".freeze
    SUS = "SUS".freeze
    TMP = "TMP".freeze
    UNK = "UNK".freeze

    def self.all_vars
      @all_vars ||= [ACT, ADD, AUX, CLO, COM, DOB, EML, EXP, FRD, FUL, INA, INF, ISS, KYC, LOS, MAT, NAM, NEG, NEW, OTH, OUT, PHO, PIN, PRC, REQ, REV, SSN, STO, SUS, TMP, UNK].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if CardStatusReasonCode.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CardStatusReasonCode"
    end
  end
end
