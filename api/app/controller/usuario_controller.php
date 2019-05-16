<?php

namespace App\Controller;

use App\Lib\Response;
use app\model\Usuario;

class UsuarioController
{
    private $response;

    public function __CONSTRUCT()
    {
        $this->response = new Response();
    }

    public function getAll()
    {
        try {
            $this->response->setResponse(true);
            $this->response->result = Usuario::get();
        } catch (\Exception $e) {
            $this->response->setResponse(false, $e->getMessage());
        }
        return $this->response;
    }

    public function mesHombres()
    {
        try {
            $allMount = [];
            $count = 0;
            $datesDB = Usuario::where('gender', 'like', '%Male%')->get();
            foreach ($datesDB as $date) {
                $dateTemp = new \DateTime($date->birth_date);
                $allMount[$count++] = $dateTemp->format('m');
            }

            $tempVar = 0;
            $count = 0;
            $varElements = array_count_values($allMount);
            foreach ($varElements as $max) {
                if ($tempVar < $max) {
                    $tempVar = $max;
                }
                $count++;
            }

            $this->response->setResponse(true);
            $this->response->result = "Mes $allMount[$count] Cantidad: $tempVar";
        } catch (\Exception $e) {
            $this->response->setResponse(false, $e->getMessage());
        }
        return $this->response;
    }

    public function getEdadMujeres()
    {
        try {
            $average = [];
            $count = 0;
            $datesDB = Usuario::where('gender', 'like', '%Female%')->get();
            foreach ($datesDB as $date) {
                $average[$count++] = self::dateDiff($date->birth_date, date('Y/m/d'));
            }
            $sum = 0;
            foreach ($average as $valueTemp) {

                $sum += $valueTemp;
            }
            $averageAll = $sum / count($average);

            $this->response->setResponse(true);
            $this->response->result = $averageAll;
        } catch (\Exception $e) {
            $this->response->setResponse(false, $e->getMessage());
        }
        return $this->response;
    }

    protected function dateDiff($start, $end)
    {
        $date1 = new \DateTime($start);
        $date2 = new \DateTime($end);

        $year1 = $date1->format('Y');
        $year2 = $date2->format('Y') - 1;

        $mount1 = $date1->format('m');
        $mount2 = $date2->format('m');

        $day1 = $date1->format('d');
        $day2 = $date2->format('d');


        $years2018 = $year2 - ($year1);
        // Check Values
        if ($mount1 <= ($mount2 - 1) || ($mount1 == $mount2 && $day1 <= $day2)) {
            $years2018++;
        }

        return $years2018;
    }
}
