; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/roce_gid_mgmt.c_pt.bc'
source_filename = "../drivers/infiniband/core/roce_gid_mgmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+roce_gid_type_mask_support\22, \22a\22\09"
module asm "\09.weak\09__crc_roce_gid_type_mask_support\09\09\09\09"
module asm "\09.long\09__crc_roce_gid_type_mask_support\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roce_gid_type_mask_support:\09\09\09\09\09"
module asm "\09.asciz \09\22roce_gid_type_mask_support\22\09\09\09\09\09"
module asm "__kstrtabns_roce_gid_type_mask_support:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_roce_rescan_device\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_roce_rescan_device\09\09\09\09"
module asm "\09.long\09__crc_rdma_roce_rescan_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_roce_rescan_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_roce_rescan_device\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_roce_rescan_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.netdev_event_work_cmd = type { ptr, ptr, ptr, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.142, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.159, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.142 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.159 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.sin_list = type { %struct.list_head, %struct.sockaddr_in }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.sin6_list = type { %struct.list_head, %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.update_gid_event_work = type { %struct.work_struct, %union.ib_gid, %struct.ib_gid_attr, i32 }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_event_work = type { %struct.work_struct, [3 x %struct.netdev_event_work_cmd] }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.upper_list = type { %struct.list_head, ptr }

@__kstrtab_roce_gid_type_mask_support = external dso_local constant [0 x i8], align 1
@__kstrtabns_roce_gid_type_mask_support = external dso_local constant [0 x i8], align 1
@__ksymtab_roce_gid_type_mask_support = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roce_gid_type_mask_support to i32), ptr @__kstrtab_roce_gid_type_mask_support, ptr @__kstrtabns_roce_gid_type_mask_support }, section "___ksymtab+roce_gid_type_mask_support", align 4
@__kstrtab_rdma_roce_rescan_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_roce_rescan_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_roce_rescan_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_roce_rescan_device to i32), ptr @__kstrtab_rdma_roce_rescan_device, ptr @__kstrtabns_rdma_roce_rescan_device }, section "___ksymtab+rdma_roce_rescan_device", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gid-cache-wq\00", [19 x i8] zeroinitializer }, align 32
@gid_cache_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nb_inetaddr = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @inetaddr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nb_inet6addr = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @inet6addr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nb_netdevice = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @netdevice_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@net_rwsem = external dso_local global %struct.rw_semaphore, align 4
@net_namespace_list = external dso_local global %struct.list_head, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bond_option_active_slave_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/bonding.h\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@enum_netdev_ipv4_ips.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/infiniband/core/roce_gid_mgmt.c\00", [56 x i8] zeroinitializer }, align 32
@enum_netdev_ipv4_ips.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@addr_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@netdevice_event.del_cmd = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @del_netdev_ips, ptr @pass_all_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@netdevice_event.bonding_default_del_cmd_join = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @del_netdev_default_ips_join, ptr @is_eth_port_inactive_slave_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@netdevice_event.netdev_del_cmd = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @del_netdev_ips, ptr @is_eth_port_of_netdev_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@netdevice_event.bonding_event_ips_del_cmd = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @del_netdev_upper_ips, ptr @upper_device_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@add_default_gid_cmd = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @add_default_gids, ptr @is_ndev_for_default_gid_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@add_cmd = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @add_netdev_ips, ptr @is_eth_port_of_netdev_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@bonding_default_add_cmd = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @add_default_gids, ptr @is_upper_ndev_bond_master_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@add_cmd_upper_ips = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @add_netdev_upper_ips, ptr @is_eth_port_of_netdev_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ndev_event_link.bonding_default_del_cmd = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @del_default_gids, ptr @is_upper_ndev_bond_master_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ndev_event_unlink.upper_ips_del_cmd = internal constant { %struct.netdev_event_work_cmd, [16 x i8] } { %struct.netdev_event_work_cmd { ptr @del_netdev_upper_ips, ptr @upper_device_filter, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@netdevice_queue_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&ndev_work->work)\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 5, i64 6, i64 8, i64 13, i64 21]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 900, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"gid_cache_wq\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 45, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"nb_inetaddr\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 890, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"nb_inet6addr\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 894, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"nb_netdevice\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 886, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 695, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 723, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"../include/net/bonding.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 349, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 354, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 232, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 359, i32 9 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 844, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"del_cmd\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 741, i32 44 }
@___asan_gen_.68 = private unnamed_addr constant [29 x i8] c"bonding_default_del_cmd_join\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 744, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"netdev_del_cmd\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 749, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"bonding_event_ips_del_cmd\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 753, i32 44 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"add_default_gid_cmd\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 733, i32 43 }
@___asan_gen_.80 = private unnamed_addr constant [8 x i8] c"add_cmd\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 664, i32 43 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"bonding_default_add_cmd\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 689, i32 43 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"add_cmd_upper_ips\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 669, i32 43 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"bonding_default_del_cmd\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 700, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"upper_ips_del_cmd\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 679, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [43 x i8] c"../drivers/infiniband/core/roce_gid_mgmt.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 657, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_rdma_roce_rescan_device, ptr @__ksymtab_roce_gid_type_mask_support, ptr @roce_gid_mgmt_cleanup, ptr @.str, ptr @gid_cache_wq, ptr @nb_inetaddr, ptr @nb_inet6addr, ptr @nb_netdevice, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @addr_event.__key, ptr @.str.10, ptr @netdevice_event.del_cmd, ptr @netdevice_event.bonding_default_del_cmd_join, ptr @netdevice_event.netdev_del_cmd, ptr @netdevice_event.bonding_event_ips_del_cmd, ptr @add_default_gid_cmd, ptr @add_cmd, ptr @bonding_default_add_cmd, ptr @add_cmd_upper_ips, ptr @ndev_event_link.bonding_default_del_cmd, ptr @ndev_event_unlink.upper_ips_del_cmd, ptr @netdevice_queue_work.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gid_cache_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nb_inetaddr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nb_inet6addr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nb_netdevice to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdevice_event.del_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdevice_event.bonding_default_del_cmd_join to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdevice_event.netdev_del_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdevice_event.bonding_event_ips_del_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_default_gid_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bonding_default_add_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_cmd_upper_ips to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndev_event_link.bonding_default_del_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndev_event_unlink.upper_ips_del_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdevice_queue_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @roce_gid_type_mask_support(ptr nocapture noundef readonly %ib_dev, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 1, i32 2
  %2 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %3, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %and.i18 = lshr i32 %3, 20
  %4 = and i32 %and.i18, 2
  %and.i21 = lshr i32 %3, 21
  %5 = and i32 %and.i21, 4
  %6 = or i32 %5, %4
  %retval.0 = select i1 %tobool.i.not, i32 1, i32 %6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_roce_rescan_device(ptr noundef %ib_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ib_enum_roce_netdev(ptr noundef %ib_dev, ptr noundef nonnull @pass_all_filter, ptr noundef null, ptr noundef nonnull @enum_all_gids_of_dev_cb, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_enum_roce_netdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pass_all_filter(ptr nocapture noundef readnone %ib_dev, i32 noundef %port, ptr nocapture noundef readnone %rdma_ndev, ptr nocapture noundef readnone %cookie) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enum_all_gids_of_dev_cb(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %rdma_ndev, ptr nocapture noundef readnone %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #10
  tail call void @down_read(ptr noundef nonnull @net_rwsem) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @net_namespace_list to i32))
  %.pn47 = load ptr, ptr @net_namespace_list, align 4
  %cmp.not48 = icmp eq ptr %.pn47, @net_namespace_list
  br i1 %cmp.not48, label %entry.for.end23_crit_edge, label %for.body.lr.ph

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.body.lr.ph:                                   ; preds = %entry
  %port_data.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 11
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn49, align 4
  %cmp.not = icmp eq ptr %.pn, @net_namespace_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end23_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loopexit.for.end23_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %.pn49 = phi ptr [ %.pn47, %for.body.lr.ph ], [ %.pn, %for.cond.loopexit.for.body_crit_edge ]
  %dev_base_head = getelementptr i8, ptr %.pn49, i32 176
  %1 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn4041 = load ptr, ptr %dev_base_head, align 4
  %cmp6.not43 = icmp eq ptr %.pn4041, %dev_base_head
  br i1 %cmp6.not43, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body8_crit_edge

for.body.for.body8_crit_edge:                     ; preds = %for.body
  br label %for.body8

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body.for.body8_crit_edge
  %.pn4044 = phi ptr [ %.pn40, %for.inc.for.body8_crit_edge ], [ %.pn4041, %for.body.for.body8_crit_edge ]
  %ndev.045 = getelementptr i8, ptr %.pn4044, i32 -40
  %call = tail call zeroext i1 @is_ndev_for_default_gid_filter(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %rdma_ndev, ptr noundef %ndev.045)
  br i1 %call, label %if.then, label %for.body8.if.end_crit_edge

for.body8.if.end_crit_edge:                       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %port_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_data.i.i.i, align 8
  %core_cap_flags.i.i.i = getelementptr %struct.ib_port_data, ptr %3, i32 %port, i32 1, i32 2
  %4 = ptrtoint ptr %core_cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_cap_flags.i.i.i, align 4
  %and.i.i.i = and i32 %5, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %and.i18.i.i = lshr i32 %5, 20
  %6 = and i32 %and.i18.i.i, 2
  %and.i21.i.i = lshr i32 %5, 21
  %7 = and i32 %and.i21.i.i, 4
  %8 = or i32 %7, %6
  %retval.0.i.i = select i1 %tobool.i.not.i.i, i32 1, i32 %8
  tail call void @ib_cache_gid_set_default_gid(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %ndev.045, i32 noundef %retval.0.i.i, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8.if.end_crit_edge
  %call9 = tail call zeroext i1 @is_eth_port_of_netdev_filter(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %rdma_ndev, ptr noundef %ndev.045)
  br i1 %call9, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_add_netdev_ips(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %ndev.045)
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn4044 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn40 = load ptr, ptr %.pn4044, align 4
  %cmp6.not = icmp eq ptr %.pn40, %dev_base_head
  br i1 %cmp6.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end23:                                        ; preds = %for.cond.loopexit.for.end23_crit_edge, %entry.for.end23_crit_edge
  tail call void @up_read(ptr noundef nonnull @net_rwsem) #10
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @roce_gid_mgmt_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655362, i32 noundef 1) #10
  store ptr %call, ptr @gid_cache_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @nb_inetaddr) #10
  %call2 = tail call i32 @register_inet6addr_notifier(ptr noundef nonnull @nb_inet6addr) #10
  %call3 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @nb_netdevice) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @roce_gid_mgmt_cleanup() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @nb_inet6addr) #10
  %call1 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @nb_inetaddr) #10
  %call2 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @nb_netdevice) #10
  %0 = load ptr, ptr @gid_cache_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_ndev_for_default_gid_filter(ptr nocapture noundef readnone %ib_dev, i32 noundef %port, ptr noundef %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rdma_ndev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %cmp = icmp eq ptr %cookie, %rdma_ndev
  br i1 %cmp, label %land.lhs.true, label %rcu_read_lock.exit.lor.rhs_crit_edge

rcu_read_lock.exit.lor.rhs_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %flags.i = getelementptr inbounds %struct.net_device, ptr %rdma_ndev, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i10 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i10, label %land.lhs.true.lor.end_crit_edge, label %netif_is_bond_slave.exit

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

netif_is_bond_slave.exit:                         ; preds = %land.lhs.true
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %rdma_ndev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and1.i = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i.not = icmp eq i64 %and1.i, 0
  br i1 %tobool2.i.not, label %netif_is_bond_slave.exit.lor.end_crit_edge, label %netif_is_bond_slave.exit.lor.rhs_crit_edge

netif_is_bond_slave.exit.lor.rhs_crit_edge:       ; preds = %netif_is_bond_slave.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

netif_is_bond_slave.exit.lor.end_crit_edge:       ; preds = %netif_is_bond_slave.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %netif_is_bond_slave.exit.lor.rhs_crit_edge, %rcu_read_lock.exit.lor.rhs_crit_edge
  %flags.i11 = getelementptr inbounds %struct.net_device, ptr %cookie, i32 0, i32 14
  %8 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i11, align 8
  %and.i12 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %lor.rhs.lor.end_crit_edge, label %netif_is_bond_master.exit

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

netif_is_bond_master.exit:                        ; preds = %lor.rhs
  %priv_flags.i14 = getelementptr inbounds %struct.net_device, ptr %cookie, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags.i14 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i14, align 16
  %and1.i15 = and i64 %11, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i15)
  %tobool2.i16.not = icmp eq i64 %and1.i15, 0
  br i1 %tobool2.i16.not, label %netif_is_bond_master.exit.lor.end_crit_edge, label %land.rhs

