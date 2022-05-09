; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs4session.c_pt.bc'
source_filename = "../fs/nfs/nfs4session.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs4_init_ds_session\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs4_init_ds_session\09\09\09\09"
module asm "\09.long\09__crc_nfs4_init_ds_session\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_init_ds_session:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_init_ds_session\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_init_ds_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs4_slot = type { ptr, ptr, i32, i32, i32, i32, i32, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.2 }
%union.anon.2 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.148, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.148 = type { %struct.work_struct }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.4, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.4 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs4_sequence_args = type { ptr, i8 }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_free_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: slotid %u highest_used_slotid %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfs4_free_slot\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/nfs/nfs4session.c\00", [43 x i8] zeroinitializer }, align 32
@nfs4_free_slot._entry_ptr = internal global ptr @nfs4_free_slot._entry, section ".printk_index", align 4
@nfs4_alloc_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"--> %s used_slots=%04lx highest_used=%u max_slots=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs4_alloc_slot\00", [16 x i8] zeroinitializer }, align 32
@nfs4_alloc_slot._entry_ptr = internal global ptr @nfs4_alloc_slot._entry, section ".printk_index", align 4
@nfs4_alloc_slot._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"<-- %s used_slots=%04lx highest_used=%u slotid=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@nfs4_alloc_slot._entry_ptr.7 = internal global ptr @nfs4_alloc_slot._entry.5, section ".printk_index", align 4
@nfs4_setup_session_slot_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"--> %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfs4_setup_session_slot_tables\00", [33 x i8] zeroinitializer }, align 32
@nfs4_setup_session_slot_tables._entry_ptr = internal global ptr @nfs4_setup_session_slot_tables._entry, section ".printk_index", align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ForeChannel Slot table\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BackChannel Slot table\00", [41 x i8] zeroinitializer }, align 32
@nfs4_destroy_session.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nfs4_destroy_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Destroy backchannel for xprt %p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs4_destroy_session\00", [43 x i8] zeroinitializer }, align 32
@nfs4_destroy_session._entry_ptr = internal global ptr @nfs4_destroy_session._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_nfs4_init_ds_session = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_init_ds_session = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_init_ds_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_init_ds_session to i32), ptr @__kstrtab_nfs4_init_ds_session, ptr @__kstrtabns_nfs4_init_ds_session }, section "___ksymtab_gpl+nfs4_init_ds_session", align 4
@nfs4_init_slot_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tbl->slot_tbl_lock\00", [44 x i8] zeroinitializer }, align 32
@nfs4_init_slot_table.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tbl->slot_waitq\00", [47 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nfs4_realloc_slot_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"--> %s: max_reqs=%u, tbl->max_slots %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs4_realloc_slot_table\00", [40 x i8] zeroinitializer }, align 32
@nfs4_realloc_slot_table._entry_ptr = internal global ptr @nfs4_realloc_slot_table._entry, section ".printk_index", align 4
@nfs4_realloc_slot_table._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: tbl=%p slots=%p max_slots=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@nfs4_realloc_slot_table._entry_ptr.23 = internal global ptr @nfs4_realloc_slot_table._entry.21, section ".printk_index", align 4
@nfs4_realloc_slot_table._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"<-- %s: return %d\0A\00", [45 x i8] zeroinitializer }, align 32
@nfs4_realloc_slot_table._entry_ptr.26 = internal global ptr @nfs4_realloc_slot_table._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 100, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 247, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 256, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 541, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 567, i32 48 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 568, i32 48 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 591, i32 9 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 593, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 30, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 32, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 302, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 316, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private constant [24 x i8] c"../fs/nfs/nfs4session.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 319, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 286, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 695, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 723, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__ksymtab_nfs4_init_ds_session, ptr @nfs4_alloc_slot._entry, ptr @nfs4_alloc_slot._entry.5, ptr @nfs4_alloc_slot._entry_ptr, ptr @nfs4_alloc_slot._entry_ptr.7, ptr @nfs4_destroy_session._entry, ptr @nfs4_destroy_session._entry_ptr, ptr @nfs4_free_slot._entry, ptr @nfs4_free_slot._entry_ptr, ptr @nfs4_realloc_slot_table._entry, ptr @nfs4_realloc_slot_table._entry.21, ptr @nfs4_realloc_slot_table._entry.24, ptr @nfs4_realloc_slot_table._entry_ptr, ptr @nfs4_realloc_slot_table._entry_ptr.23, ptr @nfs4_realloc_slot_table._entry_ptr.26, ptr @nfs4_setup_session_slot_tables._entry, ptr @nfs4_setup_session_slot_tables._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @nfs4_init_slot_table.__key, ptr @.str.15, ptr @nfs4_init_slot_table.__key.16, ptr @.str.17, ptr @init_completion.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_free_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_slot._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_setup_session_slot_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_destroy_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_init_slot_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_init_slot_table.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_realloc_slot_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_realloc_slot_table._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_realloc_slot_table._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_slot_tbl_drain_complete(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_tbl_state.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 15
  %0 = ptrtoint ptr %slot_tbl_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %slot_tbl_state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %complete = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 14
  tail call void @complete(ptr noundef %complete) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_free_slot(ptr noundef %tbl, ptr nocapture noundef readonly %slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_nr = getelementptr inbounds %struct.nfs4_slot, ptr %slot, i32 0, i32 3
  %0 = ptrtoint ptr %slot_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_nr, align 4
  %used_slots = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 2
  %rem.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %1, 5
  %add.ptr.i = getelementptr i32, ptr %used_slots, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %highest_used_slotid = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 8
  %4 = ptrtoint ptr %highest_used_slotid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %highest_used_slotid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp eq i32 %1, %5
  br i1 %cmp, label %if.end.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @_find_last_bit(ptr noundef %used_slots, i32 noundef %1) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %1)
  %cmp3 = icmp ult i32 %call5.i, %1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %highest_used_slotid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call5.i, ptr %highest_used_slotid, align 4
  br label %do.body

if.else:                                          ; preds = %if.end.i
  %7 = ptrtoint ptr %highest_used_slotid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %highest_used_slotid, align 4
  %slot_tbl_state.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 15
  %8 = ptrtoint ptr %slot_tbl_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %slot_tbl_state.i.i, align 4
  %and1.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.do.body_crit_edge, label %if.then.i28

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then.i28:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %complete.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 14
  tail call void @complete(ptr noundef %complete.i) #11
  br label %do.body

do.body:                                          ; preds = %if.then.i28, %if.else.do.body_crit_edge, %if.then4, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %do.end, !prof !75

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %highest_used_slotid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %highest_used_slotid, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %12) #14
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body.do.end16_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfs4_try_to_lock_slot(ptr noundef %tbl, ptr nocapture noundef %slot) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_nr = getelementptr inbounds %struct.nfs4_slot, ptr %slot, i32 0, i32 3
  %0 = ptrtoint ptr %slot_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_nr, align 4
  %used_slots.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 2
  %div3.i.i = lshr i32 %1, 5
  %arrayidx.i.i = getelementptr i32, ptr %used_slots.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %1, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %or.i.i = or i32 %4, %3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %highest_used_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 8
  %7 = ptrtoint ptr %highest_used_slotid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %highest_used_slotid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %8)
  %cmp.i = icmp ugt i32 %1, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp2.i = icmp eq i32 %8, -1
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.nfs4_lock_slot.exit_crit_edge

if.end.nfs4_lock_slot.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_lock_slot.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %highest_used_slotid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %highest_used_slotid.i, align 4
  br label %nfs4_lock_slot.exit

nfs4_lock_slot.exit:                              ; preds = %if.then.i, %if.end.nfs4_lock_slot.exit_crit_edge
  %generation.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 13
  %10 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generation.i, align 4
  %generation4.i = getelementptr inbounds %struct.nfs4_slot, ptr %slot, i32 0, i32 2
  %12 = ptrtoint ptr %generation4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %generation4.i, align 4
  br label %return

return:                                           ; preds = %nfs4_lock_slot.exit, %entry.return_crit_edge
  ret i1 %tobool.i.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_lookup_slot(ptr noundef %tbl, i32 noundef %slotid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_slotid = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 7
  %0 = ptrtoint ptr %max_slotid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_slotid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %slotid)
  %cmp.not = icmp ult i32 %1, %slotid
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  %slots.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 1
  %max_slots.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end7.i, %if.then
  %p.0.i = phi ptr [ %slots.i, %if.then ], [ %next.i, %if.end7.i ]
  %2 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.0.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %if.then.i, label %for.cond.i.if.end4.i_crit_edge

for.cond.i.if.end4.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then.i:                                        ; preds = %for.cond.i
  %4 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_slots.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2304, i32 noundef 32) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tbl, ptr %call7.i.i.i.i, align 8
  %slot_nr.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %slot_nr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %slot_nr.i.i, align 4
  %seq_nr.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %seq_nr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %seq_nr.i.i, align 8
  %seq_nr_highest_sent.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %seq_nr_highest_sent.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %seq_nr_highest_sent.i.i, align 8
  %seq_nr_last_acked.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %seq_nr_last_acked.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %seq_nr_last_acked.i.i, align 4
  %12 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i.i, ptr %p.0.i, align 4
  %13 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_slots.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %max_slots.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i, %for.cond.i.if.end4.i_crit_edge
  %15 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p.0.i, align 4
  %slot_nr.i = getelementptr inbounds %struct.nfs4_slot, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %slot_nr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slot_nr.i, align 4
  %cmp5.i = icmp eq i32 %18, %slotid
  br i1 %cmp5.i, label %if.end4.i.return_crit_edge, label %if.end7.i

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i = getelementptr inbounds %struct.nfs4_slot, ptr %16, i32 0, i32 1
  br label %for.cond.i

for.end.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %p.0.i, align 4
  br label %return

