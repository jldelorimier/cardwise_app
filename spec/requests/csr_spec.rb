require 'rails_helper'
# require "rspec"
# require "./credit_cards_controller.rb"

RSpec.describe "chase_sapphire_reserve_cost_benefit_analysis", type: :request do
  describe "POST /chase_sapphire_reserve_cost_benefit_analysis" do
  #   it "works! (now write some real specs)" do
  #     CreditCard.create(institution_name: "Chase", card_name: "Chase Sapphire Reserve", annual_fee: 550, sign_on_bonus_spending_min_dollars: 4000, sign_on_bonus_time_constraint_days: 90, sign_on_bonus_points: 50000, travel_credit_dollars: 300, percent_back_dining: 3, percent_back_travel: 3, percent_back_non_travel_non_dining: 1, travel_multiplier: 1.5, lyft_percent_back: 10, lyft_pink_membership: true, dashpass_membership: true, doordash_credit: 60, priority_pass_select_membership: true, global_entry_application_fee_credit_dollars: 100, tsa_precheck_application_fee_credit_dollars: 85, visa_infinite_perks: true, zero_foreign_transaction_fees: true)
  #     post '/api/calculate_cost_benefit'
  #     # ^ this is making a post request that calls for the response from that route
  #     answers = JSON.parse(response.body)
  #     # ^ this creates a variable "answers" in this test. the value of "answers" is the body of the response of the post request to this route which is the hash from this line `render json: {netbenefit: netbenefit, benefit: benefit}` in my chase_sapphire_reserve_cost_benefit_analysis method. 
  #     # 
  #     p answers
  #     expect(response).to have_http_status(200)
  #     expect(answers["netbenefit"]).to eq(-550)
  #   end
  #THE BELOW GOES WITH THE METHOD I COMMENTED OUT BECAUSE THIS ISN'T A REAL BENEFIT
    # it "adds $300 to benefit if total monthly spending x 3 >= $4000" do
    #   CreditCard.create(institution_name: "Chase", card_name: "Chase Sapphire Reserve", annual_fee: 550, sign_on_bonus_spending_min_dollars: 4000, sign_on_bonus_time_constraint_days: 90, sign_on_bonus_points: 50000, travel_credit_dollars: 300, percent_back_dining: 3, percent_back_travel: 3, percent_back_non_travel_non_dining: 1, travel_multiplier: 1.5, lyft_percent_back: 10, lyft_pink_membership: true, dashpass_membership: true, doordash_credit: 60, priority_pass_select_membership: true, global_entry_application_fee_credit_dollars: 100, tsa_precheck_application_fee_credit_dollars: 85, visa_infinite_perks: true, zero_foreign_transaction_fees: true)
    #   post '/api/calculate_cost_benefit'
    #   answers = JSON.parse(response.body)
    #   expect(response).to have_http_status(200)
    #   expect(answers["benefit"]).to eq(300)
    # end
    #THE BELOW IS A GOOD TEST, BUT IT DOESN'T WORK BC IT IS SUPPOSED TO TEST THE "BENEFIT" AFTER ONLY THE FIRST IF STATEMENT, AND INSTEAD IT TESTS THE BENEFIT AT THE END OF ALL THE IF STATEMENTS.
    # it "adds $300 to benefit if annual commuting+flights+hotels+lyft >= $300" do
    #   CreditCard.create(institution_name: "Chase", card_name: "Chase Sapphire Reserve", annual_fee: 550, sign_on_bonus_spending_min_dollars: 4000, sign_on_bonus_time_constraint_days: 90, sign_on_bonus_points: 50000, travel_credit_dollars: 300, percent_back_dining: 3, percent_back_travel: 3, percent_back_non_travel_non_dining: 1, travel_multiplier: 1.5, lyft_percent_back: 10, lyft_pink_membership: true, dashpass_membership: true, doordash_credit: 60, priority_pass_select_membership: true, global_entry_application_fee_credit_dollars: 100, tsa_precheck_application_fee_credit_dollars: 85, visa_infinite_perks: true, zero_foreign_transaction_fees: true)
    #   post '/api/calculate_cost_benefit'
    #   answers = JSON.parse(response.body)
    #   expect(response).to have_http_status(200)
    #   expect(answers["benefit"]).to eq(300)
    # end
    it "adds $750 to benefit if you spend >=$4000 in first three months and will spend $750 or more on travel in the year, in addition to the $300 travel credit" do
      CreditCard.create(institution_name: "Chase", card_name: "Chase Sapphire Reserve", annual_fee: 550, sign_on_bonus_spending_min_dollars: 4000, sign_on_bonus_time_constraint_days: 90, sign_on_bonus_points: 50000, travel_credit_dollars: 300, percent_back_dining: 3, percent_back_travel: 3, percent_back_non_travel_non_dining: 1, travel_multiplier: 1.5, lyft_percent_back: 10, lyft_pink_membership: true, dashpass_membership: true, doordash_credit: 60, priority_pass_select_membership: true, global_entry_application_fee_credit_dollars: 100, tsa_precheck_application_fee_credit_dollars: 85, visa_infinite_perks: true, zero_foreign_transaction_fees: true)
      post '/api/calculate_cost_benefit'
      answers = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(answers["benefit"]).to eq(1050)
    end

  end
end