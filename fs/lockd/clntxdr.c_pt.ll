; ModuleID = '/llk/IR_all_yes/fs/lockd/clntxdr.c_pt.bc'
source_filename = "../fs/lockd/clntxdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.120 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.120 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lockd\00", [26 x i8] zeroinitializer }, align 32
@nlm_versions = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @nlm_version1, ptr null, ptr @nlm_version3, ptr @nlm_version4], [44 x i8] zeroinitializer }, align 32
@nlm_rpc_stats = internal global { %struct.rpc_stat, [56 x i8] } zeroinitializer, align 32
@nlm_program = dso_local constant { %struct.rpc_program, [40 x i8] } { %struct.rpc_program { ptr @.str, i32 100021, i32 5, ptr @nlm_versions, ptr @nlm_rpc_stats, ptr null }, [40 x i8] zeroinitializer }, align 32
@nlm_version1 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 1, i32 16, ptr @nlm_procedures, ptr @nlm_version1_counts }, [16 x i8] zeroinitializer }, align 32
@nlm_version3 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 3, i32 16, ptr @nlm_procedures, ptr @nlm_version3_counts }, [16 x i8] zeroinitializer }, align 32
@nlm_version4 = external dso_local constant %struct.rpc_version, align 4
@nlm_procedures = internal constant { [16 x %struct.rpc_procinfo], [128 x i8] } { [16 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nlm_xdr_enc_testargs, ptr @nlm_xdr_dec_testres, i32 60, i32 33, i32 0, i32 1, ptr @.str.1 }, %struct.rpc_procinfo { i32 2, ptr @nlm_xdr_enc_lockargs, ptr @nlm_xdr_dec_res, i32 63, i32 10, i32 0, i32 2, ptr @.str.2 }, %struct.rpc_procinfo { i32 3, ptr @nlm_xdr_enc_cancargs, ptr @nlm_xdr_dec_res, i32 61, i32 10, i32 0, i32 3, ptr @.str.3 }, %struct.rpc_procinfo { i32 4, ptr @nlm_xdr_enc_unlockargs, ptr @nlm_xdr_dec_res, i32 59, i32 10, i32 0, i32 4, ptr @.str.4 }, %struct.rpc_procinfo { i32 5, ptr @nlm_xdr_enc_testargs, ptr @nlm_xdr_dec_res, i32 60, i32 10, i32 0, i32 5, ptr @.str.5 }, %struct.rpc_procinfo { i32 6, ptr @nlm_xdr_enc_testargs, ptr null, i32 60, i32 0, i32 0, i32 6, ptr @.str.6 }, %struct.rpc_procinfo { i32 7, ptr @nlm_xdr_enc_lockargs, ptr null, i32 63, i32 0, i32 0, i32 7, ptr @.str.7 }, %struct.rpc_procinfo { i32 8, ptr @nlm_xdr_enc_cancargs, ptr null, i32 61, i32 0, i32 0, i32 8, ptr @.str.8 }, %struct.rpc_procinfo { i32 9, ptr @nlm_xdr_enc_unlockargs, ptr null, i32 59, i32 0, i32 0, i32 9, ptr @.str.9 }, %struct.rpc_procinfo { i32 10, ptr @nlm_xdr_enc_testargs, ptr null, i32 60, i32 0, i32 0, i32 10, ptr @.str.10 }, %struct.rpc_procinfo { i32 11, ptr @nlm_xdr_enc_testres, ptr null, i32 33, i32 0, i32 0, i32 11, ptr @.str.11 }, %struct.rpc_procinfo { i32 12, ptr @nlm_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 12, ptr @.str.12 }, %struct.rpc_procinfo { i32 13, ptr @nlm_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 13, ptr @.str.13 }, %struct.rpc_procinfo { i32 14, ptr @nlm_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 14, ptr @.str.14 }, %struct.rpc_procinfo { i32 15, ptr @nlm_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 15, ptr @.str.15 }], [128 x i8] zeroinitializer }, align 32
@nlm_version1_counts = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TEST\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOCK\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CANCEL\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNLOCK\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GRANTED\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEST_MSG\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOCK_MSG\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CANCEL_MSG\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UNLOCK_MSG\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GRANTED_MSG\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEST_RES\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOCK_RES\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CANCEL_RES\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UNLOCK_RES\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GRANTED_RES\00", [20 x i8] zeroinitializer }, align 32
@nlm_debug = external dso_local local_unnamed_addr global i32, align 4
@decode_cookie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NFS: returned cookie was too long: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"decode_cookie\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/lockd/clntxdr.c\00", [45 x i8] zeroinitializer }, align 32
@decode_cookie._entry_ptr = internal global ptr @decode_cookie._entry, section ".printk_index", align 4
@decode_nlm_stat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.18, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: server returned invalid nlm_stats value: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"decode_nlm_stat\00", [16 x i8] zeroinitializer }, align 32
@decode_nlm_stat._entry_ptr = internal global ptr @decode_nlm_stat._entry, section ".printk_index", align 4
@encode_nlm_stat.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlm_version3_counts = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 607, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"nlm_versions\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 596, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"nlm_rpc_stats\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 604, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"nlm_program\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 606, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"nlm_version1\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 581, i32 33 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"nlm_version3\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 589, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"nlm_procedures\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 562, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"nlm_version1_counts\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 580, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 563, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 564, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 565, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 566, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 567, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 568, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 569, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 570, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 571, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 572, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 573, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 574, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 575, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 576, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 577, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 162, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 218, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"nlm_version3_counts\00", align 1
@___asan_gen_.112 = private constant [22 x i8] c"../fs/lockd/clntxdr.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 588, i32 21 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @decode_cookie._entry, ptr @decode_cookie._entry_ptr, ptr @decode_nlm_stat._entry, ptr @decode_nlm_stat._entry_ptr, ptr @.str, ptr @nlm_versions, ptr @nlm_rpc_stats, ptr @nlm_program, ptr @nlm_version1, ptr @nlm_version3, ptr @nlm_procedures, ptr @nlm_version1_counts, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @nlm_version3_counts], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_versions to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_rpc_stats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_program to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_version1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_version3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_procedures to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_version1_counts to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_cookie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_nlm_stat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_version3_counts to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_testargs(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock1 = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %add.i.i = add i32 %1, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #4
  %call1.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data, i32 noundef %1) #4
  %fl_type = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 1, i32 5, i32 7
  %2 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %cond.i = zext i1 %cmp to i32
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %call.i, align 4
  tail call fastcc void @encode_nlm_lock(ptr noundef %xdr, ptr noundef %lock1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlm_xdr_dec_testres(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end.i, !prof !70

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.i = icmp eq i32 %1, 0
  br i1 %cmp3.i, label %out_hpux.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp6.i = icmp ugt i32 %1, 32
  br i1 %cmp6.i, label %do.body.i, label %if.end8.i

if.end8.i:                                        ; preds = %if.end5.i
  %call9.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %1) #4
  %cmp10.i = icmp eq ptr %call9.i, null
  br i1 %cmp10.i, label %if.end8.i.out_crit_edge, label %if.end18.i, !prof !70

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end18.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %len.i, align 4
  %3 = call ptr @memcpy(ptr %data, ptr %call9.i, i32 %1)
  br label %if.end

out_hpux.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %len19.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %len19.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %len19.i, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %data, align 4
  br label %if.end

do.body.i:                                        ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %6 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %do.body.i.out_crit_edge, label %do.end.i, !prof !71

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %1) #7
  br label %out

