; ModuleID = '/llk/IR_all_yes/net/core/bpf_sk_storage.c_pt.bc'
source_filename = "../net/core/bpf_sk_storage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bpf_sk_storage_diag_free\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_sk_storage_diag_free\09\09\09\09"
module asm "\09.long\09__crc_bpf_sk_storage_diag_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_sk_storage_diag_free:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_sk_storage_diag_free\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_sk_storage_diag_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_sk_storage_diag_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_sk_storage_diag_alloc\09\09\09\09"
module asm "\09.long\09__crc_bpf_sk_storage_diag_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_sk_storage_diag_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_sk_storage_diag_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_sk_storage_diag_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_sk_storage_diag_put\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_sk_storage_diag_put\09\09\09\09"
module asm "\09.long\09__crc_bpf_sk_storage_diag_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_sk_storage_diag_put:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_sk_storage_diag_put\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_sk_storage_diag_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.188, %union.anon.189, ptr, ptr }
%union.anon.188 = type { %struct.anon.187 }
%struct.anon.187 = type { i32, i32, i32, i32, i32 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_local_storage_cache = type { %struct.spinlock, [16 x i64] }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.bpf_iter_reg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.bpf_ctx_arg_aux], ptr }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_iter_seq_info = type { ptr, ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.157, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.158, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.159, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.153, [0 x i32], %union.anon.154, i16, i16, %union.anon.155, %struct.refcount_struct, [0 x i32], %union.anon.156 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { %struct.hlist_node }
%union.anon.155 = type { i32 }
%union.anon.156 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.157 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.158 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.159 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.bpf_local_storage = type { [16 x ptr], %struct.hlist_head, ptr, %struct.callback_head, %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.bpf_local_storage_elem = type { %struct.hlist_node, %struct.hlist_node, ptr, %struct.callback_head, [100 x i8], %struct.bpf_local_storage_data, [120 x i8] }
%struct.bpf_local_storage_data = type { ptr, [4 x i8], [0 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bpf_local_storage_map = type { %struct.bpf_map, ptr, i32, i16, i16, [116 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.101 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { %struct.anon.103, [0 x %struct.sock_filter] }
%struct.anon.103 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.100 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.100 = type { %struct.work_struct }
%struct.bpf_sk_storage_diag = type { i32, [0 x ptr] }
%struct.nlattr = type { i16, i16 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.bpf_iter__bpf_sk_storage_map = type { %union.anon.202, %union.anon.203, %union.anon.204, %union.anon.205 }
%union.anon.202 = type { i64 }
%union.anon.203 = type { i64 }
%union.anon.204 = type { i64 }
%union.anon.205 = type { i64 }
%struct.bpf_iter_meta = type { %union.anon.191, i64, i64 }
%union.anon.191 = type { i64 }
%struct.bpf_iter_seq_sk_storage_map_info = type { ptr, i32, i32 }
%struct.bpf_local_storage_map_bucket = type { %struct.hlist_head, %struct.raw_spinlock }

@bpf_sk_storage_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/core/bpf_sk_storage.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@bpf_sk_storage_clone.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_sk_storage_clone.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@bpf_sk_storage_clone.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_sk_storage_clone.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bpf_local_storage_map\00", [42 x i8] zeroinitializer }, align 32
@sk_storage_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sk_storage_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @bpf_local_storage_map_alloc_check, ptr @bpf_sk_storage_map_alloc, ptr null, ptr @bpf_sk_storage_map_free, ptr @notsupp_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_fd_sk_storage_lookup_elem, ptr @bpf_fd_sk_storage_update_elem, ptr @bpf_fd_sk_storage_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_local_storage_map_check_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_sk_storage_charge, ptr @bpf_sk_storage_uncharge, ptr @bpf_sk_storage_ptr, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str.6, ptr @sk_storage_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@bpf_sk_storage_get_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sk_storage_get, i8 0, i8 0, i32 258, %union.anon.188 { %struct.anon.187 { i32 1, i32 19, i32 259, i32 10, i32 0 } }, %union.anon.189 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_sk_storage_get_cg_sock_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sk_storage_get, i8 0, i8 0, i32 258, %union.anon.188 { %struct.anon.187 { i32 1, i32 9, i32 259, i32 10, i32 0 } }, %union.anon.189 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_sk_storage_delete_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sk_storage_delete, i8 0, i8 0, i32 0, %union.anon.188 { %struct.anon.187 { i32 1, i32 19, i32 0, i32 0, i32 0 } }, %union.anon.189 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@btf_sock_ids = external dso_local global [0 x i32], align 4
@bpf_sk_storage_get_tracing_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sk_storage_get_tracing, i8 0, i8 0, i32 258, %union.anon.188 { %struct.anon.187 { i32 1, i32 16, i32 259, i32 10, i32 0 } }, %union.anon.189 { %struct.anon.190 { ptr null, ptr getelementptr (i8, ptr @btf_sock_ids, i64 24), ptr null, ptr null, ptr null } }, ptr null, ptr @bpf_sk_storage_tracing_allowed }, [36 x i8] zeroinitializer }, align 32
@bpf_sk_storage_delete_tracing_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sk_storage_delete_tracing, i8 0, i8 0, i32 0, %union.anon.188 { %struct.anon.187 { i32 1, i32 16, i32 0, i32 0, i32 0 } }, %union.anon.189 { %struct.anon.190 { ptr null, ptr getelementptr (i8, ptr @btf_sock_ids, i64 24), ptr null, ptr null, ptr null } }, ptr null, ptr @bpf_sk_storage_tracing_allowed }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_bpf_sk_storage_diag_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_sk_storage_diag_free = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_sk_storage_diag_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_sk_storage_diag_free to i32), ptr @__kstrtab_bpf_sk_storage_diag_free, ptr @__kstrtabns_bpf_sk_storage_diag_free }, section "___ksymtab_gpl+bpf_sk_storage_diag_free", align 4
@__kstrtab_bpf_sk_storage_diag_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_sk_storage_diag_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_sk_storage_diag_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_sk_storage_diag_alloc to i32), ptr @__kstrtab_bpf_sk_storage_diag_alloc, ptr @__kstrtabns_bpf_sk_storage_diag_alloc }, section "___ksymtab_gpl+bpf_sk_storage_diag_alloc", align 4
@bpf_sk_storage_diag_put.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_bpf_sk_storage_diag_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_sk_storage_diag_put = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_sk_storage_diag_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_sk_storage_diag_put to i32), ptr @__kstrtab_bpf_sk_storage_diag_put, ptr @__kstrtabns_bpf_sk_storage_diag_put }, section "___ksymtab_gpl+bpf_sk_storage_diag_put", align 4
@__initcall__kmod_bpf_sk_storage__558_949_bpf_sk_storage_map_iter_init7 = internal global ptr @bpf_sk_storage_map_iter_init, section ".initcall7.init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@____bpf_sk_storage_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@bpf_sk_storage_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@____bpf_sk_storage_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sk_cache = internal global { %struct.bpf_local_storage_cache, [48 x i8] } { %struct.bpf_local_storage_cache { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [16 x i64] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sk_cache.idx_lock\00", [46 x i8] zeroinitializer }, align 32
@sysctl_optmem_max = external dso_local local_unnamed_addr global i32, align 4
@____bpf_sk_storage_get_tracing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@____bpf_sk_storage_delete_tracing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpf_sk_storage\00", [17 x i8] zeroinitializer }, align 32
@bpf_sk_storage_diag_put_all.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_sk_storage_diag_put_all.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_sk_storage_diag_put_all.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@diag_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@bpf_sk_storage_map_reg_info = internal global { %struct.bpf_iter_reg, [36 x i8] } { %struct.bpf_iter_reg { ptr @.str.15, ptr @bpf_iter_attach_map, ptr @bpf_iter_detach_map, ptr @bpf_iter_map_show_fdinfo, ptr @bpf_iter_map_fill_link_info, ptr null, i32 2, i32 0, [2 x %struct.bpf_ctx_arg_aux] [%struct.bpf_ctx_arg_aux { i32 16, i32 272, i32 0 }, %struct.bpf_ctx_arg_aux { i32 24, i32 274, i32 0 }], ptr @iter_seq_info }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bpf_sk_storage_map\00", [45 x i8] zeroinitializer }, align 32
@iter_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @bpf_sk_storage_map_seq_ops, ptr @bpf_iter_init_sk_storage_map, ptr null, i32 12 }, [16 x i8] zeroinitializer }, align 32
@bpf_sk_storage_map_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @bpf_sk_storage_map_seq_start, ptr @bpf_sk_storage_map_seq_stop, ptr @bpf_sk_storage_map_seq_next, ptr @bpf_sk_storage_map_seq_show }, [16 x i8] zeroinitializer }, align 32
@bpf_sk_storage_map_seq_find_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_sk_storage_map_seq_find_next.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_sk_storage_map_seq_find_next.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_sk_storage_map_seq_find_next.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__bpf_sk_storage_map_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 23, i64 24, i64 25, i64 28]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 57, i32 15 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 204, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 351, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"sk_storage_map_btf_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 340, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"sk_storage_map_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 341, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"bpf_sk_storage_get_proto\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 358, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant [33 x i8] c"bpf_sk_storage_get_cg_sock_proto\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 368, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"bpf_sk_storage_delete_proto\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 378, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [33 x i8] c"bpf_sk_storage_get_tracing_proto\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 440, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [36 x i8] c"bpf_sk_storage_delete_tracing_proto\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 452, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 695, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 723, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"sk_cache\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 18, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 411, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 991, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"bpf_sk_storage_map_reg_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 927, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 928, i32 14 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"iter_seq_info\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 920, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"bpf_sk_storage_map_seq_ops\00", align 1
@___asan_gen_.83 = private constant [29 x i8] c"../net/core/bpf_sk_storage.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 913, i32 36 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__initcall__kmod_bpf_sk_storage__558_949_bpf_sk_storage_map_iter_init7, ptr @__ksymtab_bpf_sk_storage_diag_alloc, ptr @__ksymtab_bpf_sk_storage_diag_free, ptr @__ksymtab_bpf_sk_storage_diag_put, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.6, ptr @sk_storage_map_btf_id, ptr @sk_storage_map_ops, ptr @bpf_sk_storage_get_proto, ptr @bpf_sk_storage_get_cg_sock_proto, ptr @bpf_sk_storage_delete_proto, ptr @bpf_sk_storage_get_tracing_proto, ptr @bpf_sk_storage_delete_tracing_proto, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sk_cache, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @bpf_sk_storage_map_reg_info, ptr @.str.15, ptr @iter_seq_info, ptr @bpf_sk_storage_map_seq_ops], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sk_storage_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sk_storage_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sk_storage_get_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sk_storage_get_cg_sock_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sk_storage_delete_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sk_storage_get_tracing_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sk_storage_delete_tracing_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sk_cache to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sk_storage_map_reg_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iter_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sk_storage_map_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_sk_storage_free(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_bpf_storage = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 84
  %4 = ptrtoint ptr %sk_bpf_storage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_bpf_storage, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b58 = load i1, ptr @bpf_sk_storage_free.__warned, align 1
  br i1 %.b58, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 57, ptr noundef nonnull @.str.1) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  %call.i59 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i59, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i62

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i62:                                ; preds = %if.then10
  %call1.i60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %6 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i66 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i67, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %lock = getelementptr inbounds %struct.bpf_local_storage, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %tobool13.not = icmp eq ptr %11, null
  %add.ptr = getelementptr i8, ptr %11, i32 -8
  %tobool15.not8183 = icmp eq ptr %add.ptr, null
  %tobool15.not81 = or i1 %tobool13.not, %tobool15.not8183
  br i1 %tobool15.not81, label %if.end11.for.end_crit_edge, label %if.end11.land.rhs_crit_edge

