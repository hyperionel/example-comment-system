Exercise: Implement a Commenting System with Nested Comments
Context:
You are building a blog platform using Ruby on Rails. The platform allows users to write posts and other users to comment on those posts. Additionally, users should be able to reply to comments, creating a nested commenting structure.

Requirements:

Models and Associations:

Assume you already have a User model and a Post model.
Create a Comment model that belongs to both a User and a Post.
Allow comments to have replies (nested comments), so a comment can belong to another comment.

Feature Implementation:

Implement the ability for a user to comment on a post.
Implement the ability for users to reply to other comments, supporting multiple levels of nesting.
Display the comments in a nested structure on the post's show page.

Controller Actions:

Implement the necessary controller actions to create, edit, and delete comments and replies.
Implement the necessary routes and views to handle these actions.

Security Considerations:

Ensure that only the author of a comment can edit or delete it.
Prevent unauthorized users from creating, editing, or deleting comments.

Bonus:

Implement a feature to allow users to upvote or downvote comments.