return:                                           ; preds = %for.end.i, %if.end4.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %for.end.i ], [ inttoptr (i32 -7 to ptr), %entry.return_crit_edge ], [ %16, %if.end4.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_slot_wait_on_seqid(ptr noundef %tbl, i32 noundef %slotid, i32 noundef %seq_nr, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 228) #11
  %call = tail call fastcc zeroext i1 @nfs4_slot_seqid_in_use(ptr noundef %tbl, i32 noundef %slotid, i32 noundef %seq_nr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool4.not = icmp eq i32 %timeout, 0
  %spec.store.select = select i1 %tobool4.not, i32 1, i32 %timeout
  %__ret.0 = select i1 %call, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool6.not = icmp ne i32 %__ret.0, 0
  %0 = and i1 %call, %tobool6.not
  br i1 %0, label %if.then9, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %1 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %slot_waitq = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 5
  %call1156 = call i32 @prepare_to_wait_event(ptr noundef %slot_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call1357 = call fastcc zeroext i1 @nfs4_slot_seqid_in_use(ptr noundef %tbl, i32 noundef %slotid, i32 noundef %seq_nr)
  %__ret10.160 = select i1 %call1357, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.160)
  %tobool24.not61 = icmp ne i32 %__ret10.160, 0
  %2 = and i1 %call1357, %tobool24.not61
  br i1 %2, label %if.then9.cleanup_crit_edge, label %if.then9.for.end_crit_edge

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %__ret10.163 = phi i32 [ %__ret10.1, %cleanup.cleanup_crit_edge ], [ %__ret10.160, %if.then9.cleanup_crit_edge ]
  %call31 = call i32 @schedule_timeout(i32 noundef %__ret10.163) #11
  %call11 = call i32 @prepare_to_wait_event(ptr noundef %slot_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call13 = call fastcc zeroext i1 @nfs4_slot_seqid_in_use(ptr noundef %tbl, i32 noundef %slotid, i32 noundef %seq_nr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool18.not = icmp eq i32 %call31, 0
  %spec.store.select38 = select i1 %tobool18.not, i32 1, i32 %call31
  %__ret10.1 = select i1 %call13, i32 %call31, i32 %spec.store.select38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool24.not = icmp eq i32 %__ret10.1, 0
  %not.call13 = xor i1 %call13, true
  %3 = select i1 %not.call13, i1 true, i1 %tobool24.not
  br i1 %3, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  %__ret10.1.lcssa = phi i32 [ %__ret10.160, %if.then9.for.end_crit_edge ], [ %__ret10.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %slot_waitq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end34

if.end34:                                         ; preds = %for.end, %entry.if.end34_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %entry.if.end34_crit_edge ], [ %__ret10.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp = icmp eq i32 %__ret.1, 0
  %. = select i1 %cmp, i32 -110, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nfs4_slot_seqid_in_use(ptr noundef %tbl, i32 noundef %slotid, i32 noundef %seq_nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_tbl_lock = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock) #11
  %max_slotid.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 7
  %0 = ptrtoint ptr %max_slotid.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_slotid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %slotid)
  %cmp.not.i.i = icmp ult i32 %1, %slotid
  br i1 %cmp.not.i.i, label %entry.if.end_crit_edge, label %if.then.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.i:                                      ; preds = %entry
  %slots.i.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 1
  %max_slots.i.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 6
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %if.end7.i.i.i, %if.then.i.i
  %p.0.i.i.i = phi ptr [ %slots.i.i.i, %if.then.i.i ], [ %next.i.i.i, %if.end7.i.i.i ]
  %2 = ptrtoint ptr %p.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.0.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, null
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.cond.i.i.i.if.end4.i.i.i_crit_edge

for.cond.i.i.i.if.end4.i.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %for.cond.i.i.i
  %4 = ptrtoint ptr %max_slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_slots.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2304, i32 noundef 32) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %for.end.i.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tbl, ptr %call7.i.i.i.i.i.i, align 8
  %slot_nr.i.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %slot_nr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %slot_nr.i.i.i.i, align 4
  %seq_nr.i.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %seq_nr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %seq_nr.i.i.i.i, align 8
  %seq_nr_highest_sent.i.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %seq_nr_highest_sent.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %seq_nr_highest_sent.i.i.i.i, align 8
  %seq_nr_last_acked.i.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %seq_nr_last_acked.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %seq_nr_last_acked.i.i.i.i, align 4
  %12 = ptrtoint ptr %p.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i.i.i.i, ptr %p.0.i.i.i, align 4
  %13 = ptrtoint ptr %max_slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_slots.i.i.i, align 4
  %inc.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i, ptr %max_slots.i.i.i, align 4
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i, %for.cond.i.i.i.if.end4.i.i.i_crit_edge
  %15 = ptrtoint ptr %p.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p.0.i.i.i, align 4
  %slot_nr.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %slot_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slot_nr.i.i.i, align 4
  %cmp5.i.i.i = icmp eq i32 %18, %slotid
  br i1 %cmp5.i.i.i, label %nfs4_lookup_slot.exit.i, label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %16, i32 0, i32 1
  br label %for.cond.i.i.i

for.end.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %p.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %p.0.i.i.i, align 4
  br label %if.end

nfs4_lookup_slot.exit.i:                          ; preds = %if.end4.i.i.i
  %cmp.i.i5.i.not = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i5.i.not, label %nfs4_lookup_slot.exit.i.if.end_crit_edge, label %land.lhs.true

nfs4_lookup_slot.exit.i.if.end_crit_edge:         ; preds = %nfs4_lookup_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %nfs4_lookup_slot.exit.i
  %seq_nr2.i = getelementptr inbounds %struct.nfs4_slot, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %seq_nr2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seq_nr2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %seq_nr)
  %cmp1 = icmp eq i32 %21, %seq_nr
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %used_slots = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 2
  %div3.i = lshr i32 %slotid, 5
  %arrayidx.i = getelementptr i32, ptr %used_slots, i32 %div3.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %slotid, 31
  %24 = shl nuw i32 1, %and.i
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp ne i32 %25, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true.if.end_crit_edge, %nfs4_lookup_slot.exit.i.if.end_crit_edge, %for.end.i.i.i, %entry.if.end_crit_edge
  %ret.0.off0 = phi i1 [ false, %land.lhs.true.if.end_crit_edge ], [ %tobool.not, %land.lhs.true2 ], [ false, %nfs4_lookup_slot.exit.i.if.end_crit_edge ], [ false, %for.end.i.i.i ], [ false, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock) #11
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_alloc_slot(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !75

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %used_slots = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 2
  %1 = ptrtoint ptr %used_slots to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %used_slots, align 4
  %highest_used_slotid = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 8
  %3 = ptrtoint ptr %highest_used_slotid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %highest_used_slotid, align 4
  %max_slotid = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 7
  %5 = ptrtoint ptr %max_slotid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_slotid, align 4
  %add = add i32 %6, 1
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %4, i32 noundef %add) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %used_slots7 = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 2
  %max_slotid8 = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 7
  %7 = ptrtoint ptr %max_slotid8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_slotid8, align 4
  %add9 = add i32 %8, 1
  %call10 = tail call i32 @_find_first_zero_bit_be(ptr noundef %used_slots7, i32 noundef %add9) #11
  %9 = ptrtoint ptr %max_slotid8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_slotid8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %10)
  %cmp.not = icmp ugt i32 %call10, %10
  br i1 %cmp.not, label %do.end6.do.body18_crit_edge, label %if.then12

do.end6.do.body18_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

if.then12:                                        ; preds = %do.end6
  %slots.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 1
  %max_slots.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end7.i, %if.then12
  %p.0.i = phi ptr [ %slots.i, %if.then12 ], [ %next.i, %if.end7.i ]
  %11 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.0.i, align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %if.then.i, label %for.cond.i.if.end4.i_crit_edge

for.cond.i.if.end4.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then.i:                                        ; preds = %for.cond.i
  %13 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_slots.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2304, i32 noundef 32) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %nfs4_find_or_create_slot.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tbl, ptr %call7.i.i.i.i, align 8
  %slot_nr.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %slot_nr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %slot_nr.i.i, align 4
  %seq_nr.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %seq_nr.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %seq_nr.i.i, align 8
  %seq_nr_highest_sent.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %seq_nr_highest_sent.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %seq_nr_highest_sent.i.i, align 8
  %seq_nr_last_acked.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %seq_nr_last_acked.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %seq_nr_last_acked.i.i, align 4
  %21 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i.i, ptr %p.0.i, align 4
  %22 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_slots.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %max_slots.i, align 4
  %.pr = load ptr, ptr %p.0.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i, %for.cond.i.if.end4.i_crit_edge
  %24 = phi ptr [ %.pr, %if.end.i ], [ %12, %for.cond.i.if.end4.i_crit_edge ]
  %slot_nr.i = getelementptr inbounds %struct.nfs4_slot, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %slot_nr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slot_nr.i, align 4
  %cmp5.i = icmp eq i32 %26, %call10
  br i1 %cmp5.i, label %nfs4_find_or_create_slot.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i = getelementptr inbounds %struct.nfs4_slot, ptr %24, i32 0, i32 1
  br label %for.cond.i

nfs4_find_or_create_slot.exit.thread:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %p.0.i, align 4
  br label %do.body18

nfs4_find_or_create_slot.exit:                    ; preds = %if.end4.i
  %cmp.i54 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %nfs4_find_or_create_slot.exit.do.body18_crit_edge, label %if.then15

nfs4_find_or_create_slot.exit.do.body18_crit_edge: ; preds = %nfs4_find_or_create_slot.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

if.then15:                                        ; preds = %nfs4_find_or_create_slot.exit
  %slot_nr.i.le = getelementptr inbounds %struct.nfs4_slot, ptr %24, i32 0, i32 3
  %28 = ptrtoint ptr %slot_nr.i.le to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slot_nr.i.le, align 4
  %rem.i.i = and i32 %29, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %29, 5
  %add.ptr.i.i = getelementptr i32, ptr %used_slots7, i32 %div2.i.i
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %31
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %highest_used_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 8
  %32 = ptrtoint ptr %highest_used_slotid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %highest_used_slotid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %33)
  %cmp.i56 = icmp ugt i32 %29, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp2.i = icmp eq i32 %33, -1
  %or.cond.i = or i1 %cmp.i56, %cmp2.i
  br i1 %or.cond.i, label %if.then.i57, label %if.then15.nfs4_lock_slot.exit_crit_edge

