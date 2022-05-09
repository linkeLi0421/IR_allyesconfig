; ModuleID = '/llk/IR_all_yes/net/l2tp/l2tp_eth.c_pt.bc'
source_filename = "../net/l2tp/l2tp_eth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.l2tp_nl_cmd_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.l2tp_session_cfg = type { i32, i8, i16, [8 x i8], i32, [8 x i8], i32, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.139, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.139 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.l2tp_tunnel = type { i32, i32, %struct.callback_head, %struct.spinlock, i8, [16 x %struct.hlist_head], i32, i32, i32, [20 x i8], i32, %struct.l2tp_stats, %struct.list_head, ptr, %struct.refcount_struct, ptr, ptr, i32, %struct.work_struct }
%struct.callback_head = type { ptr, ptr }
%struct.l2tp_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.l2tp_session = type { i32, i32, ptr, i32, i32, [8 x i8], i32, [8 x i8], i32, i16, i16, i32, i32, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.hlist_node, %struct.refcount_struct, [32 x i8], [16 x i8], i8, i32, i32, i32, %struct.l2tp_stats, %struct.hlist_node, ptr, ptr, ptr, [0 x i8] }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.88, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.89, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.90, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.88 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.89 = type { ptr }
%union.anon.90 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__initcall__kmod_l2tp_eth__525_363_l2tp_eth_init6 = internal global ptr @l2tp_eth_init, section ".initcall6.init", align 4
@__exitcall_l2tp_eth_exit = internal global ptr @l2tp_eth_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file526 = internal constant [32 x i8] c"l2tp_eth.file=net/l2tp/l2tp_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license527 = internal constant [21 x i8] c"l2tp_eth.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author528 = internal constant [53 x i8] c"l2tp_eth.author=James Chapman <jchapman@katalix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description529 = internal constant [53 x i8] c"l2tp_eth.description=L2TP ethernet pseudowire driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version530 = internal constant [21 x i8] c"l2tp_eth.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l2tp_eth\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias531 = internal constant [31 x i8] c"l2tp_eth.alias=net-l2tp-type-5\00", section ".modinfo", align 1
@l2tp_eth_nl_cmd_ops = internal constant { %struct.l2tp_nl_cmd_ops, [24 x i8] } { %struct.l2tp_nl_cmd_ops { ptr @l2tp_eth_create, ptr @l2tp_session_delete }, [24 x i8] zeroinitializer }, align 32
@l2tp_eth_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016l2tp_eth: L2TP ethernet pseudowire support (L2TPv3)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2tp_eth_init\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/l2tp/l2tp_eth.c\00", [44 x i8] zeroinitializer }, align 32
@l2tp_eth_init._entry_ptr = internal global ptr @l2tp_eth_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l2tpeth%d\00", [22 x i8] zeroinitializer }, align 32
@l2tpeth_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@l2tp_eth_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @l2tp_eth_dev_init, ptr @l2tp_eth_dev_uninit, ptr null, ptr null, ptr @l2tp_eth_dev_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @l2tp_eth_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l2tpeth\00", [24 x i8] zeroinitializer }, align 32
@l2tp_eth_dev_init.qdisc_tx_busylock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@l2tp_eth_dev_init.qdisc_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@l2tp_eth_dev_init.dev_addr_list_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev_addr_list_lock_key\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qdisc_xmit_lock_key\00", [43 x i8] zeroinitializer }, align 32
@sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@l2tp_eth_dev_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@l2tp_eth_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@l2tp_eth_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"   interface %s\0A\00", [47 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 369, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"l2tp_eth_nl_cmd_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 337, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 350, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 260, i32 16 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"l2tpeth_type\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 111, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"l2tp_eth_netdev_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 103, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 112, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"qdisc_tx_busylock_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"qdisc_xmit_lock_key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"dev_addr_list_lock_key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 57, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 2077, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 695, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 173, i32 9 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [23 x i8] c"../net/l2tp/l2tp_eth.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 199, i32 16 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias531, ptr @__UNIQUE_ID_author528, ptr @__UNIQUE_ID_description529, ptr @__UNIQUE_ID_file526, ptr @__UNIQUE_ID_license527, ptr @__UNIQUE_ID_version530, ptr @__exitcall_l2tp_eth_exit, ptr @__initcall__kmod_l2tp_eth__525_363_l2tp_eth_init6, ptr @__modver_attr, ptr @l2tp_eth_exit, ptr @l2tp_eth_init._entry, ptr @l2tp_eth_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @l2tp_eth_nl_cmd_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @l2tpeth_type, ptr @l2tp_eth_netdev_ops, ptr @.str.7, ptr @l2tp_eth_dev_init.qdisc_tx_busylock_key, ptr @l2tp_eth_dev_init.qdisc_xmit_lock_key, ptr @l2tp_eth_dev_init.dev_addr_list_lock_key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_eth_nl_cmd_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_eth_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tpeth_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_eth_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_eth_dev_init.qdisc_tx_busylock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_eth_dev_init.qdisc_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_eth_dev_init.dev_addr_list_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_eth_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_nl_unregister_ops(i32 noundef 5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_nl_unregister_ops(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_eth_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @l2tp_nl_register_ops(i32 noundef 5, ptr noundef nonnull @l2tp_eth_nl_cmd_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_nl_register_ops(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_eth_create(ptr noundef %net, ptr noundef %tunnel, i32 noundef %session_id, i32 noundef %peer_session_id, ptr noundef %cfg) #4 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #10
  %ifname = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 8
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %1 = ptrtoint ptr %ifname to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ifname, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 @strlcpy(ptr noundef nonnull %name, ptr noundef nonnull %2, i32 noundef 16) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = call ptr @memcpy(ptr %name, ptr @.str.6, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %name_assign_type.0 = phi i8 [ 3, %if.then ], [ 1, %if.else ]
  %call4 = call ptr @l2tp_session_create(i32 noundef 4, ptr noundef %tunnel, i32 noundef %session_id, i32 noundef %peer_session_id, ptr noundef %cfg) #10
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call ptr @alloc_netdev_mqs(i32 noundef 28, ptr noundef nonnull %name, i8 noundef zeroext %name_assign_type.0, ptr noundef nonnull @l2tp_eth_dev_setup, i32 noundef 1, i32 noundef 1) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.err_sess_crit_edge, label %if.end13

if.end8.err_sess_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_sess

if.end13:                                         ; preds = %if.end8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %net, ptr %nd_net.i, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 30
  %6 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 31
  %7 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65535, ptr %max_mtu, align 4
  %encap.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 10
  %8 = ptrtoint ptr %encap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %encap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i103 = icmp eq i32 %9, 0
  br i1 %cmp.i103, label %if.then.i, label %if.end13.if.end.i_crit_edge

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 21
  %10 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %needed_headroom.i, align 8
  %add1.i = add i16 %11, 8
  store i16 %add1.i, ptr %needed_headroom.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end13.if.end.i_crit_edge
  %overhead.0.i = phi i32 [ 22, %if.then.i ], [ 14, %if.end13.if.end.i_crit_edge ]
  %sock.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 16
  %12 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sock.i, align 4
  call void @lock_sock_nested(ptr noundef %13, i32 noundef 0) #10
  %14 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sock.i, align 4
  %call.i = call i32 @kernel_sock_ip_overhead(ptr noundef %15) #10
  %16 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sock.i, align 4
  call void @release_sock(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.i, label %if.end.i.l2tp_eth_adjust_mtu.exit_crit_edge, label %if.end8.i

if.end.i.l2tp_eth_adjust_mtu.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2tp_eth_adjust_mtu.exit

if.end8.i:                                        ; preds = %if.end.i
  %hdr_len.i = getelementptr inbounds %struct.l2tp_session, ptr %call4, i32 0, i32 10
  %18 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hdr_len.i, align 2
  %conv9.i = zext i16 %19 to i32
  %add11.i = add i32 %call.i, %overhead.0.i
  %add12.i = add i32 %add11.i, %conv9.i
  %20 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sock.i, align 4
  %22 = call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i.i, label %if.end8.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.rcu_read_lock.exit.i.i.i_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end8.i.rcu_read_lock.exit.i.i.i_crit_edge
  %sk_dst_cache.i.i.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 19
  %26 = ptrtoint ptr %sk_dst_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %sk_dst_cache.i.i.i, align 4
  %call.i.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end7.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end7.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b16.i.i.i = load i1, ptr @sk_dst_get.__warned, align 1
  br i1 %.b16.i.i.i, label %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge:     ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sk_dst_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2077, ptr noundef nonnull @.str.11) #10
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end7.i.i.i_crit_edge
  %tobool9.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool9.not.i.i.i, label %do.end7.i.i.i.if.end13.i.i.i_crit_edge, label %land.lhs.true10.i.i.i

do.end7.i.i.i.if.end13.i.i.i_crit_edge:           ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i.i

land.lhs.true10.i.i.i:                            ; preds = %do.end7.i.i.i
  %__refcnt.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %27, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i, i32 1, i32 3, i32 1) #10
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i, ptr %__refcnt.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %land.lhs.true10.i.i.i.if.end13.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

land.lhs.true10.i.i.i.if.end13.i.i.i_crit_edge:   ; preds = %land.lhs.true10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %land.lhs.true10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %do.end11.i.i.i.i.i.i.i, %land.lhs.true10.i.i.i.if.end13.i.i.i_crit_edge, %do.end7.i.i.i.if.end13.i.i.i_crit_edge
  %dst.0.i.i.i = phi ptr [ null, %do.end7.i.i.i.if.end13.i.i.i_crit_edge ], [ null, %land.lhs.true10.i.i.i.if.end13.i.i.i_crit_edge ], [ %27, %do.end11.i.i.i.i.i.i.i ]
  %call.i17.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i17.i.i.i, label %if.end13.i.i.i.sk_dst_get.exit.i.i_crit_edge, label %land.lhs.true.i20.i.i.i

if.end13.i.i.i.sk_dst_get.exit.i.i_crit_edge:     ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_dst_get.exit.i.i

land.lhs.true.i20.i.i.i:                          ; preds = %if.end13.i.i.i
  %call1.i18.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i.i.i)
  %tobool.not.i19.i.i.i = icmp eq i32 %call1.i18.i.i.i, 0
  br i1 %tobool.not.i19.i.i.i, label %land.lhs.true.i20.i.i.i.sk_dst_get.exit.i.i_crit_edge, label %land.lhs.true2.i22.i.i.i

