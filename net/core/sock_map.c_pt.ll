; ModuleID = '/llk/IR_all_yes/net/core/sock_map.c_pt.bc'
source_filename = "../net/core/sock_map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sock_map_unhash\22, \22a\22\09"
module asm "\09.weak\09__crc_sock_map_unhash\09\09\09\09"
module asm "\09.long\09__crc_sock_map_unhash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_map_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_map_unhash\22\09\09\09\09\09"
module asm "__kstrtabns_sock_map_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sock_map_close\22, \22a\22\09"
module asm "\09.weak\09__crc_sock_map_close\09\09\09\09"
module asm "\09.long\09__crc_sock_map_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_map_close:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_map_close\22\09\09\09\09\09"
module asm "__kstrtabns_sock_map_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.191, %union.anon.192, ptr, ptr }
%union.anon.191 = type { %struct.anon.190 }
%struct.anon.190 = type { i32, i32, i32, i32, i32 }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { ptr, ptr, ptr, ptr, ptr }
%struct.bpf_iter_seq_info = type { ptr, ptr, ptr, i32 }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_iter_reg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.bpf_ctx_arg_aux], ptr }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32, i32 }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.bpf_stab = type { %struct.bpf_map, ptr, %struct.sk_psock_progs, %struct.raw_spinlock, [64 x i8] }
%struct.sk_psock_progs = type { ptr, ptr, ptr, ptr }
%struct.bpf_shtab = type { %struct.bpf_map, ptr, i32, i32, %struct.sk_psock_progs, %struct.atomic_t, [96 x i8] }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.180 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { %struct.anon.182, [0 x %struct.sock_filter] }
%struct.anon.182 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.28 }
%union.anon.28 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.68, %union.anon.70, %union.anon.71, i16, i8, i8, i32, %union.anon.73, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.103, [0 x i32], %union.anon.104, i16, i16, %union.anon.105, %struct.refcount_struct, [0 x i32], %union.anon.106 }
%union.anon.68 = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.102 }
%union.anon.102 = type { [4 x i32] }
%union.anon.103 = type { i32 }
%union.anon.104 = type { %struct.hlist_node }
%union.anon.105 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.106 = type { i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.100, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.100 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.sk_buff_head = type { %union.anon.98, i32, %struct.spinlock }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.sk_psock_link = type { %struct.list_head, ptr, ptr }
%struct.sk_psock = type { ptr, ptr, i32, i32, i32, ptr, %struct.sk_psock_progs, %struct.strparser, %struct.sk_buff_head, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.sk_psock_work_state, %struct.work_struct, %struct.rcu_work }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_psock_work_state = type { ptr, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.bpf_shtab_bucket = type { %struct.hlist_head, %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.bpf_shtab_elem = type { %struct.callback_head, i32, ptr, %struct.hlist_node, [0 x i8] }
%struct.bpf_sock_ops_kern = type { ptr, %union.anon.189, ptr, ptr, ptr, i8, i8, i8, i64 }
%union.anon.189 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.78, %union.anon.81, %union.anon.82, [48 x i8], %union.anon.83, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.85, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr, %union.anon.80 }
%union.anon.80 = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { i64 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, ptr }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.87, i32, i32, i32, i16, i16, %union.anon.89, i32, %union.anon.90, %union.anon.91, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.87 = type { i32 }
%union.anon.89 = type { i32 }
%union.anon.90 = type { i32 }
%union.anon.91 = type { i16 }
%struct.sk_msg = type { %struct.sk_msg_sg, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head }
%struct.sk_msg_sg = type { i32, i32, i32, i32, i32, i32, [19 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.sock_map_seq_info = type { ptr, ptr, i32 }
%struct.bpf_iter__sockmap = type { %union.anon.195, %union.anon.196, %union.anon.197, %union.anon.198 }
%union.anon.195 = type { i64 }
%union.anon.196 = type { i64 }
%union.anon.197 = type { i64 }
%union.anon.198 = type { i64 }
%struct.bpf_iter_meta = type { %union.anon.194, i64, i64 }
%union.anon.194 = type { i64 }
%struct.sock_hash_seq_info = type { ptr, ptr, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.179 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.179 = type { %struct.work_struct }

@bpf_sock_map_update_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sock_map_update, i8 0, i8 1, i32 0, %union.anon.191 { %struct.anon.190 { i32 9, i32 1, i32 2, i32 10, i32 0 } }, %union.anon.192 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_sk_redirect_map_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sk_redirect_map, i8 0, i8 0, i32 0, %union.anon.191 { %struct.anon.190 { i32 9, i32 1, i32 10, i32 10, i32 0 } }, %union.anon.192 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_msg_redirect_map_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_msg_redirect_map, i8 0, i8 0, i32 0, %union.anon.191 { %struct.anon.190 { i32 9, i32 1, i32 10, i32 10, i32 0 } }, %union.anon.192 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bpf_stab\00", [23 x i8] zeroinitializer }, align 32
@sock_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sock_map_iter_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @sock_map_seq_ops, ptr @sock_map_init_seq_private, ptr null, i32 12 }, [16 x i8] zeroinitializer }, align 32
@sock_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @sock_map_alloc, ptr null, ptr @sock_map_free, ptr @sock_map_get_next_key, ptr @sock_map_release_progs, ptr @sock_map_lookup_sys, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sock_map_lookup, ptr @sock_map_update_elem, ptr @sock_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @sock_map_btf_id, ptr @sock_map_iter_seq_info }, [60 x i8] zeroinitializer }, align 32
@bpf_sock_hash_update_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sock_hash_update, i8 0, i8 1, i32 0, %union.anon.191 { %struct.anon.190 { i32 9, i32 1, i32 2, i32 10, i32 0 } }, %union.anon.192 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_sk_redirect_hash_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_sk_redirect_hash, i8 0, i8 0, i32 0, %union.anon.191 { %struct.anon.190 { i32 9, i32 1, i32 2, i32 10, i32 0 } }, %union.anon.192 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_msg_redirect_hash_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_msg_redirect_hash, i8 0, i8 0, i32 0, %union.anon.191 { %struct.anon.190 { i32 9, i32 1, i32 2, i32 10, i32 0 } }, %union.anon.192 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bpf_shtab\00", [22 x i8] zeroinitializer }, align 32
@sock_hash_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sock_hash_iter_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @sock_hash_seq_ops, ptr @sock_hash_init_seq_private, ptr null, i32 12 }, [16 x i8] zeroinitializer }, align 32
@sock_hash_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @sock_hash_alloc, ptr null, ptr @sock_hash_free, ptr @sock_hash_get_next_key, ptr @sock_hash_release_progs, ptr @sock_hash_lookup_sys, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sock_hash_lookup, ptr @sock_map_update_elem, ptr @sock_hash_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str.1, ptr @sock_hash_map_btf_id, ptr @sock_hash_iter_seq_info }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sock_map_unhash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_map_unhash = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_map_unhash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_map_unhash to i32), ptr @__kstrtab_sock_map_unhash, ptr @__kstrtabns_sock_map_unhash }, section "___ksymtab_gpl+sock_map_unhash", align 4
@__kstrtab_sock_map_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_map_close = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_map_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_map_close to i32), ptr @__kstrtab_sock_map_close, ptr @__kstrtabns_sock_map_close }, section "___ksymtab_gpl+sock_map_close", align 4
@__initcall__kmod_sock_map__623_1584_bpf_sockmap_iter_init7 = internal global ptr @bpf_sockmap_iter_init, section ".initcall7.init", align 4
@sock_map_update_common.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/core/sock_map.c\00", [44 x i8] zeroinitializer }, align 32
@sock_map_update_common.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@____bpf_sock_map_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sock_map_lookup_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sock_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&stab->lock\00", [20 x i8] zeroinitializer }, align 32
@sock_map_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sock_map_seq_start, ptr @sock_map_seq_stop, ptr @sock_map_seq_next, ptr @sock_map_seq_show }, [16 x i8] zeroinitializer }, align 32
@sock_hash_update_common.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sock_hash_update_common.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@sock_hash_lookup_elem_raw.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@____bpf_sock_hash_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sock_hash_lookup_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sock_hash_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&htab->buckets[i].lock\00", [41 x i8] zeroinitializer }, align 32
@sock_hash_get_next_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@sock_hash_get_next_key.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sock_hash_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sock_hash_seq_start, ptr @sock_hash_seq_stop, ptr @sock_hash_seq_next, ptr @sock_hash_seq_show }, [16 x i8] zeroinitializer }, align 32
@sock_hash_seq_find_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sock_hash_seq_find_next.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sk_psock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/skmsg.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@sock_hash_delete_from_link.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@btf_sock_ids = external dso_local local_unnamed_addr global [0 x i32], align 4
@sock_map_iter_reg = internal global { %struct.bpf_iter_reg, [36 x i8] } { %struct.bpf_iter_reg { ptr @.str.15, ptr @sock_map_iter_attach_target, ptr @sock_map_iter_detach_target, ptr @bpf_iter_map_show_fdinfo, ptr @bpf_iter_map_fill_link_info, ptr null, i32 2, i32 0, [2 x %struct.bpf_ctx_arg_aux] [%struct.bpf_ctx_arg_aux { i32 16, i32 786, i32 0 }, %struct.bpf_ctx_arg_aux { i32 24, i32 272, i32 0 }], ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sockmap\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 18]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 7, i64 38]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 11]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 11]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 18]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 18]
@__sancov_gen_cov_switch_values.23 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 18]
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"bpf_sock_map_update_proto\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 625, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"bpf_sk_redirect_map_proto\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 652, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"bpf_msg_redirect_map_proto\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 679, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 808, i32 19 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"sock_map_btf_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 796, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [23 x i8] c"sock_map_iter_seq_info\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 790, i32 39 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"sock_map_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 797, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"bpf_sock_hash_update_proto\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1209, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"bpf_sk_redirect_hash_proto\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1236, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"bpf_msg_redirect_hash_proto\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1263, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1400, i32 19 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"sock_hash_map_btf_id\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1388, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"sock_hash_iter_seq_info\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1382, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"sock_hash_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1389, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 475, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 49, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"sock_map_seq_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 774, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 852, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1105, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1041, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"sock_hash_seq_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1365, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 695, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"../include/linux/skmsg.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 286, i32 9 }
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 723, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"sock_map_iter_reg\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1563, i32 28 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [23 x i8] c"../net/core/sock_map.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1564, i32 14 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__initcall__kmod_sock_map__623_1584_bpf_sockmap_iter_init7, ptr @__ksymtab_sock_map_close, ptr @__ksymtab_sock_map_unhash, ptr @bpf_sock_map_update_proto, ptr @bpf_sk_redirect_map_proto, ptr @bpf_msg_redirect_map_proto, ptr @.str, ptr @sock_map_btf_id, ptr @sock_map_iter_seq_info, ptr @sock_map_ops, ptr @bpf_sock_hash_update_proto, ptr @bpf_sk_redirect_hash_proto, ptr @bpf_msg_redirect_hash_proto, ptr @.str.1, ptr @sock_hash_map_btf_id, ptr @sock_hash_iter_seq_info, ptr @sock_hash_ops, ptr @.str.2, ptr @sock_map_alloc.__key, ptr @.str.4, ptr @sock_map_seq_ops, ptr @.str.6, ptr @sock_hash_alloc.__key, ptr @.str.7, ptr @.str.8, ptr @sock_hash_seq_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sock_map_iter_reg, ptr @.str.15], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sock_map_update_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sk_redirect_map_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_msg_redirect_map_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_map_iter_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sock_hash_update_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_sk_redirect_hash_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_msg_redirect_hash_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_hash_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_hash_iter_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_hash_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_map_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_hash_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_hash_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_map_iter_reg to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sock_map_get_from_fd(ptr nocapture noundef readonly %attr, ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %attach_flags = getelementptr inbounds %struct.anon.5, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %attach_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attach_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %replace_bpf_fd = getelementptr inbounds %struct.anon.5, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %replace_bpf_fd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %replace_bpf_fd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call i32 @__fdget(i32 noundef %1) #13, !noalias !99
  %and.i.i = and i32 %call.i, -4
  %6 = inttoptr i32 %and.i.i to ptr
  %and1.i.i = and i32 %call.i, 3
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %and.i.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %and1.i.i, 1
  %call = tail call ptr @__bpf_map_get([2 x i32] %.fca.1.insert) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %attach_type = getelementptr inbounds %struct.anon.5, ptr %attr, i32 0, i32 2
  %8 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attach_type, align 8
  %call6 = tail call fastcc i32 @sock_map_prog_update(ptr noundef %call, ptr noundef %prog, ptr noundef null, i32 noundef %9)
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %if.then.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fput(ptr noundef %6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end5.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call6, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bpf_map_get([2 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_map_prog_update(ptr noundef %map, ptr noundef %prog, ptr noundef %old, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 15, label %sw.bb.i
    i32 18, label %sw.bb1.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %progs.i = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 2
  br label %sock_map_progs.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %progs5.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 4
  br label %sock_map_progs.exit

sock_map_progs.exit:                              ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %progs5.i, %sw.bb1.i ], [ %progs.i, %sw.bb.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %sock_map_progs.exit.cleanup_crit_edge, label %if.end

sock_map_progs.exit.cleanup_crit_edge:            ; preds = %sock_map_progs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sock_map_progs.exit
  %3 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %which, label %if.end.cleanup_crit_edge [
    i32 7, label %if.end.sw.epilog_crit_edge
    i32 4, label %sw.bb1
    i32 5, label %sw.bb2
    i32 38, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %stream_parser = getelementptr inbounds %struct.sk_psock_progs, ptr %retval.0.i, i32 0, i32 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %skb_verdict = getelementptr inbounds %struct.sk_psock_progs, ptr %retval.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %skb_verdict to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb_verdict, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end5, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %stream_verdict = getelementptr inbounds %struct.sk_psock_progs, ptr %retval.0.i, i32 0, i32 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %stream_verdict7 = getelementptr inbounds %struct.sk_psock_progs, ptr %retval.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %stream_verdict7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream_verdict7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end10, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %skb_verdict11 = getelementptr inbounds %struct.sk_psock_progs, ptr %retval.0.i, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end10, %if.end5, %sw.bb1, %if.end.sw.epilog_crit_edge
  %pprog.0 = phi ptr [ %skb_verdict11, %if.end10 ], [ %stream_verdict, %if.end5 ], [ %stream_parser, %sw.bb1 ], [ %retval.0.i, %if.end.sw.epilog_crit_edge ]
  %tobool12.not = icmp eq ptr %old, null
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pprog.0, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %sw.epilog
  %8 = ptrtoint ptr %old to i32
  %9 = ptrtoint ptr %prog to i32
  tail call void @llvm.prefetch.p0(ptr %pprog.0, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then13
  %10 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %pprog.0, i32 %8, i32 %9) #13, !srcloc !102
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %10, 1
  %11 = inttoptr i32 %asmresult1.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !103
  %cmp.not.i = icmp eq ptr %11, %old
  br i1 %cmp.not.i, label %__cmpxchg.exit.i.cleanup.sink.split_crit_edge, label %__cmpxchg.exit.i.cleanup_crit_edge

__cmpxchg.exit.i.cleanup_crit_edge:               ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

__cmpxchg.exit.i.cleanup.sink.split_crit_edge:    ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end15:                                         ; preds = %sw.epilog
  %12 = ptrtoint ptr %prog to i32
  tail call void @llvm.prefetch.p0(ptr %pprog.0, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %12, ptr %pprog.0) #13, !srcloc !104
  %asmresult.i.i28 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i28)
  %tobool.not.i29 = icmp eq i32 %asmresult.i.i28, 0
  br i1 %tobool.not.i29, label %if.end15.cleanup_crit_edge, label %if.then.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %14 = inttoptr i32 %asmresult.i.i28 to ptr
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %__cmpxchg.exit.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.then.i ], [ %old, %__cmpxchg.exit.i.cleanup.sink.split_crit_edge ]
  tail call void @bpf_prog_put(ptr noundef nonnull %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge, %__cmpxchg.exit.i.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sock_map_progs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sock_map_progs.exit.cleanup_crit_edge ], [ -16, %sw.bb2.cleanup_crit_edge ], [ -16, %sw.bb6.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -2, %__cmpxchg.exit.i.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sock_map_prog_detach(ptr nocapture noundef readonly %attr, i32 noundef %ptype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %attach_flags = getelementptr inbounds %struct.anon.5, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %attach_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attach_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %replace_bpf_fd = getelementptr inbounds %struct.anon.5, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %replace_bpf_fd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %replace_bpf_fd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call i32 @__fdget(i32 noundef %1) #13, !noalias !106
  %and.i.i = and i32 %call.i, -4
  %6 = inttoptr i32 %and.i.i to ptr
  %and1.i.i = and i32 %call.i, 3
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %and.i.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %and1.i.i, 1
  %call = tail call ptr @__bpf_map_get([2 x i32] %.fca.1.insert) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %attach_bpf_fd = getelementptr inbounds %struct.anon.5, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %attach_bpf_fd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attach_bpf_fd, align 4
  %call6 = tail call ptr @bpf_prog_get(i32 noundef %9) #13
  %cmp.i35 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call6 to i32
  br label %put_map

if.end10:                                         ; preds = %if.end5
  %type = getelementptr inbounds %struct.bpf_prog, ptr %call6, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %ptype)
  %cmp.not = icmp eq i32 %12, %ptype
  br i1 %cmp.not, label %if.end12, label %if.end10.put_prog_crit_edge

if.end10.put_prog_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_prog

if.end12:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %attach_type = getelementptr inbounds %struct.anon.5, ptr %attr, i32 0, i32 2
  %13 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attach_type, align 8
  %call13 = tail call fastcc i32 @sock_map_prog_update(ptr noundef %call, ptr noundef null, ptr noundef %call6, i32 noundef %14)
  br label %put_prog

put_prog:                                         ; preds = %if.end12, %if.end10.put_prog_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end12 ], [ -22, %if.end10.put_prog_crit_edge ]
  tail call void @bpf_prog_put(ptr noundef %call6) #13
  br label %put_map

put_map:                                          ; preds = %put_prog, %if.then8
  %ret.1 = phi i32 [ %10, %if.then8 ], [ %ret.0, %put_prog ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %put_map.cleanup_crit_edge, label %if.then.i

put_map.cleanup_crit_edge:                        ; preds = %put_map
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %put_map
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fput(ptr noundef %6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %put_map.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.1, %put_map.cleanup_crit_edge ], [ %ret.1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sock_map_update_elem_sys(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #13
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !109
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %1 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %value, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %conv = zext i32 %6 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ufd.0 = phi i64 [ %4, %if.then ], [ %conv, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %ufd.0)
  %cmp1 = icmp ugt i64 %ufd.0, 2147483647
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv5 = trunc i64 %ufd.0 to i32
  %call = call ptr @sockfd_lookup(i32 noundef %conv5, ptr noundef nonnull %ret) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %sk8 = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %sk8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk8, align 16
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %ret, align 4
  br label %out

if.end11:                                         ; preds = %if.end7
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 8
  %12 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_prot.i, align 8
  %psock_update_sk_prot.i = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %psock_update_sk_prot.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %psock_update_sk_prot.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -95, ptr %ret, align 4
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @lock_sock_nested(ptr noundef nonnull %10, i32 noundef 0) #13
  %17 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %20, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !110
  %21 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end14.sock_map_sk_acquire.exit_crit_edge, label %land.lhs.true.i.i

if.end14.sock_map_sk_acquire.exit_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_sk_acquire.exit

land.lhs.true.i.i:                                ; preds = %if.end14
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.sock_map_sk_acquire.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.sock_map_sk_acquire.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_sk_acquire.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.sock_map_sk_acquire.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.sock_map_sk_acquire.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_sk_acquire.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %sock_map_sk_acquire.exit

sock_map_sk_acquire.exit:                         ; preds = %if.then.i.i, %land.lhs.true2.i.i.sock_map_sk_acquire.exit_crit_edge, %land.lhs.true.i.i.sock_map_sk_acquire.exit_crit_edge, %if.end14.sock_map_sk_acquire.exit_crit_edge
  %sk_type.i.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 45
  %25 = ptrtoint ptr %sk_type.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sk_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp.i.i = icmp eq i16 %26, 1
  br i1 %cmp.i.i, label %sk_is_tcp.exit.i, label %sock_map_sk_acquire.exit.if.else17_crit_edge

sock_map_sk_acquire.exit.if.else17_crit_edge:     ; preds = %sock_map_sk_acquire.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else17

sk_is_tcp.exit.i:                                 ; preds = %sock_map_sk_acquire.exit
  %sk_protocol.i.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 46
  %27 = ptrtoint ptr %sk_protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sk_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %28)
  %cmp3.i.i = icmp eq i16 %28, 6
  br i1 %cmp3.i.i, label %sock_map_sk_state_allowed.exit, label %sk_is_tcp.exit.i.if.else17_crit_edge

sk_is_tcp.exit.i.if.else17_crit_edge:             ; preds = %sk_is_tcp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else17

sock_map_sk_state_allowed.exit:                   ; preds = %sk_is_tcp.exit.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %29 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %30 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i44.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i44.not, label %if.then16, label %sock_map_sk_state_allowed.exit.if.else17_crit_edge

sock_map_sk_state_allowed.exit.if.else17_crit_edge: ; preds = %sock_map_sk_state_allowed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else17

if.then16:                                        ; preds = %sock_map_sk_state_allowed.exit
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -95, ptr %ret, align 4
  br label %if.end25

if.else17:                                        ; preds = %sock_map_sk_state_allowed.exit.if.else17_crit_edge, %sk_is_tcp.exit.i.if.else17_crit_edge, %sock_map_sk_acquire.exit.if.else17_crit_edge
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %32 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %33)
  %cmp18 = icmp eq i32 %33, 15
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %key, align 4
  %call21 = call fastcc i32 @sock_map_update_common(ptr noundef %map, i32 noundef %35, ptr noundef nonnull %10, i64 noundef %flags)
  %36 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call21, ptr %ret, align 4
  br label %if.end25

if.else22:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = call fastcc i32 @sock_hash_update_common(ptr noundef %map, ptr noundef %key, ptr noundef nonnull %10, i64 noundef %flags)
  %37 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call23, ptr %ret, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then20, %if.then16
  %call.i.i45 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i45, label %if.end25.sock_map_sk_release.exit_crit_edge, label %land.lhs.true.i.i48

if.end25.sock_map_sk_release.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_sk_release.exit

land.lhs.true.i.i48:                              ; preds = %if.end25
  %call1.i.i46 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i46)
  %tobool.not.i.i47 = icmp eq i32 %call1.i.i46, 0
  br i1 %tobool.not.i.i47, label %land.lhs.true.i.i48.sock_map_sk_release.exit_crit_edge, label %land.lhs.true2.i.i50

land.lhs.true.i.i48.sock_map_sk_release.exit_crit_edge: ; preds = %land.lhs.true.i.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_sk_release.exit

land.lhs.true2.i.i50:                             ; preds = %land.lhs.true.i.i48
  %.b4.i.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i49, label %land.lhs.true2.i.i50.sock_map_sk_release.exit_crit_edge, label %if.then.i.i51

land.lhs.true2.i.i50.sock_map_sk_release.exit_crit_edge: ; preds = %land.lhs.true2.i.i50
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_sk_release.exit

if.then.i.i51:                                    ; preds = %land.lhs.true2.i.i50
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %sock_map_sk_release.exit

sock_map_sk_release.exit:                         ; preds = %if.then.i.i51, %land.lhs.true2.i.i50.sock_map_sk_release.exit_crit_edge, %land.lhs.true.i.i48.sock_map_sk_release.exit_crit_edge, %if.end25.sock_map_sk_release.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %38 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i.i52 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i53, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i53, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !113
  %42 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i54 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i54 to ptr
  %preempt_count.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i55, align 4
  %sub.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i55, align 4
  call void @release_sock(ptr noundef nonnull %10) #13
  br label %out

out:                                              ; preds = %sock_map_sk_release.exit, %if.then13, %if.then10
  %file = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %46 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %47) #13
  %48 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %out ], [ %8, %if.then6 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_map_update_common(ptr noundef %map, i32 noundef %idx, ptr noundef %sk, i64 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b180 = load i1, ptr @sock_map_update_common.__already_done, align 1
  br i1 %.b180, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !114

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_map_update_common.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 475, i32 noundef 9, ptr noundef null) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %cmp = icmp ugt i64 %flags, 2
  br i1 %cmp, label %if.end30.cleanup_crit_edge, label %if.end45, !prof !115

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.end30
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp46.not = icmp ugt i32 %1, %idx
  br i1 %cmp46.not, label %if.end54, label %if.end45.cleanup_crit_edge, !prof !114

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 11040, i32 noundef 16) #16
  %tobool56.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool56.not, label %if.end54.cleanup_crit_edge, label %if.end58

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %call59 = tail call fastcc i32 @sock_map_link(ptr noundef %map, ptr noundef %sk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end58.out_free_crit_edge, label %if.end62

if.end58.out_free_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end62:                                         ; preds = %if.end58
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %3 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end62.sk_psock.exit_crit_edge

if.end62.sk_psock.exit_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

land.lhs.true.i:                                  ; preds = %if.end62
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.sk_psock.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.sk_psock.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.sk_psock.exit_crit_edge, label %if.then.i

land.lhs.true4.i.sk_psock.exit_crit_edge:         ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 286, ptr noundef nonnull @.str.8) #13
  br label %sk_psock.exit

sk_psock.exit:                                    ; preds = %if.then.i, %land.lhs.true4.i.sk_psock.exit_crit_edge, %land.lhs.true.i.sk_psock.exit_crit_edge, %if.end62.sk_psock.exit_crit_edge
  %5 = ptrtoint ptr %4 to i32
  %and.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool65.not = icmp eq i32 %and.i, 0
  br i1 %tobool65.not, label %land.rhs74, label %sk_psock.exit.if.end112_crit_edge

sk_psock.exit.if.end112_crit_edge:                ; preds = %sk_psock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

land.rhs74:                                       ; preds = %sk_psock.exit
  %.b178179 = load i1, ptr @sock_map_update_common.__already_done.3, align 1
  br i1 %.b178179, label %land.rhs74.if.end112_crit_edge, label %if.then85, !prof !114

land.rhs74.if.end112_crit_edge:                   ; preds = %land.rhs74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then85:                                        ; preds = %land.rhs74
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_map_update_common.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 490, i32 noundef 9, ptr noundef null) #13
  br label %if.end112

if.end112:                                        ; preds = %if.then85, %land.rhs74.if.end112_crit_edge, %sk_psock.exit.if.end112_crit_edge
  %lock = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %sks = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 1
  %7 = ptrtoint ptr %sks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sks, align 128
  %arrayidx = getelementptr ptr, ptr %8, i32 %idx
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool120.not = icmp eq ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %flags)
  %cmp121 = icmp ne i64 %flags, 1
  %11 = or i1 %cmp121, %tobool120.not
  br i1 %11, label %if.else, label %if.end112.out_unlock_crit_edge