netif_is_bond_master.exit.lor.end_crit_edge:      ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

land.rhs:                                         ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i18 = tail call zeroext i1 @netdev_has_upper_dev_all_rcu(ptr noundef nonnull %rdma_ndev, ptr noundef %cookie) #10
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %netif_is_bond_master.exit.lor.end_crit_edge, %lor.rhs.lor.end_crit_edge, %netif_is_bond_slave.exit.lor.end_crit_edge, %land.lhs.true.lor.end_crit_edge
  %12 = phi i1 [ true, %netif_is_bond_slave.exit.lor.end_crit_edge ], [ false, %netif_is_bond_master.exit.lor.end_crit_edge ], [ %call.i18, %land.rhs ], [ true, %land.lhs.true.lor.end_crit_edge ], [ false, %lor.rhs.lor.end_crit_edge ]
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i19, label %lor.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

lor.end.rcu_read_unlock.exit_crit_edge:           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %lor.end
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %lor.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i26 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %12, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @add_default_gids(ptr noundef %ib_dev, i32 noundef %port, ptr nocapture noundef readnone %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 1, i32 2
  %2 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %3, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i18.i = lshr i32 %3, 20
  %4 = and i32 %and.i18.i, 2
  %and.i21.i = lshr i32 %3, 21
  %5 = and i32 %and.i21.i, 4
  %6 = or i32 %5, %4
  %retval.0.i = select i1 %tobool.i.not.i, i32 1, i32 %6
  tail call void @ib_cache_gid_set_default_gid(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %cookie, i32 noundef %retval.0.i, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_eth_port_of_netdev_filter(ptr nocapture noundef readnone %ib_dev, i32 noundef %port, ptr noundef %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rdma_ndev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %cookie, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %5, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %rcu_read_lock.exit.rdma_vlan_dev_real_dev.exit_crit_edge, label %cond.true.i

rcu_read_lock.exit.rdma_vlan_dev_real_dev.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_vlan_dev_real_dev.exit

cond.true.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i16 = tail call ptr @vlan_dev_real_dev(ptr noundef %cookie) #10
  br label %rdma_vlan_dev_real_dev.exit

rdma_vlan_dev_real_dev.exit:                      ; preds = %cond.true.i, %rcu_read_lock.exit.rdma_vlan_dev_real_dev.exit_crit_edge
  %cond.i = phi ptr [ %call1.i16, %cond.true.i ], [ null, %rcu_read_lock.exit.rdma_vlan_dev_real_dev.exit_crit_edge ]
  %tobool1.not = icmp eq ptr %cond.i, null
  %spec.select = select i1 %tobool1.not, ptr %cookie, ptr %cond.i
  %call.i17 = tail call zeroext i1 @netdev_has_upper_dev_all_rcu(ptr noundef nonnull %rdma_ndev, ptr noundef %cookie) #10
  br i1 %call.i17, label %land.lhs.true, label %rdma_vlan_dev_real_dev.exit.lor.rhs_crit_edge

rdma_vlan_dev_real_dev.exit.lor.rhs_crit_edge:    ; preds = %rdma_vlan_dev_real_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.lhs.true:                                    ; preds = %rdma_vlan_dev_real_dev.exit
  %call5 = tail call fastcc i32 @is_eth_active_slave_of_bonding_rcu(ptr noundef nonnull %rdma_ndev, ptr noundef %spec.select)
  %and = and i32 %call5, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.lor.rhs_crit_edge, label %land.lhs.true.lor.end_crit_edge

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

land.lhs.true.lor.rhs_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.lor.rhs_crit_edge, %rdma_vlan_dev_real_dev.exit.lor.rhs_crit_edge
  %cmp = icmp eq ptr %spec.select, %rdma_ndev
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.lor.end_crit_edge
  %6 = phi i1 [ true, %land.lhs.true.lor.end_crit_edge ], [ %cmp, %lor.rhs ]
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i18, label %lor.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

lor.end.rcu_read_unlock.exit_crit_edge:           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %lor.end
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %lor.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %7 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i25 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %6, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_add_netdev_ips(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %ndev) #2 align 64 {
entry:
  %gid_attr.i = alloca %struct.ib_gid_attr, align 8
  %sin6_list.i = alloca %struct.list_head, align 4
  %gid.i = alloca %union.ib_gid, align 8
  %gid.i.i = alloca %union.ib_gid, align 8
  %gid_attr.i.i = alloca %struct.ib_gid_attr, align 8
  %sin_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sin_list.i) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %sin_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %sin_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sin_list.i, ptr %sin_list.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sin_list.i, ptr %0, align 4
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 121
  %3 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp ugt i8 %bf.load.i, 1
  br i1 %cmp.i, label %entry.enum_netdev_ipv4_ips.exit_crit_edge, label %if.end.i

entry.enum_netdev_ipv4_ips.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %enum_netdev_ipv4_ips.exit

if.end.i:                                         ; preds = %entry
  %4 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %ip_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 78
  %8 = ptrtoint ptr %ip_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ip_ptr.i.i, align 32
  %call.i82.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool.not.i83.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool.not.i83.i, label %land.lhs.true.i84.i, label %rcu_read_lock.exit.i.__in_dev_get_rcu.exit.i_crit_edge

rcu_read_lock.exit.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i

land.lhs.true.i84.i:                              ; preds = %rcu_read_lock.exit.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i84.i.__in_dev_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i84.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i84.i
  %.b9.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %if.then.i85.i

land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i

if.then.i85.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 232, ptr noundef nonnull @.str.5) #10
  br label %__in_dev_get_rcu.exit.i

__in_dev_get_rcu.exit.i:                          ; preds = %if.then.i85.i, %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, %land.lhs.true.i84.i.__in_dev_get_rcu.exit.i_crit_edge, %rcu_read_lock.exit.i.__in_dev_get_rcu.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %__in_dev_get_rcu.exit.i
  %call.i86.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i86.i, label %if.then1.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i89.i

if.then1.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i89.i:                              ; preds = %if.then1.i
  %call1.i87.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87.i)
  %tobool.not.i88.i = icmp eq i32 %call1.i87.i, 0
  br i1 %tobool.not.i88.i, label %land.lhs.true.i89.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i91.i

land.lhs.true.i89.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i91.i:                             ; preds = %land.lhs.true.i89.i
  %.b4.i90.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90.i, label %land.lhs.true2.i91.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i92.i

land.lhs.true2.i91.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i92.i:                                    ; preds = %land.lhs.true2.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i92.i, %land.lhs.true2.i91.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i89.i.rcu_read_unlock.exit.i_crit_edge, %if.then1.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %10 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i93.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i93.i to ptr
  %preempt_count.i.i.i.i94.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i94.i, align 4
  %sub.i.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i94.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %enum_netdev_ipv4_ips.exit

if.end2.i:                                        ; preds = %__in_dev_get_rcu.exit.i
  %ifa_list.i = getelementptr inbounds %struct.in_device, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %ifa_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %ifa_list.i, align 4
  %call4.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.end2.i.do.end13.i_crit_edge

if.end2.i.do.end13.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i

land.lhs.true.i:                                  ; preds = %if.end2.i
  %call6.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end13.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b81.i = load i1, ptr @enum_netdev_ipv4_ips.__warned, align 1
  br i1 %.b81.i, label %land.lhs.true8.i.do.end13.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end13.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @enum_netdev_ipv4_ips.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 354, ptr noundef nonnull @.str.5) #10
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.do.end13.i_crit_edge, %land.lhs.true.i.do.end13.i_crit_edge, %if.end2.i.do.end13.i_crit_edge
  %tobool15.not109.i = icmp eq ptr %15, null
  br i1 %tobool15.not109.i, label %do.end13.i.for.end.i_crit_edge, label %do.end13.i.for.body.i_crit_edge

do.end13.i.for.body.i_crit_edge:                  ; preds = %do.end13.i
  br label %for.body.i

do.end13.i.for.end.i_crit_edge:                   ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %do.end37.i.for.body.i_crit_edge, %do.end13.i.for.body.i_crit_edge
  %ifa.0110.i = phi ptr [ %28, %do.end37.i.for.body.i_crit_edge ], [ %15, %do.end13.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 24) #13
  %tobool18.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool18.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end20.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end20.i:                                       ; preds = %for.body.i
  %ip.i = getelementptr inbounds %struct.sin_list, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %ip.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %ip.i, align 8
  %ifa_address.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0110.i, i32 0, i32 5
  %18 = ptrtoint ptr %ifa_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifa_address.i, align 4
  %sin_addr.i = getelementptr inbounds %struct.sin_list, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sin_addr.i, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %22, ptr noundef nonnull %sin_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end20.i.cleanup.i_crit_edge

if.end20.i.cleanup.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i, ptr %0, align 4
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sin_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i.i, ptr %22, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end20.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %ifa_next.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0110.i, i32 0, i32 1
  %27 = ptrtoint ptr %ifa_next.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %ifa_next.i, align 4
  %call27.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true29.i, label %cleanup.i.do.end37.i_crit_edge

cleanup.i.do.end37.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37.i

land.lhs.true29.i:                                ; preds = %cleanup.i
  %call30.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true29.i.do.end37.i_crit_edge, label %land.lhs.true32.i

land.lhs.true29.i.do.end37.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37.i

land.lhs.true32.i:                                ; preds = %land.lhs.true29.i
  %.b7980.i = load i1, ptr @enum_netdev_ipv4_ips.__warned.7, align 1
  br i1 %.b7980.i, label %land.lhs.true32.i.do.end37.i_crit_edge, label %if.then34.i

land.lhs.true32.i.do.end37.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37.i

if.then34.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @enum_netdev_ipv4_ips.__warned.7, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 354, ptr noundef nonnull @.str.5) #10
  br label %do.end37.i

do.end37.i:                                       ; preds = %if.then34.i, %land.lhs.true32.i.do.end37.i_crit_edge, %land.lhs.true29.i.do.end37.i_crit_edge, %cleanup.i.do.end37.i_crit_edge
  %tobool15.not.i = icmp eq ptr %28, null
  br i1 %tobool15.not.i, label %do.end37.i.for.end.i_crit_edge, label %do.end37.i.for.body.i_crit_edge

do.end37.i.for.body.i_crit_edge:                  ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end37.i.for.end.i_crit_edge:                   ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %do.end37.i.for.end.i_crit_edge, %do.end13.i.for.end.i_crit_edge
  %call.i95.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i95.i, label %for.end.i.rcu_read_unlock.exit105.i_crit_edge, label %land.lhs.true.i98.i

for.end.i.rcu_read_unlock.exit105.i_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit105.i

