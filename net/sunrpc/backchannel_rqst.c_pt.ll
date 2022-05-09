; ModuleID = '/llk/IR_all_yes/net/sunrpc/backchannel_rqst.c_pt.bc'
source_filename = "../net/sunrpc/backchannel_rqst.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+xprt_setup_backchannel\22, \22a\22\09"
module asm "\09.weak\09__crc_xprt_setup_backchannel\09\09\09\09"
module asm "\09.long\09__crc_xprt_setup_backchannel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_setup_backchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_setup_backchannel\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_setup_backchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xprt_destroy_backchannel\22, \22a\22\09"
module asm "\09.weak\09__crc_xprt_destroy_backchannel\09\09\09\09"
module asm "\09.long\09__crc_xprt_destroy_backchannel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_destroy_backchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_destroy_backchannel\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_destroy_backchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.132, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.128 }
%union.anon.128 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.132 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.127, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.127 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@__kstrtab_xprt_setup_backchannel = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_setup_backchannel = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_setup_backchannel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_setup_backchannel to i32), ptr @__kstrtab_xprt_setup_backchannel, ptr @__kstrtabns_xprt_setup_backchannel }, section "___ksymtab_gpl+xprt_setup_backchannel", align 4
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@xprt_setup_bc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RPC:       setup backchannel transport\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xprt_setup_bc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/sunrpc/backchannel_rqst.c\00", [34 x i8] zeroinitializer }, align 32
@xprt_setup_bc._entry_ptr = internal global ptr @xprt_setup_bc._entry, section ".printk_index", align 4
@xprt_setup_bc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to create bc rpc_rqst\0A\00", [32 x i8] zeroinitializer }, align 32
@xprt_setup_bc._entry_ptr.5 = internal global ptr @xprt_setup_bc._entry.3, section ".printk_index", align 4
@xprt_setup_bc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RPC:       adding req= %p\0A\00", [37 x i8] zeroinitializer }, align 32
@xprt_setup_bc._entry_ptr.8 = internal global ptr @xprt_setup_bc._entry.6, section ".printk_index", align 4
@xprt_setup_bc._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RPC:       setup backchannel transport done\0A\00", [51 x i8] zeroinitializer }, align 32
@xprt_setup_bc._entry_ptr.11 = internal global ptr @xprt_setup_bc._entry.9, section ".printk_index", align 4
@xprt_setup_bc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RPC:       setup backchannel transport failed\0A\00", [49 x i8] zeroinitializer }, align 32
@xprt_setup_bc._entry_ptr.14 = internal global ptr @xprt_setup_bc._entry.12, section ".printk_index", align 4
@__kstrtab_xprt_destroy_backchannel = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_destroy_backchannel = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_destroy_backchannel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_destroy_backchannel to i32), ptr @__kstrtab_xprt_destroy_backchannel, ptr @__kstrtabns_xprt_destroy_backchannel }, section "___ksymtab_gpl+xprt_destroy_backchannel", align 4
@xprt_destroy_bc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RPC:        destroy backchannel transport\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xprt_destroy_bc\00", [16 x i8] zeroinitializer }, align 32
@xprt_destroy_bc._entry_ptr = internal global ptr @xprt_destroy_bc._entry, section ".printk_index", align 4
@xprt_destroy_bc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RPC:        req=%p\0A\00", [44 x i8] zeroinitializer }, align 32
@xprt_destroy_bc._entry_ptr.19 = internal global ptr @xprt_destroy_bc._entry.17, section ".printk_index", align 4
@xprt_destroy_bc._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RPC:        backchannel list empty= %s\0A\00", [56 x i8] zeroinitializer }, align 32
@xprt_destroy_bc._entry_ptr.22 = internal global ptr @xprt_destroy_bc._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@xprt_free_bc_rqst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RPC:       free backchannel req=%p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xprt_free_bc_rqst\00", [46 x i8] zeroinitializer }, align 32
@xprt_free_bc_rqst._entry_ptr = internal global ptr @xprt_free_bc_rqst._entry, section ".printk_index", align 4
@xprt_free_bc_rqst._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RPC:       Last session removed req=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@xprt_free_bc_rqst._entry_ptr.29 = internal global ptr @xprt_free_bc_rqst._entry.27, section ".printk_index", align 4
@xprt_complete_bc_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RPC:       add callback request to list\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xprt_complete_bc_request\00", [39 x i8] zeroinitializer }, align 32
@xprt_complete_bc_request._entry_ptr = internal global ptr @xprt_complete_bc_request._entry, section ".printk_index", align 4
@xprt_alloc_bc_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Failed to create bc receive xbuf\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xprt_alloc_bc_req\00", [46 x i8] zeroinitializer }, align 32
@xprt_alloc_bc_req._entry_ptr = internal global ptr @xprt_alloc_bc_req._entry, section ".printk_index", align 4
@xprt_alloc_bc_req._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to create bc snd xbuf\0A\00", [32 x i8] zeroinitializer }, align 32
@xprt_alloc_bc_req._entry_ptr.36 = internal global ptr @xprt_alloc_bc_req._entry.34, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xprt_free_allocation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RPC:        free allocations for req= %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xprt_free_allocation\00", [43 x i8] zeroinitializer }, align 32
@xprt_free_allocation._entry_ptr = internal global ptr @xprt_free_allocation._entry, section ".printk_index", align 4
@xprt_free_allocation.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xprt_get_bc_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RPC:       allocate a backchannel request\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xprt_get_bc_request\00", [44 x i8] zeroinitializer }, align 32
@xprt_get_bc_request._entry_ptr = internal global ptr @xprt_get_bc_request._entry, section ".printk_index", align 4
@xprt_get_bc_request._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RPC:       backchannel req=%p\0A\00", [33 x i8] zeroinitializer }, align 32
@xprt_get_bc_request._entry_ptr.44 = internal global ptr @xprt_get_bc_request._entry.42, section ".printk_index", align 4
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 141, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 159, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 164, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 178, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 193, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 217, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 225, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 236, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 282, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 308, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 370, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 93, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 100, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 58, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 245, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [33 x i8] c"../net/sunrpc/backchannel_rqst.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 262, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__ksymtab_xprt_destroy_backchannel, ptr @__ksymtab_xprt_setup_backchannel, ptr @xprt_alloc_bc_req._entry, ptr @xprt_alloc_bc_req._entry.34, ptr @xprt_alloc_bc_req._entry_ptr, ptr @xprt_alloc_bc_req._entry_ptr.36, ptr @xprt_complete_bc_request._entry, ptr @xprt_complete_bc_request._entry_ptr, ptr @xprt_destroy_bc._entry, ptr @xprt_destroy_bc._entry.17, ptr @xprt_destroy_bc._entry.20, ptr @xprt_destroy_bc._entry_ptr, ptr @xprt_destroy_bc._entry_ptr.19, ptr @xprt_destroy_bc._entry_ptr.22, ptr @xprt_free_allocation._entry, ptr @xprt_free_allocation._entry_ptr, ptr @xprt_free_bc_rqst._entry, ptr @xprt_free_bc_rqst._entry.27, ptr @xprt_free_bc_rqst._entry_ptr, ptr @xprt_free_bc_rqst._entry_ptr.29, ptr @xprt_get_bc_request._entry, ptr @xprt_get_bc_request._entry.42, ptr @xprt_get_bc_request._entry_ptr, ptr @xprt_get_bc_request._entry_ptr.44, ptr @xprt_setup_bc._entry, ptr @xprt_setup_bc._entry.12, ptr @xprt_setup_bc._entry.3, ptr @xprt_setup_bc._entry.6, ptr @xprt_setup_bc._entry.9, ptr @xprt_setup_bc._entry_ptr, ptr @xprt_setup_bc._entry_ptr.11, ptr @xprt_setup_bc._entry_ptr.14, ptr @xprt_setup_bc._entry_ptr.5, ptr @xprt_setup_bc._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_setup_bc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_setup_bc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_setup_bc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_setup_bc._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_setup_bc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_destroy_bc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_destroy_bc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_destroy_bc._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_free_bc_rqst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_free_bc_rqst._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_complete_bc_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_alloc_bc_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_alloc_bc_req._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_free_allocation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_get_bc_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_get_bc_request._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xprt_bc_max_slots(ptr nocapture noundef readnone %xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 64
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xprt_setup_backchannel(ptr noundef %xprt, i32 noundef %min_reqs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %bc_setup = getelementptr inbounds %struct.rpc_xprt_ops, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %bc_setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_setup, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %3(ptr noundef %xprt, i32 noundef %min_reqs) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xprt_setup_bc(ptr noundef %xprt, i32 noundef %min_reqs) local_unnamed_addr #1 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %1 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !92

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %2 = tail call i32 @llvm.umin.i32(i32 %min_reqs, i32 64)
  %3 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %tmp_list, ptr %tmp_list, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tmp_list, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp8102.not = icmp eq i32 %2, 0
  br i1 %cmp8102.not, label %do.end5.for.end_crit_edge, label %do.end5.for.body_crit_edge

do.end5.for.body_crit_edge:                       ; preds = %do.end5
  br label %for.body

do.end5.for.end_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %do.end5.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %list_add.exit.for.body_crit_edge ], [ 0, %do.end5.for.body_crit_edge ]
  %call9 = call fastcc ptr @xprt_alloc_bc_req(ptr noundef %xprt)
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %do.end14, label %do.body18

