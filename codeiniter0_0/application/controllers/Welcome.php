<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('welcome_message');
		
	}		
/*=====================TEST DE CODE DANS CODE INITER PDF=====================*/
	public function try($pseudo = 'uknown') {
		echo 'Salut you : ' .$pseudo. '</br>';
		echo 'Variable id : ' .$this->input->get('id');
	}

	public function manger($plat='', $boisson='') {
		echo 'Voici votre menu : <br />';
		echo $plat. '<br />';
		echo $boisson.'<br />';
		echo 'Bonne appetito';
	}

	public function acceuil() {
		$data = array();
		$data['pseudo'] = 'Aldini';
		$data['email'] = 'takumi@gamil.com';
		$data['online'] = true;

		$this->load->view('vue',$data);
	}

	public function redirect() {
		$this->load->view('id');
	}

	public function login($nom, $mdp) {
		if ($nom=="admin" && $mdp=="1234") { $this->load->view('login');}
		else  { $this->load->redirect('welcome');}
	}
}
?>
