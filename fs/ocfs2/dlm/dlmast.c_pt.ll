; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlm/dlmast.c_pt.bc'
source_filename = "../fs/ocfs2/dlm/dlmast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dlm_lock = type { %struct.dlm_migratable_lock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, %struct.kref, ptr, ptr, ptr, ptr, i8 }
%struct.dlm_migratable_lock = type { i64, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dlm_ctxt = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i8, i32, i8, i8, %struct.wait_queue_head, [8 x i32], [8 x i32], [8 x i32], [8 x i32], %struct.dlm_recovery_ctxt, %struct.spinlock, ptr, %struct.list_head, [3 x %struct.atomic_t], [3 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, ptr, %struct.kref, i32, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dlm_protocol_version, %struct.dlm_protocol_version }
%struct.dlm_recovery_ctxt = type { %struct.list_head, %struct.list_head, i8, i8, i16, [8 x i32], %struct.wait_queue_head }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_protocol_version = type { i8, i8 }
%struct.dlm_lock_resource = type { %struct.hlist_node, %struct.qstr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, i8, i16, [64 x i8], i32, i32, [8 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.dlm_lockstatus = type { i32, i32, ptr, [64 x i8] }
%struct.o2net_msg = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_proxy_ast = type { i64, i32, i8, i8, i8, i8, [64 x i8], [0 x i8] }
%struct.kvec = type { ptr, i32 }

@__func__.__dlm_queue_ast = private unnamed_addr constant [16 x i8] c"__dlm_queue_ast\00", align 1
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: res %.*s, lock %u:%llu, AST list not empty, pending %d, newlevel %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: res %.*s, lock %u:%llu, AST getting flushed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: res %.*s, lock %u:%llu, Cancelling BAST\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.__dlm_queue_bast = private unnamed_addr constant [17 x i8] c"__dlm_queue_bast\00", align 1
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: res %.*s, lock %u:%llu, BAST getting flushed\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.dlm_do_local_ast = private unnamed_addr constant [17 x i8] c"dlm_do_local_ast\00", align 1
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: res %.*s, lock %u:%llu, Local AST\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.dlm_do_remote_ast = private unnamed_addr constant [18 x i8] c"dlm_do_remote_ast\00", align 1
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: res %.*s, lock %u:%llu, Remote AST\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.dlm_do_local_bast = private unnamed_addr constant [18 x i8] c"dlm_do_local_bast\00", align 1
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: res %.*s, lock %u:%llu, Local BAST, blocked %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.dlm_proxy_ast_handler = private unnamed_addr constant [22 x i8] c"dlm_proxy_ast_handler\00", align 1
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm status = %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bug expression: !dlm_domain_fully_joined(dlm)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Domain %s not fully joined!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid name length (%d) in proxy ast handler!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Both PUT and GET lvb specified, (0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvb: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"put lvb\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"get lvb\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"type=%d, blocked_type=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Unknown ast type! %d, cookie=%u:%lluname=%.*s, node=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Got %sast for unknown lockres! cookie=%u:%llu, name=%.*s, node=%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: res %.*s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Responding with DLM_RECOVERING!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Responding with DLM_MIGRATING!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Got %sast for unknown lock! cookie=%u:%llu, name=%.*s, node=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: res %.*s, lock %u:%llu, Granted type %d => %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.dlm_send_proxy_ast_msg = private unnamed_addr constant [23 x i8] c"dlm_send_proxy_ast_msg\00", align 1
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: res %.*s, to %u, type %d, blocked_type %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: res %.*s, error %d send AST to node %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sent AST to node %u, it thinks this node is dead!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sent AST to node %u, it returned DLM_MIGRATING!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AST to node %u returned %d!\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.dlm_update_lvb = private unnamed_addr constant [15 x i8] c"dlm_update_lvb\00", align 1
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"getting lvb from lockres for %s node\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remote\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 11, i64 39, i64 40]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 86, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 95, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 106, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 153, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 201, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 221, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 245, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 272, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 276, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 287, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 294, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 300, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 303, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 307, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 318, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 330, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 335, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 340, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 367, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 383, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 431, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 455, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 460, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 464, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 468, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [25 x i8] c"../fs/ocfs2/dlm/dlmast.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 177, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_queue_ast(ptr noundef %dlm, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i82.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m81 = alloca i64, align 8
  %_m105 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dlm, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !77

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #4, !srcloc !78
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %lock, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !77

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #4, !srcloc !79
  unreachable

do.end29:                                         ; preds = %do.body10
  %lockres = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 4
  %0 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lockres, align 8
  %ast_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %ast_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %ast_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body41, label %do.end49, !prof !77

do.body41:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #4, !srcloc !80
  unreachable

do.end49:                                         ; preds = %do.end29
  %ast_list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 2
  %4 = ptrtoint ptr %ast_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ast_list, align 4
  %cmp.i.not = icmp eq ptr %5, %ast_list
  br i1 %cmp.i.not, label %if.end73, label %do.body53

do.body53:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606847040, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lockname, align 8
  %name57 = getelementptr inbounds %struct.dlm_lock_resource, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %name57 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name57, align 8
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %lock, align 8
  %shr.i = lshr i64 %14, 56
  %conv.i167 = trunc i64 %shr.i to i32
  %and.i = and i64 %14, 72057594037927935
  %ast_pending = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 11
  %15 = ptrtoint ptr %ast_pending to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %ast_pending, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %type = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 4
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type, align 4
  %conv63 = sext i8 %17 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_queue_ast, i32 noundef 91, ptr noundef nonnull @.str, ptr noundef %8, i32 noundef %10, ptr noundef %12, i32 noundef %conv.i167, i64 noundef %and.i, i32 noundef %bf.cast, i32 noundef %conv63) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #4, !srcloc !81
  unreachable

if.end73:                                         ; preds = %do.end49
  %ast_pending74 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 11
  %18 = ptrtoint ptr %ast_pending74 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load75 = load i8, ptr %ast_pending74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load75)
  %tobool78.not = icmp sgt i8 %bf.load75, -1
  br i1 %tobool78.not, label %if.end73.if.end100_crit_edge, label %do.body80

if.end73.if.end100_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

do.body80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m81) #4
  %19 = ptrtoint ptr %_m81 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 64, ptr %_m81, align 8
  %name85 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %20 = ptrtoint ptr %name85 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name85, align 4
  %lockname86 = getelementptr inbounds %struct.dlm_lock_resource, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %lockname86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lockname86, align 8
  %name89 = getelementptr inbounds %struct.dlm_lock_resource, ptr %1, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %name89 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name89, align 8
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %lock, align 8
  %shr.i168 = lshr i64 %27, 56
  %conv.i169 = trunc i64 %shr.i168 to i32
  %and.i170 = and i64 %27, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m81, ptr noundef nonnull @__func__.__dlm_queue_ast, i32 noundef 98, ptr noundef nonnull @.str.1, ptr noundef %21, i32 noundef %23, ptr noundef %25, i32 noundef %conv.i169, i64 noundef %and.i170) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m81) #4
  br label %if.end100