if.then15.nfs4_lock_slot.exit_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_lock_slot.exit

if.then.i57:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %highest_used_slotid.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %highest_used_slotid.i, align 4
  br label %nfs4_lock_slot.exit

nfs4_lock_slot.exit:                              ; preds = %if.then.i57, %if.then15.nfs4_lock_slot.exit_crit_edge
  %generation.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 13
  %35 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %generation.i, align 4
  %generation4.i = getelementptr inbounds %struct.nfs4_slot, ptr %24, i32 0, i32 2
  %37 = ptrtoint ptr %generation4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %generation4.i, align 4
  br label %do.body18

do.body18:                                        ; preds = %nfs4_lock_slot.exit, %nfs4_find_or_create_slot.exit.do.body18_crit_edge, %nfs4_find_or_create_slot.exit.thread, %do.end6.do.body18_crit_edge
  %ret.0 = phi ptr [ %24, %nfs4_find_or_create_slot.exit.do.body18_crit_edge ], [ %24, %nfs4_lock_slot.exit ], [ inttoptr (i32 -16 to ptr), %do.end6.do.body18_crit_edge ], [ inttoptr (i32 -12 to ptr), %nfs4_find_or_create_slot.exit.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %38 = load i32, ptr @nfs_debug, align 4
  %and19 = and i32 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.end39_crit_edge, label %do.end30, !prof !75

do.body18.do.end39_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

do.end30:                                         ; preds = %do.body18
  %39 = ptrtoint ptr %used_slots7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %used_slots7, align 4
  %highest_used_slotid34 = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 8
  %41 = ptrtoint ptr %highest_used_slotid34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %highest_used_slotid34, align 4
  %cmp.i59 = icmp ugt ptr %ret.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %do.end30.cond.end_crit_edge, label %cond.true

do.end30.cond.end_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  %slot_nr = getelementptr inbounds %struct.nfs4_slot, ptr %ret.0, i32 0, i32 3
  %43 = ptrtoint ptr %slot_nr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %slot_nr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end30.cond.end_crit_edge
  %cond = phi i32 [ %44, %cond.true ], [ -1, %do.end30.cond.end_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %40, i32 noundef %42, i32 noundef %cond) #14
  br label %do.end39

do.end39:                                         ; preds = %cond.end, %do.body18.do.end39_crit_edge
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_shutdown_slot_table(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_slots.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 6
  %0 = ptrtoint ptr %max_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_slots.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i.not.i, label %entry.nfs4_release_slot_table.exit_crit_edge, label %if.end.i.i

entry.nfs4_release_slot_table.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_release_slot_table.exit

if.end.i.i:                                       ; preds = %entry
  %slots.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 1
  %2 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slots.i.i, align 4
  %tobool2.not18.i.i = icmp eq ptr %3, null
  br i1 %tobool2.not18.i.i, label %if.end.i.i.nfs4_release_slot_table.exit_crit_edge, label %if.end.i.i.while.body3.i.i_crit_edge

if.end.i.i.while.body3.i.i_crit_edge:             ; preds = %if.end.i.i
  br label %while.body3.i.i

if.end.i.i.nfs4_release_slot_table.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_release_slot_table.exit

while.body3.i.i:                                  ; preds = %while.body3.i.i.while.body3.i.i_crit_edge, %if.end.i.i.while.body3.i.i_crit_edge
  %4 = phi ptr [ %11, %while.body3.i.i.while.body3.i.i_crit_edge ], [ %3, %if.end.i.i.while.body3.i.i_crit_edge ]
  %next4.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %next4.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next4.i.i, align 4
  %7 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %slots.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %4) #11
  %8 = ptrtoint ptr %max_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_slots.i.i, align 4
  %dec6.i.i = add i32 %9, -1
  store i32 %dec6.i.i, ptr %max_slots.i.i, align 4
  %10 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slots.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %while.body3.i.i.nfs4_release_slot_table.exit_crit_edge, label %while.body3.i.i.while.body3.i.i_crit_edge

while.body3.i.i.while.body3.i.i_crit_edge:        ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body3.i.i

while.body3.i.i.nfs4_release_slot_table.exit_crit_edge: ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_release_slot_table.exit

nfs4_release_slot_table.exit:                     ; preds = %while.body3.i.i.nfs4_release_slot_table.exit_crit_edge, %if.end.i.i.nfs4_release_slot_table.exit_crit_edge, %entry.nfs4_release_slot_table.exit_crit_edge
  %slot_tbl_waitq = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 4
  tail call void @rpc_destroy_wait_queue(ptr noundef %slot_tbl_waitq) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_wait_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_setup_slot_table(ptr noundef %tbl, i32 noundef %max_reqs, ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %highest_used_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 8
  %0 = ptrtoint ptr %highest_used_slotid.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %highest_used_slotid.i, align 4
  %slot_tbl_lock.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %slot_tbl_lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @nfs4_init_slot_table.__key, i16 noundef signext 3) #11
  %slot_tbl_waitq.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 4
  tail call void @rpc_init_priority_wait_queue(ptr noundef %slot_tbl_waitq.i, ptr noundef %queue) #11
  %slot_waitq.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %slot_waitq.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @nfs4_init_slot_table.__key.16) #11
  %complete.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 14
  %1 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #11
  %call = tail call fastcc i32 @nfs4_realloc_slot_table(ptr noundef %tbl, i32 noundef %max_reqs, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_realloc_slot_table(ptr noundef %tbl, i32 noundef %max_reqs, i32 noundef %ivalue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !75

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %max_slots = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 6
  %1 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_slots, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %max_reqs, i32 noundef %2) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %3 = tail call i32 @llvm.umin.i32(i32 %max_reqs, i32 1024)
  %max_slots.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 6
  %4 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i = icmp ult i32 %5, %3
  %sub.i = add nsw i32 %3, -1
  br i1 %cmp.not.i, label %if.end.i, label %do.end5.if.end11_crit_edge

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i:                                         ; preds = %do.end5
  %slots.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 1
  %sub.i.i.i = add i32 %ivalue, -1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end7.i.i, %if.end.i
  %p.0.i.i = phi ptr [ %slots.i.i, %if.end.i ], [ %next.i.i, %if.end7.i.i ]
  %6 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.0.i.i, align 4
  %cmp.i.i = icmp eq ptr %7, null
  br i1 %cmp.i.i, label %if.then.i.i, label %for.cond.i.i.if.end4.i.i_crit_edge

for.cond.i.i.if.end4.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %for.cond.i.i
  %8 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_slots.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3392, i32 noundef 32) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %nfs4_find_or_create_slot.exit.i.thread, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tbl, ptr %call7.i.i.i.i.i, align 8
  %slot_nr.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %slot_nr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %slot_nr.i.i.i, align 4
  %seq_nr.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %seq_nr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ivalue, ptr %seq_nr.i.i.i, align 8
  %seq_nr_highest_sent.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %seq_nr_highest_sent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ivalue, ptr %seq_nr_highest_sent.i.i.i, align 8
  %seq_nr_last_acked.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %seq_nr_last_acked.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i.i.i, ptr %seq_nr_last_acked.i.i.i, align 4
  %16 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i.i.i, ptr %p.0.i.i, align 4
  %17 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_slots.i, align 4
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr %max_slots.i, align 4
  %.pr = load ptr, ptr %p.0.i.i, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i, %for.cond.i.i.if.end4.i.i_crit_edge
  %19 = phi ptr [ %.pr, %if.end.i.i ], [ %7, %for.cond.i.i.if.end4.i.i_crit_edge ]
  %slot_nr.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %slot_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slot_nr.i.i, align 4
  %cmp5.i.i = icmp eq i32 %21, %sub.i
  br i1 %cmp5.i.i, label %nfs4_find_or_create_slot.exit.i, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 1
  br label %for.cond.i.i

nfs4_find_or_create_slot.exit.i.thread:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %p.0.i.i, align 4
  br label %do.body32

nfs4_find_or_create_slot.exit.i:                  ; preds = %if.end4.i.i
  %cmp.i6.i = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i6.i, label %nfs4_find_or_create_slot.exit.i.do.body32_crit_edge, label %nfs4_find_or_create_slot.exit.i.if.end11_crit_edge

nfs4_find_or_create_slot.exit.i.if.end11_crit_edge: ; preds = %nfs4_find_or_create_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

nfs4_find_or_create_slot.exit.i.do.body32_crit_edge: ; preds = %nfs4_find_or_create_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

if.end11:                                         ; preds = %nfs4_find_or_create_slot.exit.i.if.end11_crit_edge, %do.end5.if.end11_crit_edge
  %slot_tbl_lock = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock) #11
  %23 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %3)
  %cmp.not.i.i = icmp ugt i32 %24, %3
  br i1 %cmp.not.i.i, label %if.end.i.i64, label %if.end11.nfs4_shrink_slot_table.exit.i_crit_edge

if.end11.nfs4_shrink_slot_table.exit.i_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_shrink_slot_table.exit.i

if.end.i.i64:                                     ; preds = %if.end11
  %slots.i.i63 = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not15.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not15.i.i, label %if.end.i.i64.while.cond1.preheader.i.i_crit_edge, label %if.end.i.i64.while.body.i.i_crit_edge

if.end.i.i64.while.body.i.i_crit_edge:            ; preds = %if.end.i.i64
  br label %while.body.i.i

if.end.i.i64.while.cond1.preheader.i.i_crit_edge: ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.preheader.i.i

while.cond1.preheader.i.i:                        ; preds = %while.body.i.i.while.cond1.preheader.i.i_crit_edge, %if.end.i.i64.while.cond1.preheader.i.i_crit_edge
  %p.0.lcssa.i.i = phi ptr [ %slots.i.i63, %if.end.i.i64.while.cond1.preheader.i.i_crit_edge ], [ %next.i.i65, %while.body.i.i.while.cond1.preheader.i.i_crit_edge ]
  %25 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p.0.lcssa.i.i, align 4
  %tobool2.not18.i.i = icmp eq ptr %26, null
  br i1 %tobool2.not18.i.i, label %while.cond1.preheader.i.i.nfs4_shrink_slot_table.exit.i_crit_edge, label %while.cond1.preheader.i.i.while.body3.i.i_crit_edge