land.lhs.true.i98.i:                              ; preds = %for.end.i
  %call1.i96.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96.i)
  %tobool.not.i97.i = icmp eq i32 %call1.i96.i, 0
  br i1 %tobool.not.i97.i, label %land.lhs.true.i98.i.rcu_read_unlock.exit105.i_crit_edge, label %land.lhs.true2.i100.i

land.lhs.true.i98.i.rcu_read_unlock.exit105.i_crit_edge: ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit105.i

land.lhs.true2.i100.i:                            ; preds = %land.lhs.true.i98.i
  %.b4.i99.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99.i, label %land.lhs.true2.i100.i.rcu_read_unlock.exit105.i_crit_edge, label %if.then.i101.i

land.lhs.true2.i100.i.rcu_read_unlock.exit105.i_crit_edge: ; preds = %land.lhs.true2.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit105.i

if.then.i101.i:                                   ; preds = %land.lhs.true2.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit105.i

rcu_read_unlock.exit105.i:                        ; preds = %if.then.i101.i, %land.lhs.true2.i100.i.rcu_read_unlock.exit105.i_crit_edge, %land.lhs.true.i98.i.rcu_read_unlock.exit105.i_crit_edge, %for.end.i.rcu_read_unlock.exit105.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %29 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i102.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i102.i to ptr
  %preempt_count.i.i.i.i103.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i103.i, align 4
  %sub.i.i.i104.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i104.i, ptr %preempt_count.i.i.i.i103.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %33 = ptrtoint ptr %sin_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sin_list.i, align 4
  %cmp48.not112.i = icmp eq ptr %34, %sin_list.i
  br i1 %cmp48.not112.i, label %rcu_read_unlock.exit105.i.enum_netdev_ipv4_ips.exit_crit_edge, label %for.body49.lr.ph.i

rcu_read_unlock.exit105.i.enum_netdev_ipv4_ips.exit_crit_edge: ; preds = %rcu_read_unlock.exit105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enum_netdev_ipv4_ips.exit

for.body49.lr.ph.i:                               ; preds = %rcu_read_unlock.exit105.i
  %35 = getelementptr inbounds %struct.anon.160, ptr %gid.i.i, i32 0, i32 1
  %arrayidx1.i.i.i.i.i.i = getelementptr inbounds i32, ptr %gid.i.i, i32 1
  %arrayidx1.i1.i.i.i.i.i = getelementptr inbounds [4 x i32], ptr %gid.i.i, i32 0, i32 3
  %port_data.i.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 11
  %gid_type.i.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %gid_attr.i.i, i32 0, i32 3
  br label %for.body49.i

for.body49.i:                                     ; preds = %list_del.exit.i.for.body49.i_crit_edge, %for.body49.lr.ph.i
  %sin_iter.0113.i = phi ptr [ %34, %for.body49.lr.ph.i ], [ %sin_temp.0.i, %list_del.exit.i.for.body49.i_crit_edge ]
  %36 = ptrtoint ptr %sin_iter.0113.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %sin_temp.0.i = load ptr, ptr %sin_iter.0113.i, align 4
  %ip50.i = getelementptr inbounds %struct.sin_list, ptr %sin_iter.0113.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid.i.i) #10
  %37 = call ptr @memset(ptr %gid.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %gid_attr.i.i) #10
  %38 = ptrtoint ptr %ip50.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ip50.i, align 2
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i16 %39, label %for.body49.i.rdma_ip2gid.exit.i.i_crit_edge [
    i16 2, label %sw.bb.i.i.i
    i16 10, label %sw.bb1.i.i.i
  ]

for.body49.i.rdma_ip2gid.exit.i.i_crit_edge:      ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_ip2gid.exit.i.i

sw.bb.i.i.i:                                      ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i.i.i = getelementptr inbounds %struct.sin_list, ptr %sin_iter.0113.i, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sin_addr.i.i.i, align 4
  %43 = ptrtoint ptr %gid.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %gid.i.i, align 8
  %44 = ptrtoint ptr %arrayidx1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx1.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65535, ptr %35, align 8
  %46 = ptrtoint ptr %arrayidx1.i1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %42, ptr %arrayidx1.i1.i.i.i.i.i, align 4
  br label %rdma_ip2gid.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr.i.i.i = getelementptr inbounds %struct.sin_list, ptr %sin_iter.0113.i, i32 0, i32 1, i32 3
  %47 = call ptr @memcpy(ptr %gid.i.i, ptr %sin6_addr.i.i.i, i32 16)
  br label %rdma_ip2gid.exit.i.i

rdma_ip2gid.exit.i.i:                             ; preds = %sw.bb1.i.i.i, %sw.bb.i.i.i, %for.body49.i.rdma_ip2gid.exit.i.i_crit_edge
  %48 = call ptr @memset(ptr %gid_attr.i.i, i32 0, i32 40)
  %49 = ptrtoint ptr %gid_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ndev, ptr %gid_attr.i.i, align 8
  %50 = ptrtoint ptr %port_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port_data.i.i.i.i.i, align 8
  %core_cap_flags.i.i.i.i.i = getelementptr %struct.ib_port_data, ptr %51, i32 %port, i32 1, i32 2
  %52 = ptrtoint ptr %core_cap_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %core_cap_flags.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %53, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %and.i18.i.i.i.i = lshr i32 %53, 20
  %54 = and i32 %and.i18.i.i.i.i, 2
  %and.i21.i.i.i.i = lshr i32 %53, 21
  %55 = and i32 %and.i21.i.i.i.i, 4
  %56 = or i32 %55, %54
  %retval.0.i.i.i.i = select i1 %tobool.i.not.i.i.i.i, i32 1, i32 %56
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %rdma_ip2gid.exit.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

rdma_ip2gid.exit.i.i.for.inc.i.i.i_crit_edge:     ; preds = %rdma_ip2gid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %rdma_ip2gid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i = call i32 @ib_cache_gid_add(ptr noundef %ib_dev, i32 noundef %port, ptr noundef nonnull %gid.i.i, ptr noundef nonnull %gid_attr.i.i) #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %rdma_ip2gid.exit.i.i.for.inc.i.i.i_crit_edge
  %and.1.i.i.i = and i32 %retval.0.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i.i)
  %tobool.not.1.i.i.i = icmp eq i32 %and.1.i.i.i, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.then.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %gid_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %gid_type.i.i.i, align 8
  %call1.1.i.i.i = call i32 @ib_cache_gid_add(ptr noundef %ib_dev, i32 noundef %port, ptr noundef nonnull %gid.i.i, ptr noundef nonnull %gid_attr.i.i) #10
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.then.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %and.2.i.i.i = and i32 %retval.0.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i.i)
  %tobool.not.2.i.i.i = icmp eq i32 %and.2.i.i.i, 0
  br i1 %tobool.not.2.i.i.i, label %for.inc.1.i.i.i.update_gid_ip.exit.i_crit_edge, label %if.then.2.i.i.i

for.inc.1.i.i.i.update_gid_ip.exit.i_crit_edge:   ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_gid_ip.exit.i

if.then.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %gid_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %gid_type.i.i.i, align 8
  %call1.2.i.i.i = call i32 @ib_cache_gid_add(ptr noundef %ib_dev, i32 noundef %port, ptr noundef nonnull %gid.i.i, ptr noundef nonnull %gid_attr.i.i) #10
  br label %update_gid_ip.exit.i

update_gid_ip.exit.i:                             ; preds = %if.then.2.i.i.i, %for.inc.1.i.i.i.update_gid_ip.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %gid_attr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid.i.i) #10
  %call.i.i106.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %sin_iter.0113.i) #10
  br i1 %call.i.i106.i, label %if.end.i.i107.i, label %update_gid_ip.exit.i.list_del.exit.i_crit_edge

update_gid_ip.exit.i.list_del.exit.i_crit_edge:   ; preds = %update_gid_ip.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i107.i:                                  ; preds = %update_gid_ip.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sin_iter.0113.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i, align 4
  %61 = ptrtoint ptr %sin_iter.0113.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sin_iter.0113.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i107.i, %update_gid_ip.exit.i.list_del.exit.i_crit_edge
  %65 = ptrtoint ptr %sin_iter.0113.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %sin_iter.0113.i, align 4
  %prev.i108.i = getelementptr inbounds %struct.list_head, ptr %sin_iter.0113.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i108.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i108.i, align 4
  call void @kfree(ptr noundef %sin_iter.0113.i) #10
  %cmp48.not.i = icmp eq ptr %sin_temp.0.i, %sin_list.i
  br i1 %cmp48.not.i, label %list_del.exit.i.enum_netdev_ipv4_ips.exit_crit_edge, label %list_del.exit.i.for.body49.i_crit_edge

list_del.exit.i.for.body49.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body49.i

list_del.exit.i.enum_netdev_ipv4_ips.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enum_netdev_ipv4_ips.exit

enum_netdev_ipv4_ips.exit:                        ; preds = %list_del.exit.i.enum_netdev_ipv4_ips.exit_crit_edge, %rcu_read_unlock.exit105.i.enum_netdev_ipv4_ips.exit_crit_edge, %rcu_read_unlock.exit.i, %entry.enum_netdev_ipv4_ips.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sin_list.i) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %gid_attr.i) #10
  %67 = call ptr @memset(ptr %gid_attr.i, i32 0, i32 40)
  %68 = ptrtoint ptr %gid_attr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %ndev, ptr %gid_attr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sin6_list.i) #10
  %69 = getelementptr inbounds %struct.list_head, ptr %sin6_list.i, i32 0, i32 1
  %70 = ptrtoint ptr %sin6_list.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %sin6_list.i, ptr %sin6_list.i, align 4
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %sin6_list.i, ptr %69, align 4
  %72 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i5 = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i5)
  %cmp.i6 = icmp ugt i8 %bf.load.i5, 1
  br i1 %cmp.i6, label %enum_netdev_ipv4_ips.exit.enum_netdev_ipv6_ips.exit_crit_edge, label %if.end.i8

enum_netdev_ipv4_ips.exit.enum_netdev_ipv6_ips.exit_crit_edge: ; preds = %enum_netdev_ipv4_ips.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %enum_netdev_ipv6_ips.exit

if.end.i8:                                        ; preds = %enum_netdev_ipv4_ips.exit
  %73 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %76, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i7 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i7, label %if.end.i8.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i8.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i8
  %call1.i.i.i9 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i9)
  %tobool.not.i.i.i10 = icmp eq i32 %call1.i.i.i9, 0
  br i1 %tobool.not.i.i.i10, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i11

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i11:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i11, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i8.rcu_read_lock.exit.i.i_crit_edge
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 80
  %77 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i12 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool.not.i.i13 = icmp eq i32 %call.i.i12, 0
  br i1 %tobool.not.i.i13, label %land.lhs.true.i.i16, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true.i.i16:                              ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i14 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i14)
  %tobool3.not.i.i15 = icmp eq i32 %call2.i.i14, 0
  br i1 %tobool3.not.i.i15, label %land.lhs.true.i.i16.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i17

land.lhs.true.i.i16.do.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true4.i.i17:                             ; preds = %land.lhs.true.i.i16
  %.b14.i.i = load i1, ptr @in6_dev_get.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true4.i.i17.do.end7.i.i_crit_edge, label %if.then.i.i18

land.lhs.true4.i.i17.do.end7.i.i_crit_edge:       ; preds = %land.lhs.true4.i.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i.i18:                                    ; preds = %land.lhs.true4.i.i17
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 359, ptr noundef nonnull @.str.5) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i18, %land.lhs.true4.i.i17.do.end7.i.i_crit_edge, %land.lhs.true.i.i16.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %78, null
  br i1 %tobool9.not.i.i, label %do.end7.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

