const External = function(endpoint, callback) {
    // do external api call here

    const res = 'ENDPOINT: ' + endpoint;
    // call the callback with response data
    setTimeout(() => {
        callback(res);
    }, 1000);
};

export default External