land.lhs.true.i20.i.i.i.sk_dst_get.exit.i.i_crit_edge: ; preds = %land.lhs.true.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_dst_get.exit.i.i

land.lhs.true2.i22.i.i.i:                         ; preds = %land.lhs.true.i20.i.i.i
  %.b4.i21.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i.i.i, label %land.lhs.true2.i22.i.i.i.sk_dst_get.exit.i.i_crit_edge, label %if.then.i23.i.i.i

land.lhs.true2.i22.i.i.i.sk_dst_get.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_dst_get.exit.i.i

if.then.i23.i.i.i:                                ; preds = %land.lhs.true2.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %sk_dst_get.exit.i.i

sk_dst_get.exit.i.i:                              ; preds = %if.then.i23.i.i.i, %land.lhs.true2.i22.i.i.i.sk_dst_get.exit.i.i_crit_edge, %land.lhs.true.i20.i.i.i.sk_dst_get.exit.i.i_crit_edge, %if.end13.i.i.i.sk_dst_get.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %29 = call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i24.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i24.i.i.i to ptr
  %preempt_count.i.i.i.i25.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i25.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i25.i.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not.i.i = icmp eq ptr %dst.0.i.i.i, null
  br i1 %tobool.not.i.i, label %sk_dst_get.exit.i.i.l2tp_tunnel_dst_mtu.exit.i_crit_edge, label %if.end.i.i

