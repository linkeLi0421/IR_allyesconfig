; ModuleID = '/llk/IR_all_yes/fs/nls/nls_euc-jp.c_pt.bc'
source_filename = "../fs/nls/nls_euc-jp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.8 = type { i16, [2 x i8] }

@table = internal global { %struct.nls_table, [32 x i8] } { %struct.nls_table { ptr @.str, ptr null, ptr @uni2char, ptr @char2uni, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@p_nls = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nls_euc_jp__106_577_init_nls_euc_jp6 = internal global ptr @init_nls_euc_jp, section ".initcall6.init", align 4
@__exitcall_exit_nls_euc_jp = internal global ptr @exit_nls_euc_jp, section ".exitcall.exit", align 4
@__UNIQUE_ID_file107 = internal constant [34 x i8] c"nls_euc_jp.file=fs/nls/nls_euc-jp\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [32 x i8] c"nls_euc_jp.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"euc-jp\00", [25 x i8] zeroinitializer }, align 32
@sjisibm2euc_map = internal constant { [390 x [2 x i8]], [212 x i8] } { [390 x [2 x i8]] [[2 x i8] c"\F3\F3", [2 x i8] c"\F3\F4", [2 x i8] c"\F3\F5", [2 x i8] c"\F3\F6", [2 x i8] c"\F3\F7", [2 x i8] c"\F3\F8", [2 x i8] c"\F3\F9", [2 x i8] c"\F3\FA", [2 x i8] c"\F3\FB", [2 x i8] c"\F3\FC", [2 x i8] c"\F3\FD", [2 x i8] c"\F3\FE", [2 x i8] c"\F4\A1", [2 x i8] c"\F4\A2", [2 x i8] c"\F4\A3", [2 x i8] c"\F4\A4", [2 x i8] c"\F4\A5", [2 x i8] c"\F4\A6", [2 x i8] c"\F4\A7", [2 x i8] c"\F4\A8", [2 x i8] c"\A2\CC", [2 x i8] c"\A2\C3", [2 x i8] c"\F4\A9", [2 x i8] c"\F4\AA", [2 x i8] c"\F4\AB", [2 x i8] c"\F4\AC", [2 x i8] c"\F4\AD", [2 x i8] c"\A2\E8", [2 x i8] c"\D4\E3", [2 x i8] c"\DC\DF", [2 x i8] c"\E4\E9", [2 x i8] c"\E3\F8", [2 x i8] c"\D9\A1", [2 x i8] c"\B1\BB", [2 x i8] c"\F4\AE", [2 x i8] c"\C2\AD", [2 x i8] c"\C3\FC", [2 x i8] c"\E4\D0", [2 x i8] c"\C2\BF", [2 x i8] c"\BC\F4", [2 x i8] c"\B0\A9", [2 x i8] c"\B0\C8", [2 x i8] c"\F4\AF", [2 x i8] c"\B0\D2", [2 x i8] c"\B0\D4", [2 x i8] c"\B0\E3", [2 x i8] c"\B0\EE", [2 x i8] c"\B1\A7", [2 x i8] c"\B1\A3", [2 x i8] c"\B1\AC", [2 x i8] c"\B1\A9", [2 x i8] c"\B1\BE", [2 x i8] c"\B1\DF", [2 x i8] c"\B1\D8", [2 x i8] c"\B1\C8", [2 x i8] c"\B1\D7", [2 x i8] c"\B1\E3", [2 x i8] c"\B1\F4", [2 x i8] c"\B1\E1", [2 x i8] c"\B2\A3", [2 x i8] c"\F4\B0", [2 x i8] c"\B2\BB", [2 x i8] c"\B2\E6", [2 x i8] zeroinitializer, [2 x i8] c"\B2\ED", [2 x i8] c"\B2\F5", [2 x i8] c"\B2\FC", [2 x i8] c"\F4\B1", [2 x i8] c"\B3\B5", [2 x i8] c"\B3\D8", [2 x i8] c"\B3\DB", [2 x i8] c"\B3\E5", [2 x i8] c"\B3\EE", [2 x i8] c"\B3\FB", [2 x i8] c"\F4\B2", [2 x i8] c"\F4\B3", [2 x i8] c"\B4\C0", [2 x i8] c"\B4\C7", [2 x i8] c"\B4\D0", [2 x i8] c"\B4\DE", [2 x i8] c"\F4\B4", [2 x i8] c"\B5\AA", [2 x i8] c"\F4\B5", [2 x i8] c"\B5\AF", [2 x i8] c"\B5\C4", [2 x i8] c"\B5\E8", [2 x i8] c"\F4\B6", [2 x i8] c"\B7\C2", [2 x i8] c"\B7\E4", [2 x i8] c"\B7\E8", [2 x i8] c"\B7\E7", [2 x i8] c"\F4\B7", [2 x i8] c"\F4\B8", [2 x i8] c"\F4\B9", [2 x i8] c"\B8\CE", [2 x i8] c"\B8\E1", [2 x i8] c"\B8\F5", [2 x i8] c"\B8\F7", [2 x i8] c"\B8\F8", [2 x i8] c"\B8\FC", [2 x i8] c"\B9\AF", [2 x i8] c"\B9\B7", [2 x i8] c"\BA\BE", [2 x i8] c"\BA\DB", [2 x i8] c"\CD\AA", [2 x i8] c"\BA\E1", [2 x i8] c"\F4\BA", [2 x i8] c"\BA\EB", [2 x i8] c"\BB\B3", [2 x i8] c"\BB\B8", [2 x i8] c"\F4\BB", [2 x i8] c"\BB\CA", [2 x i8] c"\F4\BC", [2 x i8] c"\F4\BD", [2 x i8] c"\BB\D0", [2 x i8] c"\BB\DE", [2 x i8] c"\BB\F4", [2 x i8] c"\BB\F5", [2 x i8] c"\BB\F9", [2 x i8] c"\BC\E4", [2 x i8] c"\BC\ED", [2 x i8] c"\BC\FE", [2 x i8] c"\F4\BE", [2 x i8] c"\BD\C2", [2 x i8] c"\BD\E7", [2 x i8] c"\F4\BF", [2 x i8] c"\BD\F0", [2 x i8] c"\BE\B0", [2 x i8] c"\BE\AC", [2 x i8] c"\F4\C0", [2 x i8] c"\BE\B3", [2 x i8] c"\BE\BD", [2 x i8] c"\BE\CD", [2 x i8] c"\BE\C9", [2 x i8] c"\BE\E4", [2 x i8] c"\BF\A8", [2 x i8] c"\BF\C9", [2 x i8] c"\C0\C4", [2 x i8] c"\C0\E4", [2 x i8] c"\C0\F4", [2 x i8] c"\C1\A6", [2 x i8] c"\F4\C1", [2 x i8] c"\C1\F5", [2 x i8] c"\C1\FC", [2 x i8] c"\F4\C2", [2 x i8] c"\C1\F8", [2 x i8] c"\C2\AB", [2 x i8] c"\C2\A1", [2 x i8] c"\C2\A5", [2 x i8] c"\F4\C3", [2 x i8] c"\C2\B8", [2 x i8] c"\C2\BA", [2 x i8] c"\F4\C4", [2 x i8] c"\C2\C4", [2 x i8] c"\C2\D2", [2 x i8] c"\C2\D7", [2 x i8] c"\C2\DB", [2 x i8] c"\C2\DE", [2 x i8] c"\C2\ED", [2 x i8] c"\C2\F0", [2 x i8] c"\F4\C5", [2 x i8] c"\C3\A1", [2 x i8] c"\C3\B5", [2 x i8] c"\C3\C9", [2 x i8] c"\C3\B9", [2 x i8] c"\F4\C6", [2 x i8] c"\C3\D8", [2 x i8] c"\C3\FE", [2 x i8] c"\F4\C7", [2 x i8] c"\C4\CC", [2 x i8] c"\F4\C8", [2 x i8] c"\C4\D9", [2 x i8] c"\C4\EA", [2 x i8] c"\C4\FD", [2 x i8] c"\F4\C9", [2 x i8] c"\C5\A7", [2 x i8] c"\C5\B5", [2 x i8] c"\C5\B6", [2 x i8] c"\F4\CA", [2 x i8] c"\C5\D5", [2 x i8] c"\C6\B8", [2 x i8] c"\C6\D7", [2 x i8] c"\C6\E0", [2 x i8] c"\C6\EA", [2 x i8] c"\C6\E3", [2 x i8] c"\C7\A1", [2 x i8] c"\C7\AB", [2 x i8] c"\C7\C7", [2 x i8] c"\C7\C3", [2 x i8] c"\C7\CB", [2 x i8] c"\C7\CF", [2 x i8] c"\C7\D9", [2 x i8] c"\F4\CB", [2 x i8] c"\F4\CC", [2 x i8] c"\C7\E6", [2 x i8] c"\C7\EE", [2 x i8] c"\C7\FC", [2 x i8] c"\C7\EB", [2 x i8] c"\C7\F0", [2 x i8] c"\C8\B1", [2 x i8] c"\C8\E5", [2 x i8] c"\C8\F8", [2 x i8] c"\C9\A6", [2 x i8] c"\C9\AB", [2 x i8] c"\C9\AD", [2 x i8] c"\F4\CD", [2 x i8] c"\C9\CA", [2 x i8] c"\C9\D3", [2 x i8] c"\C9\E9", [2 x i8] c"\C9\E3", [2 x i8] c"\C9\FC", [2 x i8] c"\C9\F4", [2 x i8] c"\C9\F5", [2 x i8] c"\F4\CE", [2 x i8] c"\CA\B3", [2 x i8] c"\CA\BD", [2 x i8] c"\CA\EF", [2 x i8] c"\CA\F1", [2 x i8] c"\CB\AE", [2 x i8] c"\F4\CF", [2 x i8] c"\CB\CA", [2 x i8] c"\CB\E6", [2 x i8] c"\CB\EA", [2 x i8] c"\CB\F0", [2 x i8] c"\CB\F4", [2 x i8] c"\CB\EE", [2 x i8] c"\CC\A5", [2 x i8] c"\CB\F9", [2 x i8] c"\CC\AB", [2 x i8] c"\CC\AE", [2 x i8] c"\CC\AD", [2 x i8] c"\CC\B2", [2 x i8] c"\CC\C2", [2 x i8] c"\CC\D0", [2 x i8] c"\CC\D9", [2 x i8] c"\F4\D0", [2 x i8] c"\CD\BB", [2 x i8] c"\F4\D1", [2 x i8] c"\CE\BB", [2 x i8] c"\F4\D2", [2 x i8] c"\CE\BA", [2 x i8] c"\CE\C3", [2 x i8] c"\F4\D3", [2 x i8] c"\CE\F2", [2 x i8] c"\B3\DD", [2 x i8] c"\CF\D5", [2 x i8] c"\CF\E2", [2 x i8] c"\CF\E9", [2 x i8] c"\CF\ED", [2 x i8] c"\F4\D4", [2 x i8] c"\F4\D5", [2 x i8] c"\F4\D6", [2 x i8] zeroinitializer, [2 x i8] c"\F4\D7", [2 x i8] c"\D0\E5", [2 x i8] c"\F4\D8", [2 x i8] c"\D0\E9", [2 x i8] c"\D1\E8", [2 x i8] c"\F4\D9", [2 x i8] c"\F4\DA", [2 x i8] c"\D1\EC", [2 x i8] c"\D2\BB", [2 x i8] c"\F4\DB", [2 x i8] c"\D3\E1", [2 x i8] c"\D3\E8", [2 x i8] c"\D4\A7", [2 x i8] c"\F4\DC", [2 x i8] c"\F4\DD", [2 x i8] c"\D4\D4", [2 x i8] c"\D4\F2", [2 x i8] c"\D5\AE", [2 x i8] c"\F4\DE", [2 x i8] c"\D7\DE", [2 x i8] c"\F4\DF", [2 x i8] c"\D8\A2", [2 x i8] c"\D8\B7", [2 x i8] c"\D8\C1", [2 x i8] c"\D8\D1", [2 x i8] c"\D8\F4", [2 x i8] c"\D9\C6", [2 x i8] c"\D9\C8", [2 x i8] c"\D9\D1", [2 x i8] c"\F4\E0", [2 x i8] c"\F4\E1", [2 x i8] c"\F4\E2", [2 x i8] c"\F4\E3", [2 x i8] c"\F4\E4", [2 x i8] c"\DC\D3", [2 x i8] c"\DD\C8", [2 x i8] c"\DD\D4", [2 x i8] c"\DD\EA", [2 x i8] c"\DD\FA", [2 x i8] c"\DE\A4", [2 x i8] c"\DE\B0", [2 x i8] c"\F4\E5", [2 x i8] c"\DE\B5", [2 x i8] c"\DE\CB", [2 x i8] c"\F4\E6", [2 x i8] c"\DF\B9", [2 x i8] c"\F4\E7", [2 x i8] c"\DF\C3", [2 x i8] c"\F4\E8", [2 x i8] c"\F4\E9", [2 x i8] c"\E0\D9", [2 x i8] c"\F4\EA", [2 x i8] c"\F4\EB", [2 x i8] c"\E1\E2", [2 x i8] c"\F4\EC", [2 x i8] c"\F4\ED", [2 x i8] c"\F4\EE", [2 x i8] c"\E2\C7", [2 x i8] c"\E3\A8", [2 x i8] c"\E3\A6", [2 x i8] c"\E3\A9", [2 x i8] c"\E3\AF", [2 x i8] c"\E3\B0", [2 x i8] c"\E3\AA", [2 x i8] c"\E3\AB", [2 x i8] c"\E3\BC", [2 x i8] c"\E3\C1", [2 x i8] c"\E3\BF", [2 x i8] c"\E3\D5", [2 x i8] c"\E3\D8", [2 x i8] c"\E3\D6", [2 x i8] c"\E3\DF", [2 x i8] c"\E3\E3", [2 x i8] c"\E3\E1", [2 x i8] c"\E3\D4", [2 x i8] c"\E3\E9", [2 x i8] c"\E4\A6", [2 x i8] c"\E3\F1", [2 x i8] c"\E3\F2", [2 x i8] c"\E4\CB", [2 x i8] c"\E4\C1", [2 x i8] c"\E4\C3", [2 x i8] c"\E4\BE", [2 x i8] c"\F4\EF", [2 x i8] c"\E4\C0", [2 x i8] c"\E4\C7", [2 x i8] c"\E4\BF", [2 x i8] c"\E4\E0", [2 x i8] c"\E4\DE", [2 x i8] c"\E4\D1", [2 x i8] c"\F4\F0", [2 x i8] c"\E4\DC", [2 x i8] c"\E4\D2", [2 x i8] c"\E4\DB", [2 x i8] c"\E4\D4", [2 x i8] c"\E4\FA", [2 x i8] c"\E4\EF", [2 x i8] c"\E5\B3", [2 x i8] c"\E5\BF", [2 x i8] c"\E5\C9", [2 x i8] c"\E5\D0", [2 x i8] c"\E5\E2", [2 x i8] c"\E5\EA", [2 x i8] c"\E5\EB", [2 x i8] c"\F4\F1", [2 x i8] c"\F4\F2", [2 x i8] c"\F4\F3", [2 x i8] c"\E6\E8", [2 x i8] c"\E6\EF", [2 x i8] c"\E7\AC", [2 x i8] c"\F4\F4", [2 x i8] c"\E7\AE", [2 x i8] c"\F4\F5", [2 x i8] c"\E7\B1", [2 x i8] c"\F4\F6", [2 x i8] c"\E7\B2", [2 x i8] c"\E8\B1", [2 x i8] c"\E8\B6", [2 x i8] c"\F4\F7", [2 x i8] c"\F4\F8", [2 x i8] c"\E8\DD", [2 x i8] c"\F4\F9", [2 x i8] c"\F4\FA", [2 x i8] c"\E9\D1", [2 x i8] c"\F4\FB", [2 x i8] c"\E9\ED", [2 x i8] c"\EA\CD", [2 x i8] c"\F4\FC", [2 x i8] c"\EA\DB", [2 x i8] c"\EA\E6", [2 x i8] c"\EA\EA", [2 x i8] c"\EB\A5", [2 x i8] c"\EB\FB", [2 x i8] c"\EB\FA", [2 x i8] c"\F4\FD", [2 x i8] c"\EC\D6", [2 x i8] c"\F4\FE"], [212 x i8] zeroinitializer }, align 32
@euc2sjisibm_g3upper_map = internal constant { [106 x [2 x i8]], [44 x i8] } { [106 x [2 x i8]] [[2 x i8] c"\FA@", [2 x i8] c"\FAA", [2 x i8] c"\FAB", [2 x i8] c"\FAC", [2 x i8] c"\FAD", [2 x i8] c"\FAE", [2 x i8] c"\FAF", [2 x i8] c"\FAG", [2 x i8] c"\FAH", [2 x i8] c"\FAI", [2 x i8] c"\FAJ", [2 x i8] c"\FAK", [2 x i8] c"\FAL", [2 x i8] c"\FAM", [2 x i8] c"\FAN", [2 x i8] c"\FAO", [2 x i8] c"\FAP", [2 x i8] c"\FAQ", [2 x i8] c"\FAR", [2 x i8] c"\FAS", [2 x i8] c"\FAV", [2 x i8] c"\FAW", [2 x i8] c"\FAX", [2 x i8] c"\FAY", [2 x i8] c"\FAZ", [2 x i8] c"\FAb", [2 x i8] c"\FAj", [2 x i8] c"\FA|", [2 x i8] c"\FA\83", [2 x i8] c"\FA\8A", [2 x i8] c"\FA\8B", [2 x i8] c"\FA\90", [2 x i8] c"\FA\92", [2 x i8] c"\FA\96", [2 x i8] c"\FA\9B", [2 x i8] c"\FA\9C", [2 x i8] c"\FA\9D", [2 x i8] c"\FA\AA", [2 x i8] c"\FA\AE", [2 x i8] c"\FA\B0", [2 x i8] c"\FA\B1", [2 x i8] c"\FA\BA", [2 x i8] c"\FA\BD", [2 x i8] c"\FA\C1", [2 x i8] c"\FA\CD", [2 x i8] c"\FA\D0", [2 x i8] c"\FA\D5", [2 x i8] c"\FA\D8", [2 x i8] c"\FA\E0", [2 x i8] c"\FA\E5", [2 x i8] c"\FA\E8", [2 x i8] c"\FA\EA", [2 x i8] c"\FA\EE", [2 x i8] c"\FA\F2", [2 x i8] c"\FBC", [2 x i8] c"\FBD", [2 x i8] c"\FBP", [2 x i8] c"\FBX", [2 x i8] c"\FB^", [2 x i8] c"\FBn", [2 x i8] c"\FBp", [2 x i8] c"\FBr", [2 x i8] c"\FBu", [2 x i8] c"\FB|", [2 x i8] c"\FB}", [2 x i8] c"\FB~", [2 x i8] c"\FB\80", [2 x i8] c"\FB\82", [2 x i8] c"\FB\85", [2 x i8] c"\FB\86", [2 x i8] c"\FB\89", [2 x i8] c"\FB\8D", [2 x i8] c"\FB\8E", [2 x i8] c"\FB\92", [2 x i8] c"\FB\94", [2 x i8] c"\FB\9D", [2 x i8] c"\FB\9E", [2 x i8] c"\FB\9F", [2 x i8] c"\FB\A0", [2 x i8] c"\FB\A1", [2 x i8] c"\FB\A9", [2 x i8] c"\FB\AC", [2 x i8] c"\FB\AE", [2 x i8] c"\FB\B0", [2 x i8] c"\FB\B1", [2 x i8] c"\FB\B3", [2 x i8] c"\FB\B4", [2 x i8] c"\FB\B6", [2 x i8] c"\FB\B7", [2 x i8] c"\FB\B8", [2 x i8] c"\FB\D3", [2 x i8] c"\FB\DA", [2 x i8] c"\FB\E8", [2 x i8] c"\FB\E9", [2 x i8] c"\FB\EA", [2 x i8] c"\FB\EE", [2 x i8] c"\FB\F0", [2 x i8] c"\FB\F2", [2 x i8] c"\FB\F6", [2 x i8] c"\FB\F7", [2 x i8] c"\FB\F9", [2 x i8] c"\FB\FA", [2 x i8] c"\FB\FC", [2 x i8] c"\FCB", [2 x i8] c"\FCI", [2 x i8] c"\FCK"], [44 x i8] zeroinitializer }, align 32
@euc2sjisibm_jisx0212_map = internal constant { [280 x %struct.anon.8], [256 x i8] } { [280 x %struct.anon.8] [%struct.anon.8 { i16 -23869, [2 x i8] c"\FAU" }, %struct.anon.8 { i16 -20311, [2 x i8] c"\FAh" }, %struct.anon.8 { i16 -20280, [2 x i8] c"\FAi" }, %struct.anon.8 { i16 -20270, [2 x i8] c"\FAk" }, %struct.anon.8 { i16 -20268, [2 x i8] c"\FAl" }, %struct.anon.8 { i16 -20253, [2 x i8] c"\FAm" }, %struct.anon.8 { i16 -20242, [2 x i8] c"\FAn" }, %struct.anon.8 { i16 -20061, [2 x i8] c"\FAp" }, %struct.anon.8 { i16 -20057, [2 x i8] c"\FAo" }, %struct.anon.8 { i16 -20055, [2 x i8] c"\FAr" }, %struct.anon.8 { i16 -20052, [2 x i8] c"\FAq" }, %struct.anon.8 { i16 -20037, [2 x i8] c"\FAa" }, %struct.anon.8 { i16 -20034, [2 x i8] c"\FAs" }, %struct.anon.8 { i16 -20024, [2 x i8] c"\FAv" }, %struct.anon.8 { i16 -20009, [2 x i8] c"\FAw" }, %struct.anon.8 { i16 -20008, [2 x i8] c"\FAu" }, %struct.anon.8 { i16 -20001, [2 x i8] c"\FAt" }, %struct.anon.8 { i16 -19999, [2 x i8] c"\FAz" }, %struct.anon.8 { i16 -19997, [2 x i8] c"\FAx" }, %struct.anon.8 { i16 -19980, [2 x i8] c"\FAy" }, %struct.anon.8 { i16 -19805, [2 x i8] c"\FA{" }, %struct.anon.8 { i16 -19781, [2 x i8] c"\FA}" }, %struct.anon.8 { i16 -19738, [2 x i8] c"\FA~" }, %struct.anon.8 { i16 -19731, [2 x i8] c"\FA\80" }, %struct.anon.8 { i16 -19723, [2 x i8] c"\FA\81" }, %struct.anon.8 { i16 -19716, [2 x i8] c"\FA\82" }, %struct.anon.8 { i16 -19531, [2 x i8] c"\FA\84" }, %struct.anon.8 { i16 -19496, [2 x i8] c"\FA\85" }, %struct.anon.8 { i16 -19493, [2 x i8] c"\FA\86" }, %struct.anon.8 { i16 -19491, [2 x i8] c"\FBw" }, %struct.anon.8 { i16 -19483, [2 x i8] c"\FA\87" }, %struct.anon.8 { i16 -19474, [2 x i8] c"\FA\88" }, %struct.anon.8 { i16 -19461, [2 x i8] c"\FA\89" }, %struct.anon.8 { i16 -19264, [2 x i8] c"\FA\8C" }, %struct.anon.8 { i16 -19257, [2 x i8] c"\FA\8D" }, %struct.anon.8 { i16 -19248, [2 x i8] c"\FA\8E" }, %struct.anon.8 { i16 -19234, [2 x i8] c"\FA\8F" }, %struct.anon.8 { i16 -19030, [2 x i8] c"\FA\91" }, %struct.anon.8 { i16 -19025, [2 x i8] c"\FA\93" }, %struct.anon.8 { i16 -19004, [2 x i8] c"\FA\94" }, %struct.anon.8 { i16 -18968, [2 x i8] c"\FA\95" }, %struct.anon.8 { i16 -18494, [2 x i8] c"\FA\97" }, %struct.anon.8 { i16 -18460, [2 x i8] c"\FA\98" }, %struct.anon.8 { i16 -18457, [2 x i8] c"\FA\9A" }, %struct.anon.8 { i16 -18456, [2 x i8] c"\FA\99" }, %struct.anon.8 { i16 -18226, [2 x i8] c"\FA\9E" }, %struct.anon.8 { i16 -18207, [2 x i8] c"\FA\9F" }, %struct.anon.8 { i16 -18187, [2 x i8] c"\FA\A0" }, %struct.anon.8 { i16 -18185, [2 x i8] c"\FA\A1" }, %struct.anon.8 { i16 -18184, [2 x i8] c"\FA\A2" }, %struct.anon.8 { i16 -18180, [2 x i8] c"\FA\A3" }, %struct.anon.8 { i16 -18001, [2 x i8] c"\FA\A4" }, %struct.anon.8 { i16 -17993, [2 x i8] c"\FA\A5" }, %struct.anon.8 { i16 -17730, [2 x i8] c"\FA\A6" }, %struct.anon.8 { i16 -17701, [2 x i8] c"\FA\A7" }, %struct.anon.8 { i16 -17695, [2 x i8] c"\FA\A9" }, %struct.anon.8 { i16 -17685, [2 x i8] c"\FA\AB" }, %struct.anon.8 { i16 -17485, [2 x i8] c"\FA\AC" }, %struct.anon.8 { i16 -17480, [2 x i8] c"\FA\AD" }, %struct.anon.8 { i16 -17462, [2 x i8] c"\FA\AF" }, %struct.anon.8 { i16 -17456, [2 x i8] c"\FA\B2" }, %struct.anon.8 { i16 -17442, [2 x i8] c"\FA\B3" }, %struct.anon.8 { i16 -17420, [2 x i8] c"\FA\B4" }, %struct.anon.8 { i16 -17419, [2 x i8] c"\FA\B5" }, %struct.anon.8 { i16 -17415, [2 x i8] c"\FA\B6" }, %struct.anon.8 { i16 -17180, [2 x i8] c"\FA\B7" }, %struct.anon.8 { i16 -17171, [2 x i8] c"\FA\B8" }, %struct.anon.8 { i16 -17164, [2 x i8] c"\FAg" }, %struct.anon.8 { i16 -17154, [2 x i8] c"\FA\B9" }, %struct.anon.8 { i16 -16958, [2 x i8] c"\FA\BB" }, %struct.anon.8 { i16 -16921, [2 x i8] c"\FA\BC" }, %struct.anon.8 { i16 -16912, [2 x i8] c"\FA\BE" }, %struct.anon.8 { i16 -16724, [2 x i8] c"\FA\C0" }, %struct.anon.8 { i16 -16720, [2 x i8] c"\FA\BF" }, %struct.anon.8 { i16 -16717, [2 x i8] c"\FA\C2" }, %struct.anon.8 { i16 -16707, [2 x i8] c"\FA\C3" }, %struct.anon.8 { i16 -16695, [2 x i8] c"\FA\C5" }, %struct.anon.8 { i16 -16691, [2 x i8] c"\FA\C4" }, %struct.anon.8 { i16 -16668, [2 x i8] c"\FA\C6" }, %struct.anon.8 { i16 -16472, [2 x i8] c"\FA\C7" }, %struct.anon.8 { i16 -16439, [2 x i8] c"\FA\C8" }, %struct.anon.8 { i16 -16188, [2 x i8] c"\FA\C9" }, %struct.anon.8 { i16 -16156, [2 x i8] c"\FA\CA" }, %struct.anon.8 { i16 -16140, [2 x i8] c"\FA\CB" }, %struct.anon.8 { i16 -15962, [2 x i8] c"\FA\CC" }, %struct.anon.8 { i16 -15883, [2 x i8] c"\FA\CE" }, %struct.anon.8 { i16 -15880, [2 x i8] c"\FA\D1" }, %struct.anon.8 { i16 -15876, [2 x i8] c"\FA\CF" }, %struct.anon.8 { i16 -15711, [2 x i8] c"\FA\D3" }, %struct.anon.8 { i16 -15707, [2 x i8] c"\FA\D4" }, %struct.anon.8 { i16 -15701, [2 x i8] c"\FA\D2" }, %struct.anon.8 { i16 -15699, [2 x i8] c"\FAc" }, %struct.anon.8 { i16 -15688, [2 x i8] c"\FA\D6" }, %struct.anon.8 { i16 -15686, [2 x i8] c"\FA\D7" }, %struct.anon.8 { i16 -15681, [2 x i8] c"\FAf" }, %struct.anon.8 { i16 -15676, [2 x i8] c"\FA\D9" }, %struct.anon.8 { i16 -15662, [2 x i8] c"\FA\DA" }, %struct.anon.8 { i16 -15657, [2 x i8] c"\FA\DB" }, %struct.anon.8 { i16 -15653, [2 x i8] c"\FA\DC" }, %struct.anon.8 { i16 -15650, [2 x i8] c"\FA\DD" }, %struct.anon.8 { i16 -15635, [2 x i8] c"\FA\DE" }, %struct.anon.8 { i16 -15632, [2 x i8] c"\FA\DF" }, %struct.anon.8 { i16 -15455, [2 x i8] c"\FA\E1" }, %struct.anon.8 { i16 -15435, [2 x i8] c"\FA\E2" }, %struct.anon.8 { i16 -15431, [2 x i8] c"\FA\E4" }, %struct.anon.8 { i16 -15415, [2 x i8] c"\FA\E3" }, %struct.anon.8 { i16 -15400, [2 x i8] c"\FA\E6" }, %struct.anon.8 { i16 -15364, [2 x i8] c"\FAd" }, %struct.anon.8 { i16 -15362, [2 x i8] c"\FA\E7" }, %struct.anon.8 { i16 -15156, [2 x i8] c"\FA\E9" }, %struct.anon.8 { i16 -15143, [2 x i8] c"\FA\EB" }, %struct.anon.8 { i16 -15126, [2 x i8] c"\FA\EC" }, %struct.anon.8 { i16 -15107, [2 x i8] c"\FA\ED" }, %struct.anon.8 { i16 -14937, [2 x i8] c"\FA\EF" }, %struct.anon.8 { i16 -14923, [2 x i8] c"\FA\F0" }, %struct.anon.8 { i16 -14922, [2 x i8] c"\FA\F1" }, %struct.anon.8 { i16 -14891, [2 x i8] c"\FA\F3" }, %struct.anon.8 { i16 -14664, [2 x i8] c"\FA\F4" }, %struct.anon.8 { i16 -14633, [2 x i8] c"\FA\F5" }, %struct.anon.8 { i16 -14624, [2 x i8] c"\FA\F6" }, %struct.anon.8 { i16 -14621, [2 x i8] c"\FA\F8" }, %struct.anon.8 { i16 -14614, [2 x i8] c"\FA\F7" }, %struct.anon.8 { i16 -14431, [2 x i8] c"\FA\F9" }, %struct.anon.8 { i16 -14421, [2 x i8] c"\FA\FA" }, %struct.anon.8 { i16 -14397, [2 x i8] c"\FA\FC" }, %struct.anon.8 { i16 -14393, [2 x i8] c"\FA\FB" }, %struct.anon.8 { i16 -14389, [2 x i8] c"\FB@" }, %struct.anon.8 { i16 -14385, [2 x i8] c"\FBA" }, %struct.anon.8 { i16 -14375, [2 x i8] c"\FBB" }, %struct.anon.8 { i16 -14362, [2 x i8] c"\FBE" }, %struct.anon.8 { i16 -14357, [2 x i8] c"\FBH" }, %struct.anon.8 { i16 -14354, [2 x i8] c"\FBF" }, %struct.anon.8 { i16 -14352, [2 x i8] c"\FBI" }, %struct.anon.8 { i16 -14340, [2 x i8] c"\FBG" }, %struct.anon.8 { i16 -14159, [2 x i8] c"\FBJ" }, %struct.anon.8 { i16 -14107, [2 x i8] c"\FBK" }, %struct.anon.8 { i16 -14088, [2 x i8] c"\FBL" }, %struct.anon.8 { i16 -13914, [2 x i8] c"\FBM" }, %struct.anon.8 { i16 -13909, [2 x i8] c"\FBN" }, %struct.anon.8 { i16 -13907, [2 x i8] c"\FBO" }, %struct.anon.8 { i16 -13878, [2 x i8] c"\FBQ" }, %struct.anon.8 { i16 -13869, [2 x i8] c"\FBR" }, %struct.anon.8 { i16 -13853, [2 x i8] c"\FBT" }, %struct.anon.8 { i16 -13847, [2 x i8] c"\FBS" }, %struct.anon.8 { i16 -13836, [2 x i8] c"\FBV" }, %struct.anon.8 { i16 -13835, [2 x i8] c"\FBW" }, %struct.anon.8 { i16 -13828, [2 x i8] c"\FBU" }, %struct.anon.8 { i16 -13645, [2 x i8] c"\FBY" }, %struct.anon.8 { i16 -13635, [2 x i8] c"\FBZ" }, %struct.anon.8 { i16 -13585, [2 x i8] c"\FB[" }, %struct.anon.8 { i16 -13583, [2 x i8] c"\FB\\" }, %struct.anon.8 { i16 -13394, [2 x i8] c"\FB]" }, %struct.anon.8 { i16 -13366, [2 x i8] c"\FB_" }, %struct.anon.8 { i16 -13338, [2 x i8] c"\FB`" }, %struct.anon.8 { i16 -13334, [2 x i8] c"\FBa" }, %struct.anon.8 { i16 -13330, [2 x i8] c"\FBd" }, %struct.anon.8 { i16 -13328, [2 x i8] c"\FBb" }, %struct.anon.8 { i16 -13324, [2 x i8] c"\FBc" }, %struct.anon.8 { i16 -13319, [2 x i8] c"\FBf" }, %struct.anon.8 { i16 -13147, [2 x i8] c"\FBe" }, %struct.anon.8 { i16 -13141, [2 x i8] c"\FBg" }, %struct.anon.8 { i16 -13139, [2 x i8] c"\FBi" }, %struct.anon.8 { i16 -13138, [2 x i8] c"\FBh" }, %struct.anon.8 { i16 -13134, [2 x i8] c"\FBj" }, %struct.anon.8 { i16 -13118, [2 x i8] c"\FBk" }, %struct.anon.8 { i16 -13104, [2 x i8] c"\FBl" }, %struct.anon.8 { i16 -13095, [2 x i8] c"\FBm" }, %struct.anon.8 { i16 -12886, [2 x i8] c"\FA\A8" }, %struct.anon.8 { i16 -12869, [2 x i8] c"\FBo" }, %struct.anon.8 { i16 -12614, [2 x i8] c"\FBs" }, %struct.anon.8 { i16 -12613, [2 x i8] c"\FBq" }, %struct.anon.8 { i16 -12605, [2 x i8] c"\FBt" }, %struct.anon.8 { i16 -12558, [2 x i8] c"\FBv" }, %struct.anon.8 { i16 -12331, [2 x i8] c"\FBx" }, %struct.anon.8 { i16 -12318, [2 x i8] c"\FBy" }, %struct.anon.8 { i16 -12311, [2 x i8] c"\FBz" }, %struct.anon.8 { i16 -12307, [2 x i8] c"\FB{" }, %struct.anon.8 { i16 -12059, [2 x i8] c"\FB\81" }, %struct.anon.8 { i16 -12055, [2 x i8] c"\FB\83" }, %struct.anon.8 { i16 -11800, [2 x i8] c"\FB\84" }, %struct.anon.8 { i16 -11796, [2 x i8] c"\FB\87" }, %struct.anon.8 { i16 -11589, [2 x i8] c"\FB\88" }, %struct.anon.8 { i16 -11295, [2 x i8] c"\FB\8A" }, %struct.anon.8 { i16 -11288, [2 x i8] c"\FB\8B" }, %struct.anon.8 { i16 -11097, [2 x i8] c"\FB\8C" }, %struct.anon.8 { i16 -11052, [2 x i8] c"\FB\8F" }, %struct.anon.8 { i16 -11037, [2 x i8] c"\FA\\" }, %struct.anon.8 { i16 -11022, [2 x i8] c"\FB\90" }, %struct.anon.8 { i16 -10834, [2 x i8] c"\FB\91" }, %struct.anon.8 { i16 -10274, [2 x i8] c"\FB\93" }, %struct.anon.8 { i16 -10078, [2 x i8] c"\FB\95" }, %struct.anon.8 { i16 -10057, [2 x i8] c"\FB\96" }, %struct.anon.8 { i16 -10047, [2 x i8] c"\FB\97" }, %struct.anon.8 { i16 -10031, [2 x i8] c"\FB\98" }, %struct.anon.8 { i16 -9996, [2 x i8] c"\FB\99" }, %struct.anon.8 { i16 -9823, [2 x i8] c"\FA`" }, %struct.anon.8 { i16 -9786, [2 x i8] c"\FB\9A" }, %struct.anon.8 { i16 -9784, [2 x i8] c"\FB\9B" }, %struct.anon.8 { i16 -9775, [2 x i8] c"\FB\9C" }, %struct.anon.8 { i16 -9005, [2 x i8] c"\FB\A2" }, %struct.anon.8 { i16 -8993, [2 x i8] c"\FA]" }, %struct.anon.8 { i16 -8760, [2 x i8] c"\FB\A3" }, %struct.anon.8 { i16 -8748, [2 x i8] c"\FB\A4" }, %struct.anon.8 { i16 -8726, [2 x i8] c"\FB\A5" }, %struct.anon.8 { i16 -8710, [2 x i8] c"\FB\A6" }, %struct.anon.8 { i16 -8540, [2 x i8] c"\FB\A7" }, %struct.anon.8 { i16 -8528, [2 x i8] c"\FB\A8" }, %struct.anon.8 { i16 -8523, [2 x i8] c"\FB\AA" }, %struct.anon.8 { i16 -8501, [2 x i8] c"\FB\AB" }, %struct.anon.8 { i16 -8263, [2 x i8] c"\FB\AD" }, %struct.anon.8 { i16 -8253, [2 x i8] c"\FB\AF" }, %struct.anon.8 { i16 -7975, [2 x i8] c"\FB\B2" }, %struct.anon.8 { i16 -7710, [2 x i8] c"\FB\B5" }, %struct.anon.8 { i16 -7481, [2 x i8] c"\FB\B9" }, %struct.anon.8 { i16 -7258, [2 x i8] c"\FB\BB" }, %struct.anon.8 { i16 -7256, [2 x i8] c"\FB\BA" }, %struct.anon.8 { i16 -7255, [2 x i8] c"\FB\BC" }, %struct.anon.8 { i16 -7254, [2 x i8] c"\FB\BF" }, %struct.anon.8 { i16 -7253, [2 x i8] c"\FB\C0" }, %struct.anon.8 { i16 -7249, [2 x i8] c"\FB\BD" }, %struct.anon.8 { i16 -7248, [2 x i8] c"\FB\BE" }, %struct.anon.8 { i16 -7236, [2 x i8] c"\FB\C1" }, %struct.anon.8 { i16 -7233, [2 x i8] c"\FB\C3" }, %struct.anon.8 { i16 -7231, [2 x i8] c"\FB\C2" }, %struct.anon.8 { i16 -7212, [2 x i8] c"\FB\CA" }, %struct.anon.8 { i16 -7211, [2 x i8] c"\FB\C4" }, %struct.anon.8 { i16 -7210, [2 x i8] c"\FB\C6" }, %struct.anon.8 { i16 -7208, [2 x i8] c"\FB\C5" }, %struct.anon.8 { i16 -7201, [2 x i8] c"\FB\C7" }, %struct.anon.8 { i16 -7199, [2 x i8] c"\FB\C9" }, %struct.anon.8 { i16 -7197, [2 x i8] c"\FB\C8" }, %struct.anon.8 { i16 -7191, [2 x i8] c"\FB\CB" }, %struct.anon.8 { i16 -7183, [2 x i8] c"\FB\CD" }, %struct.anon.8 { i16 -7182, [2 x i8] c"\FB\CE" }, %struct.anon.8 { i16 -7176, [2 x i8] c"\FA_" }, %struct.anon.8 { i16 -7002, [2 x i8] c"\FB\CC" }, %struct.anon.8 { i16 -6978, [2 x i8] c"\FB\D2" }, %struct.anon.8 { i16 -6977, [2 x i8] c"\FB\D6" }, %struct.anon.8 { i16 -6976, [2 x i8] c"\FB\D4" }, %struct.anon.8 { i16 -6975, [2 x i8] c"\FB\D0" }, %struct.anon.8 { i16 -6973, [2 x i8] c"\FB\D1" }, %struct.anon.8 { i16 -6969, [2 x i8] c"\FB\D5" }, %struct.anon.8 { i16 -6965, [2 x i8] c"\FB\CF" }, %struct.anon.8 { i16 -6960, [2 x i8] c"\FAe" }, %struct.anon.8 { i16 -6959, [2 x i8] c"\FB\D9" }, %struct.anon.8 { i16 -6958, [2 x i8] c"\FB\DC" }, %struct.anon.8 { i16 -6956, [2 x i8] c"\FB\DE" }, %struct.anon.8 { i16 -6949, [2 x i8] c"\FB\DD" }, %struct.anon.8 { i16 -6948, [2 x i8] c"\FB\DB" }, %struct.anon.8 { i16 -6946, [2 x i8] c"\FB\D8" }, %struct.anon.8 { i16 -6944, [2 x i8] c"\FB\D7" }, %struct.anon.8 { i16 -6935, [2 x i8] c"\FA^" }, %struct.anon.8 { i16 -6929, [2 x i8] c"\FB\E0" }, %struct.anon.8 { i16 -6918, [2 x i8] c"\FB\DF" }, %struct.anon.8 { i16 -6733, [2 x i8] c"\FB\E1" }, %struct.anon.8 { i16 -6721, [2 x i8] c"\FB\E2" }, %struct.anon.8 { i16 -6711, [2 x i8] c"\FB\E3" }, %struct.anon.8 { i16 -6704, [2 x i8] c"\FB\E4" }, %struct.anon.8 { i16 -6686, [2 x i8] c"\FB\E5" }, %struct.anon.8 { i16 -6678, [2 x i8] c"\FB\E6" }, %struct.anon.8 { i16 -6677, [2 x i8] c"\FB\E7" }, %struct.anon.8 { i16 -6424, [2 x i8] c"\FB\EB" }, %struct.anon.8 { i16 -6417, [2 x i8] c"\FB\EC" }, %struct.anon.8 { i16 -6228, [2 x i8] c"\FB\ED" }, %struct.anon.8 { i16 -6226, [2 x i8] c"\FB\EF" }, %struct.anon.8 { i16 -6223, [2 x i8] c"\FB\F1" }, %struct.anon.8 { i16 -6222, [2 x i8] c"\FB\F3" }, %struct.anon.8 { i16 -5967, [2 x i8] c"\FB\F4" }, %struct.anon.8 { i16 -5962, [2 x i8] c"\FB\F5" }, %struct.anon.8 { i16 -5923, [2 x i8] c"\FB\F8" }, %struct.anon.8 { i16 -5679, [2 x i8] c"\FB\FB" }, %struct.anon.8 { i16 -5651, [2 x i8] c"\FC@" }, %struct.anon.8 { i16 -5427, [2 x i8] c"\FCA" }, %struct.anon.8 { i16 -5413, [2 x i8] c"\FCC" }, %struct.anon.8 { i16 -5402, [2 x i8] c"\FCD" }, %struct.anon.8 { i16 -5398, [2 x i8] c"\FCE" }, %struct.anon.8 { i16 -5211, [2 x i8] c"\FCF" }, %struct.anon.8 { i16 -5126, [2 x i8] c"\FCH" }, %struct.anon.8 { i16 -5125, [2 x i8] c"\FCG" }, %struct.anon.8 { i16 -4906, [2 x i8] c"\FCJ" }], [256 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cp932\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 552, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"p_nls\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 15, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 553, i32 13 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"sjisibm2euc_map\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 60, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant [24 x i8] c"euc2sjisibm_g3upper_map\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 246, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [25 x i8] c"euc2sjisibm_jisx0212_map\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 148, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [23 x i8] c"../fs/nls/nls_euc-jp.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 560, i32 19 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_exit_nls_euc_jp, ptr @__initcall__kmod_nls_euc_jp__106_577_init_nls_euc_jp6, ptr @exit_nls_euc_jp, ptr @table, ptr @p_nls, ptr @.str, ptr @sjisibm2euc_map, ptr @euc2sjisibm_g3upper_map, ptr @euc2sjisibm_jisx0212_map, ptr @.str.1], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_nls to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjisibm2euc_map to i32), i32 780, i32 992, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @euc2sjisibm_g3upper_map to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @euc2sjisibm_jisx0212_map to i32), i32 1120, i32 1376, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nls_euc_jp() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @unregister_nls(ptr noundef nonnull @table) #5
  %0 = load ptr, ptr @p_nls, align 4
  tail call void @unload_nls(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nls_euc_jp() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @load_nls(ptr noundef nonnull @.str.1) #5
  store ptr %call, ptr @p_nls, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %charset2upper = getelementptr inbounds %struct.nls_table, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %charset2upper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charset2upper, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.nls_table, ptr @table, i32 0, i32 5), align 4
  %charset2lower = getelementptr inbounds %struct.nls_table, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %charset2lower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charset2lower, align 4
  store ptr %3, ptr getelementptr inbounds (%struct.nls_table, ptr @table, i32 0, i32 4), align 4
  %call1 = tail call i32 @__register_nls(ptr noundef nonnull @table, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni2char(i16 noundef zeroext %uni, ptr noundef %out, i32 noundef %boundlen) #2 align 64 {
entry:
  %euc = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @p_nls, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup275_crit_edge, label %if.end

entry.cleanup275_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.end:                                           ; preds = %entry
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uni2char, align 4
  %call = tail call i32 %2(i16 noundef zeroext %uni, ptr noundef %out, i32 noundef %boundlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup275_crit_edge, label %if.end2

if.end.cleanup275_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.end2:                                          ; preds = %if.end
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end2.cleanup275_crit_edge [
    i32 1, label %if.then4
    i32 2, label %if.then22
  ]

if.end2.cleanup275_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.then4:                                         ; preds = %if.end2
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %out, align 1
  %6 = add i8 %5, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %6)
  %7 = icmp ult i8 %6, 63
  br i1 %7, label %if.then11, label %if.then4.cleanup275_crit_edge

if.then4.cleanup275_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.then11:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %boundlen)
  %cmp12 = icmp slt i32 %boundlen, 2
  br i1 %cmp12, label %if.then11.cleanup275_crit_edge, label %if.end15

if.then11.cleanup275_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17 = getelementptr i8, ptr %out, i32 1
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %arrayidx17, align 1
  %9 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -114, ptr %out, align 1
  br label %cleanup275

if.then22:                                        ; preds = %if.end2
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %out, align 1
  %arrayidx24 = getelementptr i8, ptr %out, i32 1
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx24, align 1
  %conv.i = zext i8 %11 to i32
  %14 = add i8 %11, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %land.lhs.true5.i, label %if.then22.sjisnec2sjisibm.exit_crit_edge

if.then22.sjisnec2sjisibm.exit_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sjisnec2sjisibm.exit

land.lhs.true5.i:                                 ; preds = %if.then22
  %conv6.i = zext i8 %13 to i32
  %16 = add i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %16)
  %17 = icmp ult i8 %16, 67
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %13)
  %cmp15.not.i = icmp eq i8 %13, 127
  %or.cond2.i = or i1 %cmp15.not.i, %17
  br i1 %or.cond2.i, label %land.lhs.true5.i.sjisnec2sjisibm.exit_crit_edge, label %if.end.i

land.lhs.true5.i.sjisnec2sjisibm.exit_crit_edge:  ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sjisnec2sjisibm.exit

if.end.i:                                         ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %11)
  %cmp18.i = icmp eq i8 %11, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %13)
  %cmp22.i = icmp eq i8 %13, -7
  %or.cond3.i = and i1 %cmp18.i, %cmp22.i
  br i1 %or.cond3.i, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -127, ptr %out, align 1
  br label %sjisnec2sjisibm.exit.sink.split

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %13)
  %cmp32.i = icmp ugt i8 %13, -18
  %or.cond4.i = and i1 %cmp18.i, %cmp32.i
  br i1 %or.cond4.i, label %if.then34.i, label %if.else.i

