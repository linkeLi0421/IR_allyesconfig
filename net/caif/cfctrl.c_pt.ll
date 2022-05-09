; ModuleID = '/llk/IR_all_yes/net/caif/cfctrl.c_pt.bc'
source_filename = "../net/caif/cfctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_info = type { ptr, i32 }
%struct.cfctrl = type { %struct.cfsrvl, %struct.cfctrl_rsp, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, i8, [256 x i32], %struct.spinlock }
%struct.cfsrvl = type { %struct.cflayer, i8, i8, i8, i8, ptr, %struct.dev_info, ptr, ptr, %struct.callback_head }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.cfctrl_rsp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfctrl_request_info = type { i32, i32, i8, %struct.cfctrl_link_param, ptr, %struct.list_head }
%struct.cfctrl_link_param = type { i32, i8, i8, i8, i8, %union.anon.2 }
%union.anon.2 = type { %struct.anon.5, [256 x i8] }
%struct.anon.5 = type { i32, [20 x i8] }
%struct.anon.6 = type { i16, i16, [16 x i8], [255 x i8], i16 }
%struct.caif_payload_info = type { ptr, i16, i16 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@cfctrl_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&this->loop_linkid_lock\00", [40 x i8] zeroinitializer }, align 32
@cfctrl_create.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&this->info_list_lock\00", [42 x i8] zeroinitializer }, align 32
@cfctrl_enum_req.__UNIQUE_ID_ddebug156 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caif\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfctrl_enum_req\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/caif/cfctrl.c\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"not able to send enum request\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"caif:%s(): not able to send enum request\0A\00", [54 x i8] zeroinitializer }, align 32
@cfctrl_linkup_request.__UNIQUE_ID_ddebug157 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.9, ptr @.str.6, ptr @.str.10, i8 0, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cfctrl_linkup_request\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"not able to send linkup request\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"caif:%s(): not able to send linkup request\0A\00", [52 x i8] zeroinitializer }, align 32
@cfctrl_linkup_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.6, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013caif:%s(): Duplicate connect request for same client\0A\00", [40 x i8] zeroinitializer }, align 32
@cfctrl_linkup_request._entry_ptr = internal global ptr @cfctrl_linkup_request._entry, section ".printk_index", align 4
@cfctrl_linkup_request._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.6, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014caif:%s(): Request setup of bad link type = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cfctrl_linkup_request._entry_ptr.15 = internal global ptr @cfctrl_linkup_request._entry.13, section ".printk_index", align 4
@cfctrl_linkup_request._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.6, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013caif:%s(): Could not remove request (%d)\00", [53 x i8] zeroinitializer }, align 32
@cfctrl_linkup_request._entry_ptr.18 = internal global ptr @cfctrl_linkup_request._entry.16, section ".printk_index", align 4
@cfctrl_linkdown_req.__UNIQUE_ID_ddebug158 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.19, ptr @.str.6, ptr @.str.20, i8 0, i8 78, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cfctrl_linkdown_req\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not able to send link-down request\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"caif:%s(): not able to send link-down request\0A\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cfctrl_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014caif:%s(): Request setup, invalid type (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cfctrl_recv\00", [20 x i8] zeroinitializer }, align 32
@cfctrl_recv._entry_ptr = internal global ptr @cfctrl_recv._entry, section ".printk_index", align 4
@cfctrl_recv._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.6, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013caif:%s(): Invalid O/E bit or parse error on CAIF control channel\0A\00", [59 x i8] zeroinitializer }, align 32
@cfctrl_recv._entry_ptr.26 = internal global ptr @cfctrl_recv._entry.24, section ".printk_index", align 4
@cfctrl_recv._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.6, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013caif:%s(): Frame Error Indication received\0A\00", [50 x i8] zeroinitializer }, align 32
@cfctrl_recv._entry_ptr.29 = internal global ptr @cfctrl_recv._entry.27, section ".printk_index", align 4
@cfctrl_recv._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.6, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013caif:%s(): Unrecognized Control Frame\0A\00", [55 x i8] zeroinitializer }, align 32
@cfctrl_recv._entry_ptr.32 = internal global ptr @cfctrl_recv._entry.30, section ".printk_index", align 4
@handle_loop.last_linkid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@handle_loop.dec = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cfctrl_remove_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014caif:%s(): Requests are not received in order\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cfctrl_remove_req\00", [46 x i8] zeroinitializer }, align 32
@cfctrl_remove_req._entry_ptr = internal global ptr @cfctrl_remove_req._entry, section ".printk_index", align 4
@cfctrl_ctrlcmd.__UNIQUE_ID_ddebug159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.6, ptr @.str.36, i8 0, i8 -116, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfctrl_ctrlcmd\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Received flow off in control layer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"caif:%s(): Received flow off in control layer\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 8]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 49, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 52, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 55, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 183, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 214, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 220, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 270, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 297, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 313, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 487, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 499, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 523, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 542, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"last_linkid\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 588, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"handle_loop.dec\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 150, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [21 x i8] c"../net/caif/cfctrl.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 560, i32 4 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @cfctrl_linkup_request._entry, ptr @cfctrl_linkup_request._entry.13, ptr @cfctrl_linkup_request._entry.16, ptr @cfctrl_linkup_request._entry_ptr, ptr @cfctrl_linkup_request._entry_ptr.15, ptr @cfctrl_linkup_request._entry_ptr.18, ptr @cfctrl_recv._entry, ptr @cfctrl_recv._entry.24, ptr @cfctrl_recv._entry.27, ptr @cfctrl_recv._entry.30, ptr @cfctrl_recv._entry_ptr, ptr @cfctrl_recv._entry_ptr.26, ptr @cfctrl_recv._entry_ptr.29, ptr @cfctrl_recv._entry_ptr.32, ptr @cfctrl_remove_req._entry, ptr @cfctrl_remove_req._entry_ptr, ptr @.str, ptr @cfctrl_create.__key, ptr @.str.1, ptr @cfctrl_create.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @handle_loop.last_linkid, ptr @handle_loop.dec, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_create.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_linkup_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_linkup_request._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_linkup_request._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_recv._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_recv._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_recv._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_loop.last_linkid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_loop.dec to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfctrl_remove_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfctrl_create() local_unnamed_addr #0 align 64 {
entry:
  %dev_info = alloca %struct.dev_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dev_info) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 1252) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %dev_info to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 255, ptr %dev_info, align 8
  call void @cfsrvl_init(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0, ptr noundef nonnull %dev_info, i1 noundef zeroext false) #11
  %req_seq_no = getelementptr inbounds %struct.cfctrl, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %req_seq_no, i32 noundef 4) #11
  %2 = ptrtoint ptr %req_seq_no to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %req_seq_no, align 8
  %rsp_seq_no = getelementptr inbounds %struct.cfctrl, ptr %call7.i.i, i32 0, i32 3
  %call.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef %rsp_seq_no, i32 noundef 4) #11
  %3 = ptrtoint ptr %rsp_seq_no to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %rsp_seq_no, align 4
  %receive = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cfctrl_recv, ptr %receive, align 8
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 8
  %5 = call ptr @memcpy(ptr %name, ptr @.str, i32 5)
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cfctrl_ctrlcmd, ptr %ctrlcmd, align 8
  %loop_linkid_lock = getelementptr inbounds %struct.cfctrl, ptr %call7.i.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %loop_linkid_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cfctrl_create.__key, i16 noundef signext 3) #11
  %loop_linkid = getelementptr inbounds %struct.cfctrl, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %loop_linkid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %loop_linkid, align 4
  %info_list_lock = getelementptr inbounds %struct.cfctrl, ptr %call7.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %info_list_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @cfctrl_create.__key.2, i16 noundef signext 3) #11
  %list = getelementptr inbounds %struct.cfctrl, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cfctrl, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dev_info) #11
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfsrvl_init(ptr noundef, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfctrl_recv(ptr noundef %layer, ptr noundef %pkt) #0 align 64 {
entry:
  %tmp.i329 = alloca i8, align 1
  %tmp.i325 = alloca i8, align 1
  %tmp.i323 = alloca i8, align 1
  %tmp.i321 = alloca i8, align 1
  %tmp.i319 = alloca i8, align 1
  %tmp.i317 = alloca i8, align 1
  %tmp.i315 = alloca i16, align 2
  %tmp.i313 = alloca i16, align 2
  %tmp.i311 = alloca i8, align 1
  %tmp.i309 = alloca i8, align 1
  %tmp.i307 = alloca i8, align 1
  %tmp.i305 = alloca i32, align 4
  %tmp.i303 = alloca i8, align 1
  %tmp.i301 = alloca i32, align 4
  %tmp.i299 = alloca i8, align 1
  %tmp.i297 = alloca i8, align 1
  %tmp.i295 = alloca i8, align 1
  %tmp.i293 = alloca i8, align 1
  %tmp.i291 = alloca i8, align 1
  %tmp.i289 = alloca i8, align 1
  %linkid.i = alloca i8, align 1
  %linktype.i = alloca i8, align 1
  %tmp.i287 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %param = alloca [255 x i8], align 1
  %rsp = alloca %struct.cfctrl_request_info, align 4
  %linkparam = alloca %struct.cfctrl_link_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %param) #11
  %0 = call ptr @memset(ptr %param, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %rsp) #11
  %1 = call ptr @memset(ptr %rsp, i32 255, i32 312)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #11
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp.i, align 1, !annotation !77
  %call.i = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i, i16 noundef zeroext 1) #11
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmp.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #11
  %conv = zext i8 %4 to i32
  %and = and i8 %4, 15
  %conv2 = zext i8 %and to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %and)
  %cmp.not = icmp ne i8 %and, 2
  %and5 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6.not.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %cmp.not, i1 %cmp6.not.not, i1 false
  %and10 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not.not = icmp eq i32 %and10, 0
  %or.cond283 = select i1 %or.cond, i1 %cmp11.not.not, i1 false
  br i1 %or.cond283, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %linkid.i) #11
  %5 = ptrtoint ptr %linkid.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %linkid.i, align 1, !annotation !77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %linktype.i) #11
  %6 = ptrtoint ptr %linktype.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %linktype.i, align 1, !annotation !77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i287) #11
  %7 = zext i32 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv2, label %if.then._crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb45.i
  ]

