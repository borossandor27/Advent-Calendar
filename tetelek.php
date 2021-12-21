<h1>Tételek</h1>
<?php

?>
<form enctype="multipart/form-data" method="POST">
                <input type="file" name="fileToUpload" id="fileToUpload">
                <button type="submit" name="upload" value="true"> <i class="fas fa-cloud-upload-alt"></i> Fájl feltöltése</button>    
</form>
<div id="album">
    
<?php
    $dir = "uploads";
   $cdir = scandir($dir);
   foreach ($cdir as $key => $value)
   {
      if (!in_array($value,array(".","..")))
      {
          echo '<img src="'.$dir.DIRECTORY_SEPARATOR.$value.'" />';      
      }
   }
?>    
</div>