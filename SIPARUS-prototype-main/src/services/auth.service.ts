import { apiSlice } from "./base-query";

export const authApi = apiSlice.injectEndpoints({
   endpoints: (builder) => ({
    login: builder.mutation({  // mutation  itu dipake untuk sesuatu yang akan kita lempar data nya (post, put) kalo query itu hanya get kek mengembalikan data aja
        query: (credentials) => ({
            url: '/login',
            method: 'POST',
            body: credentials,
        }),
      }),
      register: builder.mutation({
        query: (credentials) => ({
            url: '/register',
            method: 'POST',
            body: credentials,
        }),
      }),
   }),
});

export const {useLoginMutation, useRegisterMutation} = authApi;