while.cond1.preheader.i.i.while.body3.i.i_crit_edge: ; preds = %while.cond1.preheader.i.i
  br label %while.body3.i.i

while.cond1.preheader.i.i.nfs4_shrink_slot_table.exit.i_crit_edge: ; preds = %while.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_shrink_slot_table.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.i64.while.body.i.i_crit_edge
  %newsize.addr.017.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %3, %if.end.i.i64.while.body.i.i_crit_edge ]
  %p.016.i.i = phi ptr [ %next.i.i65, %while.body.i.i.while.body.i.i_crit_edge ], [ %slots.i.i63, %if.end.i.i64.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %newsize.addr.017.i.i, -1
  %27 = ptrtoint ptr %p.016.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p.016.i.i, align 4
  %next.i.i65 = getelementptr inbounds %struct.nfs4_slot, ptr %28, i32 0, i32 1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.while.cond1.preheader.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.while.cond1.preheader.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.preheader.i.i

while.body3.i.i:                                  ; preds = %while.body3.i.i.while.body3.i.i_crit_edge, %while.cond1.preheader.i.i.while.body3.i.i_crit_edge
  %29 = phi ptr [ %36, %while.body3.i.i.while.body3.i.i_crit_edge ], [ %26, %while.cond1.preheader.i.i.while.body3.i.i_crit_edge ]
  %next4.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %next4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %next4.i.i, align 4
  %32 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %p.0.lcssa.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %29) #11
  %33 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_slots.i, align 4
  %dec6.i.i = add i32 %34, -1
  store i32 %dec6.i.i, ptr %max_slots.i, align 4
  %35 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p.0.lcssa.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %36, null
  br i1 %tobool2.not.i.i, label %while.body3.i.i.nfs4_shrink_slot_table.exit.i_crit_edge, label %while.body3.i.i.while.body3.i.i_crit_edge

while.body3.i.i.while.body3.i.i_crit_edge:        ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body3.i.i

while.body3.i.i.nfs4_shrink_slot_table.exit.i_crit_edge: ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_shrink_slot_table.exit.i

nfs4_shrink_slot_table.exit.i:                    ; preds = %while.body3.i.i.nfs4_shrink_slot_table.exit.i_crit_edge, %while.cond1.preheader.i.i.nfs4_shrink_slot_table.exit.i_crit_edge, %if.end11.nfs4_shrink_slot_table.exit.i_crit_edge
  %slots.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 1
  %37 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slots.i, align 4
  %tobool.not18.i = icmp eq ptr %38, null
  br i1 %tobool.not18.i, label %nfs4_shrink_slot_table.exit.i.nfs4_reset_slot_table.exit_crit_edge, label %while.body.lr.ph.i

nfs4_shrink_slot_table.exit.i.nfs4_reset_slot_table.exit_crit_edge: ; preds = %nfs4_shrink_slot_table.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_reset_slot_table.exit

while.body.lr.ph.i:                               ; preds = %nfs4_shrink_slot_table.exit.i
  %sub.i66 = add i32 %ivalue, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %39 = phi ptr [ %38, %while.body.lr.ph.i ], [ %48, %while.body.i.while.body.i_crit_edge ]
  %p.019.i = phi ptr [ %slots.i, %while.body.lr.ph.i ], [ %next.i, %while.body.i.while.body.i_crit_edge ]
  %seq_nr.i = getelementptr inbounds %struct.nfs4_slot, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %seq_nr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %ivalue, ptr %seq_nr.i, align 4
  %41 = ptrtoint ptr %p.019.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p.019.i, align 4
  %seq_nr_highest_sent.i = getelementptr inbounds %struct.nfs4_slot, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %seq_nr_highest_sent.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %ivalue, ptr %seq_nr_highest_sent.i, align 4
  %44 = load ptr, ptr %p.019.i, align 4
  %seq_nr_last_acked.i = getelementptr inbounds %struct.nfs4_slot, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %seq_nr_last_acked.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.i66, ptr %seq_nr_last_acked.i, align 4
  %46 = load ptr, ptr %p.019.i, align 4
  %next.i = getelementptr inbounds %struct.nfs4_slot, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %while.body.i.nfs4_reset_slot_table.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.nfs4_reset_slot_table.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_reset_slot_table.exit

nfs4_reset_slot_table.exit:                       ; preds = %while.body.i.nfs4_reset_slot_table.exit_crit_edge, %nfs4_shrink_slot_table.exit.i.nfs4_reset_slot_table.exit_crit_edge
  %highest_used_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 8
  %49 = ptrtoint ptr %highest_used_slotid.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %highest_used_slotid.i, align 4
  %target_highest_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 9
  %50 = ptrtoint ptr %target_highest_slotid.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.i, ptr %target_highest_slotid.i, align 4
  %server_highest_slotid1.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 10
  %51 = ptrtoint ptr %server_highest_slotid1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.i, ptr %server_highest_slotid1.i, align 4
  %d_target_highest_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 11
  %52 = ptrtoint ptr %d_target_highest_slotid.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %d_target_highest_slotid.i, align 4
  %d2_target_highest_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 12
  %53 = ptrtoint ptr %d2_target_highest_slotid.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %d2_target_highest_slotid.i, align 4
  %max_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 7
  %54 = ptrtoint ptr %max_slotid.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.i, ptr %max_slotid.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %55 = load i32, ptr @nfs_debug, align 4
  %and14 = and i32 %55, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %nfs4_reset_slot_table.exit.do.body32_crit_edge, label %do.end25, !prof !75

nfs4_reset_slot_table.exit.do.body32_crit_edge:   ; preds = %nfs4_reset_slot_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

do.end25:                                         ; preds = %nfs4_reset_slot_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %slots.i, align 4
  %58 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_slots.i, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, ptr noundef %tbl, ptr noundef %57, i32 noundef %59) #14
  br label %do.body32

do.body32:                                        ; preds = %do.end25, %nfs4_reset_slot_table.exit.do.body32_crit_edge, %nfs4_find_or_create_slot.exit.i.do.body32_crit_edge, %nfs4_find_or_create_slot.exit.i.thread
  %retval.0.i69 = phi i32 [ 0, %do.end25 ], [ 0, %nfs4_reset_slot_table.exit.do.body32_crit_edge ], [ -12, %nfs4_find_or_create_slot.exit.i.do.body32_crit_edge ], [ -12, %nfs4_find_or_create_slot.exit.i.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %60 = load i32, ptr @nfs_debug, align 4
  %and33 = and i32 %60, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.do.end49_crit_edge, label %do.end44, !prof !75

do.body32.do.end49_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

do.end44:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i69) #14
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %do.body32.do.end49_crit_edge
  ret i32 %retval.0.i69
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs41_wake_and_assign_slot(ptr noundef %tbl, ptr noundef %slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_nr = getelementptr inbounds %struct.nfs4_slot, ptr %slot, i32 0, i32 3
  %0 = ptrtoint ptr %slot_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_nr, align 4
  %max_slotid = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 7
  %2 = ptrtoint ptr %max_slotid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_slotid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %slot_tbl_waitq.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 4
  %call.i = tail call ptr @rpc_wake_up_first(ptr noundef %slot_tbl_waitq.i, ptr noundef nonnull @nfs41_assign_slot, ptr noundef %slot) #11
  %tobool.not.i = icmp ne ptr %call.i, null
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool.not.i, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs41_wake_slot_table(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_tbl_waitq.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then.i.for.cond_crit_edge, %entry
  %call.i = tail call ptr @nfs4_alloc_slot(ptr noundef %tbl) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.cond.for.end_crit_edge, label %if.then.i

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.i:                                        ; preds = %for.cond
  %call.i.i = tail call ptr @rpc_wake_up_first(ptr noundef %slot_tbl_waitq.i.i, ptr noundef nonnull @nfs41_assign_slot, ptr noundef %call.i) #11
  %tobool.not.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not.i, label %if.end.i, label %if.then.i.for.cond_crit_edge

if.then.i.for.cond_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end.i:                                         ; preds = %if.then.i
  %slot_nr.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %slot_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_nr.i.i, align 4
  %used_slots.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 2
  %rem.i.i.i = and i32 %1, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %1, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %used_slots.i.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %3, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  %highest_used_slotid.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 8
  %4 = ptrtoint ptr %highest_used_slotid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %highest_used_slotid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.i12.i = icmp eq i32 %1, %5
  br i1 %cmp.i12.i, label %if.end.i.i.i, label %if.end.i.do.body.i.i_crit_edge

if.end.i.do.body.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %call5.i.i.i = tail call i32 @_find_last_bit(ptr noundef %used_slots.i.i, i32 noundef %1) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.i.i, i32 %1)
  %cmp3.i.i = icmp ult i32 %call5.i.i.i, %1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %highest_used_slotid.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call5.i.i.i, ptr %highest_used_slotid.i.i, align 4
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %if.end.i.i.i
  %7 = ptrtoint ptr %highest_used_slotid.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %highest_used_slotid.i.i, align 4
  %slot_tbl_state.i.i.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 15
  %8 = ptrtoint ptr %slot_tbl_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %slot_tbl_state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.do.body.i.i_crit_edge, label %if.then.i28.i.i

if.else.i.i.do.body.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.then.i28.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %complete.i.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 14
  tail call void @complete(ptr noundef %complete.i.i.i) #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i28.i.i, %if.else.i.i.do.body.i.i_crit_edge, %if.then4.i.i, %if.end.i.do.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and.i.i = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i13.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i13.i, label %do.body.i.i.for.end_crit_edge, label %do.end.i.i, !prof !75

do.body.i.i.for.end_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %highest_used_slotid.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %highest_used_slotid.i.i, align 4
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %12) #14
  br label %for.end