if.then34.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %conv6.i, 60928
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %13)
  %cmp38.i = icmp ult i8 %13, -6
  %cond.neg.i = select i1 %cmp38.i, i32 -61167, i32 -61157
  %sub.i = add nsw i32 %or.i, %cond.neg.i
  br label %if.end50.i

if.else.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = mul nuw nsw i32 %conv.i, 188
  %sub43.i = add nuw nsw i32 %19, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %13)
  %cmp46.i = icmp ugt i8 %13, 126
  %spec.select.v.i = select i1 %cmp46.i, i32 -44593, i32 -44592
  %spec.select.i = add nsw i32 %sub43.i, %spec.select.v.i
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else.i, %if.then34.i
  %count.0.i = phi i32 [ %sub.i, %if.then34.i ], [ %spec.select.i, %if.else.i ]
  %count.0.i.frozen = freeze i32 %count.0.i
  %div.i = sdiv i32 %count.0.i.frozen, 188
  %20 = trunc i32 %div.i to i8
  %conv52.i = add i8 %20, -6
  %21 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv52.i, ptr %out, align 1
  %22 = mul i32 %div.i, 188
  %rem.i.decomposed = sub i32 %count.0.i.frozen, %22
  %23 = trunc i32 %rem.i.decomposed to i8
  %conv55.i = add i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %conv55.i)
  %cmp59.i = icmp ugt i8 %conv55.i, 126
  %inc.i = add i8 %23, 65
  %spec.select5.i = select i1 %cmp59.i, i8 %inc.i, i8 %conv55.i
  br label %sjisnec2sjisibm.exit.sink.split