sk_dst_get.exit.i.i.l2tp_tunnel_dst_mtu.exit.i_crit_edge: ; preds = %sk_dst_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2tp_tunnel_dst_mtu.exit.i

if.end.i.i:                                       ; preds = %sk_dst_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst.0.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i.i, align 4
  %mtu.i.i.i = getelementptr inbounds %struct.dst_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mtu.i.i.i, align 4
  %call.i5.i.i = call i32 %36(ptr noundef nonnull %dst.0.i.i.i) #10
  call void @dst_release(ptr noundef nonnull %dst.0.i.i.i) #10
  br label %l2tp_tunnel_dst_mtu.exit.i

l2tp_tunnel_dst_mtu.exit.i:                       ; preds = %if.end.i.i, %sk_dst_get.exit.i.i.l2tp_tunnel_dst_mtu.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i5.i.i, %if.end.i.i ], [ 0, %sk_dst_get.exit.i.i.l2tp_tunnel_dst_mtu.exit.i_crit_edge ]
  %sub.i = sub i32 %retval.0.i.i, %add12.i
  %37 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %min_mtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %38)
  %cmp14.i = icmp ult i32 %sub.i, %38
  br i1 %cmp14.i, label %l2tp_tunnel_dst_mtu.exit.i.if.then18.i_crit_edge, label %lor.lhs.false.i

