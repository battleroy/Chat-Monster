<div class="modal fade" id="modalDeleteDiv" role="dialog">
  <script src="../../static/js/deleter.js"></script>
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Are you sure?</h4>
      </div>
      <div class="modal-body">
        <button type="button" id="button-confirm" class="btn btn-danger" data-dismiss="modal" onclick="deleteSpotById(${spot.id});">Yes</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">No</button>
      </div>
    </div>
  </div>
</div>