if.then._crit_edge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %26

sw.bb.i:                                          ; preds = %if.then
  %loop_linkid_lock.i = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %loop_linkid_lock.i) #11
  %.b.i = load i1, ptr @handle_loop.dec, align 4
  br i1 %.b.i, label %sw.bb.i.if.end5.i_crit_edge, label %if.then.i

sw.bb.i.if.end5.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i:                                        ; preds = %sw.bb.i
  %8 = load i32, ptr @handle_loop.last_linkid, align 4
  %9 = trunc i32 %8 to i8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i
  %storemerge.in.i = phi i8 [ %9, %if.then.i ], [ %storemerge.i, %for.body.i.for.cond.i_crit_edge ]
  %storemerge.i = add i8 %storemerge.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %storemerge.i)
  %cmp.i = icmp ult i8 %storemerge.i, -2
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.if.end5.i_crit_edge

for.cond.i.if.end5.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

for.body.i:                                       ; preds = %for.cond.i
  %conv1.i = zext i8 %storemerge.i to i32
  %arrayidx.i = getelementptr %struct.cfctrl, ptr %layer, i32 0, i32 7, i32 %conv1.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %for.body.i.found.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.found.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %found.i

if.end5.i:                                        ; preds = %for.cond.i.if.end5.i_crit_edge, %sw.bb.i.if.end5.i_crit_edge
  store i1 true, ptr @handle_loop.dec, align 4
  %12 = load i32, ptr @handle_loop.last_linkid, align 4
  %13 = trunc i32 %12 to i8
  br label %for.cond7.i

for.cond7.i:                                      ; preds = %for.body11.i.for.cond7.i_crit_edge, %if.end5.i
  %storemerge67.in.i = phi i8 [ %13, %if.end5.i ], [ %storemerge67.i, %for.body11.i.for.cond7.i_crit_edge ]
  %storemerge67.i = add i8 %storemerge67.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %storemerge67.i)
  %cmp9.i = icmp ugt i8 %storemerge67.i, 1
  br i1 %cmp9.i, label %for.body11.i, label %handle_loop.exit

for.body11.i:                                     ; preds = %for.cond7.i
  %conv8.i = zext i8 %storemerge67.i to i32
  %arrayidx14.i = getelementptr %struct.cfctrl, ptr %layer, i32 0, i32 7, i32 %conv8.i
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq i32 %15, 0
  br i1 %tobool15.not.i, label %for.body11.i.found.i_crit_edge, label %for.body11.i.for.cond7.i_crit_edge

for.body11.i.for.cond7.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.i

for.body11.i.found.i_crit_edge:                   ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %found.i

found.i:                                          ; preds = %for.body11.i.found.i_crit_edge, %for.body.i.found.i_crit_edge
  %storemerge71.i = phi i8 [ %storemerge67.i, %for.body11.i.found.i_crit_edge ], [ %storemerge.i, %for.body.i.found.i_crit_edge ]
  %16 = ptrtoint ptr %linkid.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge71.i, ptr %linkid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %storemerge71.i)
  %cmp22.i = icmp ult i8 %storemerge71.i, 10
  br i1 %cmp22.i, label %if.then24.i, label %found.i.if.end25.i_crit_edge

found.i.if.end25.i_crit_edge:                     ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then24.i:                                      ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 false, ptr @handle_loop.dec, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %found.i.if.end25.i_crit_edge
  %idxprom27.i = zext i8 %storemerge71.i to i32
  %arrayidx28.i = getelementptr %struct.cfctrl, ptr %layer, i32 0, i32 7, i32 %idxprom27.i
  %17 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool29.not.i = icmp eq i32 %18, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end25.i.if.end34.i_crit_edge

if.end25.i.if.end34.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx28.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %if.end25.i.if.end34.i_crit_edge
  store i32 %idxprom27.i, ptr @handle_loop.last_linkid, align 4
  %call.i288 = call i32 @cfpkt_add_trail(ptr noundef %pkt, ptr noundef nonnull %linkid.i, i16 noundef zeroext 1) #11
  call void @_raw_spin_unlock_bh(ptr noundef %loop_linkid_lock.i) #11
  %call37.i = call i32 @cfpkt_peek_head(ptr noundef %pkt, ptr noundef nonnull %linktype.i, i16 noundef zeroext 1) #11
  %20 = ptrtoint ptr %linktype.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %linktype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %cmp39.i = icmp eq i8 %21, 6
  br i1 %cmp39.i, label %if.then41.i, label %if.end34.i._crit_edge

if.end34.i._crit_edge:                            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %26

if.then41.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %tmp.i287 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %tmp.i287, align 1
  %call42.i = call i32 @cfpkt_add_trail(ptr noundef %pkt, ptr noundef nonnull %tmp.i287, i16 noundef zeroext 1) #11
  %call43.i = call i32 @cfpkt_add_trail(ptr noundef %pkt, ptr noundef nonnull %tmp.i287, i16 noundef zeroext 1) #11
  br label %26

sw.bb45.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %loop_linkid_lock46.i = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %loop_linkid_lock46.i) #11
  %call47.i = call i32 @cfpkt_peek_head(ptr noundef %pkt, ptr noundef nonnull %linkid.i, i16 noundef zeroext 1) #11
  %23 = ptrtoint ptr %linkid.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %linkid.i, align 1
  %idxprom49.i = zext i8 %24 to i32
  %arrayidx50.i = getelementptr %struct.cfctrl, ptr %layer, i32 0, i32 7, i32 %idxprom49.i
  %25 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx50.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %loop_linkid_lock46.i) #11
  br label %26

handle_loop.exit:                                 ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %loop_linkid_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i287) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %linktype.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %linkid.i) #11
  br label %if.end20

26:                                               ; preds = %sw.bb45.i, %if.then41.i, %if.end34.i._crit_edge, %if.then._crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i287) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %linktype.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %linkid.i) #11
  br label %if.end20

if.end20:                                         ; preds = %26, %handle_loop.exit, %entry.if.end20_crit_edge
  %cmdrsp.0 = phi i8 [ %4, %entry.if.end20_crit_edge ], [ %4, %26 ], [ 16, %handle_loop.exit ]
  %27 = zext i32 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %conv2, label %do.end193 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb167
    i32 2, label %do.end176
    i32 3, label %sw.bb180
    i32 4, label %sw.bb182
    i32 5, label %sw.bb184
    i32 6, label %sw.bb186
    i32 8, label %sw.bb188
  ]

sw.bb:                                            ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %linkparam) #11
  %28 = getelementptr inbounds i8, ptr %linkparam, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 280)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i289) #11
  %30 = ptrtoint ptr %tmp.i289 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %tmp.i289, align 1, !annotation !77
  %call.i290 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i289, i16 noundef zeroext 1) #11
  %31 = ptrtoint ptr %tmp.i289 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tmp.i289, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i289) #11
  %33 = and i8 %32, 15
  %and25 = zext i8 %33 to i32
  %34 = ptrtoint ptr %linkparam to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and25, ptr %linkparam, align 4
  %35 = lshr i8 %32, 4
  %chtype = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 4
  %36 = ptrtoint ptr %chtype to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %chtype, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i291) #11
  %37 = ptrtoint ptr %tmp.i291 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %tmp.i291, align 1, !annotation !77
  %call.i292 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i291, i16 noundef zeroext 1) #11
  %38 = ptrtoint ptr %tmp.i291 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tmp.i291, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i291) #11
  %and30 = and i8 %39, 7
  %40 = lshr i8 %39, 3
  %priority = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 1
  %41 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %priority, align 4
  %phyid = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 2
  %42 = ptrtoint ptr %phyid to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %and30, ptr %phyid, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i293) #11
  %43 = ptrtoint ptr %tmp.i293 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %tmp.i293, align 1, !annotation !77
  %call.i294 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i293, i16 noundef zeroext 1) #11
  %44 = ptrtoint ptr %tmp.i293 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tmp.i293, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i293) #11
  %46 = and i8 %45, 3
  %endpoint39 = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 3
  %47 = ptrtoint ptr %endpoint39 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %endpoint39, align 2
  %48 = zext i32 %and25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and25, label %cleanup [
    i32 1, label %sw.bb.sw.bb40_crit_edge
    i32 3, label %sw.bb.sw.bb40_crit_edge381
    i32 2, label %sw.bb46
    i32 4, label %sw.bb54
    i32 5, label %sw.bb64
    i32 6, label %sw.bb82
  ]

sw.bb.sw.bb40_crit_edge381:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb40

sw.bb.sw.bb40_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb.sw.bb40_crit_edge, %sw.bb.sw.bb40_crit_edge381
  %49 = and i8 %cmdrsp.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  br i1 %tobool.not, label %if.end44, label %sw.bb40.sw.epilog_crit_edge

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end44:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i295) #11
  %50 = ptrtoint ptr %tmp.i295 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %tmp.i295, align 1, !annotation !77
  %call.i296 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i295, i16 noundef zeroext 1) #11
  %51 = ptrtoint ptr %tmp.i295 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tmp.i295, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i295) #11
  br label %sw.epilog

sw.bb46:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i297) #11
  %53 = ptrtoint ptr %tmp.i297 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %tmp.i297, align 1, !annotation !77
  %call.i298 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i297, i16 noundef zeroext 1) #11
  %54 = ptrtoint ptr %tmp.i297 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tmp.i297, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i297) #11
  %u = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 5
  %56 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %u, align 4
  %57 = and i8 %cmdrsp.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool50.not = icmp eq i8 %57, 0
  br i1 %tobool50.not, label %if.end52, label %sw.bb46.sw.epilog_crit_edge

sw.bb46.sw.epilog_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end52:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i299) #11
  %58 = ptrtoint ptr %tmp.i299 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %tmp.i299, align 1, !annotation !77
  %call.i300 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i299, i16 noundef zeroext 1) #11
  %59 = ptrtoint ptr %tmp.i299 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tmp.i299, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i299) #11
  br label %sw.epilog