l2tp_tunnel_dst_mtu.exit.i.if.then18.i_crit_edge: ; preds = %l2tp_tunnel_dst_mtu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

lor.lhs.false.i:                                  ; preds = %l2tp_tunnel_dst_mtu.exit.i
  %39 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %40)
  %cmp16.i = icmp ugt i32 %sub.i, %40
  br i1 %cmp16.i, label %lor.lhs.false.i.if.then18.i_crit_edge, label %lor.lhs.false.i.if.end22.i_crit_edge

lor.lhs.false.i.if.end22.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i.if.then18.i_crit_edge, %l2tp_tunnel_dst_mtu.exit.i.if.then18.i_crit_edge
  %sub19.i = sub i32 1500, %add12.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %lor.lhs.false.i.if.end22.i_crit_edge
  %sub.sink.i = phi i32 [ %sub19.i, %if.then18.i ], [ %sub.i, %lor.lhs.false.i.if.end22.i_crit_edge ]
  %mtu21.i = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 20
  %41 = ptrtoint ptr %mtu21.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.sink.i, ptr %mtu21.i, align 4
  %42 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hdr_len.i, align 2
  %needed_headroom25.i = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 21
  %44 = ptrtoint ptr %needed_headroom25.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %needed_headroom25.i, align 8
  %add27.i = add i16 %45, %43
  store i16 %add27.i, ptr %needed_headroom25.i, align 8
  br label %l2tp_eth_adjust_mtu.exit

l2tp_eth_adjust_mtu.exit:                         ; preds = %if.end22.i, %if.end.i.l2tp_eth_adjust_mtu.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call10, i32 2304
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call4, ptr %add.ptr.i, align 4
  %recv_skb = getelementptr inbounds %struct.l2tp_session, ptr %call4, i32 0, i32 29
  %47 = ptrtoint ptr %recv_skb to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @l2tp_eth_dev_recv, ptr %recv_skb, align 4
  %session_close = getelementptr inbounds %struct.l2tp_session, ptr %call4, i32 0, i32 30
  %48 = ptrtoint ptr %session_close to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @l2tp_eth_delete, ptr %session_close, align 4
  %show = getelementptr inbounds %struct.l2tp_session, ptr %call4, i32 0, i32 31
  %49 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @l2tp_eth_show, ptr %show, align 4
  %priv.i = getelementptr inbounds %struct.l2tp_session, ptr %call4, i32 0, i32 32
  call void @l2tp_session_inc_refcount(ptr noundef %call4) #10
  call void @rtnl_lock() #10
  %call17 = call i32 @l2tp_session_register(ptr noundef %call4, ptr noundef %tunnel) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.then18, label %if.end19

if.then18:                                        ; preds = %l2tp_eth_adjust_mtu.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @rtnl_unlock() #10
  call void @l2tp_session_dec_refcount(ptr noundef %call4) #10
  call void @free_netdev(ptr noundef nonnull %call10) #10
  br label %err_sess

