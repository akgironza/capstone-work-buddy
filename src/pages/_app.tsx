import { type AppType } from "next/app";

import { api } from "~/utils/api";

import "~/styles/globals.css";

import Head from "next/head";

const MyApp: AppType = ({ Component, pageProps }) => {
  return (
    <>
    {/* <Head>
      <title>Work Buddy</title>
      <meta name="description" content="Work Buddy task tracker" />
      <link rel="icon" href="/favicon.ico" />
    </Head> */}
    <Component {...pageProps} />
    </>
)};

export default api.withTRPC(MyApp);
