class CouponsController < ApplicationController

    def index
        @coupon = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end

    def create
        coupon = Coupon.create(coupon_params)
        # coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
        redirect_to coupon_path(coupon)
    end
    private
    def coupon_params
        params.require(:coupon).permit(:store, :coupon_code) 
    end
end