for.end:                                          ; preds = %do.end.i.i, %do.body.i.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs41_set_target_slotid(ptr noundef %tbl, i32 noundef %target_highest_slotid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_tbl_lock = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock) #11
  %target_highest_slotid1.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 9
  %0 = ptrtoint ptr %target_highest_slotid1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target_highest_slotid1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %target_highest_slotid)
  %cmp.i = icmp eq i32 %1, %target_highest_slotid
  br i1 %cmp.i, label %entry.nfs41_set_target_slotid_locked.exit_crit_edge, label %if.end.i

entry.nfs41_set_target_slotid_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs41_set_target_slotid_locked.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %target_highest_slotid1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %target_highest_slotid, ptr %target_highest_slotid1.i, align 4
  %generation.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 13
  %3 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %generation.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %generation.i, align 4
  br label %nfs41_set_target_slotid_locked.exit

nfs41_set_target_slotid_locked.exit:              ; preds = %if.end.i, %entry.nfs41_set_target_slotid_locked.exit_crit_edge
  %d_target_highest_slotid = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 11
  %5 = ptrtoint ptr %d_target_highest_slotid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %d_target_highest_slotid, align 4
  %d2_target_highest_slotid = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 12
  %6 = ptrtoint ptr %d2_target_highest_slotid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %d2_target_highest_slotid, align 4
  %server_highest_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 10
  %7 = ptrtoint ptr %server_highest_slotid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %server_highest_slotid.i, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %target_highest_slotid, i32 %8) #11
  %10 = ptrtoint ptr %target_highest_slotid1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target_highest_slotid1.i, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11) #11
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 1023) #11
  %max_slotid8.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 7
  %14 = ptrtoint ptr %max_slotid8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_slotid8.i, align 4
  tail call void @nfs41_wake_slot_table(ptr noundef %tbl) #11
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs41_update_target_slotid(ptr noundef %tbl, ptr nocapture noundef readonly %slot, ptr nocapture noundef readonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sr_target_highest_slotid = getelementptr inbounds %struct.nfs4_sequence_res, ptr %res, i32 0, i32 5
  %0 = ptrtoint ptr %sr_target_highest_slotid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sr_target_highest_slotid, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 1023)
  %sr_highest_slotid = getelementptr inbounds %struct.nfs4_sequence_res, ptr %res, i32 0, i32 4
  %3 = ptrtoint ptr %sr_highest_slotid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sr_highest_slotid, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 1023)
  %slot_tbl_lock = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock) #11
  %target_highest_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 9
  %6 = ptrtoint ptr %target_highest_slotid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target_highest_slotid.i, align 4
  %sub.i.i = sub i32 %2, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %7)
  %cmp.i.i = icmp eq i32 %2, %7
  br i1 %cmp.i.i, label %entry.nfs41_derivative_target_slotid.exit.i_crit_edge, label %if.end.i.i

entry.nfs41_derivative_target_slotid.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs41_derivative_target_slotid.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub3.i.i = add i32 %sub.i.i, -1
  %shr.i.i = ashr i32 %sub3.i.i, 1
  br label %nfs41_derivative_target_slotid.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add nuw i32 %sub.i.i, 1
  %shr5.i.i = ashr i32 %add.i.i, 1
  br label %nfs41_derivative_target_slotid.exit.i

nfs41_derivative_target_slotid.exit.i:            ; preds = %if.end4.i.i, %if.then2.i.i, %entry.nfs41_derivative_target_slotid.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %shr.i.i, %if.then2.i.i ], [ %shr5.i.i, %if.end4.i.i ], [ 0, %entry.nfs41_derivative_target_slotid.exit.i_crit_edge ]
  %d_target_highest_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 11
  %8 = ptrtoint ptr %d_target_highest_slotid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d_target_highest_slotid.i, align 4
  %sub.i17.i = sub i32 %retval.0.i.i, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %9)
  %cmp.i18.i = icmp eq i32 %retval.0.i.i, %9
  br i1 %cmp.i18.i, label %nfs41_derivative_target_slotid.exit.i.nfs41_derivative_target_slotid.exit28.i_crit_edge, label %if.end.i20.i

nfs41_derivative_target_slotid.exit.i.nfs41_derivative_target_slotid.exit28.i_crit_edge: ; preds = %nfs41_derivative_target_slotid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs41_derivative_target_slotid.exit28.i

if.end.i20.i:                                     ; preds = %nfs41_derivative_target_slotid.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i17.i)
  %cmp1.i19.i = icmp slt i32 %sub.i17.i, 0
  br i1 %cmp1.i19.i, label %if.then2.i23.i, label %if.end4.i26.i

if.then2.i23.i:                                   ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub3.i21.i = add i32 %sub.i17.i, -1
  %shr.i22.i = ashr i32 %sub3.i21.i, 1
  br label %nfs41_derivative_target_slotid.exit28.i

if.end4.i26.i:                                    ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i24.i = add nuw i32 %sub.i17.i, 1
  %shr5.i25.i = ashr i32 %add.i24.i, 1
  br label %nfs41_derivative_target_slotid.exit28.i

nfs41_derivative_target_slotid.exit28.i:          ; preds = %if.end4.i26.i, %if.then2.i23.i, %nfs41_derivative_target_slotid.exit.i.nfs41_derivative_target_slotid.exit28.i_crit_edge
  %retval.0.i27.i = phi i32 [ %shr.i22.i, %if.then2.i23.i ], [ %shr5.i25.i, %if.end4.i26.i ], [ 0, %nfs41_derivative_target_slotid.exit.i.nfs41_derivative_target_slotid.exit28.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i.i = icmp eq i32 %retval.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i.i = icmp eq i32 %9, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %nfs41_derivative_target_slotid.exit28.i.nfs41_same_sign_or_zero_s32.exit.i_crit_edge, label %if.end.i30.i

nfs41_derivative_target_slotid.exit28.i.nfs41_same_sign_or_zero_s32.exit.i_crit_edge: ; preds = %nfs41_derivative_target_slotid.exit28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs41_same_sign_or_zero_s32.exit.i

if.end.i30.i:                                     ; preds = %nfs41_derivative_target_slotid.exit28.i
  call void @__sanitizer_cov_trace_pc() #13
  %s1.lobit.i.i.i = ashr i32 %retval.0.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp.inv.i.i.i = icmp slt i32 %retval.0.i.i, 1
  %retval.0.i.i.i = select i1 %cmp.inv.i.i.i, i32 %s1.lobit.i.i.i, i32 1
  %s1.lobit.i5.i.i = ashr i32 %9, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.inv.i6.i.i = icmp slt i32 %9, 1
  %retval.0.i7.i.i = select i1 %cmp.inv.i6.i.i, i32 %s1.lobit.i5.i.i, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %retval.0.i7.i.i)
  %cmp.i29.i = icmp ne i32 %retval.0.i.i.i, %retval.0.i7.i.i
  br label %nfs41_same_sign_or_zero_s32.exit.i

nfs41_same_sign_or_zero_s32.exit.i:               ; preds = %if.end.i30.i, %nfs41_derivative_target_slotid.exit28.i.nfs41_same_sign_or_zero_s32.exit.i_crit_edge
  %retval.0.i31.i = phi i1 [ %cmp.i29.i, %if.end.i30.i ], [ false, %nfs41_derivative_target_slotid.exit28.i.nfs41_same_sign_or_zero_s32.exit.i_crit_edge ]
  %d2_target_highest_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 12
  %10 = ptrtoint ptr %d2_target_highest_slotid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d2_target_highest_slotid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i27.i)
  %tobool.not.i32.i = icmp eq i32 %retval.0.i27.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i33.i = icmp eq i32 %11, 0
  %or.cond.i34.i = or i1 %tobool.not.i32.i, %tobool1.not.i33.i
  br i1 %or.cond.i34.i, label %nfs41_same_sign_or_zero_s32.exit.i.nfs41_is_outlier_target_slotid.exit.thread_crit_edge, label %nfs41_same_sign_or_zero_s32.exit44.i

nfs41_same_sign_or_zero_s32.exit.i.nfs41_is_outlier_target_slotid.exit.thread_crit_edge: ; preds = %nfs41_same_sign_or_zero_s32.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs41_is_outlier_target_slotid.exit.thread

nfs41_same_sign_or_zero_s32.exit44.i:             ; preds = %nfs41_same_sign_or_zero_s32.exit.i
  %s1.lobit.i.i35.i = ashr i32 %retval.0.i27.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i27.i)
  %cmp.inv.i.i36.i = icmp slt i32 %retval.0.i27.i, 1
  %retval.0.i.i37.i = select i1 %cmp.inv.i.i36.i, i32 %s1.lobit.i.i35.i, i32 1
  %s1.lobit.i5.i38.i = ashr i32 %11, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.inv.i6.i39.i = icmp slt i32 %11, 1
  %retval.0.i7.i40.i = select i1 %cmp.inv.i6.i39.i, i32 %s1.lobit.i5.i38.i, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i37.i, i32 %retval.0.i7.i40.i)
  %cmp.i41.i = icmp eq i32 %retval.0.i.i37.i, %retval.0.i7.i40.i
  br i1 %cmp.i41.i, label %nfs41_same_sign_or_zero_s32.exit44.i.nfs41_is_outlier_target_slotid.exit.thread_crit_edge, label %nfs41_is_outlier_target_slotid.exit

nfs41_same_sign_or_zero_s32.exit44.i.nfs41_is_outlier_target_slotid.exit.thread_crit_edge: ; preds = %nfs41_same_sign_or_zero_s32.exit44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs41_is_outlier_target_slotid.exit.thread

nfs41_is_outlier_target_slotid.exit.thread:       ; preds = %nfs41_same_sign_or_zero_s32.exit44.i.nfs41_is_outlier_target_slotid.exit.thread_crit_edge, %nfs41_same_sign_or_zero_s32.exit.i.nfs41_is_outlier_target_slotid.exit.thread_crit_edge
  %12 = ptrtoint ptr %d_target_highest_slotid.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.i, ptr %d_target_highest_slotid.i, align 4
  %13 = ptrtoint ptr %d2_target_highest_slotid.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i27.i, ptr %d2_target_highest_slotid.i, align 4
  br i1 %cmp.i.i, label %nfs41_is_outlier_target_slotid.exit.thread.if.end_crit_edge, label %nfs41_is_outlier_target_slotid.exit.thread.if.end.i_crit_edge

