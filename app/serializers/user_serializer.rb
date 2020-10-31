class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  # def initialize(user_object)
  #   @user = user_object 
  # end

  def to_serialized_json
    options = {
      include: {
        follower_follows: {
          include: {
            follower: {
              only: [:username]
            }
          }
        },
        following_follows: {
          include: {
            following: {
              only: [:username]
            }
          }
        }
      }
    }
    @user.to_json(options)
  end
end