if.end11.land.rhs_crit_edge:                      ; preds = %if.end11
  br label %land.rhs

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %if.end11.land.rhs_crit_edge
  %selem.082 = phi ptr [ %add.ptr25, %land.rhs.land.rhs_crit_edge ], [ %add.ptr, %if.end11.land.rhs_crit_edge ]
  %snode = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.082, i32 0, i32 1
  %12 = ptrtoint ptr %snode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %snode, align 8
  tail call void @bpf_selem_unlink_map(ptr noundef nonnull %selem.082) #13
  %call18 = tail call zeroext i1 @bpf_selem_unlink_storage_nolock(ptr noundef nonnull %5, ptr noundef nonnull %selem.082, i1 noundef zeroext true) #13
  %tobool21.not = icmp eq ptr %13, null
  %add.ptr25 = getelementptr i8, ptr %13, i32 -8
  %tobool15.not84 = icmp eq ptr %add.ptr25, null
  %tobool15.not = or i1 %tobool21.not, %tobool15.not84
  br i1 %tobool15.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %if.end11.for.end_crit_edge
  %free_sk_storage.0.off0.lcssa = phi i1 [ false, %if.end11.for.end_crit_edge ], [ %call18, %land.rhs.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %call.i68 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i68, label %for.end.rcu_read_unlock.exit78_crit_edge, label %land.lhs.true.i71

for.end.rcu_read_unlock.exit78_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit78

land.lhs.true.i71:                                ; preds = %for.end
  %call1.i69 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i71.rcu_read_unlock.exit78_crit_edge, label %land.lhs.true2.i73

land.lhs.true.i71.rcu_read_unlock.exit78_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit78

land.lhs.true2.i73:                               ; preds = %land.lhs.true.i71
  %.b4.i72 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i72, label %land.lhs.true2.i73.rcu_read_unlock.exit78_crit_edge, label %if.then.i74

land.lhs.true2.i73.rcu_read_unlock.exit78_crit_edge: ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit78

if.then.i74:                                      ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit78

rcu_read_unlock.exit78:                           ; preds = %if.then.i74, %land.lhs.true2.i73.rcu_read_unlock.exit78_crit_edge, %land.lhs.true.i71.rcu_read_unlock.exit78_crit_edge, %for.end.rcu_read_unlock.exit78_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %14 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i75 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i75 to ptr
  %preempt_count.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i76, align 4
  %sub.i.i.i77 = add i32 %17, -1
  store volatile i32 %sub.i.i.i77, ptr %preempt_count.i.i.i.i76, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %free_sk_storage.0.off0.lcssa, label %do.end37, label %rcu_read_unlock.exit78.cleanup_crit_edge

rcu_read_unlock.exit78.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end37:                                         ; preds = %rcu_read_unlock.exit78
  call void @__sanitizer_cov_trace_pc() #15
  %rcu = getelementptr inbounds %struct.bpf_local_storage, ptr %5, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 72 to ptr)) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %rcu_read_unlock.exit78.cleanup_crit_edge, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_selem_unlink_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_selem_unlink_storage_nolock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_sk_storage_clone(ptr noundef %sk, ptr noundef %newsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_bpf_storage = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 84
  %0 = ptrtoint ptr %sk_bpf_storage to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr null, ptr %sk_bpf_storage, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_bpf_storage13 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 84
  %5 = ptrtoint ptr %sk_bpf_storage13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %sk_bpf_storage13, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end20_crit_edge

rcu_read_lock.exit.do.end20_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true17

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b158 = load i1, ptr @bpf_sk_storage_clone.__warned, align 1
  br i1 %.b158, label %land.lhs.true17.do.end20_crit_edge, label %if.then

land.lhs.true17.do.end20_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

if.then:                                          ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_clone.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 199, ptr noundef nonnull @.str.1) #13
  br label %do.end20

do.end20:                                         ; preds = %if.then, %land.lhs.true17.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %rcu_read_lock.exit.do.end20_crit_edge
  %tobool22.not = icmp eq ptr %6, null
  br i1 %tobool22.not, label %do.end20.out_crit_edge, label %lor.lhs.false

do.end20.out_crit_edge:                           ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %do.end20
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %list, align 4
  %tobool.not.i160.not = icmp eq ptr %8, null
  br i1 %tobool.not.i160.not, label %lor.lhs.false.out_crit_edge, label %do.body27

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body27:                                        ; preds = %lor.lhs.false
  %call28 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %do.body27.do.end38_crit_edge

do.body27.do.end38_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

land.lhs.true30:                                  ; preds = %do.body27
  %call31 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.do.end38_crit_edge, label %land.lhs.true33

land.lhs.true30.do.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %.b152157 = load i1, ptr @bpf_sk_storage_clone.__warned.2, align 1
  br i1 %.b152157, label %land.lhs.true33.do.end38_crit_edge, label %if.then35

land.lhs.true33.do.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_clone.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.3) #13
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %land.lhs.true33.do.end38_crit_edge, %land.lhs.true30.do.end38_crit_edge, %do.body27.do.end38_crit_edge
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %list, align 4
  %tobool46.not = icmp eq ptr %10, null
  %add.ptr = getelementptr i8, ptr %10, i32 -8
  %tobool48.not182190 = icmp eq ptr %add.ptr, null
  %tobool48.not182 = or i1 %tobool46.not, %tobool48.not182190
  br i1 %tobool48.not182, label %do.end38.out_crit_edge, label %do.end38.for.body_crit_edge

do.end38.for.body_crit_edge:                      ; preds = %do.end38
  br label %for.body

do.end38.out_crit_edge:                           ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end38.for.body_crit_edge
  %new_sk_storage.0185 = phi ptr [ %new_sk_storage.2.ph, %for.inc.for.body_crit_edge ], [ null, %do.end38.for.body_crit_edge ]
  %selem.0183 = phi ptr [ %add.ptr117, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end38.for.body_crit_edge ]
  %sdata = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0183, i32 0, i32 5
  %11 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %sdata, align 128
  %call55 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %for.body.do.end65_crit_edge

for.body.do.end65_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65

land.lhs.true57:                                  ; preds = %for.body
  %call58 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true57.do.end65_crit_edge, label %land.lhs.true60

land.lhs.true57.do.end65_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %.b153156 = load i1, ptr @bpf_sk_storage_clone.__warned.4, align 1
  br i1 %.b153156, label %land.lhs.true60.do.end65_crit_edge, label %if.then62

land.lhs.true60.do.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_clone.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @.str.1) #13
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %land.lhs.true60.do.end65_crit_edge, %land.lhs.true57.do.end65_crit_edge, %for.body.do.end65_crit_edge
  %map_flags = getelementptr inbounds %struct.bpf_map, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %map_flags, align 8
  %and = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %do.end65.for.inc_crit_edge, label %if.end70

do.end65.for.inc_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end70:                                         ; preds = %do.end65
  %call72 = tail call ptr @bpf_map_inc_not_zero(ptr noundef %12) #13
  %cmp.i = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end70.for.inc_crit_edge, label %if.end75

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end75:                                         ; preds = %if.end70
  %call.i161 = tail call ptr @bpf_selem_alloc(ptr noundef %12, ptr noundef %newsk, ptr noundef null, i1 noundef zeroext true) #13
  %tobool.not.i162 = icmp eq ptr %call.i161, null
  br i1 %tobool.not.i162, label %if.end75.out.sink.split_crit_edge, label %if.end.i

if.end75.out.sink.split_crit_edge:                ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

if.end.i:                                         ; preds = %if.end75
  %spin_lock_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %spin_lock_off.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %spin_lock_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.i = icmp sgt i32 %16, -1
  %data.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %call.i161, i32 0, i32 6
  %data5.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0183, i32 0, i32 6
  br i1 %cmp.i.i, label %if.then2.i, label %if.end.thread.i.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @copy_map_value_locked(ptr noundef %12, ptr noundef %data.i, ptr noundef %data5.i, i1 noundef zeroext true) #13
  br label %if.end79

if.end.thread.i.i:                                ; preds = %if.end.i
  %timer_off.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %12, i32 0, i32 10
  %17 = ptrtoint ptr %timer_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timer_off.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i69.i.i = icmp sgt i32 %18, -1
  br i1 %cmp.i69.i.i, label %if.end26.i.i, label %if.else.i.i, !prof !101

if.end26.i.i:                                     ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = call ptr @memcpy(ptr %data.i, ptr %data5.i, i32 %18)
  %add.ptr31.i.i = getelementptr %struct.bpf_local_storage_elem, ptr %call.i161, i32 0, i32 6, i32 16
  %add.ptr32.i.i = getelementptr i8, ptr %add.ptr31.i.i, i32 %18
  %add.ptr33.i.i = getelementptr %struct.bpf_local_storage_elem, ptr %selem.0183, i32 0, i32 6, i32 16
  %add.ptr34.i.i = getelementptr i8, ptr %add.ptr33.i.i, i32 %18
  %value_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %12, i32 0, i32 5
  %20 = ptrtoint ptr %value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value_size.i.i, align 4
  %.neg23.i = sub nuw i32 -16, %18
  %sub36.i.i = add i32 %.neg23.i, %21
  %22 = call ptr @memcpy(ptr %add.ptr32.i.i, ptr %add.ptr34.i.i, i32 %sub36.i.i)
  br label %if.end79

if.else.i.i:                                      ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %value_size37.i.i = getelementptr inbounds %struct.bpf_map, ptr %12, i32 0, i32 5
  %23 = ptrtoint ptr %value_size37.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value_size37.i.i, align 4
  %25 = call ptr @memcpy(ptr %data.i, ptr %data5.i, i32 %24)
  br label %if.end79

if.end79:                                         ; preds = %if.else.i.i, %if.end26.i.i, %if.then2.i
  %tobool80.not = icmp eq ptr %new_sk_storage.0185, null
  br i1 %tobool80.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_selem_link_map(ptr noundef %12, ptr noundef nonnull %call.i161) #13
  tail call void @bpf_selem_link_storage_nolock(ptr noundef nonnull %new_sk_storage.0185, ptr noundef nonnull %call.i161) #13
  br label %if.end103

if.else:                                          ; preds = %if.end79
  %call82 = tail call i32 @bpf_local_storage_alloc(ptr noundef %newsk, ptr noundef %12, ptr noundef nonnull %call.i161) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call.i161) #13
  %elem_size = getelementptr inbounds %struct.bpf_local_storage_map, ptr %12, i32 0, i32 3
  %26 = ptrtoint ptr %elem_size to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %elem_size, align 8
  %conv = zext i16 %27 to i32
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 %conv, ptr elementtype(i32) %sk_omem_alloc) #13, !srcloc !102
  br label %out.sink.split

if.end85:                                         ; preds = %if.else
  %local_storage = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %call.i161, i32 0, i32 2
  %29 = ptrtoint ptr %local_storage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %local_storage, align 16
  %call91 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true93, label %if.end85.if.end103_crit_edge

if.end85.if.end103_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

land.lhs.true93:                                  ; preds = %if.end85
  %call94 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %land.lhs.true93.if.end103_crit_edge, label %land.lhs.true96

land.lhs.true93.if.end103_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

land.lhs.true96:                                  ; preds = %land.lhs.true93
  %.b154155 = load i1, ptr @bpf_sk_storage_clone.__warned.5, align 1
  br i1 %.b154155, label %land.lhs.true96.if.end103_crit_edge, label %if.then98

land.lhs.true96.if.end103_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then98:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_clone.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @.str.1) #13
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %land.lhs.true96.if.end103_crit_edge, %land.lhs.true93.if.end103_crit_edge, %if.end85.if.end103_crit_edge, %if.then81
  %new_sk_storage.1 = phi ptr [ %new_sk_storage.0185, %if.then81 ], [ %30, %if.then98 ], [ %30, %land.lhs.true96.if.end103_crit_edge ], [ %30, %land.lhs.true93.if.end103_crit_edge ], [ %30, %if.end85.if.end103_crit_edge ]
  tail call void @bpf_map_put(ptr noundef %call72) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end103, %if.end70.for.inc_crit_edge, %do.end65.for.inc_crit_edge
  %new_sk_storage.2.ph = phi ptr [ %new_sk_storage.0185, %if.end70.for.inc_crit_edge ], [ %new_sk_storage.0185, %do.end65.for.inc_crit_edge ], [ %new_sk_storage.1, %if.end103 ]
  %snode = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0183, i32 0, i32 1
  %31 = ptrtoint ptr %snode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %snode, align 8
  %tobool113.not = icmp eq ptr %32, null
  %add.ptr117 = getelementptr i8, ptr %32, i32 -8
  %tobool48.not195 = icmp eq ptr %add.ptr117, null
  %tobool48.not = or i1 %tobool113.not, %tobool48.not195
  br i1 %tobool48.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.sink.split:                                   ; preds = %if.then84, %if.end75.out.sink.split_crit_edge
  %ret.3.ph = phi i32 [ %call82, %if.then84 ], [ -12, %if.end75.out.sink.split_crit_edge ]
  tail call void @bpf_map_put(ptr noundef %call72) #13
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc.out_crit_edge, %do.end38.out_crit_edge, %lor.lhs.false.out_crit_edge, %do.end20.out_crit_edge
  %ret.3 = phi i32 [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %do.end20.out_crit_edge ], [ 0, %do.end38.out_crit_edge ], [ %ret.3.ph, %out.sink.split ], [ 0, %for.inc.out_crit_edge ]
  %call.i163 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i163, label %out.cleanup121_crit_edge, label %land.lhs.true.i166

out.cleanup121_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup121

land.lhs.true.i166:                               ; preds = %out
  %call1.i164 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i164)
  %tobool.not.i165 = icmp eq i32 %call1.i164, 0
  br i1 %tobool.not.i165, label %land.lhs.true.i166.cleanup121_crit_edge, label %land.lhs.true2.i168

land.lhs.true.i166.cleanup121_crit_edge:          ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup121

land.lhs.true2.i168:                              ; preds = %land.lhs.true.i166
  %.b4.i167 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i167, label %land.lhs.true2.i168.cleanup121_crit_edge, label %if.then.i169

land.lhs.true2.i168.cleanup121_crit_edge:         ; preds = %land.lhs.true2.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup121

if.then.i169:                                     ; preds = %land.lhs.true2.i168
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %cleanup121

cleanup121:                                       ; preds = %if.then.i169, %land.lhs.true2.i168.cleanup121_crit_edge, %land.lhs.true.i166.cleanup121_crit_edge, %out.cleanup121_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %33 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i170 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i170 to ptr
  %preempt_count.i.i.i.i171 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i171, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i171, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_inc_not_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_selem_link_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_selem_link_storage_nolock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_local_storage_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_sk_storage_get(i64 noundef %map, i64 noundef %sk, i64 noundef %value, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %sk to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %value to i32
  %2 = inttoptr i32 %conv2 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end33.i_crit_edge

entry.if.end33.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i, label %land.rhs.i, label %lor.rhs.i.if.end33.i_crit_edge

lor.rhs.i.if.end33.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %.b75.i = load i1, ptr @____bpf_sk_storage_get.__already_done, align 1
  br i1 %.b75.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then.i, !prof !103

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @____bpf_sk_storage_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef null) #13
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end33.i_crit_edge, %lor.rhs.i.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge, %entry.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool41.not.i = icmp eq i32 %conv1, 0
  br i1 %tobool41.not.i, label %if.end33.i.____bpf_sk_storage_get.exit_crit_edge, label %lor.lhs.false42.i