if.end112.out_unlock_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.else:                                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %cmp125 = icmp eq i64 %flags, 2
  %or.cond181 = and i1 %cmp125, %tobool120.not
  br i1 %or.cond181, label %if.else.out_unlock_crit_edge, label %if.end128

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end128:                                        ; preds = %if.else
  %link_raw1.i = getelementptr inbounds %struct.sk_psock_link, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %link_raw1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %link_raw1.i, align 4
  %map2.i = getelementptr inbounds %struct.sk_psock_link, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %map2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %map, ptr %map2.i, align 8
  %link_lock.i = getelementptr inbounds %struct.sk_psock, ptr %6, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %link_lock.i) #13
  %link3.i = getelementptr inbounds %struct.sk_psock, ptr %6, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.sk_psock, ptr %6, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %15, ptr noundef %link3.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end128.sock_map_add_link.exit_crit_edge

if.end128.sock_map_add_link.exit_crit_edge:       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_add_link.exit

if.end.i.i.i:                                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %link3.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i.i, ptr %15, align 4
  br label %sock_map_add_link.exit

sock_map_add_link.exit:                           ; preds = %if.end.i.i.i, %if.end128.sock_map_add_link.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %link_lock.i) #13
  %20 = ptrtoint ptr %sks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sks, align 128
  %arrayidx132 = getelementptr ptr, ptr %21, i32 %idx
  %22 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sk, ptr %arrayidx132, align 4
  br i1 %tobool120.not, label %sock_map_add_link.exit.if.end137_crit_edge, label %if.then134

sock_map_add_link.exit.if.end137_crit_edge:       ; preds = %sock_map_add_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then134:                                       ; preds = %sock_map_add_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %sks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sks, align 128
  %arrayidx136 = getelementptr ptr, ptr %24, i32 %idx
  tail call fastcc void @sock_map_unref(ptr noundef nonnull %10, ptr noundef %arrayidx136)
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %sock_map_add_link.exit.if.end137_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  br label %cleanup

out_unlock:                                       ; preds = %if.else.out_unlock_crit_edge, %if.end112.out_unlock_crit_edge
  %ret.0 = phi i32 [ -17, %if.end112.out_unlock_crit_edge ], [ -2, %if.else.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  br i1 %tobool65.not, label %out_unlock.out_free_crit_edge, label %if.then141

out_unlock.out_free_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then141:                                       ; preds = %out_unlock
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %6, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i182, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_free_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end5.i.i.i.i.out_free_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %out_free

if.then.i182:                                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %6) #13
  br label %out_free

out_free:                                         ; preds = %if.then.i182, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_free_crit_edge, %out_unlock.out_free_crit_edge, %if.end58.out_free_crit_edge
  %ret.1 = phi i32 [ %call59, %if.end58.out_free_crit_edge ], [ %ret.0, %out_unlock.out_free_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.out_free_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i182 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end137, %if.end54.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ 0, %if.end137 ], [ -22, %if.end30.cleanup_crit_edge ], [ -7, %if.end45.cleanup_crit_edge ], [ -12, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_hash_update_common(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %sk, i64 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size1 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size1, align 16
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b186 = load i1, ptr @sock_hash_update_common.__already_done, align 1
  br i1 %.b186, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !114

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_update_common.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 970, i32 noundef 9, ptr noundef null) #13
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %cmp = icmp ugt i64 %flags, 2
  br i1 %cmp, label %if.end31.cleanup_crit_edge, label %if.end46, !prof !115

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end46:                                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 11040, i32 noundef 16) #16
  %tobool48.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool48.not, label %if.end46.cleanup_crit_edge, label %if.end50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %call51 = tail call fastcc i32 @sock_map_link(ptr noundef %map, ptr noundef %sk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end50.out_free_crit_edge, label %if.end54

if.end50.out_free_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end54:                                         ; preds = %if.end50
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %3 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end54.sk_psock.exit_crit_edge

if.end54.sk_psock.exit_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

land.lhs.true.i:                                  ; preds = %if.end54
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.sk_psock.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.sk_psock.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.sk_psock.exit_crit_edge, label %if.then.i

land.lhs.true4.i.sk_psock.exit_crit_edge:         ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 286, ptr noundef nonnull @.str.8) #13
  br label %sk_psock.exit

sk_psock.exit:                                    ; preds = %if.then.i, %land.lhs.true4.i.sk_psock.exit_crit_edge, %land.lhs.true.i.sk_psock.exit_crit_edge, %if.end54.sk_psock.exit_crit_edge
  %5 = ptrtoint ptr %4 to i32
  %and.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool57.not = icmp eq i32 %and.i, 0
  br i1 %tobool57.not, label %land.rhs66, label %sk_psock.exit.if.end104_crit_edge

sk_psock.exit.if.end104_crit_edge:                ; preds = %sk_psock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

land.rhs66:                                       ; preds = %sk_psock.exit
  %.b184185 = load i1, ptr @sock_hash_update_common.__already_done.5, align 1
  br i1 %.b184185, label %land.rhs66.if.end104_crit_edge, label %if.then77, !prof !114

land.rhs66.if.end104_crit_edge:                   ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then77:                                        ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_update_common.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 983, i32 noundef 9, ptr noundef null) #13
  br label %if.end104

if.end104:                                        ; preds = %if.then77, %land.rhs66.if.end104_crit_edge, %sk_psock.exit.if.end104_crit_edge
  %call112 = tail call fastcc i32 @sock_hash_bucket_hash(ptr noundef %key, i32 noundef %1)
  %buckets.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 1
  %7 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buckets.i, align 128
  %buckets_num.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 2
  %9 = ptrtoint ptr %buckets_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buckets_num.i, align 4
  %sub.i = add i32 %10, -1
  %and.i188 = and i32 %sub.i, %call112
  %arrayidx.i = getelementptr %struct.bpf_shtab_bucket, ptr %8, i32 %and.i188
  %lock = getelementptr %struct.bpf_shtab_bucket, ptr %8, i32 %and.i188, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %call.i189 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i190 = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i190, label %land.lhs.true.i191, label %if.end104.do.end.i_crit_edge

if.end104.do.end.i_crit_edge:                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i191:                               ; preds = %if.end104
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i191.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i191.do.end.i_crit_edge:            ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i191
  %.b42.i = load i1, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i192

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i192:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 852, ptr noundef nonnull @.str.6) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i192, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i191.do.end.i_crit_edge, %if.end104.do.end.i_crit_edge
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  %add.ptr.i = getelementptr i8, ptr %12, i32 -16
  %tobool12.not4650.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not46.i = or i1 %tobool10.not.i, %tobool12.not4650.i
  br i1 %tobool12.not46.i, label %do.end.i.if.else_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.else_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %elem.047.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %hash13.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 1
  %13 = ptrtoint ptr %hash13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call112)
  %cmp.i = icmp eq i32 %14, %call112
  br i1 %cmp.i, label %land.lhs.true14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %for.body.i
  %key15.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %key15.i, ptr %key, i32 %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %sock_hash_lookup_elem_raw.exit, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %node.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 3
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %node.i, align 4
  %tobool27.not.i = icmp eq ptr %16, null
  %add.ptr31.i = getelementptr i8, ptr %16, i32 -16
  %tobool12.not51.i = icmp eq ptr %add.ptr31.i, null
  %tobool12.not.i = or i1 %tobool27.not.i, %tobool12.not51.i
  br i1 %tobool12.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

sock_hash_lookup_elem_raw.exit:                   ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %flags)
  %cmp116 = icmp eq i64 %flags, 1
  br i1 %cmp116, label %sock_hash_lookup_elem_raw.exit.out_unlock_crit_edge, label %sock_hash_lookup_elem_raw.exit.if.end123_crit_edge

sock_hash_lookup_elem_raw.exit.if.end123_crit_edge: ; preds = %sock_hash_lookup_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

sock_hash_lookup_elem_raw.exit.out_unlock_crit_edge: ; preds = %sock_hash_lookup_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.else:                                          ; preds = %for.inc.i.if.else_crit_edge, %do.end.i.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %cmp120 = icmp eq i64 %flags, 2
  br i1 %cmp120, label %if.else.out_unlock_crit_edge, label %if.else.if.end123_crit_edge

if.else.if.end123_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end123:                                        ; preds = %if.else.if.end123_crit_edge, %sock_hash_lookup_elem_raw.exit.if.end123_crit_edge
  %elem.0.lcssa.i208220 = phi ptr [ null, %if.else.if.end123_crit_edge ], [ %elem.047.i, %sock_hash_lookup_elem_raw.exit.if.end123_crit_edge ]
  %tobool115.not209219 = phi i1 [ true, %if.else.if.end123_crit_edge ], [ false, %sock_hash_lookup_elem_raw.exit.if.end123_crit_edge ]
  %count.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !120
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !121
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %18 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %19)
  %cmp.i193 = icmp ugt i32 %asmresult.i.i.i.i.i, %19
  %or.cond.i = and i1 %tobool115.not209219, %cmp.i193
  br i1 %or.cond.i, label %if.then1.i, label %if.end4.i

if.then1.i:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i26.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !122
  br label %if.then126

if.end4.i:                                        ; preds = %if.end123
  %elem_size.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 3
  %21 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %elem_size.i, align 8
  %numa_node.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 12
  %23 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numa_node.i, align 8
  %call7.i = tail call ptr @bpf_map_kmalloc_node(ptr noundef %map, i32 noundef %22, i32 noundef 10784, i32 noundef %24) #13
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %sock_hash_alloc_elem.exit

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i27.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !122
  br label %if.then126

sock_hash_alloc_elem.exit:                        ; preds = %if.end4.i
  %key13.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %call7.i, i32 0, i32 4
  %26 = call ptr @memcpy(ptr %key13.i, ptr %key, i32 %1)
  %sk14.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %call7.i, i32 0, i32 2
  %27 = ptrtoint ptr %sk14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sk, ptr %sk14.i, align 4
  %hash15.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %call7.i, i32 0, i32 1
  %28 = ptrtoint ptr %hash15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call112, ptr %hash15.i, align 4
  %cmp.i195 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %sock_hash_alloc_elem.exit.if.then126_crit_edge, label %if.end128

sock_hash_alloc_elem.exit.if.then126_crit_edge:   ; preds = %sock_hash_alloc_elem.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126

if.then126:                                       ; preds = %sock_hash_alloc_elem.exit.if.then126_crit_edge, %if.then9.i, %if.then1.i
  %retval.0.i212 = phi ptr [ %call7.i, %sock_hash_alloc_elem.exit.if.then126_crit_edge ], [ inttoptr (i32 -7 to ptr), %if.then1.i ], [ inttoptr (i32 -12 to ptr), %if.then9.i ]
  %29 = ptrtoint ptr %retval.0.i212 to i32
  br label %out_unlock

if.end128:                                        ; preds = %sock_hash_alloc_elem.exit
  %link_raw1.i = getelementptr inbounds %struct.sk_psock_link, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %link_raw1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %link_raw1.i, align 4
  %map2.i = getelementptr inbounds %struct.sk_psock_link, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %map2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %map, ptr %map2.i, align 8
  %link_lock.i = getelementptr inbounds %struct.sk_psock, ptr %6, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %link_lock.i) #13
  %link3.i = getelementptr inbounds %struct.sk_psock, ptr %6, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.sk_psock, ptr %6, i32 0, i32 12, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i196 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %33, ptr noundef %link3.i) #13
  br i1 %call.i.i.i196, label %if.end.i.i.i, label %if.end128.sock_map_add_link.exit_crit_edge

if.end128.sock_map_add_link.exit_crit_edge:       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_add_link.exit

if.end.i.i.i:                                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %link3.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i.i, ptr %33, align 4
  br label %sock_map_add_link.exit

sock_map_add_link.exit:                           ; preds = %if.end.i.i.i, %if.end128.sock_map_add_link.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %link_lock.i) #13
  %node = getelementptr inbounds %struct.bpf_shtab_elem, ptr %call7.i, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %40 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %node, align 4
  %pprev.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %call7.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !123
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %node, ptr %arrayidx.i, align 4
  %tobool.not.i197 = icmp eq ptr %39, null
  br i1 %tobool.not.i197, label %sock_map_add_link.exit.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

sock_map_add_link.exit.hlist_add_head_rcu.exit_crit_edge: ; preds = %sock_map_add_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %sock_map_add_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %node, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %sock_map_add_link.exit.hlist_add_head_rcu.exit_crit_edge
  br i1 %tobool115.not209219, label %hlist_add_head_rcu.exit.if.end134_crit_edge, label %if.then131

hlist_add_head_rcu.exit.if.end134_crit_edge:      ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.then131:                                       ; preds = %hlist_add_head_rcu.exit
  %node132 = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.0.lcssa.i208220, i32 0, i32 3
  %44 = ptrtoint ptr %node132 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %node132, align 4
  %pprev2.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.0.lcssa.i208220, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pprev2.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %45, ptr %47, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.then131.sock_hash_free_elem.exit_crit_edge, label %do.body13.i.i

if.then131.sock_hash_free_elem.exit_crit_edge:    ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hash_free_elem.exit

do.body13.i.i:                                    ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %pprev14.i.i, align 4
  br label %sock_hash_free_elem.exit

sock_hash_free_elem.exit:                         ; preds = %do.body13.i.i, %if.then131.sock_hash_free_elem.exit_crit_edge
  %50 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %sk133 = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.0.lcssa.i208220, i32 0, i32 2
  %51 = ptrtoint ptr %sk133 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sk133, align 4
  tail call fastcc void @sock_map_unref(ptr noundef %52, ptr noundef nonnull %elem.0.lcssa.i208220)
  %call.i.i.i199 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !122
  tail call void @kvfree_call_rcu(ptr noundef nonnull %elem.0.lcssa.i208220, ptr noundef null) #13
  br label %if.end134

if.end134:                                        ; preds = %sock_hash_free_elem.exit, %hlist_add_head_rcu.exit.if.end134_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  br label %cleanup

out_unlock:                                       ; preds = %if.then126, %if.else.out_unlock_crit_edge, %sock_hash_lookup_elem_raw.exit.out_unlock_crit_edge
  %ret.0 = phi i32 [ %29, %if.then126 ], [ -17, %sock_hash_lookup_elem_raw.exit.out_unlock_crit_edge ], [ -2, %if.else.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %6, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i202, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_unlock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_free_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end5.i.i.i.i.out_free_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %out_free

if.then.i202:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef %6) #13
  br label %out_free

out_free:                                         ; preds = %if.then.i202, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_free_crit_edge, %if.end50.out_free_crit_edge
  %ret.1 = phi i32 [ %call51, %if.end50.out_free_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.out_free_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i202 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end134, %if.end46.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ 0, %if.end134 ], [ -22, %if.end31.cleanup_crit_edge ], [ -12, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_sock_map_update(i64 noundef %sops, i64 noundef %map, i64 noundef %key, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %sops to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %map to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %key to i32
  %2 = inttoptr i32 %conv2 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

land.rhs.i:                                       ; preds = %entry
  %.b55.i = load i1, ptr @____bpf_sock_map_update.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !114

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @____bpf_sock_map_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 616, i32 noundef 9, ptr noundef null) #13
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %entry.if.end29.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 8
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_prot.i.i, align 8
  %psock_update_sk_prot.i.i = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %psock_update_sk_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %psock_update_sk_prot.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %8, null
  br i1 %tobool.i.not.i, label %if.end29.i.____bpf_sock_map_update.exit_crit_edge, label %land.rhs38.i, !prof !115

if.end29.i.____bpf_sock_map_update.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sock_map_update.exit

land.rhs38.i:                                     ; preds = %if.end29.i
  %op.i.i = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %0, i32 0, i32 5
  %9 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %op.i.i, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %10, label %land.rhs38.i.____bpf_sock_map_update.exit_crit_edge [
    i8 5, label %land.rhs38.i.if.then47.i_crit_edge
    i8 4, label %land.rhs38.i.if.then47.i_crit_edge3
    i8 11, label %land.rhs38.i.if.then47.i_crit_edge4
  ]

land.rhs38.i.if.then47.i_crit_edge4:              ; preds = %land.rhs38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

land.rhs38.i.if.then47.i_crit_edge3:              ; preds = %land.rhs38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

land.rhs38.i.if.then47.i_crit_edge:               ; preds = %land.rhs38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

land.rhs38.i.____bpf_sock_map_update.exit_crit_edge: ; preds = %land.rhs38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sock_map_update.exit

if.then47.i:                                      ; preds = %land.rhs38.i.if.then47.i_crit_edge, %land.rhs38.i.if.then47.i_crit_edge3, %land.rhs38.i.if.then47.i_crit_edge4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  %call49.i = tail call fastcc i32 @sock_map_update_common(ptr noundef %1, i32 noundef %13, ptr noundef %4, i64 noundef %flags) #13
  %conv.i = sext i32 %call49.i to i64
  br label %____bpf_sock_map_update.exit

____bpf_sock_map_update.exit:                     ; preds = %if.then47.i, %land.rhs38.i.____bpf_sock_map_update.exit_crit_edge, %if.end29.i.____bpf_sock_map_update.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %if.then47.i ], [ -95, %if.end29.i.____bpf_sock_map_update.exit_crit_edge ], [ -95, %land.rhs38.i.____bpf_sock_map_update.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_sk_redirect_map(i64 noundef %skb, i64 noundef %map, i64 noundef %key, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %skb to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %map to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %key to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %tobool.not.i = icmp ult i64 %flags, 2
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_sk_redirect_map.exit_crit_edge, !prof !114

entry.____bpf_sk_redirect_map.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_redirect_map.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end.i.if.end30.i.i_crit_edge

if.end.i.if.end30.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b54.i.i = load i1, ptr @__sock_map_lookup_elem.__already_done, align 1
  br i1 %.b54.i.i, label %land.rhs.i.i.if.end30.i.i_crit_edge, label %if.then.i.i, !prof !114

land.rhs.i.i.if.end30.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__sock_map_lookup_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 376, i32 noundef 9, ptr noundef null) #13
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end30.i.i_crit_edge, %if.end.i.if.end30.i.i_crit_edge
  %max_entries.i.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv2)
  %cmp.not.i.i = icmp ugt i32 %3, %conv2
  br i1 %cmp.not.i.i, label %__sock_map_lookup_elem.exit.i, label %if.end30.i.i.____bpf_sk_redirect_map.exit_crit_edge, !prof !114

