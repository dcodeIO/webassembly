export interface IModule {

    exports: { [key: string]: Function };
    imports: { [key: string]: Function };
    memory: IMemory;
    env: { [key: string]: Function };

}

export interface IMemory {

    buffer: ArrayBuffer;
    initial: number,
    maximum?: number,
    U8: Uint8Array;
    U32: Uint32Array;
    S32: Int32Array;
    F32: Float32Array;
    F64: Float64Array;
    getInt(ptr: number): number;
    getUint(ptr: number): number;
    getFloat(ptr: number): number;
    getDouble(ptr: number): number;
    getString(ptr: number): string;
}

type LoadOptions = {

    imports: { [key: string]: any },
    initialMemory?: number,
    maximumMemory?: number

};

export function load(file: string, options?: LoadOptions): Promise<IModule>;
