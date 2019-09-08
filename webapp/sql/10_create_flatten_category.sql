DROP TABLE IF EXISTS `category_flatten`;

CREATE TABLE category_flatten AS
(SELECT
  t3.id                    AS id,
  categories.id            AS parent_id,
  categories.category_name AS parent_name,
  t3.category_child        AS category_name
FROM (SELECT
        id,
        parent_id,
        category_name AS category_child
      FROM categories) AS t3 LEFT JOIN categories ON t3.parent_id = categories.id);

ALTER TABLE category_flatten ADD PRIMARY KEY(id);