do.end14:                                         ; preds = %for.body
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  %5 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %tmp_list, align 4
  %cmp.i.not104 = icmp eq ptr %6, %tmp_list
  br i1 %cmp.i.not104, label %do.end14.do.body62_crit_edge, label %do.end14.while.body_crit_edge

do.end14.while.body_crit_edge:                    ; preds = %do.end14
  br label %while.body

do.end14.do.body62_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.body18:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %7 = load i32, ptr @rpc_debug, align 4
  %and19 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.end35_crit_edge, label %do.end30, !prof !92

do.body18.do.end35_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end30:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %call9) #11
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %do.body18.do.end35_crit_edge
  %rq_bc_pa_list = getelementptr inbounds %struct.rpc_rqst, ptr %call9, i32 0, i32 33
  %8 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tmp_list, align 4
  %call.i.i97 = call zeroext i1 @__list_add_valid(ptr noundef %rq_bc_pa_list, ptr noundef nonnull %tmp_list, ptr noundef %9) #8
  br i1 %call.i.i97, label %if.end.i.i, label %do.end35.list_add.exit_crit_edge

do.end35.list_add.exit_crit_edge:                 ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rq_bc_pa_list, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %rq_bc_pa_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %rq_bc_pa_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call9, i32 0, i32 33, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tmp_list, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %rq_bc_pa_list, ptr %tmp_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end35.list_add.exit_crit_edge
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %list_add.exit.for.end_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %do.end5.for.end_crit_edge
  %bc_pa_lock = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 45
  call void @_raw_spin_lock(ptr noundef %bc_pa_lock) #8
  %14 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %tmp_list, align 4
  %cmp.i.not.i = icmp eq ptr %15, %tmp_list
  br i1 %cmp.i.not.i, label %for.end.list_splice.exit_crit_edge, label %if.then.i