do.end7.i.i.if.end11.i.i_crit_edge:               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %do.end7.i.i
  %refcnt.i.i = getelementptr inbounds %struct.inet6_dev, ptr %78, i32 0, i32 25
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #10
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then10.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !76

if.then10.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then10.i.i
  %add.i.i.i15.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %80 = or i32 %add.i.i.i15.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %.not.i.i.i.i.i = icmp sgt i32 %80, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end11.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !77

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end11.i.i_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then10.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then10.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end11.i.i_crit_edge, %do.end7.i.i.if.end11.i.i_crit_edge
  %call.i16.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i16.i.i, label %if.end11.i.i.in6_dev_get.exit.i_crit_edge, label %land.lhs.true.i19.i.i

if.end11.i.i.in6_dev_get.exit.i_crit_edge:        ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %in6_dev_get.exit.i

land.lhs.true.i19.i.i:                            ; preds = %if.end11.i.i
  %call1.i17.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i.i)
  %tobool.not.i18.i.i = icmp eq i32 %call1.i17.i.i, 0
  br i1 %tobool.not.i18.i.i, label %land.lhs.true.i19.i.i.in6_dev_get.exit.i_crit_edge, label %land.lhs.true2.i21.i.i

land.lhs.true.i19.i.i.in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %in6_dev_get.exit.i

land.lhs.true2.i21.i.i:                           ; preds = %land.lhs.true.i19.i.i
  %.b4.i20.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i.i, label %land.lhs.true2.i21.i.i.in6_dev_get.exit.i_crit_edge, label %if.then.i22.i.i

land.lhs.true2.i21.i.i.in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true2.i21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %in6_dev_get.exit.i

if.then.i22.i.i:                                  ; preds = %land.lhs.true2.i21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %in6_dev_get.exit.i

in6_dev_get.exit.i:                               ; preds = %if.then.i22.i.i, %land.lhs.true2.i21.i.i.in6_dev_get.exit.i_crit_edge, %land.lhs.true.i19.i.i.in6_dev_get.exit.i_crit_edge, %if.end11.i.i.in6_dev_get.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %81 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i23.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i23.i.i to ptr
  %preempt_count.i.i.i.i24.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i24.i.i, align 4
  %sub.i.i.i.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i24.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %tobool9.not.i.i, label %in6_dev_get.exit.i.enum_netdev_ipv6_ips.exit_crit_edge, label %if.end3.i

in6_dev_get.exit.i.enum_netdev_ipv6_ips.exit_crit_edge: ; preds = %in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enum_netdev_ipv6_ips.exit

if.end3.i:                                        ; preds = %in6_dev_get.exit.i
  %lock.i = getelementptr inbounds %struct.inet6_dev, ptr %78, i32 0, i32 24
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #10
  %addr_list.i = getelementptr inbounds %struct.inet6_dev, ptr %78, i32 0, i32 2
  %85 = ptrtoint ptr %addr_list.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn79.i = load ptr, ptr %addr_list.i, align 4
  %cmp6.not81.i = icmp eq ptr %.pn79.i, %addr_list.i
  br i1 %cmp6.not81.i, label %if.end3.i.for.end.i24_crit_edge, label %if.end3.i.for.body.i20_crit_edge

if.end3.i.for.body.i20_crit_edge:                 ; preds = %if.end3.i
  br label %for.body.i20

if.end3.i.for.end.i24_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i24

for.body.i20:                                     ; preds = %cleanup.i23.for.body.i20_crit_edge, %if.end3.i.for.body.i20_crit_edge
  %.pn82.i = phi ptr [ %.pn.i, %cleanup.i23.for.body.i20_crit_edge ], [ %.pn79.i, %if.end3.i.for.body.i20_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i19 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 2848, i32 noundef 36) #13
  %tobool9.not.i = icmp eq ptr %call7.i.i.i19, null
  br i1 %tobool9.not.i, label %for.body.i20.cleanup.i23_crit_edge, label %if.end11.i

for.body.i20.cleanup.i23_crit_edge:               ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i23

if.end11.i:                                       ; preds = %for.body.i20
  %ifp.083.i = getelementptr i8, ptr %.pn82.i, i32 -228
  %sin6.i = getelementptr inbounds %struct.sin6_list, ptr %call7.i.i.i19, i32 0, i32 1
  %87 = ptrtoint ptr %sin6.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 10, ptr %sin6.i, align 8
  %sin6_addr.i = getelementptr inbounds %struct.sin6_list, ptr %call7.i.i.i19, i32 0, i32 1, i32 3
  %88 = call ptr @memcpy(ptr %sin6_addr.i, ptr %ifp.083.i, i32 16)
  %89 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %69, align 4
  %call.i.i68.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i19, ptr noundef %90, ptr noundef nonnull %sin6_list.i) #10
  br i1 %call.i.i68.i, label %if.end.i.i.i22, label %if.end11.i.cleanup.i23_crit_edge

if.end11.i.cleanup.i23_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i23

if.end.i.i.i22:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i.i19, ptr %69, align 4
  %92 = ptrtoint ptr %call7.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %sin6_list.i, ptr %call7.i.i.i19, align 8
  %prev3.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i19, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev3.i.i.i21, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %call7.i.i.i19, ptr %90, align 4
  br label %cleanup.i23

cleanup.i23:                                      ; preds = %if.end.i.i.i22, %if.end11.i.cleanup.i23_crit_edge, %for.body.i20.cleanup.i23_crit_edge
  %95 = ptrtoint ptr %.pn82.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn.i = load ptr, ptr %.pn82.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, %addr_list.i
  br i1 %cmp6.not.i, label %cleanup.i23.for.end.i24_crit_edge, label %cleanup.i23.for.body.i20_crit_edge

cleanup.i23.for.body.i20_crit_edge:               ; preds = %cleanup.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i20

cleanup.i23.for.end.i24_crit_edge:                ; preds = %cleanup.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i24

for.end.i24:                                      ; preds = %cleanup.i23.for.end.i24_crit_edge, %if.end3.i.for.end.i24_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #10
  %refcnt.i69.i = getelementptr inbounds %struct.inet6_dev, ptr %78, i32 0, i32 25
  %call.i.i.i.i.i.i70.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i69.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @llvm.prefetch.p0(ptr %refcnt.i69.i, i32 1, i32 3, i32 1) #10
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i69.i, ptr %refcnt.i69.i, i32 1, ptr elementtype(i32) %refcnt.i69.i) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i72.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i71.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i71.i, label %if.end5.i.i.i.i.i.in6_dev_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !77

if.end5.i.i.i.i.i.in6_dev_put.exit.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %in6_dev_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i69.i, i32 noundef 3) #10
  br label %in6_dev_put.exit.i

if.then.i72.i:                                    ; preds = %for.end.i24
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @in6_dev_finish_destroy(ptr noundef nonnull %78) #10
  br label %in6_dev_put.exit.i

in6_dev_put.exit.i:                               ; preds = %if.then.i72.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.in6_dev_put.exit.i_crit_edge
  %97 = ptrtoint ptr %sin6_list.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sin6_list.i, align 4
  %cmp30.not84.i = icmp eq ptr %98, %sin6_list.i
  br i1 %cmp30.not84.i, label %in6_dev_put.exit.i.enum_netdev_ipv6_ips.exit_crit_edge, label %for.body32.lr.ph.i

in6_dev_put.exit.i.enum_netdev_ipv6_ips.exit_crit_edge: ; preds = %in6_dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enum_netdev_ipv6_ips.exit

for.body32.lr.ph.i:                               ; preds = %in6_dev_put.exit.i
  %99 = getelementptr inbounds %struct.anon.160, ptr %gid.i, i32 0, i32 1
  %arrayidx1.i.i.i.i.i = getelementptr inbounds i32, ptr %gid.i, i32 1
  %arrayidx1.i1.i.i.i.i = getelementptr inbounds [4 x i32], ptr %gid.i, i32 0, i32 3
  %port_data.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 11
  %gid_type.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %gid_attr.i, i32 0, i32 3
  br label %for.body32.i

for.body32.i:                                     ; preds = %list_del.exit.i28.for.body32.i_crit_edge, %for.body32.lr.ph.i
  %sin6_iter.085.i = phi ptr [ %98, %for.body32.lr.ph.i ], [ %sin6_temp.0.i, %list_del.exit.i28.for.body32.i_crit_edge ]
  %100 = ptrtoint ptr %sin6_iter.085.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %sin6_temp.0.i = load ptr, ptr %sin6_iter.085.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid.i) #10
  %sin633.i = getelementptr inbounds %struct.sin6_list, ptr %sin6_iter.085.i, i32 0, i32 1
  %101 = call ptr @memset(ptr %gid.i, i32 255, i32 16)
  %102 = ptrtoint ptr %sin633.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %sin633.i, align 2
  %104 = zext i16 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %103, label %for.body32.i.rdma_ip2gid.exit.i_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb1.i.i
  ]

for.body32.i.rdma_ip2gid.exit.i_crit_edge:        ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_ip2gid.exit.i

sw.bb.i.i:                                        ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i.i = getelementptr inbounds %struct.sin6_list, ptr %sin6_iter.085.i, i32 0, i32 1, i32 2
  %105 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sin_addr.i.i, align 4
  %107 = ptrtoint ptr %gid.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %gid.i, align 8
  %108 = ptrtoint ptr %arrayidx1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %arrayidx1.i.i.i.i.i, align 4
  %109 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 65535, ptr %99, align 8
  %110 = ptrtoint ptr %arrayidx1.i1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %106, ptr %arrayidx1.i1.i.i.i.i, align 4
  br label %rdma_ip2gid.exit.i

sw.bb1.i.i:                                       ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr.i.i = getelementptr inbounds %struct.sin6_list, ptr %sin6_iter.085.i, i32 0, i32 1, i32 3
  %111 = call ptr @memcpy(ptr %gid.i, ptr %sin6_addr.i.i, i32 16)
  br label %rdma_ip2gid.exit.i

rdma_ip2gid.exit.i:                               ; preds = %sw.bb1.i.i, %sw.bb.i.i, %for.body32.i.rdma_ip2gid.exit.i_crit_edge
  %112 = ptrtoint ptr %port_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %port_data.i.i.i.i, align 8
  %core_cap_flags.i.i.i.i = getelementptr %struct.ib_port_data, ptr %113, i32 %port, i32 1, i32 2
  %114 = ptrtoint ptr %core_cap_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %core_cap_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %115, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %and.i18.i.i.i = lshr i32 %115, 20
  %116 = and i32 %and.i18.i.i.i, 2
  %and.i21.i.i.i = lshr i32 %115, 21
  %117 = and i32 %and.i21.i.i.i, 4
  %118 = or i32 %117, %116
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i.i, i32 1, i32 %118
  %and.i.i = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i73.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i73.i, label %rdma_ip2gid.exit.i.for.inc.i.i_crit_edge, label %if.then.i74.i

rdma_ip2gid.exit.i.for.inc.i.i_crit_edge:         ; preds = %rdma_ip2gid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i74.i:                                    ; preds = %rdma_ip2gid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %gid_type.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %gid_type.i.i, align 8
  %call1.i.i25 = call i32 @ib_cache_gid_add(ptr noundef %ib_dev, i32 noundef %port, ptr noundef nonnull %gid.i, ptr noundef nonnull %gid_attr.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i74.i, %rdma_ip2gid.exit.i.for.inc.i.i_crit_edge
  %and.1.i.i = and i32 %retval.0.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %gid_type.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %gid_type.i.i, align 8
  %call1.1.i.i = call i32 @ib_cache_gid_add(ptr noundef %ib_dev, i32 noundef %port, ptr noundef nonnull %gid.i, ptr noundef nonnull %gid_attr.i) #10
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %and.2.i.i = and i32 %retval.0.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.update_gid.exit.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.update_gid.exit.i_crit_edge:        ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_gid.exit.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %gid_type.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %gid_type.i.i, align 8
  %call1.2.i.i = call i32 @ib_cache_gid_add(ptr noundef %ib_dev, i32 noundef %port, ptr noundef nonnull %gid.i, ptr noundef nonnull %gid_attr.i) #10
  br label %update_gid.exit.i

update_gid.exit.i:                                ; preds = %if.then.2.i.i, %for.inc.1.i.i.update_gid.exit.i_crit_edge
  %call.i.i76.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %sin6_iter.085.i) #10
  br i1 %call.i.i76.i, label %if.end.i.i77.i, label %update_gid.exit.i.list_del.exit.i28_crit_edge

