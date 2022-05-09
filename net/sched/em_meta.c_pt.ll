; ModuleID = '/llk/IR_all_yes/net/sched/em_meta.c_pt.bc'
source_filename = "../net/sched/em_meta.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_ematch_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.meta_ops = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.meta_type_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.meta_match = type { %struct.meta_value, %struct.meta_value }
%struct.meta_value = type { %struct.tcf_meta_val, i32, i32 }
%struct.tcf_meta_val = type { i16, i8, i8 }
%struct.tcf_ematch = type { ptr, i32, i32, i16, i16, ptr }
%struct.meta_obj = type { i32, i32 }
%struct.tcf_meta_hdr = type { %struct.tcf_meta_val, %struct.tcf_meta_val }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.113, %union.anon.114, [48 x i8], %union.anon.115, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.117, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.113 = type { ptr }
%union.anon.114 = type { i64 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { i32, ptr }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.119, i32, i32, i32, i16, i16, %union.anon.121, i32, %union.anon.122, %union.anon.123, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.119 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.131, [0 x i32], %union.anon.132, i16, i16, %union.anon.133, %struct.refcount_struct, [0 x i32], %union.anon.134 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { %struct.hlist_node }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.112 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.151, i32, %struct.list_head, ptr }
%union.anon.151 = type { %struct.in6_addr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.135, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.136, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.137, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.135 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.130, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.130 = type { ptr }
%struct.vlan_ethhdr = type { %union.anon.152, i16, i16, i16 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { [6 x i8], [6 x i8] }

@em_meta_ops = internal global { %struct.tcf_ematch_ops, [60 x i8] } { %struct.tcf_ematch_ops { i32 4, i32 0, ptr @em_meta_change, ptr @em_meta_match, ptr @em_meta_destroy, ptr @em_meta_dump, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @em_meta_ops, i64 28), ptr getelementptr (i8, ptr @em_meta_ops, i64 28) } }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file515 = internal constant [31 x i8] c"em_meta.file=net/sched/em_meta\00", section ".modinfo", align 1
@__UNIQUE_ID_license516 = internal constant [20 x i8] c"em_meta.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_em_meta__517_1008_init_em_meta6 = internal global ptr @init_em_meta, section ".initcall6.init", align 4
@__exitcall_exit_em_meta = internal global ptr @exit_em_meta, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias518 = internal constant [28 x i8] c"em_meta.alias=ematch-kind-4\00", section ".modinfo", align 1
@meta_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__meta_ops = internal unnamed_addr constant <{ <{ [20 x %struct.meta_ops], [28 x %struct.meta_ops] }>, [48 x %struct.meta_ops] }> <{ <{ [20 x %struct.meta_ops], [28 x %struct.meta_ops] }> <{ [20 x %struct.meta_ops] [%struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops { ptr @meta_var_dev }, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops zeroinitializer, %struct.meta_ops { ptr @meta_var_sk_bound_if }], [28 x %struct.meta_ops] zeroinitializer }>, [48 x %struct.meta_ops] [%struct.meta_ops zeroinitializer, %struct.meta_ops { ptr @meta_int_random }, %struct.meta_ops { ptr @meta_int_loadavg_0 }, %struct.meta_ops { ptr @meta_int_loadavg_1 }, %struct.meta_ops { ptr @meta_int_loadavg_2 }, %struct.meta_ops { ptr @meta_int_dev }, %struct.meta_ops { ptr @meta_int_priority }, %struct.meta_ops { ptr @meta_int_protocol }, %struct.meta_ops { ptr @meta_int_pkttype }, %struct.meta_ops { ptr @meta_int_pktlen }, %struct.meta_ops { ptr @meta_int_datalen }, %struct.meta_ops { ptr @meta_int_maclen }, %struct.meta_ops { ptr @meta_int_mark }, %struct.meta_ops { ptr @meta_int_tcindex }, %struct.meta_ops { ptr @meta_int_rtclassid }, %struct.meta_ops { ptr @meta_int_rtiif }, %struct.meta_ops { ptr @meta_int_sk_family }, %struct.meta_ops { ptr @meta_int_sk_state }, %struct.meta_ops { ptr @meta_int_sk_reuse }, %struct.meta_ops { ptr @meta_int_sk_bound_if }, %struct.meta_ops { ptr @meta_int_sk_refcnt }, %struct.meta_ops { ptr @meta_int_sk_shutdown }, %struct.meta_ops { ptr @meta_int_sk_proto }, %struct.meta_ops { ptr @meta_int_sk_type }, %struct.meta_ops { ptr @meta_int_sk_rcvbuf }, %struct.meta_ops { ptr @meta_int_sk_rmem_alloc }, %struct.meta_ops { ptr @meta_int_sk_wmem_alloc }, %struct.meta_ops { ptr @meta_int_sk_omem_alloc }, %struct.meta_ops { ptr @meta_int_sk_wmem_queued }, %struct.meta_ops { ptr @meta_int_sk_rcv_qlen }, %struct.meta_ops { ptr @meta_int_sk_snd_qlen }, %struct.meta_ops { ptr @meta_int_sk_err_qlen }, %struct.meta_ops { ptr @meta_int_sk_fwd_alloc }, %struct.meta_ops { ptr @meta_int_sk_sndbuf }, %struct.meta_ops { ptr @meta_int_sk_alloc }, %struct.meta_ops zeroinitializer, %struct.meta_ops { ptr @meta_int_sk_hash }, %struct.meta_ops { ptr @meta_int_sk_lingertime }, %struct.meta_ops { ptr @meta_int_sk_ack_bl }, %struct.meta_ops { ptr @meta_int_sk_max_ack_bl }, %struct.meta_ops { ptr @meta_int_sk_prio }, %struct.meta_ops { ptr @meta_int_sk_rcvlowat }, %struct.meta_ops { ptr @meta_int_sk_rcvtimeo }, %struct.meta_ops { ptr @meta_int_sk_sndtimeo }, %struct.meta_ops { ptr @meta_int_sk_sendmsg_off }, %struct.meta_ops { ptr @meta_int_sk_write_pend }, %struct.meta_ops { ptr @meta_int_vlan_tag }, %struct.meta_ops { ptr @meta_int_rxhash }] }>, align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@avenrun = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__meta_type_ops = internal constant [2 x %struct.meta_type_ops] [%struct.meta_type_ops { ptr @meta_var_destroy, ptr @meta_var_compare, ptr @meta_var_change, ptr @meta_var_apply_extras, ptr @meta_var_dump }, %struct.meta_type_ops { ptr null, ptr @meta_int_compare, ptr @meta_int_change, ptr @meta_int_apply_extras, ptr @meta_int_dump }], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"em_meta_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 986, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"meta_policy\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 899, i32 32 }
@___asan_gen_.15 = private constant [23 x i8] c"../net/sched/em_meta.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 320, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 695, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 723, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 1011, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias518, ptr @__UNIQUE_ID_file515, ptr @__UNIQUE_ID_license516, ptr @__exitcall_exit_em_meta, ptr @__initcall__kmod_em_meta__517_1008_init_em_meta6, ptr @exit_em_meta, ptr @em_meta_ops, ptr @meta_policy, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_meta_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_em_meta() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @tcf_em_unregister(ptr noundef nonnull @em_meta_ops) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_em_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_em_meta() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_em_register(ptr noundef nonnull @em_meta_ops) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_meta_change(ptr nocapture noundef readnone %net, ptr noundef %data, i32 noundef %len, ptr nocapture noundef writeonly %m) #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #15
  %0 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %2 = call ptr @memset(ptr %tb, i32 255, i32 16)
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %data, i32 noundef %len, ptr noundef nonnull @meta_policy, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.if.end69_crit_edge, label %if.end

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.end.if.end69_crit_edge, label %if.end3

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end3:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %right = getelementptr i8, ptr %5, i32 8
  %8 = ptrtoint ptr %right to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %right, align 2
  %cmp10.not.unshifted88 = xor i16 %9, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %cmp10.not.unshifted88)
  %cmp10.not = icmp ugt i16 %cmp10.not.unshifted88, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %7)
  %cmp17 = icmp ugt i16 %7, 8191
  %or.cond = or i1 %cmp17, %cmp10.not
  %10 = and i16 %7, 2032
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %10)
  %cmp24 = icmp ugt i16 %10, 47
  %or.cond89 = or i1 %cmp24, %or.cond
  %11 = and i16 %9, 2032
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %11)
  %cmp31 = icmp ugt i16 %11, 47
  %or.cond90 = select i1 %or.cond89, i1 true, i1 %cmp31
  br i1 %or.cond90, label %if.end3.if.end69_crit_edge, label %if.end34