if.end33.i.____bpf_sk_storage_get.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get.exit

lor.lhs.false42.i:                                ; preds = %if.end33.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %flags)
  %cmp.i = icmp ugt i64 %flags, 1
  %or.cond.i = or i1 %cmp.i, %tobool.i.not.i
  br i1 %or.cond.i, label %lor.lhs.false42.i.____bpf_sk_storage_get.exit_crit_edge, label %if.end46.i

lor.lhs.false42.i.____bpf_sk_storage_get.exit_crit_edge: ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get.exit

if.end46.i:                                       ; preds = %lor.lhs.false42.i
  %call47.i = tail call fastcc ptr @bpf_sk_storage_lookup(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext true) #13
  %tobool48.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool48.not.i, label %if.end50.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  %data.i = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call47.i, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  br label %____bpf_sk_storage_get.exit

if.end50.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %flags)
  %cmp51.i = icmp eq i64 %flags, 1
  br i1 %cmp51.i, label %land.lhs.true.i, label %if.end50.i.____bpf_sk_storage_get.exit_crit_edge

if.end50.i.____bpf_sk_storage_get.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get.exit

land.lhs.true.i:                                  ; preds = %if.end50.i
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %8 = phi i32 [ %7, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !104
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !103

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !103

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 0) #13
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not.i = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.____bpf_sk_storage_get.exit_crit_edge, label %if.then55.i

refcount_inc_not_zero.exit.i.____bpf_sk_storage_get.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get.exit

if.then55.i:                                      ; preds = %refcount_inc_not_zero.exit.i
  %call56.i = call ptr @bpf_local_storage_update(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %2, i64 noundef 1) #13
  %call.i.i.i.i.i.i79.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !106
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !103

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %sock_put.exit.i

if.then.i.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !107
  call void @sk_free(ptr noundef nonnull %1) #13
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  %cmp.i.i = icmp ugt ptr %call56.i, inttoptr (i32 -4096 to ptr)
  %data59.i = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call56.i, i32 0, i32 2
  %19 = ptrtoint ptr %data59.i to i32
  %cond.i = select i1 %cmp.i.i, i32 0, i32 %19
  br label %____bpf_sk_storage_get.exit

____bpf_sk_storage_get.exit:                      ; preds = %sock_put.exit.i, %refcount_inc_not_zero.exit.i.____bpf_sk_storage_get.exit_crit_edge, %if.end50.i.____bpf_sk_storage_get.exit_crit_edge, %if.then49.i, %lor.lhs.false42.i.____bpf_sk_storage_get.exit_crit_edge, %if.end33.i.____bpf_sk_storage_get.exit_crit_edge
  %retval.0.shrunk.i = phi i32 [ %5, %if.then49.i ], [ %cond.i, %sock_put.exit.i ], [ 0, %lor.lhs.false42.i.____bpf_sk_storage_get.exit_crit_edge ], [ 0, %if.end33.i.____bpf_sk_storage_get.exit_crit_edge ], [ 0, %refcount_inc_not_zero.exit.i.____bpf_sk_storage_get.exit_crit_edge ], [ 0, %if.end50.i.____bpf_sk_storage_get.exit_crit_edge ]
  %retval.0.i = zext i32 %retval.0.shrunk.i to i64
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_sk_storage_delete(i64 noundef %map, i64 noundef %sk, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %sk to i32
  %1 = inttoptr i32 %conv1 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end33.i_crit_edge

entry.if.end33.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i, label %land.rhs.i, label %lor.rhs.i.if.end33.i_crit_edge

lor.rhs.i.if.end33.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %.b56.i = load i1, ptr @____bpf_sk_storage_delete.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then.i, !prof !103

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @____bpf_sk_storage_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef null) #13
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end33.i_crit_edge, %lor.rhs.i.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge, %entry.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool41.not.i = icmp eq i32 %conv1, 0
  br i1 %tobool41.not.i, label %if.end33.i.____bpf_sk_storage_delete.exit_crit_edge, label %lor.lhs.false42.i

if.end33.i.____bpf_sk_storage_delete.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_delete.exit

lor.lhs.false42.i:                                ; preds = %if.end33.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %3 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false42.i.____bpf_sk_storage_delete.exit_crit_edge, label %if.end45.i

lor.lhs.false42.i.____bpf_sk_storage_delete.exit_crit_edge: ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_delete.exit

if.end45.i:                                       ; preds = %lor.lhs.false42.i
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end45.i
  %6 = phi i32 [ %5, %if.end45.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 %9, i32 %add.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !104
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !103

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !103

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 0) #13
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.not.i = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.____bpf_sk_storage_delete.exit_crit_edge, label %if.then47.i

refcount_inc_not_zero.exit.i.____bpf_sk_storage_delete.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_delete.exit

if.then47.i:                                      ; preds = %refcount_inc_not_zero.exit.i
  %call.i.i = call fastcc ptr @bpf_sk_storage_lookup(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext false) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then47.i.bpf_sk_storage_del.exit.i_crit_edge, label %if.end.i.i

if.then47.i.bpf_sk_storage_del.exit.i_crit_edge:  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bpf_sk_storage_del.exit.i

if.end.i.i:                                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -128
  call void @bpf_selem_unlink(ptr noundef %add.ptr.i.i) #13
  br label %bpf_sk_storage_del.exit.i

bpf_sk_storage_del.exit.i:                        ; preds = %if.end.i.i, %if.then47.i.bpf_sk_storage_del.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ -2, %if.then47.i.bpf_sk_storage_del.exit.i_crit_edge ]
  %call.i.i.i.i.i.i60.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !106
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %bpf_sk_storage_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !103

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %sock_put.exit.i

if.then.i.i:                                      ; preds = %bpf_sk_storage_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !107
  call void @sk_free(ptr noundef nonnull %1) #13
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  %conv.i = sext i32 %retval.0.i.i to i64
  br label %____bpf_sk_storage_delete.exit

____bpf_sk_storage_delete.exit:                   ; preds = %sock_put.exit.i, %refcount_inc_not_zero.exit.i.____bpf_sk_storage_delete.exit_crit_edge, %lor.lhs.false42.i.____bpf_sk_storage_delete.exit_crit_edge, %if.end33.i.____bpf_sk_storage_delete.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %sock_put.exit.i ], [ -22, %lor.lhs.false42.i.____bpf_sk_storage_delete.exit_crit_edge ], [ -22, %if.end33.i.____bpf_sk_storage_delete.exit_crit_edge ], [ -2, %refcount_inc_not_zero.exit.i.____bpf_sk_storage_delete.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_local_storage_map_alloc_check(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_sk_storage_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bpf_local_storage_map_alloc(ptr noundef %attr) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call zeroext i16 @bpf_local_storage_cache_idx_get(ptr noundef nonnull @sk_cache) #13
  %cache_idx = getelementptr inbounds %struct.bpf_local_storage_map, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %cache_idx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call3, ptr %cache_idx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_sk_storage_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_idx = getelementptr inbounds %struct.bpf_local_storage_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %cache_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cache_idx, align 2
  tail call void @bpf_local_storage_cache_idx_free(ptr noundef nonnull @sk_cache, i16 noundef zeroext %1) #13
  tail call void @bpf_local_storage_map_free(ptr noundef %map, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @notsupp_get_next_key(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %next_key) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_fd_sk_storage_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !108
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key, align 4
  %call = call ptr @sockfd_lookup(i32 noundef %2, ptr noundef nonnull %err) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 16
  %call1 = call fastcc ptr @bpf_sk_storage_lookup(ptr noundef %4, ptr noundef %map, i1 noundef zeroext true)
  %file = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %6) #13
  %tobool2.not = icmp eq ptr %call1, null
  %data = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call1, i32 0, i32 2
  %spec.select = select i1 %tobool2.not, ptr null, ptr %data
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err, align 4
  %9 = inttoptr i32 %8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %spec.select, %if.then ], [ %9, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_fd_sk_storage_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %map_flags) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !108
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key, align 4
  %call = call ptr @sockfd_lookup(i32 noundef %2, ptr noundef nonnull %err) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 16
  %call1 = call ptr @bpf_local_storage_update(ptr noundef %4, ptr noundef %map, ptr noundef %value, i64 noundef %map_flags) #13
  %file = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %6) #13
  %cmp.i.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call1 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select.i, %if.then ], [ %9, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_fd_sk_storage_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !108
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key, align 4
  %call = call ptr @sockfd_lookup(i32 noundef %2, ptr noundef nonnull %err) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %sk = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 16
  %call.i = call fastcc ptr @bpf_sk_storage_lookup(ptr noundef %4, ptr noundef %map, i1 noundef zeroext false) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.bpf_sk_storage_del.exit_crit_edge, label %if.end.i

if.then.bpf_sk_storage_del.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %bpf_sk_storage_del.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -128
  call void @bpf_selem_unlink(ptr noundef %add.ptr.i) #13
  br label %bpf_sk_storage_del.exit

bpf_sk_storage_del.exit:                          ; preds = %if.end.i, %if.then.bpf_sk_storage_del.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -2, %if.then.bpf_sk_storage_del.exit_crit_edge ]
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %err, align 4
  %file = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %7) #13
  br label %cleanup

cleanup:                                          ; preds = %bpf_sk_storage_del.exit, %entry.cleanup_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_local_storage_map_check_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_sk_storage_charge(ptr nocapture noundef readnone %smap, ptr noundef %owner, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_optmem_max to i32))
  %0 = load i32, ptr @sysctl_optmem_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %size)
  %cmp.not = icmp ult i32 %0, %size
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %owner, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_omem_alloc, i32 noundef 4) #13
  %1 = ptrtoint ptr %sk_omem_alloc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sk_omem_alloc, align 4
  %add = add i32 %2, %size
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_optmem_max to i32))
  %3 = load i32, ptr @sysctl_optmem_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp1 = icmp ult i32 %add, %3
  br i1 %cmp1, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 %size, ptr elementtype(i32) %sk_omem_alloc) #13, !srcloc !109
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %land.lhs.true.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_sk_storage_uncharge(ptr nocapture noundef readnone %smap, ptr noundef %owner, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %owner, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 %size, ptr elementtype(i32) %sk_omem_alloc) #13, !srcloc !102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bpf_sk_storage_ptr(ptr noundef readnone %owner) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_bpf_storage = getelementptr inbounds %struct.sock, ptr %owner, i32 0, i32 84
  ret ptr %sk_bpf_storage
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_sk_storage_get_tracing(i64 noundef %map, i64 noundef %sk, i64 noundef %value, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %sk to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %value to i32
  %2 = inttoptr i32 %conv2 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end33.i_crit_edge

entry.if.end33.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i, label %land.rhs.i, label %lor.rhs.i.if.end33.i_crit_edge

lor.rhs.i.if.end33.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %.b53.i = load i1, ptr @____bpf_sk_storage_get_tracing.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then.i, !prof !103

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @____bpf_sk_storage_get_tracing.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 423, i32 noundef 9, ptr noundef null) #13
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end33.i_crit_edge, %lor.rhs.i.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge, %entry.if.end33.i_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %6, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false43.i, label %if.end33.i.____bpf_sk_storage_get_tracing.exit_crit_edge

if.end33.i.____bpf_sk_storage_get_tracing.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get_tracing.exit

lor.lhs.false43.i:                                ; preds = %if.end33.i
  %7 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i57.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i57.i to ptr
  %preempt_count.i58.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i58.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i58.i, align 4
  %and45.i = and i32 %10, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %lor.lhs.false43.i.____bpf_sk_storage_get_tracing.exit_crit_edge

lor.lhs.false43.i.____bpf_sk_storage_get_tracing.exit_crit_edge: ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get_tracing.exit

if.end48.i:                                       ; preds = %lor.lhs.false43.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end48.i.if.end33.i.i_crit_edge

if.end48.i.if.end33.i.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i

lor.lhs.false.i.i:                                ; preds = %if.end48.i
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i, label %lor.lhs.false.i.i.if.end33.i.i_crit_edge

lor.lhs.false.i.i.if.end33.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i

lor.rhs.i.i:                                      ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.i.i, label %land.rhs.i.i, label %lor.rhs.i.i.if.end33.i.i_crit_edge

lor.rhs.i.i.if.end33.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  %.b75.i.i = load i1, ptr @____bpf_sk_storage_get.__already_done, align 1
  br i1 %.b75.i.i, label %land.rhs.i.i.if.end33.i.i_crit_edge, label %if.then.i.i, !prof !103

land.rhs.i.i.if.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @____bpf_sk_storage_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef null) #13
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end33.i.i_crit_edge, %lor.rhs.i.i.if.end33.i.i_crit_edge, %lor.lhs.false.i.i.if.end33.i.i_crit_edge, %if.end48.i.if.end33.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool41.not.i.i = icmp eq i32 %conv1, 0
  br i1 %tobool41.not.i.i, label %if.end33.i.i.____bpf_sk_storage_get.exit.i_crit_edge, label %lor.lhs.false42.i.i

if.end33.i.i.____bpf_sk_storage_get.exit.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get.exit.i

