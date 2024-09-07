function make_environment(env) {
    return new Proxy(env, {
        get(target, prop, receiver) {
            if (env[prop] !== undefined) {
                return env[prop].bind(env);
            }
            return (...args) => {
                throw new Error(`NOT IMPLEMENTED: ${prop} ${args}`);
            }
        }
    });
}

async function getWasm() {
    return await WebAssembly.instantiateStreaming(fetch("mg.wasm"), {
	env: make_environment(this)
    })
}

(async () => {
    const [wasm] = await Promise.all([
	getWasm(),
    ]);
    console.log(wasm);
})();
