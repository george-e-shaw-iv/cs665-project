SET @userID := 1;
SELECT
  podcast_episode.title AS title,
  podcast_creator. `name` AS creator
FROM
  saved_podcasts
  INNER JOIN podcast_episode ON podcast_episode.id = saved_podcasts.podcast_id
  INNER JOIN podcast_show ON podcast_show.id = podcast_episode.show_id
  INNER JOIN podcast_creator ON podcast_creator.id = podcast_show.creator_id
WHERE
  saved_podcasts.user_id = @userID;