sjisnec2sjisibm.exit.sink.split:                  ; preds = %if.end50.i, %if.then24.i
  %.sink = phi i8 [ -54, %if.then24.i ], [ %spec.select5.i, %if.end50.i ]
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %arrayidx24, align 1
  br label %sjisnec2sjisibm.exit

sjisnec2sjisibm.exit:                             ; preds = %sjisnec2sjisibm.exit.sink.split, %land.lhs.true5.i.sjisnec2sjisibm.exit_crit_edge, %if.then22.sjisnec2sjisibm.exit_crit_edge
  %25 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %out, align 1
  %27 = add i8 %26, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %27)
  %28 = icmp ult i8 %27, 5
  br i1 %28, label %land.lhs.true35, label %if.else81

land.lhs.true35:                                  ; preds = %sjisnec2sjisibm.exit
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx24, align 1
  %31 = add i8 %30, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %31)
  %32 = icmp ult i8 %31, 67
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %30)
  %cmp48.not = icmp eq i8 %30, 127
  %or.cond358 = or i1 %cmp48.not, %32
  br i1 %or.cond358, label %land.lhs.true35.cleanup275_crit_edge, label %if.then50

land.lhs.true35.cleanup275_crit_edge:             ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.then50:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_const_cmp1(i8 -98, i8 %30)
  %cmp53 = icmp ugt i8 %30, -98
  %mul = shl nsw i8 %26, 1
  br i1 %cmp53, label %if.then55, label %if.else64

