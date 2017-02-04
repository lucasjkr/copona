<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-authorizenet-sim" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
      <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
          <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-authorizenet-sim" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-merchant"><?php echo $entry_merchant; ?></label>
            <div class="col-sm-10">
              <input type="text" name="authorizenet_sim_merchant" value="<?php echo $authorizenet_sim_merchant; ?>" placeholder="<?php echo $entry_merchant; ?>" id="input-merchant" class="form-control" />
              <?php if ($error_merchant) { ?>
                  <div class="text-danger"><?php echo $error_merchant; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-key"><?php echo $entry_key; ?></label>
            <div class="col-sm-10">
              <input type="text" name="authorizenet_sim_key" value="<?php echo $authorizenet_sim_key; ?>" placeholder="<?php echo $entry_key; ?>" id="input-key" class="form-control" />
              <?php if ($error_key) { ?>
                  <div class="text-danger"><?php echo $error_key; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-callback"><span data-toggle="tooltip" data-html="true" data-trigger="click" title="<?php echo htmlspecialchars($help_callback); ?>"><?php echo $entry_callback; ?></span></label>
            <div class="col-sm-10">
              <textarea rows="5" readonly id="input-callback" class="form-control"><?php echo $callback; ?></textarea>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-md5"><span data-toggle="tooltip" data-html="true" data-trigger="click" title="<?php echo htmlspecialchars($help_md5); ?>"><?php echo $entry_md5; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="authorizenet_sim_md5" value="<?php echo $authorizenet_sim_md5; ?>" placeholder="<?php echo $entry_md5; ?>" id="input-md5" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $entry_test; ?></label>
            <div class="col-sm-10">
              <label class="radio-inline">
                  <?php if ($authorizenet_sim_test) { ?>
                    <input type="radio" name="authorizenet_sim_test" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                <?php } else { ?>
                    <input type="radio" name="authorizenet_sim_test" value="1" />
                    <?php echo $text_yes; ?>
                <?php } ?>
              </label>
              <label class="radio-inline">
                  <?php if (!$authorizenet_sim_test) { ?>
                    <input type="radio" name="authorizenet_sim_test" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                <?php } else { ?>
                    <input type="radio" name="authorizenet_sim_test" value="0" />
                    <?php echo $text_no; ?>
                <?php } ?>
              </label>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-total"><span data-toggle="tooltip" title="<?php echo $help_total; ?>"><?php echo $entry_total; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="authorizenet_sim_total" value="<?php echo $authorizenet_sim_total; ?>" placeholder="<?php echo $entry_total; ?>" id="input-total" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_order_status; ?></label>
            <div class="col-sm-10">
              <select name="authorizenet_sim_order_status_id" id="input-order-status" class="form-control">
                  <?php foreach ($order_statuses as $order_status) { ?>
                      <?php if ($order_status['order_status_id'] == $authorizenet_sim_order_status_id) { ?>
                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                    <?php } else { ?>
                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                    <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-geo-zone"><?php echo $entry_geo_zone; ?></label>
            <div class="col-sm-10">
              <select name="authorizenet_sim_geo_zone_id" id="input-geo-zone" class="form-control">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                    <?php if ($geo_zone['geo_zone_id'] == $authorizenet_sim_geo_zone_id) { ?>
                        <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                    <?php } else { ?>
                        <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                    <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="authorizenet_sim_status" id="input-status" class="form-control">
                  <?php if ($authorizenet_sim_status) { ?>
                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                    <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                    <option value="1"><?php echo $text_enabled; ?></option>
                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="authorizenet_sim_sort_order" value="<?php echo $authorizenet_sim_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>