if.end:                                           ; preds = %out_hpux.i, %if.end18.i
  %status.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 1
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.end.out_crit_edge, label %if.end.i.i, !prof !70

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i.i:                                       ; preds = %if.end
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp2.i.i = icmp ugt i32 %8, 4
  br i1 %cmp2.i.i, label %do.body.i.i, label %if.end.i8, !prof !70

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %9 = load i32, ptr @nlm_debug, align 4
  %and.i.i = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %do.body.i.i.out_crit_edge, label %do.end.i.i, !prof !71

do.body.i.i.out_crit_edge:                        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %8) #7
  br label %out

if.end.i8:                                        ; preds = %if.end.i.i
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i7 = icmp eq i32 %8, 1
  br i1 %cmp.i7, label %if.then4.i, label %if.end.i8.out_crit_edge

if.end.i8.out_crit_edge:                          ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then4.i:                                       ; preds = %if.end.i8
  %lock1.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2
  %fl2.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 5
  %11 = call ptr @memset(ptr %lock1.i.i, i32 0, i32 320)
  tail call void @locks_init_lock(ptr noundef %fl2.i.i) #4
  %call.i11.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %cmp.i12.i = icmp eq ptr %call.i11.i, null
  br i1 %cmp.i12.i, label %if.then4.i.out_crit_edge, label %if.end.i13.i, !prof !70

