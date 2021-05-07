SET @userID := 1;
SELECT
  `name`
FROM
  `user`
WHERE
  `user`.id IN(
    SELECT
      follows.follower_user_id FROM follows
    WHERE
      follows.followee_user_id = @userID);
