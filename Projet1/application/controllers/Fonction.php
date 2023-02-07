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
        $this->load->model('Modelbdd');
        $data=array();
        $data['profil']=$this->Modelbdd->bddgetprofil($_SESSION['logged_in']['iduser']);
        $data['objets']=$this->Modelbdd->getobjetbyuser($_SESSION['logged_in']['iduser']);
        $this->load->view('templates/header');
        $this->load->view('pages/profil',$data);
        $this->load->view('templates/footer');

    }
    public function ajouterobjet(Type $var = null)
    {
        $this->load->model('Generalise');
        $categories=array();
        $categories['allcategorie']=$this->Generalise->getAllcategory();
        $this->load->view('templates/header');
        $this->load->view('pages/ajouterobjet',$categories);
        $this->load->view('templates/footer');

    }
    public function receivepicture()
    {
        $nom = $this->input->get('nom');
		$prix = $this->input->get('prix');
		$description = $this->input->get('description');

    }
    public function deconnexion()
    {
       
    }

}