if.end19:                                         ; preds = %l2tp_eth_adjust_mtu.exit
  %call20 = call i32 @register_netdevice(ptr noundef nonnull %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @rtnl_unlock() #10
  call void @l2tp_session_delete(ptr noundef %call4) #10
  call void @l2tp_session_dec_refcount(ptr noundef %call4) #10
  call void @free_netdev(ptr noundef nonnull %call10) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %ifname24 = getelementptr inbounds %struct.l2tp_session, ptr %call4, i32 0, i32 22
  %call28 = call i32 @strlcpy(ptr noundef %ifname24, ptr noundef nonnull %call10, i32 noundef 16) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %50 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call10, ptr %priv.i, align 4
  call void @rtnl_unlock() #10
  call void @l2tp_session_dec_refcount(ptr noundef %call4) #10
  call void @__module_get(ptr noundef null) #10
  br label %cleanup

err_sess:                                         ; preds = %if.then18, %if.end8.err_sess_crit_edge
  %rc.0 = phi i32 [ %call17, %if.then18 ], [ -12, %if.end8.err_sess_crit_edge ]
  call void @kfree(ptr noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %err_sess, %if.end23, %if.then22, %if.then6
  %retval.0 = phi i32 [ %call20, %if.then22 ], [ 0, %if.end23 ], [ %4, %if.then6 ], [ %rc.0, %err_sess ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_delete(ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_session_create(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_eth_dev_setup(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @l2tpeth_type, ptr %type, align 4
  tail call void @ether_setup(ptr noundef %dev) #10
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %priv_flags, align 16
  %and = and i64 %2, -2049
  store i64 %and, ptr %priv_flags, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features, align 16
  %or = or i64 %4, 4096
  store i64 %or, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @l2tp_eth_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %6 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %needs_free_netdev, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_eth_dev_recv(ptr noundef %session, ptr noundef %skb, i32 noundef %data_len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 13
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp3.i = icmp ult i32 %1, 14
  br i1 %cmp3.i, label %if.end.i.error_crit_edge, label %pskb_may_pull.exit, !prof !78

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 14, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.error_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pskb_may_pull.exit.error_crit_edge:               ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %4 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_extensions.i.i.i, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.not.i.i, label %if.end.secpath_reset.exit_crit_edge, label %if.then.i.i

if.end.secpath_reset.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %secpath_reset.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__skb_ext_del(ptr noundef %skb, i32 noundef 1) #10
  br label %secpath_reset.exit

secpath_reset.exit:                               ; preds = %if.then.i.i, %if.end.secpath_reset.exit_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %7 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i36 = icmp eq i32 %10, 0
  br i1 %tobool.not.i36, label %secpath_reset.exit.skb_dst_drop.exit_crit_edge, label %if.then.i37

secpath_reset.exit.skb_dst_drop.exit_crit_edge:   ; preds = %secpath_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_drop.exit

if.then.i37:                                      ; preds = %secpath_reset.exit
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i38, label %if.then.i37.refdst_drop.exit.i_crit_edge

if.then.i37.refdst_drop.exit.i_crit_edge:         ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i

if.then.i.i38:                                    ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %10, -2
  %11 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %11) #10
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i38, %if.then.i37.refdst_drop.exit.i_crit_edge
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %8, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %secpath_reset.exit.skb_dst_drop.exit_crit_edge
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %13 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i40 = and i32 %14, -8
  %15 = inttoptr i32 %and.i.i40 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %and.i.i40, 0
  br i1 %tobool.not.i.i41, label %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

skb_dst_drop.exit.nf_reset_ct.exit_crit_edge:     ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %skb_dst_drop.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #10, !srcloc !80
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i42, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !77

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 3) #10
  br label %nf_reset_ct.exit

if.then.i.i42:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %15) #10
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i42, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge
  %17 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %_nfct.i.i, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %nf_reset_ct.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

nf_reset_ct.exit.rcu_read_lock.exit_crit_edge:    ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %nf_reset_ct.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %nf_reset_ct.exit.rcu_read_lock.exit_crit_edge
  %22 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %priv.i, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @l2tp_eth_dev_recv.__warned, align 1
  br i1 %.b33, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @l2tp_eth_dev_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 143, ptr noundef nonnull @.str.11) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %error_rcu, label %if.end16

if.end16:                                         ; preds = %do.end12
  %call18 = tail call i32 @dev_forward_skb(ptr noundef nonnull %23, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp eq i32 %call18, 0
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %rx_packets = getelementptr i8, ptr %23, i32 2324
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_packets, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %rx_packets, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_packets, ptr %rx_packets, i32 1, ptr elementtype(i32) %rx_packets) #10, !srcloc !82
  %rx_bytes = getelementptr i8, ptr %23, i32 2320
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_bytes, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %rx_bytes, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_bytes, ptr %rx_bytes, i32 %data_len, ptr elementtype(i32) %rx_bytes) #10, !srcloc !82
  br label %if.end20

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %rx_errors = getelementptr i8, ptr %23, i32 2328
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_errors, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %rx_errors, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_errors, ptr %rx_errors, i32 1, ptr elementtype(i32) %rx_errors) #10, !srcloc !82
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i43, label %if.end20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

if.end20.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %if.end20
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %if.end20.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %27 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i50 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

error_rcu:                                        ; preds = %do.end12
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i52, label %error_rcu.rcu_read_unlock.exit62_crit_edge, label %land.lhs.true.i55

error_rcu.rcu_read_unlock.exit62_crit_edge:       ; preds = %error_rcu
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62

land.lhs.true.i55:                                ; preds = %error_rcu
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit62_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit62_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit62_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit62_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit62

rcu_read_unlock.exit62:                           ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit62_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit62_crit_edge, %error_rcu.rcu_read_unlock.exit62_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i59 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i61 = add i32 %34, -1
  store volatile i32 %sub.i.i.i61, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %error

error:                                            ; preds = %rcu_read_unlock.exit62, %pskb_may_pull.exit.error_crit_edge, %if.end.i.error_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_eth_delete(ptr noundef readonly %session) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %session, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 32
  tail call void @rtnl_lock() #10
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1, label %if.then.do.end_crit_edge, label %land.lhs.true

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @l2tp_eth_delete.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @l2tp_eth_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 173, ptr noundef nonnull @.str.15) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then.do.end_crit_edge
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_netdevice_queue(ptr noundef nonnull %1, ptr noundef null) #10
  tail call void @rtnl_unlock() #10
  tail call void @module_put(ptr noundef null) #10
  br label %if.end11

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_unlock() #10
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_eth_show(ptr noundef %m, ptr noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.l2tp_session, ptr %arg, i32 0, i32 32
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %priv.i, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @l2tp_eth_show.__warned, align 1
  br i1 %.b19, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @l2tp_eth_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 191, ptr noundef nonnull @.str.11) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.then12, label %do.body1.i