if.end100:                                        ; preds = %do.body80, %if.end73.if.end100_crit_edge
  call void @dlm_lock_get(ptr noundef nonnull %lock) #4
  %spinlock = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %spinlock) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %28 = ptrtoint ptr %ast_lock to i32
  call void @__asan_load4_noabort(i32 %28)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %ast_lock, align 4
  %29 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body8.i, !prof !77

do.body4.i:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 49, 0\0A.popsection", ""() #4, !srcloc !82
  unreachable

do.body8.i:                                       ; preds = %if.end100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i82.i)
  %30 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %30)
  %agg.tmp.sroa.0.0.copyload.i83.i = load volatile i32, ptr %spinlock, align 4
  %31 = ptrtoint ptr %agg.tmp.sroa.0.i82.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i83.i, ptr %agg.tmp.sroa.0.i82.i, align 4
  %lock.sroa.0.0.extract.shift.i.i84.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i83.i, 16
  %conv.i.i85.i = and i32 %agg.tmp.sroa.0.0.copyload.i83.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i85.i, i32 %lock.sroa.0.0.extract.shift.i.i84.i)
  %cmp.i.i86.not.i = icmp eq i32 %conv.i.i85.i, %lock.sroa.0.0.extract.shift.i.i84.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i82.i)
  br i1 %cmp.i.i86.not.i, label %do.body21.i, label %do.end26.i, !prof !77

do.body21.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #4, !srcloc !83
  unreachable

do.end26.i:                                       ; preds = %do.body8.i
  %highest_blocked.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 6
  %32 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %highest_blocked.i, align 2
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i8 %33, label %do.end48.i [
    i8 -1, label %do.end26.i.if.end126_crit_edge
    i8 0, label %do.body43.i
  ], !prof !84

do.end26.i.if.end126_crit_edge:                   ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

do.body43.i:                                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #4, !srcloc !85
  unreachable

do.end48.i:                                       ; preds = %do.end26.i
  %35 = ptrtoint ptr %ast_pending74 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %ast_pending74, align 4
  %36 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool49.not.i = icmp eq i8 %36, 0
  br i1 %tobool49.not.i, label %do.end48.i.if.end53.i_crit_edge, label %land.lhs.true.i

do.end48.i.if.end53.i_crit_edge:                  ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53.i

land.lhs.true.i:                                  ; preds = %do.end48.i
  %bast_list.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 3
  %37 = ptrtoint ptr %bast_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %bast_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %38, %bast_list.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.end126_crit_edge, label %land.lhs.true.i.if.end53.i_crit_edge

land.lhs.true.i.if.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53.i

land.lhs.true.i.if.end126_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

if.end53.i:                                       ; preds = %land.lhs.true.i.if.end53.i_crit_edge, %do.end48.i.if.end53.i_crit_edge
  %type.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 4
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type.i, align 4
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %40, label %dlm_should_cancel_bast.exit [
    i8 5, label %if.end53.i.if.end126_crit_edge
    i8 0, label %if.end53.i.do.body104_crit_edge
  ]

if.end53.i.do.body104_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body104

if.end53.i.if.end126_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

dlm_should_cancel_bast.exit:                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %33)
  %cmp69.not.i.not = icmp eq i8 %33, 5
  br i1 %cmp69.not.i.not, label %dlm_should_cancel_bast.exit.if.end126_crit_edge, label %dlm_should_cancel_bast.exit.do.body104_crit_edge

dlm_should_cancel_bast.exit.do.body104_crit_edge: ; preds = %dlm_should_cancel_bast.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body104

dlm_should_cancel_bast.exit.if.end126_crit_edge:  ; preds = %dlm_should_cancel_bast.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

do.body104:                                       ; preds = %dlm_should_cancel_bast.exit.do.body104_crit_edge, %if.end53.i.do.body104_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m105) #4
  %42 = ptrtoint ptr %_m105 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 64, ptr %_m105, align 8
  %name109 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %43 = ptrtoint ptr %name109 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name109, align 4
  %lockname110 = getelementptr inbounds %struct.dlm_lock_resource, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %lockname110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lockname110, align 8
  %name113 = getelementptr inbounds %struct.dlm_lock_resource, ptr %1, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %name113 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name113, align 8
  %49 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lock, align 8
  %shr.i171 = lshr i64 %50, 56
  %conv.i172 = trunc i64 %shr.i171 to i32
  %and.i173 = and i64 %50, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m105, ptr noundef nonnull @__func__.__dlm_queue_ast, i32 noundef 109, ptr noundef nonnull @.str.2, ptr noundef %44, i32 noundef %46, ptr noundef %48, i32 noundef %conv.i172, i64 noundef %and.i173) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m105) #4
  %51 = ptrtoint ptr %ast_pending74 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load124 = load i8, ptr %ast_pending74, align 4
  %bf.clear = and i8 %bf.load124, -65
  store i8 %bf.clear, ptr %ast_pending74, align 4
  %bast_list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 3
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %bast_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %do.body104.list_del_init.exit_crit_edge

do.body104.list_del_init.exit_crit_edge:          ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %bast_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bast_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body104.list_del_init.exit_crit_edge
  %58 = ptrtoint ptr %bast_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %bast_list, ptr %bast_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %bast_list, ptr %prev.i3.i, align 4
  %60 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %highest_blocked.i, align 2
  call void @dlm_lock_put(ptr noundef nonnull %lock) #4
  call void @dlm_lockres_release_ast(ptr noundef nonnull %dlm, ptr noundef %1) #4
  br label %if.end126