if.then55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nuw nsw i8 %mul, 22
  %33 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %sub, ptr %out, align 1
  %add = add nuw nsw i8 %30, 2
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %add, ptr %arrayidx24, align 1
  br label %cleanup275

if.else64:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %sub68 = add nuw nsw i8 %mul, 21
  %35 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %sub68, ptr %out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %30)
  %cmp75 = icmp ugt i8 %30, 126
  %cond = select i1 %cmp75, i8 96, i8 97
  %add77 = add nuw i8 %cond, %30
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add77, ptr %arrayidx24, align 1
  br label %cleanup275

if.else81:                                        ; preds = %sjisnec2sjisibm.exit
  %37 = add i8 %26, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %37)
  %38 = icmp ult i8 %37, 5
  br i1 %38, label %land.lhs.true91, label %if.else146

land.lhs.true91:                                  ; preds = %if.else81
  %39 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx24, align 1
  %41 = add i8 %40, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %41)
  %42 = icmp ult i8 %41, 67
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %40)
  %cmp104.not = icmp eq i8 %40, 127
  %or.cond361 = or i1 %cmp104.not, %42
  br i1 %or.cond361, label %land.lhs.true91.cleanup275_crit_edge, label %if.then106

land.lhs.true91.cleanup275_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.then106:                                       ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %boundlen)
  %cmp107 = icmp slt i32 %boundlen, 3
  br i1 %cmp107, label %if.then106.cleanup275_crit_edge, label %if.end110