lor.lhs.false42.i.i:                              ; preds = %if.end33.i.i
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %12 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i59.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i59.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %flags)
  %cmp.i.i = icmp ugt i64 %flags, 1
  %or.cond.i.i = or i1 %cmp.i.i, %tobool.i.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false42.i.i.____bpf_sk_storage_get.exit.i_crit_edge, label %if.end46.i.i

lor.lhs.false42.i.i.____bpf_sk_storage_get.exit.i_crit_edge: ; preds = %lor.lhs.false42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get.exit.i

if.end46.i.i:                                     ; preds = %lor.lhs.false42.i.i
  %call47.i.i = tail call fastcc ptr @bpf_sk_storage_lookup(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext true) #13
  %tobool48.not.i.i = icmp eq ptr %call47.i.i, null
  br i1 %tobool48.not.i.i, label %if.end50.i.i, label %if.then49.i.i

if.then49.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call47.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %data.i.i to i32
  br label %____bpf_sk_storage_get.exit.i

if.end50.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %flags)
  %cmp51.i.i = icmp eq i64 %flags, 1
  br i1 %cmp51.i.i, label %land.lhs.true.i.i, label %if.end50.i.i.____bpf_sk_storage_get.exit.i_crit_edge

if.end50.i.i.____bpf_sk_storage_get.exit.i_crit_edge: ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get.exit.i

land.lhs.true.i.i:                                ; preds = %if.end50.i.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  %14 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %16 = phi i32 [ %15, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %16, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #13
  %18 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %20 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 %19, i32 %add.i.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i.i) #13, !srcloc !104
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %19
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !103

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %21 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %22, 1
  %23 = or i32 %add5.i.i.i.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !103

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 0) #13
  %24 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %25 = phi i32 [ %22, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #13
  br i1 %tobool12.i.i.i.not.i.i, label %refcount_inc_not_zero.exit.i.i.____bpf_sk_storage_get.exit.i_crit_edge, label %if.then55.i.i

refcount_inc_not_zero.exit.i.i.____bpf_sk_storage_get.exit.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_get.exit.i

if.then55.i.i:                                    ; preds = %refcount_inc_not_zero.exit.i.i
  %call56.i.i = call ptr @bpf_local_storage_update(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %2, i64 noundef 1) #13
  %call.i.i.i.i.i.i79.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #13
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #13, !srcloc !106
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.sock_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !103

if.end5.i.i.i.i.i.i.sock_put.exit.i.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #13
  br label %sock_put.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !107
  call void @sk_free(ptr noundef nonnull %1) #13
  br label %sock_put.exit.i.i

sock_put.exit.i.i:                                ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.sock_put.exit.i.i_crit_edge
  %cmp.i.i.i = icmp ugt ptr %call56.i.i, inttoptr (i32 -4096 to ptr)
  %data59.i.i = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call56.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %data59.i.i to i32
  %cond.i.i = select i1 %cmp.i.i.i, i32 0, i32 %27
  br label %____bpf_sk_storage_get.exit.i

____bpf_sk_storage_get.exit.i:                    ; preds = %sock_put.exit.i.i, %refcount_inc_not_zero.exit.i.i.____bpf_sk_storage_get.exit.i_crit_edge, %if.end50.i.i.____bpf_sk_storage_get.exit.i_crit_edge, %if.then49.i.i, %lor.lhs.false42.i.i.____bpf_sk_storage_get.exit.i_crit_edge, %if.end33.i.i.____bpf_sk_storage_get.exit.i_crit_edge
  %retval.0.shrunk.i.i = phi i32 [ %13, %if.then49.i.i ], [ %cond.i.i, %sock_put.exit.i.i ], [ 0, %lor.lhs.false42.i.i.____bpf_sk_storage_get.exit.i_crit_edge ], [ 0, %if.end33.i.i.____bpf_sk_storage_get.exit.i_crit_edge ], [ 0, %refcount_inc_not_zero.exit.i.i.____bpf_sk_storage_get.exit.i_crit_edge ], [ 0, %if.end50.i.i.____bpf_sk_storage_get.exit.i_crit_edge ]
  %retval.0.i.i = zext i32 %retval.0.shrunk.i.i to i64
  br label %____bpf_sk_storage_get_tracing.exit

____bpf_sk_storage_get_tracing.exit:              ; preds = %____bpf_sk_storage_get.exit.i, %lor.lhs.false43.i.____bpf_sk_storage_get_tracing.exit_crit_edge, %if.end33.i.____bpf_sk_storage_get_tracing.exit_crit_edge
  %retval.0.i = phi i64 [ %retval.0.i.i, %____bpf_sk_storage_get.exit.i ], [ 0, %lor.lhs.false43.i.____bpf_sk_storage_get_tracing.exit_crit_edge ], [ 0, %if.end33.i.____bpf_sk_storage_get_tracing.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_sk_storage_delete_tracing(i64 noundef %map, i64 noundef %sk, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %sk to i32
  %1 = inttoptr i32 %conv1 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end33.i_crit_edge

entry.if.end33.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i.i59.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59.i)
  %tobool2.not.i = icmp eq i32 %call.i.i59.i, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i, label %land.rhs.i, label %lor.rhs.i.if.end33.i_crit_edge

lor.rhs.i.if.end33.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %.b52.i = load i1, ptr @____bpf_sk_storage_delete_tracing.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then.i, !prof !103

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @____bpf_sk_storage_delete_tracing.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 433, i32 noundef 9, ptr noundef null) #13
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end33.i_crit_edge, %lor.rhs.i.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge, %entry.if.end33.i_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %5, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false43.i, label %if.end33.i.____bpf_sk_storage_delete_tracing.exit_crit_edge

if.end33.i.____bpf_sk_storage_delete_tracing.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_delete_tracing.exit

lor.lhs.false43.i:                                ; preds = %if.end33.i
  %6 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i56.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i56.i to ptr
  %preempt_count.i57.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i57.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i57.i, align 4
  %and45.i = and i32 %9, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %lor.lhs.false43.i.____bpf_sk_storage_delete_tracing.exit_crit_edge

lor.lhs.false43.i.____bpf_sk_storage_delete_tracing.exit_crit_edge: ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_delete_tracing.exit

if.end48.i:                                       ; preds = %lor.lhs.false43.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end48.i.if.end33.i.i_crit_edge

if.end48.i.if.end33.i.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i

lor.lhs.false.i.i:                                ; preds = %if.end48.i
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i, label %lor.lhs.false.i.i.if.end33.i.i_crit_edge

lor.lhs.false.i.i.if.end33.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i

lor.rhs.i.i:                                      ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.i.i, label %land.rhs.i.i, label %lor.rhs.i.i.if.end33.i.i_crit_edge

lor.rhs.i.i.if.end33.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  %.b56.i.i = load i1, ptr @____bpf_sk_storage_delete.__already_done, align 1
  br i1 %.b56.i.i, label %land.rhs.i.i.if.end33.i.i_crit_edge, label %if.then.i.i, !prof !103

land.rhs.i.i.if.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @____bpf_sk_storage_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef null) #13
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end33.i.i_crit_edge, %lor.rhs.i.i.if.end33.i.i_crit_edge, %lor.lhs.false.i.i.if.end33.i.i_crit_edge, %if.end48.i.if.end33.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool41.not.i.i = icmp eq i32 %conv1, 0
  br i1 %tobool41.not.i.i, label %if.end33.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge, label %lor.lhs.false42.i.i

if.end33.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_delete_tracing.exit

lor.lhs.false42.i.i:                              ; preds = %if.end33.i.i
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %11 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i58.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i58.i, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false42.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge, label %if.end45.i.i

lor.lhs.false42.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge: ; preds = %lor.lhs.false42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_delete_tracing.exit

if.end45.i.i:                                     ; preds = %lor.lhs.false42.i.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end45.i.i
  %14 = phi i32 [ %13, %if.end45.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %14, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #13
  %16 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 %17, i32 %add.i.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i.i) #13, !srcloc !104
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %17
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !103

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %20, 1
  %21 = or i32 %add5.i.i.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !103

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 0) #13
  %22 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %23 = phi i32 [ %20, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #13
  br i1 %tobool12.i.i.i.not.i.i, label %refcount_inc_not_zero.exit.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge, label %if.then47.i.i

refcount_inc_not_zero.exit.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_storage_delete_tracing.exit

if.then47.i.i:                                    ; preds = %refcount_inc_not_zero.exit.i.i
  %call.i.i.i = call fastcc ptr @bpf_sk_storage_lookup(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext false) #13
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then47.i.i.bpf_sk_storage_del.exit.i.i_crit_edge, label %if.end.i.i.i

if.then47.i.i.bpf_sk_storage_del.exit.i.i_crit_edge: ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bpf_sk_storage_del.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -128
  call void @bpf_selem_unlink(ptr noundef %add.ptr.i.i.i) #13
  br label %bpf_sk_storage_del.exit.i.i

bpf_sk_storage_del.exit.i.i:                      ; preds = %if.end.i.i.i, %if.then47.i.i.bpf_sk_storage_del.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.i.i.i ], [ -2, %if.then47.i.i.bpf_sk_storage_del.exit.i.i_crit_edge ]
  %call.i.i.i.i.i.i60.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #13
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #13, !srcloc !106
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %bpf_sk_storage_del.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.sock_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !103

if.end5.i.i.i.i.i.i.sock_put.exit.i.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #13
  br label %sock_put.exit.i.i

if.then.i.i.i:                                    ; preds = %bpf_sk_storage_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !107
  call void @sk_free(ptr noundef nonnull %1) #13
  br label %sock_put.exit.i.i

sock_put.exit.i.i:                                ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.sock_put.exit.i.i_crit_edge
  %conv.i.i = sext i32 %retval.0.i.i.i to i64
  br label %____bpf_sk_storage_delete_tracing.exit

____bpf_sk_storage_delete_tracing.exit:           ; preds = %sock_put.exit.i.i, %refcount_inc_not_zero.exit.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge, %lor.lhs.false42.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge, %if.end33.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge, %lor.lhs.false43.i.____bpf_sk_storage_delete_tracing.exit_crit_edge, %if.end33.i.____bpf_sk_storage_delete_tracing.exit_crit_edge
  %retval.0.i = phi i64 [ -1, %lor.lhs.false43.i.____bpf_sk_storage_delete_tracing.exit_crit_edge ], [ -1, %if.end33.i.____bpf_sk_storage_delete_tracing.exit_crit_edge ], [ %conv.i.i, %sock_put.exit.i.i ], [ -22, %lor.lhs.false42.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge ], [ -22, %if.end33.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge ], [ -2, %refcount_inc_not_zero.exit.i.i.____bpf_sk_storage_delete_tracing.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bpf_sk_storage_tracing_allowed(ptr nocapture noundef readonly %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %dst_prog = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %dst_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst_prog, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %4 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %expected_attach_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 28, label %if.end.cleanup_crit_edge
    i32 23, label %if.end.cleanup_crit_edge14
    i32 24, label %if.end.sw.bb1_crit_edge
    i32 25, label %if.end.sw.bb1_crit_edge15
  ]

if.end.sw.bb1_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

if.end.cleanup_crit_edge14:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge15
  %call = tail call ptr @bpf_get_btf_vmlinux() #13
  %7 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aux, align 4
  %attach_btf_id = getelementptr inbounds %struct.bpf_prog_aux, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %attach_btf_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_btf_id, align 4
  %call3 = tail call ptr @btf_type_by_id(ptr noundef %call, i32 noundef %10) #13
  %11 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call3, align 4
  %call4 = tail call ptr @btf_name_by_offset(ptr noundef %call, i32 noundef %12) #13
  %call5 = tail call i32 @strncmp(ptr noundef %call4, ptr noundef nonnull dereferenceable(15) @.str.11, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6 = icmp ne i32 %call5, 0
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb1, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge14, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ %tobool6, %sw.bb1 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge14 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_sk_storage_diag_free(ptr noundef %diag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %diag, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bpf_sk_storage_diag, ptr %diag, i32 0, i32 1, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @bpf_map_put(ptr noundef %3) #13
  %inc = add nuw i32 %i.07, 1
  %4 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %diag, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %diag) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_sk_storage_diag_alloc(ptr nocapture noundef readonly %nla_stgs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #13
  br i1 %call.i, label %entry.if.end_crit_edge, label %bpf_capable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

bpf_capable.exit:                                 ; preds = %entry
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.cleanup44_crit_edge

bpf_capable.exit.cleanup44_crit_edge:             ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %nla_stgs, i32 4
  %0 = ptrtoint ptr %nla_stgs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla_stgs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp.i112 = icmp ugt i16 %1, 7
  br i1 %cmp.i112, label %land.lhs.true.i.preheader, label %if.end.if.end8.i.i_crit_edge

if.end.if.end8.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

land.lhs.true.i.preheader:                        ; preds = %if.end
  %conv.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i, -4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %nr_maps.0115 = phi i32 [ %spec.select, %for.body.land.lhs.true.i_crit_edge ], [ 0, %land.lhs.true.i.preheader ]
  %nla.0114 = phi ptr [ %add.ptr.i74, %for.body.land.lhs.true.i_crit_edge ], [ %add.ptr.i, %land.lhs.true.i.preheader ]
  %rem.0113 = phi i32 [ %sub1.i, %for.body.land.lhs.true.i_crit_edge ], [ %sub.i, %land.lhs.true.i.preheader ]
  %2 = ptrtoint ptr %nla.0114 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nla.0114, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp1.i = icmp ult i16 %3, 4
  %conv.i70 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0113, i32 %conv.i70)
  %cmp5.i.not = icmp ult i32 %rem.0113, %conv.i70
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.if.end8.i.i_crit_edge, label %for.body

land.lhs.true.i.if.end8.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla.0114, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  %6 = and i16 %5, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp = icmp eq i16 %6, 1
  %inc = zext i1 %cmp to i32
  %spec.select = add i32 %nr_maps.0115, %inc
  %7 = ptrtoint ptr %nla.0114 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla.0114, align 2
  %conv.i71 = zext i16 %8 to i32
  %sub.i72 = add nuw nsw i32 %conv.i71, 3
  %and.i73 = and i32 %sub.i72, 131068
  %sub1.i = sub nsw i32 %rem.0113, %and.i73
  %add.ptr.i74 = getelementptr i8, ptr %nla.0114, i32 %and.i73
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.body.land.lhs.true.i_crit_edge, label %for.body.if.end8.i.i_crit_edge

for.body.if.end8.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

for.body.land.lhs.true.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.end8.i.i:                                      ; preds = %for.body.if.end8.i.i_crit_edge, %land.lhs.true.i.if.end8.i.i_crit_edge, %if.end.if.end8.i.i_crit_edge
  %nr_maps.0.lcssa = phi i32 [ 0, %if.end.if.end8.i.i_crit_edge ], [ %spec.select, %for.body.if.end8.i.i_crit_edge ], [ %nr_maps.0115, %land.lhs.true.i.if.end8.i.i_crit_edge ]
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_maps.0.lcssa, i32 4) #13
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 4) #13
  %retval.0.i = select i1 %10, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #16
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %if.end8.i.i.cleanup44_crit_edge, label %if.end14