for.end.list_splice.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %bc_pa_list = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 46
  %16 = ptrtoint ptr %bc_pa_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bc_pa_list, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %prev3.i.i98 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i98 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %bc_pa_list, ptr %prev3.i.i98, align 4
  store ptr %15, ptr %bc_pa_list, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %19, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %for.end.list_splice.exit_crit_edge
  %bc_alloc_count = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 43
  %23 = ptrtoint ptr %bc_alloc_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bc_alloc_count, align 8
  %add = add i32 %24, %2
  store i32 %add, ptr %bc_alloc_count, align 8
  %bc_alloc_max = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 42
  %25 = ptrtoint ptr %bc_alloc_max to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bc_alloc_max, align 4
  %add36 = add i32 %26, %2
  store i32 %add36, ptr %bc_alloc_max, align 4
  %bc_slot_count = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 44
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bc_slot_count, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %bc_slot_count, i32 1, i32 3, i32 1) #8
  %27 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bc_slot_count, ptr %bc_slot_count, i32 %2, ptr elementtype(i32) %bc_slot_count) #8, !srcloc !93
  call void @_raw_spin_unlock(ptr noundef %bc_pa_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %28 = load i32, ptr @rpc_debug, align 4
  %and39 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %list_splice.exit.cleanup_crit_edge, label %list_splice.exit.cleanup.sink.split_crit_edge, !prof !92

list_splice.exit.cleanup.sink.split_crit_edge:    ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

list_splice.exit.cleanup_crit_edge:               ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.end14.while.body_crit_edge
  %29 = phi ptr [ %39, %list_del.exit.while.body_crit_edge ], [ %6, %do.end14.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %29, i32 -280
  %call.i.i99 = call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #8
  br i1 %call.i.i99, label %if.end.i.i100, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i100:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i100, %while.body.list_del.exit_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  %prev.i101 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i101, align 4
  call fastcc void @xprt_free_allocation(ptr noundef %add.ptr)
  %38 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %tmp_list, align 4
  %cmp.i.not = icmp eq ptr %39, %tmp_list
  br i1 %cmp.i.not, label %list_del.exit.do.body62_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.do.body62_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.body62:                                        ; preds = %list_del.exit.do.body62_crit_edge, %do.end14.do.body62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %40 = load i32, ptr @rpc_debug, align 4
  %and63 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.cleanup_crit_edge, label %do.body62.cleanup.sink.split_crit_edge, !prof !92

do.body62.cleanup.sink.split_crit_edge:           ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body62.cleanup.sink.split_crit_edge, %list_splice.exit.cleanup.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.10, %list_splice.exit.cleanup.sink.split_crit_edge ], [ @.str.13, %do.body62.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %list_splice.exit.cleanup.sink.split_crit_edge ], [ -12, %do.body62.cleanup.sink.split_crit_edge ]
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.13.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body62.cleanup_crit_edge, %list_splice.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_splice.exit.cleanup_crit_edge ], [ -12, %do.body62.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xprt_alloc_bc_req(ptr noundef %xprt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 288) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %xprt, ptr %call7.i.i, align 8
  %rq_bc_list = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 31
  %2 = ptrtoint ptr %rq_bc_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %rq_bc_list, ptr %rq_bc_list, align 4
  %prev.i = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 31, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rq_bc_list, ptr %prev.i, align 8
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %cmp.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %cmp.i, label %if.end.out_free_crit_edge, label %if.end5

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end5:                                          ; preds = %if.end
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 2
  %call1.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #8
  %4 = ptrtoint ptr %rq_rcv_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %rq_rcv_buf, align 8
  %iov_len.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %iov_len.i.i, align 4
  %iov_len4.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %iov_len4.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %iov_len4.i.i, align 4
  %pages.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pages.i.i, align 4
  %page_len.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %page_len.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %page_len.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags.i.i, align 8
  %len5.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 2, i32 8
  %buflen.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %buflen.i.i, align 4
  %11 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %len5.i.i, align 8
  %call38.i.i.i.i1 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %cmp.i2 = icmp eq ptr %call38.i.i.i.i1, null
  br i1 %cmp.i2, label %if.end5.out_free_crit_edge, label %xprt_alloc_xdr_buf.exit13

if.end5.out_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

xprt_alloc_xdr_buf.exit13:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 1
  %call1.i3 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i1) #8
  %12 = ptrtoint ptr %rq_snd_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i3, ptr %rq_snd_buf, align 4
  %iov_len.i.i4 = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %iov_len.i.i4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4096, ptr %iov_len.i.i4, align 8
  %iov_len4.i.i5 = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len4.i.i5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %iov_len4.i.i5, align 8
  %pages.i.i6 = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %pages.i.i6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pages.i.i6, align 8
  %page_len.i.i7 = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %page_len.i.i7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %page_len.i.i7, align 8
  %flags.i.i8 = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %flags.i.i8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flags.i.i8, align 4
  %len5.i.i9 = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 1, i32 8
  %18 = ptrtoint ptr %len5.i.i9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %len5.i.i9, align 4
  %buflen.i.i10 = getelementptr inbounds %struct.rpc_rqst, ptr %call7.i.i, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %buflen.i.i10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %buflen.i.i10, align 8
  br label %cleanup

