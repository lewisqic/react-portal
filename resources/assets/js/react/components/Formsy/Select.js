import React, { Component } from 'react';
import autobind from 'autobind-decorator';
import { withFormsy } from 'formsy-react';

class Select extends Component {

    componentDidMount() {
        let value = null;
        if ( this.props.getValue() ) {
            value = this.props.getValue();
        } else {
            value = this.props.options[0].value || '';
        }
        this.props.setValue(value);
    }

    @autobind
    changeValue(e) {
        this.props.setValue(e.currentTarget.value);
    }

    render() {

        let validationError = this.props.validationError ? this.props.validationError : 'This field is required.';
        let errorMessage = this.props.isValid() ? '' : validationError;
        let options = this.props.options || [];

        return (
            <div className={errorMessage ? 'is-invalid' : ''}>
                <select className="form-control" onChange={ this.changeValue } value={ this.props.getValue() || '' }>
                    { _.map(options, (option) => {
                        return <option value={ option.value } key={ option.value }>{ option.text }</option>
                    }) }
                </select>
                <span className="validation-error">{ errorMessage }</span>
            </div>
        );
    }
}

export default withFormsy(Select);