if.end30.i.i.____bpf_sk_redirect_map.exit_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_redirect_map.exit

__sock_map_lookup_elem.exit.i:                    ; preds = %if.end30.i.i
  %sks.i.i = getelementptr inbounds %struct.bpf_stab, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sks.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sks.i.i, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 %conv2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %__sock_map_lookup_elem.exit.i.____bpf_sk_redirect_map.exit_crit_edge, label %lor.rhs.i, !prof !115

__sock_map_lookup_elem.exit.i.____bpf_sk_redirect_map.exit_crit_edge: ; preds = %__sock_map_lookup_elem.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_redirect_map.exit

lor.rhs.i:                                        ; preds = %__sock_map_lookup_elem.exit.i
  %sk_type.i.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %sk_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sk_type.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp.i.i.i = icmp eq i16 %9, 1
  br i1 %cmp.i.i.i, label %sk_is_tcp.exit.i.i, label %lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge

lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_redirect_allowed.exit.i

sk_is_tcp.exit.i.i:                               ; preds = %lor.rhs.i
  %sk_protocol.i.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 46
  %10 = ptrtoint ptr %sk_protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_protocol.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %11)
  %cmp3.i.i.i = icmp eq i16 %11, 6
  br i1 %cmp3.i.i.i, label %if.then.i20.i, label %sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge

sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge: ; preds = %sk_is_tcp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_redirect_allowed.exit.i

if.then.i20.i:                                    ; preds = %sk_is_tcp.exit.i.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp.i.not.i = icmp eq i8 %13, 10
  br i1 %cmp.i.not.i, label %if.then.i20.i.____bpf_sk_redirect_map.exit_crit_edge, label %if.then.i20.i.if.end14.i_crit_edge, !prof !115

if.then.i20.i.if.end14.i_crit_edge:               ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then.i20.i.____bpf_sk_redirect_map.exit_crit_edge: ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_redirect_map.exit

sock_map_redirect_allowed.exit.i:                 ; preds = %sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge, %lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge
  %skc_state3.i.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state3.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp5.i.i = icmp eq i8 %15, 1
  br i1 %cmp5.i.i, label %sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge, label %sock_map_redirect_allowed.exit.i.____bpf_sk_redirect_map.exit_crit_edge, !prof !114

sock_map_redirect_allowed.exit.i.____bpf_sk_redirect_map.exit_crit_edge: ; preds = %sock_map_redirect_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_redirect_map.exit

sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge: ; preds = %sock_map_redirect_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.end14.i:                                       ; preds = %sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge, %if.then.i20.i.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %tobool16.i = icmp ne i64 %flags, 0
  %16 = ptrtoint ptr %7 to i32
  %or.i.i = zext i1 %tobool16.i to i32
  %spec.select.i.i = or i32 %16, %or.i.i
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select.i.i, ptr %17, align 8
  br label %____bpf_sk_redirect_map.exit

____bpf_sk_redirect_map.exit:                     ; preds = %if.end14.i, %sock_map_redirect_allowed.exit.i.____bpf_sk_redirect_map.exit_crit_edge, %if.then.i20.i.____bpf_sk_redirect_map.exit_crit_edge, %__sock_map_lookup_elem.exit.i.____bpf_sk_redirect_map.exit_crit_edge, %if.end30.i.i.____bpf_sk_redirect_map.exit_crit_edge, %entry.____bpf_sk_redirect_map.exit_crit_edge
  %retval.0.i = phi i64 [ 1, %if.end14.i ], [ 0, %entry.____bpf_sk_redirect_map.exit_crit_edge ], [ 0, %sock_map_redirect_allowed.exit.i.____bpf_sk_redirect_map.exit_crit_edge ], [ 0, %__sock_map_lookup_elem.exit.i.____bpf_sk_redirect_map.exit_crit_edge ], [ 0, %if.end30.i.i.____bpf_sk_redirect_map.exit_crit_edge ], [ 0, %if.then.i20.i.____bpf_sk_redirect_map.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_msg_redirect_map(i64 noundef %msg, i64 noundef %map, i64 noundef %key, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %msg to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %map to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %key to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %tobool.not.i = icmp ult i64 %flags, 2
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_msg_redirect_map.exit_crit_edge, !prof !114

entry.____bpf_msg_redirect_map.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_msg_redirect_map.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end.i.if.end30.i.i_crit_edge

if.end.i.if.end30.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b54.i.i = load i1, ptr @__sock_map_lookup_elem.__already_done, align 1
  br i1 %.b54.i.i, label %land.rhs.i.i.if.end30.i.i_crit_edge, label %if.then.i.i, !prof !114

land.rhs.i.i.if.end30.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__sock_map_lookup_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 376, i32 noundef 9, ptr noundef null) #13
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end30.i.i_crit_edge, %if.end.i.if.end30.i.i_crit_edge
  %max_entries.i.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv2)
  %cmp.not.i.i = icmp ugt i32 %3, %conv2
  br i1 %cmp.not.i.i, label %__sock_map_lookup_elem.exit.i, label %if.end30.i.i.____bpf_msg_redirect_map.exit_crit_edge, !prof !114

if.end30.i.i.____bpf_msg_redirect_map.exit_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_msg_redirect_map.exit

__sock_map_lookup_elem.exit.i:                    ; preds = %if.end30.i.i
  %sks.i.i = getelementptr inbounds %struct.bpf_stab, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sks.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sks.i.i, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 %conv2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %__sock_map_lookup_elem.exit.i.____bpf_msg_redirect_map.exit_crit_edge, label %lor.rhs.i, !prof !115

__sock_map_lookup_elem.exit.i.____bpf_msg_redirect_map.exit_crit_edge: ; preds = %__sock_map_lookup_elem.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_msg_redirect_map.exit

lor.rhs.i:                                        ; preds = %__sock_map_lookup_elem.exit.i
  %sk_type.i.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %sk_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sk_type.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp.i.i.i = icmp eq i16 %9, 1
  br i1 %cmp.i.i.i, label %sk_is_tcp.exit.i.i, label %lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge

lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_redirect_allowed.exit.i

sk_is_tcp.exit.i.i:                               ; preds = %lor.rhs.i
  %sk_protocol.i.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 46
  %10 = ptrtoint ptr %sk_protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_protocol.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %11)
  %cmp3.i.i.i = icmp eq i16 %11, 6
  br i1 %cmp3.i.i.i, label %if.then.i20.i, label %sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge

sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge: ; preds = %sk_is_tcp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_redirect_allowed.exit.i

if.then.i20.i:                                    ; preds = %sk_is_tcp.exit.i.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp.i.not.i = icmp eq i8 %13, 10
  br i1 %cmp.i.not.i, label %if.then.i20.i.____bpf_msg_redirect_map.exit_crit_edge, label %if.then.i20.i.if.end14.i_crit_edge, !prof !115

if.then.i20.i.if.end14.i_crit_edge:               ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then.i20.i.____bpf_msg_redirect_map.exit_crit_edge: ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_msg_redirect_map.exit

sock_map_redirect_allowed.exit.i:                 ; preds = %sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge, %lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge
  %skc_state3.i.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state3.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp5.i.i = icmp eq i8 %15, 1
  br i1 %cmp5.i.i, label %sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge, label %sock_map_redirect_allowed.exit.i.____bpf_msg_redirect_map.exit_crit_edge, !prof !114

sock_map_redirect_allowed.exit.i.____bpf_msg_redirect_map.exit_crit_edge: ; preds = %sock_map_redirect_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_msg_redirect_map.exit

sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge: ; preds = %sock_map_redirect_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.end14.i:                                       ; preds = %sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge, %if.then.i20.i.if.end14.i_crit_edge
  %conv.i = trunc i64 %flags to i32
  %flags15.i = getelementptr inbounds %struct.sk_msg, ptr %0, i32 0, i32 5
  %16 = ptrtoint ptr %flags15.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %flags15.i, align 4
  %sk_redir.i = getelementptr inbounds %struct.sk_msg, ptr %0, i32 0, i32 7
  %17 = ptrtoint ptr %sk_redir.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %7, ptr %sk_redir.i, align 4
  br label %____bpf_msg_redirect_map.exit

____bpf_msg_redirect_map.exit:                    ; preds = %if.end14.i, %sock_map_redirect_allowed.exit.i.____bpf_msg_redirect_map.exit_crit_edge, %if.then.i20.i.____bpf_msg_redirect_map.exit_crit_edge, %__sock_map_lookup_elem.exit.i.____bpf_msg_redirect_map.exit_crit_edge, %if.end30.i.i.____bpf_msg_redirect_map.exit_crit_edge, %entry.____bpf_msg_redirect_map.exit_crit_edge
  %retval.0.i = phi i64 [ 1, %if.end14.i ], [ 0, %entry.____bpf_msg_redirect_map.exit_crit_edge ], [ 0, %sock_map_redirect_allowed.exit.i.____bpf_msg_redirect_map.exit_crit_edge ], [ 0, %__sock_map_lookup_elem.exit.i.____bpf_msg_redirect_map.exit_crit_edge ], [ 0, %if.end30.i.i.____bpf_msg_redirect_map.exit_crit_edge ], [ 0, %if.then.i20.i.____bpf_msg_redirect_map.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_sockmap(ptr nocapture noundef readnone %meta, ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %sk) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sock_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2.not = icmp eq i32 %3, 4
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %5, label %lor.lhs.false3.cleanup_crit_edge [
    i32 4, label %lor.lhs.false3.lor.lhs.false7_crit_edge
    i32 8, label %lor.lhs.false3.lor.lhs.false7_crit_edge39
  ]

lor.lhs.false3.lor.lhs.false7_crit_edge39:        ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false7

lor.lhs.false3.lor.lhs.false7_crit_edge:          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false7

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false3.lor.lhs.false7_crit_edge, %lor.lhs.false3.lor.lhs.false7_crit_edge39
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %7 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_flags, align 8
  %and = and i32 %8, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 5246400, i32 noundef 512) #16
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call7.i.i, ptr noundef %attr) #13
  %lock = getelementptr inbounds %struct.bpf_stab, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @sock_map_alloc.__key, i16 noundef signext 2) #13
  %max_entries17 = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %max_entries17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_entries17, align 8
  %conv = zext i32 %11 to i64
  %mul = shl nuw nsw i64 %conv, 2
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numa_node, align 8
  %call19 = tail call ptr @bpf_map_area_alloc(i64 noundef %mul, i32 noundef %13) #13
  %sks = getelementptr inbounds %struct.bpf_stab, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %sks to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call19, ptr %sks, align 128
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.then22, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then22 ], [ %call7.i.i, %if.end15.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false7.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sock_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @synchronize_rcu() #13
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38.not = icmp eq i32 %1, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sks = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %sks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sks, align 128
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.039
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx) #13, !srcloc !104
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  %5 = inttoptr i32 %asmresult.i to ptr
  tail call void @lock_sock_nested(ptr noundef nonnull %5, i32 noundef 0) #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i28, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  tail call fastcc void @sock_map_unref(ptr noundef nonnull %5, ptr noundef %arrayidx)
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i29, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %rcu_read_lock.exit
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %10 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i36 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  tail call void @release_sock(ptr noundef nonnull %5) #13
  br label %if.end