out_free:                                         ; preds = %if.end5.out_free_crit_edge, %if.end.out_free_crit_edge
  %.str.35.sink = phi ptr [ @.str.32, %if.end.out_free_crit_edge ], [ @.str.35, %if.end5.out_free_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink) #11
  tail call fastcc void @xprt_free_allocation(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %xprt_alloc_xdr_buf.exit13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %xprt_alloc_xdr_buf.exit13 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xprt_free_allocation(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !92

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %req) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %rq_bc_pa_state = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 32
  %1 = ptrtoint ptr %rq_bc_pa_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %rq_bc_pa_state, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %do.end5.if.end48_crit_edge, label %land.rhs

do.end5.if.end48_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.rhs:                                         ; preds = %do.end5
  %.b66 = load i1, ptr @xprt_free_allocation.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end48_crit_edge, label %if.then22, !prof !92

land.rhs.if.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xprt_free_allocation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then22, %land.rhs.if.end48_crit_edge, %do.end5.if.end48_crit_edge
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %rq_rcv_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_rcv_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #8
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %rq_snd_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rq_snd_buf, align 4
  %9 = ptrtoint ptr %8 to i32
  tail call void @free_pages(i32 noundef %9, i32 noundef 0) #8
  tail call void @kfree(ptr noundef %req) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_destroy_backchannel(ptr noundef %xprt, i32 noundef %max_reqs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %bc_destroy = getelementptr inbounds %struct.rpc_xprt_ops, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %bc_destroy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_destroy, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %xprt, i32 noundef %max_reqs) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_destroy_bc(ptr noundef %xprt, i32 noundef %max_reqs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !92

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_reqs)
  %cmp = icmp eq i32 %max_reqs, 0
  br i1 %cmp, label %do.end6.do.body51_crit_edge, label %if.end8

do.end6.do.body51_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body51

if.end8:                                          ; preds = %do.end6
  %bc_pa_lock = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 45
  tail call void @_raw_spin_lock_bh(ptr noundef %bc_pa_lock) #8
  %bc_alloc_max = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 42
  %1 = ptrtoint ptr %bc_alloc_max to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bc_alloc_max, align 4
  %3 = tail call i32 @llvm.usub.sat.i32(i32 %2, i32 %max_reqs)
  %4 = ptrtoint ptr %bc_alloc_max to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bc_alloc_max, align 4
  %bc_pa_list = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 46
  %5 = ptrtoint ptr %bc_pa_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bc_pa_list, align 4
  %bc_alloc_count = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 43
  %bc_slot_count = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 44
  br label %for.cond

for.cond:                                         ; preds = %list_del.exit.for.cond_crit_edge, %if.end8
  %.pn.in = phi ptr [ %6, %if.end8 ], [ %.pn, %list_del.exit.for.cond_crit_edge ]
  %max_reqs.addr.0 = phi i32 [ %max_reqs, %if.end8 ], [ %dec41, %list_del.exit.for.cond_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn.in, i32 -280
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp19.not = icmp eq ptr %.pn.in, %bc_pa_list
  br i1 %cmp19.not, label %for.cond.for.end_crit_edge, label %do.body22

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body22:                                        ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %8 = load i32, ptr @rpc_debug, align 4
  %and23 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.do.end39_crit_edge, label %do.end34, !prof !92

do.body22.do.end39_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end34:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %req.0) #11
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %do.body22.do.end39_crit_edge
  %call.i.i91 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #8
  br i1 %call.i.i91, label %if.end.i.i, label %do.end39.list_del.exit_crit_edge

do.end39.list_del.exit_crit_edge:                 ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end39.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @xprt_free_allocation(ptr noundef %req.0)
  %17 = ptrtoint ptr %bc_alloc_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bc_alloc_count, align 8
  %dec = add i32 %18, -1
  store i32 %dec, ptr %bc_alloc_count, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bc_slot_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %bc_slot_count, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bc_slot_count, ptr %bc_slot_count, i32 1, ptr elementtype(i32) %bc_slot_count) #8, !srcloc !94
  %dec41 = add i32 %max_reqs.addr.0, -1
  %cmp42 = icmp eq i32 %dec41, 0
  br i1 %cmp42, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.cond_crit_edge

