<h2><?= $title; ?></h2>

<?= validation_errors(); ?>

<?= form_open('posts/update'); ?>
<input type="hidden" name="id" value="<?= $post['id']; ?>">
  <div class="form-group">
    <label>Title</label>
    <input type="text" class="form-control" name="title" value="<?= $post['title']; ?>">
  </div>
  <div class="form-group">
    <label>Body</label>
    <textarea id="editor1" class="form-control" name="body"><?= $post['body']; ?></textarea>
  </div>
  <div class="form-group">
    <label>Category</label>
    <select name="category_id" class="form-control">
        <?php foreach($categories as $category) : ?>
            <option value="<?= $category['id']; ?>"><?= $category['name']; ?></option>
        <?php endforeach; ?>
    </select>   
</div>
  <button style="background-color:#772953;" type="submit" class="btn btn-default">Submit</button>
<?= form_close(); ?>