if.then12:                                        ; preds = %do.end9
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i20, label %if.then12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.then12.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.then12
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.then12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %6 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i27 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

do.body1.i:                                       ; preds = %do.end9
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !83
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, 1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !84
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !78

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #10, !srcloc !85
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i30, label %dev_hold.exit.do.body1.i50_crit_edge, label %land.lhs.true.i33

dev_hold.exit.do.body1.i50_crit_edge:             ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i50

land.lhs.true.i33:                                ; preds = %dev_hold.exit
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.do.body1.i50_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.do.body1.i50_crit_edge:         ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i50

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.do.body1.i50_crit_edge, label %if.then.i36

land.lhs.true2.i35.do.body1.i50_crit_edge:        ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i50

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %do.body1.i50

do.body1.i50:                                     ; preds = %if.then.i36, %land.lhs.true2.i35.do.body1.i50_crit_edge, %land.lhs.true.i33.do.body1.i50_crit_edge, %dev_hold.exit.do.body1.i50_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %24 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i37 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i38, align 4
  %sub.i.i.i39 = add i32 %27, -1
  store volatile i32 %sub.i.i.i39, ptr %preempt_count.i.i.i.i38, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, ptr noundef nonnull %5) #10
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !83
  %29 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcpu_refcnt.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i43 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i43 to ptr
  %cpu.i44 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i44, align 4
  %arrayidx.i45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i45, align 4
  %add.i46 = add i32 %37, %31
  %38 = inttoptr i32 %add.i46 to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add13.i47 = add i32 %40, -1
  store i32 %add13.i47, ptr %38, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !84
  %and.i.i.i48 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i48)
  %tobool24.not.i49 = icmp eq i32 %and.i.i.i48, 0
  br i1 %tobool24.not.i49, label %if.then28.i51, label %do.body1.i50.dev_put.exit_crit_edge, !prof !78

do.body1.i50.dev_put.exit_crit_edge:              ; preds = %do.body1.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