if.end3.if.end69_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end34:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #18
  %cmp36 = icmp eq ptr %call7.i.i, null
  br i1 %cmp36, label %if.end34.if.end69_crit_edge, label %if.end39

if.end34.if.end69_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end39:                                         ; preds = %if.end34
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr.i, align 2
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call7.i.i, align 8
  %rvalue = getelementptr inbounds %struct.meta_match, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %right to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %right, align 2
  %18 = ptrtoint ptr %rvalue to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rvalue, align 4
  %19 = lshr i32 %14, 16
  %20 = trunc i32 %19 to i16
  %21 = and i16 %20, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %if.end39.lor.lhs.false46_crit_edge, label %meta_is_supported.exit

if.end39.lor.lhs.false46_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false46

meta_is_supported.exit:                           ; preds = %if.end39
  %and.i.i = zext i16 %21 to i32
  %22 = lshr i32 %14, 28
  %arrayidx2.i.i = getelementptr [2 x [48 x %struct.meta_ops]], ptr @__meta_ops, i32 0, i32 %22, i32 %and.i.i
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool2.i.not = icmp eq ptr %24, null
  br i1 %tobool2.i.not, label %meta_is_supported.exit.if.then.i109_crit_edge, label %meta_is_supported.exit.lor.lhs.false46_crit_edge

meta_is_supported.exit.lor.lhs.false46_crit_edge: ; preds = %meta_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false46

meta_is_supported.exit.if.then.i109_crit_edge:    ; preds = %meta_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i109

lor.lhs.false46:                                  ; preds = %meta_is_supported.exit.lor.lhs.false46_crit_edge, %if.end39.lor.lhs.false46_crit_edge
  %25 = ptrtoint ptr %rvalue to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rvalue, align 4
  %27 = and i16 %26, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i92 = icmp eq i16 %27, 0
  br i1 %tobool.not.i92, label %lor.lhs.false46.if.end51_crit_edge, label %meta_is_supported.exit98

lor.lhs.false46.if.end51_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

meta_is_supported.exit98:                         ; preds = %lor.lhs.false46
  %and.i.i93 = zext i16 %27 to i32
  %28 = lshr i16 %26, 12
  %29 = zext i16 %28 to i32
  %arrayidx2.i.i94 = getelementptr [2 x [48 x %struct.meta_ops]], ptr @__meta_ops, i32 0, i32 %29, i32 %and.i.i93
  %30 = ptrtoint ptr %arrayidx2.i.i94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2.i.i94, align 4
  %tobool2.i95.not = icmp eq ptr %31, null
  br i1 %tobool2.i95.not, label %meta_is_supported.exit98.if.then.i109_crit_edge, label %meta_is_supported.exit98.if.end51_crit_edge