if.end:                                           ; preds = %rcu_read_unlock.exit, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.039, 1
  %14 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_entries, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @synchronize_rcu() #13
  %sks17 = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 1
  %16 = ptrtoint ptr %sks17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sks17, align 128
  tail call void @bpf_map_area_free(ptr noundef %17) #13
  tail call void @kfree(ptr noundef %map) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sock_map_get_next_key(ptr nocapture noundef readonly %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %sub)
  %cmp = icmp eq i32 %cond, %sub
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %3)
  %cmp4.not = icmp ult i32 %cond, %3
  %add = add i32 %cond, 1
  %storemerge = select i1 %cmp4.not, i32 %add, i32 0
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %next, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sock_map_release_progs(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %progs = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 2
  tail call fastcc void @psock_progs_drop(ptr noundef %progs)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sock_map_lookup_sys(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.if.end30.i_crit_edge

if.end.if.end30.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.end
  %.b54.i = load i1, ptr @__sock_map_lookup_elem.__already_done, align 1
  br i1 %.b54.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then.i, !prof !114

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__sock_map_lookup_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 376, i32 noundef 9, ptr noundef null) #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end30.i_crit_edge, %if.end.if.end30.i_crit_edge
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %4 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i = icmp ugt i32 %5, %3
  br i1 %cmp.not.i, label %__sock_map_lookup_elem.exit, label %if.end30.i.cleanup_crit_edge, !prof !114

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

__sock_map_lookup_elem.exit:                      ; preds = %if.end30.i
  %sks.i = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 1
  %6 = ptrtoint ptr %sks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sks.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %__sock_map_lookup_elem.exit.cleanup_crit_edge, label %if.end4

__sock_map_lookup_elem.exit.cleanup_crit_edge:    ; preds = %__sock_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %__sock_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i64 @__sock_gen_cookie(ptr noundef nonnull %9) #13
  %skc_cookie = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %__sock_map_lookup_elem.exit.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %skc_cookie, %if.end4 ], [ inttoptr (i32 -28 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %__sock_map_lookup_elem.exit.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end30.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sock_map_lookup(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end30.i_crit_edge

entry.if.end30.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

land.rhs.i:                                       ; preds = %entry
  %.b54.i = load i1, ptr @__sock_map_lookup_elem.__already_done, align 1
  br i1 %.b54.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then.i, !prof !114

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__sock_map_lookup_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 376, i32 noundef 9, ptr noundef null) #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end30.i_crit_edge, %entry.if.end30.i_crit_edge
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp ugt i32 %3, %1
  br i1 %cmp.not.i, label %__sock_map_lookup_elem.exit, label %if.end30.i.cleanup_crit_edge, !prof !114

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

__sock_map_lookup_elem.exit:                      ; preds = %if.end30.i
  %sks.i = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %sks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sks.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %__sock_map_lookup_elem.exit.cleanup_crit_edge, label %if.end

__sock_map_lookup_elem.exit.cleanup_crit_edge:    ; preds = %__sock_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %__sock_map_lookup_elem.exit
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.land.lhs.true_crit_edge, label %sk_is_refcounted.exit

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

sk_is_refcounted.exit:                            ; preds = %if.end
  %10 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i3.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i3.not.i, label %sk_is_refcounted.exit.land.lhs.true_crit_edge, label %sk_is_refcounted.exit.if.end4_crit_edge

sk_is_refcounted.exit.if.end4_crit_edge:          ; preds = %sk_is_refcounted.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

sk_is_refcounted.exit.land.lhs.true_crit_edge:    ; preds = %sk_is_refcounted.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sk_is_refcounted.exit.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #13
  %14 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %16 = phi i32 [ %15, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %16, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #13
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #13
  %18 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %20 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %19, i32 %add.i.i.i, ptr elementtype(i32) %skc_refcnt) #13, !srcloc !126
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %19
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !114

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %21 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %22, 1
  %23 = or i32 %add5.i.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !114

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #13
  %24 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %25 = phi i32 [ %22, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.i.i.i.not = icmp eq i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #13
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.cleanup_crit_edge, label %refcount_inc_not_zero.exit.if.end4_crit_edge

refcount_inc_not_zero.exit.if.end4_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %refcount_inc_not_zero.exit.if.end4_crit_edge, %sk_is_refcounted.exit.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %refcount_inc_not_zero.exit.cleanup_crit_edge, %__sock_map_lookup_elem.exit.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.end4 ], [ null, %__sock_map_lookup_elem.exit.cleanup_crit_edge ], [ null, %refcount_inc_not_zero.exit.cleanup_crit_edge ], [ null, %if.end30.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sock_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !115

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %value, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !115

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %value, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_prot.i, align 8
  %psock_update_sk_prot.i = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %psock_update_sk_prot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psock_update_sk_prot.i, align 4
  %tobool.i29.not = icmp eq ptr %5, null
  br i1 %tobool.i29.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call fastcc void @local_bh_disable()
  %sk_lock = getelementptr inbounds %struct.sock, ptr %value, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #13
  %sk_type.i.i = getelementptr inbounds %struct.sock, ptr %value, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp.i.i = icmp eq i16 %7, 1
  br i1 %cmp.i.i, label %sk_is_tcp.exit.i, label %if.end6.if.else_crit_edge

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

sk_is_tcp.exit.i:                                 ; preds = %if.end6
  %sk_protocol.i.i = getelementptr inbounds %struct.sock, ptr %value, i32 0, i32 46
  %8 = ptrtoint ptr %sk_protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sk_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %9)
  %cmp3.i.i = icmp eq i16 %9, 6
  br i1 %cmp3.i.i, label %sock_map_sk_state_allowed.exit, label %sk_is_tcp.exit.i.if.else_crit_edge

sk_is_tcp.exit.i.if.else_crit_edge:               ; preds = %sk_is_tcp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

sock_map_sk_state_allowed.exit:                   ; preds = %sk_is_tcp.exit.i
  %10 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i31 = zext i8 %11 to i32
  %shl.i32 = shl nuw i32 1, %conv.i31
  %and.i33 = and i32 %shl.i32, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.i34.not = icmp eq i32 %and.i33, 0
  br i1 %tobool.i34.not, label %sock_map_sk_state_allowed.exit.if.end14_crit_edge, label %sock_map_sk_state_allowed.exit.if.else_crit_edge

sock_map_sk_state_allowed.exit.if.else_crit_edge: ; preds = %sock_map_sk_state_allowed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

sock_map_sk_state_allowed.exit.if.end14_crit_edge: ; preds = %sock_map_sk_state_allowed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.else:                                          ; preds = %sock_map_sk_state_allowed.exit.if.else_crit_edge, %sk_is_tcp.exit.i.if.else_crit_edge, %if.end6.if.else_crit_edge
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %12 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %cmp = icmp eq i32 %13, 15
  br i1 %cmp, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key, align 4
  %call10 = tail call fastcc i32 @sock_map_update_common(ptr noundef %map, i32 noundef %15, ptr noundef nonnull %value, i64 noundef %flags)
  br label %if.end14

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call fastcc i32 @sock_hash_update_common(ptr noundef %map, ptr noundef %key, ptr noundef nonnull %value, i64 noundef %flags)
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then9, %sock_map_sk_state_allowed.exit.if.end14_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then9 ], [ %call12, %if.else11 ], [ -95, %sock_map_sk_state_allowed.exit.if.end14_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #13
  tail call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end14 ], [ -22, %lor.rhs.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sock_map_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !114

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sks = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %sks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sks, align 128
  %arrayidx = getelementptr ptr, ptr %5, i32 %1
  %lock.i = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx) #13, !srcloc !104
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool15.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool15.not.i, label %if.end.__sock_map_delete.exit_crit_edge, label %if.then18.i, !prof !115

if.end.__sock_map_delete.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__sock_map_delete.exit

if.then18.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = inttoptr i32 %asmresult.i.i to ptr
  tail call fastcc void @sock_map_unref(ptr noundef nonnull %7, ptr noundef %arrayidx) #13
  br label %__sock_map_delete.exit

__sock_map_delete.exit:                           ; preds = %if.then18.i, %if.end.__sock_map_delete.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.then18.i ], [ -22, %if.end.__sock_map_delete.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %__sock_map_delete.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %__sock_map_delete.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_check_no_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_sock_hash_update(i64 noundef %sops, i64 noundef %map, i64 noundef %key, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %sops to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %map to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %key to i32
  %2 = inttoptr i32 %conv2 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

land.rhs.i:                                       ; preds = %entry
  %.b55.i = load i1, ptr @____bpf_sock_hash_update.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !114

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @____bpf_sock_hash_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1201, i32 noundef 9, ptr noundef null) #13
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %entry.if.end29.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 8
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_prot.i.i, align 8
  %psock_update_sk_prot.i.i = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %psock_update_sk_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %psock_update_sk_prot.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %8, null
  br i1 %tobool.i.not.i, label %if.end29.i.____bpf_sock_hash_update.exit_crit_edge, label %land.rhs38.i, !prof !115

if.end29.i.____bpf_sock_hash_update.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sock_hash_update.exit

land.rhs38.i:                                     ; preds = %if.end29.i
  %op.i.i = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %0, i32 0, i32 5
  %9 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %op.i.i, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %10, label %land.rhs38.i.____bpf_sock_hash_update.exit_crit_edge [
    i8 5, label %land.rhs38.i.if.then47.i_crit_edge
    i8 4, label %land.rhs38.i.if.then47.i_crit_edge3
    i8 11, label %land.rhs38.i.if.then47.i_crit_edge4
  ]

land.rhs38.i.if.then47.i_crit_edge4:              ; preds = %land.rhs38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

land.rhs38.i.if.then47.i_crit_edge3:              ; preds = %land.rhs38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

land.rhs38.i.if.then47.i_crit_edge:               ; preds = %land.rhs38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

land.rhs38.i.____bpf_sock_hash_update.exit_crit_edge: ; preds = %land.rhs38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sock_hash_update.exit

if.then47.i:                                      ; preds = %land.rhs38.i.if.then47.i_crit_edge, %land.rhs38.i.if.then47.i_crit_edge3, %land.rhs38.i.if.then47.i_crit_edge4
  %call49.i = tail call fastcc i32 @sock_hash_update_common(ptr noundef %1, ptr noundef %2, ptr noundef %4, i64 noundef %flags) #13
  %conv.i = sext i32 %call49.i to i64
  br label %____bpf_sock_hash_update.exit

____bpf_sock_hash_update.exit:                    ; preds = %if.then47.i, %land.rhs38.i.____bpf_sock_hash_update.exit_crit_edge, %if.end29.i.____bpf_sock_hash_update.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %if.then47.i ], [ -95, %if.end29.i.____bpf_sock_hash_update.exit_crit_edge ], [ -95, %land.rhs38.i.____bpf_sock_hash_update.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_sk_redirect_hash(i64 noundef %skb, i64 noundef %map, i64 noundef %key, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %skb to i32
  %0 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %tobool.not.i = icmp ult i64 %flags, 2
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_sk_redirect_hash.exit_crit_edge, !prof !114

entry.____bpf_sk_redirect_hash.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_redirect_hash.exit

if.end.i:                                         ; preds = %entry
  %conv2 = trunc i64 %key to i32
  %1 = inttoptr i32 %conv2 to ptr
  %conv1 = trunc i64 %map to i32
  %2 = inttoptr i32 %conv1 to ptr
  %call.i = tail call fastcc ptr @__sock_hash_lookup_elem(ptr noundef %2, ptr noundef %1) #13
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.end.i.____bpf_sk_redirect_hash.exit_crit_edge, label %lor.rhs.i, !prof !115

if.end.i.____bpf_sk_redirect_hash.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_redirect_hash.exit

lor.rhs.i:                                        ; preds = %if.end.i
  %sk_type.i.i.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 45
  %3 = ptrtoint ptr %sk_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_type.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp.i.i.i = icmp eq i16 %4, 1
  br i1 %cmp.i.i.i, label %sk_is_tcp.exit.i.i, label %lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge

lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_redirect_allowed.exit.i

sk_is_tcp.exit.i.i:                               ; preds = %lor.rhs.i
  %sk_protocol.i.i.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 46
  %5 = ptrtoint ptr %sk_protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_protocol.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %6)
  %cmp3.i.i.i = icmp eq i16 %6, 6
  br i1 %cmp3.i.i.i, label %if.then.i.i, label %sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge

sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge: ; preds = %sk_is_tcp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_redirect_allowed.exit.i

if.then.i.i:                                      ; preds = %sk_is_tcp.exit.i.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp.i.not.i = icmp eq i8 %8, 10
  br i1 %cmp.i.not.i, label %if.then.i.i.____bpf_sk_redirect_hash.exit_crit_edge, label %if.then.i.i.if.end14.i_crit_edge, !prof !115

if.then.i.i.if.end14.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then.i.i.____bpf_sk_redirect_hash.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_redirect_hash.exit

sock_map_redirect_allowed.exit.i:                 ; preds = %sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge, %lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge
  %skc_state3.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state3.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp5.i.i = icmp eq i8 %10, 1
  br i1 %cmp5.i.i, label %sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge, label %sock_map_redirect_allowed.exit.i.____bpf_sk_redirect_hash.exit_crit_edge, !prof !114

sock_map_redirect_allowed.exit.i.____bpf_sk_redirect_hash.exit_crit_edge: ; preds = %sock_map_redirect_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_sk_redirect_hash.exit

sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge: ; preds = %sock_map_redirect_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.end14.i:                                       ; preds = %sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge, %if.then.i.i.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %tobool16.i = icmp ne i64 %flags, 0
  %11 = ptrtoint ptr %call.i to i32
  %or.i.i = zext i1 %tobool16.i to i32
  %spec.select.i.i = or i32 %11, %or.i.i
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i.i, ptr %12, align 8
  br label %____bpf_sk_redirect_hash.exit

____bpf_sk_redirect_hash.exit:                    ; preds = %if.end14.i, %sock_map_redirect_allowed.exit.i.____bpf_sk_redirect_hash.exit_crit_edge, %if.then.i.i.____bpf_sk_redirect_hash.exit_crit_edge, %if.end.i.____bpf_sk_redirect_hash.exit_crit_edge, %entry.____bpf_sk_redirect_hash.exit_crit_edge
  %retval.0.i = phi i64 [ 1, %if.end14.i ], [ 0, %entry.____bpf_sk_redirect_hash.exit_crit_edge ], [ 0, %sock_map_redirect_allowed.exit.i.____bpf_sk_redirect_hash.exit_crit_edge ], [ 0, %if.end.i.____bpf_sk_redirect_hash.exit_crit_edge ], [ 0, %if.then.i.i.____bpf_sk_redirect_hash.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_msg_redirect_hash(i64 noundef %msg, i64 noundef %map, i64 noundef %key, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %msg to i32
  %0 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %tobool.not.i = icmp ult i64 %flags, 2
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_msg_redirect_hash.exit_crit_edge, !prof !114

entry.____bpf_msg_redirect_hash.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_msg_redirect_hash.exit

if.end.i:                                         ; preds = %entry
  %conv2 = trunc i64 %key to i32
  %1 = inttoptr i32 %conv2 to ptr
  %conv1 = trunc i64 %map to i32
  %2 = inttoptr i32 %conv1 to ptr
  %call.i = tail call fastcc ptr @__sock_hash_lookup_elem(ptr noundef %2, ptr noundef %1) #13
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.end.i.____bpf_msg_redirect_hash.exit_crit_edge, label %lor.rhs.i, !prof !115

if.end.i.____bpf_msg_redirect_hash.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_msg_redirect_hash.exit

lor.rhs.i:                                        ; preds = %if.end.i
  %sk_type.i.i.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 45
  %3 = ptrtoint ptr %sk_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_type.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp.i.i.i = icmp eq i16 %4, 1
  br i1 %cmp.i.i.i, label %sk_is_tcp.exit.i.i, label %lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge

lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_redirect_allowed.exit.i

sk_is_tcp.exit.i.i:                               ; preds = %lor.rhs.i
  %sk_protocol.i.i.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 46
  %5 = ptrtoint ptr %sk_protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_protocol.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %6)
  %cmp3.i.i.i = icmp eq i16 %6, 6
  br i1 %cmp3.i.i.i, label %if.then.i.i, label %sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge

sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge: ; preds = %sk_is_tcp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_redirect_allowed.exit.i

if.then.i.i:                                      ; preds = %sk_is_tcp.exit.i.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp.i.not.i = icmp eq i8 %8, 10
  br i1 %cmp.i.not.i, label %if.then.i.i.____bpf_msg_redirect_hash.exit_crit_edge, label %if.then.i.i.if.end14.i_crit_edge, !prof !115

if.then.i.i.if.end14.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then.i.i.____bpf_msg_redirect_hash.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_msg_redirect_hash.exit

sock_map_redirect_allowed.exit.i:                 ; preds = %sk_is_tcp.exit.i.i.sock_map_redirect_allowed.exit.i_crit_edge, %lor.rhs.i.sock_map_redirect_allowed.exit.i_crit_edge
  %skc_state3.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state3.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp5.i.i = icmp eq i8 %10, 1
  br i1 %cmp5.i.i, label %sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge, label %sock_map_redirect_allowed.exit.i.____bpf_msg_redirect_hash.exit_crit_edge, !prof !114

sock_map_redirect_allowed.exit.i.____bpf_msg_redirect_hash.exit_crit_edge: ; preds = %sock_map_redirect_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %____bpf_msg_redirect_hash.exit

sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge: ; preds = %sock_map_redirect_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.end14.i:                                       ; preds = %sock_map_redirect_allowed.exit.i.if.end14.i_crit_edge, %if.then.i.i.if.end14.i_crit_edge
  %conv.i = trunc i64 %flags to i32
  %flags15.i = getelementptr inbounds %struct.sk_msg, ptr %0, i32 0, i32 5
  %11 = ptrtoint ptr %flags15.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %flags15.i, align 4
  %sk_redir.i = getelementptr inbounds %struct.sk_msg, ptr %0, i32 0, i32 7
  %12 = ptrtoint ptr %sk_redir.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %sk_redir.i, align 4
  br label %____bpf_msg_redirect_hash.exit

____bpf_msg_redirect_hash.exit:                   ; preds = %if.end14.i, %sock_map_redirect_allowed.exit.i.____bpf_msg_redirect_hash.exit_crit_edge, %if.then.i.i.____bpf_msg_redirect_hash.exit_crit_edge, %if.end.i.____bpf_msg_redirect_hash.exit_crit_edge, %entry.____bpf_msg_redirect_hash.exit_crit_edge
  %retval.0.i = phi i64 [ 1, %if.end14.i ], [ 0, %entry.____bpf_msg_redirect_hash.exit_crit_edge ], [ 0, %sock_map_redirect_allowed.exit.i.____bpf_msg_redirect_hash.exit_crit_edge ], [ 0, %if.end.i.____bpf_msg_redirect_hash.exit_crit_edge ], [ 0, %if.then.i.i.____bpf_msg_redirect_hash.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sock_hash_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %5, label %lor.lhs.false3.cleanup_crit_edge [
    i32 4, label %lor.lhs.false3.lor.lhs.false7_crit_edge
    i32 8, label %lor.lhs.false3.lor.lhs.false7_crit_edge123
  ]

lor.lhs.false3.lor.lhs.false7_crit_edge123:       ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false7

lor.lhs.false3.lor.lhs.false7_crit_edge:          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false7

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false3.lor.lhs.false7_crit_edge, %lor.lhs.false3.lor.lhs.false7_crit_edge123
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %7 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_flags, align 8
  %and = and i32 %8, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp12 = icmp ugt i32 %3, 512
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 5246400, i32 noundef 512) #16
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call7.i.i, ptr noundef %attr) #13
  %max_entries22 = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %max_entries22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_entries22, align 8
  %sub.i120 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i120)
  %tobool.not.i.i.i = icmp eq i32 %sub.i120, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %sub.i120, i1 true) #13, !range !129
  %sub.i.i.i = sub nuw nsw i32 32, %12
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %spec.select = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %buckets_num = getelementptr inbounds %struct.bpf_shtab, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %buckets_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %buckets_num, align 4
  %key_size56 = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %key_size56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_size56, align 16
  %sub57 = add i32 %15, -1
  %or = or i32 %sub57, 7
  %add59 = add i32 %or, 25
  %elem_size = getelementptr inbounds %struct.bpf_shtab, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %elem_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add59, ptr %elem_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 89478485, i32 %spec.select)
  %cmp65 = icmp ugt i32 %spec.select, 89478485
  br i1 %cmp65, label %if.end20.free_htab_crit_edge, label %if.end68

if.end20.free_htab_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_htab

if.end68:                                         ; preds = %if.end20
  %mul = mul nuw i32 %spec.select, 48
  %conv70 = zext i32 %mul to i64
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numa_node, align 8
  %call72 = tail call ptr @bpf_map_area_alloc(i64 noundef %conv70, i32 noundef %18) #13
  %buckets = getelementptr inbounds %struct.bpf_shtab, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %buckets to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call72, ptr %buckets, align 128
  %tobool74.not = icmp eq ptr %call72, null
  br i1 %tobool74.not, label %if.end68.free_htab_crit_edge, label %for.cond.preheader

if.end68.free_htab_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_htab

for.cond.preheader:                               ; preds = %if.end68
  %20 = ptrtoint ptr %buckets_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buckets_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp78121.not = icmp eq i32 %21, 0
  br i1 %cmp78121.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0122 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %22 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buckets, align 128
  %arrayidx = getelementptr %struct.bpf_shtab_bucket, ptr %23, i32 %i.0122
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx, align 4
  %25 = load ptr, ptr %buckets, align 128
  %lock = getelementptr %struct.bpf_shtab_bucket, ptr %25, i32 %i.0122, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @sock_hash_alloc.__key, i16 noundef signext 2) #13
  %inc = add nuw i32 %i.0122, 1
  %26 = ptrtoint ptr %buckets_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buckets_num, align 4
  %cmp78 = icmp ult i32 %inc, %27
  br i1 %cmp78, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

free_htab:                                        ; preds = %if.end68.free_htab_crit_edge, %if.end20.free_htab_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end20.free_htab_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end68.free_htab_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %free_htab, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %free_htab ], [ inttoptr (i32 -1 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false7.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -7 to ptr), %if.end10.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end15.cleanup_crit_edge ], [ %call7.i.i, %for.cond.preheader.cleanup_crit_edge ], [ %call7.i.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sock_hash_free(ptr noundef %map) #0 align 64 {
entry:
  %unlink_list = alloca %struct.hlist_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unlink_list) #13
  %0 = ptrtoint ptr %unlink_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %unlink_list, align 4, !annotation !109
  tail call void @synchronize_rcu() #13
  %buckets_num = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 2
  %1 = ptrtoint ptr %buckets_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buckets_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp113.not = icmp eq i32 %2, 0
  br i1 %cmp113.not, label %entry.for.end57_crit_edge, label %for.body.lr.ph

entry.for.end57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end57

for.body.lr.ph:                                   ; preds = %entry
  %buckets.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc56.for.body_crit_edge, %for.body.lr.ph
  %3 = phi i32 [ %2, %for.body.lr.ph ], [ %48, %for.inc56.for.body_crit_edge ]
  %i.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc56.for.body_crit_edge ]
  %4 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i, align 128
  %sub.i = add i32 %3, -1
  %and.i = and i32 %sub.i, %i.0114
  %arrayidx.i = getelementptr %struct.bpf_shtab_bucket, ptr %5, i32 %and.i
  %lock = getelementptr %struct.bpf_shtab_bucket, ptr %5, i32 %and.i, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %7, null
  %add.ptr4 = getelementptr i8, ptr %7, i32 -16
  %tobool6.not109115 = icmp eq ptr %add.ptr4, null
  %tobool6.not109 = or i1 %tobool.not, %tobool6.not109115
  br i1 %tobool6.not109, label %for.body.for.end_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body7:                                        ; preds = %sock_hold.exit.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %elem.0110 = phi ptr [ %add.ptr15, %sock_hold.exit.for.body7_crit_edge ], [ %add.ptr4, %for.body.for.body7_crit_edge ]
  %sk = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.0110, i32 0, i32 2
  %8 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !130
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body7.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !115

for.body7.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body7
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !114

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.body7.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.body7.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %node9 = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.0110, i32 0, i32 3
  %12 = ptrtoint ptr %node9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node9, align 4
  %tobool11.not = icmp eq ptr %13, null
  %add.ptr15 = getelementptr i8, ptr %13, i32 -16
  %tobool6.not117 = icmp eq ptr %add.ptr15, null
  %tobool6.not = or i1 %tobool11.not, %tobool6.not117
  br i1 %tobool6.not, label %for.endthread-pre-split, label %sock_hold.exit.for.body7_crit_edge

sock_hold.exit.for.body7_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

for.endthread-pre-split:                          ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %arrayidx.i, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %for.body.for.end_crit_edge
  %15 = phi ptr [ %.pr, %for.endthread-pre-split ], [ %7, %for.body.for.end_crit_edge ]
  %16 = ptrtoint ptr %unlink_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %unlink_list, align 4
  %tobool.not.i87 = icmp eq ptr %15, null
  br i1 %tobool.not.i87, label %for.end.hlist_move_list.exit_crit_edge, label %if.then.i88

for.end.hlist_move_list.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_move_list.exit

if.then.i88:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %unlink_list, ptr %pprev.i, align 4
  br label %hlist_move_list.exit

hlist_move_list.exit:                             ; preds = %if.then.i88, %for.end.hlist_move_list.exit_crit_edge
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %19 = ptrtoint ptr %unlink_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unlink_list, align 4
  %tobool24.not = icmp eq ptr %20, null
  %add.ptr28 = getelementptr i8, ptr %20, i32 -16
  %tobool33.not111116 = icmp eq ptr %add.ptr28, null
  %tobool33.not111 = or i1 %tobool24.not, %tobool33.not111116
  br i1 %tobool33.not111, label %hlist_move_list.exit.for.inc56_crit_edge, label %hlist_move_list.exit.land.rhs_crit_edge

hlist_move_list.exit.land.rhs_crit_edge:          ; preds = %hlist_move_list.exit
  br label %land.rhs

hlist_move_list.exit.for.inc56_crit_edge:         ; preds = %hlist_move_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc56

land.rhs:                                         ; preds = %sock_hash_free_elem.exit.land.rhs_crit_edge, %hlist_move_list.exit.land.rhs_crit_edge
  %elem.1112 = phi ptr [ %add.ptr51, %sock_hash_free_elem.exit.land.rhs_crit_edge ], [ %add.ptr28, %hlist_move_list.exit.land.rhs_crit_edge ]
  %node34 = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.1112, i32 0, i32 3
  %21 = ptrtoint ptr %node34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node34, align 4
  %pprev2.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.1112, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev2.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %22, ptr %24, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %land.rhs.hlist_del.exit_crit_edge, label %do.body13.i.i

land.rhs.hlist_del.exit_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %land.rhs.hlist_del.exit_crit_edge
  %27 = ptrtoint ptr %node34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %node34, align 4
  %28 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %sk40 = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.1112, i32 0, i32 2
  %29 = ptrtoint ptr %sk40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk40, align 4
  call void @lock_sock_nested(ptr noundef %30, i32 noundef 0) #13
  %31 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %hlist_del.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

hlist_del.exit.rcu_read_lock.exit_crit_edge:      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %hlist_del.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %hlist_del.exit.rcu_read_lock.exit_crit_edge
  %35 = ptrtoint ptr %sk40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk40, align 4
  call fastcc void @sock_map_unref(ptr noundef %36, ptr noundef nonnull %elem.1112)
  %call.i89 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i89, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i92

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i92:                                ; preds = %rcu_read_lock.exit
  %call1.i90 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90)
  %tobool.not.i91 = icmp eq i32 %call1.i90, 0
  br i1 %tobool.not.i91, label %land.lhs.true.i92.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i94

land.lhs.true.i92.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i94:                               ; preds = %land.lhs.true.i92
  %.b4.i93 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i93, label %land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge, label %if.then.i95

land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i95:                                      ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i95, %land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i92.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %37 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i96 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i96 to ptr
  %preempt_count.i.i.i.i97 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i97, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i97, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %41 = ptrtoint ptr %sk40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk40, align 4
  call void @release_sock(ptr noundef %42) #13
  %43 = ptrtoint ptr %sk40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sk40, align 4
  %skc_refcnt.i98 = getelementptr inbounds %struct.sock_common, ptr %44, i32 0, i32 19
  %call.i.i.i.i.i.i99 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i98, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i98, i32 1, i32 3, i32 1) #13
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i98, ptr %skc_refcnt.i98, i32 1, ptr elementtype(i32) %skc_refcnt.i98) #13, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i101, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i100 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i100, label %if.end5.i.i.i.i.sock_hash_free_elem.exit_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end5.i.i.i.i.sock_hash_free_elem.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hash_free_elem.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i98, i32 noundef 3) #13
  br label %sock_hash_free_elem.exit

if.then.i101:                                     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @sk_free(ptr noundef %44) #13
  br label %sock_hash_free_elem.exit

sock_hash_free_elem.exit:                         ; preds = %if.then.i101, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_hash_free_elem.exit_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %46 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !122
  call void @kvfree_call_rcu(ptr noundef nonnull %elem.1112, ptr noundef null) #13
  %add.ptr51 = getelementptr i8, ptr %22, i32 -16
  %tobool33.not118 = icmp eq ptr %add.ptr51, null
  %tobool33.not = or i1 %tobool.not.i.i, %tobool33.not118
  br i1 %tobool33.not, label %sock_hash_free_elem.exit.for.inc56_crit_edge, label %sock_hash_free_elem.exit.land.rhs_crit_edge

sock_hash_free_elem.exit.land.rhs_crit_edge:      ; preds = %sock_hash_free_elem.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

sock_hash_free_elem.exit.for.inc56_crit_edge:     ; preds = %sock_hash_free_elem.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc56

for.inc56:                                        ; preds = %sock_hash_free_elem.exit.for.inc56_crit_edge, %hlist_move_list.exit.for.inc56_crit_edge
  %inc = add nuw i32 %i.0114, 1
  %47 = ptrtoint ptr %buckets_num to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buckets_num, align 4
  %cmp = icmp ult i32 %inc, %48
  br i1 %cmp, label %for.inc56.for.body_crit_edge, label %for.inc56.for.end57_crit_edge

for.inc56.for.end57_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end57

for.inc56.for.body_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end57:                                        ; preds = %for.inc56.for.end57_crit_edge, %entry.for.end57_crit_edge
  call void @synchronize_rcu() #13
  %buckets = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 1
  %49 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buckets, align 128
  call void @bpf_map_area_free(ptr noundef %50) #13
  call void @kfree(ptr noundef %map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unlink_list) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sock_hash_get_next_key(ptr nocapture noundef readonly %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %key_next) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size1 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size1, align 16
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.find_first_elem_crit_edge, label %if.end

entry.find_first_elem_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_first_elem

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @sock_hash_bucket_hash(ptr noundef nonnull %key, i32 noundef %1)
  %buckets.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buckets.i, align 128
  %buckets_num.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %buckets_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buckets_num.i, align 4
  %sub.i = add i32 %5, -1
  %and.i = and i32 %sub.i, %call
  %arrayidx.i = getelementptr %struct.bpf_shtab_bucket, ptr %3, i32 %and.i
  %call.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b42.i = load i1, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 852, ptr noundef nonnull @.str.6) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -16
  %tobool12.not4650.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not46.i = or i1 %tobool10.not.i, %tobool12.not4650.i
  br i1 %tobool12.not46.i, label %do.end.i.find_first_elem_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.find_first_elem_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_first_elem

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %elem.047.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %hash13.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 1
  %8 = ptrtoint ptr %hash13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call)
  %cmp.i = icmp eq i32 %9, %call
  br i1 %cmp.i, label %land.lhs.true14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %for.body.i
  %key15.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %key15.i, ptr nonnull %key, i32 %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %if.end7, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %node.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 3
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %node.i, align 4
  %tobool27.not.i = icmp eq ptr %11, null
  %add.ptr31.i = getelementptr i8, ptr %11, i32 -16
  %tobool12.not51.i = icmp eq ptr %add.ptr31.i, null
  %tobool12.not.i = or i1 %tobool27.not.i, %tobool12.not51.i
  br i1 %tobool12.not.i, label %for.inc.i.find_first_elem_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.find_first_elem_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_first_elem