if.then106.cleanup275_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.end110:                                        ; preds = %if.then106
  %43 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -113, ptr %out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -98, i8 %40)
  %cmp115 = icmp ugt i8 %40, -98
  %mul119 = shl nsw i8 %26, 1
  br i1 %cmp115, label %if.then117, label %if.else127

if.then117:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %sub120 = add nuw nsw i8 %mul119, 12
  %44 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %sub120, ptr %arrayidx24, align 1
  %add124 = add nuw nsw i8 %40, 2
  %arrayidx126 = getelementptr i8, ptr %out, i32 2
  %45 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %add124, ptr %arrayidx126, align 1
  br label %cleanup275

if.else127:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %sub130 = add nuw nsw i8 %mul119, 11
  %46 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %sub130, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %40)
  %cmp135 = icmp ugt i8 %40, 126
  %cond137 = select i1 %cmp135, i8 96, i8 97
  %add138 = add nuw i8 %cond137, %40
  %arrayidx140 = getelementptr i8, ptr %out, i32 2
  %47 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %add138, ptr %arrayidx140, align 1
  br label %cleanup275

if.else146:                                       ; preds = %if.else81
  %48 = add i8 %26, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %49 = icmp ult i8 %48, 3
  br i1 %49, label %land.lhs.true156, label %if.else189