if.then4.i.out_crit_edge:                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i13.i:                                     ; preds = %if.then4.i
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i11.i, i32 1
  %12 = ptrtoint ptr %call.i11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i11.i, align 4
  %14 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i.i, align 4
  %svid.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %svid.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %svid.i.i, align 4
  %fl_pid.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 5, i32 8
  %17 = ptrtoint ptr %fl_pid.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %fl_pid.i.i, align 8
  %oh.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 3
  %data.i.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 3, i32 1
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i13.i.out_crit_edge, label %if.end.i.i.i.i, !prof !70

if.end.i13.i.out_crit_edge:                       ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i.i.i.i:                                   ; preds = %if.end.i13.i
  %19 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2.not.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp2.not.i.i.i.i, label %if.end.i.i.i.i.if.end16.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i.i.if.end16.i.i_crit_edge:            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %call4.i.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %20) #4
  %tobool5.not.i.i.i.i = icmp eq ptr %call4.i.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %20)
  %cmp16.i.i.i.i = icmp ugt i32 %20, 1024
  %or.cond.i.i.i = select i1 %tobool5.not.i.i.i.i, i1 true, i1 %cmp16.i.i.i.i
  br i1 %or.cond.i.i.i, label %if.then3.i.i.i.i.out_crit_edge, label %if.end24.i.i.i.i, !prof !72

if.then3.i.i.i.i.out_crit_edge:                   ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end24.i.i.i.i:                                 ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call4.i.i.i.i, ptr %data.i.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.end24.i.i.i.i, %if.end.i.i.i.i.if.end16.i.i_crit_edge
  %22 = ptrtoint ptr %oh.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %oh.i.i, align 4
  %call17.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %cmp18.i.i = icmp eq ptr %call17.i.i, null
  br i1 %cmp18.i.i, label %if.end16.i.i.out_crit_edge, label %if.end26.i.i, !prof !70

if.end16.i.i.out_crit_edge:                       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end26.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %fl_flags.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 5, i32 6
  %23 = ptrtoint ptr %fl_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %fl_flags.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27.not.i.i = icmp ne i32 %13, 0
  %conv.i.i = zext i1 %cmp27.not.i.i to i8
  %fl_type.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 5, i32 7
  %24 = ptrtoint ptr %fl_type.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i.i, ptr %fl_type.i.i, align 4
  %incdec.ptr28.i.i = getelementptr i32, ptr %call17.i.i, i32 1
  %25 = ptrtoint ptr %call17.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call17.i.i, align 4
  %27 = ptrtoint ptr %incdec.ptr28.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr28.i.i, align 4
  %add.i.i = add i32 %26, -1
  %sub.i.i = add i32 %add.i.i, %28
  %conv31.i.i = zext i32 %26 to i64
  %fl_start.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 5, i32 12
  %29 = ptrtoint ptr %fl_start.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv31.i.i, ptr %fl_start.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp32.i.i = icmp eq i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp34.i.i = icmp slt i32 %sub.i.i, 0
  %or.cond.i.i = select i1 %cmp32.i.i, i1 true, i1 %cmp34.i.i
  %conv3770.i.i = zext i32 %sub.i.i to i64
  %conv3770.sink.i.i = select i1 %or.cond.i.i, i64 9223372036854775807, i64 %conv3770.i.i
  %fl_end38.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 5, i32 13
  %30 = ptrtoint ptr %fl_end38.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv3770.sink.i.i, ptr %fl_end38.i.i, align 8
  br label %out

