<h2><?= $post['title']; ?></h2>
<small class="post-date">Posted on: <?= $post['time'];?></small><br>
<img src="<?= site_url(); ?>assets/images/posts/<?= $post['post_image']; ?>"><br><br>
<div class="post-body">
    <?= $post['body']; ?>
</div>

<?php if($this->session->userdata('user_id') == $post['user_id']) : ?>
    <hr>
    <a class="btn btn-default pull-left" style="background-color:#772953;" href="<?= base_url();?>posts/edit/<?= $post['slug'];?>">Edit</a>
    <?= form_open('/posts/delete/'.$post['id']); ?>
        <input type="submit" value="Delete" class="btn btn-default" style="background-color:#772953;">
    <?= form_close(); ?>
<?php endif; ?>
    
    <hr>
    <h3>Comments:</h3>
    <?php if(isset($comments)) : ?>
        <?php foreach($comments as $comment) : ?>
            <div class="well">
            <h5>[by <strong><?= $comment['name']; ?></strong> on <?= $comment['time']; ?>]<br><br><?= $comment['body']; ?></h5>
            </div>
        <?php endforeach; ?>
    <?php else : ?>
        <p>No comments to display.</p>
    <?php endif; ?>
    <hr>
    <h3>Add Comment</h3>
    <?= validation_errors(); ?>
    <?= form_open('comments/create/'.$post['id']); ?>
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control">
    </div>
    <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" class="form-control">
    </div>
    <div class="form-group">
        <label>Body</label>
        <textarea name="body" class="form-control"></textarea>
    </div>
    <input type="hidden" name="slug" value="<?= $post['slug']; ?>">
    <button type="submit" class="btn btn-default" style="background-color:#772953;">Comment</button>
    <?php form_close(); ?>
    
    