list_del.exit.for.cond_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %bc_pa_lock) #8
  br label %do.body51

do.body51:                                        ; preds = %for.end, %do.end6.do.body51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %20 = load i32, ptr @rpc_debug, align 4
  %and52 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.do.end72_crit_edge, label %do.end63, !prof !92

do.body51.do.end72_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

do.end63:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %bc_pa_list65 = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 46
  %21 = ptrtoint ptr %bc_pa_list65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %bc_pa_list65, align 4
  %cmp.i.not = icmp eq ptr %22, %bc_pa_list65
  %cond68 = select i1 %cmp.i.not, ptr @.str.23, ptr @.str.24
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %cond68) #11
  br label %do.end72

do.end72:                                         ; preds = %do.end63, %do.body51.do.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_free_bc_request(ptr noundef %req) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %bc_free_rqst = getelementptr inbounds %struct.rpc_xprt_ops, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %bc_free_rqst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_free_rqst, align 4
  tail call void %5(ptr noundef %req) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_free_bc_rqst(ptr noundef %req) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %2 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !92

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %req) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %connect_cookie = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %connect_cookie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %connect_cookie, align 8
  %sub = add i32 %4, -1
  %rq_connect_cookie = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 26
  %5 = ptrtoint ptr %rq_connect_cookie to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %rq_connect_cookie, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !95
  %rq_bc_pa_state = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 32
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %rq_bc_pa_state) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  %bc_pa_lock = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 45
  tail call void @_raw_spin_lock_bh(ptr noundef %bc_pa_lock) #8
  %bc_alloc_count.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 43
  %6 = ptrtoint ptr %bc_alloc_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bc_alloc_count.i, align 8
  %bc_alloc_max.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 42
  %8 = ptrtoint ptr %bc_alloc_max.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bc_alloc_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.not = icmp ult i32 %7, %9
  br i1 %cmp.i.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.end5
  %rq_bc_pa_list = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 33
  %bc_pa_list = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 46
  %prev.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 46, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef %rq_bc_pa_list, ptr noundef %11, ptr noundef %bc_pa_list) #8
  br i1 %call.i.i57, label %if.end.i.i, label %if.then20.if.end21.thread_crit_edge