out:                                              ; preds = %if.end26.i.i, %if.end16.i.i.out_crit_edge, %if.then3.i.i.i.i.out_crit_edge, %if.end.i13.i.out_crit_edge, %if.then4.i.out_crit_edge, %if.end.i8.out_crit_edge, %do.end.i.i, %do.body.i.i.out_crit_edge, %if.end.out_crit_edge, %do.end.i, %do.body.i.out_crit_edge, %if.end8.i.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ 0, %if.end.i8.out_crit_edge ], [ -5, %if.end16.i.i.out_crit_edge ], [ -5, %if.then4.i.out_crit_edge ], [ -5, %if.then3.i.i.i.i.out_crit_edge ], [ -5, %if.end.i13.i.out_crit_edge ], [ 0, %if.end26.i.i ], [ -5, %do.end.i.i ], [ -5, %do.body.i.i.out_crit_edge ], [ -5, %if.end.out_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body.i.out_crit_edge ], [ -5, %if.end8.i.out_crit_edge ], [ -5, %entry.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_lockargs(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock1 = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %add.i.i = add i32 %1, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #4
  %call1.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data, i32 noundef %1) #4
  %block = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp ne i32 %3, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %call.i, align 4
  %fl_type = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 1, i32 5, i32 7
  %5 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  %call.i13 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %cond.i14 = zext i1 %cmp to i32
  %7 = ptrtoint ptr %call.i13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i14, ptr %call.i13, align 4
  tail call fastcc void @encode_nlm_lock(ptr noundef %xdr, ptr noundef %lock1)
  %reclaim = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reclaim, align 4
  %call.i15 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i16 = icmp ne i32 %9, 0
  %cond.i17 = zext i1 %tobool.not.i16 to i32
  %10 = ptrtoint ptr %call.i15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i17, ptr %call.i15, align 4
  %state = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 8
  %call.i18 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %13 = ptrtoint ptr %call.i18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlm_xdr_dec_res(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end.i, !prof !70

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.i = icmp eq i32 %1, 0
  br i1 %cmp3.i, label %out_hpux.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp6.i = icmp ugt i32 %1, 32
  br i1 %cmp6.i, label %do.body.i, label %if.end8.i

if.end8.i:                                        ; preds = %if.end5.i
  %call9.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %1) #4
  %cmp10.i = icmp eq ptr %call9.i, null
  br i1 %cmp10.i, label %if.end8.i.out_crit_edge, label %if.end18.i, !prof !70

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end18.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %len.i, align 4
  %3 = call ptr @memcpy(ptr %data, ptr %call9.i, i32 %1)
  br label %if.end

out_hpux.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %len19.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %len19.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %len19.i, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %data, align 4
  br label %if.end

do.body.i:                                        ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %6 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %do.body.i.out_crit_edge, label %do.end.i, !prof !71

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %1) #7
  br label %out

if.end:                                           ; preds = %out_hpux.i, %if.end18.i
  %status = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 1
  %call.i7 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %cmp.i8 = icmp eq ptr %call.i7, null
  br i1 %cmp.i8, label %if.end.out_crit_edge, label %if.end.i9, !prof !70

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i9:                                        ; preds = %if.end
  %7 = ptrtoint ptr %call.i7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp2.i = icmp ugt i32 %8, 4
  br i1 %cmp2.i, label %do.body.i11, label %if.end10.i, !prof !70

if.end10.i:                                       ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status, align 4
  br label %out

do.body.i11:                                      ; preds = %if.end.i9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %10 = load i32, ptr @nlm_debug, align 4
  %and.i10 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool11.not.i = icmp eq i32 %and.i10, 0
  br i1 %tobool11.not.i, label %do.body.i11.out_crit_edge, label %do.end.i12, !prof !71

do.body.i11.out_crit_edge:                        ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end.i12:                                       ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #6
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %8) #7
  br label %out