sw.bb54:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i301) #11
  %61 = ptrtoint ptr %tmp.i301 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %tmp.i301, align 4, !annotation !77
  %call.i302 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i301, i16 noundef zeroext 4) #11
  %62 = ptrtoint ptr %tmp.i301 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tmp.i301, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i301) #11
  %u56 = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 5
  %65 = ptrtoint ptr %u56 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %u56, align 4
  %66 = and i8 %cmdrsp.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool60.not = icmp eq i8 %66, 0
  br i1 %tobool60.not, label %if.end62, label %sw.bb54.sw.epilog_crit_edge

sw.bb54.sw.epilog_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end62:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i303) #11
  %67 = ptrtoint ptr %tmp.i303 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %tmp.i303, align 1, !annotation !77
  %call.i304 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i303, i16 noundef zeroext 1) #11
  %68 = ptrtoint ptr %tmp.i303 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tmp.i303, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i303) #11
  br label %sw.epilog

sw.bb64:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i305) #11
  %70 = ptrtoint ptr %tmp.i305 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %tmp.i305, align 4, !annotation !77
  %call.i306 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i305, i16 noundef zeroext 4) #11
  %71 = ptrtoint ptr %tmp.i305 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tmp.i305, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i305) #11
  %u66 = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 5
  %74 = ptrtoint ptr %u66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %u66, align 4
  %volume = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 5, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i307) #11
  %75 = ptrtoint ptr %tmp.i307 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %tmp.i307, align 1, !annotation !77
  %call.i308 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i307, i16 noundef zeroext 1) #11
  %76 = ptrtoint ptr %tmp.i307 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tmp.i307, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i307) #11
  %call70350 = call zeroext i1 @cfpkt_more(ptr noundef %pkt) #11
  %call70.not351 = xor i1 %call70350, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp73.not352 = icmp eq i8 %77, 0
  %or.cond284353 = select i1 %call70.not351, i1 true, i1 %cmp73.not352
  br i1 %or.cond284353, label %sw.bb64.for.end_crit_edge, label %sw.bb64.for.body_crit_edge

sw.bb64.for.body_crit_edge:                       ; preds = %sw.bb64
  br label %for.body

sw.bb64.for.end_crit_edge:                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb64.for.body_crit_edge
  %cp.0355 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %volume, %sw.bb64.for.body_crit_edge ]
  %tmp22.0354 = phi i8 [ %81, %for.body.for.body_crit_edge ], [ %77, %sw.bb64.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %cp.0355, i32 1
  %78 = ptrtoint ptr %cp.0355 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %tmp22.0354, ptr %cp.0355, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i309) #11
  %79 = ptrtoint ptr %tmp.i309 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %tmp.i309, align 1, !annotation !77
  %call.i310 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i309, i16 noundef zeroext 1) #11
  %80 = ptrtoint ptr %tmp.i309 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tmp.i309, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i309) #11
  %call70 = call zeroext i1 @cfpkt_more(ptr noundef %pkt) #11
  %call70.not = xor i1 %call70, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp73.not = icmp eq i8 %81, 0
  %or.cond284 = select i1 %call70.not, i1 true, i1 %cmp73.not
  br i1 %or.cond284, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.bb64.for.end_crit_edge
  %cp.0.lcssa = phi ptr [ %volume, %sw.bb64.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %82 = ptrtoint ptr %cp.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %cp.0.lcssa, align 1
  %83 = and i8 %cmdrsp.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool78.not = icmp eq i8 %83, 0
  br i1 %tobool78.not, label %if.end80, label %for.end.sw.epilog_crit_edge

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end80:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i311) #11
  %84 = ptrtoint ptr %tmp.i311 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -1, ptr %tmp.i311, align 1, !annotation !77
  %call.i312 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i311, i16 noundef zeroext 1) #11
  %85 = ptrtoint ptr %tmp.i311 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %tmp.i311, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i311) #11
  br label %sw.epilog

sw.bb82:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i313) #11
  %87 = ptrtoint ptr %tmp.i313 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %tmp.i313, align 2, !annotation !77
  %call.i314 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i313, i16 noundef zeroext 2) #11
  %88 = ptrtoint ptr %tmp.i313 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %tmp.i313, align 2
  %90 = call i16 @llvm.bswap.i16(i16 %89) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i313) #11
  %u84 = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 5
  %91 = ptrtoint ptr %u84 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %u84, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i315) #11
  %92 = ptrtoint ptr %tmp.i315 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %tmp.i315, align 2, !annotation !77
  %call.i316 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i315, i16 noundef zeroext 2) #11
  %93 = ptrtoint ptr %tmp.i315 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %tmp.i315, align 2
  %95 = call i16 @llvm.bswap.i16(i16 %94) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i315) #11
  %fifosize_bufs = getelementptr inbounds %struct.anon.6, ptr %u84, i32 0, i32 1
  %96 = ptrtoint ptr %fifosize_bufs to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %fifosize_bufs, align 2
  %name = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 5, i32 0, i32 1
  %uglygep = getelementptr inbounds i8, ptr %linkparam, i32 27
  br label %land.rhs92

land.rhs92:                                       ; preds = %for.body96.land.rhs92_crit_edge, %sw.bb82
  %cp.1342 = phi ptr [ %name, %sw.bb82 ], [ %incdec.ptr98, %for.body96.land.rhs92_crit_edge ]
  %call93 = call zeroext i1 @cfpkt_more(ptr noundef %pkt) #11
  br i1 %call93, label %for.body96, label %land.rhs92.for.end100_crit_edge

land.rhs92.for.end100_crit_edge:                  ; preds = %land.rhs92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end100

for.body96:                                       ; preds = %land.rhs92
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i317) #11
  %97 = ptrtoint ptr %tmp.i317 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %tmp.i317, align 1, !annotation !77
  %call.i318 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i317, i16 noundef zeroext 1) #11
  %98 = ptrtoint ptr %tmp.i317 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tmp.i317, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i317) #11
  %incdec.ptr98 = getelementptr i8, ptr %cp.1342, i32 1
  %100 = ptrtoint ptr %cp.1342 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %cp.1342, align 1
  %exitcond.not = icmp eq ptr %cp.1342, %uglygep
  br i1 %exitcond.not, label %for.body96.for.end100_crit_edge, label %for.body96.land.rhs92_crit_edge

for.body96.land.rhs92_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs92

for.body96.for.end100_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end100

for.end100:                                       ; preds = %for.body96.for.end100_crit_edge, %land.rhs92.for.end100_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i319) #11
  %101 = ptrtoint ptr %tmp.i319 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %tmp.i319, align 1, !annotation !77
  %call.i320 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i319, i16 noundef zeroext 1) #11
  %102 = ptrtoint ptr %tmp.i319 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %tmp.i319, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i319) #11
  %conv102 = zext i8 %103 to i16
  %paramlen = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 5, i32 1, i32 252
  %104 = ptrtoint ptr %paramlen to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv102, ptr %paramlen, align 4
  %call106344 = call zeroext i1 @cfpkt_more(ptr noundef %pkt) #11
  %call106.not345 = xor i1 %call106344, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool110.not346 = icmp eq i8 %103, 0
  %or.cond285347 = select i1 %call106.not345, i1 true, i1 %tobool110.not346
  br i1 %or.cond285347, label %for.end100.while.end_crit_edge, label %while.body.preheader

for.end100.while.end_crit_edge:                   ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.preheader:                             ; preds = %for.end100
  %params = getelementptr inbounds %struct.cfctrl_link_param, ptr %linkparam, i32 0, i32 5, i32 0, i32 1, i32 16
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %cp.2349 = phi ptr [ %incdec.ptr113, %while.body.while.body_crit_edge ], [ %params, %while.body.preheader ]
  %len.0348 = phi i8 [ %dec, %while.body.while.body_crit_edge ], [ %103, %while.body.preheader ]
  %dec = add i8 %len.0348, -1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i321) #11
  %105 = ptrtoint ptr %tmp.i321 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -1, ptr %tmp.i321, align 1, !annotation !77
  %call.i322 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i321, i16 noundef zeroext 1) #11
  %106 = ptrtoint ptr %tmp.i321 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %tmp.i321, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i321) #11
  %incdec.ptr113 = getelementptr i8, ptr %cp.2349, i32 1
  %108 = ptrtoint ptr %cp.2349 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %cp.2349, align 1
  %call106 = call zeroext i1 @cfpkt_more(ptr noundef %pkt) #11
  %call106.not = xor i1 %call106, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool110.not = icmp eq i8 %dec, 0
  %or.cond285 = select i1 %call106.not, i1 true, i1 %tobool110.not
  br i1 %or.cond285, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end100.while.end_crit_edge
  %109 = and i8 %cmdrsp.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool116.not = icmp eq i8 %109, 0
  br i1 %tobool116.not, label %if.end118, label %while.end.sw.epilog_crit_edge

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end118:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i323) #11
  %110 = ptrtoint ptr %tmp.i323 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %tmp.i323, align 1, !annotation !77
  %call.i324 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i323, i16 noundef zeroext 1) #11
  %111 = ptrtoint ptr %tmp.i323 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %tmp.i323, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i323) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i325) #11
  %113 = ptrtoint ptr %tmp.i325 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %tmp.i325, align 1, !annotation !77
  %call.i326 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i325, i16 noundef zeroext 1) #11
  %114 = ptrtoint ptr %tmp.i325 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %tmp.i325, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i325) #11
  %conv121 = zext i8 %115 to i16
  %call122 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %param, i16 noundef zeroext %conv121) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end118, %while.end.sw.epilog_crit_edge, %if.end80, %for.end.sw.epilog_crit_edge, %if.end62, %sw.bb54.sw.epilog_crit_edge, %if.end52, %sw.bb46.sw.epilog_crit_edge, %if.end44, %sw.bb40.sw.epilog_crit_edge
  %linkid.0 = phi i8 [ 0, %while.end.sw.epilog_crit_edge ], [ %112, %if.end118 ], [ 0, %for.end.sw.epilog_crit_edge ], [ %86, %if.end80 ], [ 0, %sw.bb54.sw.epilog_crit_edge ], [ %69, %if.end62 ], [ 0, %sw.bb46.sw.epilog_crit_edge ], [ %60, %if.end52 ], [ 0, %sw.bb40.sw.epilog_crit_edge ], [ %52, %if.end44 ]
  %cmd129 = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 1
  %116 = ptrtoint ptr %cmd129 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %cmd129, align 4
  %param130 = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 3
  %117 = call ptr @memcpy(ptr %param130, ptr %linkparam, i32 288)
  %info_list_lock = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %info_list_lock) #11
  %list.i = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 4
  %118 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %119, i32 -304
  %cmp.not46.i = icmp eq ptr %119, %list.i
  br i1 %cmp.not46.i, label %sw.epilog.cfctrl_remove_req.exit_crit_edge, label %for.body.lr.ph.i

