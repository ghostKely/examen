<?php
defined('BASEPATH') OR exit('No direct script access allowed');	//protection fichier
require_once (APPPATH . 'controllers/Mysession.php');

class Fonction extends Mysession{
    public function index ()
    {
        $this->load->view('templates/template');
        
    }
    public function acceuil()
    {
       
    }
    public function categorie()
    {
       
    }
    public function decouvrir()
    {
       
    }
    public function profil()
    {
        $data=array();
        $data['title']=$_SESSION['']
        $this->load->view('templates/template',$data);

    }
    public function deconnexion()
    {
       
    }

}