out:                                              ; preds = %do.end.i12, %do.body.i11.out_crit_edge, %if.end10.i, %if.end.out_crit_edge, %do.end.i, %do.body.i.out_crit_edge, %if.end8.i.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ 0, %if.end10.i ], [ -5, %do.end.i12 ], [ -5, %do.body.i11.out_crit_edge ], [ -5, %if.end.out_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body.i.out_crit_edge ], [ -5, %if.end8.i.out_crit_edge ], [ -5, %entry.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_cancargs(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock1 = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %add.i.i = add i32 %1, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #4
  %call1.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data, i32 noundef %1) #4
  %block = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp ne i32 %3, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %call.i, align 4
  %fl_type = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 1, i32 5, i32 7
  %5 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  %call.i9 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %cond.i10 = zext i1 %cmp to i32
  %7 = ptrtoint ptr %call.i9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i10, ptr %call.i9, align 4
  tail call fastcc void @encode_nlm_lock(ptr noundef %xdr, ptr noundef %lock1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_unlockargs(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock1 = getelementptr inbounds %struct.nlm_args, ptr %data, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %add.i.i = add i32 %1, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #4
  %call1.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data, i32 noundef %1) #4
  tail call fastcc void @encode_nlm_lock(ptr noundef %xdr, ptr noundef %lock1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_testres(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %add.i.i = add i32 %1, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #4
  %call1.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data, i32 noundef %1) #4
  %status = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ugt i32 %3, 4
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_nlm_stat.exit_crit_edge

entry.encode_nlm_stat.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %encode_nlm_stat.exit

land.rhs.i:                                       ; preds = %entry
  %.b38.i = load i1, ptr @encode_nlm_stat.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.encode_nlm_stat.exit_crit_edge, label %if.then.i, !prof !71

land.rhs.i.encode_nlm_stat.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %encode_nlm_stat.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @encode_nlm_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 200, i32 noundef 9, ptr noundef null) #4
  br label %encode_nlm_stat.exit

encode_nlm_stat.exit:                             ; preds = %if.then.i, %land.rhs.i.encode_nlm_stat.exit_crit_edge, %entry.encode_nlm_stat.exit_crit_edge
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i5 = icmp eq i32 %6, 1
  br i1 %cmp.i5, label %if.then.i7, label %encode_nlm_stat.exit.encode_nlm_testrply.exit_crit_edge

encode_nlm_stat.exit.encode_nlm_testrply.exit_crit_edge: ; preds = %encode_nlm_stat.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %encode_nlm_testrply.exit

if.then.i7:                                       ; preds = %encode_nlm_stat.exit
  %fl_type.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 5, i32 7
  %7 = ptrtoint ptr %fl_type.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fl_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 0
  %call.i.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %cond.i.i.i = zext i1 %cmp.i.i to i32
  %9 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i.i.i, ptr %call.i.i.i, align 4
  %svid.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %svid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %svid.i.i, align 4
  %call.i12.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %12 = ptrtoint ptr %call.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i12.i.i, align 4
  %oh.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 3
  %data.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 3, i32 1
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %15 = ptrtoint ptr %oh.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oh.i.i, align 4
  %add.i.i.i = add i32 %16, 4
  %call.i13.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i.i) #4
  %call1.i.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i13.i.i, ptr noundef %14, i32 noundef %16) #4
  %call.i.i6 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #4
  %fl_start.i.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 5, i32 12
  %17 = ptrtoint ptr %fl_start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fl_start.i.i.i, align 8
  %fl_end.i.i.i = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 2, i32 5, i32 13
  %19 = ptrtoint ptr %fl_end.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fl_end.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %20)
  %cmp.i.i.i = icmp eq i64 %20, 9223372036854775807
  br i1 %cmp.i.i.i, label %if.then.i7.encode_nlm_holder.exit.i_crit_edge, label %if.else.i.i.i

