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
    public function install()
    {
        parent::install();
        $this->registerHook('displayProductTabConten');
        $this->registerHook('displayHeader');
        $this->registerHook('displayFooter');
        $this->registerHook('displayMyhook');
        return true;
    }
    public function hookDisplayProductTabConten(array $params)
    {
        return 'test';
    }
    public function processConfiguration()
    {
        if (Tools::isSubmit('submit_mymodcomments_form'))
            {
                $enable_grades = Tools::getValue('enable_grades');
                $enable_comments = Tools::getValue('enable_comments');
                Configuration::updateValue('MYMOD_GRADES', $enable_grades);
                Configuration::updateValue('MYMOD_COMMENTS', $enable_comments);
                $this->context->smarty->assign('confirmation', 'ok');
            }
    }
    public function assignConfiguration()
    {
        $enable_grades = Configuration::get('MYMOD_GRADES');
        $enable_comments = Configuration::get('MYMOD_COMMENTS');
        $this->context->smarty->assign('enable_grades', $enable_grades);
        $this->context->smarty->assign('enable_comments', $enable_comments);
    }
    public function getContent()
    {
        $this->processConfiguration();
        $this->assignConfiguration();
        return $this->display(__FILE__, 'getContent.tpl');
    }


}