if.then20.if.end21.thread_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.thread

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rq_bc_pa_list, ptr %prev.i, align 4
  %13 = ptrtoint ptr %rq_bc_pa_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bc_pa_list, ptr %rq_bc_pa_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 33, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %rq_bc_pa_list, ptr %11, align 4
  br label %if.end21.thread

if.end21.thread:                                  ; preds = %if.end.i.i, %if.then20.if.end21.thread_crit_edge
  %16 = ptrtoint ptr %bc_alloc_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bc_alloc_count.i, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %bc_alloc_count.i, align 8
  %bc_slot_count = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bc_slot_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %bc_slot_count, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bc_slot_count, ptr %bc_slot_count, i32 1, ptr elementtype(i32) %bc_slot_count) #8, !srcloc !93
  tail call void @_raw_spin_unlock_bh(ptr noundef %bc_pa_lock) #8
  br label %if.end42

if.end21:                                         ; preds = %do.end5
  tail call void @_raw_spin_unlock_bh(ptr noundef %bc_pa_lock) #8
  %cmp.not = icmp eq ptr %req, null
  br i1 %cmp.not, label %if.end21.if.end42_crit_edge, label %do.body24

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.body24:                                        ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %19 = load i32, ptr @rpc_debug, align 4
  %and25 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end41_crit_edge, label %do.end36, !prof !92

do.body24.do.end41_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

do.end36:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull %req) #11
  br label %do.end41

do.end41:                                         ; preds = %do.end36, %do.body24.do.end41_crit_edge
  tail call fastcc void @xprt_free_allocation(ptr noundef nonnull %req)
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %if.end21.if.end42_crit_edge, %if.end21.thread
  tail call void @xprt_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xprt_lookup_bc_request(ptr noundef %xprt, i32 noundef %xid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_pa_lock = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 45
  %bc_pa_list = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 46
  %connect_cookie = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 25
  %bc_slot_count.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 44
  %prev.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 46, i32 1
  %bc_alloc_count.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 43
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %entry
  %new.0 = phi ptr [ null, %entry ], [ %call20, %if.end19.do.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %bc_pa_lock) #8
  %0 = ptrtoint ptr %bc_pa_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn56 = load ptr, ptr %bc_pa_list, align 4
  %cmp.not57 = icmp eq ptr %.pn56, %bc_pa_list
  br i1 %cmp.not57, label %do.body.for.end_crit_edge, label %for.body.lr.ph

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body
  %1 = ptrtoint ptr %connect_cookie to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %connect_cookie, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn58 = phi ptr [ %.pn56, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %rq_connect_cookie = getelementptr i8, ptr %.pn58, i32 -36
  %3 = ptrtoint ptr %rq_connect_cookie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rq_connect_cookie, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp2.not = icmp eq i32 %4, %2
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %rq_xid = getelementptr i8, ptr %.pn58, i32 -180
  %5 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rq_xid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %xid)
  %cmp3 = icmp eq i32 %6, %xid
  br i1 %cmp3, label %found.loopexit, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn58, align 4
  %cmp.not = icmp eq ptr %.pn, %bc_pa_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %8 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.end.do.end5.i_crit_edge, label %do.end.i, !prof !92

for.end.do.end5.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %for.end.do.end5.i_crit_edge
  %9 = ptrtoint ptr %bc_pa_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %bc_pa_list, align 4
  %cmp.i.not.i = icmp eq ptr %10, %bc_pa_list
  br i1 %cmp.i.not.i, label %if.then8.i, label %do.end5.i.if.end17.i_crit_edge

do.end5.i.if.end17.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then8.i:                                       ; preds = %do.end5.i
  %tobool9.not.i = icmp eq ptr %new.0, null
  br i1 %tobool9.not.i, label %if.else.thread, label %if.end11.i

if.else.thread:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %bc_pa_lock) #8
  br label %if.end19

if.end11.i:                                       ; preds = %if.then8.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bc_slot_count.i, i32 noundef 4) #8
  %11 = ptrtoint ptr %bc_slot_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bc_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %12)
  %cmp.i = icmp ugt i32 %12, 63
  br i1 %cmp.i, label %found.thread43, label %if.end14.i

found.thread43:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %bc_pa_lock) #8
  br label %if.then12

if.end14.i:                                       ; preds = %if.end11.i
  %rq_bc_pa_list.i = getelementptr inbounds %struct.rpc_rqst, ptr %new.0, i32 0, i32 33
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i52.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rq_bc_pa_list.i, ptr noundef %14, ptr noundef %bc_pa_list) #8
  br i1 %call.i.i52.i, label %if.end.i.i.i, label %if.end14.i.list_add_tail.exit.i_crit_edge

