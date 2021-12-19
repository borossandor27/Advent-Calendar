<h1>Adventi kalendárium</h1>
    <div id="calendar">
        <?php 
        for ($index = 0; $index < 24; $index++) {
            $id = 'a'.$index;
            echo '<div class="ablak" id="'.$id.'">'.$id.'</div>';
        }
        ?>
    </div> <!-- calendar vége -->
<script>
function kinyit(){
    console.log(this.value);  
    this.style.backgroundImage = "url('images/door_opened.svg')";
    this.removeEventListener("click", kinyit, true);
}
<?php 
    for ($index = 0; $index < 24; $index++) {
        $id = 'a'.$index;
        echo 'document.getElementById("'.$id.'").addEventListener("click", kinyit, true);';
    }
?>
</script>
        <?php

?>