if.end7:                                          ; preds = %land.lhs.true14.i
  %node = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 3
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %node, align 4
  %call10 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end7.do.end19_crit_edge

if.end7.do.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

land.lhs.true:                                    ; preds = %if.end7
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b97 = load i1, ptr @sock_hash_get_next_key.__warned, align 1
  br i1 %.b97, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_get_next_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1041, ptr noundef nonnull @.str.8) #13
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %if.end7.do.end19_crit_edge
  %tobool22.not = icmp eq ptr %13, null
  %add.ptr25 = getelementptr i8, ptr %13, i32 -16
  %tobool26.not107 = icmp eq ptr %add.ptr25, null
  %tobool26.not = or i1 %tobool22.not, %tobool26.not107
  br i1 %tobool26.not, label %if.end29, label %do.end19.cleanup.sink.split_crit_edge

do.end19.cleanup.sink.split_crit_edge:            ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end29:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %buckets_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buckets_num.i, align 4
  %sub = add i32 %15, -1
  %and = and i32 %sub, %call
  %inc = add i32 %and, 1
  br label %find_first_elem

find_first_elem:                                  ; preds = %if.end29, %for.inc.i.find_first_elem_crit_edge, %do.end.i.find_first_elem_crit_edge, %entry.find_first_elem_crit_edge
  %i.0 = phi i32 [ %inc, %if.end29 ], [ 0, %entry.find_first_elem_crit_edge ], [ 0, %do.end.i.find_first_elem_crit_edge ], [ 0, %for.inc.i.find_first_elem_crit_edge ]
  %buckets_num30 = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 2
  %16 = ptrtoint ptr %buckets_num30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buckets_num30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %17)
  %cmp109 = icmp ult i32 %i.0, %17
  br i1 %cmp109, label %for.body.lr.ph, label %find_first_elem.cleanup_crit_edge

find_first_elem.cleanup_crit_edge:                ; preds = %find_first_elem
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %find_first_elem
  %buckets.i99 = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %do.end49
  %inc65 = add nuw i32 %i.1110, 1
  %18 = ptrtoint ptr %buckets_num30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buckets_num30, align 4
  %cmp = icmp ult i32 %inc65, %19
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %20 = phi i32 [ %17, %for.body.lr.ph ], [ %19, %for.cond.for.body_crit_edge ]
  %i.1110 = phi i32 [ %i.0, %for.body.lr.ph ], [ %inc65, %for.cond.for.body_crit_edge ]
  %21 = ptrtoint ptr %buckets.i99 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buckets.i99, align 128
  %sub.i101 = add i32 %20, -1
  %and.i102 = and i32 %sub.i101, %i.1110
  %arrayidx.i103 = getelementptr %struct.bpf_shtab_bucket, ptr %22, i32 %and.i102
  %23 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx.i103, align 4
  %call39 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %for.body.do.end49_crit_edge

for.body.do.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

land.lhs.true41:                                  ; preds = %for.body
  %call42 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.do.end49_crit_edge, label %land.lhs.true44

land.lhs.true41.do.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %.b9596 = load i1, ptr @sock_hash_get_next_key.__warned.9, align 1
  br i1 %.b9596, label %land.lhs.true44.do.end49_crit_edge, label %if.then46

land.lhs.true44.do.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_get_next_key.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1053, ptr noundef nonnull @.str.8) #13
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %land.lhs.true44.do.end49_crit_edge, %land.lhs.true41.do.end49_crit_edge, %for.body.do.end49_crit_edge
  %tobool52.not = icmp eq ptr %24, null
  %add.ptr56 = getelementptr i8, ptr %24, i32 -16
  %tobool60.not106 = icmp eq ptr %add.ptr56, null
  %tobool60.not = or i1 %tobool52.not, %tobool60.not106
  br i1 %tobool60.not, label %for.cond, label %do.end49.cleanup.sink.split_crit_edge

do.end49.cleanup.sink.split_crit_edge:            ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end49.cleanup.sink.split_crit_edge, %do.end19.cleanup.sink.split_crit_edge
  %.lcssa.sink = phi ptr [ %13, %do.end19.cleanup.sink.split_crit_edge ], [ %24, %do.end49.cleanup.sink.split_crit_edge ]
  %key62 = getelementptr i8, ptr %.lcssa.sink, i32 8
  %25 = call ptr @memcpy(ptr %key_next, ptr %key62, i32 %1)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.cleanup_crit_edge, %find_first_elem.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %find_first_elem.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sock_hash_release_progs(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %progs = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 4
  tail call fastcc void @psock_progs_drop(ptr noundef %progs)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sock_hash_lookup_sys(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @__sock_hash_lookup_elem(ptr noundef %map, ptr noundef %key)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i64 @__sock_gen_cookie(ptr noundef nonnull %call1) #13
  %skc_cookie = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %skc_cookie, %if.end4 ], [ inttoptr (i32 -28 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sock_hash_lookup(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__sock_hash_lookup_elem(ptr noundef %map, ptr noundef %key)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.land.lhs.true_crit_edge, label %sk_is_refcounted.exit

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

sk_is_refcounted.exit:                            ; preds = %if.end
  %2 = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i3.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i3.not.i, label %sk_is_refcounted.exit.land.lhs.true_crit_edge, label %sk_is_refcounted.exit.if.end4_crit_edge

sk_is_refcounted.exit.if.end4_crit_edge:          ; preds = %sk_is_refcounted.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

sk_is_refcounted.exit.land.lhs.true_crit_edge:    ; preds = %sk_is_refcounted.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sk_is_refcounted.exit.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #13
  %6 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %8 = phi i32 [ %7, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #13
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #13
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %11, i32 %add.i.i.i, ptr elementtype(i32) %skc_refcnt) #13, !srcloc !126
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !114

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !114

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #13
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #13
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.cleanup_crit_edge, label %refcount_inc_not_zero.exit.if.end4_crit_edge

refcount_inc_not_zero.exit.if.end4_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %refcount_inc_not_zero.exit.if.end4_crit_edge, %sk_is_refcounted.exit.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %refcount_inc_not_zero.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %refcount_inc_not_zero.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sock_hash_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size1 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size1, align 16
  %call = tail call fastcc i32 @sock_hash_bucket_hash(ptr noundef %key, i32 noundef %1)
  %buckets.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buckets.i, align 128
  %buckets_num.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %buckets_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buckets_num.i, align 4
  %sub.i = add i32 %5, -1
  %and.i = and i32 %sub.i, %call
  %arrayidx.i = getelementptr %struct.bpf_shtab_bucket, ptr %3, i32 %and.i
  %lock = getelementptr %struct.bpf_shtab_bucket, ptr %3, i32 %and.i, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %call.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b42.i = load i1, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 852, ptr noundef nonnull @.str.6) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -16
  %tobool12.not4650.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not46.i = or i1 %tobool10.not.i, %tobool12.not4650.i
  br i1 %tobool12.not46.i, label %do.end.i.if.end_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %elem.047.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %hash13.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 1
  %8 = ptrtoint ptr %hash13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call)
  %cmp.i = icmp eq i32 %9, %call
  br i1 %cmp.i, label %land.lhs.true14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %for.body.i
  %key15.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %key15.i, ptr %key, i32 %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %if.then, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %node.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 3
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %node.i, align 4
  %tobool27.not.i = icmp eq ptr %11, null
  %add.ptr31.i = getelementptr i8, ptr %11, i32 -16
  %tobool12.not51.i = icmp eq ptr %add.ptr31.i, null
  %tobool12.not.i = or i1 %tobool27.not.i, %tobool12.not51.i
  br i1 %tobool12.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true14.i
  %node = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 3
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.sock_hash_free_elem.exit_crit_edge, label %do.body13.i.i

if.then.sock_hash_free_elem.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hash_free_elem.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i, align 4
  br label %sock_hash_free_elem.exit

sock_hash_free_elem.exit:                         ; preds = %do.body13.i.i, %if.then.sock_hash_free_elem.exit_crit_edge
  %18 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %sk = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 2
  %19 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk, align 4
  tail call fastcc void @sock_map_unref(ptr noundef %20, ptr noundef nonnull %elem.047.i)
  %count.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !122
  tail call void @kvfree_call_rcu(ptr noundef nonnull %elem.047.i, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %sock_hash_free_elem.exit, %for.inc.i.if.end_crit_edge, %do.end.i.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %sock_hash_free_elem.exit ], [ -2, %do.end.i.if.end_crit_edge ], [ -2, %for.inc.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sock_map_unhash(ptr noundef %sk) #0 align 64 {
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %4 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i19 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21, label %rcu_read_lock.exit.sk_psock.exit_crit_edge

rcu_read_lock.exit.sk_psock.exit_crit_edge:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

land.lhs.true.i21:                                ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i21.sk_psock.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i21.sk_psock.exit_crit_edge:        ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i21
  %.b10.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.sk_psock.exit_crit_edge, label %if.then.i22

land.lhs.true4.i.sk_psock.exit_crit_edge:         ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

if.then.i22:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 286, ptr noundef nonnull @.str.8) #13
  br label %sk_psock.exit

sk_psock.exit:                                    ; preds = %if.then.i22, %land.lhs.true4.i.sk_psock.exit_crit_edge, %land.lhs.true.i21.sk_psock.exit_crit_edge, %rcu_read_lock.exit.sk_psock.exit_crit_edge
  %6 = ptrtoint ptr %5 to i32
  %and.i = and i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %if.end9, !prof !115

if.then:                                          ; preds = %sk_psock.exit
  tail call fastcc void @rcu_read_unlock()
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %7 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_prot, align 8
  %unhash = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %unhash to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unhash, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %sk_psock.exit
  %11 = inttoptr i32 %and.i to ptr
  %saved_unhash10 = getelementptr inbounds %struct.sk_psock, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %saved_unhash10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %saved_unhash10, align 8
  tail call fastcc void @sock_map_remove_links(ptr noundef %sk, ptr noundef nonnull %11)
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i23, label %if.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

if.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %if.end9
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %if.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %14 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i30 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %13, %rcu_read_unlock.exit ], [ %10, %if.then.cleanup.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %sk) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_map_remove_links(ptr noundef readnone %sk, ptr noundef %psock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call ptr @sk_psock_link_pop(ptr noundef %psock) #13
  %tobool.not4 = icmp eq ptr %call3, null
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool.not.i.i.i = icmp eq ptr %sk, null
  br label %while.body

while.body:                                       ; preds = %sock_map_unlink.exit.while.body_crit_edge, %while.body.lr.ph
  %call5 = phi ptr [ %call3, %while.body.lr.ph ], [ %call, %sock_map_unlink.exit.while.body_crit_edge ]
  %map.i = getelementptr inbounds %struct.sk_psock_link, ptr %call5, i32 0, i32 1
  %0 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map.i, align 4
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %3, label %while.body.sock_map_unlink.exit_crit_edge [
    i32 15, label %sw.bb.i
    i32 18, label %sw.bb2.i
  ]

while.body.sock_map_unlink.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_unlink.exit

sw.bb.i:                                          ; preds = %while.body
  %link_raw.i = getelementptr inbounds %struct.sk_psock_link, ptr %call5, i32 0, i32 2
  %5 = ptrtoint ptr %link_raw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link_raw.i, align 4
  %lock.i.i.i = getelementptr inbounds %struct.bpf_stab, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #13
  br i1 %tobool.not.i.i.i, label %sw.bb.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

sw.bb.i.if.then.i.i.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %sw.bb.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp.i.i.i = icmp eq ptr %8, %sk
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %sw.bb.i.if.then.i.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #13, !srcloc !104
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %10 = inttoptr i32 %asmresult.i.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !128
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge
  %sk.0.i.i.i = phi ptr [ %10, %if.then.i.i.i ], [ %8, %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge ]
  %tobool15.not.i.i.i = icmp eq ptr %sk.0.i.i.i, null
  br i1 %tobool15.not.i.i.i, label %if.end.i.i.i.sw.epilog.sink.split.i_crit_edge, label %if.then18.i.i.i, !prof !115

if.end.i.i.i.sw.epilog.sink.split.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

if.then18.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @sock_map_unref(ptr noundef nonnull %sk.0.i.i.i, ptr noundef %6) #13
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %while.body
  %link_raw4.i = getelementptr inbounds %struct.sk_psock_link, ptr %call5, i32 0, i32 2
  %11 = ptrtoint ptr %link_raw4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_raw4.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %sw.bb2.i.if.end30.i.i_crit_edge

sw.bb2.i.if.end30.i.i_crit_edge:                  ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

land.rhs.i.i:                                     ; preds = %sw.bb2.i
  %.b1.i.i = load i1, ptr @sock_hash_delete_from_link.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.end30.i.i_crit_edge, label %if.then.i.i, !prof !114

land.rhs.i.i.if.end30.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_delete_from_link.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 891, i32 noundef 9, ptr noundef null) #13
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end30.i.i_crit_edge, %sw.bb2.i.if.end30.i.i_crit_edge
  %hash.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash.i.i, align 4
  %buckets.i.i.i = getelementptr inbounds %struct.bpf_shtab, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buckets.i.i.i, align 128
  %buckets_num.i.i.i = getelementptr inbounds %struct.bpf_shtab, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %buckets_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buckets_num.i.i.i, align 4
  %sub.i.i.i = add i32 %18, -1
  %and.i.i.i = and i32 %sub.i.i.i, %14
  %arrayidx.i.i.i = getelementptr %struct.bpf_shtab_bucket, ptr %16, i32 %and.i.i.i
  %lock.i.i = getelementptr %struct.bpf_shtab_bucket, ptr %16, i32 %and.i.i.i, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #13
  %19 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hash.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %12, i32 0, i32 4
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_size.i.i, align 16
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i10.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i10.i, label %land.lhs.true.i.i.i, label %if.end30.i.i.do.end.i.i.i_crit_edge

if.end30.i.i.do.end.i.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end30.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b42.i.i.i = load i1, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  br i1 %.b42.i.i.i, label %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, label %if.then.i.i11.i

land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

if.then.i.i11.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 852, ptr noundef nonnull @.str.6) #13
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i11.i, %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %if.end30.i.i.do.end.i.i.i_crit_edge
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool10.not.i.i.i = icmp eq ptr %24, null
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 -16
  %tobool12.not4650.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool12.not46.i.i.i = or i1 %tobool10.not.i.i.i, %tobool12.not4650.i.i.i
  br i1 %tobool12.not46.i.i.i, label %do.end.i.i.i.sw.epilog.sink.split.i_crit_edge, label %do.end.i.i.i.for.body.i.i.i_crit_edge

do.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i.sw.epilog.sink.split.i_crit_edge:    ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.i.for.body.i.i.i_crit_edge
  %elem.047.i.i.i = phi ptr [ %add.ptr31.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %hash13.i.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %hash13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash13.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %20)
  %cmp.i.i12.i = icmp eq i32 %26, %20
  br i1 %cmp.i.i12.i, label %land.lhs.true14.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

land.lhs.true14.i.i.i:                            ; preds = %for.body.i.i.i
  %key15.i.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i.i.i, i32 0, i32 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %key15.i.i.i, ptr %key.i.i, i32 %22) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %sock_hash_lookup_elem_raw.exit.i.i, label %land.lhs.true14.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true14.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true14.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %node.i.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %node.i.i.i, align 4
  %tobool27.not.i.i.i = icmp eq ptr %28, null
  %add.ptr31.i.i.i = getelementptr i8, ptr %28, i32 -16
  %tobool12.not51.i.i.i = icmp eq ptr %add.ptr31.i.i.i, null
  %tobool12.not.i.i.i = or i1 %tobool27.not.i.i.i, %tobool12.not51.i.i.i
  br i1 %tobool12.not.i.i.i, label %for.inc.i.i.i.sw.epilog.sink.split.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.inc.i.i.i.sw.epilog.sink.split.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

sock_hash_lookup_elem_raw.exit.i.i:               ; preds = %land.lhs.true14.i.i.i
  %cmp.i.i = icmp eq ptr %elem.047.i.i.i, %12
  br i1 %cmp.i.i, label %if.then42.i.i, label %sock_hash_lookup_elem_raw.exit.i.i.sw.epilog.sink.split.i_crit_edge

sock_hash_lookup_elem_raw.exit.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %sock_hash_lookup_elem_raw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

if.then42.i.i:                                    ; preds = %sock_hash_lookup_elem_raw.exit.i.i
  %node.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %12, i32 0, i32 3
  %29 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %node.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %12, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %30, ptr %32, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i.i, label %if.then42.i.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then42.i.i.hlist_del_rcu.exit.i.i_crit_edge:   ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then42.i.i.hlist_del_rcu.exit.i.i_crit_edge
  %35 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %sk43.i.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %12, i32 0, i32 2
  %36 = ptrtoint ptr %sk43.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sk43.i.i, align 4
  tail call fastcc void @sock_map_unref(ptr noundef %37, ptr noundef %12) #13
  %count.i.i.i = getelementptr inbounds %struct.bpf_shtab, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #13, !srcloc !122
  %tobool.not.i2.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i2.i.i, label %hlist_del_rcu.exit.i.i.sw.epilog.sink.split.i_crit_edge, label %do.end.i3.i.i

hlist_del_rcu.exit.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %hlist_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

do.end.i3.i.i:                                    ; preds = %hlist_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree_call_rcu(ptr noundef nonnull %12, ptr noundef null) #13
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.end.i3.i.i, %hlist_del_rcu.exit.i.i.sw.epilog.sink.split.i_crit_edge, %sock_hash_lookup_elem_raw.exit.i.i.sw.epilog.sink.split.i_crit_edge, %for.inc.i.i.i.sw.epilog.sink.split.i_crit_edge, %do.end.i.i.i.sw.epilog.sink.split.i_crit_edge, %if.then18.i.i.i, %if.end.i.i.i.sw.epilog.sink.split.i_crit_edge
  %lock.i.i.sink.i = phi ptr [ %lock.i.i.i, %if.end.i.i.i.sw.epilog.sink.split.i_crit_edge ], [ %lock.i.i.i, %if.then18.i.i.i ], [ %lock.i.i, %do.end.i.i.i.sw.epilog.sink.split.i_crit_edge ], [ %lock.i.i, %sock_hash_lookup_elem_raw.exit.i.i.sw.epilog.sink.split.i_crit_edge ], [ %lock.i.i, %hlist_del_rcu.exit.i.i.sw.epilog.sink.split.i_crit_edge ], [ %lock.i.i, %do.end.i3.i.i ], [ %lock.i.i, %for.inc.i.i.i.sw.epilog.sink.split.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.sink.i) #13
  br label %sock_map_unlink.exit

sock_map_unlink.exit:                             ; preds = %sw.epilog.sink.split.i, %while.body.sock_map_unlink.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call5) #13
  %call = tail call ptr @sk_psock_link_pop(ptr noundef %psock) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sock_map_unlink.exit.while.end_crit_edge, label %sock_map_unlink.exit.while.body_crit_edge

sock_map_unlink.exit.while.body_crit_edge:        ; preds = %sock_map_unlink.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

sock_map_unlink.exit.while.end_crit_edge:         ; preds = %sock_map_unlink.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %sock_map_unlink.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sock_map_close(ptr noundef %sk, i32 noundef %timeout) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %rcu_read_lock.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

rcu_read_lock.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %rcu_read_lock.exit.rcu_read_lock.exit.i_crit_edge
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %8 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %sk_user_data.i.i, align 4
  %call.i4.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i, label %rcu_read_lock.exit.i.sk_psock.exit.i_crit_edge

rcu_read_lock.exit.i.sk_psock.exit.i_crit_edge:   ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit.i

land.lhs.true.i6.i:                               ; preds = %rcu_read_lock.exit.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i6.i.sk_psock.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i6.i.sk_psock.exit.i_crit_edge:     ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i6.i
  %.b10.i.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true4.i.i.sk_psock.exit.i_crit_edge, label %if.then.i7.i

land.lhs.true4.i.i.sk_psock.exit.i_crit_edge:     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit.i

if.then.i7.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 286, ptr noundef nonnull @.str.8) #13
  br label %sk_psock.exit.i

sk_psock.exit.i:                                  ; preds = %if.then.i7.i, %land.lhs.true4.i.i.sk_psock.exit.i_crit_edge, %land.lhs.true.i6.i.sk_psock.exit.i_crit_edge, %rcu_read_lock.exit.i.sk_psock.exit.i_crit_edge
  %10 = ptrtoint ptr %9 to i32
  %and.i.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i19 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i19, label %sk_psock.exit.i.if.end.i_crit_edge, label %land.lhs.true.i20

sk_psock.exit.i.if.end.i_crit_edge:               ; preds = %sk_psock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i20:                                ; preds = %sk_psock.exit.i
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %11, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i20
  %14 = phi i32 [ %13, %land.lhs.true.i20 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i8.i = add i32 %14, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %17, i32 %add.i.i.i8.i, ptr elementtype(i32) %refcnt.i) #13, !srcloc !126
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %17
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !114

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %20, 1
  %21 = or i32 %add5.i.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #13
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i.i.i.not.i = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %11
  br label %if.end.i

if.end.i:                                         ; preds = %refcount_inc_not_zero.exit.i, %sk_psock.exit.i.if.end.i_crit_edge
  %psock.0.i = phi ptr [ null, %sk_psock.exit.i.if.end.i_crit_edge ], [ %spec.select.i, %refcount_inc_not_zero.exit.i ]
  %call.i9.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i9.i, label %if.end.i.sk_psock_get.exit_crit_edge, label %land.lhs.true.i12.i

if.end.i.sk_psock_get.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock_get.exit

land.lhs.true.i12.i:                              ; preds = %if.end.i
  %call1.i10.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call1.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.lhs.true.i12.i.sk_psock_get.exit_crit_edge, label %land.lhs.true2.i14.i

land.lhs.true.i12.i.sk_psock_get.exit_crit_edge:  ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock_get.exit

land.lhs.true2.i14.i:                             ; preds = %land.lhs.true.i12.i
  %.b4.i13.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i, label %land.lhs.true2.i14.i.sk_psock_get.exit_crit_edge, label %if.then.i15.i