if.then.i7.encode_nlm_holder.exit.i_crit_edge:    ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #6
  br label %encode_nlm_holder.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i.i = sub i64 %20, %18
  %add.i14.i.i = add i64 %sub.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483646, i64 %add.i14.i.i)
  %cmp.i9.i.i.i = icmp sgt i64 %add.i14.i.i, 2147483646
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2147483646, i64 %add.i14.i.i)
  %cmp1.i10.i.i.i = icmp slt i64 %add.i14.i.i, -2147483646
  %conv.i11.i.i.i = trunc i64 %add.i14.i.i to i32
  %spec.select.i12.i.i.i = select i1 %cmp1.i10.i.i.i, i32 -2147483647, i32 %conv.i11.i.i.i
  %res.0.i13.i.i.i = select i1 %cmp.i9.i.i.i, i32 2147483647, i32 %spec.select.i12.i.i.i
  br label %encode_nlm_holder.exit.i

encode_nlm_holder.exit.i:                         ; preds = %if.else.i.i.i, %if.then.i7.encode_nlm_holder.exit.i_crit_edge
  %storemerge.i.i.i = phi i32 [ %res.0.i13.i.i.i, %if.else.i.i.i ], [ 0, %if.then.i7.encode_nlm_holder.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483646, i64 %18)
  %cmp.i.i.i.i = icmp sgt i64 %18, 2147483646
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2147483646, i64 %18)
  %cmp1.i.i.i.i = icmp slt i64 %18, -2147483646
  %conv.i.i.i.i = trunc i64 %18 to i32
  %spec.select.i.i.i.i = select i1 %cmp1.i.i.i.i, i32 -2147483647, i32 %conv.i.i.i.i
  %res.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 2147483647, i32 %spec.select.i.i.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i.i6, i32 1
  %21 = ptrtoint ptr %call.i.i6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %res.0.i.i.i.i, ptr %call.i.i6, align 4
  %22 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i.i.i, ptr %incdec.ptr.i.i, align 4
  br label %encode_nlm_testrply.exit

encode_nlm_testrply.exit:                         ; preds = %encode_nlm_holder.exit.i, %encode_nlm_stat.exit.encode_nlm_testrply.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_res(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %add.i.i = add i32 %1, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #4
  %call1.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data, i32 noundef %1) #4
  %status = getelementptr inbounds %struct.nlm_res, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ugt i32 %3, 4
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_nlm_stat.exit_crit_edge

entry.encode_nlm_stat.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %encode_nlm_stat.exit

land.rhs.i:                                       ; preds = %entry
  %.b38.i = load i1, ptr @encode_nlm_stat.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.encode_nlm_stat.exit_crit_edge, label %if.then.i, !prof !71

land.rhs.i.encode_nlm_stat.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %encode_nlm_stat.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @encode_nlm_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 200, i32 noundef 9, ptr noundef null) #4
  br label %encode_nlm_stat.exit

encode_nlm_stat.exit:                             ; preds = %if.then.i, %land.rhs.i.encode_nlm_stat.exit_crit_edge, %entry.encode_nlm_stat.exit_crit_edge
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encode_nlm_lock(ptr noundef %xdr, ptr noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 8
  %call.i = tail call i32 @strlen(ptr noundef %1) #8
  %add.i = add i32 %call.i, 4
  %call1.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #4
  %call2.i = tail call ptr @xdr_encode_opaque(ptr noundef %call1.i, ptr noundef %1, i32 noundef %call.i) #4
  %data.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 36) #4
  %call1.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data.i, i32 noundef 32) #4
  %oh = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 3
  %data = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %oh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oh, align 4
  %add.i13 = add i32 %5, 4
  %call.i14 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i13) #4
  %call1.i15 = tail call ptr @xdr_encode_opaque(ptr noundef %call.i14, ptr noundef %3, i32 noundef %5) #4
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #4
  %svid = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 4
  %6 = ptrtoint ptr %svid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %svid, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call, align 4
  %fl_start.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %9 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fl_start.i, align 8
  %fl_end.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %11 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fl_end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %12)
  %cmp.i = icmp eq i64 %12, 9223372036854775807
  br i1 %cmp.i, label %entry.nlm_compute_offsets.exit_crit_edge, label %if.else.i