if.end126:                                        ; preds = %list_del_init.exit, %dlm_should_cancel_bast.exit.if.end126_crit_edge, %if.end53.i.if.end126_crit_edge, %land.lhs.true.i.if.end126_crit_edge, %do.end26.i.if.end126_crit_edge
  %pending_asts = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i, align 4
  %call.i.i174 = call zeroext i1 @__list_add_valid(ptr noundef %ast_list, ptr noundef %62, ptr noundef %pending_asts) #4
  br i1 %call.i.i174, label %if.end.i.i175, label %if.end126.list_add_tail.exit_crit_edge

if.end126.list_add_tail.exit_crit_edge:           ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i175:                                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ast_list, ptr %prev.i, align 4
  %64 = ptrtoint ptr %ast_list to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %pending_asts, ptr %ast_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %ast_list, ptr %62, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i175, %if.end126.list_add_tail.exit_crit_edge
  %67 = ptrtoint ptr %ast_pending74 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load129 = load i8, ptr %ast_pending74, align 4
  %bf.set131 = or i8 %bf.load129, -128
  store i8 %bf.set131, ptr %ast_pending74, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_release_ast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_queue_ast(ptr noundef %dlm, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dlm, null
  br i1 %tobool.not, label %do.body4, label %do.body8, !prof !77

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #4, !srcloc !86
  unreachable

do.body8:                                         ; preds = %entry
  %tobool9.not = icmp eq ptr %lock, null
  br i1 %tobool9.not, label %do.body19, label %do.end24, !prof !77

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #4, !srcloc !87
  unreachable

do.end24:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %ast_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %ast_lock) #4
  tail call void @__dlm_queue_ast(ptr noundef nonnull %dlm, ptr noundef nonnull %lock)
  tail call void @_raw_spin_unlock(ptr noundef %ast_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_queue_bast(ptr noundef %dlm, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dlm, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !77

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #4, !srcloc !88
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %lock, null
  br i1 %tobool11.not, label %do.body21, label %do.body30, !prof !77

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #4, !srcloc !89
  unreachable

do.body30:                                        ; preds = %do.body10
  %ast_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %ast_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %ast_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body41, label %do.end49, !prof !77

do.body41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #4, !srcloc !90
  unreachable

do.end49:                                         ; preds = %do.body30
  %lockres = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 4
  %2 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lockres, align 8
  %bast_list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 3
  %4 = ptrtoint ptr %bast_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %bast_list, align 4
  %cmp.i.not = icmp eq ptr %5, %bast_list
  br i1 %cmp.i.not, label %do.end70, label %do.body62, !prof !91

do.body62:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #4, !srcloc !92
  unreachable

do.end70:                                         ; preds = %do.end49
  %bast_pending = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 11
  %6 = ptrtoint ptr %bast_pending to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %bast_pending, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool71.not = icmp eq i8 %7, 0
  br i1 %tobool71.not, label %do.end70.if.end85_crit_edge, label %do.body73

do.end70.if.end85_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

do.body73:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %8 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 64, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lockname, align 8
  %name77 = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %name77 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name77, align 8
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lock, align 8
  %shr.i = lshr i64 %16, 56
  %conv.i105 = trunc i64 %shr.i to i32
  %and.i = and i64 %16, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_queue_bast, i32 noundef 156, ptr noundef nonnull @.str.3, ptr noundef %10, i32 noundef %12, ptr noundef %14, i32 noundef %conv.i105, i64 noundef %and.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  br label %if.end85

if.end85:                                         ; preds = %do.body73, %do.end70.if.end85_crit_edge
  call void @dlm_lock_get(ptr noundef nonnull %lock) #4
  %spinlock = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %spinlock) #4
  %pending_basts = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %bast_list, ptr noundef %18, ptr noundef %pending_basts) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end85.list_add_tail.exit_crit_edge

if.end85.list_add_tail.exit_crit_edge:            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bast_list, ptr %prev.i, align 4
  %20 = ptrtoint ptr %bast_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pending_basts, ptr %bast_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %bast_list, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end85.list_add_tail.exit_crit_edge
  %23 = ptrtoint ptr %bast_pending to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load88 = load i8, ptr %bast_pending, align 4
  %bf.set = or i8 %bf.load88, 64
  store i8 %bf.set, ptr %bast_pending, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_do_local_ast(ptr nocapture noundef readonly %dlm, ptr noundef %res, ptr nocapture noundef readonly %lock) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 64, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %3 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lockname, align 8
  %name2 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name2, align 8
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %lock, align 8
  %shr.i = lshr i64 %8, 56
  %conv.i = trunc i64 %shr.i to i32
  %and.i = and i64 %8, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_do_local_ast, i32 noundef 204, ptr noundef nonnull @.str.4, ptr noundef %2, i32 noundef %4, ptr noundef %6, i32 noundef %conv.i, i64 noundef %and.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  %node = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 7
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %node, align 1
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %11 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.not = icmp eq i8 %10, %12
  br i1 %cmp.not, label %do.end22, label %do.body14, !prof !91

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 207, 0\0A.popsection", ""() #4, !srcloc !93
  unreachable

do.end22:                                         ; preds = %entry
  %ast = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 7
  %13 = ptrtoint ptr %ast to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ast, align 4
  %lksb1.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %15 = ptrtoint ptr %lksb1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lksb1.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !77

do.body5.i:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #4, !srcloc !94
  unreachable

do.end10.i:                                       ; preds = %do.end22
  %spinlock.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #4
  %owner.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %17 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %owner.i, align 4
  %19 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp.i = icmp eq i8 %18, %20
  br i1 %cmp.i, label %if.then13.i, label %do.end10.i.dlm_update_lvb.exit_crit_edge

do.end10.i.dlm_update_lvb.exit_crit_edge:         ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dlm_update_lvb.exit

if.then13.i:                                      ; preds = %do.end10.i
  %flags.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i32 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool14.not.i = icmp eq i32 %and.i32, 0
  br i1 %tobool14.not.i, label %if.then13.i.dlm_update_lvb.exit_crit_edge, label %do.body16.i

if.then13.i.dlm_update_lvb.exit_crit_edge:        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dlm_update_lvb.exit

do.body16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #4
  %23 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 64, ptr %_m.i, align 8
  %24 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %node, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %18)
  %cmp23.i = icmp eq i8 %25, %18
  %cond.i = select i1 %cmp23.i, ptr @.str.32, ptr @.str.33
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_update_lvb, i32 noundef 179, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #4
  %lvb.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %16, i32 0, i32 3
  %lvb28.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 18
  %26 = call ptr @memcpy(ptr %lvb.i, ptr %lvb28.i, i32 64)
  br label %dlm_update_lvb.exit