meta_is_supported.exit98.if.end51_crit_edge:      ; preds = %meta_is_supported.exit98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

meta_is_supported.exit98.if.then.i109_crit_edge:  ; preds = %meta_is_supported.exit98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i109

if.end51:                                         ; preds = %meta_is_supported.exit98.if.end51_crit_edge, %lor.lhs.false46.if.end51_crit_edge
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %tobool.not.i99 = icmp eq ptr %33, null
  br i1 %tobool.not.i99, label %if.end51.lor.lhs.false57_crit_edge, label %if.then.i

if.end51.lor.lhs.false57_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false57

if.then.i:                                        ; preds = %if.end51
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %35)
  %cmp.i = icmp eq i16 %35, 4
  br i1 %cmp.i, label %if.then.i.if.then.i109_crit_edge, label %meta_change_data.exit

if.then.i.if.then.i109_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i109

meta_change_data.exit:                            ; preds = %if.then.i
  %36 = lshr i32 %14, 28
  %change.i = getelementptr [2 x %struct.meta_type_ops], ptr @__meta_type_ops, i32 0, i32 %36, i32 2
  %37 = ptrtoint ptr %change.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %change.i, align 4
  %call3.i = call i32 %38(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp55 = icmp slt i32 %call3.i, 0
  br i1 %cmp55, label %meta_change_data.exit.if.then.i109_crit_edge, label %meta_change_data.exit.lor.lhs.false57_crit_edge

meta_change_data.exit.lor.lhs.false57_crit_edge:  ; preds = %meta_change_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false57

meta_change_data.exit.if.then.i109_crit_edge:     ; preds = %meta_change_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i109

lor.lhs.false57:                                  ; preds = %meta_change_data.exit.lor.lhs.false57_crit_edge, %if.end51.lor.lhs.false57_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %tobool.not.i100 = icmp eq ptr %40, null
  br i1 %tobool.not.i100, label %lor.lhs.false57.if.end64_crit_edge, label %if.then.i102

lor.lhs.false57.if.end64_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then.i102:                                     ; preds = %lor.lhs.false57
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %42)
  %cmp.i101 = icmp eq i16 %42, 4
  br i1 %cmp.i101, label %if.then.i102.if.then.i109_crit_edge, label %meta_change_data.exit107

if.then.i102.if.then.i109_crit_edge:              ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i109

meta_change_data.exit107:                         ; preds = %if.then.i102
  %43 = ptrtoint ptr %rvalue to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rvalue, align 4
  %45 = lshr i16 %44, 12
  %46 = zext i16 %45 to i32
  %change.i103 = getelementptr [2 x %struct.meta_type_ops], ptr @__meta_type_ops, i32 0, i32 %46, i32 2
  %47 = ptrtoint ptr %change.i103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %change.i103, align 4
  %call3.i104 = call i32 %48(ptr noundef %rvalue, ptr noundef nonnull %40) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i104)
  %cmp61 = icmp slt i32 %call3.i104, 0
  br i1 %cmp61, label %meta_change_data.exit107.if.then.i109_crit_edge, label %meta_change_data.exit107.if.end64_crit_edge

meta_change_data.exit107.if.end64_crit_edge:      ; preds = %meta_change_data.exit107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

meta_change_data.exit107.if.then.i109_crit_edge:  ; preds = %meta_change_data.exit107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i109

if.end64:                                         ; preds = %meta_change_data.exit107.if.end64_crit_edge, %lor.lhs.false57.if.end64_crit_edge
  %datalen = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 2
  %49 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 24, ptr %datalen, align 4
  %50 = ptrtoint ptr %call7.i.i to i32
  %data65 = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %51 = ptrtoint ptr %data65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %data65, align 4
  br label %if.end69

if.then.i109:                                     ; preds = %meta_change_data.exit107.if.then.i109_crit_edge, %if.then.i102.if.then.i109_crit_edge, %meta_change_data.exit.if.then.i109_crit_edge, %if.then.i.if.then.i109_crit_edge, %meta_is_supported.exit98.if.then.i109_crit_edge, %meta_is_supported.exit.if.then.i109_crit_edge
  %err.0 = phi i32 [ -22, %meta_change_data.exit.if.then.i109_crit_edge ], [ -22, %meta_change_data.exit107.if.then.i109_crit_edge ], [ -95, %meta_is_supported.exit98.if.then.i109_crit_edge ], [ -95, %meta_is_supported.exit.if.then.i109_crit_edge ], [ -22, %if.then.i.if.then.i109_crit_edge ], [ -22, %if.then.i102.if.then.i109_crit_edge ]
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %call7.i.i, align 8
  %54 = lshr i16 %53, 12
  %55 = zext i16 %54 to i32
  %arrayidx.i.i = getelementptr [2 x %struct.meta_type_ops], ptr @__meta_type_ops, i32 0, i32 %55
  %tobool1.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool1.not.i, label %if.then.i109.meta_delete.exit_crit_edge, label %land.lhs.true.i

if.then.i109.meta_delete.exit_crit_edge:          ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #17
  br label %meta_delete.exit

land.lhs.true.i:                                  ; preds = %if.then.i109
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i = icmp eq ptr %57, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.meta_delete.exit_crit_edge, label %if.then3.i

land.lhs.true.i.meta_delete.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %meta_delete.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %57(ptr noundef nonnull %call7.i.i) #15
  call void %57(ptr noundef %rvalue) #15
  br label %meta_delete.exit

meta_delete.exit:                                 ; preds = %if.then3.i, %land.lhs.true.i.meta_delete.exit_crit_edge, %if.then.i109.meta_delete.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %if.end69