land.lhs.true2.i14.i.sk_psock_get.exit_crit_edge: ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock_get.exit

if.then.i15.i:                                    ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %sk_psock_get.exit

sk_psock_get.exit:                                ; preds = %if.then.i15.i, %land.lhs.true2.i14.i.sk_psock_get.exit_crit_edge, %land.lhs.true.i12.i.sk_psock_get.exit_crit_edge, %if.end.i.sk_psock_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %24 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i16.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i16.i to ptr
  %preempt_count.i.i.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i17.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i17.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %tobool.not = icmp eq ptr %psock.0.i, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !115

if.then:                                          ; preds = %sk_psock_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @rcu_read_unlock()
  call void @release_sock(ptr noundef %sk) #13
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %28 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skc_prot, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  br label %cleanup

if.end:                                           ; preds = %sk_psock_get.exit
  %saved_close4 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 16
  %32 = ptrtoint ptr %saved_close4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %saved_close4, align 4
  call fastcc void @sock_map_remove_links(ptr noundef %sk, ptr noundef nonnull %psock.0.i)
  %call.i21 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i21, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %if.end
  %call1.i22 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %34 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i28 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @sk_psock_stop(ptr noundef nonnull %psock.0.i, i1 noundef zeroext true) #13
  %refcnt.i30 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 14
  %call.i.i.i.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i30, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  call void @llvm.prefetch.p0(ptr %refcnt.i30, i32 1, i32 3, i32 1) #13
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i30, ptr %refcnt.i30, i32 1, ptr elementtype(i32) %refcnt.i30) #13, !srcloc !117
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i32)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 1
  br i1 %cmp.i.i.i.i, label %if.then.i35, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32)
  %.not.i.i.i.i33 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i33, label %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge, label %if.then10.i.i.i.i34, !prof !114

if.end5.i.i.i.i.sk_psock_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock_put.exit

if.then10.i.i.i.i34:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i30, i32 noundef 3) #13
  br label %sk_psock_put.exit

if.then.i35:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %psock.0.i) #13
  br label %sk_psock_put.exit

sk_psock_put.exit:                                ; preds = %if.then.i35, %if.then10.i.i.i.i34, %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge
  call void @release_sock(ptr noundef %sk) #13
  br label %cleanup

cleanup:                                          ; preds = %sk_psock_put.exit, %if.then
  %.sink = phi ptr [ %33, %sk_psock_put.exit ], [ %31, %if.then ]
  call void %.sink(ptr noundef %sk, i32 noundef %timeout) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_psock_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_psock_put(ptr noundef %sk, ptr noundef %psock) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !117
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !114

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef %psock) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_sockmap_iter_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @btf_sock_ids, i32 0, i32 5) to i32))
  %0 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @btf_sock_ids, i32 0, i32 5), align 4
  store i32 %0, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @sock_map_iter_reg, i32 0, i32 8, i32 1, i32 2), align 4
  %call = tail call i32 @bpf_iter_reg_target(ptr noundef nonnull @sock_map_iter_reg) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_map_link(ptr noundef %map, ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %1, label %entry.sock_map_progs.exit_crit_edge [
    i32 15, label %sw.bb.i
    i32 18, label %sw.bb1.i
  ]

entry.sock_map_progs.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_progs.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %progs.i = getelementptr inbounds %struct.bpf_stab, ptr %map, i32 0, i32 2
  br label %sock_map_progs.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %progs5.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 4
  br label %sock_map_progs.exit

sock_map_progs.exit:                              ; preds = %sw.bb1.i, %sw.bb.i, %entry.sock_map_progs.exit_crit_edge
  %retval.0.i = phi ptr [ %progs5.i, %sw.bb1.i ], [ %progs.i, %sw.bb.i ], [ null, %entry.sock_map_progs.exit_crit_edge ]
  %stream_verdict1 = getelementptr inbounds %struct.sk_psock_progs, ptr %retval.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %stream_verdict1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %stream_verdict1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %sock_map_progs.exit.do.end9_crit_edge, label %if.then

sock_map_progs.exit.do.end9_crit_edge:            ; preds = %sock_map_progs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %sock_map_progs.exit
  %call2 = tail call ptr @bpf_prog_inc_not_zero(ptr noundef nonnull %4) #13
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.then.do.end9_crit_edge

if.then.do.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup

do.end9:                                          ; preds = %if.then.do.end9_crit_edge, %sock_map_progs.exit.do.end9_crit_edge
  %stream_verdict.0 = phi ptr [ %call2, %if.then.do.end9_crit_edge ], [ null, %sock_map_progs.exit.do.end9_crit_edge ]
  %stream_parser11 = getelementptr inbounds %struct.sk_psock_progs, ptr %retval.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %stream_parser11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %stream_parser11, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %do.end9.do.end22_crit_edge, label %if.then13

do.end9.do.end22_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

if.then13:                                        ; preds = %do.end9
  %call14 = tail call ptr @bpf_prog_inc_not_zero(ptr noundef nonnull %7) #13
  %cmp.i281 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i281, label %if.then16, label %if.then13.do.end22_crit_edge

if.then13.do.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call14 to i32
  br label %out_put_stream_verdict

do.end22:                                         ; preds = %if.then13.do.end22_crit_edge, %do.end9.do.end22_crit_edge
  %stream_parser.0 = phi ptr [ %call14, %if.then13.do.end22_crit_edge ], [ null, %do.end9.do.end22_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %retval.0.i, align 4
  %tobool25.not = icmp eq ptr %10, null
  br i1 %tobool25.not, label %do.end22.do.end35_crit_edge, label %if.then26

do.end22.do.end35_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

if.then26:                                        ; preds = %do.end22
  %call27 = tail call ptr @bpf_prog_inc_not_zero(ptr noundef nonnull %10) #13
  %cmp.i282 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.then29, label %if.then26.do.end35_crit_edge

if.then26.do.end35_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %call27 to i32
  br label %out_put_stream_parser

do.end35:                                         ; preds = %if.then26.do.end35_crit_edge, %do.end22.do.end35_crit_edge
  %msg_parser.0 = phi ptr [ %call27, %if.then26.do.end35_crit_edge ], [ null, %do.end22.do.end35_crit_edge ]
  %skb_verdict37 = getelementptr inbounds %struct.sk_psock_progs, ptr %retval.0.i, i32 0, i32 3
  %12 = ptrtoint ptr %skb_verdict37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %skb_verdict37, align 4
  %tobool38.not = icmp eq ptr %13, null
  br i1 %tobool38.not, label %do.end35.if.end45_crit_edge, label %if.then39

do.end35.if.end45_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then39:                                        ; preds = %do.end35
  %call40 = tail call ptr @bpf_prog_inc_not_zero(ptr noundef nonnull %13) #13
  %cmp.i283 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %if.then42, label %if.then39.if.end45_crit_edge

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %call40 to i32
  br label %out_put_msg_parser

if.end45:                                         ; preds = %if.then39.if.end45_crit_edge, %do.end35.if.end45_crit_edge
  %skb_verdict.0 = phi ptr [ %call40, %if.then39.if.end45_crit_edge ], [ null, %do.end35.if.end45_crit_edge ]
  %15 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end45.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end45.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end45
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end45.rcu_read_lock.exit.i_crit_edge
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %19 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %sk_user_data.i.i, align 4
  %call.i11.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i, label %rcu_read_lock.exit.i.sk_psock.exit.i_crit_edge

rcu_read_lock.exit.i.sk_psock.exit.i_crit_edge:   ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit.i

land.lhs.true.i13.i:                              ; preds = %rcu_read_lock.exit.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i13.i.sk_psock.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i13.i.sk_psock.exit.i_crit_edge:    ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i13.i
  %.b10.i.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true4.i.i.sk_psock.exit.i_crit_edge, label %if.then.i14.i

land.lhs.true4.i.i.sk_psock.exit.i_crit_edge:     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit.i

if.then.i14.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 286, ptr noundef nonnull @.str.8) #13
  br label %sk_psock.exit.i

sk_psock.exit.i:                                  ; preds = %if.then.i14.i, %land.lhs.true4.i.i.sk_psock.exit.i_crit_edge, %land.lhs.true.i13.i.sk_psock.exit.i_crit_edge, %rcu_read_lock.exit.i.sk_psock.exit.i_crit_edge
  %21 = ptrtoint ptr %20 to i32
  %and.i.i = and i32 %21, -4
  %22 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %sk_psock.exit.i.out.i_crit_edge, label %if.then.i

sk_psock.exit.i.out.i_crit_edge:                  ; preds = %sk_psock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then.i:                                        ; preds = %sk_psock.exit.i
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %23 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skc_prot.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %cmp.not.i = icmp eq ptr %26, @sock_map_close
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.out.i_crit_edge

if.then.i.out.i_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end.i:                                         ; preds = %if.then.i
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %22, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %27 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i
  %29 = phi i32 [ %28, %if.end.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i15.i = add i32 %29, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %31 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %33 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %32, i32 %add.i.i.i15.i, ptr elementtype(i32) %refcnt.i) #13, !srcloc !126
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %32
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !114

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %34 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %35, 1
  %36 = or i32 %add5.i.i.i.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #13
  %37 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %38 = phi i32 [ %35, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool12.i.i.i.not.i = icmp eq i32 %38, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr inttoptr (i32 -16 to ptr), ptr %22
  br label %out.i

out.i:                                            ; preds = %refcount_inc_not_zero.exit.i, %if.then.i.out.i_crit_edge, %sk_psock.exit.i.out.i_crit_edge
  %psock.0.i = phi ptr [ null, %sk_psock.exit.i.out.i_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then.i.out.i_crit_edge ], [ %spec.select.i, %refcount_inc_not_zero.exit.i ]
  %call.i16.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i16.i, label %out.i.sock_map_psock_get_checked.exit_crit_edge, label %land.lhs.true.i19.i

out.i.sock_map_psock_get_checked.exit_crit_edge:  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_psock_get_checked.exit

land.lhs.true.i19.i:                              ; preds = %out.i
  %call1.i17.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.sock_map_psock_get_checked.exit_crit_edge, label %land.lhs.true2.i21.i

land.lhs.true.i19.i.sock_map_psock_get_checked.exit_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_psock_get_checked.exit

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i, label %land.lhs.true2.i21.i.sock_map_psock_get_checked.exit_crit_edge, label %if.then.i22.i

land.lhs.true2.i21.i.sock_map_psock_get_checked.exit_crit_edge: ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_psock_get_checked.exit

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %sock_map_psock_get_checked.exit

sock_map_psock_get_checked.exit:                  ; preds = %if.then.i22.i, %land.lhs.true2.i21.i.sock_map_psock_get_checked.exit_crit_edge, %land.lhs.true.i19.i.sock_map_psock_get_checked.exit_crit_edge, %out.i.sock_map_psock_get_checked.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %39 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i23.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i23.i to ptr
  %preempt_count.i.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i24.i, align 4
  %sub.i.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i24.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %cmp.i284 = icmp ugt ptr %psock.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %if.then48, label %if.end50

if.then48:                                        ; preds = %sock_map_psock_get_checked.exit
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %psock.0.i to i32
  br label %out_progs

if.end50:                                         ; preds = %sock_map_psock_get_checked.exit
  %tobool51.not = icmp eq ptr %psock.0.i, null
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end50
  %tobool53.not = icmp eq ptr %msg_parser.0, null
  br i1 %tobool53.not, label %if.then52.lor.lhs.false_crit_edge, label %do.end56

if.then52.lor.lhs.false_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

do.end56:                                         ; preds = %if.then52
  %progs58 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 6
  %44 = ptrtoint ptr %progs58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %progs58, align 8
  %tobool60.not = icmp eq ptr %45, null
  br i1 %tobool60.not, label %do.end56.lor.lhs.false_crit_edge, label %do.end56.if.then110_crit_edge

do.end56.if.then110_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then110

do.end56.lor.lhs.false_crit_edge:                 ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end56.lor.lhs.false_crit_edge, %if.then52.lor.lhs.false_crit_edge
  %tobool61.not = icmp eq ptr %stream_parser.0, null
  br i1 %tobool61.not, label %lor.lhs.false.lor.lhs.false70_crit_edge, label %do.end65

lor.lhs.false.lor.lhs.false70_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false70

do.end65:                                         ; preds = %lor.lhs.false
  %stream_parser68 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %stream_parser68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %stream_parser68, align 4
  %tobool69.not = icmp eq ptr %47, null
  br i1 %tobool69.not, label %do.end65.lor.lhs.false70_crit_edge, label %do.end65.if.then110_crit_edge

do.end65.if.then110_crit_edge:                    ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then110

do.end65.lor.lhs.false70_crit_edge:               ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %do.end65.lor.lhs.false70_crit_edge, %lor.lhs.false.lor.lhs.false70_crit_edge
  %tobool71.not = icmp eq ptr %skb_verdict.0, null
  br i1 %tobool71.not, label %lor.lhs.false70.lor.lhs.false90_crit_edge, label %do.end75

lor.lhs.false70.lor.lhs.false90_crit_edge:        ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false90

do.end75:                                         ; preds = %lor.lhs.false70
  %skb_verdict78 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 6, i32 3
  %48 = ptrtoint ptr %skb_verdict78 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %skb_verdict78, align 4
  %tobool79.not = icmp eq ptr %49, null
  br i1 %tobool79.not, label %do.end85.critedge, label %do.end75.if.then110_crit_edge

do.end75.if.then110_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then110

do.end85.critedge:                                ; preds = %do.end75
  %stream_verdict88 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 6, i32 2
  %50 = ptrtoint ptr %stream_verdict88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %stream_verdict88, align 8
  %tobool89.not = icmp eq ptr %51, null
  br i1 %tobool89.not, label %do.end85.critedge.lor.lhs.false90_crit_edge, label %do.end85.critedge.if.then110_crit_edge

do.end85.critedge.if.then110_crit_edge:           ; preds = %do.end85.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then110

do.end85.critedge.lor.lhs.false90_crit_edge:      ; preds = %do.end85.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %do.end85.critedge.lor.lhs.false90_crit_edge, %lor.lhs.false70.lor.lhs.false90_crit_edge
  %tobool91.not = icmp eq ptr %stream_verdict.0, null
  br i1 %tobool91.not, label %lor.lhs.false90.if.end117_crit_edge, label %do.end95

lor.lhs.false90.if.end117_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

do.end95:                                         ; preds = %lor.lhs.false90
  %skb_verdict98 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 6, i32 3
  %52 = ptrtoint ptr %skb_verdict98 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %skb_verdict98, align 4
  %tobool99.not = icmp eq ptr %53, null
  br i1 %tobool99.not, label %do.end105.critedge, label %do.end95.if.then110_crit_edge

do.end95.if.then110_crit_edge:                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then110

do.end105.critedge:                               ; preds = %do.end95
  %stream_verdict108 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 6, i32 2
  %54 = ptrtoint ptr %stream_verdict108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %stream_verdict108, align 8
  %tobool109.not = icmp eq ptr %55, null
  br i1 %tobool109.not, label %do.end105.critedge.if.end117_crit_edge, label %do.end105.critedge.if.then110_crit_edge

do.end105.critedge.if.then110_crit_edge:          ; preds = %do.end105.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then110

do.end105.critedge.if.end117_crit_edge:           ; preds = %do.end105.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

if.then110:                                       ; preds = %do.end105.critedge.if.then110_crit_edge, %do.end95.if.then110_crit_edge, %do.end85.critedge.if.then110_crit_edge, %do.end75.if.then110_crit_edge, %do.end65.if.then110_crit_edge, %do.end56.if.then110_crit_edge
  %refcnt.i285 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 14
  %call.i.i.i.i.i.i286 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i285, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  call void @llvm.prefetch.p0(ptr %refcnt.i285, i32 1, i32 3, i32 1) #13
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i285, ptr %refcnt.i285, i32 1, ptr elementtype(i32) %refcnt.i285) #13, !srcloc !117
  %asmresult.i.i.i.i.i.i.i287 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i287)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i287, 1
  br i1 %cmp.i.i.i.i, label %if.then.i290, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i287)
  %.not.i.i.i.i288 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i287, 0
  br i1 %.not.i.i.i.i288, label %if.end5.i.i.i.i.out_progs_crit_edge, label %if.then10.i.i.i.i289, !prof !114

if.end5.i.i.i.i.out_progs_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_progs

if.then10.i.i.i.i289:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i285, i32 noundef 3) #13
  br label %out_progs

if.then.i290:                                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %psock.0.i) #13
  br label %out_progs

if.else:                                          ; preds = %if.end50
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 12
  %57 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %numa_node, align 8
  %call112 = call ptr @sk_psock_init(ptr noundef %sk, i32 noundef %58) #13
  %cmp.i292 = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %if.then114, label %if.else.if.end117_crit_edge

if.else.if.end117_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

if.then114:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %call112 to i32
  br label %out_progs

if.end117:                                        ; preds = %if.else.if.end117_crit_edge, %do.end105.critedge.if.end117_crit_edge, %lor.lhs.false90.if.end117_crit_edge
  %psock.0 = phi ptr [ %psock.0.i, %do.end105.critedge.if.end117_crit_edge ], [ %call112, %if.else.if.end117_crit_edge ], [ %psock.0.i, %lor.lhs.false90.if.end117_crit_edge ]
  %tobool118.not = icmp eq ptr %msg_parser.0, null
  br i1 %tobool118.not, label %if.end117.if.end122_crit_edge, label %if.then119

if.end117.if.end122_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %progs120 = getelementptr inbounds %struct.sk_psock, ptr %psock.0, i32 0, i32 6
  call fastcc void @psock_set_prog(ptr noundef %progs120, ptr noundef nonnull %msg_parser.0)
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.end117.if.end122_crit_edge
  %tobool123.not = icmp eq ptr %stream_parser.0, null
  br i1 %tobool123.not, label %if.end122.if.end127_crit_edge, label %if.then124

if.end122.if.end127_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %stream_parser126 = getelementptr inbounds %struct.sk_psock, ptr %psock.0, i32 0, i32 6, i32 1
  call fastcc void @psock_set_prog(ptr noundef %stream_parser126, ptr noundef nonnull %stream_parser.0)
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end122.if.end127_crit_edge
  %tobool128.not = icmp eq ptr %stream_verdict.0, null
  br i1 %tobool128.not, label %if.end127.if.end132_crit_edge, label %if.then129

if.end127.if.end132_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then129:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  %stream_verdict131 = getelementptr inbounds %struct.sk_psock, ptr %psock.0, i32 0, i32 6, i32 2
  call fastcc void @psock_set_prog(ptr noundef %stream_verdict131, ptr noundef nonnull %stream_verdict.0)
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end127.if.end132_crit_edge
  %tobool133.not = icmp eq ptr %skb_verdict.0, null
  br i1 %tobool133.not, label %if.end132.if.end137_crit_edge, label %if.then134

if.end132.if.end137_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then134:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  %skb_verdict136 = getelementptr inbounds %struct.sk_psock, ptr %psock.0, i32 0, i32 6, i32 3
  call fastcc void @psock_set_prog(ptr noundef %skb_verdict136, ptr noundef nonnull %skb_verdict.0)
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %if.end132.if.end137_crit_edge
  %skc_prot.i293 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %60 = ptrtoint ptr %skc_prot.i293 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %skc_prot.i293, align 8
  %psock_update_sk_prot.i = getelementptr inbounds %struct.proto, ptr %61, i32 0, i32 25
  %62 = ptrtoint ptr %psock_update_sk_prot.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %psock_update_sk_prot.i, align 4
  %tobool.not.i294 = icmp eq ptr %63, null
  br i1 %tobool.not.i294, label %if.end137.if.then139_crit_edge, label %sock_map_init_proto.exit

if.end137.if.then139_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then139

