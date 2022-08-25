<?php 

    class Database{
    
        private $host = "localhost";
        private $db_name = "d1";
        private $username = "root";
        private $password = "";

        private static $instance = null;
        public $connection = null;
    
        private function __construct(){    
            $this->connection = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);
        }

        public function getConnection(){
            return $this->connection;
        }
        
        public static function getInstance(){
            if(!isset(self::$instance)){
                self::$instance = new Database();
            }

            return self::$instance;
        }
        
    }