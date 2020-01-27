# frozen_string_literal: true

class ExpertsController < ApplicationController
  def index
    @experts = Expert.where.not(id: current_expert.id).order(created_at: :desc)
  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def destroy

  end
end
