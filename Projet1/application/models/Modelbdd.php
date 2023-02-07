<?php if (!defined('BASEPATH')) exit ('No direct script access allowed');
class Modelbdd extends CI_Model 
{
    public function getinscrit()
    {
        $array=array();
        $array=$this->db->get('user');
        return $array;
    }
    public function bddgetprofil($id = '')
    {
        $array=array();
        $this->db->where('iduser',$id);
        $array=$this->db->get('user');
        $result=array();
        foreach ($array->result_array() as $row) {
            $result['iduser']=$row['iduser'];
            $result['nom']=$row['nom'];
            $result['prenom']=$row['prenom'];
            $result['email']=$row['email'];
            $result['isadmin']=$row['isadmin'];
        }
        return $result;
    }
    public function getobjetbyuser($iduser = '')
    {
        $array=array();
        $tab=array(
            'objet.nom','objet.prix','user.nom as username'
        );
        $this->db->select($tab);
        $this->db->join('user','objet.iduser=user.iduser');
        $this->db->where('objet.iduser',$iduser);
        $array=$this->db->get('objet');
        $result=array();
        $i=0;
        foreach ($array->result_array() as $row) {
            //  var_dump($row);
            $result[$i]['nom']=$row['nom'];
            $result[$i]['prix']=$row['prix'];
            $result[$i]['username']=$row['username'];
            $i++;
        }
        return $result;

    }
}

?>