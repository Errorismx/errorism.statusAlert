export const isEnvBrowser = (): boolean => !(window as any).invokeNative;

/**
* @param eventName - The endpoint eventname to target
* @param data - Data you wish to send in the NUI Callback
* @param devCB - Data you wish to cb in the NUI Callback
* @return returnData - A promise for the data sent back by the NuiCallbacks CB argument
*/

// fetchNui("example",{},fakedata).then((callbackdata)=>{

// });

export async function fetchNui<T = any>(
    eventName: string,
    data: unknown = {},
    devCb: any,
  ): Promise<T> {
    const options = {
      method: "post",
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: JSON.stringify(data),
    };
    const resourceName = (window as any).GetParentResourceName
      ? (window as any).GetParentResourceName()
      : "nui-frame-app";
    if (!isEnvBrowser()){
      const resp = await fetch(`https://${resourceName}/${eventName}`, options);
      return await resp.json();
    }else{
      return new Promise<any>(res => { setTimeout(()=>res(devCb), 1500) });
    }
  }