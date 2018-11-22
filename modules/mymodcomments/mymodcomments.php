<?php
class MyModComments extends Module
{
    public function __construct()
    {
        $this->name = 'mymodcomments';
        $this->tab = 'front_office_features';
        $this->version = '0.1.0';
        $this->author = 'Fabien Serny';
        $this->displayName = 'Mon module de commentaires produits';
        $this->description = 'Avec ce module, vos clients pourront noter et commenter vos produits !';
        parent::__construct();
        $this->bootstrap = true;
    }

}