entry.nlm_compute_offsets.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nlm_compute_offsets.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i64 %12, %10
  %add.i16 = add i64 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483646, i64 %add.i16)
  %cmp.i9.i = icmp sgt i64 %add.i16, 2147483646
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2147483646, i64 %add.i16)
  %cmp1.i10.i = icmp slt i64 %add.i16, -2147483646
  %conv.i11.i = trunc i64 %add.i16 to i32
  %spec.select.i12.i = select i1 %cmp1.i10.i, i32 -2147483647, i32 %conv.i11.i
  %res.0.i13.i = select i1 %cmp.i9.i, i32 2147483647, i32 %spec.select.i12.i
  br label %nlm_compute_offsets.exit

nlm_compute_offsets.exit:                         ; preds = %if.else.i, %entry.nlm_compute_offsets.exit_crit_edge
  %storemerge.i = phi i32 [ %res.0.i13.i, %if.else.i ], [ 0, %entry.nlm_compute_offsets.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483646, i64 %10)
  %cmp.i.i = icmp sgt i64 %10, 2147483646
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2147483646, i64 %10)
  %cmp1.i.i = icmp slt i64 %10, -2147483646
  %conv.i.i = trunc i64 %10 to i32
  %spec.select.i.i = select i1 %cmp1.i.i, i32 -2147483647, i32 %conv.i.i
  %res.0.i.i = select i1 %cmp.i.i, i32 2147483647, i32 %spec.select.i.i
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %incdec.ptr2 = getelementptr i32, ptr %call, i32 2
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %res.0.i.i, ptr %incdec.ptr, align 4
  %14 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge.i, ptr %incdec.ptr2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/lockd/clntxdr.c", i32 607, i32 11}
!2 = !{ptr @nlm_program, !3, !"nlm_program", i1 false, i1 false}
!3 = !{!"../fs/lockd/clntxdr.c", i32 606, i32 26}
!4 = !{ptr @nlm_rpc_stats, !5, !"nlm_rpc_stats", i1 false, i1 false}
!5 = !{!"../fs/lockd/clntxdr.c", i32 604, i32 25}
!6 = !{ptr @nlm_versions, !7, !"nlm_versions", i1 false, i1 false}
!7 = !{!"../fs/lockd/clntxdr.c", i32 596, i32 34}
!8 = !{ptr @nlm_version1, !9, !"nlm_version1", i1 false, i1 false}
!9 = !{!"../fs/lockd/clntxdr.c", i32 581, i32 33}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/lockd/clntxdr.c", i32 563, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/lockd/clntxdr.c", i32 564, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/lockd/clntxdr.c", i32 565, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/lockd/clntxdr.c", i32 566, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/lockd/clntxdr.c", i32 567, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/lockd/clntxdr.c", i32 568, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/lockd/clntxdr.c", i32 569, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/lockd/clntxdr.c", i32 570, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/lockd/clntxdr.c", i32 571, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/lockd/clntxdr.c", i32 572, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/lockd/clntxdr.c", i32 573, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/lockd/clntxdr.c", i32 574, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/lockd/clntxdr.c", i32 575, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/lockd/clntxdr.c", i32 576, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/lockd/clntxdr.c", i32 577, i32 2}
!40 = !{ptr @nlm_procedures, !41, !"nlm_procedures", i1 false, i1 false}
!41 = !{!"../fs/lockd/clntxdr.c", i32 562, i32 34}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/lockd/clntxdr.c", i32 162, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @decode_cookie._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @decode_cookie._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/lockd/clntxdr.c", i32 218, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @decode_nlm_stat._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @decode_nlm_stat._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/lockd/clntxdr.c", i32 200, i32 2}
!55 = !{ptr @nlm_version1_counts, !56, !"nlm_version1_counts", i1 false, i1 false}
!56 = !{!"../fs/lockd/clntxdr.c", i32 580, i32 21}
!57 = !{ptr @nlm_version3, !58, !"nlm_version3", i1 false, i1 false}
!58 = !{!"../fs/lockd/clntxdr.c", i32 589, i32 33}
!59 = !{ptr @nlm_version3_counts, !60, !"nlm_version3_counts", i1 false, i1 false}
!60 = !{!"../fs/lockd/clntxdr.c", i32 588, i32 21}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"branch_weights", i32 4001, i32 4000000}
