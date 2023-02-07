<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Generalise extends CI_Model{
    public function getAllcategory() {
        $categories = array();
        $this->db->select('nom');
        $categories = $this->get('categorie');
        $result=array();
        $i=0;

        foreach ($categories->result_array() as $row) {

        }

        return $result;
    }

    public function getObjectbycategorie($idcategory) {
        $this->db->select('idobjet');
        $this->db->where('idcategorie',$idcategory);
        $idobjects = $this->db->get('objetcategorie');

        $objects = $this->db->get('objet');
        $allobjectsofcategory = array();
        for($i=0; $i<sizeof($idobjects); $i++) {
            for ($j=0; $j<sizeof($objects); $j++) {
                $oneid = $objects['idobjet'];
                if ($idobjects == $oneid) {
                    $allobjectsofcategory[] = $objects;
                break;
                }
            }
        }

        return $allobjectsofcategory;
    }

}
?>