update_gid.exit.i.list_del.exit.i28_crit_edge:    ; preds = %update_gid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i28

if.end.i.i77.i:                                   ; preds = %update_gid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %sin6_iter.085.i, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %prev.i.i.i26, align 4
  %124 = ptrtoint ptr %sin6_iter.085.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sin6_iter.085.i, align 4
  %prev1.i.i.i.i27 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %prev1.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %123, ptr %prev1.i.i.i.i27, align 4
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %125, ptr %123, align 4
  br label %list_del.exit.i28

list_del.exit.i28:                                ; preds = %if.end.i.i77.i, %update_gid.exit.i.list_del.exit.i28_crit_edge
  %128 = ptrtoint ptr %sin6_iter.085.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 256 to ptr), ptr %sin6_iter.085.i, align 4
  %prev.i78.i = getelementptr inbounds %struct.list_head, ptr %sin6_iter.085.i, i32 0, i32 1
  %129 = ptrtoint ptr %prev.i78.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i78.i, align 4
  call void @kfree(ptr noundef %sin6_iter.085.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid.i) #10
  %cmp30.not.i = icmp eq ptr %sin6_temp.0.i, %sin6_list.i
  br i1 %cmp30.not.i, label %list_del.exit.i28.enum_netdev_ipv6_ips.exit_crit_edge, label %list_del.exit.i28.for.body32.i_crit_edge

list_del.exit.i28.for.body32.i_crit_edge:         ; preds = %list_del.exit.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.i

list_del.exit.i28.enum_netdev_ipv6_ips.exit_crit_edge: ; preds = %list_del.exit.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %enum_netdev_ipv6_ips.exit

enum_netdev_ipv6_ips.exit:                        ; preds = %list_del.exit.i28.enum_netdev_ipv6_ips.exit_crit_edge, %in6_dev_put.exit.i.enum_netdev_ipv6_ips.exit_crit_edge, %in6_dev_get.exit.i.enum_netdev_ipv6_ips.exit_crit_edge, %enum_netdev_ipv4_ips.exit.enum_netdev_ipv6_ips.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sin6_list.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %gid_attr.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_has_upper_dev_all_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_cache_gid_set_default_gid(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_eth_active_slave_of_bonding_rcu(ptr noundef readnone %dev, ptr noundef %upper) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %upper, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.net_device, ptr %upper, i32 0, i32 14
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end5_crit_edge, label %netif_is_bond_master.exit

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

netif_is_bond_master.exit:                        ; preds = %land.lhs.true
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %upper, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and1.i = and i64 %3, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i.not = icmp eq i64 %and1.i, 0
  br i1 %tobool2.i.not, label %netif_is_bond_master.exit.if.end5_crit_edge, label %if.then

netif_is_bond_master.exit.if.end5_crit_edge:      ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %netif_is_bond_master.exit
  %curr_active_slave.i = getelementptr i8, ptr %upper, i32 2308
  %4 = ptrtoint ptr %curr_active_slave.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %curr_active_slave.i, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %if.then.do.end8.i_crit_edge, label %lor.lhs.false.i

if.then.do.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %if.then
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i9 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @bond_option_active_slave_get_rcu.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_option_active_slave_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 349, ptr noundef nonnull @.str.5) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %if.then.do.end8.i_crit_edge
  %params.i.i = getelementptr i8, ptr %upper, i32 2608
  %6 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params.i.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %7, label %do.end8.i.if.end5_crit_edge [
    i32 1, label %do.end8.i.bond_uses_primary.exit.i_crit_edge
    i32 5, label %do.end8.i.bond_uses_primary.exit.i_crit_edge15
    i32 6, label %do.end8.i.bond_uses_primary.exit.i_crit_edge16
  ]

do.end8.i.bond_uses_primary.exit.i_crit_edge16:   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_uses_primary.exit.i

do.end8.i.bond_uses_primary.exit.i_crit_edge15:   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_uses_primary.exit.i

do.end8.i.bond_uses_primary.exit.i_crit_edge:     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_uses_primary.exit.i

do.end8.i.if.end5_crit_edge:                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

bond_uses_primary.exit.i:                         ; preds = %do.end8.i.bond_uses_primary.exit.i_crit_edge, %do.end8.i.bond_uses_primary.exit.i_crit_edge15, %do.end8.i.bond_uses_primary.exit.i_crit_edge16
  %tobool12.not.i = icmp eq ptr %5, null
  br i1 %tobool12.not.i, label %bond_uses_primary.exit.i.if.end5_crit_edge, label %bond_option_active_slave_get_rcu.exit

bond_uses_primary.exit.i.if.end5_crit_edge:       ; preds = %bond_uses_primary.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

bond_option_active_slave_get_rcu.exit:            ; preds = %bond_uses_primary.exit.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 8
  %tobool3.not = icmp eq ptr %10, null
  %cmp = icmp eq ptr %10, %dev
  %cond = select i1 %cmp, i32 1, i32 2
  br i1 %tobool3.not, label %bond_option_active_slave_get_rcu.exit.if.end5_crit_edge, label %bond_option_active_slave_get_rcu.exit.return_crit_edge

bond_option_active_slave_get_rcu.exit.return_crit_edge: ; preds = %bond_option_active_slave_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

bond_option_active_slave_get_rcu.exit.if.end5_crit_edge: ; preds = %bond_option_active_slave_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %bond_option_active_slave_get_rcu.exit.if.end5_crit_edge, %bond_uses_primary.exit.i.if.end5_crit_edge, %do.end8.i.if.end5_crit_edge, %netif_is_bond_master.exit.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %return

