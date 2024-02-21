require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/reservations", type: :request do
  
  # Reservation. As you add validations to Reservation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Reservation.create! valid_attributes
      get reservations_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      reservation = Reservation.create! valid_attributes
      get reservation_url(reservation)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_reservation_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      reservation = Reservation.create! valid_attributes
      get edit_reservation_url(reservation)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Reservation" do
        expect {
          post reservations_url, params: { reservation: valid_attributes }
        }.to change(Reservation, :count).by(1)
      end

      it "redirects to the created reservation" do
        post reservations_url, params: { reservation: valid_attributes }
        expect(response).to redirect_to(reservation_url(Reservation.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Reservation" do
        expect {
          post reservations_url, params: { reservation: invalid_attributes }
        }.to change(Reservation, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post reservations_url, params: { reservation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested reservation" do
        reservation = Reservation.create! valid_attributes
        patch reservation_url(reservation), params: { reservation: new_attributes }
        reservation.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the reservation" do
        reservation = Reservation.create! valid_attributes
        patch reservation_url(reservation), params: { reservation: new_attributes }
        reservation.reload
        expect(response).to redirect_to(reservation_url(reservation))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        reservation = Reservation.create! valid_attributes
        patch reservation_url(reservation), params: { reservation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested reservation" do
      reservation = Reservation.create! valid_attributes
      expect {
        delete reservation_url(reservation)
      }.to change(Reservation, :count).by(-1)
    end

    it "redirects to the reservations list" do
      reservation = Reservation.create! valid_attributes
      delete reservation_url(reservation)
      expect(response).to redirect_to(reservations_url)
    end
  end
end