sock_map_init_proto.exit:                         ; preds = %if.end137
  %psock_update_sk_prot4.i = getelementptr inbounds %struct.sk_psock, ptr %psock.0, i32 0, i32 19
  %64 = ptrtoint ptr %psock_update_sk_prot4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %psock_update_sk_prot4.i, align 8
  %65 = ptrtoint ptr %skc_prot.i293 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skc_prot.i293, align 8
  %psock_update_sk_prot7.i = getelementptr inbounds %struct.proto, ptr %66, i32 0, i32 25
  %67 = ptrtoint ptr %psock_update_sk_prot7.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %psock_update_sk_prot7.i, align 4
  %call.i = call i32 %68(ptr noundef %sk, ptr noundef %psock.0, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sock_map_init_proto.exit.if.then139_crit_edge, label %if.end140

sock_map_init_proto.exit.if.then139_crit_edge:    ; preds = %sock_map_init_proto.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then139

if.then139:                                       ; preds = %sock_map_init_proto.exit.if.then139_crit_edge, %if.end137.if.then139_crit_edge
  %retval.0.i296299 = phi i32 [ %call.i, %sock_map_init_proto.exit.if.then139_crit_edge ], [ -22, %if.end137.if.then139_crit_edge ]
  call fastcc void @sk_psock_put(ptr noundef %sk, ptr noundef %psock.0)
  br label %cleanup

if.end140:                                        ; preds = %sock_map_init_proto.exit
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #13
  %brmerge = or i1 %tobool128.not, %tobool123.not
  br i1 %brmerge, label %if.end140.if.else152_crit_edge, label %land.lhs.true144

if.end140.if.else152_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else152

land.lhs.true144:                                 ; preds = %if.end140
  %saved_data_ready = getelementptr inbounds %struct.sk_psock, ptr %psock.0, i32 0, i32 18
  %69 = ptrtoint ptr %saved_data_ready to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %saved_data_ready, align 4
  %tobool145.not = icmp eq ptr %70, null
  br i1 %tobool145.not, label %if.then146, label %land.lhs.true144.if.else152_crit_edge

land.lhs.true144.if.else152_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else152

if.then146:                                       ; preds = %land.lhs.true144
  %call147 = call i32 @sk_psock_init_strp(ptr noundef %sk, ptr noundef %psock.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end151, label %if.then149

if.then149:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #13
  call fastcc void @sk_psock_put(ptr noundef %sk, ptr noundef %psock.0)
  br label %cleanup

if.end151:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #15
  call void @sk_psock_start_strp(ptr noundef %sk, ptr noundef %psock.0) #13
  br label %if.end170

if.else152:                                       ; preds = %land.lhs.true144.if.else152_crit_edge, %if.end140.if.else152_crit_edge
  %tobool123.not.not = xor i1 %tobool123.not, true
  %brmerge279 = or i1 %tobool128.not, %tobool123.not.not
  br i1 %brmerge279, label %if.else152.if.else160_crit_edge, label %land.lhs.true156

if.else152.if.else160_crit_edge:                  ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else160

land.lhs.true156:                                 ; preds = %if.else152
  %saved_data_ready157 = getelementptr inbounds %struct.sk_psock, ptr %psock.0, i32 0, i32 18
  %71 = ptrtoint ptr %saved_data_ready157 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %saved_data_ready157, align 4
  %tobool158.not = icmp eq ptr %72, null
  br i1 %tobool158.not, label %if.then159, label %land.lhs.true156.if.else160_crit_edge

land.lhs.true156.if.else160_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else160

if.then159:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #15
  call void @sk_psock_start_verdict(ptr noundef %sk, ptr noundef %psock.0) #13
  br label %if.end170

if.else160:                                       ; preds = %land.lhs.true156.if.else160_crit_edge, %if.else152.if.else160_crit_edge
  %tobool128.not.not = xor i1 %tobool128.not, true
  %brmerge280 = or i1 %tobool133.not, %tobool128.not.not
  br i1 %brmerge280, label %if.else160.if.end170_crit_edge, label %land.lhs.true164

if.else160.if.end170_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170

land.lhs.true164:                                 ; preds = %if.else160
  %saved_data_ready165 = getelementptr inbounds %struct.sk_psock, ptr %psock.0, i32 0, i32 18
  %73 = ptrtoint ptr %saved_data_ready165 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %saved_data_ready165, align 4
  %tobool166.not = icmp eq ptr %74, null
  br i1 %tobool166.not, label %if.then167, label %land.lhs.true164.if.end170_crit_edge

land.lhs.true164.if.end170_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170

if.then167:                                       ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #15
  call void @sk_psock_start_verdict(ptr noundef %sk, ptr noundef %psock.0) #13
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %land.lhs.true164.if.end170_crit_edge, %if.else160.if.end170_crit_edge, %if.then159, %if.end151
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #13
  br label %cleanup

out_progs:                                        ; preds = %if.then114, %if.then.i290, %if.then10.i.i.i.i289, %if.end5.i.i.i.i.out_progs_crit_edge, %if.then48
  %ret.0 = phi i32 [ %43, %if.then48 ], [ %59, %if.then114 ], [ -16, %if.end5.i.i.i.i.out_progs_crit_edge ], [ -16, %if.then10.i.i.i.i289 ], [ -16, %if.then.i290 ]
  %tobool172.not = icmp eq ptr %skb_verdict.0, null
  br i1 %tobool172.not, label %out_progs.out_put_msg_parser_crit_edge, label %if.then173

out_progs.out_put_msg_parser_crit_edge:           ; preds = %out_progs
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_msg_parser

if.then173:                                       ; preds = %out_progs
  call void @__sanitizer_cov_trace_pc() #15
  call void @bpf_prog_put(ptr noundef nonnull %skb_verdict.0) #13
  br label %out_put_msg_parser

out_put_msg_parser:                               ; preds = %if.then173, %out_progs.out_put_msg_parser_crit_edge, %if.then42
  %ret.1 = phi i32 [ %14, %if.then42 ], [ %ret.0, %if.then173 ], [ %ret.0, %out_progs.out_put_msg_parser_crit_edge ]
  %tobool175.not = icmp eq ptr %msg_parser.0, null
  br i1 %tobool175.not, label %out_put_msg_parser.out_put_stream_parser_crit_edge, label %if.then176

out_put_msg_parser.out_put_stream_parser_crit_edge: ; preds = %out_put_msg_parser
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_stream_parser

if.then176:                                       ; preds = %out_put_msg_parser
  call void @__sanitizer_cov_trace_pc() #15
  call void @bpf_prog_put(ptr noundef nonnull %msg_parser.0) #13
  br label %out_put_stream_parser

out_put_stream_parser:                            ; preds = %if.then176, %out_put_msg_parser.out_put_stream_parser_crit_edge, %if.then29
  %ret.2 = phi i32 [ %11, %if.then29 ], [ %ret.1, %if.then176 ], [ %ret.1, %out_put_msg_parser.out_put_stream_parser_crit_edge ]
  %tobool178.not = icmp eq ptr %stream_parser.0, null
  br i1 %tobool178.not, label %out_put_stream_parser.out_put_stream_verdict_crit_edge, label %if.then179

out_put_stream_parser.out_put_stream_verdict_crit_edge: ; preds = %out_put_stream_parser
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_stream_verdict

if.then179:                                       ; preds = %out_put_stream_parser
  call void @__sanitizer_cov_trace_pc() #15
  call void @bpf_prog_put(ptr noundef nonnull %stream_parser.0) #13
  br label %out_put_stream_verdict

out_put_stream_verdict:                           ; preds = %if.then179, %out_put_stream_parser.out_put_stream_verdict_crit_edge, %if.then16
  %ret.3 = phi i32 [ %8, %if.then16 ], [ %ret.2, %if.then179 ], [ %ret.2, %out_put_stream_parser.out_put_stream_verdict_crit_edge ]
  %tobool181.not = icmp eq ptr %stream_verdict.0, null
  br i1 %tobool181.not, label %out_put_stream_verdict.cleanup_crit_edge, label %if.then182

out_put_stream_verdict.cleanup_crit_edge:         ; preds = %out_put_stream_verdict
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then182:                                       ; preds = %out_put_stream_verdict
  call void @__sanitizer_cov_trace_pc() #15
  call void @bpf_prog_put(ptr noundef nonnull %stream_verdict.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then182, %out_put_stream_verdict.cleanup_crit_edge, %if.end170, %if.then149, %if.then139, %if.then4
  %retval.0 = phi i32 [ %5, %if.then4 ], [ 0, %if.end170 ], [ %ret.3, %if.then182 ], [ %ret.3, %out_put_stream_verdict.cleanup_crit_edge ], [ %retval.0.i296299, %if.then139 ], [ %call147, %if.then149 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_map_unref(ptr noundef %sk, ptr noundef readnone %link_raw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.sk_psock.exit_crit_edge

entry.sk_psock.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.sk_psock.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.sk_psock.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.sk_psock.exit_crit_edge, label %if.then.i

land.lhs.true4.i.sk_psock.exit_crit_edge:         ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_psock.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 286, ptr noundef nonnull @.str.8) #13
  br label %sk_psock.exit

sk_psock.exit:                                    ; preds = %if.then.i, %land.lhs.true4.i.sk_psock.exit_crit_edge, %land.lhs.true.i.sk_psock.exit_crit_edge, %entry.sk_psock.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -4
  %3 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %sk_psock.exit.if.end_crit_edge, label %if.then, !prof !115

sk_psock.exit.if.end_crit_edge:                   ; preds = %sk_psock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %sk_psock.exit
  %link_lock.i = getelementptr inbounds %struct.sk_psock, ptr %3, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %link_lock.i) #13
  %link1.i = getelementptr inbounds %struct.sk_psock, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %link1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link1.i, align 8
  %cmp.not97.i = icmp eq ptr %5, %link1.i
  br i1 %cmp.not97.i, label %if.then.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %saved_data_ready.i = getelementptr inbounds %struct.sk_psock, ptr %3, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %strp_stop.0.off0100.i = phi i1 [ false, %for.body.lr.ph.i ], [ %strp_stop.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %verdict_stop.0.off099.i = phi i1 [ false, %for.body.lr.ph.i ], [ %verdict_stop.3.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %link.098.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %tmp.0101.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %link.098.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0101.i = load ptr, ptr %link.098.i, align 4
  %link_raw9.i = getelementptr inbounds %struct.sk_psock_link, ptr %link.098.i, i32 0, i32 2
  %7 = ptrtoint ptr %link_raw9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link_raw9.i, align 4
  %cmp10.i = icmp eq ptr %8, %link_raw
  br i1 %cmp10.i, label %if.then.i8, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i8:                                       ; preds = %for.body.i
  %9 = ptrtoint ptr %saved_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %saved_data_ready.i, align 4
  %tobool.not.i7 = icmp eq ptr %10, null
  br i1 %tobool.not.i7, label %if.then.i8.if.end30.i_crit_edge, label %land.lhs.true26.i

if.then.i8.if.end30.i_crit_edge:                  ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

land.lhs.true26.i:                                ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #15
  %map11.i = getelementptr inbounds %struct.sk_psock_link, ptr %link.098.i, i32 0, i32 1
  %11 = ptrtoint ptr %map11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map11.i, align 4
  %stream_parser.i = getelementptr inbounds %struct.bpf_stab, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %stream_parser.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream_parser.i, align 4
  %tobool15.not.i = icmp ne ptr %14, null
  %spec.select.i = select i1 %tobool15.not.i, i1 true, i1 %strp_stop.0.off0100.i
  %stream_verdict.i = getelementptr inbounds %struct.bpf_stab, ptr %12, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %stream_verdict.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream_verdict.i, align 4
  %tobool21.not.i = icmp ne ptr %16, null
  %skb_verdict.i = getelementptr inbounds %struct.bpf_stab, ptr %12, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %skb_verdict.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb_verdict.i, align 4
  %tobool28.not.i = icmp ne ptr %18, null
  %19 = select i1 %tobool28.not.i, i1 true, i1 %tobool21.not.i
  %spec.select90.i = select i1 %19, i1 true, i1 %verdict_stop.0.off099.i
  br label %if.end30.i

if.end30.i:                                       ; preds = %land.lhs.true26.i, %if.then.i8.if.end30.i_crit_edge
  %strp_stop.1.off09295.i = phi i1 [ %spec.select.i, %land.lhs.true26.i ], [ %strp_stop.0.off0100.i, %if.then.i8.if.end30.i_crit_edge ]
  %verdict_stop.2.off0.i = phi i1 [ %spec.select90.i, %land.lhs.true26.i ], [ %verdict_stop.0.off099.i, %if.then.i8.if.end30.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link.098.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end30.i.list_del.exit.i_crit_edge

if.end30.i.list_del.exit.i_crit_edge:             ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %link.098.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %link.098.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.098.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end30.i.list_del.exit.i_crit_edge
  %26 = ptrtoint ptr %link.098.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %link.098.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %link.098.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %link.098.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body.i.for.inc.i_crit_edge
  %verdict_stop.3.off0.i = phi i1 [ %verdict_stop.2.off0.i, %list_del.exit.i ], [ %verdict_stop.0.off099.i, %for.body.i.for.inc.i_crit_edge ]
  %strp_stop.2.off0.i = phi i1 [ %strp_stop.1.off09295.i, %list_del.exit.i ], [ %strp_stop.0.off0100.i, %for.body.i.for.inc.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %tmp.0101.i, %link1.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %verdict_stop.0.off0.lcssa.i = phi i1 [ false, %if.then.for.end.i_crit_edge ], [ %verdict_stop.3.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %strp_stop.0.off0.lcssa.i = phi i1 [ false, %if.then.for.end.i_crit_edge ], [ %strp_stop.2.off0.i, %for.inc.i.for.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %link_lock.i) #13
  %brmerge.i = select i1 %strp_stop.0.off0.lcssa.i, i1 true, i1 %verdict_stop.0.off0.lcssa.i
  br i1 %brmerge.i, label %if.then41.i, label %for.end.i.sock_map_del_link.exit_crit_edge

for.end.i.sock_map_del_link.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_del_link.exit

if.then41.i:                                      ; preds = %for.end.i
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
  br i1 %strp_stop.0.off0.lcssa.i, label %if.then43.i, label %if.then41.i.if.end44.i_crit_edge

if.then41.i.if.end44.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

if.then43.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sk_psock_stop_strp(ptr noundef %sk, ptr noundef nonnull %3) #13
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then43.i, %if.then41.i.if.end44.i_crit_edge
  br i1 %verdict_stop.0.off0.lcssa.i, label %if.then46.i, label %if.end44.i.if.end47.i_crit_edge

if.end44.i.if.end47.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sk_psock_stop_verdict(ptr noundef %sk, ptr noundef nonnull %3) #13
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then46.i, %if.end44.i.if.end47.i_crit_edge
  %psock_update_sk_prot.i = getelementptr inbounds %struct.sk_psock, ptr %3, i32 0, i32 19
  %28 = ptrtoint ptr %psock_update_sk_prot.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %psock_update_sk_prot.i, align 8
  %tobool48.not.i = icmp eq ptr %29, null
  br i1 %tobool48.not.i, label %if.end47.i.if.end51.i_crit_edge, label %if.then49.i

if.end47.i.if.end51.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i9 = tail call i32 %29(ptr noundef %sk, ptr noundef nonnull %3, i1 noundef zeroext false) #13
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end47.i.if.end51.i_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  br label %sock_map_del_link.exit

sock_map_del_link.exit:                           ; preds = %if.end51.i, %for.end.i.sock_map_del_link.exit_crit_edge
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %3, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i10, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sock_map_del_link.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !114

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %if.end

if.then.i10:                                      ; preds = %sock_map_del_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i10, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %sk_psock.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_inc_not_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_psock_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psock_set_prog(ptr noundef %pprog, ptr noundef %prog) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pprog, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !131
  %0 = ptrtoint ptr %prog to i32
  tail call void @llvm.prefetch.p0(ptr %pprog, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %0, ptr %pprog) #13, !srcloc !104
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = inttoptr i32 %asmresult.i to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_psock_init_strp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_psock_start_strp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_psock_start_verdict(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_psock_stop_strp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_psock_stop_verdict(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psock_progs_drop(ptr noundef %progs) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %progs, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %progs, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %progs) #13, !srcloc !104
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i, label %entry.psock_set_prog.exit_crit_edge, label %if.then.i

entry.psock_set_prog.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %psock_set_prog.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = inttoptr i32 %asmresult.i.i to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %1) #13
  br label %psock_set_prog.exit

psock_set_prog.exit:                              ; preds = %if.then.i, %entry.psock_set_prog.exit_crit_edge
  %stream_parser = getelementptr inbounds %struct.sk_psock_progs, ptr %progs, i32 0, i32 1
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_parser, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %stream_parser, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %stream_parser) #13, !srcloc !104
  %asmresult.i.i5 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i5)
  %tobool.not.i6 = icmp eq i32 %asmresult.i.i5, 0
  br i1 %tobool.not.i6, label %psock_set_prog.exit.psock_set_prog.exit8_crit_edge, label %if.then.i7

psock_set_prog.exit.psock_set_prog.exit8_crit_edge: ; preds = %psock_set_prog.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %psock_set_prog.exit8

if.then.i7:                                       ; preds = %psock_set_prog.exit
  call void @__sanitizer_cov_trace_pc() #15
  %3 = inttoptr i32 %asmresult.i.i5 to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %3) #13
  br label %psock_set_prog.exit8

psock_set_prog.exit8:                             ; preds = %if.then.i7, %psock_set_prog.exit.psock_set_prog.exit8_crit_edge
  %stream_verdict = getelementptr inbounds %struct.sk_psock_progs, ptr %progs, i32 0, i32 2
  %call.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_verdict, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %stream_verdict, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %stream_verdict) #13, !srcloc !104
  %asmresult.i.i10 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i10)
  %tobool.not.i11 = icmp eq i32 %asmresult.i.i10, 0
  br i1 %tobool.not.i11, label %psock_set_prog.exit8.psock_set_prog.exit13_crit_edge, label %if.then.i12

psock_set_prog.exit8.psock_set_prog.exit13_crit_edge: ; preds = %psock_set_prog.exit8
  call void @__sanitizer_cov_trace_pc() #15
  br label %psock_set_prog.exit13

if.then.i12:                                      ; preds = %psock_set_prog.exit8
  call void @__sanitizer_cov_trace_pc() #15
  %5 = inttoptr i32 %asmresult.i.i10 to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %5) #13
  br label %psock_set_prog.exit13

psock_set_prog.exit13:                            ; preds = %if.then.i12, %psock_set_prog.exit8.psock_set_prog.exit13_crit_edge
  %skb_verdict = getelementptr inbounds %struct.sk_psock_progs, ptr %progs, i32 0, i32 3
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skb_verdict, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %skb_verdict, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %skb_verdict) #13, !srcloc !104
  %asmresult.i.i15 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i15)
  %tobool.not.i16 = icmp eq i32 %asmresult.i.i15, 0
  br i1 %tobool.not.i16, label %psock_set_prog.exit13.psock_set_prog.exit18_crit_edge, label %if.then.i17

psock_set_prog.exit13.psock_set_prog.exit18_crit_edge: ; preds = %psock_set_prog.exit13
  call void @__sanitizer_cov_trace_pc() #15
  br label %psock_set_prog.exit18

if.then.i17:                                      ; preds = %psock_set_prog.exit13
  call void @__sanitizer_cov_trace_pc() #15
  %7 = inttoptr i32 %asmresult.i.i15 to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %7) #13
  br label %psock_set_prog.exit18

psock_set_prog.exit18:                            ; preds = %if.then.i17, %psock_set_prog.exit13.psock_set_prog.exit18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__sock_gen_cookie(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sock_map_init_seq_private(ptr nocapture noundef writeonly %priv_data, ptr nocapture noundef readonly %aux) #4 align 64 {
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
define internal ptr @sock_map_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %index.i = getelementptr inbounds %struct.sock_map_seq_info, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp.not.i = icmp ult i32 %10, %14
  br i1 %cmp.not.i, label %if.end.i, label %rcu_read_lock.exit.sock_map_seq_lookup_elem.exit_crit_edge, !prof !114

rcu_read_lock.exit.sock_map_seq_lookup_elem.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_seq_lookup_elem.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end.i.if.end30.i.i_crit_edge

if.end.i.if.end30.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b54.i.i = load i1, ptr @__sock_map_lookup_elem.__already_done, align 1
  br i1 %.b54.i.i, label %land.rhs.i.i.if.end30.i.i_crit_edge, label %if.then.i.i, !prof !114

land.rhs.i.i.if.end30.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__sock_map_lookup_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 376, i32 noundef 9, ptr noundef null) #13
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end30.i.i_crit_edge, %if.end.i.if.end30.i.i_crit_edge
  %15 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %10)
  %cmp.not.i.i = icmp ugt i32 %16, %10
  br i1 %cmp.not.i.i, label %do.end48.i.i, label %if.end30.i.i.__sock_map_lookup_elem.exit.i_crit_edge, !prof !114

if.end30.i.i.__sock_map_lookup_elem.exit.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__sock_map_lookup_elem.exit.i

do.end48.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sks.i.i = getelementptr inbounds %struct.bpf_stab, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %sks.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sks.i.i, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %18, i32 %10
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i.i, align 4
  br label %__sock_map_lookup_elem.exit.i

__sock_map_lookup_elem.exit.i:                    ; preds = %do.end48.i.i, %if.end30.i.i.__sock_map_lookup_elem.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %do.end48.i.i ], [ null, %if.end30.i.i.__sock_map_lookup_elem.exit.i_crit_edge ]
  %sk.i = getelementptr inbounds %struct.sock_map_seq_info, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i.i, ptr %sk.i, align 4
  br label %sock_map_seq_lookup_elem.exit

sock_map_seq_lookup_elem.exit:                    ; preds = %__sock_map_lookup_elem.exit.i, %rcu_read_lock.exit.sock_map_seq_lookup_elem.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %__sock_map_lookup_elem.exit.i ], [ null, %rcu_read_lock.exit.sock_map_seq_lookup_elem.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sock_map_seq_stop(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__sockmap, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

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
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.sock_map_seq_show.exit_crit_edge, label %if.end.i

if.then.sock_map_seq_show.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_seq_show.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta.i, ptr %ctx.i, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.bpf_iter__sockmap, ptr %ctx.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %call5.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #13
  br label %sock_map_seq_show.exit

sock_map_seq_show.exit:                           ; preds = %if.end.i, %if.then.sock_map_seq_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx.i) #13
  br label %if.end

if.end:                                           ; preds = %sock_map_seq_show.exit, %entry.if.end_crit_edge
  %call.i1 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i1, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %10 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sock_map_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 {
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
  %index = getelementptr inbounds %struct.sock_map_seq_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %inc1 = add i32 %5, 1
  store i32 %inc1, ptr %index, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc1, i32 %9)
  %cmp.not.i = icmp ult i32 %inc1, %9
  br i1 %cmp.not.i, label %if.end.i, label %entry.sock_map_seq_lookup_elem.exit_crit_edge, !prof !114

entry.sock_map_seq_lookup_elem.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_map_seq_lookup_elem.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end.i.if.end30.i.i_crit_edge

if.end.i.if.end30.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b54.i.i = load i1, ptr @__sock_map_lookup_elem.__already_done, align 1
  br i1 %.b54.i.i, label %land.rhs.i.i.if.end30.i.i_crit_edge, label %if.then.i.i, !prof !114

land.rhs.i.i.if.end30.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__sock_map_lookup_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 376, i32 noundef 9, ptr noundef null) #13
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end30.i.i_crit_edge, %if.end.i.if.end30.i.i_crit_edge
  %10 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %inc1)
  %cmp.not.i.i = icmp ugt i32 %11, %inc1
  br i1 %cmp.not.i.i, label %do.end48.i.i, label %if.end30.i.i.__sock_map_lookup_elem.exit.i_crit_edge, !prof !114

if.end30.i.i.__sock_map_lookup_elem.exit.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__sock_map_lookup_elem.exit.i

do.end48.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sks.i.i = getelementptr inbounds %struct.bpf_stab, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %sks.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sks.i.i, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %13, i32 %inc1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.i.i, align 4
  br label %__sock_map_lookup_elem.exit.i

__sock_map_lookup_elem.exit.i:                    ; preds = %do.end48.i.i, %if.end30.i.i.__sock_map_lookup_elem.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %do.end48.i.i ], [ null, %if.end30.i.i.__sock_map_lookup_elem.exit.i_crit_edge ]
  %sk.i = getelementptr inbounds %struct.sock_map_seq_info, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i.i, ptr %sk.i, align 4
  br label %sock_map_seq_lookup_elem.exit