if.end8.i.i.cleanup44_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end14:                                         ; preds = %if.end8.i.i
  %12 = ptrtoint ptr %nla_stgs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla_stgs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %13)
  %cmp.i78122 = icmp ugt i16 %13, 7
  br i1 %cmp.i78122, label %land.lhs.true.i80.lr.ph, label %if.end14.cleanup44_crit_edge

if.end14.cleanup44_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

land.lhs.true.i80.lr.ph:                          ; preds = %if.end14
  %conv.i76 = zext i16 %13 to i32
  %sub.i77 = add nsw i32 %conv.i76, -4
  %arrayidx.i117 = getelementptr %struct.bpf_sk_storage_diag, ptr %call9.i.i, i32 0, i32 1, i32 0
  br label %land.lhs.true.i80

land.lhs.true.i80:                                ; preds = %for.inc40.land.lhs.true.i80_crit_edge, %land.lhs.true.i80.lr.ph
  %nla.1124 = phi ptr [ %add.ptr.i, %land.lhs.true.i80.lr.ph ], [ %add.ptr.i95, %for.inc40.land.lhs.true.i80_crit_edge ]
  %rem.1123 = phi i32 [ %sub.i77, %land.lhs.true.i80.lr.ph ], [ %sub1.i94, %for.inc40.land.lhs.true.i80_crit_edge ]
  %14 = ptrtoint ptr %nla.1124 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nla.1124, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %15)
  %cmp1.i79 = icmp ult i16 %15, 4
  %conv.i81 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.1123, i32 %conv.i81)
  %cmp5.i82.not = icmp ult i32 %rem.1123, %conv.i81
  %or.cond109 = select i1 %cmp1.i79, i1 true, i1 %cmp5.i82.not
  br i1 %or.cond109, label %land.lhs.true.i80.cleanup44_crit_edge, label %for.body20

land.lhs.true.i80.cleanup44_crit_edge:            ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

for.body20:                                       ; preds = %land.lhs.true.i80
  %nla_type.i86 = getelementptr inbounds %struct.nlattr, ptr %nla.1124, i32 0, i32 1
  %16 = ptrtoint ptr %nla_type.i86 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nla_type.i86, align 2
  %18 = and i16 %17, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp22.not = icmp eq i16 %18, 1
  br i1 %cmp22.not, label %if.end24, label %for.body20.for.inc40_crit_edge

for.body20.for.inc40_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc40

if.end24:                                         ; preds = %for.body20
  %add.ptr.i.i = getelementptr i8, ptr %nla.1124, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 4
  %call26 = tail call ptr @bpf_map_get(i32 noundef %20) #13
  %cmp.i88 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.end24.for.cond.preheader.i_crit_edge, label %if.end30

if.end24.for.cond.preheader.i_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader.i

if.end30:                                         ; preds = %if.end24
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %call26, i32 0, i32 3
  %21 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %22)
  %cmp31.not = icmp eq i32 %22, 24
  br i1 %cmp31.not, label %if.end33, label %if.end30.for.cond.preheader.i.sink.split_crit_edge

if.end30.for.cond.preheader.i.sink.split_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader.i.sink.split

if.end33:                                         ; preds = %if.end30
  %23 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp5.not.i = icmp eq i32 %24, 0
  br i1 %cmp5.not.i, label %if.end33.if.end36_crit_edge, label %for.body.i.preheader

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

for.body.i.preheader:                             ; preds = %if.end33
  %25 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i117, align 4
  %cmp1.i90118 = icmp eq ptr %26, %call26
  br i1 %cmp1.i90118, label %for.body.i.preheader.for.cond.preheader.i.sink.split_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.for.cond.preheader.i.sink.split_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader.i.sink.split

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.06.i119 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.06.i119, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %24)
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.cond.i.diag_check_dup.exit_crit_edge, label %for.body.i

for.cond.i.diag_check_dup.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %diag_check_dup.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.bpf_sk_storage_diag, ptr %call9.i.i, i32 0, i32 1, i32 %inc.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i90 = icmp eq ptr %28, %call26
  br i1 %cmp1.i90, label %for.body.i.diag_check_dup.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i.diag_check_dup.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %diag_check_dup.exit

diag_check_dup.exit:                              ; preds = %for.body.i.diag_check_dup.exit_crit_edge, %for.cond.i.diag_check_dup.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %24)
  %cmp.i89.le = icmp ult i32 %inc.i, %24
  br i1 %cmp.i89.le, label %diag_check_dup.exit.for.cond.preheader.i.sink.split_crit_edge, label %diag_check_dup.exit.if.end36_crit_edge

diag_check_dup.exit.if.end36_crit_edge:           ; preds = %diag_check_dup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

diag_check_dup.exit.for.cond.preheader.i.sink.split_crit_edge: ; preds = %diag_check_dup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader.i.sink.split

if.end36:                                         ; preds = %diag_check_dup.exit.if.end36_crit_edge, %if.end33.if.end36_crit_edge
  %inc38 = add i32 %24, 1
  %29 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc38, ptr %call9.i.i, align 128
  %arrayidx = getelementptr %struct.bpf_sk_storage_diag, ptr %call9.i.i, i32 0, i32 1, i32 %24
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call26, ptr %arrayidx, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %if.end36, %for.body20.for.inc40_crit_edge
  %31 = ptrtoint ptr %nla.1124 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nla.1124, align 2
  %conv.i91 = zext i16 %32 to i32
  %sub.i92 = add nuw nsw i32 %conv.i91, 3
  %and.i93 = and i32 %sub.i92, 131068
  %sub1.i94 = sub i32 %rem.1123, %and.i93
  %add.ptr.i95 = getelementptr i8, ptr %nla.1124, i32 %and.i93
  %cmp.i78 = icmp sgt i32 %sub1.i94, 3
  br i1 %cmp.i78, label %for.inc40.land.lhs.true.i80_crit_edge, label %for.inc40.cleanup44_crit_edge

for.inc40.cleanup44_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

for.inc40.land.lhs.true.i80_crit_edge:            ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i80

for.cond.preheader.i.sink.split:                  ; preds = %diag_check_dup.exit.for.cond.preheader.i.sink.split_crit_edge, %for.body.i.preheader.for.cond.preheader.i.sink.split_crit_edge, %if.end30.for.cond.preheader.i.sink.split_crit_edge
  %err.1.ph.ph = phi ptr [ inttoptr (i32 -22 to ptr), %if.end30.for.cond.preheader.i.sink.split_crit_edge ], [ inttoptr (i32 -17 to ptr), %for.body.i.preheader.for.cond.preheader.i.sink.split_crit_edge ], [ inttoptr (i32 -17 to ptr), %diag_check_dup.exit.for.cond.preheader.i.sink.split_crit_edge ]
  tail call void @bpf_map_put(ptr noundef %call26) #13
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.cond.preheader.i.sink.split, %if.end24.for.cond.preheader.i_crit_edge
  %err.1.ph = phi ptr [ %err.1.ph.ph, %for.cond.preheader.i.sink.split ], [ %call26, %if.end24.for.cond.preheader.i_crit_edge ]
  %33 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp6.not.i = icmp eq i32 %34, 0
  br i1 %cmp6.not.i, label %for.cond.preheader.i.bpf_sk_storage_diag_free.exit_crit_edge, label %for.cond.preheader.i.for.body.i99_crit_edge

for.cond.preheader.i.for.body.i99_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i99

for.cond.preheader.i.bpf_sk_storage_diag_free.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bpf_sk_storage_diag_free.exit

for.body.i99:                                     ; preds = %for.body.i99.for.body.i99_crit_edge, %for.cond.preheader.i.for.body.i99_crit_edge
  %i.07.i = phi i32 [ %inc.i97, %for.body.i99.for.body.i99_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i99_crit_edge ]
  %arrayidx.i96 = getelementptr %struct.bpf_sk_storage_diag, ptr %call9.i.i, i32 0, i32 1, i32 %i.07.i
  %35 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i96, align 4
  tail call void @bpf_map_put(ptr noundef %36) #13
  %inc.i97 = add nuw i32 %i.07.i, 1
  %37 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call9.i.i, align 128
  %cmp.i98 = icmp ult i32 %inc.i97, %38
  br i1 %cmp.i98, label %for.body.i99.for.body.i99_crit_edge, label %for.body.i99.bpf_sk_storage_diag_free.exit_crit_edge

for.body.i99.bpf_sk_storage_diag_free.exit_crit_edge: ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #15
  br label %bpf_sk_storage_diag_free.exit

for.body.i99.for.body.i99_crit_edge:              ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i99

bpf_sk_storage_diag_free.exit:                    ; preds = %for.body.i99.bpf_sk_storage_diag_free.exit_crit_edge, %for.cond.preheader.i.bpf_sk_storage_diag_free.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup44

cleanup44:                                        ; preds = %bpf_sk_storage_diag_free.exit, %for.inc40.cleanup44_crit_edge, %land.lhs.true.i80.cleanup44_crit_edge, %if.end14.cleanup44_crit_edge, %if.end8.i.i.cleanup44_crit_edge, %bpf_capable.exit.cleanup44_crit_edge
  %retval.0 = phi ptr [ %err.1.ph, %bpf_sk_storage_diag_free.exit ], [ inttoptr (i32 -1 to ptr), %bpf_capable.exit.cleanup44_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup44_crit_edge ], [ %call9.i.i, %if.end14.cleanup44_crit_edge ], [ %call9.i.i, %for.inc40.cleanup44_crit_edge ], [ %call9.i.i, %land.lhs.true.i80.cleanup44_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_sk_storage_diag_put(ptr nocapture noundef readonly %diag, ptr noundef %sk, ptr noundef %skb, i32 noundef %stg_array_type, ptr nocapture noundef writeonly %res_diag_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res_diag_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %res_diag_size, align 4
  %1 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %diag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %3 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %sk_bpf_storage.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 84
  %7 = ptrtoint ptr %sk_bpf_storage.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %sk_bpf_storage.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i83 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

land.lhs.true.i84:                                ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i84.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i84.do.end8.i_crit_edge:            ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i84
  %.b124.i = load i1, ptr @bpf_sk_storage_diag_put_all.__warned, align 1
  br i1 %.b124.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i85

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

if.then.i85:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_diag_put_all.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 622, ptr noundef nonnull @.str.1) #13
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i85, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i84.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %8, null
  br i1 %tobool10.not.i, label %do.end8.i.if.then13.i_crit_edge, label %lor.lhs.false.i

do.end8.i.if.then13.i_crit_edge:                  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %do.end8.i
  %list.i = getelementptr inbounds %struct.bpf_local_storage, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %list.i, align 4
  %tobool.not.i128.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i128.not.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %if.end14.i

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %do.end8.i.if.then13.i_crit_edge
  %call.i129.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i129.i, label %if.then13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i132.i

if.then13.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i132.i:                             ; preds = %if.then13.i
  %call1.i130.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130.i)
  %tobool.not.i131.i = icmp eq i32 %call1.i130.i, 0
  br i1 %tobool.not.i131.i, label %land.lhs.true.i132.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i134.i

land.lhs.true.i132.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i132.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i134.i:                            ; preds = %land.lhs.true.i132.i
  %.b4.i133.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i133.i, label %land.lhs.true2.i134.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i135.i

land.lhs.true2.i134.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i134.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i135.i:                                   ; preds = %land.lhs.true2.i134.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i135.i, %land.lhs.true2.i134.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i132.i.rcu_read_unlock.exit.i_crit_edge, %if.then13.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %11 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i136.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i136.i to ptr
  %preempt_count.i.i.i.i137.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i137.i, align 4
  %sub.i.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i137.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %or.i.i = or i32 %stg_array_type, 32768
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i.i, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %.call.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %16
  %tobool16.not.i = icmp eq ptr %.call.i.i.i, null
  %spec.select.i = select i1 %tobool16.not.i, i32 -90, i32 0
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  %call20.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %if.end14.i.do.end30.i_crit_edge