return:                                           ; preds = %if.end5, %bond_option_active_slave_get_rcu.exit.return_crit_edge
  %retval.1 = phi i32 [ %cond, %bond_option_active_slave_get_rcu.exit.return_crit_edge ], [ 4, %if.end5 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_cache_gid_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_cache_gid_del(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @in6_dev_finish_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inetaddr_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  %in = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #10
  %0 = getelementptr inbounds %struct.sockaddr_in, ptr %in, i32 0, i32 2
  %1 = call ptr @memset(ptr %in, i32 255, i32 16)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2, ptr %in, align 4
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 5
  %3 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifa_address, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %0, align 4
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 2
  %6 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifa_dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call fastcc void @addr_event(i32 noundef %event, ptr noundef nonnull %in, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @addr_event(i32 noundef %event, ptr nocapture noundef readonly %sa, ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.not = icmp eq i16 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %gid_op.0 = phi i32 [ 0, %sw.bb2 ], [ %event, %if.end.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 112) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #10
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @addr_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry9, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @update_gid_event_work_handler, ptr %func, align 4
  %gid = getelementptr inbounds %struct.update_gid_event_work, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sa, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %9, label %do.body.rdma_ip2gid.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

do.body.rdma_ip2gid.exit_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_ip2gid.exit

sw.bb.i:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %sa, i32 0, i32 2
  %11 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sin_addr.i, align 4
  %13 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %gid, align 8
  %arrayidx1.i.i.i.i = getelementptr i32, ptr %gid, i32 1
  %14 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx1.i.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.update_gid_event_work, ptr %call7.i, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65535, ptr %arrayidx2.i.i.i, align 8
  %arrayidx1.i1.i.i.i = getelementptr [4 x i32], ptr %gid, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx1.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %12, ptr %arrayidx1.i1.i.i.i, align 4
  br label %rdma_ip2gid.exit

sw.bb1.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sa, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %gid, ptr %sin6_addr.i, i32 16)
  br label %rdma_ip2gid.exit

rdma_ip2gid.exit:                                 ; preds = %sw.bb1.i, %sw.bb.i, %do.body.rdma_ip2gid.exit_crit_edge
  %gid_op12 = getelementptr inbounds %struct.update_gid_event_work, ptr %call7.i, i32 0, i32 3
  %18 = ptrtoint ptr %gid_op12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %gid_op.0, ptr %gid_op12, align 8
  %gid_attr = getelementptr inbounds %struct.update_gid_event_work, ptr %call7.i, i32 0, i32 2
  %19 = call ptr @memset(ptr %gid_attr, i32 0, i32 40)
  %tobool.not.i = icmp eq ptr %ndev, null
  br i1 %tobool.not.i, label %rdma_ip2gid.exit.dev_hold.exit_crit_edge, label %do.body1.i

rdma_ip2gid.exit.dev_hold.exit_crit_edge:         ; preds = %rdma_ip2gid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %rdma_ip2gid.exit
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, 1
  store i32 %add13.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !76

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #10, !srcloc !83
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %rdma_ip2gid.exit.dev_hold.exit_crit_edge
  %34 = ptrtoint ptr %gid_attr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ndev, ptr %gid_attr, align 8
  %35 = load ptr, ptr @gid_cache_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %dev_hold.exit, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_gid_event_work_handler(ptr noundef %_work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gid_attr = getelementptr inbounds %struct.update_gid_event_work, ptr %_work, i32 0, i32 2
  %0 = ptrtoint ptr %gid_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gid_attr, align 8
  tail call void @ib_enum_all_roce_netdevs(ptr noundef nonnull @is_eth_port_of_netdev_filter, ptr noundef %1, ptr noundef nonnull @callback_for_addr_gid_device_scan, ptr noundef %_work) #10
  %2 = ptrtoint ptr %gid_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gid_attr, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dev_put.exit_crit_edge, label %do.body1.i

entry.dev_put.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

do.body1.i:                                       ; preds = %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, -1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !76

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #10, !srcloc !83
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %entry.dev_put.exit_crit_edge
  tail call void @kfree(ptr noundef %_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_enum_all_roce_netdevs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @callback_for_addr_gid_device_scan(ptr noundef %device, i32 noundef %port, ptr nocapture noundef readnone %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gid_op = getelementptr inbounds %struct.update_gid_event_work, ptr %cookie, i32 0, i32 3
  %0 = ptrtoint ptr %gid_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gid_op, align 8
  %gid = getelementptr inbounds %struct.update_gid_event_work, ptr %cookie, i32 0, i32 1
  %gid_attr = getelementptr inbounds %struct.update_gid_event_work, ptr %cookie, i32 0, i32 2
  %port_data.i.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %port_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_data.i.i.i, align 8
  %core_cap_flags.i.i.i = getelementptr %struct.ib_port_data, ptr %3, i32 %port, i32 1, i32 2
  %4 = ptrtoint ptr %core_cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_cap_flags.i.i.i, align 4
  %and.i.i.i = and i32 %5, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %and.i18.i.i = lshr i32 %5, 20
  %6 = and i32 %and.i18.i.i, 2
  %and.i21.i.i = lshr i32 %5, 21
  %7 = and i32 %and.i21.i.i, 4
  %8 = or i32 %7, %6
  %retval.0.i.i = select i1 %tobool.i.not.i.i, i32 1, i32 %8
  %gid_type.i = getelementptr inbounds %struct.update_gid_event_work, ptr %cookie, i32 0, i32 2, i32 3
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  %9 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %gid_type.i, align 8
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %1, label %if.then.i.for.inc.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb2.i
  ]

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @ib_cache_gid_add(ptr noundef %device, i32 noundef %port, ptr noundef %gid, ptr noundef %gid_attr) #10
  br label %for.inc.i

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @ib_cache_gid_del(ptr noundef %device, i32 noundef %port, ptr noundef %gid, ptr noundef %gid_attr) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb2.i, %sw.bb.i, %if.then.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %and.1.i = and i32 %retval.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %11 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %gid_type.i, align 8
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %1, label %if.then.1.i.for.inc.1.i_crit_edge [
    i32 1, label %sw.bb.1.i
    i32 0, label %sw.bb2.1.i
  ]

if.then.1.i.for.inc.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

sw.bb2.1.i:                                       ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.1.i = tail call i32 @ib_cache_gid_del(ptr noundef %device, i32 noundef %port, ptr noundef %gid, ptr noundef %gid_attr) #10
  br label %for.inc.1.i

sw.bb.1.i:                                        ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.1.i = tail call i32 @ib_cache_gid_add(ptr noundef %device, i32 noundef %port, ptr noundef %gid, ptr noundef %gid_attr) #10
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.bb.1.i, %sw.bb2.1.i, %if.then.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %and.2.i = and i32 %retval.0.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.update_gid.exit_crit_edge, label %if.then.2.i

for.inc.1.i.update_gid.exit_crit_edge:            ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_gid.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  %13 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %gid_type.i, align 8
  %14 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %1, label %if.then.2.i.update_gid.exit_crit_edge [
    i32 1, label %sw.bb.2.i
    i32 0, label %sw.bb2.2.i
  ]

if.then.2.i.update_gid.exit_crit_edge:            ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_gid.exit

sw.bb2.2.i:                                       ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.2.i = tail call i32 @ib_cache_gid_del(ptr noundef %device, i32 noundef %port, ptr noundef %gid, ptr noundef %gid_attr) #10
  br label %update_gid.exit

sw.bb.2.i:                                        ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.2.i = tail call i32 @ib_cache_gid_add(ptr noundef %device, i32 noundef %port, ptr noundef %gid, ptr noundef %gid_attr) #10
  br label %update_gid.exit

update_gid.exit:                                  ; preds = %sw.bb.2.i, %sw.bb2.2.i, %if.then.2.i.update_gid.exit_crit_edge, %for.inc.1.i.update_gid.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inet6addr_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  %in6 = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %in6) #10
  %0 = getelementptr inbounds %struct.sockaddr_in6, ptr %in6, i32 0, i32 3
  %1 = call ptr @memset(ptr %in6, i32 255, i32 28)
  %2 = ptrtoint ptr %in6 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 10, ptr %in6, align 4
  %3 = call ptr @memcpy(ptr %0, ptr %ptr, i32 16)
  %idev = getelementptr inbounds %struct.inet6_ifaddr, ptr %ptr, i32 0, i32 16
  %4 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call fastcc void @addr_event(i32 noundef %event, ptr noundef nonnull %in6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdevice_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 5, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge61
    i32 6, label %sw.bb4
    i32 8, label %sw.bb10
    i32 21, label %sw.bb21
    i32 13, label %sw.bb22
  ]

if.end.sw.bb_crit_edge61:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge61
  %5 = load i64, ptr @netdevice_event.bonding_default_del_cmd_join, align 8
  %6 = load i64, ptr @add_default_gid_cmd, align 8
  %7 = load i64, ptr @add_cmd, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %reg_state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %8 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load)
  %cmp5 = icmp ult i8 %bf.load, 3
  br i1 %cmp5, label %if.then7, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %9 = load i64, ptr @netdevice_event.del_cmd, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %10 = load i64, ptr @netdevice_event.netdev_del_cmd, align 8
  %reg_state12 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %11 = ptrtoint ptr %reg_state12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load13 = load i8, ptr %reg_state12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load13)
  %cmp15 = icmp eq i8 %bf.load13, 1
  br i1 %cmp15, label %if.then17, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then17:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = load i64, ptr @add_default_gid_cmd, align 8
  %13 = load i64, ptr @add_cmd, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %linking.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %14 = ptrtoint ptr %linking.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %linking.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %16 = load i64, ptr @ndev_event_link.bonding_default_del_cmd, align 8
  %upper_dev.i.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %17 = ptrtoint ptr %upper_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %upper_dev.i.i, align 4
  %19 = load i64, ptr @bonding_default_add_cmd, align 8
  %20 = load i64, ptr @add_cmd_upper_ips, align 8
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %21 = load i64, ptr @ndev_event_unlink.upper_ips_del_cmd, align 8
  %upper_dev.i4.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %22 = ptrtoint ptr %upper_dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %upper_dev.i4.i, align 4
  %24 = load i64, ptr @add_cmd, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = load i64, ptr @netdevice_event.bonding_event_ips_del_cmd, align 8
  %26 = load i64, ptr @bonding_default_add_cmd, align 8
  %27 = load i64, ptr @add_cmd_upper_ips, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %if.else.i, %if.then.i, %if.then17, %sw.bb10.sw.epilog_crit_edge, %if.then7, %sw.bb
  %cmds.sroa.0.sroa.0.0 = phi i64 [ %25, %sw.bb22 ], [ %21, %if.else.i ], [ %16, %if.then.i ], [ %10, %if.then17 ], [ %10, %sw.bb10.sw.epilog_crit_edge ], [ %9, %if.then7 ], [ %5, %sw.bb ]
  %cmds.sroa.13.sroa.0.0 = phi i64 [ %26, %sw.bb22 ], [ %24, %if.else.i ], [ %19, %if.then.i ], [ %12, %if.then17 ], [ 0, %sw.bb10.sw.epilog_crit_edge ], [ 0, %if.then7 ], [ %6, %sw.bb ]
  %cmds.sroa.20.sroa.0.0 = phi i64 [ %27, %sw.bb22 ], [ 0, %if.else.i ], [ %20, %if.then.i ], [ %13, %if.then17 ], [ 0, %sw.bb10.sw.epilog_crit_edge ], [ 0, %if.then7 ], [ %7, %sw.bb ]
  %cmds.sroa.10.1 = phi ptr [ null, %sw.bb22 ], [ %23, %if.else.i ], [ %1, %if.then.i ], [ null, %if.then17 ], [ null, %sw.bb10.sw.epilog_crit_edge ], [ null, %if.then7 ], [ null, %sw.bb ]
  %cmds.sroa.12.1 = phi ptr [ null, %sw.bb22 ], [ null, %if.else.i ], [ %18, %if.then.i ], [ null, %if.then17 ], [ null, %sw.bb10.sw.epilog_crit_edge ], [ null, %if.then7 ], [ null, %sw.bb ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 92) #13
  %tobool.not.i34 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i34, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %cmds1.i = getelementptr inbounds %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %cmds1.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %cmds.sroa.0.sroa.0.0, ptr %cmds1.i, align 4
  %cmds.sroa.10.0.cmds1.i.sroa_idx = getelementptr inbounds %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %cmds.sroa.10.0.cmds1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cmds.sroa.10.1, ptr %cmds.sroa.10.0.cmds1.i.sroa_idx, align 4
  %cmds.sroa.12.0.cmds1.i.sroa_idx = getelementptr inbounds %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %cmds.sroa.12.0.cmds1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cmds.sroa.12.1, ptr %cmds.sroa.12.0.cmds1.i.sroa_idx, align 8
  %cmds.sroa.13.0.cmds1.i.sroa_idx = getelementptr inbounds %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %cmds.sroa.13.0.cmds1.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %cmds.sroa.13.sroa.0.0, ptr %cmds.sroa.13.0.cmds1.i.sroa_idx, align 4
  %cmds.sroa.18.0.cmds1.i.sroa_idx = getelementptr inbounds %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 2
  %33 = ptrtoint ptr %cmds.sroa.18.0.cmds1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cmds.sroa.12.1, ptr %cmds.sroa.18.0.cmds1.i.sroa_idx, align 4
  %cmds.sroa.19.0.cmds1.i.sroa_idx = getelementptr inbounds %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 3
  %34 = ptrtoint ptr %cmds.sroa.19.0.cmds1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cmds.sroa.12.1, ptr %cmds.sroa.19.0.cmds1.i.sroa_idx, align 8
  %cmds.sroa.20.0.cmds1.i.sroa_idx = getelementptr inbounds %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %cmds.sroa.20.0.cmds1.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %cmds.sroa.20.sroa.0.0, ptr %cmds.sroa.20.0.cmds1.i.sroa_idx, align 4
  %cmds.sroa.24.0.cmds1.i.sroa_idx = getelementptr inbounds %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 2
  %36 = ptrtoint ptr %cmds.sroa.24.0.cmds1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cmds.sroa.12.1, ptr %cmds.sroa.24.0.cmds1.i.sroa_idx, align 4
  %cmds.sroa.25.0.cmds1.i.sroa_idx = getelementptr inbounds %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 3
  %37 = ptrtoint ptr %cmds.sroa.25.0.cmds1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cmds.sroa.12.1, ptr %cmds.sroa.25.0.cmds1.i.sroa_idx, align 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %dev_hold.exit13.i.land.rhs.i_crit_edge, %if.end.i
  %i.014.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %dev_hold.exit13.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 %i.014.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %39, null
  br i1 %tobool3.not.i, label %land.rhs.i.do.body.i_crit_edge, label %for.body.i

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %ndev6.i = getelementptr %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 %i.014.i, i32 2
  %40 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev6.i, align 4
  %tobool7.not.i = icmp eq ptr %41, null
  br i1 %tobool7.not.i, label %if.then8.i, label %for.body.i.if.end12.i_crit_edge

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %1, ptr %ndev6.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %for.body.i.if.end12.i_crit_edge
  %filter_ndev.i = getelementptr %struct.netdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 %i.014.i, i32 3
  %43 = ptrtoint ptr %filter_ndev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %filter_ndev.i, align 8
  %tobool15.not.i = icmp eq ptr %44, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end12.i.if.end20.i_crit_edge

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %filter_ndev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %1, ptr %filter_ndev.i, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end20.i_crit_edge
  %46 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev6.i, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end20.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.end20.i.dev_hold.exit.i_crit_edge:             ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.end20.i
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 118
  %49 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %57, %51
  %58 = inttoptr i32 %add.i.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add13.i.i = add i32 %60, 1
  store i32 %add13.i.i, ptr %58, align 4
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i.i = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !76

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #10, !srcloc !83
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.end20.i.dev_hold.exit.i_crit_edge
  %62 = ptrtoint ptr %filter_ndev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %filter_ndev.i, align 8
  %tobool.not.i1.i = icmp eq ptr %63, null
  br i1 %tobool.not.i1.i, label %dev_hold.exit.i.dev_hold.exit13.i_crit_edge, label %do.body1.i10.i

dev_hold.exit.i.dev_hold.exit13.i_crit_edge:      ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit13.i

do.body1.i10.i:                                   ; preds = %dev_hold.exit.i
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %pcpu_refcnt.i2.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 118
  %65 = ptrtoint ptr %pcpu_refcnt.i2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcpu_refcnt.i2.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i3.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i3.i to ptr
  %cpu.i4.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu.i4.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu.i4.i, align 4
  %arrayidx.i5.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i5.i, align 4
  %add.i6.i = add i32 %73, %67
  %74 = inttoptr i32 %add.i6.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add13.i7.i = add i32 %76, 1
  store i32 %add13.i7.i, ptr %74, align 4
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i8.i = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i8.i)
  %tobool24.not.i9.i = icmp eq i32 %and.i.i.i8.i, 0
  br i1 %tobool24.not.i9.i, label %if.then28.i11.i, label %do.body1.i10.i.do.end30.i12.i_crit_edge, !prof !76

do.body1.i10.i.do.end30.i12.i_crit_edge:          ; preds = %do.body1.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i12.i

if.then28.i11.i:                                  ; preds = %do.body1.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i12.i

do.end30.i12.i:                                   ; preds = %if.then28.i11.i, %do.body1.i10.i.do.end30.i12.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #10, !srcloc !83
  br label %dev_hold.exit13.i

dev_hold.exit13.i:                                ; preds = %do.end30.i12.i, %dev_hold.exit.i.dev_hold.exit13.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %dev_hold.exit13.i.do.body.i_crit_edge, label %dev_hold.exit13.i.land.rhs.i_crit_edge

dev_hold.exit13.i.land.rhs.i_crit_edge:           ; preds = %dev_hold.exit13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

dev_hold.exit13.i.do.body.i_crit_edge:            ; preds = %dev_hold.exit13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %dev_hold.exit13.i.do.body.i_crit_edge, %land.rhs.i.do.body.i_crit_edge
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #10
  %78 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @netdevice_queue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry30.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %entry30.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %entry30.i, ptr %entry30.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %entry30.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @netdevice_event_work_handler, ptr %func.i, align 4
  %82 = load ptr, ptr @gid_cache_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %82, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %sw.epilog.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @del_netdev_ips(ptr noundef %ib_dev, i32 noundef %port, ptr nocapture noundef readnone %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ib_cache_gid_del_all_netdev_gids(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %cookie) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @del_netdev_default_ips_join(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %rdma_ndev, ptr nocapture noundef readnone %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %rdma_ndev) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end3.critedge, label %do.body1.i

do.body1.i:                                       ; preds = %rcu_read_lock.exit
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, 1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !76

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #10, !srcloc !83
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %dev_hold.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

dev_hold.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %dev_hold.exit
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %dev_hold.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %18 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i17 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i19 = and i64 %23, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i19)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i19, 0
  br i1 %tobool.i.not.i.i, label %rcu_read_unlock.exit.rdma_vlan_dev_real_dev.exit.i_crit_edge, label %cond.true.i.i

rcu_read_unlock.exit.rdma_vlan_dev_real_dev.exit.i_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_vlan_dev_real_dev.exit.i

cond.true.i.i:                                    ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i21.i = tail call ptr @vlan_dev_real_dev(ptr noundef nonnull %call) #10
  br label %rdma_vlan_dev_real_dev.exit.i

rdma_vlan_dev_real_dev.exit.i:                    ; preds = %cond.true.i.i, %rcu_read_unlock.exit.rdma_vlan_dev_real_dev.exit.i_crit_edge
  %cond.i.i = phi ptr [ %call1.i21.i, %cond.true.i.i ], [ null, %rcu_read_unlock.exit.rdma_vlan_dev_real_dev.exit.i_crit_edge ]
  %tobool.not.i20 = icmp eq ptr %rdma_ndev, null
  br i1 %tobool.not.i20, label %rdma_vlan_dev_real_dev.exit.i.do.body1.i31_crit_edge, label %if.end.i

rdma_vlan_dev_real_dev.exit.i.do.body1.i31_crit_edge: ; preds = %rdma_vlan_dev_real_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i31

if.end.i:                                         ; preds = %rdma_vlan_dev_real_dev.exit.i
  %tobool1.not.i = icmp eq ptr %cond.i.i, null
  %spec.select.i = select i1 %tobool1.not.i, ptr %call, ptr %cond.i.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %call, %rdma_ndev
  br i1 %cmp.not.i, label %rcu_read_lock.exit.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i21

rcu_read_lock.exit.i.lor.lhs.false.i_crit_edge:   ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true.i21:                                ; preds = %rcu_read_lock.exit.i
  %call.i22.i = tail call zeroext i1 @netdev_has_upper_dev_all_rcu(ptr noundef nonnull %rdma_ndev, ptr noundef nonnull %call) #10
  br i1 %call.i22.i, label %land.lhs.true.i21.lor.lhs.false.i_crit_edge, label %land.lhs.true.i21.if.then7.i_crit_edge

land.lhs.true.i21.if.then7.i_crit_edge:           ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i21.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i21.lor.lhs.false.i_crit_edge, %rcu_read_lock.exit.i.lor.lhs.false.i_crit_edge
  %call5.i = tail call fastcc i32 @is_eth_active_slave_of_bonding_rcu(ptr noundef nonnull %rdma_ndev, ptr noundef nonnull %spec.select.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 2
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then7.i_crit_edge, label %if.end8.i

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %land.lhs.true.i21.if.then7.i_crit_edge
  %call.i23.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i23.i, label %if.then7.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i26.i

if.then7.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i26.i:                              ; preds = %if.then7.i
  %call1.i24.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call1.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i28.i

land.lhs.true.i26.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i28.i:                             ; preds = %land.lhs.true.i26.i
  %.b4.i27.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27.i, label %land.lhs.true2.i28.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i29.i

land.lhs.true2.i28.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i29.i:                                    ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i29.i, %land.lhs.true2.i28.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i26.i.rcu_read_unlock.exit.i_crit_edge, %if.then7.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %28 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i30.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i30.i to ptr
  %preempt_count.i.i.i.i31.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i31.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i31.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %do.body1.i31

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %call.i32.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i32.i, label %if.end8.i.rcu_read_unlock.exit42.i_crit_edge, label %land.lhs.true.i35.i

if.end8.i.rcu_read_unlock.exit42.i_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit42.i

land.lhs.true.i35.i:                              ; preds = %if.end8.i
  %call1.i33.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33.i)
  %tobool.not.i34.i = icmp eq i32 %call1.i33.i, 0
  br i1 %tobool.not.i34.i, label %land.lhs.true.i35.i.rcu_read_unlock.exit42.i_crit_edge, label %land.lhs.true2.i37.i

land.lhs.true.i35.i.rcu_read_unlock.exit42.i_crit_edge: ; preds = %land.lhs.true.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit42.i

land.lhs.true2.i37.i:                             ; preds = %land.lhs.true.i35.i
  %.b4.i36.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36.i, label %land.lhs.true2.i37.i.rcu_read_unlock.exit42.i_crit_edge, label %if.then.i38.i

land.lhs.true2.i37.i.rcu_read_unlock.exit42.i_crit_edge: ; preds = %land.lhs.true2.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit42.i

if.then.i38.i:                                    ; preds = %land.lhs.true2.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit42.i

rcu_read_unlock.exit42.i:                         ; preds = %if.then.i38.i, %land.lhs.true2.i37.i.rcu_read_unlock.exit42.i_crit_edge, %land.lhs.true.i35.i.rcu_read_unlock.exit42.i_crit_edge, %if.end8.i.rcu_read_unlock.exit42.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %32 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i39.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i39.i to ptr
  %preempt_count.i.i.i.i40.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i40.i, align 4
  %sub.i.i.i41.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i41.i, ptr %preempt_count.i.i.i.i40.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %port_data.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 11
  %36 = ptrtoint ptr %port_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port_data.i.i.i, align 8
  %core_cap_flags.i.i.i = getelementptr %struct.ib_port_data, ptr %37, i32 %port, i32 1, i32 2
  %38 = ptrtoint ptr %core_cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %core_cap_flags.i.i.i, align 4
  %and.i.i43.i = and i32 %39, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43.i)
  %tobool.i.not.i44.i = icmp eq i32 %and.i.i43.i, 0
  %and.i18.i.i = lshr i32 %39, 20
  %40 = and i32 %and.i18.i.i, 2
  %and.i21.i.i = lshr i32 %39, 21
  %41 = and i32 %and.i21.i.i, 4
  %42 = or i32 %41, %40
  %retval.0.i.i = select i1 %tobool.i.not.i44.i, i32 1, i32 %42
  tail call void @ib_cache_gid_set_default_gid(ptr noundef %ib_dev, i32 noundef %port, ptr noundef nonnull %rdma_ndev, i32 noundef %retval.0.i.i, i32 noundef 1) #10
  br label %do.body1.i31