sw.epilog.cfctrl_remove_req.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cfctrl_remove_req.exit

for.body.lr.ph.i:                                 ; preds = %sw.epilog
  %priority.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 3, i32 1
  %phyid.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 3, i32 2
  %endpoint.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 3, i32 3
  %chtype.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 3, i32 4
  %u91.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 3, i32 5
  %fifosize_bufs.i.i.i = getelementptr inbounds %struct.anon.6, ptr %u91.i.i.i, i32 0, i32 1
  %name.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 3, i32 5, i32 0, i32 1
  %paramlen.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 3, i32 5, i32 1, i32 252
  %params.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %rsp, i32 0, i32 3, i32 5, i32 0, i32 1, i32 16
  br label %for.body.i327

for.body.i327:                                    ; preds = %for.cond.backedge.i.for.body.i327_crit_edge, %for.body.lr.ph.i
  %.pn48.in.i = phi ptr [ %119, %for.body.lr.ph.i ], [ %.pn48.i, %for.cond.backedge.i.for.body.i327_crit_edge ]
  %p.047.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %tmp.049.i, %for.cond.backedge.i.for.body.i327_crit_edge ]
  %120 = ptrtoint ptr %.pn48.in.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pn48.i = load ptr, ptr %.pn48.in.i, align 4
  %tmp.049.i = getelementptr i8, ptr %.pn48.i, i32 -304
  %cmd1.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 1
  %121 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cmd1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp.not.i.i = icmp eq i32 %122, 0
  br i1 %cmp.not.i.i, label %if.then4.i.i, label %for.body.i327.for.cond.backedge.i_crit_edge

for.body.i327.for.cond.backedge.i_crit_edge:      ; preds = %for.body.i327
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

if.then4.i.i:                                     ; preds = %for.body.i327
  %param5.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3
  %123 = ptrtoint ptr %param130 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %param130, align 4
  %125 = ptrtoint ptr %param5.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %param5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp.i.i.i = icmp eq i32 %124, %126
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.then4.i.i.for.cond.backedge.i_crit_edge

if.then4.i.i.for.cond.backedge.i_crit_edge:       ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.lhs.true.i.i.i:                              ; preds = %if.then4.i.i
  %127 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %priority.i.i.i, align 4
  %priority2.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 1
  %129 = ptrtoint ptr %priority2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %priority2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %130)
  %cmp4.i.i.i = icmp eq i8 %128, %130
  br i1 %cmp4.i.i.i, label %land.lhs.true6.i.i.i, label %land.lhs.true.i.i.i.for.cond.backedge.i_crit_edge

land.lhs.true.i.i.i.for.cond.backedge.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %131 = ptrtoint ptr %phyid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %phyid.i.i.i, align 1
  %phyid8.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 2
  %133 = ptrtoint ptr %phyid8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %phyid8.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %132, i8 %134)
  %cmp10.i.i.i = icmp eq i8 %132, %134
  br i1 %cmp10.i.i.i, label %land.lhs.true12.i.i.i, label %land.lhs.true6.i.i.i.for.cond.backedge.i_crit_edge

land.lhs.true6.i.i.i.for.cond.backedge.i_crit_edge: ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.lhs.true12.i.i.i:                            ; preds = %land.lhs.true6.i.i.i
  %135 = ptrtoint ptr %endpoint.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %endpoint.i.i.i, align 2
  %endpoint14.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 3
  %137 = ptrtoint ptr %endpoint14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %endpoint14.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %138)
  %cmp16.i.i.i = icmp eq i8 %136, %138
  br i1 %cmp16.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true12.i.i.i.for.cond.backedge.i_crit_edge

land.lhs.true12.i.i.i.for.cond.backedge.i_crit_edge: ; preds = %land.lhs.true12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true12.i.i.i
  %139 = ptrtoint ptr %chtype.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %chtype.i.i.i, align 1
  %chtype19.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 4
  %141 = ptrtoint ptr %chtype19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %chtype19.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %142)
  %cmp21.i.i.i = icmp eq i8 %140, %142
  br i1 %cmp21.i.i.i, label %if.end.i.i.i, label %land.rhs.i.i.i.for.cond.backedge.i_crit_edge

land.rhs.i.i.i.for.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

if.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  %143 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %124, label %if.end.i.i.i.for.cond.backedge.i_crit_edge [
    i32 1, label %if.end.i.i.i.if.then.i328_crit_edge
    i32 4, label %sw.bb24.i.i.i
    i32 5, label %sw.bb29.i.i.i
    i32 6, label %sw.bb44.i.i.i
    i32 2, label %sw.bb90.i.i.i
    i32 3, label %if.end.i.i.i.if.then.i328_crit_edge382
  ]

if.end.i.i.i.if.then.i328_crit_edge382:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i328

if.end.i.i.i.if.then.i328_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i328

if.end.i.i.i.for.cond.backedge.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

sw.bb24.i.i.i:                                    ; preds = %if.end.i.i.i
  %144 = ptrtoint ptr %u91.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %u91.i.i.i, align 4
  %u25.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 5
  %146 = ptrtoint ptr %u25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %u25.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %147)
  %cmp27.i.i.i = icmp eq i32 %145, %147
  br i1 %cmp27.i.i.i, label %sw.bb24.i.i.i.if.then.i328_crit_edge, label %sw.bb24.i.i.i.for.cond.backedge.i_crit_edge

sw.bb24.i.i.i.for.cond.backedge.i_crit_edge:      ; preds = %sw.bb24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

sw.bb24.i.i.i.if.then.i328_crit_edge:             ; preds = %sw.bb24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i328

sw.bb29.i.i.i:                                    ; preds = %if.end.i.i.i
  %148 = ptrtoint ptr %u91.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %u91.i.i.i, align 4
  %u32.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 5
  %150 = ptrtoint ptr %u32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %u32.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %151)
  %cmp34.i.i.i = icmp eq i32 %149, %151
  br i1 %cmp34.i.i.i, label %land.rhs36.i.i.i, label %sw.bb29.i.i.i.for.cond.backedge.i_crit_edge

sw.bb29.i.i.i.for.cond.backedge.i_crit_edge:      ; preds = %sw.bb29.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.rhs36.i.i.i:                                 ; preds = %sw.bb29.i.i.i
  %volume39.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 5, i32 0, i32 1
  %call.i.i35.i = call i32 @strcmp(ptr noundef %name.i.i.i, ptr noundef %volume39.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %cmp41.i.i.i = icmp eq i32 %call.i.i35.i, 0
  br i1 %cmp41.i.i.i, label %land.rhs36.i.i.i.if.then.i328_crit_edge, label %land.rhs36.i.i.i.for.cond.backedge.i_crit_edge

land.rhs36.i.i.i.for.cond.backedge.i_crit_edge:   ; preds = %land.rhs36.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.rhs36.i.i.i.if.then.i328_crit_edge:          ; preds = %land.rhs36.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i328

sw.bb44.i.i.i:                                    ; preds = %if.end.i.i.i
  %152 = ptrtoint ptr %u91.i.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %u91.i.i.i, align 4
  %u47.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 5
  %154 = ptrtoint ptr %u47.i.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %u47.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %153, i16 %155)
  %cmp50.i.i.i = icmp eq i16 %153, %155
  br i1 %cmp50.i.i.i, label %land.lhs.true52.i.i.i, label %sw.bb44.i.i.i.for.cond.backedge.i_crit_edge

sw.bb44.i.i.i.for.cond.backedge.i_crit_edge:      ; preds = %sw.bb44.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.lhs.true52.i.i.i:                            ; preds = %sw.bb44.i.i.i
  %156 = ptrtoint ptr %fifosize_bufs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %fifosize_bufs.i.i.i, align 2
  %fifosize_bufs56.i.i.i = getelementptr inbounds %struct.anon.6, ptr %u47.i.i.i, i32 0, i32 1
  %158 = ptrtoint ptr %fifosize_bufs56.i.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %fifosize_bufs56.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %157, i16 %159)
  %cmp58.i.i.i = icmp eq i16 %157, %159
  br i1 %cmp58.i.i.i, label %land.lhs.true60.i.i.i, label %land.lhs.true52.i.i.i.for.cond.backedge.i_crit_edge

land.lhs.true52.i.i.i.for.cond.backedge.i_crit_edge: ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %name64.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 5, i32 0, i32 1
  %call66.i.i.i = call i32 @strcmp(ptr noundef %name.i.i.i, ptr noundef %name64.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i.i)
  %cmp67.i.i.i = icmp eq i32 %call66.i.i.i, 0
  br i1 %cmp67.i.i.i, label %land.lhs.true69.i.i.i, label %land.lhs.true60.i.i.i.for.cond.backedge.i_crit_edge

land.lhs.true60.i.i.i.for.cond.backedge.i_crit_edge: ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.lhs.true69.i.i.i:                            ; preds = %land.lhs.true60.i.i.i
  %160 = ptrtoint ptr %paramlen.i.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %paramlen.i.i.i, align 4
  %paramlen73.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 5, i32 1, i32 252
  %162 = ptrtoint ptr %paramlen73.i.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %paramlen73.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %161, i16 %163)
  %cmp75.i.i.i = icmp eq i16 %161, %163
  br i1 %cmp75.i.i.i, label %land.rhs77.i.i.i, label %land.lhs.true69.i.i.i.for.cond.backedge.i_crit_edge