land.lhs.true156:                                 ; preds = %if.else146
  %50 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx24, align 1
  %52 = add i8 %51, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %52)
  %53 = icmp ult i8 %52, 67
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %51)
  %cmp169.not = icmp eq i8 %51, 127
  %or.cond364 = or i1 %cmp169.not, %53
  br i1 %or.cond364, label %land.lhs.true156.cleanup275_crit_edge, label %if.then171

land.lhs.true156.cleanup275_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.then171:                                       ; preds = %land.lhs.true156
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %euc) #5
  %54 = ptrtoint ptr %euc to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %euc, align 1, !annotation !30
  %55 = getelementptr inbounds [3 x i8], ptr %euc, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %55, align 1, !annotation !30
  %57 = getelementptr inbounds [3 x i8], ptr %euc, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %57, align 1, !annotation !30
  %call174 = call fastcc i32 @sjisibm2euc(ptr noundef nonnull %euc, i8 noundef zeroext %26, i8 noundef zeroext %51)
  call void @__sanitizer_cov_trace_cmp4(i32 %call174, i32 %boundlen)
  %cmp175 = icmp sgt i32 %call174, %boundlen
  br i1 %cmp175, label %cleanup275.critedge, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp180385 = icmp sgt i32 %call174, 0
  br i1 %cmp180385, label %for.cond.preheader.for.body_crit_edge, label %if.end274.critedge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv179387 = phi i32 [ %conv179, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0386 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx182 = getelementptr [3 x i8], ptr %euc, i32 0, i32 %conv179387
  %59 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx182, align 1
  %arrayidx184 = getelementptr i8, ptr %out, i32 %conv179387
  %61 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx184, align 1
  %inc = add i8 %i.0386, 1
  %conv179 = zext i8 %inc to i32
  %cmp180 = icmp sgt i32 %call174, %conv179
  br i1 %cmp180, label %for.body.for.body_crit_edge, label %cleanup185

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup185:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %euc) #5
  br label %cleanup275

if.else189:                                       ; preds = %if.else146
  %62 = add i8 %26, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %62)
  %63 = icmp ult i8 %62, 31
  %64 = add i8 %26, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %64)
  %65 = icmp ult i8 %64, 11
  %or.cond = or i1 %63, %65
  br i1 %or.cond, label %land.lhs.true208, label %if.else189.cleanup275_crit_edge

if.else189.cleanup275_crit_edge:                  ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

land.lhs.true208:                                 ; preds = %if.else189
  %66 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx24, align 1
  %68 = add i8 %67, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %68)
  %69 = icmp ult i8 %68, 67
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %67)
  %cmp221.not = icmp eq i8 %67, 127
  %or.cond368 = or i1 %cmp221.not, %69
  br i1 %or.cond368, label %land.lhs.true208.cleanup275_crit_edge, label %if.then223

land.lhs.true208.cleanup275_crit_edge:            ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup275

if.then223:                                       ; preds = %land.lhs.true208
  %70 = shl i8 %26, 1
  %mul226 = xor i8 %70, 64
  %add227 = add i8 %mul226, 95
  %71 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %add227, ptr %out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -98, i8 %67)
  %cmp232 = icmp ugt i8 %67, -98
  br i1 %cmp232, label %if.else259, label %if.end237