dlm_update_lvb.exit:                              ; preds = %do.body16.i, %if.then13.i.dlm_update_lvb.exit_crit_edge, %do.end10.i.dlm_update_lvb.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #4
  %flags33.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %16, i32 0, i32 1
  %27 = ptrtoint ptr %flags33.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags33.i, align 4
  %and34.i = and i32 %28, -7
  store i32 %and34.i, ptr %flags33.i, align 4
  %astdata = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 9
  %29 = ptrtoint ptr %astdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %astdata, align 4
  call void %14(ptr noundef %30) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_do_remote_ast(ptr nocapture noundef readonly %dlm, ptr noundef %res, ptr nocapture noundef readonly %lock) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 64, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %3 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lockname, align 8
  %name2 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name2, align 8
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %lock, align 8
  %shr.i = lshr i64 %8, 56
  %conv.i = trunc i64 %shr.i to i32
  %and.i = and i64 %8, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_do_remote_ast, i32 noundef 224, ptr noundef nonnull @.str.5, ptr noundef %2, i32 noundef %4, ptr noundef %6, i32 noundef %conv.i, i64 noundef %and.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  %node = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 7
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %node, align 1
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %11 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp = icmp eq i8 %10, %12
  br i1 %cmp, label %do.body15, label %do.end23, !prof !77

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 227, 0\0A.popsection", ""() #4, !srcloc !95
  unreachable

do.end23:                                         ; preds = %entry
  %lksb6 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %13 = ptrtoint ptr %lksb6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lksb6, align 8
  %flags = getelementptr inbounds %struct.dlm_lockstatus, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !77

do.body5.i:                                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #4, !srcloc !94
  unreachable

do.end10.i:                                       ; preds = %do.end23
  %spinlock.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #4
  %owner.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %17 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %owner.i, align 4
  %19 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp.i = icmp eq i8 %18, %20
  br i1 %cmp.i, label %if.then13.i, label %do.end10.i.dlm_update_lvb.exit_crit_edge

do.end10.i.dlm_update_lvb.exit_crit_edge:         ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dlm_update_lvb.exit

if.then13.i:                                      ; preds = %do.end10.i
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and.i36 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool14.not.i = icmp eq i32 %and.i36, 0
  br i1 %tobool14.not.i, label %if.then13.i.dlm_update_lvb.exit_crit_edge, label %do.body16.i

if.then13.i.dlm_update_lvb.exit_crit_edge:        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dlm_update_lvb.exit

do.body16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #4
  %23 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 64, ptr %_m.i, align 8
  %24 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %node, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %18)
  %cmp23.i = icmp eq i8 %25, %18
  %cond.i = select i1 %cmp23.i, ptr @.str.32, ptr @.str.33
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_update_lvb, i32 noundef 179, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #4
  %lvb.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %14, i32 0, i32 3
  %lvb28.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 18
  %26 = call ptr @memcpy(ptr %lvb.i, ptr %lvb28.i, i32 64)
  br label %dlm_update_lvb.exit

dlm_update_lvb.exit:                              ; preds = %do.body16.i, %if.then13.i.dlm_update_lvb.exit_crit_edge, %do.end10.i.dlm_update_lvb.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #4
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and34.i = and i32 %28, -7
  store i32 %and34.i, ptr %flags, align 4
  %call.i = call i32 @dlm_send_proxy_ast_msg(ptr noundef %dlm, ptr noundef %res, ptr noundef %lock, i32 noundef 0, i32 noundef 0, i32 noundef %16) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_do_local_bast(ptr nocapture noundef readonly %dlm, ptr nocapture noundef readonly %res, ptr nocapture noundef readonly %lock, i32 noundef %blocked_type) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 7
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %node, align 1
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %2 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %do.body10, label %do.body4, !prof !91

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 243, 0\0A.popsection", ""() #4, !srcloc !96
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bast = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 8
  %4 = ptrtoint ptr %bast to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bast, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 64, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %9 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lockname, align 8
  %name14 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name14, align 8
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %lock, align 8
  %shr.i = lshr i64 %14, 56
  %conv.i = trunc i64 %shr.i to i32
  %and.i = and i64 %14, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_do_local_bast, i32 noundef 249, ptr noundef nonnull @.str.6, ptr noundef %8, i32 noundef %10, ptr noundef %12, i32 noundef %conv.i, i64 noundef %and.i, i32 noundef %blocked_type) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  %astdata = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 9
  %15 = ptrtoint ptr %astdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %astdata, align 4
  call void %5(ptr noundef %16, i32 noundef %blocked_type) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_proxy_ast_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m13 = alloca i64, align 8
  %_m21 = alloca i64, align 8
  %_m45 = alloca i64, align 8
  %_m58 = alloca i64, align 8
  %_m67 = alloca i64, align 8
  %_m80 = alloca i64, align 8
  %_m99 = alloca i64, align 8
  %_m117 = alloca i64, align 8
  %_m152 = alloca i64, align 8
  %_m168 = alloca i64, align 8
  %_m182 = alloca i64, align 8
  %_m238 = alloca i64, align 8
  %_m263 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %call = tail call ptr @dlm_grab(ptr noundef %data) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body1, label %do.body8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921504606847040, ptr %_m, align 8
  %call4 = tail call ptr @dlm_errname(i32 noundef 26) #4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 272, ptr noundef nonnull @.str.7, ptr noundef %call4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  br label %cleanup

do.body8:                                         ; preds = %entry
  %call9 = tail call i32 @dlm_domain_fully_joined(ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body12, label %do.end37

do.body12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m13) #4
  %1 = ptrtoint ptr %_m13 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606847040, ptr %_m13, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m13, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 277, ptr noundef nonnull @.str.8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #4
  %2 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606847040, ptr %_m21, align 8
  %name25 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %3 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name25, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 277, ptr noundef nonnull @.str.9, ptr noundef %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 277, 0\0A.popsection", ""() #4, !srcloc !97
  unreachable

do.end37:                                         ; preds = %do.body8
  %name38 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 6
  %namelen = getelementptr inbounds %struct.dlm_proxy_ast, ptr %buf, i32 0, i32 5
  %5 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %namelen, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %buf, align 8
  %flags41 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %9 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags41, align 8
  %node_idx = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 5
  %11 = ptrtoint ptr %node_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %node_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %6)
  %cmp = icmp ugt i8 %6, 32
  br i1 %cmp, label %if.then43, label %if.end52

