<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Fonction extends CI_Controller {
    public function login($email, $mdp) {
        $query = $this->db->query('select nom, mail, mdp from client');  //alaina daoly le cient anayty database
        $verif = false;                                                 //boolean verif 
        $tab = array();                                                 //array asina anle donnees                                         

        foreach ($query->result_array() as $row) {
            $tab['nom'] = $row['nom'];                                  //alaina le nom
            $tab['email'] = $row['email'];                              //alaina le email
            $tab['mdp'] = $row['mdp'];                                  //alaina le mdp
        }

        for ($i=0; $i<sizeof($tab); $i++) {
            if ($email == $tab[$i]['email'] && $mdp == $tab[$i]['mdp']) {//raha mitovy le mdp sy ny email
                $verif = true;                                           //atao marina 
            }
        }

        return $verif;
    }

    public function select()
    {
        # code...
    }


}
?>