if.end69:                                         ; preds = %meta_delete.exit, %if.end64, %if.end34.if.end69_crit_edge, %if.end3.if.end69_crit_edge, %if.end.if.end69_crit_edge, %entry.if.end69_crit_edge
  %err.0127 = phi i32 [ %err.0, %meta_delete.exit ], [ -12, %if.end34.if.end69_crit_edge ], [ 0, %if.end64 ], [ -22, %if.end3.if.end69_crit_edge ], [ -22, %if.end.if.end69_crit_edge ], [ %call.i, %entry.if.end69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #15
  ret i32 %err.0127
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_meta_match(ptr noundef %skb, ptr nocapture noundef readonly %m, ptr noundef %info) #2 align 64 {
entry:
  %err.i23 = alloca i32, align 4
  %err.i = alloca i32, align 4
  %l_value = alloca %struct.meta_obj, align 4
  %r_value = alloca %struct.meta_obj, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %l_value) #15
  %3 = ptrtoint ptr %l_value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %l_value, align 4, !annotation !40
  %4 = getelementptr inbounds %struct.meta_obj, ptr %l_value, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r_value) #15
  %6 = ptrtoint ptr %r_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %r_value, align 4, !annotation !40
  %7 = getelementptr inbounds %struct.meta_obj, ptr %r_value, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #15
  %9 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %err.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %2, align 4
  %12 = and i16 %11, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i = icmp eq i16 %12, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val.i = getelementptr inbounds %struct.meta_value, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %15 = ptrtoint ptr %l_value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %l_value, align 4
  %len.i = getelementptr inbounds %struct.meta_value, ptr %2, i32 0, i32 2
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %4, align 4
  br label %lor.lhs.false

if.end.i:                                         ; preds = %entry
  %and.i.i = zext i16 %12 to i32
  %19 = lshr i16 %11, 12
  %20 = zext i16 %19 to i32
  %arrayidx2.i.i = getelementptr [2 x [48 x %struct.meta_ops]], ptr @__meta_ops, i32 0, i32 %20, i32 %and.i.i
  %21 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx2.i.i, align 4
  call void %22(ptr noundef %skb, ptr noundef %info, ptr noundef %2, ptr noundef nonnull %l_value, ptr noundef nonnull %err.i) #15
  %23 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp3.i = icmp slt i32 %24, 0
  br i1 %cmp3.i, label %meta_get.exit, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %2, align 4
  %27 = lshr i16 %26, 12
  %28 = zext i16 %27 to i32
  %apply_extras.i = getelementptr [2 x %struct.meta_type_ops], ptr @__meta_type_ops, i32 0, i32 %28, i32 3
  %29 = ptrtoint ptr %apply_extras.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %apply_extras.i, align 4
  call void %30(ptr noundef %2, ptr noundef nonnull %l_value) #15
  br label %lor.lhs.false

meta_get.exit:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then7.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #15
  %rvalue = getelementptr inbounds %struct.meta_match, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i23) #15
  %31 = ptrtoint ptr %err.i23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %err.i23, align 4
  %32 = ptrtoint ptr %rvalue to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rvalue, align 4
  %34 = and i16 %33, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.i24 = icmp eq i16 %34, 0
  br i1 %cmp.i24, label %if.then.i28, label %if.end.i32

if.then.i28:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %val.i25 = getelementptr inbounds %struct.meta_match, ptr %2, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %val.i25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i25, align 4
  %37 = ptrtoint ptr %r_value to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %r_value, align 4
  %len.i26 = getelementptr inbounds %struct.meta_match, ptr %2, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %len.i26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i26, align 4
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %7, align 4
  br label %if.end

if.end.i32:                                       ; preds = %lor.lhs.false
  %and.i.i29 = zext i16 %34 to i32
  %41 = lshr i16 %33, 12
  %42 = zext i16 %41 to i32
  %arrayidx2.i.i30 = getelementptr [2 x [48 x %struct.meta_ops]], ptr @__meta_ops, i32 0, i32 %42, i32 %and.i.i29
  %43 = ptrtoint ptr %arrayidx2.i.i30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx2.i.i30, align 4
  call void %44(ptr noundef %skb, ptr noundef %info, ptr noundef %rvalue, ptr noundef nonnull %r_value, ptr noundef nonnull %err.i23) #15
  %45 = ptrtoint ptr %err.i23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %err.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp3.i31 = icmp slt i32 %46, 0
  br i1 %cmp3.i31, label %meta_get.exit36, label %if.then7.i34

if.then7.i34:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %rvalue to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rvalue, align 4
  %49 = lshr i16 %48, 12
  %50 = zext i16 %49 to i32
  %apply_extras.i33 = getelementptr [2 x %struct.meta_type_ops], ptr @__meta_type_ops, i32 0, i32 %50, i32 3
  %51 = ptrtoint ptr %apply_extras.i33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %apply_extras.i33, align 4
  call void %52(ptr noundef %rvalue, ptr noundef nonnull %r_value) #15
  br label %if.end

meta_get.exit36:                                  ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i23) #15
  br label %cleanup