if.end14.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rq_bc_pa_list.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %rq_bc_pa_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bc_pa_list, ptr %rq_bc_pa_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %new.0, i32 0, i32 33, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %rq_bc_pa_list.i, ptr %14, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end14.i.list_add_tail.exit.i_crit_edge
  %19 = ptrtoint ptr %bc_alloc_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bc_alloc_count.i, align 8
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %bc_alloc_count.i, align 8
  %call.i.i51.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bc_slot_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %bc_slot_count.i, i32 1, i32 3, i32 1) #8
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bc_slot_count.i, ptr %bc_slot_count.i, i32 1, ptr elementtype(i32) %bc_slot_count.i) #8, !srcloc !93
  br label %if.end17.i

if.end17.i:                                       ; preds = %list_add_tail.exit.i, %do.end5.i.if.end17.i_crit_edge
  %22 = ptrtoint ptr %bc_pa_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bc_pa_list, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 -280
  %rq_reply_bytes_recvd.i = getelementptr i8, ptr %23, i32 -108
  %24 = ptrtoint ptr %rq_reply_bytes_recvd.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rq_reply_bytes_recvd.i, align 4
  %rq_private_buf.i = getelementptr i8, ptr %23, i32 -104
  %rq_rcv_buf.i = getelementptr i8, ptr %23, i32 -232
  %25 = call ptr @memcpy(ptr %rq_private_buf.i, ptr %rq_rcv_buf.i, i32 44)
  %rq_xid.i = getelementptr i8, ptr %23, i32 -180
  %26 = ptrtoint ptr %rq_xid.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %xid, ptr %rq_xid.i, align 4
  %27 = ptrtoint ptr %connect_cookie to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %connect_cookie, align 8
  %rq_connect_cookie.i = getelementptr i8, ptr %23, i32 -36
  %29 = ptrtoint ptr %rq_connect_cookie.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rq_connect_cookie.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %30 = load i32, ptr @rpc_debug, align 4
  %and21.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end17.i.found_crit_edge, label %do.end32.i, !prof !92

if.end17.i.found_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

do.end32.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %add.ptr.i) #11
  br label %found

found.loopexit:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %req.0.le = getelementptr i8, ptr %.pn58, i32 -280
  br label %found

found:                                            ; preds = %found.loopexit, %do.end32.i, %if.end17.i.found_crit_edge
  %req.1 = phi ptr [ %add.ptr.i, %do.end32.i ], [ %add.ptr.i, %if.end17.i.found_crit_edge ], [ %req.0.le, %found.loopexit ]
  tail call void @_raw_spin_unlock(ptr noundef %bc_pa_lock) #8
  %tobool.not = icmp eq ptr %new.0, null
  br i1 %tobool.not, label %if.else, label %found.if.then12_crit_edge

found.if.then12_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %found.if.then12_crit_edge, %found.thread43
  %req.146 = phi ptr [ null, %found.thread43 ], [ %req.1, %found.if.then12_crit_edge ]
  %cmp13.not = icmp eq ptr %req.146, %new.0
  br i1 %cmp13.not, label %if.then12.do.end_crit_edge, label %if.then14

if.then12.do.end_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xprt_free_allocation(ptr noundef nonnull %new.0)
  br label %do.end

if.else:                                          ; preds = %found
  %tobool16.not = icmp eq ptr %req.1, null
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.else.thread
  %call20 = tail call fastcc ptr @xprt_alloc_bc_req(ptr noundef %xprt)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.do.end_crit_edge, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end19.do.end_crit_edge, %if.else.do.end_crit_edge, %if.then14, %if.then12.do.end_crit_edge
  %req.141 = phi ptr [ %new.0, %if.then12.do.end_crit_edge ], [ %req.146, %if.then14 ], [ null, %if.end19.do.end_crit_edge ], [ %req.1, %if.else.do.end_crit_edge ]
  ret ptr %req.141
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_complete_bc_request(ptr noundef %req, i32 noundef %copied) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %bc_serv1 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %bc_serv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_serv1, align 8
  %bc_pa_lock = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %bc_pa_lock) #8
  %rq_bc_pa_list = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rq_bc_pa_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 33, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %rq_bc_pa_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_bc_pa_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %rq_bc_pa_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %rq_bc_pa_list, align 4
  %prev.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 33, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %bc_alloc_count = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 43
  %12 = ptrtoint ptr %bc_alloc_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bc_alloc_count, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %bc_alloc_count, align 8
  tail call void @_raw_spin_unlock(ptr noundef %bc_pa_lock) #8
  %len = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 8
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %copied, ptr %len, align 8
  %rq_bc_pa_state = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 32
  tail call void @_set_bit(i32 noundef 1, ptr noundef %rq_bc_pa_state) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %15 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %list_del.exit.do.end7_crit_edge, label %do.end, !prof !92

