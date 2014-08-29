/** @jsx React.DOM */

var widgets = [{name: 'HTML', desc: 'HTML content block'}];

$(document).on('page:change', initContentAreas);

var ContentArea = React.createClass({
  getInitialState: function(){
    return {adminMode: true}
  },
  plusIcon: 'glyphicon glyphicon-plus',
  render: function(){
    return <div>
        {this.state.adminMode && <a data-toggle='modal' data-target='#my-modal' className='btn btn-default'><i className={this.plusIcon}></i> Add Widget</a>}
        <div className="modal fade" id="my-modal">
          <div className="modal-dialog">
            <div className="modal-content">
              <div className="modal-header">
                <button type="button" className="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span className="sr-only">Close</span></button>
                <h4 className="modal-title">Select widget</h4>
              </div>
              <div className="modal-body">
                <div className="list-group">
                  {_.map(widgets, function(widget){ return <WidgetLink widget={widget} /> })}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  }
});

var WidgetLink = React.createClass({
  render: function(){
    return <a href='#' className='list-group-item'>
      <h4>{this.props.widget.name}</h4>
      <p>{this.props.widget.desc}</p>
    </a>
  }
});

function initContentAreas() {
  $('[data-content-area]').each(function(){
    contentArea = $(this);
    contentArea.addClass('content-area-active')
    React.renderComponent(
        <ContentArea />,
        this
    );
  });
}
