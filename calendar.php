<?php
$request = $_SESSION['makeCalendar']??true;
if(filter_input(INPUT_GET, "new", FILTER_VALIDATE_BOOLEAN, FILTER_NULL_ON_FAILURE) || $request ){
    //-- új kalendar készítés
    for ($index = 0; $index < 24; $index++) {
        $_SESSION['calendar'][$index]['id'] = 'a'.$index;
        $_SESSION['calendar'][$index]['szoveg'] = 'a'.$index.' szoveg';
        $_SESSION['calendar'][$index]['kep'] = 'a'.$index.'jpg';
        $_SESSION['calendar'][$index]['open'] = false;
    }
    $_SESSION['makeCalendar'] = false;
}
$id= filter_input(INPUT_GET, "ablak", FILTER_SANITIZE_NUMBER_INT);
if($id != "" && $id >= 0 && $id <= 23) $_SESSION['calendar'][$id]['open'] = true;
?>

<p id="button"><a href="<?php echo $_SERVER["PHP_SELF"]; ?>?menu=calendar&new=true" class="button">Új kalendárium</a></p>
<h1>
    <img src="images/fenyoag.svg">
    Adventi kalendárium
    <img src="images/fenyoag_jobb.svg" class="jobb">
</h1>
    <div id="calendar">
        <?php
        $url = 'index.php?menu=calendar&ablak=';
        for ($index = 0; $index < count($_SESSION['calendar']); $index++) {
            
            echo '<div '
            . 'class="ablak kozepre '.($_SESSION['calendar'][$index]['open']?'nyitva':'csukva')
            .'" id="'.$_SESSION['calendar'][$index]['id'].'" '
            . ' onclick= location.assign("'.$url.$_SESSION['calendar'][$index]['id'].'");>'.$_SESSION['calendar'][$index]['szoveg'].'</div>';
        }
        ?>
    </div> <!-- calendar vége -->
<script>
//function kinyit(){
//    this.style.backgroundImage = "url('images/door_opened.svg')";
//    this.classList.remove('nyitva');
//    this.classList.add('csukva');
//    this.removeEventListener("click", kinyit, true);
//}
<?php 
//    for ($index = 0; $index < count($_SESSION['calendar']); $index++) {
//        if(!$_SESSION['calendar'][$index]['open'])
//        echo 'document.getElementById("'.$_SESSION['calendar'][$index]['id'].'").addEventListener("click", kinyit, true);';
//    }
?>
</script>
        <?php

?>