do.body1.i31:                                     ; preds = %rcu_read_unlock.exit42.i, %rcu_read_unlock.exit.i, %rdma_vlan_dev_real_dev.exit.i.do.body1.i31_crit_edge
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %44 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcpu_refcnt.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i24 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i24 to ptr
  %cpu.i25 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i25, align 4
  %arrayidx.i26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i26, align 4
  %add.i27 = add i32 %52, %46
  %53 = inttoptr i32 %add.i27 to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add13.i28 = add i32 %55, -1
  store i32 %add13.i28, ptr %53, align 4
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i29 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i29)
  %tobool24.not.i30 = icmp eq i32 %and.i.i.i29, 0
  br i1 %tobool24.not.i30, label %if.then28.i32, label %do.body1.i31.dev_put.exit_crit_edge, !prof !76

do.body1.i31.dev_put.exit_crit_edge:              ; preds = %do.body1.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

if.then28.i32:                                    ; preds = %do.body1.i31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i32, %do.body1.i31.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #10, !srcloc !83
  br label %if.end3

if.end3.critedge:                                 ; preds = %rcu_read_lock.exit
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i34, label %if.end3.critedge.rcu_read_unlock.exit44_crit_edge, label %land.lhs.true.i37

if.end3.critedge.rcu_read_unlock.exit44_crit_edge: ; preds = %if.end3.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit44

land.lhs.true.i37:                                ; preds = %if.end3.critedge
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit44_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit44_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit44

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit44_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit44_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit44

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit44

rcu_read_unlock.exit44:                           ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit44_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit44_crit_edge, %if.end3.critedge.rcu_read_unlock.exit44_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %57 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i41 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %sub.i.i.i43 = add i32 %60, -1
  store volatile i32 %sub.i.i.i43, ptr %preempt_count.i.i.i.i42, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end3