if.then43:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m45) #4
  %13 = ptrtoint ptr %_m45 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606847040, ptr %_m45, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m45, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 288, ptr noundef nonnull @.str.10, i32 noundef %conv) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m45) #4
  br label %if.end341

if.end52:                                         ; preds = %do.end37
  %and53 = and i32 %10, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and53)
  %cmp54 = icmp eq i32 %and53, 1610612736
  br i1 %cmp54, label %do.body57, label %do.body66

do.body57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m58) #4
  %14 = ptrtoint ptr %_m58 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606847040, ptr %_m58, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m58, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 295, ptr noundef nonnull @.str.11, i32 noundef %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m58) #4
  br label %if.end341

do.body66:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m67) #4
  %15 = ptrtoint ptr %_m67 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 64, ptr %_m67, align 8
  %and71 = and i32 %10, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %and73 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %cond = select i1 %tobool74.not, ptr @.str.15, ptr @.str.14
  %cond75 = select i1 %tobool72.not, ptr %cond, ptr @.str.13
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m67, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 301, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond75) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m67) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m80) #4
  %16 = ptrtoint ptr %_m80 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 64, ptr %_m80, align 8
  %type = getelementptr inbounds %struct.dlm_proxy_ast, ptr %buf, i32 0, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type, align 1
  %conv84 = zext i8 %18 to i32
  %blocked_type = getelementptr inbounds %struct.dlm_proxy_ast, ptr %buf, i32 0, i32 4
  %19 = ptrtoint ptr %blocked_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %blocked_type, align 2
  %conv85 = zext i8 %20 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m80, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 303, ptr noundef nonnull @.str.16, i32 noundef %conv84, i32 noundef %conv85) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m80) #4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %switch = icmp ult i8 %22, 2
  br i1 %switch, label %if.end112, label %do.body98

do.body98:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m99) #4
  %23 = ptrtoint ptr %_m99 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606847040, ptr %_m99, align 8
  %conv104 = zext i8 %22 to i32
  %shr.i = lshr i64 %8, 56
  %conv.i = trunc i64 %shr.i to i32
  %and.i = and i64 %8, 72057594037927935
  %conv108 = zext i8 %12 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m99, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 311, ptr noundef nonnull @.str.17, i32 noundef %conv104, i32 noundef %conv.i, i64 noundef %and.i, i32 noundef %conv, ptr noundef %name38, i32 noundef %conv108) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m99) #4
  br label %if.end341

if.end112:                                        ; preds = %do.body66
  %call113 = call ptr @dlm_lookup_lockres(ptr noundef %data, ptr noundef %name38, i32 noundef %conv) #4
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %do.body116, label %do.body134

do.body116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m117) #4
  %24 = ptrtoint ptr %_m117 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 64, ptr %_m117, align 8
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp123 = icmp eq i8 %26, 0
  %cond125 = select i1 %cmp123, ptr @.str.19, ptr @.str.20
  %shr.i440 = lshr i64 %8, 56
  %conv.i441 = trunc i64 %shr.i440 to i32
  %and.i442 = and i64 %8, 72057594037927935
  %conv129 = zext i8 %12 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m117, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 322, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond125, i32 noundef %conv.i441, i64 noundef %and.i442, i32 noundef %conv, ptr noundef %name38, i32 noundef %conv129) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m117) #4
  br label %if.end341

do.body134:                                       ; preds = %if.end112
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %call113, i32 0, i32 16
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %owner, align 4
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %29 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp137 = icmp eq i8 %28, %30
  br i1 %cmp137, label %do.body142, label %do.body151, !prof !77

do.body142:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 328, 0\0A.popsection", ""() #4, !srcloc !98
  unreachable

do.body151:                                       ; preds = %do.body134
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m152) #4
  %31 = ptrtoint ptr %_m152 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 64, ptr %_m152, align 8
  %name156 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %32 = ptrtoint ptr %name156 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name156, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %call113, i32 0, i32 1
  %34 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lockname, align 8
  %name159 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call113, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %name159 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name159, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m152, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 331, ptr noundef nonnull @.str.21, ptr noundef %33, i32 noundef %35, ptr noundef %37) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m152) #4
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %call113, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock) #4
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call113, i32 0, i32 17
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %state, align 2
  %conv163 = zext i16 %39 to i32
  %and164 = and i32 %conv163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end175, label %do.body167

do.body167:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m168) #4
  %40 = ptrtoint ptr %_m168 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 64, ptr %_m168, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m168, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 335, ptr noundef nonnull @.str.22) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m168) #4
  br label %unlock_out

if.end175:                                        ; preds = %do.body151
  %and178 = and i32 %conv163, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %if.end189, label %do.body181

do.body181:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m182) #4
  %41 = ptrtoint ptr %_m182 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 64, ptr %_m182, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m182, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 340, ptr noundef nonnull @.str.23) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m182) #4
  br label %unlock_out