land.lhs.true69.i.i.i.for.cond.backedge.i_crit_edge: ; preds = %land.lhs.true69.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.rhs77.i.i.i:                                 ; preds = %land.lhs.true69.i.i.i
  %conv71.i.i.i = zext i16 %161 to i32
  %params81.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 5, i32 0, i32 1, i32 16
  %bcmp.i.i.i = call i32 @bcmp(ptr %params.i.i.i, ptr %params81.i.i.i, i32 %conv71.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp87.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp87.i.i.i, label %land.rhs77.i.i.i.if.then.i328_crit_edge, label %land.rhs77.i.i.i.for.cond.backedge.i_crit_edge

land.rhs77.i.i.i.for.cond.backedge.i_crit_edge:   ; preds = %land.rhs77.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

land.rhs77.i.i.i.if.then.i328_crit_edge:          ; preds = %land.rhs77.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i328

sw.bb90.i.i.i:                                    ; preds = %if.end.i.i.i
  %164 = ptrtoint ptr %u91.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %u91.i.i.i, align 4
  %u94.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 3, i32 5
  %166 = ptrtoint ptr %u94.i.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %u94.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %165, i8 %167)
  %cmp97.i.i.i = icmp eq i8 %165, %167
  br i1 %cmp97.i.i.i, label %sw.bb90.i.i.i.if.then.i328_crit_edge, label %sw.bb90.i.i.i.for.cond.backedge.i_crit_edge

sw.bb90.i.i.i.for.cond.backedge.i_crit_edge:      ; preds = %sw.bb90.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

sw.bb90.i.i.i.if.then.i328_crit_edge:             ; preds = %sw.bb90.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i328

for.cond.backedge.i:                              ; preds = %sw.bb90.i.i.i.for.cond.backedge.i_crit_edge, %land.rhs77.i.i.i.for.cond.backedge.i_crit_edge, %land.lhs.true69.i.i.i.for.cond.backedge.i_crit_edge, %land.lhs.true60.i.i.i.for.cond.backedge.i_crit_edge, %land.lhs.true52.i.i.i.for.cond.backedge.i_crit_edge, %sw.bb44.i.i.i.for.cond.backedge.i_crit_edge, %land.rhs36.i.i.i.for.cond.backedge.i_crit_edge, %sw.bb29.i.i.i.for.cond.backedge.i_crit_edge, %sw.bb24.i.i.i.for.cond.backedge.i_crit_edge, %if.end.i.i.i.for.cond.backedge.i_crit_edge, %land.rhs.i.i.i.for.cond.backedge.i_crit_edge, %land.lhs.true12.i.i.i.for.cond.backedge.i_crit_edge, %land.lhs.true6.i.i.i.for.cond.backedge.i_crit_edge, %land.lhs.true.i.i.i.for.cond.backedge.i_crit_edge, %if.then4.i.i.for.cond.backedge.i_crit_edge, %for.body.i327.for.cond.backedge.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn48.i, %list.i
  br i1 %cmp.not.i, label %for.cond.backedge.i.cfctrl_remove_req.exit_crit_edge, label %for.cond.backedge.i.for.body.i327_crit_edge

for.cond.backedge.i.for.body.i327_crit_edge:      ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i327

for.cond.backedge.i.cfctrl_remove_req.exit_crit_edge: ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cfctrl_remove_req.exit

if.then.i328:                                     ; preds = %sw.bb90.i.i.i.if.then.i328_crit_edge, %land.rhs77.i.i.i.if.then.i328_crit_edge, %land.rhs36.i.i.i.if.then.i328_crit_edge, %sw.bb24.i.i.i.if.then.i328_crit_edge, %if.end.i.i.i.if.then.i328_crit_edge, %if.end.i.i.i.if.then.i328_crit_edge382
  %cmp14.not.i = icmp eq ptr %p.047.i, %add.ptr.i
  br i1 %cmp14.not.i, label %if.then.i328.if.end.i_crit_edge, label %do.end.i

if.then.i328.if.end.i_crit_edge:                  ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i328.if.end.i_crit_edge
  %rsp_seq_no.i = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 3
  %168 = ptrtoint ptr %p.047.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %p.047.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %rsp_seq_no.i, i32 noundef 4) #11
  %170 = ptrtoint ptr %rsp_seq_no.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile i32 %169, ptr %rsp_seq_no.i, align 4
  %call.i.i36.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn48.in.i) #11
  br i1 %call.i.i36.i, label %if.end.i.i37.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i37.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 5, i32 1
  %171 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %prev.i.i.i, align 4
  %173 = ptrtoint ptr %.pn48.in.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %.pn48.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %prev1.i.i.i.i, align 4
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %174, ptr %172, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i37.i, %if.end.i.list_del.exit.i_crit_edge
  %177 = ptrtoint ptr %.pn48.in.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn48.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.047.i, i32 0, i32 5, i32 1
  %178 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %cfctrl_remove_req.exit

cfctrl_remove_req.exit:                           ; preds = %list_del.exit.i, %for.cond.backedge.i.cfctrl_remove_req.exit_crit_edge, %sw.epilog.cfctrl_remove_req.exit_crit_edge
  %p.1.i = phi ptr [ %p.047.i, %list_del.exit.i ], [ null, %sw.epilog.cfctrl_remove_req.exit_crit_edge ], [ null, %for.cond.backedge.i.cfctrl_remove_req.exit_crit_edge ]
  %179 = and i8 %cmdrsp.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %cmp134.not = icmp eq i8 %179, 0
  br i1 %cmp134.not, label %lor.lhs.false, label %cfctrl_remove_req.exit.do.end141_crit_edge

cfctrl_remove_req.exit.do.end141_crit_edge:       ; preds = %cfctrl_remove_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end141

lor.lhs.false:                                    ; preds = %cfctrl_remove_req.exit
  %call136 = call zeroext i1 @cfpkt_erroneous(ptr noundef %pkt) #11
  br i1 %call136, label %lor.lhs.false.do.end141_crit_edge, label %if.else

lor.lhs.false.do.end141_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end141

do.end141:                                        ; preds = %lor.lhs.false.do.end141_crit_edge, %cfctrl_remove_req.exit.do.end141_crit_edge
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #16
  %reject_rsp = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1, i32 8
  %180 = ptrtoint ptr %reject_rsp to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %reject_rsp, align 4
  %182 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %layer, align 4
  %tobool146.not = icmp eq ptr %p.1.i, null
  br i1 %tobool146.not, label %do.end141.cond.end_crit_edge, label %cond.true

do.end141.cond.end_crit_edge:                     ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #13
  %client_layer = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.1.i, i32 0, i32 4
  %184 = ptrtoint ptr %client_layer to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %client_layer, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end141.cond.end_crit_edge
  %cond = phi ptr [ %185, %cond.true ], [ null, %do.end141.cond.end_crit_edge ]
  call void %181(ptr noundef %183, i8 noundef zeroext 0, ptr noundef %cond) #11
  br label %cleanup.thread

if.else:                                          ; preds = %lor.lhs.false
  %res147 = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1
  %186 = ptrtoint ptr %res147 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %res147, align 4
  %188 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %layer, align 4
  %tobool151.not = icmp eq ptr %p.1.i, null
  br i1 %tobool151.not, label %if.else.cond.end155_crit_edge, label %cond.true152

if.else.cond.end155_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end155

cond.true152:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %client_layer153 = getelementptr inbounds %struct.cfctrl_request_info, ptr %p.1.i, i32 0, i32 4
  %190 = ptrtoint ptr %client_layer153 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %client_layer153, align 4
  br label %cond.end155

cond.end155:                                      ; preds = %cond.true152, %if.else.cond.end155_crit_edge
  %cond156 = phi ptr [ %191, %cond.true152 ], [ null, %if.else.cond.end155_crit_edge ]
  call void %187(ptr noundef %189, i8 noundef zeroext %linkid.0, i32 noundef %and25, i8 noundef zeroext %and30, ptr noundef %cond156) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.end155, %cond.end
  call void @kfree(ptr noundef %p.1.i) #11
  call void @_raw_spin_unlock_bh(ptr noundef %info_list_lock) #11
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %linkparam) #11
  br label %error

cleanup:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %and25) #16
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %linkparam) #11
  br label %error

sw.bb167:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i329) #11
  %192 = ptrtoint ptr %tmp.i329 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 -1, ptr %tmp.i329, align 1, !annotation !77
  %call.i330 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp.i329, i16 noundef zeroext 1) #11
  %193 = ptrtoint ptr %tmp.i329 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %tmp.i329, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i329) #11
  %linkdestroy_rsp = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1, i32 1
  %195 = ptrtoint ptr %linkdestroy_rsp to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %linkdestroy_rsp, align 4
  %197 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %layer, align 4
  call void %196(ptr noundef %198, i8 noundef zeroext %194) #11
  br label %error

do.end176:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #16
  %linkerror_ind = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1, i32 2
  %199 = ptrtoint ptr %linkerror_ind to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %linkerror_ind, align 4
  call void %200() #11
  br label %error

sw.bb180:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %enum_rsp = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1, i32 3
  %201 = ptrtoint ptr %enum_rsp to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %enum_rsp, align 4
  call void %202() #11
  br label %error

sw.bb182:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %sleep_rsp = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1, i32 4
  %203 = ptrtoint ptr %sleep_rsp to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %sleep_rsp, align 4
  call void %204() #11
  br label %error

sw.bb184:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %wake_rsp = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1, i32 5
  %205 = ptrtoint ptr %wake_rsp to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %wake_rsp, align 4
  call void %206() #11
  br label %error

sw.bb186:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %restart_rsp = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1, i32 6
  %207 = ptrtoint ptr %restart_rsp to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %restart_rsp, align 4
  call void %208() #11
  br label %error

sw.bb188:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %radioset_rsp = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1, i32 7
  %209 = ptrtoint ptr %radioset_rsp to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %radioset_rsp, align 4
  call void %210() #11
  br label %error

do.end193:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23) #16
  br label %error

