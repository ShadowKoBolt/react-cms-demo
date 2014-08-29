/** @jsx React.DOM */

var ContentArea = React.createClass({
  getInitialState: function(){
    return {adminMode: false}
  },
  plusIcon: 'glyphicon glyphicon-plus',
  render: function(){
    return <div>
        {this.state.adminMode && <i className={this.plusIcon}>Hello World</i>}
      </div>
  }
});

function initContentAreas() {
  $('[data-content-area]').each(function(){
    React.renderComponent(
        <ContentArea />,
        this
    );
  });
}
