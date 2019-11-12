class Api::V1::EventsController < Api::V1::BaseController

	before_action :set_event, only: [:verify_event]
  before_action :set_user, only: [:details]

	def verify_event
		render json: {message: 'Could not find event in our system.'}, status: 404 and return unless @event.present?
		render json: {message: 'Success' }, status: 200 and return if @event.present?
	end

  def details
    render json: { event: build_event_object }, status: 200
  end

  def build_event_object
    event_array = []
    credit_card_array = []
    pending_bill_payment_amount = current_user.paid_transactions_with_arcus_inititated.sum(&:amount)
    covered_amount    = current_user.actual_steadipay_balance + pending_bill_payment_amount
    if current_user.credit_card_accounts.without_deleted.blank?
      credit_card_array << { credit_card: nil, covered_amount: covered_amount, uncovered_amount: nil }
    else
      current_user.credit_card_accounts.without_deleted
                                       .includes(:transactions)
                                       .in_desc
                                       .each do |credit_card|
        transactions         = credit_card.transactions
        uncovered_amount     = transactions.where(is_processed: false, is_covered: false, archived: false).last_forty_five_days.sum(&:amount)
        credit_card.due_date = credit_card.parsed_due_date
        credit_card_array << { credit_card: credit_card, covered_amount: covered_amount,
                               uncovered_amount: uncovered_amount }
      end
    end
    credit_card_array
  end

	private
	def set_event
		@event = Event.find_by(code: params[:code])
	end

  def set_user
    @user = User.find(params[:id])
  end
end
