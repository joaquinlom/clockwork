module OrganizationHelper
  
  def get_membership(user, organization)
    membership = Membership.find_by_user_id_and_organization_id(user.id, organization.id)
    @id_membership = membership.id.to_s
  end
  
end