require 'test_helper'

class IncidentAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incident_attachment = incident_attachments(:one)
  end

  test "should get index" do
    get incident_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_incident_attachment_url
    assert_response :success
  end

  test "should create incident_attachment" do
    assert_difference('IncidentAttachment.count') do
      post incident_attachments_url, params: { incident_attachment: { avatar: @incident_attachment.avatar, incident_id: @incident_attachment.incident_id } }
    end

    assert_redirected_to incident_attachment_url(IncidentAttachment.last)
  end

  test "should show incident_attachment" do
    get incident_attachment_url(@incident_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_incident_attachment_url(@incident_attachment)
    assert_response :success
  end

  test "should update incident_attachment" do
    patch incident_attachment_url(@incident_attachment), params: { incident_attachment: { avatar: @incident_attachment.avatar, incident_id: @incident_attachment.incident_id } }
    assert_redirected_to incident_attachment_url(@incident_attachment)
  end

  test "should destroy incident_attachment" do
    assert_difference('IncidentAttachment.count', -1) do
      delete incident_attachment_url(@incident_attachment)
    end

    assert_redirected_to incident_attachments_url
  end
end