nfs41_is_outlier_target_slotid.exit.thread.if.end.i_crit_edge: ; preds = %nfs41_is_outlier_target_slotid.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

nfs41_is_outlier_target_slotid.exit.thread.if.end_crit_edge: ; preds = %nfs41_is_outlier_target_slotid.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

nfs41_is_outlier_target_slotid.exit:              ; preds = %nfs41_same_sign_or_zero_s32.exit44.i
  %14 = ptrtoint ptr %d_target_highest_slotid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i, ptr %d_target_highest_slotid.i, align 4
  %15 = ptrtoint ptr %d2_target_highest_slotid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i27.i, ptr %d2_target_highest_slotid.i, align 4
  %brmerge = select i1 %retval.0.i31.i, i1 true, i1 %cmp.i.i
  br i1 %brmerge, label %nfs41_is_outlier_target_slotid.exit.if.end_crit_edge, label %nfs41_is_outlier_target_slotid.exit.if.end.i_crit_edge

nfs41_is_outlier_target_slotid.exit.if.end.i_crit_edge: ; preds = %nfs41_is_outlier_target_slotid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

nfs41_is_outlier_target_slotid.exit.if.end_crit_edge: ; preds = %nfs41_is_outlier_target_slotid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %nfs41_is_outlier_target_slotid.exit.if.end.i_crit_edge, %nfs41_is_outlier_target_slotid.exit.thread.if.end.i_crit_edge
  %16 = ptrtoint ptr %target_highest_slotid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %2, ptr %target_highest_slotid.i, align 4
  %generation.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 13
  %17 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %generation.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %generation.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %nfs41_is_outlier_target_slotid.exit.if.end_crit_edge, %nfs41_is_outlier_target_slotid.exit.thread.if.end_crit_edge
  %generation = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 13
  %19 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %generation, align 4
  %generation7 = getelementptr inbounds %struct.nfs4_slot, ptr %slot, i32 0, i32 2
  %21 = ptrtoint ptr %generation7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %generation7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp8 = icmp eq i32 %20, %22
  br i1 %cmp8, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end
  %server_highest_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 10
  %23 = ptrtoint ptr %server_highest_slotid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %server_highest_slotid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %5)
  %cmp.i26 = icmp eq i32 %24, %5
  br i1 %cmp.i26, label %if.then9.if.end10_crit_edge, label %if.end.i27

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.i27:                                       ; preds = %if.then9
  %highest_used_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 8
  %25 = ptrtoint ptr %highest_used_slotid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %highest_used_slotid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %5)
  %cmp1.i = icmp ugt i32 %26, %5
  br i1 %cmp1.i, label %if.end.i27.if.end10_crit_edge, label %if.end3.i

if.end.i27.if.end10_crit_edge:                    ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end3.i:                                        ; preds = %if.end.i27
  %add.i = add nuw nsw i32 %5, 1
  %max_slots.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 6
  %27 = ptrtoint ptr %max_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_slots.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add.i)
  %cmp.not.i.i = icmp ugt i32 %28, %add.i
  br i1 %cmp.not.i.i, label %if.end.i.i28, label %if.end3.i.nfs4_shrink_slot_table.exit.i_crit_edge

if.end3.i.nfs4_shrink_slot_table.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_shrink_slot_table.exit.i

if.end.i.i28:                                     ; preds = %if.end3.i
  %slots.i.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 1
  br label %while.body.i.i

while.cond1.preheader.i.i:                        ; preds = %while.body.i.i
  %29 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next.i.i, align 4
  %tobool2.not18.i.i = icmp eq ptr %30, null
  br i1 %tobool2.not18.i.i, label %while.cond1.preheader.i.i.nfs4_shrink_slot_table.exit.i_crit_edge, label %while.cond1.preheader.i.i.while.body3.i.i_crit_edge

while.cond1.preheader.i.i.while.body3.i.i_crit_edge: ; preds = %while.cond1.preheader.i.i
  br label %while.body3.i.i

while.cond1.preheader.i.i.nfs4_shrink_slot_table.exit.i_crit_edge: ; preds = %while.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_shrink_slot_table.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.i28
  %newsize.addr.017.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %if.end.i.i28 ]
  %p.016.i.i = phi ptr [ %next.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %slots.i.i, %if.end.i.i28 ]
  %dec.i.i = add nsw i32 %newsize.addr.017.i.i, -1
  %31 = ptrtoint ptr %p.016.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p.016.i.i, align 4
  %next.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %32, i32 0, i32 1
  %tobool.not.i.i29 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i29, label %while.cond1.preheader.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body3.i.i:                                  ; preds = %while.body3.i.i.while.body3.i.i_crit_edge, %while.cond1.preheader.i.i.while.body3.i.i_crit_edge
  %33 = phi ptr [ %40, %while.body3.i.i.while.body3.i.i_crit_edge ], [ %30, %while.cond1.preheader.i.i.while.body3.i.i_crit_edge ]
  %next4.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %next4.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next4.i.i, align 4
  %36 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %next.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %33) #11
  %37 = ptrtoint ptr %max_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_slots.i.i, align 4
  %dec6.i.i = add i32 %38, -1
  store i32 %dec6.i.i, ptr %max_slots.i.i, align 4
  %39 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %40, null
  br i1 %tobool2.not.i.i, label %while.body3.i.i.nfs4_shrink_slot_table.exit.i_crit_edge, label %while.body3.i.i.while.body3.i.i_crit_edge

while.body3.i.i.while.body3.i.i_crit_edge:        ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body3.i.i

while.body3.i.i.nfs4_shrink_slot_table.exit.i_crit_edge: ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_shrink_slot_table.exit.i

