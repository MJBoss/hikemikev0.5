


<?php if($login == true){echo'
        <li class="nav-item submenu dropdown">
        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style=" display: inline-block !important;">Admin</a>
          <ul class="dropdown-menu">
            <li class="nav-item"><a class="nav-link" href="<?php echo $dir_loc ?>admin/user-table.php">Users</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo $dir_loc ?>includes/logout.inc.php">Logout</a></li>
          </ul>
        </li>'
    }else{echo''}?>

<li class="nav-item submenu dropdown">
                  <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style=" display: inline-block !important;">Admin</a>
                    <ul class="dropdown-menu">
                      <li class="nav-item"><a class="nav-link" href="<?php echo $dir_loc ?>admin/user-table.php">Users</a></li>
                      <li class="nav-item"><a class="nav-link" href="<?php echo $dir_loc ?>includes/logout.inc.php">Logout</a></li>
                    </ul>
                  </li>



                  <li class="nav-item <?php if($cur_loc == "contact"){echo "active";}else{echo"";}?>"><a class="nav-link" href="<?php echo $dir_loc ?>contact.php">Contact</a></li>
                  <li class="nav-item submenu dropdown">
                  <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style=" display: <?php if($login == true){echo"inline-block";}else{echo"none";} ?> !important; ">Admin</a>
                    <ul class="dropdown-menu">
                      <li class="nav-item"><a class="nav-link" href="<?php echo $dir_loc ?>admin/user-table.php">Users</a></li>
                      <li class="nav-item"><a class="nav-link" href="<?php echo $dir_loc ?>includes/logout.inc.php">Logout</a></li>
                    </ul>
                  </li>