if.end14.i.do.end30.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

land.lhs.true22.i:                                ; preds = %if.end14.i
  %call23.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true22.i.do.end30.i_crit_edge, label %land.lhs.true25.i

land.lhs.true22.i.do.end30.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

land.lhs.true25.i:                                ; preds = %land.lhs.true22.i
  %.b120123.i = load i1, ptr @bpf_sk_storage_diag_put_all.__warned.12, align 1
  br i1 %.b120123.i, label %land.lhs.true25.i.do.end30.i_crit_edge, label %if.then27.i

land.lhs.true25.i.do.end30.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

if.then27.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_diag_put_all.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 634, ptr noundef nonnull @.str.3) #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then27.i, %land.lhs.true25.i.do.end30.i_crit_edge, %land.lhs.true22.i.do.end30.i_crit_edge, %if.end14.i.do.end30.i_crit_edge
  %19 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %list.i, align 4
  %tobool38.not.i = icmp eq ptr %20, null
  %add.ptr.i = getelementptr i8, ptr %20, i32 -8
  %tobool40.not153158.i = icmp eq ptr %add.ptr.i, null
  %tobool40.not153.i = or i1 %tobool38.not.i, %tobool40.not153158.i
  br i1 %tobool40.not153.i, label %do.end30.i.for.end.i_crit_edge, label %do.end30.i.for.body.i_crit_edge

do.end30.i.for.body.i_crit_edge:                  ; preds = %do.end30.i
  br label %for.body.i

do.end30.i.for.end.i_crit_edge:                   ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end30.i.for.body.i_crit_edge
  %diag_size.0156.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 4, %do.end30.i.for.body.i_crit_edge ]
  %selem.0155.i = phi ptr [ %add.ptr78.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end30.i.for.body.i_crit_edge ]
  %err.1154.i = phi i32 [ %err.2.i, %for.inc.i.for.body.i_crit_edge ], [ %spec.select.i, %do.end30.i.for.body.i_crit_edge ]
  %sdata.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0155.i, i32 0, i32 5
  %21 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %sdata.i, align 128
  %call47.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true49.i, label %for.body.i.do.end57.i_crit_edge

for.body.i.do.end57.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57.i

land.lhs.true49.i:                                ; preds = %for.body.i
  %call50.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true49.i.do.end57.i_crit_edge, label %land.lhs.true52.i

land.lhs.true49.i.do.end57.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57.i

land.lhs.true52.i:                                ; preds = %land.lhs.true49.i
  %.b121122.i = load i1, ptr @bpf_sk_storage_diag_put_all.__warned.13, align 1
  br i1 %.b121122.i, label %land.lhs.true52.i.do.end57.i_crit_edge, label %if.then54.i

land.lhs.true52.i.do.end57.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57.i

if.then54.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_diag_put_all.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 635, ptr noundef nonnull @.str.1) #13
  br label %do.end57.i

do.end57.i:                                       ; preds = %if.then54.i, %land.lhs.true52.i.do.end57.i_crit_edge, %land.lhs.true49.i.do.end57.i_crit_edge, %for.body.i.do.end57.i_crit_edge
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value_size.i, align 4
  %25 = add i32 %24, 19
  %add3.i.i = and i32 %25, -4
  %add.i = add i32 %add3.i.i, %diag_size.0156.i
  br i1 %tobool16.not.i, label %do.end57.i.for.inc.i_crit_edge, label %land.lhs.true61.i

do.end57.i.for.inc.i_crit_edge:                   ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true61.i:                                ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  %call63.i = tail call fastcc i32 @diag_get(ptr noundef %sdata.i, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  %spec.select126.i = select i1 %tobool64.not.i, i32 %err.1154.i, i32 -90
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true61.i, %do.end57.i.for.inc.i_crit_edge
  %err.2.i = phi i32 [ %err.1154.i, %do.end57.i.for.inc.i_crit_edge ], [ %spec.select126.i, %land.lhs.true61.i ]
  %snode.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0155.i, i32 0, i32 1
  %26 = ptrtoint ptr %snode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %snode.i, align 8
  %tobool74.not.i = icmp eq ptr %27, null
  %add.ptr78.i = getelementptr i8, ptr %27, i32 -8
  %tobool40.not159.i = icmp eq ptr %add.ptr78.i, null
  %tobool40.not.i = or i1 %tobool74.not.i, %tobool40.not159.i
  br i1 %tobool40.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end30.i.for.end.i_crit_edge
  %err.1.lcssa.i = phi i32 [ %spec.select.i, %do.end30.i.for.end.i_crit_edge ], [ %err.2.i, %for.inc.i.for.end.i_crit_edge ]
  %diag_size.0.lcssa.i = phi i32 [ 4, %do.end30.i.for.end.i_crit_edge ], [ %add.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i138.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i138.i, label %for.end.i.rcu_read_unlock.exit148.i_crit_edge, label %land.lhs.true.i141.i

for.end.i.rcu_read_unlock.exit148.i_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit148.i

land.lhs.true.i141.i:                             ; preds = %for.end.i
  %call1.i139.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139.i)
  %tobool.not.i140.i = icmp eq i32 %call1.i139.i, 0
  br i1 %tobool.not.i140.i, label %land.lhs.true.i141.i.rcu_read_unlock.exit148.i_crit_edge, label %land.lhs.true2.i143.i

land.lhs.true.i141.i.rcu_read_unlock.exit148.i_crit_edge: ; preds = %land.lhs.true.i141.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit148.i

land.lhs.true2.i143.i:                            ; preds = %land.lhs.true.i141.i
  %.b4.i142.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i142.i, label %land.lhs.true2.i143.i.rcu_read_unlock.exit148.i_crit_edge, label %if.then.i144.i

land.lhs.true2.i143.i.rcu_read_unlock.exit148.i_crit_edge: ; preds = %land.lhs.true2.i143.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit148.i

if.then.i144.i:                                   ; preds = %land.lhs.true2.i143.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit148.i

rcu_read_unlock.exit148.i:                        ; preds = %if.then.i144.i, %land.lhs.true2.i143.i.rcu_read_unlock.exit148.i_crit_edge, %land.lhs.true.i141.i.rcu_read_unlock.exit148.i_crit_edge, %for.end.i.rcu_read_unlock.exit148.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %28 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i145.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i145.i to ptr
  %preempt_count.i.i.i.i146.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i146.i, align 4
  %sub.i.i.i147.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i147.i, ptr %preempt_count.i.i.i.i146.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %tobool16.not.i, label %rcu_read_unlock.exit148.i.if.end88.i_crit_edge, label %if.then83.i

rcu_read_unlock.exit148.i.if.end88.i_crit_edge:   ; preds = %rcu_read_unlock.exit148.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

if.then83.i:                                      ; preds = %rcu_read_unlock.exit148.i
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %33)
  %cmp.i = icmp eq i32 %18, %33
  br i1 %cmp.i, label %if.then.i.i.i, label %if.else.i

if.then.i.i.i:                                    ; preds = %if.then83.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i149.i = icmp ugt ptr %35, %.call.i.i.i
  br i1 %cmp.i.i149.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !101

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %36 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %.call.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #13
  br label %if.end88.i

if.else.i:                                        ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %.call.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %40 = ptrtoint ptr %.call.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i, ptr %.call.i.i.i, align 2
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else.i, %nla_nest_cancel.exit.i, %rcu_read_unlock.exit148.i.if.end88.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %diag_size.0.lcssa.i)
  %cmp90.i = icmp eq i32 %diag_size.0.lcssa.i, 4
  br i1 %cmp90.i, label %if.then91.i, label %if.end92.i

if.then91.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %res_diag_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %res_diag_size, align 4
  br label %cleanup

if.end92.i:                                       ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %res_diag_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %diag_size.0.lcssa.i, ptr %res_diag_size, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %sk_bpf_storage = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 84
  %43 = ptrtoint ptr %sk_bpf_storage to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %sk_bpf_storage, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b81 = load i1, ptr @bpf_sk_storage_diag_put.__warned, align 1
  br i1 %.b81, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_diag_put.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @.str.1) #13
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %44, null
  br i1 %tobool14.not, label %do.end12.if.then17_crit_edge, label %lor.lhs.false

do.end12.if.then17_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

lor.lhs.false:                                    ; preds = %do.end12
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %list, align 4
  %tobool.not.i86.not = icmp eq ptr %46, null
  br i1 %tobool.not.i86.not, label %lor.lhs.false.if.then17_crit_edge, label %if.end18

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %do.end12.if.then17_crit_edge
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i87, label %if.then17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i90

if.then17.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i90:                                ; preds = %if.then17
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, %if.then17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %47 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i94 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i94 to ptr
  %preempt_count.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i95, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i95, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %or.i = or i32 %stg_array_type, 32768
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i96 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i96)
  %cmp.i.i = icmp slt i32 %call1.i.i96, 0
  %.call.i.i = select i1 %cmp.i.i, ptr null, ptr %52
  %tobool20.not = icmp eq ptr %.call.i.i, null
  %spec.select = select i1 %tobool20.not, i32 -90, i32 0
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %55 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %diag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp114.not = icmp eq i32 %56, 0
  br i1 %cmp114.not, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end18.for.body_crit_edge
  %diag_size.0117 = phi i32 [ %diag_size.1, %for.inc.for.body_crit_edge ], [ 4, %if.end18.for.body_crit_edge ]
  %i.0116 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %err.1115 = phi i32 [ %err.2, %for.inc.for.body_crit_edge ], [ %spec.select, %if.end18.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bpf_sk_storage_diag, ptr %diag, i32 0, i32 1, i32 %i.0116
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %call24 = tail call ptr @bpf_local_storage_lookup(ptr noundef nonnull %44, ptr noundef %58, i1 noundef zeroext false) #13
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %if.end27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %value_size, align 4
  %63 = add i32 %62, 19
  %add3.i = and i32 %63, -4
  %add = add i32 %add3.i, %diag_size.0117
  br i1 %tobool20.not, label %if.end27.for.inc_crit_edge, label %land.lhs.true32

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true32:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call33 = tail call fastcc i32 @diag_get(ptr noundef nonnull %call24, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  %spec.select82 = select i1 %tobool34.not, i32 %err.1115, i32 -90
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true32, %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.2 = phi i32 [ %err.1115, %if.end27.for.inc_crit_edge ], [ %err.1115, %for.body.for.inc_crit_edge ], [ %spec.select82, %land.lhs.true32 ]
  %diag_size.1 = phi i32 [ %add, %if.end27.for.inc_crit_edge ], [ %diag_size.0117, %for.body.for.inc_crit_edge ], [ %add, %land.lhs.true32 ]
  %inc = add nuw i32 %i.0116, 1
  %64 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %diag, align 4
  %cmp = icmp ult i32 %inc, %65
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end18.for.end_crit_edge
  %err.1.lcssa = phi i32 [ %spec.select, %if.end18.for.end_crit_edge ], [ %err.2, %for.inc.for.end_crit_edge ]
  %diag_size.0.lcssa = phi i32 [ 4, %if.end18.for.end_crit_edge ], [ %diag_size.1, %for.inc.for.end_crit_edge ]
  %call.i97 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i97, label %for.end.rcu_read_unlock.exit107_crit_edge, label %land.lhs.true.i100

for.end.rcu_read_unlock.exit107_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit107

land.lhs.true.i100:                               ; preds = %for.end
  %call1.i98 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool.not.i99, label %land.lhs.true.i100.rcu_read_unlock.exit107_crit_edge, label %land.lhs.true2.i102

land.lhs.true.i100.rcu_read_unlock.exit107_crit_edge: ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit107

land.lhs.true2.i102:                              ; preds = %land.lhs.true.i100
  %.b4.i101 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101, label %land.lhs.true2.i102.rcu_read_unlock.exit107_crit_edge, label %if.then.i103

land.lhs.true2.i102.rcu_read_unlock.exit107_crit_edge: ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit107

if.then.i103:                                     ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit107

rcu_read_unlock.exit107:                          ; preds = %if.then.i103, %land.lhs.true2.i102.rcu_read_unlock.exit107_crit_edge, %land.lhs.true.i100.rcu_read_unlock.exit107_crit_edge, %for.end.rcu_read_unlock.exit107_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %66 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i104 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i105, align 4
  %sub.i.i.i106 = add i32 %69, -1
  store volatile i32 %sub.i.i.i106, ptr %preempt_count.i.i.i.i105, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %tobool20.not, label %rcu_read_unlock.exit107.if.end44_crit_edge, label %if.then38

rcu_read_unlock.exit107.if.end44_crit_edge:       ; preds = %rcu_read_unlock.exit107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then38:                                        ; preds = %rcu_read_unlock.exit107
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %71)
  %cmp40 = icmp eq i32 %54, %71
  br i1 %cmp40, label %if.then.i.i110, label %if.else

if.then.i.i110:                                   ; preds = %if.then38
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %72 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i109 = icmp ugt ptr %73, %.call.i.i
  br i1 %cmp.i.i109, label %do.end.i.i, label %if.then.i.i110.nla_nest_cancel.exit_crit_edge, !prof !101

if.then.i.i110.nla_nest_cancel.exit_crit_edge:    ; preds = %if.then.i.i110
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i110
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i110.nla_nest_cancel.exit_crit_edge
  %74 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i111 = ptrtoint ptr %.call.i.i to i32
  %sub.ptr.rhs.cast.i.i112 = ptrtoint ptr %75 to i32
  %sub.ptr.sub.i.i113 = sub i32 %sub.ptr.lhs.cast.i.i111, %sub.ptr.rhs.cast.i.i112
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i113) #13
  br label %if.end44

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %.call.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %78 = ptrtoint ptr %.call.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i, ptr %.call.i.i, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.else, %nla_nest_cancel.exit, %rcu_read_unlock.exit107.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %diag_size.0.lcssa)
  %cmp46 = icmp eq i32 %diag_size.0.lcssa, 4
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %res_diag_size to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %res_diag_size, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %res_diag_size to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %diag_size.0.lcssa, ptr %res_diag_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then47, %rcu_read_unlock.exit, %if.end92.i, %if.then91.i, %rcu_read_unlock.exit.i
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ 0, %if.then47 ], [ %err.1.lcssa, %if.end48 ], [ 0, %rcu_read_unlock.exit.i ], [ 0, %if.then91.i ], [ %err.1.lcssa.i, %if.end92.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_local_storage_lookup(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @diag_get(ptr noundef %sdata, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not59 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not59
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sdata, align 8
  %call6 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b53 = load i1, ptr @diag_get.__warned, align 1
  br i1 %.b53, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @diag_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 583, ptr noundef nonnull @.str.1) #13
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %id = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %do.end15.if.then.i.i_crit_edge

do.end15.if.then.i.i_crit_edge:                   ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end20:                                         ; preds = %do.end15
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_size, align 4
  %call22 = call ptr @nla_reserve_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef %8, i32 noundef 1) #13
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.if.then.i.i_crit_edge, label %if.end25

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end20
  %spin_lock_off.i = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %spin_lock_off.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spin_lock_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i = icmp sgt i32 %10, -1
  %add.ptr.i = getelementptr i8, ptr %call22, i32 4
  %data = getelementptr inbounds %struct.bpf_local_storage_data, ptr %sdata, i32 0, i32 2
  br i1 %cmp.i, label %if.then28, label %if.end.thread.i

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  call void @copy_map_value_locked(ptr noundef %3, ptr noundef %add.ptr.i, ptr noundef %data, i1 noundef zeroext true) #13
  br label %if.end35

if.end.thread.i:                                  ; preds = %if.end25
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i69.i = icmp sgt i32 %12, -1
  br i1 %cmp.i69.i, label %if.end26.i, label %if.else.i, !prof !101

if.end26.i:                                       ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %12)
  %add.ptr31.i = getelementptr i8, ptr %add.ptr.i, i32 %12
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 16
  %add.ptr33.i = getelementptr i8, ptr %data, i32 %12
  %add.ptr34.i = getelementptr i8, ptr %add.ptr33.i, i32 16
  %14 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value_size, align 4
  %.neg60 = sub nuw i32 -16, %12
  %sub36.i = add i32 %.neg60, %15
  %16 = call ptr @memcpy(ptr %add.ptr32.i, ptr %add.ptr34.i, i32 %sub36.i)
  br label %if.end35