error:                                            ; preds = %do.end193, %sw.bb188, %sw.bb186, %sw.bb184, %sw.bb182, %sw.bb180, %do.end176, %sw.bb167, %cleanup, %cleanup.thread
  %ret.0 = phi i32 [ -1, %do.end193 ], [ -1, %cleanup ], [ 0, %cleanup.thread ], [ 0, %sw.bb188 ], [ 0, %sw.bb186 ], [ 0, %sw.bb184 ], [ 0, %sw.bb182 ], [ 0, %sw.bb180 ], [ 0, %do.end176 ], [ 0, %sw.bb167 ]
  call void @cfpkt_destroy(ptr noundef %pkt) #11
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %rsp) #11
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %param) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfctrl_ctrlcmd(ptr noundef %layr, i32 noundef %ctrl, i32 noundef %phyid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ctrl to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %ctrl, label %entry.sw.epilog_crit_edge [
    i32 6, label %entry.sw.bb_crit_edge
    i32 0, label %entry.sw.bb_crit_edge62
    i32 8, label %sw.bb10
  ]

entry.sw.bb_crit_edge62:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge62
  %info_list_lock = getelementptr inbounds %struct.cfctrl, ptr %layr, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %info_list_lock) #11
  %list = getelementptr inbounds %struct.cfctrl, ptr %layr, i32 0, i32 4
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %2, %list
  br i1 %cmp.i.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %do.body

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfctrl_ctrlcmd.__UNIQUE_ID_ddebug159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfctrl_ctrlcmd, %sw.epilog.sink.split)) #11
          to label %if.then7 [label %sw.epilog.sink.split], !srcloc !78

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfctrl_ctrlcmd.__UNIQUE_ID_ddebug159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35) #11
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  %info_list_lock12 = getelementptr inbounds %struct.cfctrl, ptr %layr, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %info_list_lock12) #11
  %list14 = getelementptr inbounds %struct.cfctrl, ptr %layr, i32 0, i32 4
  %3 = ptrtoint ptr %list14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list14, align 4
  %cmp.not57 = icmp eq ptr %4, %list14
  br i1 %cmp.not57, label %sw.bb10.sw.epilog.sink.split_crit_edge, label %sw.bb10.for.body_crit_edge

sw.bb10.for.body_crit_edge:                       ; preds = %sw.bb10
  br label %for.body

sw.bb10.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb10.for.body_crit_edge
  %.pn.in58 = phi ptr [ %.pn61, %for.inc.for.body_crit_edge ], [ %4, %sw.bb10.for.body_crit_edge ]
  %p.060 = getelementptr i8, ptr %.pn.in58, i32 -304
  %5 = ptrtoint ptr %.pn.in58 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn61 = load ptr, ptr %.pn.in58, align 4
  %phyid26 = getelementptr i8, ptr %.pn.in58, i32 -287
  %6 = ptrtoint ptr %phyid26 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phyid26, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %phyid)
  %cmp27 = icmp eq i32 %conv, %phyid
  br i1 %cmp27, label %if.then29, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then29:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in58) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in58, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in58 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in58, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn.in58 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in58, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in58, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %client_layer = getelementptr i8, ptr %.pn.in58, i32 -4
  %16 = ptrtoint ptr %client_layer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client_layer, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrlcmd, align 4
  tail call void %19(ptr noundef %17, i32 noundef 5, i32 noundef %phyid) #11
  tail call void @kfree(ptr noundef %p.060) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn61, %list14
  br i1 %cmp.not, label %for.inc.sw.epilog.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.sw.epilog.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %for.inc.sw.epilog.sink.split_crit_edge, %sw.bb10.sw.epilog.sink.split_crit_edge, %if.then7, %do.body, %sw.bb.sw.epilog.sink.split_crit_edge
  %info_list_lock12.sink = phi ptr [ %info_list_lock, %do.body ], [ %info_list_lock, %if.then7 ], [ %info_list_lock, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %info_list_lock12, %sw.bb10.sw.epilog.sink.split_crit_edge ], [ %info_list_lock12, %for.inc.sw.epilog.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %info_list_lock12.sink) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfctrl_remove(ptr noundef %layer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info_list_lock = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %info_list_lock) #11
  %list = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 4
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not28 = icmp eq ptr %1, %list
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in29 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn.in29, i32 -304
  %2 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in29, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %p.0) #11
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %info_list_lock) #11
  tail call void @kfree(ptr noundef %layer) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cfctrl_get_respfuncs(ptr noundef readnone %layer) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 1
  ret ptr %res
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfctrl_enum_req(ptr noundef %layer, i8 noundef zeroext %physlinkid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dn2 = getelementptr inbounds %struct.cflayer, ptr %layer, i32 0, i32 1
  %0 = ptrtoint ptr %dn2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfctrl_enum_req.__UNIQUE_ID_ddebug156, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfctrl_enum_req, %cleanup)) #11
          to label %if.then8 [label %cleanup], !srcloc !78

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfctrl_enum_req.__UNIQUE_ID_ddebug156, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call ptr @cfpkt_create(i16 noundef zeroext 20) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call ptr @cfpkt_info(ptr noundef nonnull %call10) #11
  %hdr_len.i = getelementptr inbounds %struct.caif_payload_info, ptr %call17, i32 0, i32 1
  %2 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %hdr_len.i, align 4
  %id.i = getelementptr inbounds %struct.cflayer, ptr %layer, i32 0, i32 7
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %conv.i = trunc i32 %4 to i16
  %channel_id.i = getelementptr inbounds %struct.caif_payload_info, ptr %call17, i32 0, i32 2
  %5 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %channel_id.i, align 2
  %dev_info.i = getelementptr inbounds %struct.cfsrvl, ptr %layer, i32 0, i32 6
  %6 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev_info.i, ptr %call17, align 4
  %conv = zext i8 %physlinkid to i32
  %call18 = tail call ptr @cfpkt_info(ptr noundef nonnull %call10) #11
  %7 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call18, align 4
  %id = getelementptr inbounds %struct.dev_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %id, align 4
  %id22 = getelementptr inbounds %struct.cfsrvl, ptr %layer, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %id22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %id22, align 4
  %call23 = tail call i32 @cfpkt_addbdy(ptr noundef nonnull %call10, i8 noundef zeroext 3) #11
  %call24 = tail call i32 @cfpkt_addbdy(ptr noundef nonnull %call10, i8 noundef zeroext %physlinkid) #11
  tail call void @cfpkt_set_prio(ptr noundef nonnull %call10, i32 noundef 7) #11
  %transmit = getelementptr inbounds %struct.cflayer, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transmit, align 4
  %call25 = tail call i32 %12(ptr noundef nonnull %1, ptr noundef nonnull %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end9.cleanup_crit_edge, %if.then8, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_create(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_addbdy(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_set_prio(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfctrl_linkup_request(ptr noundef %layer, ptr noundef %param, ptr noundef %user_layer) local_unnamed_addr #0 align 64 {
entry:
  %tmp32 = alloca i32, align 4
  %tmp16 = alloca i16, align 2
  %tmp8 = alloca i8, align 1
  %utility_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp32) #11
  %0 = ptrtoint ptr %tmp32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp32, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp16) #11
  %1 = ptrtoint ptr %tmp16 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %tmp16, align 2, !annotation !77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8) #11
  %2 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp8, align 1, !annotation !77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %utility_name) #11
  %dn2 = getelementptr inbounds %struct.cflayer, ptr %layer, i32 0, i32 1
  %3 = call ptr @memset(ptr %utility_name, i32 255, i32 16)
  %4 = ptrtoint ptr %dn2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dn2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfctrl_linkup_request.__UNIQUE_ID_ddebug157, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfctrl_linkup_request, %cleanup128)) #11
          to label %if.then8 [label %cleanup128], !srcloc !78

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfctrl_linkup_request.__UNIQUE_ID_ddebug157, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #11
  br label %cleanup128

if.end9:                                          ; preds = %entry
  %info_list_lock.i = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %info_list_lock.i) #11
  %list.i = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 4
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.i, align 4
  %cmp.not32.i = icmp eq ptr %7, %list.i
  br i1 %cmp.not32.i, label %cfctrl_cancel_req.exit.thread, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

cfctrl_cancel_req.exit.thread:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %info_list_lock.i) #11
  br label %if.end42

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %.pn.in34.i = phi ptr [ %.pn37.i, %for.inc.i.for.body.i_crit_edge ], [ %7, %if.end9.for.body.i_crit_edge ]
  %found.033.i = phi i32 [ %found.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %p.036.i = getelementptr i8, ptr %.pn.in34.i, i32 -304
  %8 = ptrtoint ptr %.pn.in34.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn37.i = load ptr, ptr %.pn.in34.i, align 4
  %client_layer.i = getelementptr i8, ptr %.pn.in34.i, i32 -4
  %9 = ptrtoint ptr %client_layer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client_layer.i, align 4
  %cmp12.i = icmp eq ptr %10, %user_layer
  br i1 %cmp12.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in34.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in34.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in34.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %.pn.in34.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in34.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %p.036.i) #11
  %inc.i = add i32 %found.033.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body.i.for.inc.i_crit_edge
  %found.1.i = phi i32 [ %inc.i, %list_del.exit.i ], [ %found.033.i, %for.body.i.for.inc.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %.pn37.i, %list.i
  br i1 %cmp.not.i, label %cfctrl_cancel_req.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cfctrl_cancel_req.exit:                           ; preds = %for.inc.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %info_list_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1.i)
  %cmp = icmp sgt i32 %found.1.i, 0
  br i1 %cmp, label %do.end14, label %cfctrl_cancel_req.exit.if.end42_crit_edge

cfctrl_cancel_req.exit.if.end42_crit_edge:        ; preds = %cfctrl_cancel_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.end14:                                         ; preds = %cfctrl_cancel_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 221, i32 noundef 9, ptr noundef null) #11
  br label %cleanup128

if.end42:                                         ; preds = %cfctrl_cancel_req.exit.if.end42_crit_edge, %cfctrl_cancel_req.exit.thread
  %call43 = tail call ptr @cfpkt_create(i16 noundef zeroext 20) #11
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.cleanup128_crit_edge, label %if.end46

if.end42.cleanup128_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup128