if.end189:                                        ; preds = %if.end175
  %converting = getelementptr inbounds %struct.dlm_lock_resource, ptr %call113, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end189
  %.pn.in = phi ptr [ %converting, %if.end189 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %42 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp190.not = icmp eq ptr %.pn, %converting
  br i1 %cmp190.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %lock.0 = getelementptr i8, ptr %.pn, i32 -16
  %43 = ptrtoint ptr %lock.0 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %lock.0, align 8
  %cmp195 = icmp eq i64 %44, %8
  br i1 %cmp195, label %for.body.do_ast_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.do_ast_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_ast

for.end:                                          ; preds = %for.cond
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp206 = icmp eq i8 %46, 0
  %blocked = getelementptr inbounds %struct.dlm_lock_resource, ptr %call113, i32 0, i32 5
  %granted = getelementptr inbounds %struct.dlm_lock_resource, ptr %call113, i32 0, i32 3
  %head.0 = select i1 %cmp206, ptr %blocked, ptr %granted
  br label %for.cond214

for.cond214:                                      ; preds = %for.body220.for.cond214_crit_edge, %for.end
  %.pn439.in = phi ptr [ %head.0, %for.end ], [ %.pn439, %for.body220.for.cond214_crit_edge ]
  %47 = ptrtoint ptr %.pn439.in to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn439 = load ptr, ptr %.pn439.in, align 4
  %cmp216.not = icmp eq ptr %.pn439, %head.0
  br i1 %cmp216.not, label %for.cond214.do.body237_crit_edge, label %for.body220

for.cond214.do.body237_crit_edge:                 ; preds = %for.cond214
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body237

for.body220:                                      ; preds = %for.cond214
  %lock.1 = getelementptr i8, ptr %.pn439, i32 -16
  %48 = ptrtoint ptr %lock.1 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %lock.1, align 8
  %cmp223 = icmp eq i64 %49, %8
  br i1 %cmp223, label %if.then225, label %for.body220.for.cond214_crit_edge

for.body220.for.cond214_crit_edge:                ; preds = %for.body220
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond214

if.then225:                                       ; preds = %for.body220
  %unlock_pending = getelementptr i8, ptr %.pn439, i32 92
  %50 = ptrtoint ptr %unlock_pending to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %unlock_pending, align 4
  %51 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool226.not = icmp eq i8 %51, 0
  br i1 %tobool226.not, label %if.then225.do_ast_crit_edge, label %if.then225.do.body237_crit_edge

if.then225.do.body237_crit_edge:                  ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body237

if.then225.do_ast_crit_edge:                      ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_ast

do.body237:                                       ; preds = %if.then225.do.body237_crit_edge, %for.cond214.do.body237_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m238) #4
  %52 = ptrtoint ptr %_m238 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 64, ptr %_m238, align 8
  %cond246 = select i1 %cmp206, ptr @.str.19, ptr @.str.20
  %shr.i443 = lshr i64 %8, 56
  %conv.i444 = trunc i64 %shr.i443 to i32
  %and.i445 = and i64 %8, 72057594037927935
  %conv250 = zext i8 %12 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m238, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 371, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond246, i32 noundef %conv.i444, i64 noundef %and.i445, i32 noundef %conv, ptr noundef %name38, i32 noundef %conv250) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m238) #4
  br label %unlock_out

unlock_out:                                       ; preds = %do.body237, %do.body181, %do.body167
  %ret.0 = phi i32 [ 39, %do.body167 ], [ 40, %do.body181 ], [ 0, %do.body237 ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  br label %if.then340

do_ast:                                           ; preds = %if.then225.do_ast_crit_edge, %for.body.do_ast_crit_edge
  %.pn439.lcssa.pn = phi ptr [ %.pn439, %if.then225.do_ast_crit_edge ], [ %.pn, %for.body.do_ast_crit_edge ]
  %lock.2 = getelementptr i8, ptr %.pn439.lcssa.pn, i32 -16
  %53 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp257 = icmp eq i8 %54, 0
  br i1 %cmp257, label %if.then259, label %do_ast.if.end328_crit_edge

do_ast.if.end328_crit_edge:                       ; preds = %do_ast
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end328

if.then259:                                       ; preds = %do_ast
  %granted261 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call113, i32 0, i32 3
  call fastcc void @list_move_tail(ptr noundef %.pn439.lcssa.pn, ptr noundef %granted261)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m263) #4
  %55 = ptrtoint ptr %_m263 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 64, ptr %_m263, align 8
  %56 = ptrtoint ptr %name156 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name156, align 4
  %58 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lockname, align 8
  %60 = ptrtoint ptr %name159 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name159, align 8
  %shr.i446 = lshr i64 %8, 56
  %conv.i447 = trunc i64 %shr.i446 to i32
  %and.i448 = and i64 %8, 72057594037927935
  %type276 = getelementptr i8, ptr %.pn439.lcssa.pn, i32 -4
  %62 = ptrtoint ptr %type276 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %type276, align 4
  %conv277 = sext i8 %63 to i32
  %convert_type = getelementptr i8, ptr %.pn439.lcssa.pn, i32 -3
  %64 = ptrtoint ptr %convert_type to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %convert_type, align 1
  %conv279 = sext i8 %65 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m263, ptr noundef nonnull @__func__.dlm_proxy_ast_handler, i32 noundef 387, ptr noundef nonnull @.str.25, ptr noundef %57, i32 noundef %59, ptr noundef %61, i32 noundef %conv.i447, i64 noundef %and.i448, i32 noundef %conv277, i32 noundef %conv279) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m263) #4
  %66 = ptrtoint ptr %convert_type to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %convert_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp286.not = icmp eq i8 %67, -1
  br i1 %cmp286.not, label %if.then259.if.end296_crit_edge, label %if.then288

if.then259.if.end296_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end296

if.then288:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %type276 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %type276, align 4
  %69 = ptrtoint ptr %convert_type to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %convert_type, align 1
  br label %if.end296

if.end296:                                        ; preds = %if.then288, %if.then259.if.end296_crit_edge
  %lksb = getelementptr i8, ptr %.pn439.lcssa.pn, i32 88
  %70 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lksb, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %71, align 4
  br i1 %tobool74.not, label %if.end296.if.end328_crit_edge, label %do.body300

if.end296.if.end328_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end328

do.body300:                                       ; preds = %if.end296
  %73 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lksb, align 8
  %flags302 = getelementptr inbounds %struct.dlm_lockstatus, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %flags302 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags302, align 4
  %and303 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %do.body314, label %do.end322, !prof !77

do.body314:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 400, 0\0A.popsection", ""() #4, !srcloc !99
  unreachable

do.end322:                                        ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #6
  %lvb = getelementptr inbounds %struct.dlm_lockstatus, ptr %74, i32 0, i32 3
  %lvb325 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 4, i32 4
  %77 = call ptr @memcpy(ptr %lvb, ptr %lvb325, i32 64)
  br label %if.end328

if.end328:                                        ; preds = %do.end322, %if.end296.if.end328_crit_edge, %do_ast.if.end328_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  %78 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp332 = icmp eq i8 %79, 0
  br i1 %cmp332, label %if.then334, label %if.else335

if.then334:                                       ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #6
  call void @dlm_do_local_ast(ptr noundef %data, ptr noundef nonnull %call113, ptr noundef %lock.2)
  br label %if.then340

if.else335:                                       ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %blocked_type to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %blocked_type, align 2
  %conv337 = zext i8 %81 to i32
  call void @dlm_do_local_bast(ptr noundef %data, ptr noundef nonnull %call113, ptr noundef %lock.2, i32 noundef %conv337)
  br label %if.then340