nfs4_shrink_slot_table.exit.i:                    ; preds = %while.body3.i.i.nfs4_shrink_slot_table.exit.i_crit_edge, %while.cond1.preheader.i.i.nfs4_shrink_slot_table.exit.i_crit_edge, %if.end3.i.nfs4_shrink_slot_table.exit.i_crit_edge
  %41 = ptrtoint ptr %server_highest_slotid.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %5, ptr %server_highest_slotid.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %nfs4_shrink_slot_table.exit.i, %if.end.i27.if.end10_crit_edge, %if.then9.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %server_highest_slotid.i30 = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 10
  %42 = ptrtoint ptr %server_highest_slotid.i30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %server_highest_slotid.i30, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %2, i32 %43) #11
  %45 = ptrtoint ptr %target_highest_slotid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %target_highest_slotid.i, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %44, i32 %46) #11
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 1023) #11
  %max_slotid8.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %tbl, i32 0, i32 7
  %49 = ptrtoint ptr %max_slotid8.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %max_slotid8.i, align 4
  tail call void @nfs41_wake_slot_table(ptr noundef %tbl) #11
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_setup_session_slot_tables(ptr noundef %ses) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !75

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %fc_slot_table = getelementptr inbounds %struct.nfs4_session, ptr %ses, i32 0, i32 6
  %1 = ptrtoint ptr %fc_slot_table to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ses, ptr %fc_slot_table, align 4
  %max_reqs = getelementptr inbounds %struct.nfs4_session, ptr %ses, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %max_reqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_reqs, align 4
  %call6 = tail call fastcc i32 @nfs4_realloc_slot_table(ptr noundef %fc_slot_table, i32 noundef %3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end5
  %flags = getelementptr inbounds %struct.nfs4_session, ptr %ses, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and8 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %bc_slot_table = getelementptr inbounds %struct.nfs4_session, ptr %ses, i32 0, i32 8
  %6 = ptrtoint ptr %bc_slot_table to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ses, ptr %bc_slot_table, align 4
  %max_reqs13 = getelementptr inbounds %struct.nfs4_session, ptr %ses, i32 0, i32 7, i32 4
  %7 = ptrtoint ptr %max_reqs13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_reqs13, align 4
  %call14 = tail call fastcc i32 @nfs4_realloc_slot_table(ptr noundef %bc_slot_table, i32 noundef %8, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %land.lhs.true

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end11
  %slots = getelementptr inbounds %struct.nfs4_session, ptr %ses, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slots, align 4
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then16, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  %max_slots.i.i.i = getelementptr inbounds %struct.nfs4_session, ptr %ses, i32 0, i32 6, i32 6
  %11 = ptrtoint ptr %max_slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_slots.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i.not.i.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i.not.i.i, label %if.then16.nfs4_release_slot_table.exit.i_crit_edge, label %if.end.i.i.i

if.then16.nfs4_release_slot_table.exit.i_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_release_slot_table.exit.i

if.end.i.i.i:                                     ; preds = %if.then16
  %slots.i.i.i = getelementptr inbounds %struct.nfs4_session, ptr %ses, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slots.i.i.i, align 4
  %tobool2.not18.i.i.i = icmp eq ptr %14, null
  br i1 %tobool2.not18.i.i.i, label %if.end.i.i.i.nfs4_release_slot_table.exit.i_crit_edge, label %if.end.i.i.i.while.body3.i.i.i_crit_edge

if.end.i.i.i.while.body3.i.i.i_crit_edge:         ; preds = %if.end.i.i.i
  br label %while.body3.i.i.i

if.end.i.i.i.nfs4_release_slot_table.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_release_slot_table.exit.i

while.body3.i.i.i:                                ; preds = %while.body3.i.i.i.while.body3.i.i.i_crit_edge, %if.end.i.i.i.while.body3.i.i.i_crit_edge
  %15 = phi ptr [ %22, %while.body3.i.i.i.while.body3.i.i.i_crit_edge ], [ %14, %if.end.i.i.i.while.body3.i.i.i_crit_edge ]
  %next4.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %next4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next4.i.i.i, align 4
  %18 = ptrtoint ptr %slots.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %slots.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %15) #11
  %19 = ptrtoint ptr %max_slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_slots.i.i.i, align 4
  %dec6.i.i.i = add i32 %20, -1
  store i32 %dec6.i.i.i, ptr %max_slots.i.i.i, align 4
  %21 = ptrtoint ptr %slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slots.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i.i.i, label %while.body3.i.i.i.nfs4_release_slot_table.exit.i_crit_edge, label %while.body3.i.i.i.while.body3.i.i.i_crit_edge

while.body3.i.i.i.while.body3.i.i.i_crit_edge:    ; preds = %while.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body3.i.i.i

while.body3.i.i.i.nfs4_release_slot_table.exit.i_crit_edge: ; preds = %while.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_release_slot_table.exit.i

nfs4_release_slot_table.exit.i:                   ; preds = %while.body3.i.i.i.nfs4_release_slot_table.exit.i_crit_edge, %if.end.i.i.i.nfs4_release_slot_table.exit.i_crit_edge, %if.then16.nfs4_release_slot_table.exit.i_crit_edge
  %max_slots.i.i2.i = getelementptr inbounds %struct.nfs4_session, ptr %ses, i32 0, i32 8, i32 6
  %23 = ptrtoint ptr %max_slots.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_slots.i.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i.not.i3.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i.not.i3.i, label %nfs4_release_slot_table.exit.i.cleanup_crit_edge, label %if.end.i.i6.i

nfs4_release_slot_table.exit.i.cleanup_crit_edge: ; preds = %nfs4_release_slot_table.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i6.i:                                    ; preds = %nfs4_release_slot_table.exit.i
  %25 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slots, align 4
  %tobool2.not18.i.i5.i = icmp eq ptr %26, null
  br i1 %tobool2.not18.i.i5.i, label %if.end.i.i6.i.cleanup_crit_edge, label %if.end.i.i6.i.while.body3.i.i10.i_crit_edge

if.end.i.i6.i.while.body3.i.i10.i_crit_edge:      ; preds = %if.end.i.i6.i
  br label %while.body3.i.i10.i

if.end.i.i6.i.cleanup_crit_edge:                  ; preds = %if.end.i.i6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body3.i.i10.i:                              ; preds = %while.body3.i.i10.i.while.body3.i.i10.i_crit_edge, %if.end.i.i6.i.while.body3.i.i10.i_crit_edge
  %27 = phi ptr [ %34, %while.body3.i.i10.i.while.body3.i.i10.i_crit_edge ], [ %26, %if.end.i.i6.i.while.body3.i.i10.i_crit_edge ]
  %next4.i.i7.i = getelementptr inbounds %struct.nfs4_slot, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %next4.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next4.i.i7.i, align 4
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %slots, align 4
  tail call void @kfree(ptr noundef nonnull %27) #11
  %31 = ptrtoint ptr %max_slots.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_slots.i.i2.i, align 4
  %dec6.i.i8.i = add i32 %32, -1
  store i32 %dec6.i.i8.i, ptr %max_slots.i.i2.i, align 4
  %33 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slots, align 4
  %tobool2.not.i.i9.i = icmp eq ptr %34, null
  br i1 %tobool2.not.i.i9.i, label %while.body3.i.i10.i.cleanup_crit_edge, label %while.body3.i.i10.i.while.body3.i.i10.i_crit_edge

while.body3.i.i10.i.while.body3.i.i10.i_crit_edge: ; preds = %while.body3.i.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body3.i.i10.i

while.body3.i.i10.i.cleanup_crit_edge:            ; preds = %while.body3.i.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body3.i.i10.i.cleanup_crit_edge, %if.end.i.i6.i.cleanup_crit_edge, %nfs4_release_slot_table.exit.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call6, %do.end5.cleanup_crit_edge ], [ %call14, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %call14, %nfs4_release_slot_table.exit.i.cleanup_crit_edge ], [ %call14, %if.end.i.i6.i.cleanup_crit_edge ], [ %call14, %while.body3.i.i10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_alloc_session(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 1124) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %highest_used_slotid.i = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 6, i32 8
  %1 = ptrtoint ptr %highest_used_slotid.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %highest_used_slotid.i, align 4
  %slot_tbl_lock.i = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 6, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %slot_tbl_lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @nfs4_init_slot_table.__key, i16 noundef signext 3) #11
  %slot_tbl_waitq.i = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 6, i32 4
  tail call void @rpc_init_priority_wait_queue(ptr noundef %slot_tbl_waitq.i, ptr noundef nonnull @.str.10) #11
  %slot_waitq.i = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 6, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %slot_waitq.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @nfs4_init_slot_table.__key.16) #11
  %complete.i = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 6, i32 14
  %2 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 6, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #11
  %highest_used_slotid.i7 = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 8, i32 8
  %3 = ptrtoint ptr %highest_used_slotid.i7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %highest_used_slotid.i7, align 4
  %slot_tbl_lock.i8 = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 8, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %slot_tbl_lock.i8, ptr noundef nonnull @.str.15, ptr noundef nonnull @nfs4_init_slot_table.__key, i16 noundef signext 3) #11
  %slot_tbl_waitq.i9 = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 8, i32 4
  tail call void @rpc_init_priority_wait_queue(ptr noundef %slot_tbl_waitq.i9, ptr noundef nonnull @.str.11) #11
  %slot_waitq.i10 = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 8, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %slot_waitq.i10, ptr noundef nonnull @.str.17, ptr noundef nonnull @nfs4_init_slot_table.__key.16) #11
  %complete.i11 = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 8, i32 14
  %4 = ptrtoint ptr %complete.i11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %complete.i11, align 4
  %wait.i.i12 = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 8, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i12, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #11
  %session_state = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %session_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %session_state, align 4
  %clp1 = getelementptr inbounds %struct.nfs4_session, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %clp1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %clp, ptr %clp1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_destroy_session(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clp = getelementptr inbounds %struct.nfs4_session, ptr %session, i32 0, i32 9
  %0 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp, align 4
  %call = tail call ptr @nfs4_get_clid_cred(ptr noundef %1) #11
  %call1 = tail call i32 @nfs4_proc_destroy_session(ptr noundef %session, ptr noundef %call) #11
  %tobool.not.i32 = icmp eq ptr %call, null
  br i1 %tobool.not.i32, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call) #11
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !76

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef nonnull %call, ptr noundef nonnull @.str.27, i32 noundef 286) #11
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #11, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_cred(ptr noundef nonnull %call) #11
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !65) #11
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %put_cred.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

put_cred.exit.rcu_read_lock.exit_crit_edge:       ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %put_cred.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %put_cred.exit.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clp, align 4
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_rpcclient, align 8
  %cl_xprt = getelementptr inbounds %struct.rpc_clnt, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %cl_xprt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %cl_xprt, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @nfs4_destroy_session.__warned, align 1
  br i1 %.b31, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfs4_destroy_session.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 591, ptr noundef nonnull @.str.12) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i33, label %do.end10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

do.end10.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %do.end10
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %do.end10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !81
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #11
  %and.i.i.i.i.i40 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %rcu_read_unlock.exit.do.end24_crit_edge, label %do.end19, !prof !75

rcu_read_unlock.exit.do.end24_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end19:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %12) #14
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %rcu_read_unlock.exit.do.end24_crit_edge
  tail call void @xprt_destroy_backchannel(ptr noundef %12, i32 noundef 1) #11
  %max_slots.i.i.i.i = getelementptr inbounds %struct.nfs4_session, ptr %session, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %max_slots.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_slots.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i.not.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i.not.i.i.i, label %do.end24.nfs4_shutdown_slot_table.exit.i_crit_edge, label %if.end.i.i.i.i

do.end24.nfs4_shutdown_slot_table.exit.i_crit_edge: ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_shutdown_slot_table.exit.i

if.end.i.i.i.i:                                   ; preds = %do.end24
  %slots.i.i.i.i = getelementptr inbounds %struct.nfs4_session, ptr %session, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %slots.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slots.i.i.i.i, align 4
  %tobool2.not18.i.i.i.i = icmp eq ptr %21, null
  br i1 %tobool2.not18.i.i.i.i, label %if.end.i.i.i.i.nfs4_shutdown_slot_table.exit.i_crit_edge, label %if.end.i.i.i.i.while.body3.i.i.i.i_crit_edge

if.end.i.i.i.i.while.body3.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i.i
  br label %while.body3.i.i.i.i

if.end.i.i.i.i.nfs4_shutdown_slot_table.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_shutdown_slot_table.exit.i

while.body3.i.i.i.i:                              ; preds = %while.body3.i.i.i.i.while.body3.i.i.i.i_crit_edge, %if.end.i.i.i.i.while.body3.i.i.i.i_crit_edge
  %22 = phi ptr [ %29, %while.body3.i.i.i.i.while.body3.i.i.i.i_crit_edge ], [ %21, %if.end.i.i.i.i.while.body3.i.i.i.i_crit_edge ]
  %next4.i.i.i.i = getelementptr inbounds %struct.nfs4_slot, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %next4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next4.i.i.i.i, align 4
  %25 = ptrtoint ptr %slots.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %slots.i.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %22) #11
  %26 = ptrtoint ptr %max_slots.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_slots.i.i.i.i, align 4
  %dec6.i.i.i.i = add i32 %27, -1
  store i32 %dec6.i.i.i.i, ptr %max_slots.i.i.i.i, align 4
  %28 = ptrtoint ptr %slots.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slots.i.i.i.i, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i.i.i.i, label %while.body3.i.i.i.i.nfs4_shutdown_slot_table.exit.i_crit_edge, label %while.body3.i.i.i.i.while.body3.i.i.i.i_crit_edge

while.body3.i.i.i.i.while.body3.i.i.i.i_crit_edge: ; preds = %while.body3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body3.i.i.i.i

while.body3.i.i.i.i.nfs4_shutdown_slot_table.exit.i_crit_edge: ; preds = %while.body3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_shutdown_slot_table.exit.i