if.end3:                                          ; preds = %rcu_read_unlock.exit44, %dev_put.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_eth_port_inactive_slave_filter(ptr nocapture noundef readnone %ib_dev, i32 noundef %port, ptr noundef %rdma_ndev, ptr nocapture noundef readnone %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rdma_ndev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef nonnull %rdma_ndev) #10
  %call1 = tail call fastcc i32 @is_eth_active_slave_of_bonding_rcu(ptr noundef nonnull %rdma_ndev, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp = icmp eq i32 %call1, 2
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i6, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %rcu_read_lock.exit
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %4 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i13 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @del_netdev_upper_ips(ptr noundef %ib_dev, i32 noundef %port, ptr nocapture noundef readnone %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @handle_netdev_upper(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %cookie, ptr noundef nonnull @_roce_del_all_netdev_gids)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @upper_device_filter(ptr nocapture noundef readnone %ib_dev, i32 noundef %port, ptr noundef %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rdma_ndev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %rdma_ndev, %cookie
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end2.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end2.rcu_read_lock.exit_crit_edge:             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end2
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end2.rcu_read_lock.exit_crit_edge
  %call.i7 = tail call zeroext i1 @netdev_has_upper_dev_all_rcu(ptr noundef nonnull %rdma_ndev, ptr noundef %cookie) #10
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i8, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %rcu_read_lock.exit
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %4 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i15 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call.i7, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_cache_gid_del_all_netdev_gids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_netdev_upper(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %cookie, ptr nocapture noundef readonly %handle_netdev) unnamed_addr #2 align 64 {
entry:
  %priv = alloca %struct.netdev_nested_priv, align 8
  %upper_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv) #10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %priv, align 8, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %upper_list) #10
  %1 = getelementptr inbounds %struct.list_head, ptr %upper_list, i32 0, i32 1
  %2 = ptrtoint ptr %upper_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %upper_list, ptr %upper_list, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %upper_list, ptr %1, align 4
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %upper_list, ptr %data, align 4
  %5 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %cookie, ptr noundef nonnull @netdev_upper_walk, ptr noundef nonnull %priv) #10
  %call.i24 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i24, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %rcu_read_lock.exit
  %call1.i25 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %9 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i31 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void %handle_netdev(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %cookie) #10, !callees !86
  %13 = ptrtoint ptr %upper_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %upper_list, align 4
  %cmp.not34 = icmp eq ptr %14, %upper_list
  br i1 %cmp.not34, label %rcu_read_unlock.exit.for.end_crit_edge, label %rcu_read_unlock.exit.for.body_crit_edge

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  br label %for.body

rcu_read_unlock.exit.for.end_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %rcu_read_unlock.exit.for.body_crit_edge
  %upper_iter.035 = phi ptr [ %upper_temp.0, %list_del.exit.for.body_crit_edge ], [ %14, %rcu_read_unlock.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %upper_iter.035 to i32
  call void @__asan_load4_noabort(i32 %15)
  %upper_temp.0 = load ptr, ptr %upper_iter.035, align 4
  %upper = getelementptr inbounds %struct.upper_list, ptr %upper_iter.035, i32 0, i32 1
  %16 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %upper, align 4
  call void %handle_netdev(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %17) #10, !callees !86
  %18 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %upper, align 4
  %tobool.not.i33 = icmp eq ptr %19, null
  br i1 %tobool.not.i33, label %for.body.dev_put.exit_crit_edge, label %do.body1.i

for.body.dev_put.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

do.body1.i:                                       ; preds = %for.body
  %20 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !76

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #10, !srcloc !83
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %for.body.dev_put.exit_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %upper_iter.035) #10
  br i1 %call.i.i, label %if.end.i.i, label %dev_put.exit.list_del.exit_crit_edge

dev_put.exit.list_del.exit_crit_edge:             ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %upper_iter.035, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %upper_iter.035 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %upper_iter.035, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %dev_put.exit.list_del.exit_crit_edge
  %40 = ptrtoint ptr %upper_iter.035 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %upper_iter.035, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %upper_iter.035, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %upper_iter.035) #10
  %cmp.not = icmp eq ptr %upper_temp.0, %upper_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %rcu_read_unlock.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upper_list) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_roce_del_all_netdev_gids(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %event_ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ib_cache_gid_del_all_netdev_gids(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %event_ndev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_upper_dev_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_upper_walk(ptr noundef %upper, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %4, ptr noundef %2) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %prev.i, align 4
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %tobool.not.i = icmp eq ptr %upper, null
  br i1 %tobool.not.i, label %list_add_tail.exit.dev_hold.exit_crit_edge, label %do.body1.i

list_add_tail.exit.dev_hold.exit_crit_edge:       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %list_add_tail.exit
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %upper, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i = add i32 %21, 1
  store i32 %add13.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !76

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #10, !srcloc !83
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %list_add_tail.exit.dev_hold.exit_crit_edge
  %upper2 = getelementptr inbounds %struct.upper_list, ptr %call7.i, i32 0, i32 1
  %23 = ptrtoint ptr %upper2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %upper, ptr %upper2, align 8
  br label %cleanup

cleanup:                                          ; preds = %dev_hold.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @add_netdev_ips(ptr noundef %ib_dev, i32 noundef %port, ptr nocapture noundef readnone %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_add_netdev_ips(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %cookie)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @del_default_gids(ptr noundef %ib_dev, i32 noundef %port, ptr nocapture noundef readnone %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 1, i32 2
  %2 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %3, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i18.i = lshr i32 %3, 20
  %4 = and i32 %and.i18.i, 2
  %and.i21.i = lshr i32 %3, 21
  %5 = and i32 %and.i21.i, 4
  %6 = or i32 %5, %4
  %retval.0.i = select i1 %tobool.i.not.i, i32 1, i32 %6
  tail call void @ib_cache_gid_set_default_gid(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %cookie, i32 noundef %retval.0.i, i32 noundef 1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_upper_ndev_bond_master_filter(ptr nocapture noundef readnone %ib_dev, i32 noundef %port, ptr noundef %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rdma_ndev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.net_device, ptr %cookie, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i8 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i8, label %rcu_read_lock.exit.if.end3_crit_edge, label %netif_is_bond_master.exit

rcu_read_lock.exit.if.end3_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

netif_is_bond_master.exit:                        ; preds = %rcu_read_lock.exit
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %cookie, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and1.i = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i.not = icmp eq i64 %and1.i, 0
  br i1 %tobool2.i.not, label %netif_is_bond_master.exit.if.end3_crit_edge, label %land.lhs.true

netif_is_bond_master.exit.if.end3_crit_edge:      ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

land.lhs.true:                                    ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i9 = tail call zeroext i1 @netdev_has_upper_dev_all_rcu(ptr noundef nonnull %rdma_ndev, ptr noundef %cookie) #10
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %netif_is_bond_master.exit.if.end3_crit_edge, %rcu_read_lock.exit.if.end3_crit_edge
  %match.0.off0 = phi i1 [ false, %netif_is_bond_master.exit.if.end3_crit_edge ], [ %call.i9, %land.lhs.true ], [ false, %rcu_read_lock.exit.if.end3_crit_edge ]
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %if.end3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

if.end3.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %if.end3
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %if.end3.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %8 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %match.0.off0, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @add_netdev_upper_ips(ptr noundef %ib_dev, i32 noundef %port, ptr nocapture noundef readnone %rdma_ndev, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @handle_netdev_upper(ptr noundef %ib_dev, i32 noundef %port, ptr noundef %cookie, ptr noundef nonnull @_add_netdev_ips)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdevice_event_work_handler(ptr noundef %_work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %land.rhs

land.rhs:                                         ; preds = %dev_put.exit43.land.rhs_crit_edge, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %inc, %dev_put.exit43.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.netdev_event_work, ptr %_work, i32 0, i32 1, i32 %i.044
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %filter = getelementptr %struct.netdev_event_work, ptr %_work, i32 0, i32 1, i32 %i.044, i32 1
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter, align 4
  %filter_ndev = getelementptr %struct.netdev_event_work, ptr %_work, i32 0, i32 1, i32 %i.044, i32 3
  %4 = ptrtoint ptr %filter_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter_ndev, align 4
  %ndev = getelementptr %struct.netdev_event_work, ptr %_work, i32 0, i32 1, i32 %i.044, i32 2
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  tail call void @ib_enum_all_roce_netdevs(ptr noundef %3, ptr noundef %5, ptr noundef nonnull %1, ptr noundef %7) #10
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.dev_put.exit_crit_edge, label %do.body1.i

for.body.dev_put.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

do.body1.i:                                       ; preds = %for.body
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !63) #10
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
  %add13.i = add i32 %22, -1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !76

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #10, !srcloc !83
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %for.body.dev_put.exit_crit_edge
  %24 = ptrtoint ptr %filter_ndev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %filter_ndev, align 4
  %tobool.not.i31 = icmp eq ptr %25, null
  br i1 %tobool.not.i31, label %dev_put.exit.dev_put.exit43_crit_edge, label %do.body1.i40

dev_put.exit.dev_put.exit43_crit_edge:            ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit43

do.body1.i40:                                     ; preds = %dev_put.exit
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %pcpu_refcnt.i32 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 118
  %27 = ptrtoint ptr %pcpu_refcnt.i32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcpu_refcnt.i32, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i33 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i33 to ptr
  %cpu.i34 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i34, align 4
  %arrayidx.i35 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i35, align 4
  %add.i36 = add i32 %35, %29
  %36 = inttoptr i32 %add.i36 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add13.i37 = add i32 %38, -1
  store i32 %add13.i37, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i.i38 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i38)
  %tobool24.not.i39 = icmp eq i32 %and.i.i.i38, 0
  br i1 %tobool24.not.i39, label %if.then28.i41, label %do.body1.i40.do.end30.i42_crit_edge, !prof !76

do.body1.i40.do.end30.i42_crit_edge:              ; preds = %do.body1.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i42

if.then28.i41:                                    ; preds = %do.body1.i40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i42

do.end30.i42:                                     ; preds = %if.then28.i41, %do.body1.i40.do.end30.i42_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #10, !srcloc !83
  br label %dev_put.exit43

dev_put.exit43:                                   ; preds = %do.end30.i42, %dev_put.exit.dev_put.exit43_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %dev_put.exit43.for.end_crit_edge, label %dev_put.exit43.land.rhs_crit_edge

dev_put.exit43.land.rhs_crit_edge:                ; preds = %dev_put.exit43
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

dev_put.exit43.for.end_crit_edge:                 ; preds = %dev_put.exit43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %dev_put.exit43.for.end_crit_edge, %land.rhs.for.end_crit_edge
  tail call void @kfree(ptr noundef %_work) #10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__ksymtab_roce_gid_type_mask_support, !1, !"__ksymtab_roce_gid_type_mask_support", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 96, i32 1}
!2 = !{ptr @__ksymtab_rdma_roce_rescan_device, !3, !"__ksymtab_rdma_roce_rescan_device", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 516, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 900, i32 17}
!6 = !{ptr @gid_cache_wq, !7, !"gid_cache_wq", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 45, i32 33}
!8 = distinct !{null, !9, !"PORT_CAP_TO_GID_TYPE", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 75, i32 3}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/net/bonding.h", i32 349, i32 24}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 354, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/net/addrconf.h", i32 359, i32 9}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nb_inetaddr, !32, !"nb_inetaddr", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 890, i32 30}
!33 = !{ptr @addr_event.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 844, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nb_inet6addr, !37, !"nb_inet6addr", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 894, i32 30}
!38 = !{ptr @nb_netdevice, !39, !"nb_netdevice", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 886, i32 30}
!40 = !{ptr @netdevice_event.del_cmd, !41, !"del_cmd", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 741, i32 44}
!42 = !{ptr @netdevice_event.bonding_default_del_cmd_join, !43, !"bonding_default_del_cmd_join", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 744, i32 4}
!44 = !{ptr @netdevice_event.netdev_del_cmd, !45, !"netdev_del_cmd", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 749, i32 4}
!46 = !{ptr @netdevice_event.bonding_event_ips_del_cmd, !47, !"bonding_event_ips_del_cmd", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 753, i32 44}
!48 = !{ptr @add_default_gid_cmd, !49, !"add_default_gid_cmd", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 733, i32 43}
!50 = !{ptr @add_cmd, !51, !"add_cmd", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 664, i32 43}
!52 = !{ptr @ndev_event_link.bonding_default_del_cmd, !53, !"bonding_default_del_cmd", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 700, i32 4}
!54 = !{ptr @ndev_event_unlink.upper_ips_del_cmd, !55, !"upper_ips_del_cmd", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 679, i32 4}
!56 = !{ptr @bonding_default_add_cmd, !57, !"bonding_default_add_cmd", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 689, i32 43}
!58 = !{ptr @add_cmd_upper_ips, !59, !"add_cmd_upper_ips", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 669, i32 43}
!60 = !{ptr @netdevice_queue_work.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/core/roce_gid_mgmt.c", i32 657, i32 2}
!62 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2149400911}
!74 = !{i64 2149401177}
!75 = !{i64 2148512706, i64 2148512738, i64 2148512767, i64 2148512801, i64 2148512832, i64 2148512855}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2148600731}
!79 = !{i64 2148515171, i64 2148515203, i64 2148515232, i64 2148515266, i64 2148515297, i64 2148515320}
!80 = !{i64 2149618661}
!81 = !{i64 915856, i64 915917}
!82 = !{i64 918588}
!83 = !{i64 918873}
!84 = !{i8 0, i8 2}
!85 = !{!"auto-init"}
!86 = !{ptr @_add_netdev_ips, ptr @_roce_del_all_netdev_gids}