if.then340:                                       ; preds = %if.else335, %if.then334, %unlock_out
  %ret.1 = phi i32 [ %ret.0, %unlock_out ], [ 0, %if.then334 ], [ 0, %if.else335 ]
  call void @dlm_lockres_put(ptr noundef nonnull %call113) #4
  br label %if.end341

if.end341:                                        ; preds = %if.then340, %do.body116, %do.body98, %do.body57, %if.then43
  %ret.1452 = phi i32 [ %ret.1, %if.then340 ], [ 11, %do.body116 ], [ 11, %do.body98 ], [ 19, %do.body57 ], [ 22, %if.then43 ]
  call void @dlm_put(ptr noundef %data) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end341, %do.body1
  %retval.0 = phi i32 [ %ret.1452, %if.end341 ], [ 26, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_grab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_errname(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_domain_fully_joined(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_lookup_lockres(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #4
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #4
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_send_proxy_ast_msg(ptr nocapture noundef readonly %dlm, ptr nocapture noundef readonly %res, ptr nocapture noundef readonly %lock, i32 noundef %msg_type, i32 noundef %blocked_type, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %past = alloca %struct.dlm_proxy_ast, align 8
  %vec = alloca [2 x %struct.kvec], align 4
  %status = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m33 = alloca i64, align 8
  %_m52 = alloca i64, align 8
  %_m73 = alloca i64, align 8
  %_m96 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %past) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vec) #4
  %0 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %vec, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %7 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lockname, align 8
  %name2 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name2, align 8
  %node = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 7
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %node, align 1
  %conv = zext i8 %12 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_send_proxy_ast_msg, i32 noundef 433, ptr noundef nonnull @.str.26, ptr noundef %6, i32 noundef %8, ptr noundef %10, i32 noundef %conv, i32 noundef %msg_type, i32 noundef %blocked_type) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  %13 = getelementptr inbounds i8, ptr %past, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 72)
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %15 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %node_num, align 4
  %node_idx = getelementptr inbounds %struct.dlm_proxy_ast, ptr %past, i32 0, i32 2
  %17 = ptrtoint ptr %node_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %node_idx, align 4
  %conv3 = trunc i32 %msg_type to i8
  %type = getelementptr inbounds %struct.dlm_proxy_ast, ptr %past, i32 0, i32 3
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3, ptr %type, align 1
  %conv4 = trunc i32 %blocked_type to i8
  %blocked_type5 = getelementptr inbounds %struct.dlm_proxy_ast, ptr %past, i32 0, i32 4
  %19 = ptrtoint ptr %blocked_type5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv4, ptr %blocked_type5, align 2
  %20 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lockname, align 8
  %conv8 = trunc i32 %21 to i8
  %namelen = getelementptr inbounds %struct.dlm_proxy_ast, ptr %past, i32 0, i32 5
  %22 = ptrtoint ptr %namelen to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv8, ptr %namelen, align 1
  %name9 = getelementptr inbounds %struct.dlm_proxy_ast, ptr %past, i32 0, i32 6
  %23 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name2, align 8
  %conv13 = and i32 %21, 255
  %25 = call ptr @memcpy(ptr %name9, ptr %24, i32 %conv13)
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %lock, align 8
  %28 = ptrtoint ptr %past to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %past, align 8
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 80, ptr %0, align 4
  %30 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %past, ptr %vec, align 4
  %and17 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %entry.if.end26_crit_edge, label %if.then19

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %31 = getelementptr inbounds [2 x %struct.kvec], ptr %vec, i32 0, i32 1, i32 1
  %32 = getelementptr inbounds [2 x %struct.kvec], ptr %vec, i32 0, i32 1
  %flags20 = getelementptr inbounds %struct.dlm_proxy_ast, ptr %past, i32 0, i32 1
  %33 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags20, align 8
  %add.i = add i32 %34, 1073741824
  store i32 %add.i, ptr %flags20, align 8
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 64, ptr %31, align 4
  %lksb = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %36 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lksb, align 8
  %lvb = getelementptr inbounds %struct.dlm_lockstatus, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %lvb, ptr %32, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %entry.if.end26_crit_edge
  %veclen.0 = phi i32 [ 2, %if.then19 ], [ 1, %entry.if.end26_crit_edge ]
  %key = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %39 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %key, align 4
  %41 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %node, align 1
  %call = call i32 @o2net_send_message_vec(i32 noundef 505, i32 noundef %40, ptr noundef nonnull %vec, i32 noundef %veclen.0, i8 noundef zeroext %42, ptr noundef nonnull %status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body32, label %if.else

do.body32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m33) #4
  %43 = ptrtoint ptr %_m33 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1152921504606847040, ptr %_m33, align 8
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 4
  %46 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lockname, align 8
  %48 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name2, align 8
  %50 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %node, align 1
  %conv44 = zext i8 %51 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m33, ptr noundef nonnull @__func__.dlm_send_proxy_ast_msg, i32 noundef 457, ptr noundef nonnull @.str.27, ptr noundef %45, i32 noundef %47, ptr noundef %49, i32 noundef %call, i32 noundef %conv44) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m33) #4
  br label %if.end109

if.else:                                          ; preds = %if.end26
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %53, label %do.body95 [
    i32 39, label %do.body51
    i32 40, label %do.body72
    i32 0, label %if.else.if.end109_crit_edge
    i32 11, label %if.else.if.end109_crit_edge130
  ]

if.else.if.end109_crit_edge130:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

if.else.if.end109_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

do.body51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52) #4
  %55 = ptrtoint ptr %_m52 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606847040, ptr %_m52, align 8
  %56 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %node, align 1
  %conv58 = zext i8 %57 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52, ptr noundef nonnull @__func__.dlm_send_proxy_ast_msg, i32 noundef 461, ptr noundef nonnull @.str.28, i32 noundef %conv58) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52) #4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #4, !srcloc !101
  unreachable

do.body72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m73) #4
  %58 = ptrtoint ptr %_m73 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 1152921504606847040, ptr %_m73, align 8
  %59 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %node, align 1
  %conv79 = zext i8 %60 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m73, ptr noundef nonnull @__func__.dlm_send_proxy_ast_msg, i32 noundef 465, ptr noundef nonnull @.str.29, i32 noundef %conv79) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m73) #4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmast.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 466, 0\0A.popsection", ""() #4, !srcloc !102
  unreachable