if.end237:                                        ; preds = %if.then223
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %67)
  %cmp240 = icmp ult i8 %67, 127
  br i1 %cmp240, label %if.then242, label %if.then253

if.then242:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #7
  %add245 = add nuw i8 %67, 97
  %72 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %add245, ptr %arrayidx24, align 1
  br label %cleanup275

if.then253:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #7
  %add256 = add nuw i8 %67, 96
  %73 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %add256, ptr %arrayidx24, align 1
  br label %cleanup275

if.else259:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #7
  %inc236 = add i8 %mul226, 96
  %74 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %inc236, ptr %out, align 1
  %add262 = add nuw nsw i8 %67, 2
  %75 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %add262, ptr %arrayidx24, align 1
  br label %cleanup275

if.end274.critedge:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %euc) #5
  br label %cleanup275

cleanup275.critedge:                              ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %euc) #5
  br label %cleanup275

cleanup275:                                       ; preds = %cleanup275.critedge, %if.end274.critedge, %if.else259, %if.then253, %if.then242, %land.lhs.true208.cleanup275_crit_edge, %if.else189.cleanup275_crit_edge, %cleanup185, %land.lhs.true156.cleanup275_crit_edge, %if.else127, %if.then117, %if.then106.cleanup275_crit_edge, %land.lhs.true91.cleanup275_crit_edge, %if.else64, %if.then55, %land.lhs.true35.cleanup275_crit_edge, %if.end15, %if.then11.cleanup275_crit_edge, %if.then4.cleanup275_crit_edge, %if.end2.cleanup275_crit_edge, %if.end.cleanup275_crit_edge, %entry.cleanup275_crit_edge
  %retval.2 = phi i32 [ 2, %if.end15 ], [ -22, %entry.cleanup275_crit_edge ], [ %call, %if.end.cleanup275_crit_edge ], [ -36, %if.then11.cleanup275_crit_edge ], [ -36, %cleanup275.critedge ], [ -22, %land.lhs.true208.cleanup275_crit_edge ], [ -22, %if.end2.cleanup275_crit_edge ], [ -36, %if.then106.cleanup275_crit_edge ], [ -22, %land.lhs.true35.cleanup275_crit_edge ], [ -22, %land.lhs.true91.cleanup275_crit_edge ], [ -22, %land.lhs.true156.cleanup275_crit_edge ], [ -22, %if.else189.cleanup275_crit_edge ], [ 1, %if.then4.cleanup275_crit_edge ], [ 2, %if.then55 ], [ 2, %if.else64 ], [ %call174, %cleanup185 ], [ 2, %if.then242 ], [ 2, %if.then253 ], [ 2, %if.else259 ], [ 3, %if.then117 ], [ 3, %if.else127 ], [ %call174, %if.end274.critedge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @char2uni(ptr nocapture noundef readonly %rawstring, i32 noundef %boundlen, ptr noundef %uni) #2 align 64 {
entry:
  %sjis_temp = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sjis_temp) #5
  %0 = getelementptr inbounds [2 x i8], ptr %sjis_temp, i32 0, i32 1
  %1 = load ptr, ptr @p_nls, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boundlen)
  %cmp = icmp slt i32 %boundlen, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %rawstring to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rawstring, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3 = icmp slt i8 %3, 0
  br i1 %cmp3, label %if.then5, label %if.else212

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -113, i8 %3)
  %cmp8 = icmp eq i8 %3, -113
  br i1 %cmp8, label %if.then10, label %if.else70

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %boundlen)
  %cmp11 = icmp ult i32 %boundlen, 3
  br i1 %cmp11, label %if.then10.cleanup_crit_edge, label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %arrayidx15 = getelementptr i8, ptr %rawstring, i32 1
  %4 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx15, align 1
  %6 = add i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %6)
  %7 = icmp ult i8 %6, -10
  %arrayidx64 = getelementptr i8, ptr %rawstring, i32 2
  %8 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx64, align 1
  br i1 %7, label %if.else62, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end14
  %10 = add i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %10)
  %11 = icmp ult i8 %10, -94
  br i1 %11, label %if.else62.thread, label %if.then33

if.else62.thread:                                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx64, align 1
  br label %if.else.i.i

if.then33:                                        ; preds = %land.lhs.true23
  %14 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool36.not = icmp eq i8 %14, 0
  %div52267 = lshr i8 %5, 1
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw i8 %div52267, 123
  %15 = ptrtoint ptr %sjis_temp to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add, ptr %sjis_temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %9)
  %cmp46 = icmp ugt i8 %9, -33
  %cond.neg = select i1 %cmp46, i8 -96, i8 -97
  %sub = add i8 %cond.neg, %9
  br label %if.end216

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %add53 = add nuw i8 %div52267, 122
  %16 = ptrtoint ptr %sjis_temp to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add53, ptr %sjis_temp, align 1
  %sub58 = add nsw i8 %9, -2
  br label %if.end216

if.else62:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %5)
  %cmp.i.i = icmp eq i8 %5, -13
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else62.if.else.i.i_crit_edge

if.else62.if.else.i.i_crit_edge:                  ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i.i = zext i8 %9 to i32
  %sub.i.i = add nsw i32 %conv3.i.i, -243
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.else62.if.else.i.i_crit_edge, %if.else62.thread
  %17 = phi i8 [ %13, %if.else62.thread ], [ %9, %if.else62.if.else.i.i_crit_edge ]
  %conv.i.i = zext i8 %5 to i32
  %shl5.i.i = shl nuw nsw i32 %conv.i.i, 8
  %conv6.i.i = zext i8 %17 to i32
  %or7.i.i = add nsw i32 %shl5.i.i, -62613
  %add.i.i = add nsw i32 %or7.i.i, %conv6.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %18 = phi i8 [ %9, %if.then.i.i ], [ %17, %if.else.i.i ]
  %index.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %add.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %index.0.i.i)
  %cmp11.i.i = icmp ugt i32 %index.0.i.i, 105
  br i1 %cmp11.i.i, label %if.else.i, label %euc2sjisibm_g3upper.exit.i

euc2sjisibm_g3upper.exit.i:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr [106 x [2 x i8]], ptr @euc2sjisibm_g3upper_map, i32 0, i32 %index.0.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %21 = ptrtoint ptr %sjis_temp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %sjis_temp, align 1
  %arrayidx18.i.i = getelementptr [106 x [2 x i8]], ptr @euc2sjisibm_g3upper_map, i32 0, i32 %index.0.i.i, i32 1
  br label %euc2sjisibm.exit

if.else.i:                                        ; preds = %if.end.i.i
  %conv.i9.i = zext i8 %5 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i9.i, 8
  %conv1.i.i = zext i8 %18 to i32
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.else.i
  %min_index.0.i.i = phi i32 [ 0, %if.else.i ], [ %min_index.1.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %max_index.0.i.i = phi i32 [ 279, %if.else.i ], [ %max_index.1.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %min_index.0.i.i, i32 %max_index.0.i.i)
  %cmp.not.i.i = icmp sgt i32 %min_index.0.i.i, %max_index.0.i.i
  br i1 %cmp.not.i.i, label %while.cond.i.i.cleanup_crit_edge, label %while.body.i.i

while.cond.i.i.cleanup_crit_edge:                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.i:                                   ; preds = %while.cond.i.i
  %add.i10.i = add i32 %max_index.0.i.i, %min_index.0.i.i
  %div.i.i = sdiv i32 %add.i10.i, 2
  %arrayidx.i11.i = getelementptr [280 x %struct.anon.8], ptr @euc2sjisibm_jisx0212_map, i32 0, i32 %div.i.i
  %22 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i11.i, align 2
  %conv6.i12.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %conv6.i12.i)
  %cmp7.i.i = icmp ult i32 %or.i.i, %conv6.i12.i
  %sub.i13.i = add nsw i32 %div.i.i, -1
  %add9.i.i = add nsw i32 %div.i.i, 1
  %min_index.1.i.i = select i1 %cmp7.i.i, i32 %min_index.0.i.i, i32 %add9.i.i
  %max_index.1.i.i = select i1 %cmp7.i.i, i32 %sub.i13.i, i32 %max_index.0.i.i
  %cmp14.i.i = icmp eq i32 %or.i.i, %conv6.i12.i
  br i1 %cmp14.i.i, label %if.then16.i.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

if.then16.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sjis18.i.i = getelementptr [280 x %struct.anon.8], ptr @euc2sjisibm_jisx0212_map, i32 0, i32 %div.i.i, i32 1
  %24 = ptrtoint ptr %sjis18.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sjis18.i.i, align 2
  %26 = ptrtoint ptr %sjis_temp to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %sjis_temp, align 1
  %arrayidx23.i.i = getelementptr [280 x %struct.anon.8], ptr @euc2sjisibm_jisx0212_map, i32 0, i32 %div.i.i, i32 1, i32 1
  br label %euc2sjisibm.exit

euc2sjisibm.exit:                                 ; preds = %if.then16.i.i, %euc2sjisibm_g3upper.exit.i
  %arrayidx23.i.sink.i = phi ptr [ %arrayidx23.i.i, %if.then16.i.i ], [ %arrayidx18.i.i, %euc2sjisibm_g3upper.exit.i ]
  %27 = ptrtoint ptr %arrayidx23.i.sink.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx23.i.sink.i, align 1
  br label %if.end216

if.else70:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %boundlen)
  %cmp71 = icmp ult i32 %boundlen, 2
  br i1 %cmp71, label %if.else70.cleanup_crit_edge, label %if.end74