if.end46:                                         ; preds = %if.end42
  %call47 = tail call i32 @cfpkt_addbdy(ptr noundef nonnull %call43, i8 noundef zeroext 0) #11
  %chtype = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 4
  %19 = ptrtoint ptr %chtype to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chtype, align 1
  %conv = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %21 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %param, align 4
  %or = or i32 %shl, %22
  %conv48 = trunc i32 %or to i8
  %call49 = tail call i32 @cfpkt_addbdy(ptr noundef nonnull %call43, i8 noundef zeroext %conv48) #11
  %priority = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 1
  %23 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %priority, align 4
  %shl51 = shl i8 %24, 3
  %phyid = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 2
  %25 = ptrtoint ptr %phyid to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %phyid, align 1
  %or53 = or i8 %shl51, %26
  %call55 = tail call i32 @cfpkt_addbdy(ptr noundef nonnull %call43, i8 noundef zeroext %or53) #11
  %endpoint = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 3
  %27 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %endpoint, align 2
  %29 = and i8 %28, 3
  %call58 = tail call i32 @cfpkt_addbdy(ptr noundef nonnull %call43, i8 noundef zeroext %29) #11
  %30 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %param, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %31, label %do.end98 [
    i32 1, label %if.end46.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 3, label %if.end46.sw.epilog_crit_edge221
    i32 4, label %sw.bb61
    i32 5, label %sw.bb65
    i32 6, label %sw.bb76
  ]

if.end46.sw.epilog_crit_edge221:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end46.sw.epilog_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %u = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5
  %33 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %u, align 4
  %call60 = tail call i32 @cfpkt_addbdy(ptr noundef nonnull %call43, i8 noundef zeroext %34) #11
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %u62 = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5
  %35 = ptrtoint ptr %u62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %u62, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %tmp32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp32, align 4
  %call64 = call i32 @cfpkt_add_body(ptr noundef nonnull %call43, ptr noundef nonnull %tmp32, i16 noundef zeroext 4) #11
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %u66 = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5
  %39 = ptrtoint ptr %u66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %u66, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %tmp32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tmp32, align 4
  %call68 = call i32 @cfpkt_add_body(ptr noundef nonnull %call43, ptr noundef nonnull %tmp32, i16 noundef zeroext 4) #11
  %volume = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5, i32 0, i32 1
  %call73 = call i32 @strlen(ptr noundef %volume) #17
  %43 = trunc i32 %call73 to i16
  %conv74 = add i16 %43, 1
  %call75 = call i32 @cfpkt_add_body(ptr noundef nonnull %call43, ptr noundef %volume, i16 noundef zeroext %conv74) #11
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %u77 = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5
  %44 = ptrtoint ptr %u77 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %u77, align 4
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %47 = ptrtoint ptr %tmp16 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %tmp16, align 2
  %call78 = call i32 @cfpkt_add_body(ptr noundef nonnull %call43, ptr noundef nonnull %tmp16, i16 noundef zeroext 2) #11
  %fifosize_bufs = getelementptr inbounds %struct.anon.6, ptr %u77, i32 0, i32 1
  %48 = ptrtoint ptr %fifosize_bufs to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %fifosize_bufs, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %51 = ptrtoint ptr %tmp16 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %tmp16, align 2
  %call80 = call i32 @cfpkt_add_body(ptr noundef nonnull %call43, ptr noundef nonnull %tmp16, i16 noundef zeroext 2) #11
  %52 = call ptr @memset(ptr %utility_name, i32 0, i32 16)
  %name = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5, i32 0, i32 1
  %call85 = call i32 @strlcpy(ptr noundef nonnull %utility_name, ptr noundef %name, i32 noundef 16) #11
  %call87 = call i32 @cfpkt_add_body(ptr noundef nonnull %call43, ptr noundef nonnull %utility_name, i16 noundef zeroext 16) #11
  %paramlen = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5, i32 1, i32 252
  %53 = ptrtoint ptr %paramlen to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %paramlen, align 4
  %conv89 = trunc i16 %54 to i8
  %55 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv89, ptr %tmp8, align 1
  %call90 = call i32 @cfpkt_add_body(ptr noundef nonnull %call43, ptr noundef nonnull %tmp8, i16 noundef zeroext 1) #11
  %params = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5, i32 0, i32 1, i32 16
  %56 = ptrtoint ptr %paramlen to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %paramlen, align 4
  %call95 = call i32 @cfpkt_add_body(ptr noundef nonnull %call43, ptr noundef %params, i16 noundef zeroext %57) #11
  br label %sw.epilog

do.end98:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %31) #16
  br label %cleanup128

sw.epilog:                                        ; preds = %sw.bb76, %sw.bb65, %sw.bb61, %sw.bb, %if.end46.sw.epilog_crit_edge, %if.end46.sw.epilog_crit_edge221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 312) #14
  %tobool103.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool103.not, label %sw.epilog.cleanup128_crit_edge, label %if.end105

sw.epilog.cleanup128_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup128

if.end105:                                        ; preds = %sw.epilog
  %client_layer = getelementptr inbounds %struct.cfctrl_request_info, ptr %call7.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %client_layer to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %user_layer, ptr %client_layer, align 4
  %cmd = getelementptr inbounds %struct.cfctrl_request_info, ptr %call7.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %cmd, align 4
  %param106 = getelementptr inbounds %struct.cfctrl_request_info, ptr %call7.i.i, i32 0, i32 3
  %61 = call ptr @memcpy(ptr %param106, ptr %param, i32 288)
  call void @_raw_spin_lock_bh(ptr noundef %info_list_lock.i) #11
  %req_seq_no.i = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 2
  %call.i.i.i188 = call zeroext i1 @__kasan_check_write(ptr noundef %req_seq_no.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %req_seq_no.i, i32 1, i32 3, i32 1) #11
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req_seq_no.i, ptr %req_seq_no.i, i32 1, ptr elementtype(i32) %req_seq_no.i) #11, !srcloc !79
  %call.i.i9.i = call zeroext i1 @__kasan_check_read(ptr noundef %req_seq_no.i, i32 noundef 4) #11
  %63 = ptrtoint ptr %req_seq_no.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %req_seq_no.i, align 4
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %call7.i.i, align 8
  %list.i189 = getelementptr inbounds %struct.cfctrl_request_info, ptr %call7.i.i, i32 0, i32 5
  %prev.i.i190 = getelementptr inbounds %struct.cfctrl, ptr %layer, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %prev.i.i190 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i190, align 4
  %call.i.i10.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i189, ptr noundef %67, ptr noundef %list.i) #11
  br i1 %call.i.i10.i, label %if.end.i.i.i191, label %if.end105.cfctrl_insert_req.exit_crit_edge

if.end105.cfctrl_insert_req.exit_crit_edge:       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cfctrl_insert_req.exit

if.end.i.i.i191:                                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %prev.i.i190 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list.i189, ptr %prev.i.i190, align 4
  %69 = ptrtoint ptr %list.i189 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %list.i, ptr %list.i189, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.cfctrl_request_info, ptr %call7.i.i, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %list.i189, ptr %67, align 4
  br label %cfctrl_insert_req.exit

cfctrl_insert_req.exit:                           ; preds = %if.end.i.i.i191, %if.end105.cfctrl_insert_req.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %info_list_lock.i) #11
  %call107 = call ptr @cfpkt_info(ptr noundef nonnull %call43) #11
  %hdr_len.i = getelementptr inbounds %struct.caif_payload_info, ptr %call107, i32 0, i32 1
  %72 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %hdr_len.i, align 4
  %id.i = getelementptr inbounds %struct.cflayer, ptr %layer, i32 0, i32 7
  %73 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id.i, align 4
  %conv.i = trunc i32 %74 to i16
  %channel_id.i = getelementptr inbounds %struct.caif_payload_info, ptr %call107, i32 0, i32 2
  %75 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i, ptr %channel_id.i, align 2
  %dev_info.i = getelementptr inbounds %struct.cfsrvl, ptr %layer, i32 0, i32 6
  %76 = ptrtoint ptr %call107 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dev_info.i, ptr %call107, align 4
  %77 = ptrtoint ptr %phyid to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %phyid, align 1
  %conv109 = zext i8 %78 to i32
  %call110 = call ptr @cfpkt_info(ptr noundef nonnull %call43) #11
  %79 = ptrtoint ptr %call110 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call110, align 4
  %id = getelementptr inbounds %struct.dev_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv109, ptr %id, align 4
  call void @cfpkt_set_prio(ptr noundef nonnull %call43, i32 noundef 7) #11
  %transmit = getelementptr inbounds %struct.cflayer, ptr %5, i32 0, i32 4
  %82 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %transmit, align 4
  %call111 = call i32 %83(ptr noundef nonnull %5, ptr noundef nonnull %call43) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then114, label %cfctrl_insert_req.exit.cleanup128_crit_edge

cfctrl_insert_req.exit.cleanup128_crit_edge:      ; preds = %cfctrl_insert_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup128

if.then114:                                       ; preds = %cfctrl_insert_req.exit
  call void @_raw_spin_lock_bh(ptr noundef %info_list_lock.i) #11
  %84 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %list.i, align 4
  %cmp.not32.i194 = icmp eq ptr %85, %list.i
  br i1 %cmp.not32.i194, label %cfctrl_cancel_req.exit214.thread, label %if.then114.for.body.i201_crit_edge

if.then114.for.body.i201_crit_edge:               ; preds = %if.then114
  br label %for.body.i201

cfctrl_cancel_req.exit214.thread:                 ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %info_list_lock.i) #11
  br label %do.end123

for.body.i201:                                    ; preds = %for.inc.i212.for.body.i201_crit_edge, %if.then114.for.body.i201_crit_edge
  %.pn.in34.i195 = phi ptr [ %.pn37.i198, %for.inc.i212.for.body.i201_crit_edge ], [ %85, %if.then114.for.body.i201_crit_edge ]
  %found.033.i196 = phi i32 [ %found.1.i210, %for.inc.i212.for.body.i201_crit_edge ], [ 0, %if.then114.for.body.i201_crit_edge ]
  %p.036.i197 = getelementptr i8, ptr %.pn.in34.i195, i32 -304
  %86 = ptrtoint ptr %.pn.in34.i195 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn37.i198 = load ptr, ptr %.pn.in34.i195, align 4
  %client_layer.i199 = getelementptr i8, ptr %.pn.in34.i195, i32 -4
  %87 = ptrtoint ptr %client_layer.i199 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %client_layer.i199, align 4
  %cmp12.i200 = icmp eq ptr %88, %user_layer
  br i1 %cmp12.i200, label %if.then.i203, label %for.body.i201.for.inc.i212_crit_edge