do.body95:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m96) #4
  %61 = ptrtoint ptr %_m96 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 1152921504606847040, ptr %_m96, align 8
  %62 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %node, align 1
  %conv102 = zext i8 %63 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m96, ptr noundef nonnull @__func__.dlm_send_proxy_ast_msg, i32 noundef 469, ptr noundef nonnull @.str.30, i32 noundef %conv102, i32 noundef %53) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m96) #4
  br label %if.end109

if.end109:                                        ; preds = %do.body95, %if.else.if.end109_crit_edge, %if.else.if.end109_crit_edge130, %do.body32
  %ret.0 = phi i32 [ %call, %do.body32 ], [ 0, %if.else.if.end109_crit_edge ], [ 0, %if.else.if.end109_crit_edge130 ], [ 0, %do.body95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vec) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %past) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_send_message_vec(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__func__.__dlm_queue_ast, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 86, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 95, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 106, i32 3}
!7 = !{ptr @__func__.__dlm_queue_bast, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 153, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.dlm_do_local_ast, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 201, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__func__.dlm_do_remote_ast, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 221, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__func__.dlm_do_local_bast, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 245, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__func__.dlm_proxy_ast_handler, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 272, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 276, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 287, i32 3}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 294, i32 3}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 300, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 303, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 307, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 318, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 330, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 335, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 340, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 367, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 383, i32 3}
!52 = !{ptr @__func__.dlm_send_proxy_ast_msg, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 431, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 455, i32 3}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 460, i32 4}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 464, i32 4}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 468, i32 4}
!63 = !{ptr @__func__.dlm_update_lvb, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/dlm/dlmast.c", i32 177, i32 4}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2157175389, i64 2157175874, i64 2157175426, i64 2157175482, i64 2157175516, i64 2157175540, i64 2157175581, i64 2157175602, i64 2157175630, i64 2157175664}
!79 = !{i64 2157176958, i64 2157177443, i64 2157176995, i64 2157177051, i64 2157177085, i64 2157177109, i64 2157177150, i64 2157177171, i64 2157177199, i64 2157177233}
!80 = !{i64 2157178823, i64 2157179308, i64 2157178860, i64 2157178916, i64 2157178950, i64 2157178974, i64 2157179015, i64 2157179036, i64 2157179064, i64 2157179098}
!81 = !{i64 2157180985, i64 2157181470, i64 2157181022, i64 2157181078, i64 2157181112, i64 2157181136, i64 2157181177, i64 2157181198, i64 2157181226, i64 2157181260}
!82 = !{i64 2157170322, i64 2157170807, i64 2157170359, i64 2157170415, i64 2157170449, i64 2157170473, i64 2157170514, i64 2157170535, i64 2157170563, i64 2157170597}
!83 = !{i64 2157172192, i64 2157172677, i64 2157172229, i64 2157172285, i64 2157172319, i64 2157172343, i64 2157172384, i64 2157172405, i64 2157172433, i64 2157172467}
!84 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!85 = !{i64 2157173816, i64 2157174301, i64 2157173853, i64 2157173909, i64 2157173943, i64 2157173967, i64 2157174008, i64 2157174029, i64 2157174057, i64 2157174091}
!86 = !{i64 2157183684, i64 2157184170, i64 2157183721, i64 2157183777, i64 2157183811, i64 2157183835, i64 2157183876, i64 2157183897, i64 2157183925, i64 2157183959}
!87 = !{i64 2157185256, i64 2157185742, i64 2157185293, i64 2157185349, i64 2157185383, i64 2157185407, i64 2157185448, i64 2157185469, i64 2157185497, i64 2157185531}
!88 = !{i64 2157186826, i64 2157187312, i64 2157186863, i64 2157186919, i64 2157186953, i64 2157186977, i64 2157187018, i64 2157187039, i64 2157187067, i64 2157187101}
!89 = !{i64 2157188398, i64 2157188884, i64 2157188435, i64 2157188491, i64 2157188525, i64 2157188549, i64 2157188590, i64 2157188611, i64 2157188639, i64 2157188673}
!90 = !{i64 2157190266, i64 2157190752, i64 2157190303, i64 2157190359, i64 2157190393, i64 2157190417, i64 2157190458, i64 2157190479, i64 2157190507, i64 2157190541}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2157191886, i64 2157192372, i64 2157191923, i64 2157191979, i64 2157192013, i64 2157192037, i64 2157192078, i64 2157192099, i64 2157192127, i64 2157192161}
!93 = !{i64 2157200605, i64 2157201091, i64 2157200642, i64 2157200698, i64 2157200732, i64 2157200756, i64 2157200797, i64 2157200818, i64 2157200846, i64 2157200880}
!94 = !{i64 2157198085, i64 2157198571, i64 2157198122, i64 2157198178, i64 2157198212, i64 2157198236, i64 2157198277, i64 2157198298, i64 2157198326, i64 2157198360}
!95 = !{i64 2157202787, i64 2157203273, i64 2157202824, i64 2157202880, i64 2157202914, i64 2157202938, i64 2157202979, i64 2157203000, i64 2157203028, i64 2157203062}
!96 = !{i64 2157204409, i64 2157204895, i64 2157204446, i64 2157204502, i64 2157204536, i64 2157204560, i64 2157204601, i64 2157204622, i64 2157204650, i64 2157204684}
!97 = !{i64 2157207956, i64 2157208442, i64 2157207993, i64 2157208049, i64 2157208083, i64 2157208107, i64 2157208148, i64 2157208169, i64 2157208197, i64 2157208231}
!98 = !{i64 2157212077, i64 2157212563, i64 2157212114, i64 2157212170, i64 2157212204, i64 2157212228, i64 2157212269, i64 2157212290, i64 2157212318, i64 2157212352}
!99 = !{i64 2157221897, i64 2157222383, i64 2157221934, i64 2157221990, i64 2157222024, i64 2157222048, i64 2157222089, i64 2157222110, i64 2157222138, i64 2157222172}
!100 = !{!"auto-init"}
!101 = !{i64 2157224502, i64 2157224988, i64 2157224539, i64 2157224595, i64 2157224629, i64 2157224653, i64 2157224694, i64 2157224715, i64 2157224743, i64 2157224777}
!102 = !{i64 2157226326, i64 2157226812, i64 2157226363, i64 2157226419, i64 2157226453, i64 2157226477, i64 2157226518, i64 2157226539, i64 2157226567, i64 2157226601}