if.else70.cleanup_crit_edge:                      ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end74:                                         ; preds = %if.else70
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %3)
  %cmp77 = icmp eq i8 %3, -114
  br i1 %cmp77, label %land.lhs.true79, label %if.else93

land.lhs.true79:                                  ; preds = %if.end74
  %arrayidx80 = getelementptr i8, ptr %rawstring, i32 1
  %29 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx80, align 1
  %31 = add i8 %30, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %31)
  %32 = icmp ult i8 %31, 63
  br i1 %32, label %if.then89, label %land.lhs.true79.cleanup_crit_edge

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then89:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %sjis_temp to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %sjis_temp, align 1
  br label %if.end216

if.else93:                                        ; preds = %if.end74
  %34 = add nsw i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %34)
  %35 = icmp ult i8 %34, -10
  br i1 %35, label %if.else151, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %if.else93
  %arrayidx104 = getelementptr i8, ptr %rawstring, i32 1
  %36 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx104, align 1
  %38 = add i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %38)
  %39 = icmp ult i8 %38, -94
  br i1 %39, label %land.lhs.true103.land.lhs.true161_crit_edge, label %if.then113

land.lhs.true103.land.lhs.true161_crit_edge:      ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true161

if.then113:                                       ; preds = %land.lhs.true103
  %40 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool117.not = icmp eq i8 %40, 0
  %div138265 = lshr i8 %3, 1
  br i1 %tobool117.not, label %if.else135, label %if.then118

if.then118:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  %add122 = add nuw i8 %div138265, 118
  %41 = ptrtoint ptr %sjis_temp to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %add122, ptr %sjis_temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %37)
  %cmp129 = icmp ugt i8 %37, -33
  %cond131.neg = select i1 %cmp129, i8 -96, i8 -97
  %sub132 = add i8 %cond131.neg, %37
  br label %if.end216

if.else135:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  %add139 = add nuw i8 %div138265, 117
  %42 = ptrtoint ptr %sjis_temp to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %add139, ptr %sjis_temp, align 1
  %sub144 = add nsw i8 %37, -2
  br label %if.end216

if.else151:                                       ; preds = %if.else93
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %34)
  %43 = icmp ult i8 %34, -94
  br i1 %43, label %if.else151.cleanup_crit_edge, label %if.else151.land.lhs.true161_crit_edge

if.else151.land.lhs.true161_crit_edge:            ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true161

if.else151.cleanup_crit_edge:                     ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true161:                                 ; preds = %if.else151.land.lhs.true161_crit_edge, %land.lhs.true103.land.lhs.true161_crit_edge
  %arrayidx162 = getelementptr i8, ptr %rawstring, i32 1
  %44 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx162, align 1
  %46 = add i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %46)
  %47 = icmp ult i8 %46, -94
  br i1 %47, label %land.lhs.true161.cleanup_crit_edge, label %if.then171

land.lhs.true161.cleanup_crit_edge:               ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then171:                                       ; preds = %land.lhs.true161
  %sub174 = add i8 %3, -95
  %div175287288289 = lshr i8 %sub174, 1
  %conv176 = xor i8 %div175287288289, -96
  %48 = ptrtoint ptr %sjis_temp to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv176, ptr %sjis_temp, align 1
  %49 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool181.not = icmp eq i8 %49, 0
  br i1 %tobool181.not, label %if.then182, label %if.else188

if.then182:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #7
  %sub185 = add nsw i8 %45, -2
  br label %if.end216

if.else188:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %45)
  %cmp191 = icmp ult i8 %45, -32
  br i1 %cmp191, label %if.then193, label %if.else199

if.then193:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #7
  %sub196 = add i8 %45, -97
  br label %if.end216

if.else199:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #7
  %sub202 = add nsw i8 %45, -96
  br label %if.end216

if.else212:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %sjis_temp to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %3, ptr %sjis_temp, align 1
  br label %if.end216

if.end216:                                        ; preds = %if.else212, %if.else199, %if.then193, %if.then182, %if.else135, %if.then118, %if.then89, %euc2sjisibm.exit, %if.else, %if.then37
  %.sink = phi i8 [ %28, %euc2sjisibm.exit ], [ %sub, %if.then37 ], [ %sub58, %if.else ], [ %sub144, %if.else135 ], [ %sub132, %if.then118 ], [ %sub185, %if.then182 ], [ %sub202, %if.else199 ], [ %sub196, %if.then193 ], [ 0, %if.then89 ], [ 0, %if.else212 ]
  %euc_offset.0 = phi i32 [ 3, %euc2sjisibm.exit ], [ 3, %if.then37 ], [ 3, %if.else ], [ 2, %if.else135 ], [ 2, %if.then118 ], [ 2, %if.then182 ], [ 2, %if.else199 ], [ 2, %if.then193 ], [ 2, %if.then89 ], [ 1, %if.else212 ]
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink, ptr %0, align 1
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %char2uni, align 4
  %call218 = call i32 %53(ptr noundef nonnull %sjis_temp, i32 noundef 2, ptr noundef %uni) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %cmp219 = icmp slt i32 %call218, 0
  %call218.euc_offset.0 = select i1 %cmp219, i32 %call218, i32 %euc_offset.0
  br label %cleanup

cleanup:                                          ; preds = %if.end216, %land.lhs.true161.cleanup_crit_edge, %if.else151.cleanup_crit_edge, %land.lhs.true79.cleanup_crit_edge, %if.else70.cleanup_crit_edge, %while.cond.i.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -36, %if.end.cleanup_crit_edge ], [ -22, %if.then10.cleanup_crit_edge ], [ -22, %if.else70.cleanup_crit_edge ], [ -22, %land.lhs.true161.cleanup_crit_edge ], [ -22, %if.else151.cleanup_crit_edge ], [ %call218.euc_offset.0, %if.end216 ], [ -22, %land.lhs.true79.cleanup_crit_edge ], [ -22, %while.cond.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sjis_temp) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc i32 @sjisibm2euc(ptr nocapture noundef writeonly %euc, i8 noundef zeroext %sjis_hi, i8 noundef zeroext %sjis_lo) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %sjis_hi to i32
  %0 = mul nuw nsw i32 %conv, 189
  %conv1 = zext i8 %sjis_lo to i32
  %sub2 = add nuw nsw i32 %conv1, -47314
  %add = add nsw i32 %sub2, %0
  %arrayidx = getelementptr [390 x [2 x i8]], ptr @sjisibm2euc_map, i32 0, i32 %add
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %2)
  %cmp = icmp eq i8 %2, -94
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx7 = getelementptr [390 x [2 x i8]], ptr @sjisibm2euc_map, i32 0, i32 %add, i32 1
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %4)
  %cmp9 = icmp eq i8 %4, -52
  br i1 %cmp9, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true16

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true16:                                  ; preds = %land.lhs.true
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -24, i8 %6)
  %cmp20 = icmp eq i8 %6, -24
  br i1 %cmp20, label %land.lhs.true16.if.then_crit_edge, label %land.lhs.true16.if.else_crit_edge

land.lhs.true16.if.else_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true16.if.then_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %land.lhs.true16.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %7 = ptrtoint ptr %euc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -94, ptr %euc, align 1
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true16.if.else_crit_edge, %entry.if.else_crit_edge
  %8 = ptrtoint ptr %euc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -113, ptr %euc, align 1
  %arrayidx31 = getelementptr i8, ptr %euc, i32 1
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %2, ptr %arrayidx31, align 1
  %arrayidx33 = getelementptr [390 x [2 x i8]], ptr @sjisibm2euc_map, i32 0, i32 %add, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %arrayidx33.sink = phi ptr [ %arrayidx33, %if.else ], [ %arrayidx7, %if.then ]
  %.sink46 = phi i32 [ 2, %if.else ], [ 1, %if.then ]
  %retval.0 = phi i32 [ 3, %if.else ], [ 2, %if.then ]
  %10 = ptrtoint ptr %arrayidx33.sink to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx33.sink, align 1
  %arrayidx34 = getelementptr i8, ptr %euc, i32 %.sink46
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx34, align 1
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_nls(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_nls_euc_jp__106_577_init_nls_euc_jp6, !1, !"__initcall__kmod_nls_euc_jp__106_577_init_nls_euc_jp6", i1 false, i1 false}
!1 = !{!"../fs/nls/nls_euc-jp.c", i32 577, i32 1}
!2 = !{ptr @__exitcall_exit_nls_euc_jp, !3, !"__exitcall_exit_nls_euc_jp", i1 false, i1 false}
!3 = !{!"../fs/nls/nls_euc-jp.c", i32 578, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../fs/nls/nls_euc-jp.c", i32 580, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @p_nls, !8, !"p_nls", i1 false, i1 false}
!8 = !{!"../fs/nls/nls_euc-jp.c", i32 15, i32 26}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/nls/nls_euc-jp.c", i32 553, i32 13}
!11 = !{ptr @table, !12, !"table", i1 false, i1 false}
!12 = !{!"../fs/nls/nls_euc-jp.c", i32 552, i32 25}
!13 = !{ptr @sjisibm2euc_map, !14, !"sjisibm2euc_map", i1 false, i1 false}
!14 = !{!"../fs/nls/nls_euc-jp.c", i32 60, i32 28}
!15 = !{ptr @euc2sjisibm_g3upper_map, !16, !"euc2sjisibm_g3upper_map", i1 false, i1 false}
!16 = !{!"../fs/nls/nls_euc-jp.c", i32 246, i32 28}
!17 = !{ptr @euc2sjisibm_jisx0212_map, !18, !"euc2sjisibm_jisx0212_map", i1 false, i1 false}
!18 = !{!"../fs/nls/nls_euc-jp.c", i32 148, i32 3}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nls/nls_euc-jp.c", i32 560, i32 19}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
