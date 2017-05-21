<html>
    <head>
        <title>Blog</title>
        <link rel="stylesheet" href="https://bootswatch.com/united/bootstrap.min.css" />
        <link rel="stylesheet" href="<?= base_url();?>assets/css/custom.css" />
        <script src="http://cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="<?= base_url();?>">Blog</a>
                </div>
                <div id="navbar">
                    <ul class="nav navbar-nav">
                        <li><a href="<?= base_url();?>">Home</a></li>
                        <li><a href="<?= base_url();?>about">About</a></li>
                        <li><a href="<?= base_url();?>posts">Blog</a></li>
                        <li><a href="<?= base_url();?>categories">Categories</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <?php if(!$this->session->userdata('logged_in')) : ?>
                            <li><a href="<?= base_url();?>users/login">Log in</a></li>
                            <li><a href="<?= base_url();?>users/register">Register</a></li>
                        <?php endif; ?>
                        <?php if($this->session->userdata('logged_in')) : ?>
                            <li><a href="<?= base_url();?>posts/create">Create Post</a></li>
                            <li><a href="<?= base_url();?>categories/create">Create Category</a></li>
                            <li><a href="<?= base_url();?>users/logout">Log Out</a></li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container">
            
            <?php if ($this->session->flashdata('user_registered')) : ?>
                <?= '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>' ; ?>
            
            <?php endif; ?>
            <?php if ($this->session->flashdata('post_created')) : ?>
                <?= '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>' ; ?>
            
            <?php endif; ?>
            <?php if ($this->session->flashdata('post_updated')) : ?>
                <?= '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>' ; ?>
            
            <?php endif; ?>
            <?php if ($this->session->flashdata('category_created')) : ?>
                <?= '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>' ; ?>
            
            <?php endif; ?>
            <?php if ($this->session->flashdata('post_deleted')) : ?>
                <?= '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>' ; ?>
            
            <?php endif; ?>
            <?php if ($this->session->flashdata('login_failed')) : ?>
                <?= '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>' ; ?>
            
            <?php endif; ?>
            <?php if ($this->session->flashdata('user_loggedin')) : ?>
                <?= '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>' ; ?>
            
            <?php endif; ?>
             <?php if ($this->session->flashdata('user_loggedout')) : ?>
                <?= '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>' ; ?>
            
            <?php endif; ?>

            
        
        
    
