class Api::V1::Shop::ReportsController < Api::ShopBaseController
  before_action :ensure_params_true, :find_invoice, :find_user_invoice,
    :check_exist_report, :check_conditions_to_report, :check_black_list

  def create
    @report = @invoice.reviews.build report_params
    @report.owner = current_user
    @report.recipient = @user_invoice.user
    if @report.save
      if @invoice.shipping? || @invoice.waiting?
        InvoiceStatus.new(@invoice, @user_invoice, "cancel", current_user).
          shop_update_status
      end
      render json: {message: I18n.t("report.create_success"),
        data: {report: @report}, code: 1}, status: 200
    else
      render json: {message: error_messages(@report.errors.messages), data: {},
        code: 0}, status: 200
    end
  end

  private
  def report_params
    params.require(:report).permit Review::REPORT_ATTRIBUTES_PARAMS
  end

  def ensure_params_true
    unless CheckParams.new(Review::REPORT_ATTRIBUTES_PARAMS, params[:report]).params_exist?
      render json: {message: I18n.t("rate.missing_params"), data: {}, code: 0},
        status: 422
    end
  end

  def find_invoice
    @invoice = Invoice.find_by id: params[:report][:invoice_id], user: current_user
    if @invoice.nil?
      render json: {message: I18n.t("rate.invoice.get_invoice_fail"), data: {},
        code: 0}, status: 200
    end
  end

  def find_user_invoice
    status = @invoice.status
    @user_invoice = @invoice.user_invoices.find_by_status status
    if @user_invoice.nil?
      render json: {message: I18n.t("rate.invoice.get_user_invoice_fail"), data: {},
        code: 0}, status: 200
    end
  end

  def check_exist_report
    report = @invoice.reviews.find_by owner: current_user,
      review_type: params[:report][:review_type]
    if report
      render json: {message: I18n.t("report.invoice.report_exist"), data: {},
        code: 0}, status: 200
    end
  end

  def check_conditions_to_report
    if CheckReportConditions.new(@invoice, @user_invoice, params[:report][:review_type],
      current_user).shop_report_conditions?
      render json: {message: I18n.t("report.create_fail"), data: {},
        code: 0}, status: 200
    end
  end
end