sock_map_seq_lookup_elem.exit:                    ; preds = %__sock_map_lookup_elem.exit.i, %entry.sock_map_seq_lookup_elem.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %__sock_map_lookup_elem.exit.i ], [ null, %entry.sock_map_seq_lookup_elem.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sock_map_seq_show(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  %ctx = alloca %struct.bpf_iter__sockmap, align 8
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
  %tobool.not = icmp eq ptr %v, null
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext %tobool.not) #13
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta, ptr %ctx, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.bpf_iter__sockmap, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.sock_map_seq_info, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.bpf_iter__sockmap, ptr %ctx, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %index, ptr %10, align 8
  %sk = getelementptr inbounds %struct.sock_map_seq_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk, align 4
  %14 = getelementptr inbounds %struct.bpf_iter__sockmap, ptr %ctx, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %14, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_iter_get_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_run_prog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_hash_bucket_hash(ptr nocapture noundef readonly %key, i32 noundef %len) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add i32 %len, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp13.i = icmp ugt i32 %len, 12
  br i1 %cmp13.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.018.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %key, %entry.while.body.i_crit_edge ]
  %c.017.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %b.016.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %a.015.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %length.addr.014.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %len, %entry.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %k.018.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.018.i, align 1
  %add2.i = add i32 %1, %a.015.i
  %add.ptr.i = getelementptr i8, ptr %k.018.i, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %3, %b.016.i
  %add.ptr5.i = getelementptr i8, ptr %k.018.i, i32 8
  %4 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %5, %c.017.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #13
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #13
  %xor12.i = xor i32 %sub10.i, %or.i1.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #13
  %xor16.i = xor i32 %sub14.i, %or.i2.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #13
  %xor20.i = xor i32 %sub18.i, %or.i3.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #13
  %xor24.i = xor i32 %sub22.i, %or.i4.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #13
  %xor28.i = xor i32 %sub26.i, %or.i5.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.014.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.018.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %len, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %key, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %9 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %10 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %11 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %12 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %13 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %14 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %15 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %16 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %17 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %18 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %19 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %20 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %21 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %22 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %23 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %24 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %25 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %26 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %27 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %28 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %29 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %30 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #13
  %sub87.i = sub i32 %xor85.i, %or.i6.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #13
  %sub90.i = sub i32 %xor88.i, %or.i7.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #13
  %sub93.i = sub i32 %xor91.i, %or.i8.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #13
  %sub96.i = sub i32 %xor94.i, %or.i9.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #13
  %sub99.i = sub i32 %xor97.i, %or.i10.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #13
  %sub102.i = sub i32 %xor100.i, %or.i11.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #13
  %sub105.i = sub i32 %xor103.i, %or.i12.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  ret i32 %c.12.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_kmalloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__sock_hash_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size1 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size1, align 16
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b50 = load i1, ptr @__sock_hash_lookup_elem.__already_done, align 1
  br i1 %.b50, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !114

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__sock_hash_lookup_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 868, i32 noundef 9, ptr noundef null) #13
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %call39 = tail call fastcc i32 @sock_hash_bucket_hash(ptr noundef %key, i32 noundef %1)
  %buckets.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buckets.i, align 128
  %buckets_num.i = getelementptr inbounds %struct.bpf_shtab, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %buckets_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buckets_num.i, align 4
  %sub.i = add i32 %5, -1
  %and.i = and i32 %sub.i, %call39
  %arrayidx.i = getelementptr %struct.bpf_shtab_bucket, ptr %3, i32 %and.i
  %call.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end31.do.end.i_crit_edge

if.end31.do.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end31
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b42.i = load i1, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_lookup_elem_raw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 852, ptr noundef nonnull @.str.6) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end31.do.end.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -16
  %tobool12.not4650.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not46.i = or i1 %tobool10.not.i, %tobool12.not4650.i
  br i1 %tobool12.not46.i, label %do.end.i.cond.end_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cond.end_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %elem.047.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %hash13.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 1
  %8 = ptrtoint ptr %hash13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call39)
  %cmp.i = icmp eq i32 %9, %call39
  br i1 %cmp.i, label %land.lhs.true14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %for.body.i
  %key15.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %key15.i, ptr %key, i32 %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %cond.true, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %node.i = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 3
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %node.i, align 4
  %tobool27.not.i = icmp eq ptr %11, null
  %add.ptr31.i = getelementptr i8, ptr %11, i32 -16
  %tobool12.not51.i = icmp eq ptr %add.ptr31.i, null
  %tobool12.not.i = or i1 %tobool27.not.i, %tobool12.not51.i
  br i1 %tobool12.not.i, label %for.inc.i.cond.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cond.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  %sk = getelementptr inbounds %struct.bpf_shtab_elem, ptr %elem.047.i, i32 0, i32 2
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.inc.i.cond.end_crit_edge, %do.end.i.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ null, %do.end.i.cond.end_crit_edge ], [ null, %for.inc.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sock_hash_init_seq_private(ptr nocapture noundef writeonly %priv_data, ptr nocapture noundef readonly %aux) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %priv_data, align 4
  %3 = load ptr, ptr %aux, align 4
  %htab = getelementptr inbounds %struct.sock_hash_seq_info, ptr %priv_data, i32 0, i32 1
  %4 = ptrtoint ptr %htab to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %htab, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sock_hash_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %htab1.i = getelementptr inbounds %struct.sock_hash_seq_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %htab1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %htab1.i, align 4
  %bucket_id20.i = getelementptr inbounds %struct.sock_hash_seq_info, ptr %1, i32 0, i32 2
  %buckets_num.i = getelementptr inbounds %struct.bpf_shtab, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bucket_id20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bucket_id20.i, align 4
  %13 = ptrtoint ptr %buckets_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buckets_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp77.i = icmp ult i32 %12, %14
  br i1 %cmp77.i, label %for.body.lr.ph.i, label %rcu_read_lock.exit.sock_hash_seq_find_next.exit_crit_edge

rcu_read_lock.exit.sock_hash_seq_find_next.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hash_seq_find_next.exit

for.body.lr.ph.i:                                 ; preds = %rcu_read_lock.exit
  %buckets.i = getelementptr inbounds %struct.bpf_shtab, ptr %10, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %15 = phi i32 [ %12, %for.body.lr.ph.i ], [ %inc53.i, %for.inc.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buckets.i, align 128
  %arrayidx.i = getelementptr %struct.bpf_shtab_bucket, ptr %17, i32 %15
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i, align 4
  %call27.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true29.i, label %for.body.i.do.end37.i_crit_edge

for.body.i.do.end37.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37.i

land.lhs.true29.i:                                ; preds = %for.body.i
  %call30.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true29.i.do.end37.i_crit_edge, label %land.lhs.true32.i

land.lhs.true29.i.do.end37.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37.i

land.lhs.true32.i:                                ; preds = %land.lhs.true29.i
  %.b7172.i = load i1, ptr @sock_hash_seq_find_next.__warned.10, align 1
  br i1 %.b7172.i, label %land.lhs.true32.i.do.end37.i_crit_edge, label %if.then34.i

land.lhs.true32.i.do.end37.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37.i

if.then34.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_seq_find_next.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1300, ptr noundef nonnull @.str.8) #13
  br label %do.end37.i

do.end37.i:                                       ; preds = %if.then34.i, %land.lhs.true32.i.do.end37.i_crit_edge, %land.lhs.true29.i.do.end37.i_crit_edge, %for.body.i.do.end37.i_crit_edge
  %tobool41.not.i = icmp eq ptr %19, null
  %add.ptr45.i = getelementptr i8, ptr %19, i32 -16
  %tobool49.not76.i = icmp eq ptr %add.ptr45.i, null
  %tobool49.not.i = or i1 %tobool41.not.i, %tobool49.not76.i
  br i1 %tobool49.not.i, label %for.inc.i, label %do.end37.i.sock_hash_seq_find_next.exit_crit_edge

do.end37.i.sock_hash_seq_find_next.exit_crit_edge: ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hash_seq_find_next.exit

for.inc.i:                                        ; preds = %do.end37.i
  %20 = ptrtoint ptr %bucket_id20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bucket_id20.i, align 4
  %inc53.i = add i32 %21, 1
  store i32 %inc53.i, ptr %bucket_id20.i, align 4
  %22 = ptrtoint ptr %buckets_num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buckets_num.i, align 4
  %cmp.i = icmp ult i32 %inc53.i, %23
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sock_hash_seq_find_next.exit_crit_edge

for.inc.i.sock_hash_seq_find_next.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hash_seq_find_next.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sock_hash_seq_find_next.exit:                     ; preds = %for.inc.i.sock_hash_seq_find_next.exit_crit_edge, %do.end37.i.sock_hash_seq_find_next.exit_crit_edge, %rcu_read_lock.exit.sock_hash_seq_find_next.exit_crit_edge
  %retval.0.i = phi ptr [ null, %rcu_read_lock.exit.sock_hash_seq_find_next.exit_crit_edge ], [ null, %for.inc.i.sock_hash_seq_find_next.exit_crit_edge ], [ %add.ptr45.i, %do.end37.i.sock_hash_seq_find_next.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sock_hash_seq_stop(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__sockmap, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

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
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.sock_hash_seq_show.exit_crit_edge, label %if.end.i

if.then.sock_hash_seq_show.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hash_seq_show.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta.i, ptr %ctx.i, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.bpf_iter__sockmap, ptr %ctx.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %call5.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #13
  br label %sock_hash_seq_show.exit

sock_hash_seq_show.exit:                          ; preds = %if.end.i, %if.then.sock_hash_seq_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx.i) #13
  br label %if.end

if.end:                                           ; preds = %sock_hash_seq_show.exit, %entry.if.end_crit_edge
  %call.i1 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i1, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %10 = call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sock_hash_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
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
  %call = tail call fastcc ptr @sock_hash_seq_find_next(ptr noundef %1, ptr noundef %v)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sock_hash_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %ctx = alloca %struct.bpf_iter__sockmap, align 8
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
  %tobool.not = icmp eq ptr %v, null
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext %tobool.not) #13
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta, ptr %ctx, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.bpf_iter__sockmap, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %key = getelementptr inbounds %struct.bpf_shtab_elem, ptr %v, i32 0, i32 4
  %10 = getelementptr inbounds %struct.bpf_iter__sockmap, ptr %ctx, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %key, ptr %10, align 8
  %sk = getelementptr inbounds %struct.bpf_shtab_elem, ptr %v, i32 0, i32 2
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk, align 4
  %14 = getelementptr inbounds %struct.bpf_iter__sockmap, ptr %ctx, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %14, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sock_hash_seq_find_next(ptr nocapture noundef %info, ptr noundef %prev_elem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %htab1 = getelementptr inbounds %struct.sock_hash_seq_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %htab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htab1, align 4
  %tobool.not = icmp eq ptr %prev_elem, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then:                                          ; preds = %entry
  %node2 = getelementptr inbounds %struct.bpf_shtab_elem, ptr %prev_elem, i32 0, i32 3
  %2 = ptrtoint ptr %node2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %node2, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.then.do.end11_crit_edge

if.then.do.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

land.lhs.true:                                    ; preds = %if.then
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true7

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b73 = load i1, ptr @sock_hash_seq_find_next.__warned, align 1
  br i1 %.b73, label %land.lhs.true7.do.end11_crit_edge, label %if.then9

land.lhs.true7.do.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_seq_find_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1289, ptr noundef nonnull @.str.8) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then9, %land.lhs.true7.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %if.then.do.end11_crit_edge
  %tobool14.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %tobool16.not75 = icmp eq ptr %add.ptr, null
  %tobool16.not = or i1 %tobool14.not, %tobool16.not75
  br i1 %tobool16.not, label %if.end18, label %do.end11.cleanup_crit_edge

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  %bucket_id = getelementptr inbounds %struct.sock_hash_seq_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %bucket_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bucket_id, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %bucket_id, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %entry.if.end19_crit_edge
  %bucket_id20 = getelementptr inbounds %struct.sock_hash_seq_info, ptr %info, i32 0, i32 2
  %buckets_num = getelementptr inbounds %struct.bpf_shtab, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bucket_id20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bucket_id20, align 4
  %8 = ptrtoint ptr %buckets_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buckets_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp77 = icmp ult i32 %7, %9
  br i1 %cmp77, label %for.body.lr.ph, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end19
  %buckets = getelementptr inbounds %struct.bpf_shtab, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i32 [ %7, %for.body.lr.ph ], [ %inc53, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buckets, align 128
  %arrayidx = getelementptr %struct.bpf_shtab_bucket, ptr %12, i32 %10
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx, align 4
  %call27 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %for.body.do.end37_crit_edge

for.body.do.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

land.lhs.true29:                                  ; preds = %for.body
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b7172 = load i1, ptr @sock_hash_seq_find_next.__warned.10, align 1
  br i1 %.b7172, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_hash_seq_find_next.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1300, ptr noundef nonnull @.str.8) #13
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %for.body.do.end37_crit_edge
  %tobool41.not = icmp eq ptr %14, null
  %add.ptr45 = getelementptr i8, ptr %14, i32 -16
  %tobool49.not76 = icmp eq ptr %add.ptr45, null
  %tobool49.not = or i1 %tobool41.not, %tobool49.not76
  br i1 %tobool49.not, label %for.inc, label %do.end37.cleanup_crit_edge

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %do.end37
  %15 = ptrtoint ptr %bucket_id20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bucket_id20, align 4
  %inc53 = add i32 %16, 1
  store i32 %inc53, ptr %bucket_id20, align 4
  %17 = ptrtoint ptr %buckets_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buckets_num, align 4
  %cmp = icmp ult i32 %inc53, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end37.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end11.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %do.end11.cleanup_crit_edge ], [ null, %if.end19.cleanup_crit_edge ], [ %add.ptr45, %do.end37.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
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
declare dso_local ptr @sk_psock_link_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_psock_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_reg_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sock_map_iter_attach_target(ptr nocapture noundef readonly %prog, ptr nocapture noundef readonly %linfo, ptr nocapture noundef writeonly %aux) #0 align 64 {
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
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %4, label %if.end5.put_map_crit_edge [
    i32 15, label %if.end5.if.end9_crit_edge
    i32 18, label %if.end5.if.end9_crit_edge24
  ]

if.end5.if.end9_crit_edge24:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end5.put_map_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_map

if.end9:                                          ; preds = %if.end5.if.end9_crit_edge, %if.end5.if.end9_crit_edge24
  %aux10 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %6 = ptrtoint ptr %aux10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux10, align 4
  %max_rdonly_access = getelementptr inbounds %struct.bpf_prog_aux, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %max_rdonly_access to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_rdonly_access, align 4
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_size, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp11 = icmp ugt i32 %9, %11
  br i1 %cmp11, label %if.end9.put_map_crit_edge, label %if.end13

if.end9.put_map_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_map

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %aux, align 4
  br label %cleanup

put_map:                                          ; preds = %if.end9.put_map_crit_edge, %if.end5.put_map_crit_edge
  %err.0 = phi i32 [ -22, %if.end5.put_map_crit_edge ], [ -13, %if.end9.put_map_crit_edge ]
  tail call void @bpf_map_put_with_uref(ptr noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %put_map, %if.end13, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %err.0, %put_map ], [ 0, %if.end13 ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sock_map_iter_detach_target(ptr nocapture noundef readonly %aux) #0 align 64 {
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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79, !80, !82, !83, !85, !87}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @bpf_sock_map_update_proto, !1, !"bpf_sock_map_update_proto", i1 false, i1 false}
!1 = !{!"../net/core/sock_map.c", i32 625, i32 29}
!2 = !{ptr @bpf_sk_redirect_map_proto, !3, !"bpf_sk_redirect_map_proto", i1 false, i1 false}
!3 = !{!"../net/core/sock_map.c", i32 652, i32 29}
!4 = !{ptr @bpf_msg_redirect_map_proto, !5, !"bpf_msg_redirect_map_proto", i1 false, i1 false}
!5 = !{!"../net/core/sock_map.c", i32 679, i32 29}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/core/sock_map.c", i32 808, i32 19}
!8 = !{ptr @sock_map_ops, !9, !"sock_map_ops", i1 false, i1 false}
!9 = !{!"../net/core/sock_map.c", i32 797, i32 26}
!10 = !{ptr @bpf_sock_hash_update_proto, !11, !"bpf_sock_hash_update_proto", i1 false, i1 false}
!11 = !{!"../net/core/sock_map.c", i32 1209, i32 29}
!12 = !{ptr @bpf_sk_redirect_hash_proto, !13, !"bpf_sk_redirect_hash_proto", i1 false, i1 false}
!13 = !{!"../net/core/sock_map.c", i32 1236, i32 29}
!14 = !{ptr @bpf_msg_redirect_hash_proto, !15, !"bpf_msg_redirect_hash_proto", i1 false, i1 false}
!15 = !{!"../net/core/sock_map.c", i32 1263, i32 29}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/core/sock_map.c", i32 1400, i32 19}
!18 = !{ptr @sock_hash_ops, !19, !"sock_hash_ops", i1 false, i1 false}
!19 = !{!"../net/core/sock_map.c", i32 1389, i32 26}
!20 = !{ptr @__ksymtab_sock_map_unhash, !21, !"__ksymtab_sock_map_unhash", i1 false, i1 false}
!21 = !{!"../net/core/sock_map.c", i32 1501, i32 1}
!22 = !{ptr @__ksymtab_sock_map_close, !23, !"__ksymtab_sock_map_close", i1 false, i1 false}
!23 = !{!"../net/core/sock_map.c", i32 1525, i32 1}
!24 = !{ptr @__initcall__kmod_sock_map__623_1584_bpf_sockmap_iter_init7, !25, !"__initcall__kmod_sock_map__623_1584_bpf_sockmap_iter_init7", i1 false, i1 false}
!25 = !{!"../net/core/sock_map.c", i32 1584, i32 1}
!26 = !{ptr @sock_map_btf_id, !27, !"sock_map_btf_id", i1 false, i1 false}
!27 = !{!"../net/core/sock_map.c", i32 796, i32 12}
!28 = !{ptr @sock_hash_map_btf_id, !29, !"sock_hash_map_btf_id", i1 false, i1 false}
!29 = !{!"../net/core/sock_map.c", i32 1388, i32 12}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../net/core/sock_map.c", i32 475, i32 2}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../net/core/sock_map.c", i32 490, i32 2}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../net/core/sock_map.c", i32 616, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../net/core/sock_map.c", i32 376, i32 2}
!39 = !{ptr @sock_map_alloc.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../net/core/sock_map.c", i32 49, i32 2}
!41 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sock_map_iter_seq_info, !43, !"sock_map_iter_seq_info", i1 false, i1 false}
!43 = !{!"../net/core/sock_map.c", i32 790, i32 39}
!44 = !{ptr @sock_map_seq_ops, !45, !"sock_map_seq_ops", i1 false, i1 false}
!45 = !{!"../net/core/sock_map.c", i32 774, i32 36}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../net/core/sock_map.c", i32 970, i32 2}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../net/core/sock_map.c", i32 983, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/core/sock_map.c", i32 852, i32 2}
!52 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../net/core/sock_map.c", i32 1201, i32 2}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../net/core/sock_map.c", i32 868, i32 2}
!57 = !{ptr @sock_hash_alloc.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../net/core/sock_map.c", i32 1105, i32 3}
!59 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/core/sock_map.c", i32 1041, i32 14}
!62 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/core/sock_map.c", i32 1053, i32 15}
!65 = !{ptr @sock_hash_iter_seq_info, !66, !"sock_hash_iter_seq_info", i1 false, i1 false}
!66 = !{!"../net/core/sock_map.c", i32 1382, i32 39}
!67 = !{ptr @sock_hash_seq_ops, !68, !"sock_hash_seq_ops", i1 false, i1 false}
!68 = !{!"../net/core/sock_map.c", i32 1365, i32 36}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../net/core/sock_map.c", i32 1289, i32 10}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../net/core/sock_map.c", i32 1300, i32 10}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!75 = !{ptr @.str.11, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/skmsg.h", i32 286, i32 9}
!79 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!82 = !{ptr @.str.14, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../net/core/sock_map.c", i32 891, i32 2}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/core/sock_map.c", i32 1564, i32 14}
!87 = !{ptr @sock_map_iter_reg, !88, !"sock_map_iter_reg", i1 false, i1 false}
!88 = !{!"../net/core/sock_map.c", i32 1563, i32 28}
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
!99 = !{!100}
!100 = distinct !{!100, !101, !"fdget: %agg.result"}
!101 = distinct !{!101, !"fdget"}
!102 = !{i64 1230167, i64 1230188, i64 1230211, i64 1230230, i64 1230249}
!103 = !{i64 2158670801}
!104 = !{i64 1227443, i64 1227460, i64 1227484, i64 1227510, i64 1227528}
!105 = !{i64 2158669314}
!106 = !{!107}
!107 = distinct !{!107, !108, !"fdget: %agg.result"}
!108 = distinct !{!108, !"fdget"}
!109 = !{!"auto-init"}
!110 = !{i64 2158733873}
!111 = !{i64 2149711996}
!112 = !{i64 2149712262}
!113 = !{i64 2158733970}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 2148810230}
!117 = !{i64 2148724670, i64 2148724702, i64 2148724731, i64 2148724765, i64 2148724796, i64 2148724819}
!118 = !{i64 2150273546}
!119 = !{i64 2148806110}
!120 = !{i64 2148721395, i64 2148721427, i64 2148721456, i64 2148721490, i64 2148721521, i64 2148721544}
!121 = !{i64 2148806339}
!122 = !{i64 2148723140, i64 2148723166, i64 2148723195, i64 2148723229, i64 2148723260, i64 2148723283}
!123 = !{i64 2152354068}
!124 = !{i64 2158773361}
!125 = !{i64 2158773714}
!126 = !{i64 1205208, i64 1205232, i64 1205253, i64 1205270, i64 1205287}
!127 = !{i64 2158780877}
!128 = !{i64 2158781230}
!129 = !{i32 0, i32 33}
!130 = !{i64 2148722205, i64 2148722237, i64 2148722266, i64 2148722300, i64 2148722331, i64 2148722354}
!131 = !{i64 2158668968}
