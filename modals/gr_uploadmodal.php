<div class="modal fade" id="gr_uplodaModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Upload CSV file</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

                <form action="../admin/gr_functions.php" method="post" name="file" enctype="multipart/form-data">

                    <div class="modal-body">


                        <?php

                            include "../includes/connect.php"; // Database connection using PDO
                            //$sql="SELECT name,id FROM student"; 
                            $sql="SELECT * FROM tbl_sy"; 
                            echo "<label for='exampleFormControlInput1' class='form-label'>Academic Year</label>";
                            /* You can add order by clause to the sql statement if the names are to be displayed in alphabetical order */
                            echo "<select name=sy value='' class='form-control'>School Year</option>"; // list box select command
                            foreach ($conn->query($sql) as $row){//Array or records stored in $row
                            echo "<option value=$row[sy_id]>$row[sy_desc]</option>"; 
                            /* Option values are added by looping through the array */ 
                            }
                            echo "</select>";// Closing of list box

                        ?>
                         <br/>

                         <?php

                            include "../includes/connect.php"; // Database connection using PDO
                            //$sql="SELECT name,id FROM student"; 
                            $sql="SELECT * FROM tbl_sem"; 
                            echo "<label for='exampleFormControlInput1' class='form-label'>Semester</label>";
                            /* You can add order by clause to the sql statement if the names are to be displayed in alphabetical order */
                            echo "<select name=sem value='' class='form-control'>School Year</option>"; // list box select command
                            foreach ($conn->query($sql) as $row){//Array or records stored in $row
                            echo "<option value=$row[sem_id]>$row[sem_desc]</option>"; 
                            /* Option values are added by looping through the array */ 
                            }
                            echo "</select>";// Closing of list box

                        ?>
                         <br/>

                         <?php

                            include "../includes/connect.php"; // Database connection using PDO
                            //$sql="SELECT name,id FROM student"; 
                            $sql="SELECT * FROM tbl_subject"; 
                            echo "<label for='exampleFormControlInput1' class='form-label'>Subject</label>";
                            /* You can add order by clause to the sql statement if the names are to be displayed in alphabetical order */
                            echo "<select name=subject value='' class='form-control'>School Year</option>"; // list box select command
                            foreach ($conn->query($sql) as $row){//Array or records stored in $row
                            echo "<option value=$row[sbj_id]>$row[sbj_code]: $row[sbj_desc]</option>"; 
                            /* Option values are added by looping through the array */ 
                            }
                            echo "</select>";// Closing of list box

                        ?>
                         <br/>


                    

                        <label class="col-md-4 control-label" for="filebutton">Select File</label>
                                
                        <div class="col-md-4">
                            <input type="file" name="file" id="file" class="input-large"> 
                        </div>

                        <!-- <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Name</label>
                            <input type="text" class="form-control"  name ="name" >
                        </div>

                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">quantity</label>
                            <input type="number" class="form-control" name="quantity" >
                        </div>

                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Unit</label>
                            <input type="text" class="form-control"  name="unit">
                        </div>

                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Price</label>
                            <input type="number" class="form-control"  name ="price">
                        </div> -->

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" name ="Import">Import </button>
                    </div>
                </form>
        </div>
    </div>
</div>
