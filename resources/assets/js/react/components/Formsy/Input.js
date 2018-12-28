import React, { Component } from 'react';
import autobind from 'autobind-decorator';
import { withFormsy } from 'formsy-react';

class Input extends Component {

    @autobind
    changeValue(e) {
        this.props.setValue(e.currentTarget.value);
    }

    render() {

        let validationError = this.props.validationError ? this.props.validationError : 'This field is required.';
        let errorMessage = this.props.isValid() ? '' : validationError;

        return (
            <div className={errorMessage ? 'is-invalid' : ''}>
                <input type={this.props.type} className="form-control" onChange={this.changeValue} placeholder={this.props.placeholder} value={this.props.getValue() || ''} autoFocus={this.props.autoFocus ? true : false} />
                <span className="validation-error">{ errorMessage }</span>
            </div>
        );
    }
}

export default withFormsy(Input);