nfs4_shutdown_slot_table.exit.i:                  ; preds = %while.body3.i.i.i.i.nfs4_shutdown_slot_table.exit.i_crit_edge, %if.end.i.i.i.i.nfs4_shutdown_slot_table.exit.i_crit_edge, %do.end24.nfs4_shutdown_slot_table.exit.i_crit_edge
  %slot_tbl_waitq.i.i = getelementptr inbounds %struct.nfs4_session, ptr %session, i32 0, i32 6, i32 4
  tail call void @rpc_destroy_wait_queue(ptr noundef %slot_tbl_waitq.i.i) #11
  %max_slots.i.i.i2.i = getelementptr inbounds %struct.nfs4_session, ptr %session, i32 0, i32 8, i32 6
  %30 = ptrtoint ptr %max_slots.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_slots.i.i.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not.i.not.i.i3.i = icmp eq i32 %31, 0
  br i1 %cmp.not.i.not.i.i3.i, label %nfs4_shutdown_slot_table.exit.i.nfs4_destroy_session_slot_tables.exit_crit_edge, label %if.end.i.i.i6.i

nfs4_shutdown_slot_table.exit.i.nfs4_destroy_session_slot_tables.exit_crit_edge: ; preds = %nfs4_shutdown_slot_table.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_destroy_session_slot_tables.exit

if.end.i.i.i6.i:                                  ; preds = %nfs4_shutdown_slot_table.exit.i
  %slots.i.i.i4.i = getelementptr inbounds %struct.nfs4_session, ptr %session, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %slots.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %slots.i.i.i4.i, align 4
  %tobool2.not18.i.i.i5.i = icmp eq ptr %33, null
  br i1 %tobool2.not18.i.i.i5.i, label %if.end.i.i.i6.i.nfs4_destroy_session_slot_tables.exit_crit_edge, label %if.end.i.i.i6.i.while.body3.i.i.i10.i_crit_edge

if.end.i.i.i6.i.while.body3.i.i.i10.i_crit_edge:  ; preds = %if.end.i.i.i6.i
  br label %while.body3.i.i.i10.i

if.end.i.i.i6.i.nfs4_destroy_session_slot_tables.exit_crit_edge: ; preds = %if.end.i.i.i6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_destroy_session_slot_tables.exit

while.body3.i.i.i10.i:                            ; preds = %while.body3.i.i.i10.i.while.body3.i.i.i10.i_crit_edge, %if.end.i.i.i6.i.while.body3.i.i.i10.i_crit_edge
  %34 = phi ptr [ %41, %while.body3.i.i.i10.i.while.body3.i.i.i10.i_crit_edge ], [ %33, %if.end.i.i.i6.i.while.body3.i.i.i10.i_crit_edge ]
  %next4.i.i.i7.i = getelementptr inbounds %struct.nfs4_slot, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %next4.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next4.i.i.i7.i, align 4
  %37 = ptrtoint ptr %slots.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %slots.i.i.i4.i, align 4
  tail call void @kfree(ptr noundef nonnull %34) #11
  %38 = ptrtoint ptr %max_slots.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_slots.i.i.i2.i, align 4
  %dec6.i.i.i8.i = add i32 %39, -1
  store i32 %dec6.i.i.i8.i, ptr %max_slots.i.i.i2.i, align 4
  %40 = ptrtoint ptr %slots.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slots.i.i.i4.i, align 4
  %tobool2.not.i.i.i9.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i.i.i9.i, label %while.body3.i.i.i10.i.nfs4_destroy_session_slot_tables.exit_crit_edge, label %while.body3.i.i.i10.i.while.body3.i.i.i10.i_crit_edge

while.body3.i.i.i10.i.while.body3.i.i.i10.i_crit_edge: ; preds = %while.body3.i.i.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body3.i.i.i10.i

while.body3.i.i.i10.i.nfs4_destroy_session_slot_tables.exit_crit_edge: ; preds = %while.body3.i.i.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfs4_destroy_session_slot_tables.exit

nfs4_destroy_session_slot_tables.exit:            ; preds = %while.body3.i.i.i10.i.nfs4_destroy_session_slot_tables.exit_crit_edge, %if.end.i.i.i6.i.nfs4_destroy_session_slot_tables.exit_crit_edge, %nfs4_shutdown_slot_table.exit.i.nfs4_destroy_session_slot_tables.exit_crit_edge
  %slot_tbl_waitq.i11.i = getelementptr inbounds %struct.nfs4_session, ptr %session, i32 0, i32 8, i32 4
  tail call void @rpc_destroy_wait_queue(ptr noundef %slot_tbl_waitq.i11.i) #11
  tail call void @kfree(ptr noundef %session) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_get_clid_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_destroy_session(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_destroy_backchannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_init_session(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_session.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %0 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_session.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %session_state = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %session_state) #11
  %cl_cons_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 2
  %2 = ptrtoint ptr %cl_cons_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_cons_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end2.i_crit_edge

if.end.if.end2.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @nfs4_client_recover_expired_lease(ptr noundef %clp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i4 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i4, label %if.end2thread-pre-split.i, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end2thread-pre-split.i:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %cl_cons_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr.i = load i32, ptr %cl_cons_state.i, align 8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end2thread-pre-split.i, %if.end.if.end2.i_crit_edge
  %5 = phi i32 [ %.pr.i, %if.end2thread-pre-split.i ], [ %3, %if.end.if.end2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.i = icmp slt i32 %5, 0
  br i1 %cmp4.i, label %if.end2.i.return_crit_edge, label %do.end.i

if.end2.i.return_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  br label %return

return:                                           ; preds = %do.end.i, %if.end2.i.return_crit_edge, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %do.end.i ], [ %call.i, %if.then.i.return_crit_edge ], [ -93, %if.end2.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_init_ds_session(ptr noundef %clp, i32 noundef %lease_time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_session = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %0 = ptrtoint ptr %cl_session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_session, align 4
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #11
  %session_state = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %session_state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cl_lease_time = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 24
  %2 = ptrtoint ptr %cl_lease_time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %lease_time, ptr %cl_lease_time, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %cl_last_renewal = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 25
  %4 = ptrtoint ptr %cl_last_renewal to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cl_last_renewal, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #11
  %cl_cons_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 2
  %5 = ptrtoint ptr %cl_cons_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cl_cons_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end2.i_crit_edge

if.end.if.end2.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @nfs4_client_recover_expired_lease(ptr noundef %clp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2thread-pre-split.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2thread-pre-split.i:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %cl_cons_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr.i = load i32, ptr %cl_cons_state.i, align 8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end2thread-pre-split.i, %if.end.if.end2.i_crit_edge
  %8 = phi i32 [ %.pr.i, %if.end2thread-pre-split.i ], [ %6, %if.end.if.end2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4.i = icmp slt i32 %8, 0
  br i1 %cmp4.i, label %if.end2.i.cleanup_crit_edge, label %if.end5

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  %cl_exchange_flags.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 35
  %9 = ptrtoint ptr %cl_exchange_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl_exchange_flags.i, align 8
  %and.i = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %. = select i1 %tobool.i.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end2.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end5 ], [ -93, %if.end2.i.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_priority_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_wake_up_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nfs41_assign_slot(ptr nocapture noundef readonly %task, ptr noundef %pslot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rpc_argp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %rpc_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpc_argp, align 4
  %rpc_resp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %rpc_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpc_resp, align 4
  %4 = ptrtoint ptr %pslot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pslot, align 4
  %slot_tbl_state.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %slot_tbl_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %slot_tbl_state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sa_privileged = getelementptr inbounds %struct.nfs4_sequence_args, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %sa_privileged to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %sa_privileged, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %generation = getelementptr inbounds %struct.nfs4_slot_table, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generation, align 4
  %generation2 = getelementptr inbounds %struct.nfs4_slot, ptr %pslot, i32 0, i32 2
  %12 = ptrtoint ptr %generation2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %generation2, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pslot, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sr_timestamp = getelementptr inbounds %struct.nfs4_sequence_res, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %sr_timestamp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sr_timestamp, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pslot, ptr %3, align 4
  %sr_status_flags = getelementptr inbounds %struct.nfs4_sequence_res, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %sr_status_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sr_status_flags, align 4
  %sr_status = getelementptr inbounds %struct.nfs4_sequence_res, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %sr_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %sr_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_client_recover_expired_lease(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !27, !29, !30, !31, !32, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs4session.c", i32 100, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs4_free_slot._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs4_free_slot._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs4session.c", i32 247, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nfs4_alloc_slot._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @nfs4_alloc_slot._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nfs/nfs4session.c", i32 256, i32 2}
!13 = !{ptr @nfs4_alloc_slot._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @nfs4_alloc_slot._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfs/nfs4session.c", i32 541, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nfs4_setup_session_slot_tables._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @nfs4_setup_session_slot_tables._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfs/nfs4session.c", i32 567, i32 48}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfs/nfs4session.c", i32 568, i32 48}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../fs/nfs/nfs4session.c", i32 591, i32 9}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/nfs/nfs4session.c", i32 593, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nfs4_destroy_session._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @nfs4_destroy_session._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_nfs4_init_ds_session, !33, !"__ksymtab_nfs4_init_ds_session", i1 false, i1 false}
!33 = !{!"../fs/nfs/nfs4session.c", i32 655, i32 1}
!34 = !{ptr @nfs4_init_slot_table.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../fs/nfs/nfs4session.c", i32 30, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nfs4_init_slot_table.__key.16, !38, !"__key", i1 false, i1 false}
!38 = !{!"../fs/nfs/nfs4session.c", i32 32, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @init_completion.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/completion.h", i32 87, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/nfs/nfs4session.c", i32 302, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nfs4_realloc_slot_table._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfs4_realloc_slot_table._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/nfs/nfs4session.c", i32 316, i32 2}
!50 = !{ptr @nfs4_realloc_slot_table._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nfs4_realloc_slot_table._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/nfs/nfs4session.c", i32 319, i32 2}
!54 = !{ptr @nfs4_realloc_slot_table._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nfs4_realloc_slot_table._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/cred.h", i32 286, i32 3}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2148313526}
!78 = !{i64 2148228259, i64 2148228291, i64 2148228320, i64 2148228354, i64 2148228385, i64 2148228408}
!79 = !{i64 2148313755}
!80 = !{i64 2149932737}
!81 = !{i64 2149933003}
!82 = !{i64 2157712548}
