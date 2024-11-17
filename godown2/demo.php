<?php
include 'inc/dbcon.php';
$query = mysqli_query($con, "select * from product");
$rows  = mysqli_fetch_all($query, MYSQLI_ASSOC);
?>

<select required class="form-control">
    <?php
    foreach ($rows as $row) {
    ?>
        <option><?php echo $row['product_name'] ?></option>
    <?php
    }
    ?>
</select>

<select required class="form-control">
    <?php
    foreach ($rows as $row) {
    ?>
        <option><?php echo $row['product_name'] ?></option>
    <?php
    }
    ?>
</select>







<div class="form-group col-md-4"> <label>Transaction Type</label><select name="tran_type" required autofocus class="form-control">
        <option value="stock_in">Stock In</option>
        <option value="dispatch">Dispatch</option>
        <option value="cancel">Cancel</option>
    </select></div>
<div class="form-group col-md-4"><label>Product</label><select name="product_name" required class="form-control"><?php foreach ($rows as $row) {
                                                                                                                        echo   "<option>" . $row['product_name'] . "</option>";
                                                                                                                    } ?></select></div>
<div class="form-group col-md-4"><label for="qty">Quantity</label> <input name="quantity" required type="number" placeholder="Quantity" class="form-control" id="qty"></div>