if.then28.i51:                                    ; preds = %do.body1.i50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i51, %do.body1.i50.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #10, !srcloc !85
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_inc_refcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_session_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_dec_refcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_eth_dev_init(ptr noundef %dev) #4 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #10
  %0 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %1 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr.i, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #10
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %6 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  %qdisc_tx_busylock = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 147
  %7 = ptrtoint ptr %qdisc_tx_busylock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @l2tp_eth_dev_init.qdisc_tx_busylock_key, ptr %qdisc_tx_busylock, align 8
  %dep_map = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wait_type_inner, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @l2tp_eth_dev_init.dev_addr_list_lock_key, i32 noundef 0, i8 noundef zeroext %9, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %10 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp29.not = icmp eq i32 %11, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx, align 128
  %dep_map5 = getelementptr %struct.netdev_queue, ptr %13, i32 %i.030, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner10 = getelementptr %struct.netdev_queue, ptr %13, i32 %i.030, i32 10, i32 0, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %wait_type_inner10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wait_type_inner10, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map5, ptr noundef nonnull @.str.9, ptr noundef nonnull @l2tp_eth_dev_init.qdisc_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %inc = add nuw i32 %i.030, 1
  %16 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_eth_dev_uninit(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %priv.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %priv.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_eth_dev_xmit(ptr noundef %skb, ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %call3 = tail call i32 @l2tp_xmit_skb(ptr noundef %1, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else, !prof !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx_bytes = getelementptr i8, ptr %dev, i32 2308
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_bytes, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_bytes, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_bytes, ptr %tx_bytes, i32 %3, ptr elementtype(i32) %tx_bytes) #10, !srcloc !82
  %tx_packets = getelementptr i8, ptr %dev, i32 2312
  %call.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_packets, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_packets, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_packets, ptr %tx_packets, i32 1, ptr elementtype(i32) %tx_packets) #10, !srcloc !82
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx_dropped = getelementptr i8, ptr %dev, i32 2316
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_dropped, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_dropped, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_dropped, ptr %tx_dropped, i32 1, ptr elementtype(i32) %tx_dropped) #10, !srcloc !82
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_eth_get_stats64(ptr noundef %dev, ptr nocapture noundef writeonly %stats) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_bytes = getelementptr i8, ptr %dev, i32 2308
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_bytes, i32 noundef 4) #10
  %0 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_bytes, align 4
  %conv = zext i32 %1 to i64
  %tx_bytes2 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %2 = ptrtoint ptr %tx_bytes2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %tx_bytes2, align 8
  %tx_packets = getelementptr i8, ptr %dev, i32 2312
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_packets, i32 noundef 4) #10
  %3 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %tx_packets, align 4
  %conv4 = zext i32 %4 to i64
  %tx_packets5 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %5 = ptrtoint ptr %tx_packets5 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv4, ptr %tx_packets5, align 8
  %tx_dropped = getelementptr i8, ptr %dev, i32 2316
  %call.i.i29 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_dropped, i32 noundef 4) #10
  %6 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tx_dropped, align 4
  %conv7 = zext i32 %7 to i64
  %tx_dropped8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %8 = ptrtoint ptr %tx_dropped8 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv7, ptr %tx_dropped8, align 8
  %rx_bytes = getelementptr i8, ptr %dev, i32 2320
  %call.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_bytes, i32 noundef 4) #10
  %9 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rx_bytes, align 4
  %conv10 = zext i32 %10 to i64
  %rx_bytes11 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %11 = ptrtoint ptr %rx_bytes11 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv10, ptr %rx_bytes11, align 8
  %rx_packets = getelementptr i8, ptr %dev, i32 2324
  %call.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_packets, i32 noundef 4) #10
  %12 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %rx_packets, align 4
  %conv13 = zext i32 %13 to i64
  %14 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv13, ptr %stats, align 8
  %rx_errors = getelementptr i8, ptr %dev, i32 2328
  %call.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_errors, i32 noundef 4) #10
  %15 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %rx_errors, align 4
  %conv16 = zext i32 %16 to i64
  %rx_errors17 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %17 = ptrtoint ptr %rx_errors17 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv16, ptr %rx_errors17, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_xmit_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_ip_overhead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_forward_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !56, !57, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_l2tp_eth__525_363_l2tp_eth_init6, !1, !"__initcall__kmod_l2tp_eth__525_363_l2tp_eth_init6", i1 false, i1 false}