for.body.i201.for.inc.i212_crit_edge:             ; preds = %for.body.i201
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i212

if.then.i203:                                     ; preds = %for.body.i201
  %call.i.i.i202 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in34.i195) #11
  br i1 %call.i.i.i202, label %if.end.i.i.i206, label %if.then.i203.list_del.exit.i209_crit_edge

if.then.i203.list_del.exit.i209_crit_edge:        ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i209

if.end.i.i.i206:                                  ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i204 = getelementptr inbounds %struct.list_head, ptr %.pn.in34.i195, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i204, align 4
  %91 = ptrtoint ptr %.pn.in34.i195 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %.pn.in34.i195, align 4
  %prev1.i.i.i.i205 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i205 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i205, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del.exit.i209

list_del.exit.i209:                               ; preds = %if.end.i.i.i206, %if.then.i203.list_del.exit.i209_crit_edge
  %95 = ptrtoint ptr %.pn.in34.i195 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in34.i195, align 4
  %prev.i.i207 = getelementptr inbounds %struct.list_head, ptr %.pn.in34.i195, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i207 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i207, align 4
  call void @kfree(ptr noundef %p.036.i197) #11
  %inc.i208 = add i32 %found.033.i196, 1
  br label %for.inc.i212

for.inc.i212:                                     ; preds = %list_del.exit.i209, %for.body.i201.for.inc.i212_crit_edge
  %found.1.i210 = phi i32 [ %inc.i208, %list_del.exit.i209 ], [ %found.033.i196, %for.body.i201.for.inc.i212_crit_edge ]
  %cmp.not.i211 = icmp eq ptr %.pn37.i198, %list.i
  br i1 %cmp.not.i211, label %cfctrl_cancel_req.exit214, label %for.inc.i212.for.body.i201_crit_edge

for.inc.i212.for.body.i201_crit_edge:             ; preds = %for.inc.i212
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i201

cfctrl_cancel_req.exit214:                        ; preds = %for.inc.i212
  call void @_raw_spin_unlock_bh(ptr noundef %info_list_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %found.1.i210)
  %cmp118.not = icmp eq i32 %found.1.i210, 1
  br i1 %cmp118.not, label %cfctrl_cancel_req.exit214.cleanup128_crit_edge, label %cfctrl_cancel_req.exit214.do.end123_crit_edge

cfctrl_cancel_req.exit214.do.end123_crit_edge:    ; preds = %cfctrl_cancel_req.exit214
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

cfctrl_cancel_req.exit214.cleanup128_crit_edge:   ; preds = %cfctrl_cancel_req.exit214
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup128

do.end123:                                        ; preds = %cfctrl_cancel_req.exit214.do.end123_crit_edge, %cfctrl_cancel_req.exit214.thread
  %found.0.lcssa.i213220 = phi i32 [ 0, %cfctrl_cancel_req.exit214.thread ], [ %found.1.i210, %cfctrl_cancel_req.exit214.do.end123_crit_edge ]
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, i32 noundef %found.0.lcssa.i213220) #16
  br label %cleanup128

cleanup128:                                       ; preds = %do.end123, %cfctrl_cancel_req.exit214.cleanup128_crit_edge, %cfctrl_insert_req.exit.cleanup128_crit_edge, %sw.epilog.cleanup128_crit_edge, %do.end98, %if.end42.cleanup128_crit_edge, %do.end14, %if.then8, %do.body
  %retval.1 = phi i32 [ -114, %do.end14 ], [ -22, %do.end98 ], [ -19, %if.then8 ], [ -12, %if.end42.cleanup128_crit_edge ], [ -12, %sw.epilog.cleanup128_crit_edge ], [ -19, %do.end123 ], [ 0, %cfctrl_insert_req.exit.cleanup128_crit_edge ], [ 0, %cfctrl_cancel_req.exit214.cleanup128_crit_edge ], [ -19, %do.body ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %utility_name) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfctrl_cancel_req(ptr noundef %layr, ptr noundef readnone %adap_layer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info_list_lock = getelementptr inbounds %struct.cfctrl, ptr %layr, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %info_list_lock) #11
  %list = getelementptr inbounds %struct.cfctrl, ptr %layr, i32 0, i32 4
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not32 = icmp eq ptr %1, %list
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in34 = phi ptr [ %.pn37, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %found.033 = phi i32 [ %found.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.036 = getelementptr i8, ptr %.pn.in34, i32 -304
  %2 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37 = load ptr, ptr %.pn.in34, align 4
  %client_layer = getelementptr i8, ptr %.pn.in34, i32 -4
  %3 = ptrtoint ptr %client_layer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client_layer, align 4
  %cmp12 = icmp eq ptr %4, %adap_layer
  br i1 %cmp12, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in34) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in34, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in34, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %p.036) #11
  %inc = add i32 %found.033, 1
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %found.1 = phi i32 [ %inc, %list_del.exit ], [ %found.033, %for.body.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn37, %list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %found.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %found.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %info_list_lock) #11
  ret i32 %found.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_body(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfctrl_linkdown_req(ptr noundef %layer, i8 noundef zeroext %channelid, ptr nocapture noundef readnone %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dn2 = getelementptr inbounds %struct.cflayer, ptr %layer, i32 0, i32 1
  %0 = ptrtoint ptr %dn2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfctrl_linkdown_req.__UNIQUE_ID_ddebug158, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfctrl_linkdown_req, %cleanup)) #11
          to label %if.then8 [label %cleanup], !srcloc !78

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfctrl_linkdown_req.__UNIQUE_ID_ddebug158, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call ptr @cfpkt_create(i16 noundef zeroext 20) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 @cfpkt_addbdy(ptr noundef nonnull %call10, i8 noundef zeroext 1) #11
  %call15 = tail call i32 @cfpkt_addbdy(ptr noundef nonnull %call10, i8 noundef zeroext %channelid) #11
  %call16 = tail call ptr @cfpkt_info(ptr noundef nonnull %call10) #11
  %hdr_len.i = getelementptr inbounds %struct.caif_payload_info, ptr %call16, i32 0, i32 1
  %2 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %hdr_len.i, align 4
  %id.i = getelementptr inbounds %struct.cflayer, ptr %layer, i32 0, i32 7
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %conv.i = trunc i32 %4 to i16
  %channel_id.i = getelementptr inbounds %struct.caif_payload_info, ptr %call16, i32 0, i32 2
  %5 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %channel_id.i, align 2
  %dev_info.i = getelementptr inbounds %struct.cfsrvl, ptr %layer, i32 0, i32 6
  %6 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev_info.i, ptr %call16, align 4
  tail call void @cfpkt_set_prio(ptr noundef nonnull %call10, i32 noundef 7) #11
  %transmit = getelementptr inbounds %struct.cflayer, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transmit, align 4
  %call17 = tail call i32 %8(ptr noundef nonnull %1, ptr noundef nonnull %call10) #11
  %idxprom = zext i8 %channelid to i32
  %arrayidx = getelementptr %struct.cfctrl, ptr %layer, i32 0, i32 7, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ %call17, %if.end13 ], [ -19, %if.then8 ], [ -12, %if.end9.cleanup_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfpkt_more(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_extr_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfpkt_erroneous(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_trail(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_peek_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/caif/cfctrl.c", i32 49, i32 33}
!2 = !{ptr @cfctrl_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/caif/cfctrl.c", i32 52, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cfctrl_create.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../net/caif/cfctrl.c", i32 55, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/caif/cfctrl.c", i32 183, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cfctrl_enum_req.__UNIQUE_ID_ddebug156, !9, !"__UNIQUE_ID_ddebug156", i1 false, i1 false}
!14 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/caif/cfctrl.c", i32 214, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cfctrl_linkup_request.__UNIQUE_ID_ddebug157, !16, !"__UNIQUE_ID_ddebug157", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/caif/cfctrl.c", i32 220, i32 3}
!22 = !{ptr @cfctrl_linkup_request._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cfctrl_linkup_request._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/caif/cfctrl.c", i32 270, i32 3}
!26 = !{ptr @cfctrl_linkup_request._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cfctrl_linkup_request._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/caif/cfctrl.c", i32 297, i32 4}
!30 = !{ptr @cfctrl_linkup_request._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cfctrl_linkup_request._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/caif/cfctrl.c", i32 313, i32 3}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cfctrl_linkdown_req.__UNIQUE_ID_ddebug158, !33, !"__UNIQUE_ID_ddebug158", i1 false, i1 false}
!36 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/caif/cfctrl.c", i32 487, i32 5}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cfctrl_recv._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @cfctrl_recv._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/caif/cfctrl.c", i32 499, i32 5}
!44 = !{ptr @cfctrl_recv._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cfctrl_recv._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/caif/cfctrl.c", i32 523, i32 3}
!48 = !{ptr @cfctrl_recv._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cfctrl_recv._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/caif/cfctrl.c", i32 542, i32 3}
!52 = !{ptr @cfctrl_recv._entry.30, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cfctrl_recv._entry_ptr.32, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @handle_loop.last_linkid, !55, !"last_linkid", i1 false, i1 false}
!55 = !{!"../net/caif/cfctrl.c", i32 588, i32 13}
!56 = distinct !{null, !57, !"dec", i1 false, i1 false}
!57 = !{!"../net/caif/cfctrl.c", i32 589, i32 13}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/caif/cfctrl.c", i32 150, i32 5}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cfctrl_remove_req._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cfctrl_remove_req._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/caif/cfctrl.c", i32 560, i32 4}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cfctrl_ctrlcmd.__UNIQUE_ID_ddebug159, !64, !"__UNIQUE_ID_ddebug159", i1 false, i1 false}
!67 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148316056, i64 2148316061, i64 2148316074, i64 2148316118, i64 2148316152, i64 2148316173}
!79 = !{i64 2148491458, i64 2148491484, i64 2148491513, i64 2148491547, i64 2148491578, i64 2148491601}