if.else.i:                                        ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value_size, align 4
  %19 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %18)
  br label %if.end35

if.end35:                                         ; preds = %if.else.i, %if.end26.i, %if.then28
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end20.if.then.i.i_crit_edge, %do.end15.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i58 = icmp ugt ptr %24, %1
  br i1 %cmp.i.i58, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !101

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end35 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_bpf_sk_storage_map(ptr nocapture noundef readnone %meta, ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %value) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_sk_storage_map_iter_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @btf_sock_ids, i32 0, i32 5) to i32))
  %0 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @btf_sock_ids, i32 0, i32 5), align 4
  store i32 %0, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @bpf_sk_storage_map_reg_info, i32 0, i32 8, i32 0, i32 2), align 4
  %call = tail call i32 @bpf_iter_reg_target(ptr noundef nonnull @bpf_sk_storage_map_reg_info) #13
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_selem_alloc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_map_value_locked(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bpf_sk_storage_lookup(ptr noundef %sk, ptr noundef %map, i1 noundef zeroext %cacheit_lockit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_bpf_storage = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 84
  %0 = ptrtoint ptr %sk_bpf_storage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_bpf_storage, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

lor.lhs.false:                                    ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.do.end15_crit_edge

lor.lhs.false4.do.end15_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false7.do.end15_crit_edge

lor.lhs.false7.do.end15_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true12

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b24 = load i1, ptr @bpf_sk_storage_lookup.__warned, align 1
  br i1 %.b24, label %land.lhs.true12.do.end15_crit_edge, label %if.then

land.lhs.true12.do.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 27, ptr noundef nonnull @.str.1) #13
  br label %do.end15

do.end15:                                         ; preds = %if.then, %land.lhs.true12.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %lor.lhs.false7.do.end15_crit_edge, %lor.lhs.false4.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %entry.do.end15_crit_edge
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %do.end15.cleanup_crit_edge, label %if.end19

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = tail call ptr @bpf_local_storage_lookup(ptr noundef nonnull %1, ptr noundef %map, i1 noundef zeroext %cacheit_lockit) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end15.cleanup_crit_edge
  %retval.0 = phi ptr [ %call21, %if.end19 ], [ null, %do.end15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_local_storage_update(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_selem_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_local_storage_map_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bpf_local_storage_cache_idx_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_local_storage_cache_idx_free(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_local_storage_map_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_get_btf_vmlinux() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_name_by_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_64bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_reg_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_iter_attach_map(ptr nocapture noundef readonly %prog, ptr nocapture noundef readonly %linfo, ptr nocapture noundef writeonly %aux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %linfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %linfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @bpf_map_get_with_uref(i32 noundef %1) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %4)
  %cmp.not = icmp eq i32 %4, 24
  br i1 %cmp.not, label %if.end7, label %if.end5.put_map_crit_edge

if.end5.put_map_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_map

if.end7:                                          ; preds = %if.end5
  %aux8 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %5 = ptrtoint ptr %aux8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aux8, align 4
  %max_rdonly_access = getelementptr inbounds %struct.bpf_prog_aux, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %max_rdonly_access to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_rdonly_access, align 4
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp9 = icmp ugt i32 %8, %10
  br i1 %cmp9, label %if.end7.put_map_crit_edge, label %if.end11

if.end7.put_map_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_map

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %aux, align 4
  br label %cleanup

put_map:                                          ; preds = %if.end7.put_map_crit_edge, %if.end5.put_map_crit_edge
  %err.0 = phi i32 [ -22, %if.end5.put_map_crit_edge ], [ -13, %if.end7.put_map_crit_edge ]
  tail call void @bpf_map_put_with_uref(ptr noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %put_map, %if.end11, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %err.0, %put_map ], [ 0, %if.end11 ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_iter_detach_map(ptr nocapture noundef readonly %aux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  tail call void @bpf_map_put_with_uref(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_iter_map_show_fdinfo(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_map_fill_link_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_get_with_uref(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put_with_uref(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpf_iter_init_sk_storage_map(ptr nocapture noundef writeonly %priv_data, ptr nocapture noundef readonly %aux) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %priv_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_sk_storage_map_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call fastcc ptr @bpf_sk_storage_map_seq_find_next(ptr noundef %1, ptr noundef null)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_sk_storage_map_seq_stop(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__bpf_sk_storage_map, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx.i) #13
  %2 = call ptr @memset(ptr %ctx.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #13
  %3 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  %4 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext true) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.__bpf_sk_storage_map_seq_show.exit_crit_edge, label %if.then.i

if.then.__bpf_sk_storage_map_seq_show.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %__bpf_sk_storage_map_seq_show.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta.i, ptr %ctx.i, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.bpf_iter__bpf_sk_storage_map, ptr %ctx.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %call15.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #13
  br label %__bpf_sk_storage_map_seq_show.exit

__bpf_sk_storage_map_seq_show.exit:               ; preds = %if.then.i, %if.then.__bpf_sk_storage_map_seq_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx.i) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2, label %if.else.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_unlock.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i3 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i4

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i4:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i4, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.else.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %10 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end

if.end:                                           ; preds = %rcu_read_unlock.exit, %__bpf_sk_storage_map_seq_show.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_sk_storage_map_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %skip_elems = getelementptr inbounds %struct.bpf_iter_seq_sk_storage_map_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %skip_elems to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip_elems, align 4
  %inc1 = add i32 %5, 1
  store i32 %inc1, ptr %skip_elems, align 4
  %6 = load ptr, ptr %private, align 8
  %call = tail call fastcc ptr @bpf_sk_storage_map_seq_find_next(ptr noundef %6, ptr noundef %v)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_sk_storage_map_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__bpf_sk_storage_map_seq_show(ptr noundef %seq, ptr noundef %v)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bpf_sk_storage_map_seq_find_next(ptr nocapture noundef %info, ptr noundef %prev_selem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skip_elems1 = getelementptr inbounds %struct.bpf_iter_seq_sk_storage_map_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %skip_elems1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skip_elems1, align 4
  %bucket_id2 = getelementptr inbounds %struct.bpf_iter_seq_sk_storage_map_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %bucket_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket_id2, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %bucket_log = getelementptr inbounds %struct.bpf_local_storage_map, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bucket_log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bucket_log, align 4
  %.highbits = lshr i32 %3, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits)
  %cmp.not = icmp eq i32 %.highbits, 0
  br i1 %cmp.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %tobool.not204 = icmp eq ptr %prev_selem, null
  br i1 %tobool.not204, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end40, %while.cond.preheader.while.body_crit_edge
  %selem.0206 = phi ptr [ %9, %if.end40 ], [ %prev_selem, %while.cond.preheader.while.body_crit_edge ]
  %count.0205 = phi i32 [ %inc41, %if.end40 ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %8 = ptrtoint ptr %selem.0206 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %selem.0206, align 128
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true, label %while.body.do.end12_crit_edge

while.body.do.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true:                                    ; preds = %while.body
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b175 = load i1, ptr @bpf_sk_storage_map_seq_find_next.__warned, align 1
  br i1 %.b175, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_map_seq_find_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 756, ptr noundef nonnull @.str.1) #13
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %while.body.do.end12_crit_edge
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end12
  %inc = add i32 %3, 1
  %call.i178 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i178, label %if.then18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i181

if.then18.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i181:                               ; preds = %if.then18
  %call1.i179 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i179)
  %tobool.not.i180 = icmp eq i32 %call1.i179, 0
  br i1 %tobool.not.i180, label %land.lhs.true.i181.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i183

land.lhs.true.i181.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i183:                              ; preds = %land.lhs.true.i181
  %.b4.i182 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i182, label %land.lhs.true2.i183.rcu_read_unlock.exit_crit_edge, label %if.then.i184

land.lhs.true2.i183.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i183
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i184:                                     ; preds = %land.lhs.true2.i183
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i184, %land.lhs.true2.i183.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i181.rcu_read_unlock.exit_crit_edge, %if.then18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %10 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i185 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i185 to ptr
  %preempt_count.i.i.i.i186 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i186, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i186, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %while.end

if.end19:                                         ; preds = %do.end12
  %local_storage = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %local_storage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %local_storage, align 16
  %call25 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %if.end19.do.end35_crit_edge

if.end19.do.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

land.lhs.true27:                                  ; preds = %if.end19
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b169174 = load i1, ptr @bpf_sk_storage_map_seq_find_next.__warned.16, align 1
  br i1 %.b169174, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_map_seq_find_next.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 765, ptr noundef nonnull @.str.1) #13
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %if.end19.do.end35_crit_edge
  %tobool37.not = icmp eq ptr %15, null
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %count.0205, %1
  br label %cleanup.sink.split

if.end40:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  %inc41 = add i32 %count.0205, 1
  br label %while.body

while.end:                                        ; preds = %rcu_read_unlock.exit, %while.cond.preheader.while.end_crit_edge
  %bucket_id.0 = phi i32 [ %inc, %rcu_read_unlock.exit ], [ %3, %while.cond.preheader.while.end_crit_edge ]
  %skip_elems.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %1, %while.cond.preheader.while.end_crit_edge ]
  %16 = ptrtoint ptr %bucket_log to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bucket_log, align 4
  %i.0.highbits211 = lshr i32 %bucket_id.0, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.highbits211)
  %cmp44212 = icmp eq i32 %i.0.highbits211, 0
  br i1 %cmp44212, label %for.body.lr.ph, label %while.end.for.end122_crit_edge

while.end.for.end122_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end122

for.body.lr.ph:                                   ; preds = %while.end
  %buckets45 = getelementptr inbounds %struct.bpf_local_storage_map, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit197.for.body_crit_edge, %for.body.lr.ph
  %skip_elems.1215 = phi i32 [ %skip_elems.0, %for.body.lr.ph ], [ 0, %rcu_read_unlock.exit197.for.body_crit_edge ]
  %i.0213 = phi i32 [ %bucket_id.0, %for.body.lr.ph ], [ %inc121, %rcu_read_unlock.exit197.for.body_crit_edge ]
  %18 = ptrtoint ptr %buckets45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buckets45, align 128
  %arrayidx46 = getelementptr %struct.bpf_local_storage_map_bucket, ptr %19, i32 %i.0213
  %20 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %call48 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %rcu_read_lock.exit.do.end58_crit_edge

rcu_read_lock.exit.do.end58_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

land.lhs.true50:                                  ; preds = %rcu_read_lock.exit
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true50.do.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %.b170173 = load i1, ptr @bpf_sk_storage_map_seq_find_next.__warned.17, align 1
  br i1 %.b170173, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_map_seq_find_next.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 777, ptr noundef nonnull @.str.3) #13
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true50.do.end58_crit_edge, %rcu_read_lock.exit.do.end58_crit_edge
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %selem.1207 = load volatile ptr, ptr %arrayidx46, align 4
  %tobool75.not208 = icmp eq ptr %selem.1207, null
  br i1 %tobool75.not208, label %do.end58.for.end_crit_edge, label %do.end58.for.body76_crit_edge

do.end58.for.body76_crit_edge:                    ; preds = %do.end58
  br label %for.body76

do.end58.for.end_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body76:                                       ; preds = %if.end101.for.body76_crit_edge, %do.end58.for.body76_crit_edge
  %selem.1210 = phi ptr [ %selem.1, %if.end101.for.body76_crit_edge ], [ %selem.1207, %do.end58.for.body76_crit_edge ]
  %count.1209 = phi i32 [ %inc102, %if.end101.for.body76_crit_edge ], [ 0, %do.end58.for.body76_crit_edge ]
  %local_storage81 = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.1210, i32 0, i32 2
  %25 = ptrtoint ptr %local_storage81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %local_storage81, align 16
  %call83 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true85, label %for.body76.do.end93_crit_edge

for.body76.do.end93_crit_edge:                    ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end93

land.lhs.true85:                                  ; preds = %for.body76
  %call86 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %land.lhs.true85.do.end93_crit_edge, label %land.lhs.true88

land.lhs.true85.do.end93_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end93

land.lhs.true88:                                  ; preds = %land.lhs.true85
  %.b171172 = load i1, ptr @bpf_sk_storage_map_seq_find_next.__warned.18, align 1
  br i1 %.b171172, label %land.lhs.true88.do.end93_crit_edge, label %if.then90

land.lhs.true88.do.end93_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end93

if.then90:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_sk_storage_map_seq_find_next.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 778, ptr noundef nonnull @.str.1) #13
  br label %do.end93

do.end93:                                         ; preds = %if.then90, %land.lhs.true88.do.end93_crit_edge, %land.lhs.true85.do.end93_crit_edge, %for.body76.do.end93_crit_edge
  %tobool95.not = icmp eq ptr %26, null
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1209, i32 %skip_elems.1215)
  %cmp97.not = icmp ult i32 %count.1209, %skip_elems.1215
  %or.cond = select i1 %tobool95.not, i1 true, i1 %cmp97.not
  br i1 %or.cond, label %if.end101, label %if.then98

if.then98:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %bucket_id2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0213, ptr %bucket_id2, align 4
  br label %cleanup.sink.split

if.end101:                                        ; preds = %do.end93
  %inc102 = add i32 %count.1209, 1
  %28 = ptrtoint ptr %selem.1210 to i32
  call void @__asan_load4_noabort(i32 %28)
  %selem.1 = load volatile ptr, ptr %selem.1210, align 4
  %tobool75.not = icmp eq ptr %selem.1, null
  br i1 %tobool75.not, label %if.end101.for.end_crit_edge, label %if.end101.for.body76_crit_edge

if.end101.for.body76_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body76

if.end101.for.end_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end101.for.end_crit_edge, %do.end58.for.end_crit_edge
  %call.i187 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i187, label %for.end.rcu_read_unlock.exit197_crit_edge, label %land.lhs.true.i190

for.end.rcu_read_unlock.exit197_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit197

land.lhs.true.i190:                               ; preds = %for.end
  %call1.i188 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i188)
  %tobool.not.i189 = icmp eq i32 %call1.i188, 0
  br i1 %tobool.not.i189, label %land.lhs.true.i190.rcu_read_unlock.exit197_crit_edge, label %land.lhs.true2.i192

land.lhs.true.i190.rcu_read_unlock.exit197_crit_edge: ; preds = %land.lhs.true.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit197

land.lhs.true2.i192:                              ; preds = %land.lhs.true.i190
  %.b4.i191 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i191, label %land.lhs.true2.i192.rcu_read_unlock.exit197_crit_edge, label %if.then.i193

land.lhs.true2.i192.rcu_read_unlock.exit197_crit_edge: ; preds = %land.lhs.true2.i192
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit197

if.then.i193:                                     ; preds = %land.lhs.true2.i192
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit197

rcu_read_unlock.exit197:                          ; preds = %if.then.i193, %land.lhs.true2.i192.rcu_read_unlock.exit197_crit_edge, %land.lhs.true.i190.rcu_read_unlock.exit197_crit_edge, %for.end.rcu_read_unlock.exit197_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %29 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i194 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i194 to ptr
  %preempt_count.i.i.i.i195 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i195, align 4
  %sub.i.i.i196 = add i32 %32, -1
  store volatile i32 %sub.i.i.i196, ptr %preempt_count.i.i.i.i195, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %inc121 = add i32 %i.0213, 1
  %33 = ptrtoint ptr %bucket_log to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bucket_log, align 4
  %i.0.highbits = lshr i32 %inc121, %34
  %cmp44 = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp44, label %rcu_read_unlock.exit197.for.body_crit_edge, label %rcu_read_unlock.exit197.for.end122_crit_edge

rcu_read_unlock.exit197.for.end122_crit_edge:     ; preds = %rcu_read_unlock.exit197
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end122

rcu_read_unlock.exit197.for.body_crit_edge:       ; preds = %rcu_read_unlock.exit197
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end122:                                       ; preds = %rcu_read_unlock.exit197.for.end122_crit_edge, %while.end.for.end122_crit_edge
  %i.0.lcssa = phi i32 [ %bucket_id.0, %while.end.for.end122_crit_edge ], [ %inc121, %rcu_read_unlock.exit197.for.end122_crit_edge ]
  %35 = ptrtoint ptr %bucket_id2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.0.lcssa, ptr %bucket_id2, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end122, %if.then98, %if.then38
  %.sink = phi i32 [ 0, %for.end122 ], [ %count.1209, %if.then98 ], [ %add, %if.then38 ]
  %retval.0.ph = phi ptr [ null, %for.end122 ], [ %selem.1210, %if.then98 ], [ %9, %if.then38 ]
  %36 = ptrtoint ptr %skip_elems1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %skip_elems1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_sk_storage_map_seq_show(ptr noundef %seq, ptr noundef %selem) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.bpf_iter__bpf_sk_storage_map, align 8
  %meta = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx) #13
  %2 = call ptr @memset(ptr %ctx, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta) #13
  %3 = call ptr @memset(ptr %meta, i32 255, i32 24)
  %4 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta, align 8
  %cmp = icmp eq ptr %selem, null
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext %cmp) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta, ptr %ctx, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.bpf_iter__bpf_sk_storage_map, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  br i1 %cmp, label %if.then.if.end14_crit_edge, label %if.then2

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then2:                                         ; preds = %if.then
  %local_storage = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 2
  %10 = ptrtoint ptr %local_storage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %local_storage, align 16
  %call4 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.then2.do.end12_crit_edge

