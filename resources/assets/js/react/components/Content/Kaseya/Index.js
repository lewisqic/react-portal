import React, { Component } from 'react';
import { toJS } from 'mobx';
import { inject, observer} from "mobx-react";
import * as V from 'victory';

@inject('store') @observer
class Test extends Component {

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
                        <div className="card">
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
                        </div>
                    </div>
                    <div className="col-sm-4">
                        <div className="card">
                            <div className="card-body">
                                <V.VictoryPie
                                    data={[
                                        { x: "Cats", y: 35 },
                                        { x: "Dogs", y: 40 },
                                        { x: "Birds", y: 55 }
                                    ]}
                                />
                            </div>
                        </div>
                    </div>
                    <div className="col-sm-4">
                        <div className="card">
                            <div className="card-body">
                                <V.VictoryStack>
                                    <V.VictoryArea
                                        data={[{x: "a", y: 2}, {x: "b", y: 3}, {x: "c", y: 5}]}
                                    />
                                    <V.VictoryArea
                                        data={[{x: "a", y: 1}, {x: "b", y: 4}, {x: "c", y: 5}]}
                                    />
                                    <V.VictoryArea
                                        data={[{x: "a", y: 3}, {x: "b", y: 2}, {x: "c", y: 6}]}
                                    />
                                </V.VictoryStack>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }

}

export default Test