if.end:                                           ; preds = %if.then7.i34, %if.then.i28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i23) #15
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %2, align 4
  %55 = lshr i16 %54, 12
  %56 = zext i16 %55 to i32
  %compare = getelementptr [2 x %struct.meta_type_ops], ptr @__meta_type_ops, i32 0, i32 %56, i32 1
  %57 = ptrtoint ptr %compare to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %compare, align 4
  %call5 = call i32 %58(ptr noundef nonnull %l_value, ptr noundef nonnull %r_value) #15
  %op = getelementptr inbounds %struct.tcf_meta_val, ptr %2, i32 0, i32 2
  %59 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %op, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i8 %60, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %sw.bb7
    i8 1, label %sw.bb10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp8 = icmp slt i32 %call5, 0
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp11 = icmp sgt i32 %call5, 0
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb7, %sw.bb, %if.end.cleanup_crit_edge, %meta_get.exit36, %meta_get.exit
  %retval.0.shrunk = phi i1 [ %cmp11, %sw.bb10 ], [ %cmp8, %sw.bb7 ], [ %tobool.not, %sw.bb ], [ false, %meta_get.exit36 ], [ false, %meta_get.exit ], [ false, %if.end.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r_value) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %l_value) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em_meta_destroy(ptr noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.meta_delete.exit_crit_edge, label %if.then.i

if.then.meta_delete.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %meta_delete.exit

if.then.i:                                        ; preds = %if.then
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 4
  %5 = lshr i16 %4, 12
  %6 = zext i16 %5 to i32
  %arrayidx.i.i = getelementptr [2 x %struct.meta_type_ops], ptr @__meta_type_ops, i32 0, i32 %6
  %tobool1.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool1.not.i, label %if.then.i.meta_delete.exit_crit_edge, label %land.lhs.true.i

if.then.i.meta_delete.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %meta_delete.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.meta_delete.exit_crit_edge, label %if.then3.i

land.lhs.true.i.meta_delete.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %meta_delete.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %8(ptr noundef nonnull %2) #15
  %rvalue.i = getelementptr inbounds %struct.meta_match, ptr %2, i32 0, i32 1
  tail call void %8(ptr noundef %rvalue.i) #15
  br label %meta_delete.exit

meta_delete.exit:                                 ; preds = %if.then3.i, %land.lhs.true.i.meta_delete.exit_crit_edge, %if.then.i.meta_delete.exit_crit_edge, %if.then.meta_delete.exit_crit_edge
  tail call void @kfree(ptr noundef %2) #15
  br label %if.end

if.end:                                           ; preds = %meta_delete.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_meta_dump(ptr noundef %skb, ptr nocapture noundef readonly %em) #2 align 64 {
entry:
  %hdr = alloca %struct.tcf_meta_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hdr) #15
  %3 = getelementptr inbounds %struct.tcf_meta_hdr, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %hdr, align 8
  %rvalue = getelementptr inbounds %struct.meta_match, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %rvalue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rvalue, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %3, align 4
  %call = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %hdr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %2, align 4
  %12 = lshr i16 %11, 12
  %13 = zext i16 %12 to i32
  %dump = getelementptr [2 x %struct.meta_type_ops], ptr @__meta_type_ops, i32 0, i32 %13, i32 4
  %14 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dump, align 4
  %call6 = call i32 %15(ptr noundef %skb, ptr noundef %2, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.nla_put_failure_crit_edge, label %lor.lhs.false

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end
  %call9 = call i32 %15(ptr noundef %skb, ptr noundef %rvalue, i32 noundef 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %lor.lhs.false.nla_put_failure_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %lor.lhs.false.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hdr) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_var_dev(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %entry.var_dev.exit_crit_edge, label %if.end.i, !prof !41

entry.var_dev.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %var_dev.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %2 to i32
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dst, align 4
  %call.i = tail call i32 @strlen(ptr noundef nonnull %2) #19
  %len.i = getelementptr inbounds %struct.meta_obj, ptr %dst, i32 0, i32 1
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %len.i, align 4
  br label %var_dev.exit

var_dev.exit:                                     ; preds = %if.end.i, %entry.var_dev.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -1, %entry.var_dev.exit_crit_edge ]
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %err, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_var_sk_bound_if(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4
  br label %if.end8

if.end:                                           ; preds = %entry
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %4 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr @.str to i32), ptr %dst, align 4
  %len = getelementptr inbounds %struct.meta_obj, ptr %dst, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %len, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !30) #15
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.else.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_lock.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else.rcu_read_lock.exit_crit_edge
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i, align 4
  %skc_bound_dev_if5 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %skc_bound_dev_if5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %skc_bound_dev_if5, align 4
  %call6 = tail call ptr @dev_get_by_index_rcu(ptr noundef %15, i32 noundef %17) #15
  %cmp.i = icmp eq ptr %call6, null
  br i1 %cmp.i, label %rcu_read_lock.exit.var_dev.exit_crit_edge, label %if.end.i, !prof !41

rcu_read_lock.exit.var_dev.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %var_dev.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %call6 to i32
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dst, align 4
  %call.i15 = tail call i32 @strlen(ptr noundef nonnull %call6) #19
  %len.i = getelementptr inbounds %struct.meta_obj, ptr %dst, i32 0, i32 1
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i15, ptr %len.i, align 4
  br label %var_dev.exit

var_dev.exit:                                     ; preds = %if.end.i, %rcu_read_lock.exit.var_dev.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -1, %rcu_read_lock.exit.var_dev.exit_crit_edge ]
  %21 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %err, align 4
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i16, label %var_dev.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

var_dev.exit.rcu_read_unlock.exit_crit_edge:      ; preds = %var_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %var_dev.exit
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %var_dev.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !43
  %22 = tail call i32 @llvm.read_register.i32(metadata !30) #15
  %and.i.i.i.i.i23 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %if.end8