if.then2.do.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true:                                    ; preds = %if.then2
  %call6 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true8

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @__bpf_sk_storage_map_seq_show.__warned, align 1
  br i1 %.b22, label %land.lhs.true8.do.end12_crit_edge, label %if.then10

land.lhs.true8.do.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__bpf_sk_storage_map_seq_show.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.1) #13
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %land.lhs.true8.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %if.then2.do.end12_crit_edge
  %owner = getelementptr inbounds %struct.bpf_local_storage, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  %14 = getelementptr inbounds %struct.bpf_iter__bpf_sk_storage_map, ptr %ctx, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %14, align 8
  %data = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 6
  %16 = getelementptr inbounds %struct.bpf_iter__bpf_sk_storage_map, ptr %ctx, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %16, align 8
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.then.if.end14_crit_edge
  %call15 = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx) #13
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %entry.if.end16_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14 ], [ 0, %entry.if.end16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_iter_get_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_run_prog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/core/bpf_sk_storage.c", i32 57, i32 15}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/core/bpf_sk_storage.c", i32 199, i32 15}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/core/bpf_sk_storage.c", i32 204, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/core/bpf_sk_storage.c", i32 209, i32 10}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/core/bpf_sk_storage.c", i32 243, i32 5}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/core/bpf_sk_storage.c", i32 351, i32 18}
!15 = !{ptr @sk_storage_map_ops, !16, !"sk_storage_map_ops", i1 false, i1 false}
!16 = !{!"../net/core/bpf_sk_storage.c", i32 341, i32 26}
!17 = !{ptr @bpf_sk_storage_get_proto, !18, !"bpf_sk_storage_get_proto", i1 false, i1 false}
!18 = !{!"../net/core/bpf_sk_storage.c", i32 358, i32 29}
!19 = !{ptr @bpf_sk_storage_get_cg_sock_proto, !20, !"bpf_sk_storage_get_cg_sock_proto", i1 false, i1 false}
!20 = !{!"../net/core/bpf_sk_storage.c", i32 368, i32 29}
!21 = !{ptr @bpf_sk_storage_delete_proto, !22, !"bpf_sk_storage_delete_proto", i1 false, i1 false}
!22 = !{!"../net/core/bpf_sk_storage.c", i32 378, i32 29}
!23 = !{ptr @bpf_sk_storage_get_tracing_proto, !24, !"bpf_sk_storage_get_tracing_proto", i1 false, i1 false}
!24 = !{!"../net/core/bpf_sk_storage.c", i32 440, i32 29}
!25 = !{ptr @bpf_sk_storage_delete_tracing_proto, !26, !"bpf_sk_storage_delete_tracing_proto", i1 false, i1 false}
!26 = !{!"../net/core/bpf_sk_storage.c", i32 452, i32 29}
!27 = !{ptr @__ksymtab_bpf_sk_storage_diag_free, !28, !"__ksymtab_bpf_sk_storage_diag_free", i1 false, i1 false}
!28 = !{!"../net/core/bpf_sk_storage.c", i32 499, i32 1}
!29 = !{ptr @__ksymtab_bpf_sk_storage_diag_alloc, !30, !"__ksymtab_bpf_sk_storage_diag_alloc", i1 false, i1 false}
!30 = !{!"../net/core/bpf_sk_storage.c", i32 569, i32 1}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/core/bpf_sk_storage.c", i32 683, i32 15}
!33 = !{ptr @__ksymtab_bpf_sk_storage_diag_put, !34, !"__ksymtab_bpf_sk_storage_diag_put", i1 false, i1 false}
!34 = !{!"../net/core/bpf_sk_storage.c", i32 726, i32 1}
!35 = !{ptr @__initcall__kmod_bpf_sk_storage__558_949_bpf_sk_storage_map_iter_init7, !36, !"__initcall__kmod_bpf_sk_storage__558_949_bpf_sk_storage_map_iter_init7", i1 false, i1 false}
!36 = !{!"../net/core/bpf_sk_storage.c", i32 949, i32 1}
!37 = !{ptr @sk_storage_map_btf_id, !38, !"sk_storage_map_btf_id", i1 false, i1 false}
!38 = !{!"../net/core/bpf_sk_storage.c", i32 340, i32 12}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../net/core/bpf_sk_storage.c", i32 263, i32 2}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/core/bpf_sk_storage.c", i32 27, i32 3}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../net/core/bpf_sk_storage.c", i32 294, i32 2}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/core/bpf_sk_storage.c", i32 18, i32 1}
!54 = !{ptr @sk_cache, !53, !"sk_cache", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../net/core/bpf_sk_storage.c", i32 423, i32 2}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../net/core/bpf_sk_storage.c", i32 433, i32 2}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/core/bpf_sk_storage.c", i32 411, i32 27}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/core/bpf_sk_storage.c", i32 622, i32 15}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/core/bpf_sk_storage.c", i32 634, i32 2}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../net/core/bpf_sk_storage.c", i32 635, i32 10}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../net/core/bpf_sk_storage.c", i32 583, i32 9}
!69 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/net/netlink.h", i32 991, i32 3}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/core/bpf_sk_storage.c", i32 928, i32 14}
!73 = !{ptr @bpf_sk_storage_map_reg_info, !74, !"bpf_sk_storage_map_reg_info", i1 false, i1 false}
!74 = !{!"../net/core/bpf_sk_storage.c", i32 927, i32 28}
!75 = !{ptr @iter_seq_info, !76, !"iter_seq_info", i1 false, i1 false}
!76 = !{!"../net/core/bpf_sk_storage.c", i32 920, i32 39}
!77 = !{ptr @bpf_sk_storage_map_seq_ops, !78, !"bpf_sk_storage_map_seq_ops", i1 false, i1 false}
!78 = !{!"../net/core/bpf_sk_storage.c", i32 913, i32 36}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/core/bpf_sk_storage.c", i32 756, i32 11}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/core/bpf_sk_storage.c", i32 765, i32 16}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/core/bpf_sk_storage.c", i32 777, i32 3}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/core/bpf_sk_storage.c", i32 778, i32 17}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/core/bpf_sk_storage.c", i32 845, i32 17}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2149185526}
!100 = !{i64 2149185792}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 2148319461, i64 2148319487, i64 2148319516, i64 2148319550, i64 2148319581, i64 2148319604}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 738413, i64 738437, i64 738458, i64 738475, i64 738492}
!105 = !{i64 2148406551}
!106 = !{i64 2148320991, i64 2148321023, i64 2148321052, i64 2148321086, i64 2148321117, i64 2148321140}
!107 = !{i64 2150432633}
!108 = !{!"auto-init"}
!109 = !{i64 2148316996, i64 2148317022, i64 2148317051, i64 2148317085, i64 2148317116, i64 2148317139}
