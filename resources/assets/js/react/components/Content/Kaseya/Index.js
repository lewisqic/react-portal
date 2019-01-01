import React, { Component } from 'react';
import { toJS } from 'mobx';
import { inject, observer} from "mobx-react";
import * as V from 'victory';

@inject('store') @observer
class Index extends Component {

    render() {



        return (
            <div>
                <h2>Kaseya</h2>
                <div className="row mb-5">
                    <div className="col-sm-12">
                        <div className="card">
                            <div className="card-body">
                                Kaseya landing page with some basic charting examples.
                            </div>
                        </div>
                    </div>
                </div>
                <div className="row">
                    <div className="col-sm-4">
                        <div className="card widget">
                            <div className="card-header yellow">
                                <i className="fa fa-thumbtack mr-2" /> Widget Header <small>Widget subheader</small>
                                <span>
                                    <a href="#"><i className="fa fa-bars fa-rotate-90" /></a>
                                    <a href="#"><i className="fa fa-expand-arrows-alt" /></a>
                                    <a href="#"><i className="fal fa-times-circle" /></a>
                                </span>
                            </div>
                            <div className="card-body">
                                <V.VictoryChart
                                    theme={V.VictoryTheme.material}
                                >
                                    <V.VictoryLine
                                        style={{
                                            data: { stroke: "#c43a31" },
                                            parent: { border: "1px solid #ccc"}
                                        }}
                                        data={[
                                            { x: 1, y: 2 },
                                            { x: 2, y: 3 },
                                            { x: 3, y: 5 },
                                            { x: 4, y: 4 },
                                            { x: 5, y: 7 }
                                        ]}
                                    />
                                </V.VictoryChart>
                            </div>
                            <div className="card-footer">
                                <a href="#"><i className="fa fa-comment-alt" /></a>
                                <a href="#"><i className="fa fa-bullhorn" /></a>
                                <a href="#"><i className="fa fa-lightbulb" /></a>
                            </div>
                        </div>
                    </div>
                    <div className="col-sm-4">
                        <div className="card widget">
                            <div className="card-header red">
                                <i className="fa fa-thumbtack mr-2" /> Widget Header <small>Widget subheader</small>
                                <span>
                                    <a href="#"><i className="fa fa-bars fa-rotate-90" /></a>
                                    <a href="#"><i className="fa fa-expand-arrows-alt" /></a>
                                    <a href="#"><i className="fal fa-times-circle" /></a>
                                </span>
                            </div>
                            <div className="card-body">
                                <V.VictoryPie
                                    data={[
                                        { x: "Cats", y: 35 },
                                        { x: "Dogs", y: 40 },
                                        { x: "Birds", y: 55 }
                                    ]}
                                />
                            </div>
                            <div className="card-footer">
                                <a href="#"><i className="fa fa-comment-alt" /></a>
                                <a href="#"><i className="fa fa-bullhorn" /></a>
                                <a href="#"><i className="fa fa-lightbulb" /></a>
                            </div>
                        </div>
                    </div>
                    <div className="col-sm-4">
                        <div className="card widget">
                            <div className="card-header gray">
                                <i className="fa fa-thumbtack mr-2" /> Widget Header <small>Widget subheader</small>
                                <span>
                                    <a href="#"><i className="fa fa-bars fa-rotate-90" /></a>
                                    <a href="#"><i className="fa fa-expand-arrows-alt" /></a>
                                    <a href="#"><i className="fal fa-times-circle" /></a>
                                </span>
                            </div>
                            <div className="card-body">
                                <V.VictoryChart
                                    theme={V.VictoryTheme.material}
                                >
                                    <V.VictoryArea
                                        style={{ data: { fill: "#38b3de" } }}
                                        data={[
                                            { x: 1, y: 2, y0: 2 },
                                            { x: 2, y: 3, y0: 2 },
                                            { x: 3, y: 5, y0: 1 },
                                            { x: 4, y: 4, y0: 1 },
                                            { x: 5, y: 6, y0: 0 }
                                        ]}
                                    />
                                </V.VictoryChart>
                            </div>
                            <div className="card-footer">
                                <a href="#"><i className="fa fa-comment-alt" /></a>
                                <a href="#"><i className="fa fa-bullhorn" /></a>
                                <a href="#"><i className="fa fa-lightbulb" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }

}

export default Index