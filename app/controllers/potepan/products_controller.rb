# frozen_string_literal: true

module Potepan
    class ProductsController < ApplicationController
      def show
      binding.pry
        @product = Spree::Product.find(params[:id])
      end
    end
  end