list_del.exit.do.end7_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %list_del.exit.do.end7_crit_edge
  %call8 = tail call ptr @xprt_get(ptr noundef %1) #8
  %sv_cb_lock = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %sv_cb_lock) #8
  %rq_bc_list = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 31
  %sv_cb_list = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 17
  %16 = ptrtoint ptr %sv_cb_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sv_cb_list, align 4
  %call.i.i21 = tail call zeroext i1 @__list_add_valid(ptr noundef %rq_bc_list, ptr noundef %sv_cb_list, ptr noundef %17) #8
  br i1 %call.i.i21, label %if.end.i.i22, label %do.end7.list_add.exit_crit_edge

do.end7.list_add.exit_crit_edge:                  ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i22:                                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rq_bc_list, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %rq_bc_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %rq_bc_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 31, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sv_cb_list, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %sv_cb_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %rq_bc_list, ptr %sv_cb_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i22, %do.end7.list_add.exit_crit_edge
  %sv_cb_waitq = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %sv_cb_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock(ptr noundef %sv_cb_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__ksymtab_xprt_setup_backchannel, !1, !"__ksymtab_xprt_setup_backchannel", i1 false, i1 false}
!1 = !{!"../net/sunrpc/backchannel_rqst.c", i32 133, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/sunrpc/backchannel_rqst.c", i32 141, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xprt_setup_bc._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @xprt_setup_bc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sunrpc/backchannel_rqst.c", i32 159, i32 4}
!10 = !{ptr @xprt_setup_bc._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @xprt_setup_bc._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sunrpc/backchannel_rqst.c", i32 164, i32 3}
!14 = !{ptr @xprt_setup_bc._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @xprt_setup_bc._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sunrpc/backchannel_rqst.c", i32 178, i32 2}
!18 = !{ptr @xprt_setup_bc._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @xprt_setup_bc._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/sunrpc/backchannel_rqst.c", i32 193, i32 2}
!22 = !{ptr @xprt_setup_bc._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @xprt_setup_bc._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_xprt_destroy_backchannel, !25, !"__ksymtab_xprt_destroy_backchannel", i1 false, i1 false}
!25 = !{!"../net/sunrpc/backchannel_rqst.c", i32 211, i32 1}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/sunrpc/backchannel_rqst.c", i32 217, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xprt_destroy_bc._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @xprt_destroy_bc._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/sunrpc/backchannel_rqst.c", i32 225, i32 3}
!33 = !{ptr @xprt_destroy_bc._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @xprt_destroy_bc._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sunrpc/backchannel_rqst.c", i32 236, i32 2}
!37 = !{ptr @xprt_destroy_bc._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @xprt_destroy_bc._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/sunrpc/backchannel_rqst.c", i32 282, i32 2}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @xprt_free_bc_rqst._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @xprt_free_bc_rqst._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/sunrpc/backchannel_rqst.c", i32 308, i32 3}
!48 = !{ptr @xprt_free_bc_rqst._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @xprt_free_bc_rqst._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/sunrpc/backchannel_rqst.c", i32 370, i32 2}
!52 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xprt_complete_bc_request._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @xprt_complete_bc_request._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/sunrpc/backchannel_rqst.c", i32 93, i32 3}
!57 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @xprt_alloc_bc_req._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @xprt_alloc_bc_req._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/sunrpc/backchannel_rqst.c", i32 100, i32 3}
!62 = !{ptr @xprt_alloc_bc_req._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @xprt_alloc_bc_req._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/sunrpc/backchannel_rqst.c", i32 58, i32 2}
!68 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @xprt_free_allocation._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @xprt_free_allocation._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../net/sunrpc/backchannel_rqst.c", i32 59, i32 2}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/sunrpc/backchannel_rqst.c", i32 245, i32 2}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @xprt_get_bc_request._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @xprt_get_bc_request._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/sunrpc/backchannel_rqst.c", i32 262, i32 2}
!80 = !{ptr @xprt_get_bc_request._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @xprt_get_bc_request._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2148375633, i64 2148375659, i64 2148375688, i64 2148375722, i64 2148375753, i64 2148375776}
!94 = !{i64 2148378098, i64 2148378124, i64 2148378153, i64 2148378187, i64 2148378218, i64 2148378241}
!95 = !{i64 2157164514}
!96 = !{i64 2157164818}