if.end8:                                          ; preds = %rcu_read_unlock.exit, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_int_random(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr noundef %dst, ptr nocapture noundef readnone %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @get_random_bytes(ptr noundef %dst, i32 noundef 4) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_loadavg_0(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @avenrun to i32))
  %0 = load i32, ptr @avenrun, align 4
  %add.i = add i32 %0, 10
  %and.i = and i32 %add.i, 2047
  %mul.i = mul nuw nsw i32 %and.i, 100
  %1 = lshr i32 %mul.i, 11
  %shr1.i = ashr i32 %add.i, 11
  %mul2.i = mul nsw i32 %shr1.i, 100
  %add3.i = add nsw i32 %1, %mul2.i
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add3.i, ptr %dst, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_loadavg_1(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @avenrun, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %add.i = add i32 %0, 10
  %and.i = and i32 %add.i, 2047
  %mul.i = mul nuw nsw i32 %and.i, 100
  %1 = lshr i32 %mul.i, 11
  %shr1.i = ashr i32 %add.i, 11
  %mul2.i = mul nsw i32 %shr1.i, 100
  %add3.i = add nsw i32 %1, %mul2.i
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add3.i, ptr %dst, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_loadavg_2(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @avenrun, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %add.i = add i32 %0, 10
  %and.i = and i32 %add.i, 2047
  %mul.i = mul nuw nsw i32 %and.i, 100
  %1 = lshr i32 %mul.i, 11
  %shr1.i = ashr i32 %add.i, 11
  %mul2.i = mul nsw i32 %shr1.i, 100
  %add3.i = add nsw i32 %1, %mul2.i
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add3.i, ptr %dst, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_dev(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %entry.int_dev.exit_crit_edge, label %if.end.i, !prof !41

entry.int_dev.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %int_dev.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex.i, align 4
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dst, align 4
  br label %int_dev.exit

int_dev.exit:                                     ; preds = %if.end.i, %entry.int_dev.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -1, %entry.int_dev.exit_crit_edge ]
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %err, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_priority(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority, align 4
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dst, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_protocol(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %tobool1.not2.i = icmp slt i32 %bf.load.i, 0
  %cond.in.in.i = select i1 %tobool1.not2.i, ptr %vlan_proto.i, ptr %protocol.i
  %1 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %cond.in1.i = load i16, ptr %cond.in.in.i, align 8
  %conv = zext i16 %cond.in1.i to i32
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %dst, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_pkttype(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr = lshr i16 %bf.load, 13
  %bf.cast = zext i16 %bf.lshr to i32
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bf.cast, ptr %dst, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_pktlen(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dst, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_datalen(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len, align 8
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dst, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_maclen(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %0 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_len, align 4
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %dst, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_mark(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %dst, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_tcindex(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_index = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 4
  %0 = ptrtoint ptr %tc_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tc_index, align 2
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %dst, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_int_rtclassid(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !41

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %0, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %entry.skb_dst.exit_crit_edge
  %4 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %2, %entry.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ult i32 %4, 2
  br i1 %cmp, label %if.then, label %if.else, !prof !41

if.then:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %err, align 4
  br label %if.end

if.else:                                          ; preds = %skb_dst.exit
  %and.i4 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %if.else.skb_dst.exit14_crit_edge, label %land.lhs.true.i8

if.else.skb_dst.exit14_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit14

land.lhs.true.i8:                                 ; preds = %if.else
  %call.i6 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool1.not.i7 = icmp eq i32 %call.i6, 0
  br i1 %tobool1.not.i7, label %land.rhs.i11, label %land.lhs.true.i8.skb_dst.exit14_crit_edge

land.lhs.true.i8.skb_dst.exit14_crit_edge:        ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit14

land.rhs.i11:                                     ; preds = %land.lhs.true.i8
  %call2.i9 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i9)
  %tobool3.not.i10 = icmp eq i32 %call2.i9, 0
  br i1 %tobool3.not.i10, label %do.end.i12, label %land.rhs.i11.skb_dst.exit14_crit_edge, !prof !41

land.rhs.i11.skb_dst.exit14_crit_edge:            ; preds = %land.rhs.i11
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit14

do.end.i12:                                       ; preds = %land.rhs.i11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit14

skb_dst.exit14:                                   ; preds = %do.end.i12, %land.rhs.i11.skb_dst.exit14_crit_edge, %land.lhs.true.i8.skb_dst.exit14_crit_edge, %if.else.skb_dst.exit14_crit_edge
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 8
  %and25.i13 = and i32 %7, -2
  %8 = inttoptr i32 %and25.i13 to ptr
  %tclassid = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %tclassid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tclassid, align 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %if.end

if.end:                                           ; preds = %skb_dst.exit14, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_int_rtiif(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exitthread-pre-split_crit_edge

land.lhs.true.i.i.skb_rtable.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_rtable.exitthread-pre-split

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exitthread-pre-split_crit_edge, !prof !41

land.rhs.i.i.skb_rtable.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_rtable.exitthread-pre-split

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_rtable.exitthread-pre-split

skb_rtable.exitthread-pre-split:                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exitthread-pre-split_crit_edge, %land.lhs.true.i.i.skb_rtable.exitthread-pre-split_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %0, align 8
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %skb_rtable.exitthread-pre-split, %entry.skb_rtable.exit_crit_edge
  %4 = phi i32 [ %.pr, %skb_rtable.exitthread-pre-split ], [ %2, %entry.skb_rtable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ult i32 %4, 2
  br i1 %cmp, label %if.then, label %if.else, !prof !41

if.then:                                          ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %err, align 4
  br label %if.end

if.else:                                          ; preds = %skb_rtable.exit
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.skb_rtable.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.else.skb_rtable.exit.i_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_rtable.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.else
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge

land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_rtable.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, !prof !41

land.rhs.i.i.i.skb_rtable.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_rtable.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_rtable.exit.i

skb_rtable.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge, %if.else.skb_rtable.exit.i_crit_edge
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i, label %skb_rtable.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

skb_rtable.exit.i.if.end.i_crit_edge:             ; preds = %skb_rtable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %skb_rtable.exit.i
  %8 = inttoptr i32 %and25.i.i.i to ptr
  %rt_iif.i = getelementptr inbounds %struct.rtable, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %rt_iif.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rt_iif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.inet_iif.exit_crit_edge

land.lhs.true.i.inet_iif.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %inet_iif.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %skb_rtable.exit.i.if.end.i_crit_edge
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %11 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %skb_iif.i, align 8
  br label %inet_iif.exit

inet_iif.exit:                                    ; preds = %if.end.i, %land.lhs.true.i.inet_iif.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.end.i ], [ %10, %land.lhs.true.i.inet_iif.exit_crit_edge ]
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %dst, align 4
  br label %if.end

if.end:                                           ; preds = %inet_iif.exit, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_family(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %skc_family, align 8
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %dst, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_state(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %dst, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_reuse(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %skc_reuse = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %skc_reuse to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %skc_reuse, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %conv = zext i8 %bf.lshr to i32
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %dst, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_bound_if(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %4 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skc_bound_dev_if, align 4
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dst, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_int_sk_refcnt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #15
  %4 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %skc_refcnt, align 4
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dst, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_shutdown(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 66
  %9 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sk_shutdown, align 2
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_proto(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 46
  %9 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sk_protocol, align 4
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_type(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 45
  %9 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sk_type, align 2
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_rcvbuf(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 15
  %9 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_rcvbuf, align 8
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_int_sk_rmem_alloc(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i8 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i8, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #15
  %9 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_backlog.i, align 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_int_sk_wmem_alloc(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i8 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i8, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #15
  %9 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %10, -1
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_int_sk_omem_alloc(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i8 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i8, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_omem_alloc, i32 noundef 4) #15
  %9 = ptrtoint ptr %sk_omem_alloc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_omem_alloc, align 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_wmem_queued(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.do.end_crit_edge

land.lhs.true.i.i.do.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.do.end_crit_edge

skb_to_full_sk.exit.do.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

do.end:                                           ; preds = %skb_to_full_sk.exit.do.end_crit_edge, %land.lhs.true.i.i.do.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.do.end_crit_edge ], [ %2, %land.lhs.true.i.i.do.end_crit_edge ]
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 22
  %9 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_wmem_queued, align 8
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_rcv_qlen(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %qlen = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen, align 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_snd_qlen(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %qlen = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 26, i32 1
  %9 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen, align 8
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_err_qlen(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %qlen = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen, align 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_int_sk_fwd_alloc(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i8 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i.i8, i32 0, i32 8
  %9 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_prot.i, align 8
  %forward_alloc_get.i = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %forward_alloc_get.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %forward_alloc_get.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 %12(ptr noundef nonnull %sk.addr.0.i.i8) #15
  br label %sk_forward_alloc_get.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i8, i32 0, i32 11
  %13 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_forward_alloc.i, align 8
  br label %sk_forward_alloc_get.exit

sk_forward_alloc_get.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %14, %if.end.i ]
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %sk_forward_alloc_get.exit, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_sndbuf(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 21
  %9 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_sndbuf, align 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_alloc(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 41
  %9 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_allocation, align 8
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_hash(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dst, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_lingertime(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 48
  %9 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_lingertime, align 8
  %div = udiv i32 %10, 100
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_ack_bl(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.do.end_crit_edge

land.lhs.true.i.i.do.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.do.end_crit_edge

skb_to_full_sk.exit.do.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

do.end:                                           ; preds = %skb_to_full_sk.exit.do.end_crit_edge, %land.lhs.true.i.i.do.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.do.end_crit_edge ], [ %2, %land.lhs.true.i.i.do.end_crit_edge ]
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 53
  %9 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_ack_backlog, align 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_max_ack_bl(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.do.end_crit_edge

land.lhs.true.i.i.do.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.do.end_crit_edge

skb_to_full_sk.exit.do.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

do.end:                                           ; preds = %skb_to_full_sk.exit.do.end_crit_edge, %land.lhs.true.i.i.do.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.do.end_crit_edge ], [ %2, %land.lhs.true.i.i.do.end_crit_edge ]
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 54
  %9 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_max_ack_backlog, align 8
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_prio(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 33
  %9 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_priority, align 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_rcvlowat(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.do.end_crit_edge

land.lhs.true.i.i.do.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.do.end_crit_edge

skb_to_full_sk.exit.do.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

do.end:                                           ; preds = %skb_to_full_sk.exit.do.end_crit_edge, %land.lhs.true.i.i.do.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.do.end_crit_edge ], [ %2, %land.lhs.true.i.i.do.end_crit_edge ]
  %sk_rcvlowat = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 6
  %9 = ptrtoint ptr %sk_rcvlowat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_rcvlowat, align 8
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_rcvtimeo(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_rcvtimeo = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 62
  %9 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_rcvtimeo, align 4
  %div = sdiv i32 %10, 100
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_sndtimeo(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 31
  %9 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_sndtimeo, align 8
  %div = sdiv i32 %10, 100
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_sendmsg_off(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %offset = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 37, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %offset, align 4
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_sk_write_pend(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.if.end_crit_edge

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_to_full_sk.exit.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge
  %sk.addr.0.i.i7 = phi ptr [ %7, %skb_to_full_sk.exit.if.end_crit_edge ], [ %2, %land.lhs.true.i.i.if.end_crit_edge ]
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i7, i32 0, i32 28
  %9 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_write_pending, align 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_vlan_tag(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef writeonly %err) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %1 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vlan_tci, align 2
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %dst, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %h_vlan_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %h_vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %h_vlan_proto.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %7, label %if.else5 [
    i16 -30552, label %if.else.if.then2_crit_edge
    i16 -32512, label %if.else.if.then2_crit_edge14
  ]

if.else.if.then2_crit_edge14:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2

if.else.if.then2_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2

if.then2:                                         ; preds = %if.else.if.then2_crit_edge, %if.else.if.then2_crit_edge14
  %h_vlan_TCI.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %h_vlan_TCI.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %h_vlan_TCI.i, align 2
  %conv3 = zext i16 %10 to i32
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %dst, align 4
  br label %if.end6

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %err, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_int_rxhash(ptr noundef %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %l4_hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %l4_hash.i, align 8
  %1 = and i16 %bf.load.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %2 = icmp eq i16 %1, 0
  br i1 %2, label %if.then.i, label %entry.skb_get_hash.exit_crit_edge

entry.skb_get_hash.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_get_hash.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__skb_get_hash(ptr noundef %skb) #15
  br label %skb_get_hash.exit

skb_get_hash.exit:                                ; preds = %if.then.i, %entry.skb_get_hash.exit_crit_edge
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %3 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash.i, align 4
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dst, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_var_destroy(ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.meta_value, ptr %v, i32 0, i32 1
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meta_var_compare(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.meta_obj, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %len1 = getelementptr inbounds %struct.meta_obj, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b, align 4
  %9 = inttoptr i32 %8 to ptr
  %call = tail call i32 @memcmp(ptr noundef %6, ptr noundef %9, i32 noundef %1) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ %call, %if.then ], [ %sub, %entry.if.end_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meta_var_change(ptr nocapture noundef writeonly %dst, ptr noundef %nla) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla, align 2
  %conv.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %nla, i32 4
  %call2 = tail call ptr @kmemdup(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 3264) #15
  %2 = ptrtoint ptr %call2 to i32
  %val = getelementptr inbounds %struct.meta_value, ptr %dst, i32 0, i32 1
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %val, align 4
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %len4 = getelementptr inbounds %struct.meta_value, ptr %dst, i32 0, i32 2
  %4 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.i, ptr %len4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_var_apply_extras(ptr nocapture noundef readonly %v, ptr nocapture noundef %dst) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %shift1 = getelementptr inbounds %struct.tcf_meta_val, ptr %v, i32 0, i32 1
  %0 = ptrtoint ptr %shift1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %shift1, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.meta_obj, ptr %dst, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ugt i32 %3, %conv
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub i32 %3, %conv
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meta_var_dump(ptr noundef %skb, ptr nocapture noundef readonly %v, i32 noundef %tlv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.meta_value, ptr %v, i32 0, i32 1
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.meta_value, ptr %v, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true2

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %4 = inttoptr i32 %1 to ptr
  %call = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %tlv, i32 noundef %3, ptr noundef nonnull %4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp ne i32 %call, 0
  %spec.select = sext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %land.lhs.true2, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %spec.select, %land.lhs.true2 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meta_int_compare(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp5 = icmp ult i32 %1, %3
  %. = select i1 %cmp5, i32 -1, i32 1
  %retval.0 = select i1 %cmp, i32 0, i32 %., !prof !41
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meta_int_change(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %nla) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla, align 2
  %2 = and i16 %1, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %2)
  %cmp.not = icmp eq i16 %2, 4
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %nla, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %val = getelementptr inbounds %struct.meta_value, ptr %dst, i32 0, i32 1
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  %len = getelementptr inbounds %struct.meta_value, ptr %dst, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meta_int_apply_extras(ptr nocapture noundef readonly %v, ptr nocapture noundef %dst) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %shift = getelementptr inbounds %struct.tcf_meta_val, ptr %v, i32 0, i32 1
  %0 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %shift, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst, align 4
  %shr = lshr i32 %3, %conv
  store i32 %shr, ptr %dst, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val = getelementptr inbounds %struct.meta_value, ptr %v, i32 0, i32 1
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst, align 4
  %and = and i32 %7, %5
  store i32 %and, ptr %dst, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meta_int_dump(ptr noundef %skb, ptr noundef %v, i32 noundef %tlv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.meta_value, ptr %v, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val = getelementptr inbounds %struct.meta_value, ptr %v, i32 0, i32 1
  %call = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %tlv, i32 noundef 4, ptr noundef %val) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %spec.select = sext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_em_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !23, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__UNIQUE_ID_file515, !1, !"__UNIQUE_ID_file515", i1 false, i1 false}
!1 = !{!"../net/sched/em_meta.c", i32 1006, i32 1}
!2 = !{ptr @__UNIQUE_ID_license516, !1, !"__UNIQUE_ID_license516", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_em_meta__517_1008_init_em_meta6, !4, !"__initcall__kmod_em_meta__517_1008_init_em_meta6", i1 false, i1 false}
!4 = !{!"../net/sched/em_meta.c", i32 1008, i32 1}
!5 = !{ptr @__exitcall_exit_em_meta, !6, !"__exitcall_exit_em_meta", i1 false, i1 false}
!6 = !{!"../net/sched/em_meta.c", i32 1009, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias518, !8, !"__UNIQUE_ID_alias518", i1 false, i1 false}
!8 = !{!"../net/sched/em_meta.c", i32 1011, i32 1}
!9 = !{ptr @em_meta_ops, !10, !"em_meta_ops", i1 false, i1 false}
!10 = !{!"../net/sched/em_meta.c", i32 986, i32 30}
!11 = !{ptr @meta_policy, !12, !"meta_policy", i1 false, i1 false}
!12 = !{!"../net/sched/em_meta.c", i32 899, i32 32}
!13 = !{ptr @__meta_ops, !14, !"__meta_ops", i1 false, i1 false}
!14 = !{!"../net/sched/em_meta.c", i32 618, i32 24}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/sched/em_meta.c", i32 320, i32 32}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!28 = !{ptr @__meta_type_ops, !29, !"__meta_type_ops", i1 false, i1 false}
!29 = !{!"../net/sched/em_meta.c", i32 797, i32 35}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2149938814}
!43 = !{i64 2149939080}