!1 = !{!"../net/l2tp/l2tp_eth.c", i32 363, i32 1}
!2 = !{ptr @__exitcall_l2tp_eth_exit, !3, !"__exitcall_l2tp_eth_exit", i1 false, i1 false}
!3 = !{!"../net/l2tp/l2tp_eth.c", i32 364, i32 1}
!4 = !{ptr @__UNIQUE_ID_file526, !5, !"__UNIQUE_ID_file526", i1 false, i1 false}
!5 = !{!"../net/l2tp/l2tp_eth.c", i32 366, i32 1}
!6 = !{ptr @__UNIQUE_ID_license527, !5, !"__UNIQUE_ID_license527", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author528, !8, !"__UNIQUE_ID_author528", i1 false, i1 false}
!8 = !{!"../net/l2tp/l2tp_eth.c", i32 367, i32 1}
!9 = !{ptr @__UNIQUE_ID_description529, !10, !"__UNIQUE_ID_description529", i1 false, i1 false}
!10 = !{!"../net/l2tp/l2tp_eth.c", i32 368, i32 1}
!11 = !{ptr @__UNIQUE_ID_version530, !12, !"__UNIQUE_ID_version530", i1 false, i1 false}
!12 = !{!"../net/l2tp/l2tp_eth.c", i32 369, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias531, !18, !"__UNIQUE_ID_alias531", i1 false, i1 false}
!18 = !{!"../net/l2tp/l2tp_eth.c", i32 370, i32 1}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/l2tp/l2tp_eth.c", i32 350, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @l2tp_eth_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @l2tp_eth_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @l2tp_eth_nl_cmd_ops, !26, !"l2tp_eth_nl_cmd_ops", i1 false, i1 false}
!26 = !{!"../net/l2tp/l2tp_eth.c", i32 337, i32 37}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/l2tp/l2tp_eth.c", i32 260, i32 16}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/l2tp/l2tp_eth.c", i32 112, i32 10}
!31 = !{ptr @l2tpeth_type, !32, !"l2tpeth_type", i1 false, i1 false}
!32 = !{!"../net/l2tp/l2tp_eth.c", i32 111, i32 27}
!33 = !{ptr @l2tp_eth_netdev_ops, !34, !"l2tp_eth_netdev_ops", i1 false, i1 false}
!34 = !{!"../net/l2tp/l2tp_eth.c", i32 103, i32 36}
!35 = !{ptr @l2tp_eth_dev_init.qdisc_tx_busylock_key, !36, !"qdisc_tx_busylock_key", i1 false, i1 false}
!36 = !{!"../net/l2tp/l2tp_eth.c", i32 57, i32 2}
!37 = !{ptr @l2tp_eth_dev_init.qdisc_xmit_lock_key, !36, !"qdisc_xmit_lock_key", i1 false, i1 false}
!38 = !{ptr @l2tp_eth_dev_init.dev_addr_list_lock_key, !36, !"dev_addr_list_lock_key", i1 false, i1 false}
!39 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/net/sock.h", i32 2077, i32 8}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/l2tp/l2tp_eth.c", i32 143, i32 8}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/l2tp/l2tp_eth.c", i32 173, i32 9}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/l2tp/l2tp_eth.c", i32 191, i32 8}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/l2tp/l2tp_eth.c", i32 199, i32 16}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2149362884}
!72 = !{i64 2148346144}
!73 = !{i64 831764, i64 831789, i64 831811, i64 831827, i64 831839, i64 831859, i64 831883, i64 831899, i64 831911}
!74 = !{i64 2148346332}
!75 = !{i64 2149363150}
!76 = !{i64 2158001596}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 2148436280}
!80 = !{i64 2148350720, i64 2148350752, i64 2148350781, i64 2148350815, i64 2148350846, i64 2148350869}
!81 = !{i64 2149312394}
!82 = !{i64 2148346725, i64 2148346751, i64 2148346780, i64 2148346814, i64 2148346845, i64 2148346868}
!83 = !{i64 750425, i64 750486}
!84 = !{i64 753157}
!85 = !{i64 753442}
