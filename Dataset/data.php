<?php
require_once __DIR__ .  './vendor/autoload.php';

use Phpml\Dataset\CsvDataset;
use Phpml\CrossValidation\StratifiedRandomSplit;
use Phpml\Preprocessing\LabelEncoder;
use Phpml\Classification\SVC;
use Phpml\SupportVectorMachine\Kernel;

$dataset= new CsvDataset('/assets/data/saw_evaluations.csv', 1 ,true);
// untuk membaca file csv

$datasplit= new StratifiedRandomSplit($datasplit, 0.2, 1234);
$TrainDataSamples= $datasplit->getTrainSamples();//x
$TrainDataLabels= $datasplit->getTrainLabels();//y
$TestDataSamples= $datasplit->getTrainSamples();
$TestDataLabels= $datasplit->getTrainLabels();
// membagi menjadi data training dan testing

function label_encode($DataNumber){
    $xDataProcessed = [];
    $colNum = count($DataNumber[0]);
    for($i = 0;$i < $colNum;$i++){
        $colData = array_column($DataNumber, $i);
        $labelEncoder = new LabelEncoder();
        $target = [];
        $labelEncoder->fit($colData, $target);
        $labels = $labelEncoder->classes();
        for($j = 0;$j < count($DataNumber);$j++){
            $xDataProcessed[$j][$i] = array_search($DataNumber[$j][$i], $labels);
        }
    }
    return $xDataProcessed;
}
$xTrainEncoded = label_encode($TrainDataSamples);
$xTestEncoded = label_encode($TestDataSamples);
// merubah data menjadi numeric

$clasifier= new SVC(Kernel::LINEAR);
$clasifier->train($TrainDataSamples, $TrainDataLabels);
// melatih model dengan data training

$predictLabels= $clasifier->predict($TestDataSamples);
// menguji model dengan data testing

use Phpml\Metric\Accuracy;

$accuracy = Accuracy::score($TestDataLabels, $predictLabels);
echo "Akurasi nilai adalah =";
// menguji Akurasi
?>