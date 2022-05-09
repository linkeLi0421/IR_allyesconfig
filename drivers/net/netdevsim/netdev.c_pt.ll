; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/netdev.c_pt.bc'
source_filename = "../drivers/net/netdevsim/netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nsim_bus_dev = type { %struct.device, %struct.list_head, i32, i32, ptr, i32, i32, %struct.mutex, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nsim_dev_port = type { %struct.list_head, %struct.devlink_port, i32, i32, ptr, ptr, ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.145 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.145 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.netdevsim = type { ptr, ptr, ptr, i64, i64, %struct.u64_stats_sync, ptr, ptr, i32, %struct.xdp_attachment_info, %struct.xdp_attachment_info, i8, i8, i8, i8, i8, %struct.nsim_ipsec, %struct.anon.162, %struct.nsim_ethtool }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nsim_ipsec = type { [33 x %struct.nsim_sa], ptr, i32, i32, i32 }
%struct.nsim_sa = type { ptr, [4 x i32], [4 x i32], i32, i8, i8, i8 }
%struct.anon.162 = type { i32, i32, [2 x [4 x i32]], ptr, [2 x %struct.debugfs_u32_array] }
%struct.debugfs_u32_array = type { ptr, i32 }
%struct.nsim_ethtool = type { i32, i32, i32, %struct.nsim_ethtool_pauseparam, %struct.ethtool_coalesce, %struct.ethtool_ringparam, %struct.ethtool_fecparam }
%struct.nsim_ethtool_pauseparam = type { i8, i8, i8, i8 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nsim_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.netdev_phys_item_id, %struct.list_head, %struct.mutex, i8, i32, i32, i8, i8, i8, ptr, %struct.nsim_dev_health, ptr, %struct.spinlock, i8, i8, i8, i8, %struct.anon.161, ptr, i16 }
%struct.nsim_dev_health = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.161 = type { %struct.udp_tunnel_nic_shared, [2 x [4 x i32]], i8, i8, i8, i8, i8, i32 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.nsim_vf_config = type { i32, i16, i16, i16, i16, i16, [6 x i8], i8, i8, i8 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@nsim_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&(&ns->syncp)->seq\00", [45 x i8] zeroinitializer }, align 32
@nsim_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.6, i32 0, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @nsim_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_netdevsim__591_438_nsim_module_init6 = internal global ptr @nsim_module_init, section ".initcall6.init", align 4
@__exitcall_nsim_module_exit = internal global ptr @nsim_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file592 = internal constant [47 x i8] c"netdevsim.file=drivers/net/netdevsim/netdevsim\00", section ".modinfo", align 1
@__UNIQUE_ID_license593 = internal constant [22 x i8] c"netdevsim.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias594 = internal constant [36 x i8] c"netdevsim.alias=rtnl-link-netdevsim\00", section ".modinfo", align 1
@nsim_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @nsim_start_xmit, ptr null, ptr null, ptr null, ptr @nsim_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_change_mtu, ptr null, ptr null, ptr @nsim_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_set_vf_mac, ptr @nsim_set_vf_vlan, ptr @nsim_set_vf_rate, ptr @nsim_set_vf_spoofchk, ptr @nsim_set_vf_trust, ptr @nsim_get_vf_config, ptr @nsim_set_vf_link_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_set_vf_rss_query_en, ptr @nsim_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_bpf, ptr null, ptr null, ptr null, ptr @nsim_get_devlink_port, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nsim_set_vf_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013Not supported in switchdev mode. Please use devlink API.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nsim_set_vf_rate\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/netdevsim/netdev.c\00", [33 x i8] zeroinitializer }, align 32
@nsim_set_vf_rate._entry_ptr = internal global ptr @nsim_set_vf_rate._entry, section ".printk_index", align 4
@nsim_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nsim_block_cb_list, ptr @nsim_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@nsim_vf_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @nsim_start_xmit, ptr null, ptr null, ptr null, ptr @nsim_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_change_mtu, ptr null, ptr null, ptr @nsim_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_get_devlink_port, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netdevsim\00", [22 x i8] zeroinitializer }, align 32
@nsim_validate.__msg = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"netdevsim: Please use: echo \22[ID] [PORT_COUNT] [NUM_QUEUES]\22 > /sys/bus/netdevsim/new_device\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 350, i32 8 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 358, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"nsim_netdev_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 248, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 271, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 117, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"nsim_block_cb_list\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 212, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"nsim_vf_netdev_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 269, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 402, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.44 = private constant [34 x i8] c"../drivers/net/netdevsim/netdev.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 396, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias594, ptr @__UNIQUE_ID_file592, ptr @__UNIQUE_ID_license593, ptr @__exitcall_nsim_module_exit, ptr @__initcall__kmod_netdevsim__591_438_nsim_module_init6, ptr @nsim_module_exit, ptr @nsim_set_vf_rate._entry, ptr @nsim_set_vf_rate._entry_ptr, ptr @.str, ptr @nsim_create.__key, ptr @.str.1, ptr @nsim_netdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nsim_block_cb_list, ptr @nsim_vf_netdev_ops, ptr @.str.6, ptr @nsim_validate.__msg], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_set_vf_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_vf_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_validate.__msg to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nsim_create(ptr noundef %nsim_dev, ptr noundef %nsim_dev_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev, align 4
  %num_queues = getelementptr inbounds %struct.nsim_bus_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_queues, align 4
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 1792, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @nsim_setup, i32 noundef %3, i32 noundef %3) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %nsim_dev) #10
  %call1.i = tail call ptr @devlink_net(ptr noundef %call.i) #10
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %nd_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %add.ptr.i, align 8
  %syncp = getelementptr i8, ptr %call, i32 2336
  %dep_map.i = getelementptr i8, ptr %call, i32 2340
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @nsim_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %syncp, align 4
  %nsim_dev6 = getelementptr i8, ptr %call, i32 2308
  %7 = ptrtoint ptr %nsim_dev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %nsim_dev, ptr %nsim_dev6, align 4
  %nsim_dev_port7 = getelementptr i8, ptr %call, i32 2312
  %8 = ptrtoint ptr %nsim_dev_port7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nsim_dev_port, ptr %nsim_dev_port7, align 8
  %9 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nsim_dev, align 4
  %nsim_bus_dev9 = getelementptr i8, ptr %call, i32 2368
  %11 = ptrtoint ptr %nsim_bus_dev9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %nsim_bus_dev9, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %parent, align 8
  tail call void @nsim_ethtool_init(ptr noundef %add.ptr.i) #10
  %port_type.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port, i32 0, i32 3
  %13 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 16
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  %17 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nsim_netdev_ops, ptr %netdev_ops.i, align 8
  %18 = ptrtoint ptr %nsim_dev6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nsim_dev6, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %call.i44 = tail call i32 @nsim_udp_tunnels_info_create(ptr noundef %19, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then14.err_free_netdev_crit_edge

if.then14.err_free_netdev_crit_edge:              ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end.i:                                         ; preds = %if.then14
  tail call void @rtnl_lock() #10
  %call2.i = tail call i32 @nsim_bpf_init(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.err_utn_destroy.i_crit_edge

if.end.i.err_utn_destroy.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_utn_destroy.i

if.end5.i:                                        ; preds = %if.end.i
  tail call void @nsim_ipsec_init(ptr noundef %add.ptr.i) #10
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %call7.i = tail call i32 @register_netdevice(ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end17.thread50, label %err_ipsec_teardown.i

if.end17.thread50:                                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_unlock() #10
  br label %cleanup

err_ipsec_teardown.i:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nsim_ipsec_teardown(ptr noundef %add.ptr.i) #10
  tail call void @nsim_bpf_uninit(ptr noundef %add.ptr.i) #10
  br label %err_utn_destroy.i

err_utn_destroy.i:                                ; preds = %err_ipsec_teardown.i, %if.end.i.err_utn_destroy.i_crit_edge
  %err.0.i = phi i32 [ %call2.i, %if.end.i.err_utn_destroy.i_crit_edge ], [ %call7.i, %err_ipsec_teardown.i ]
  tail call void @rtnl_unlock() #10
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  tail call void @nsim_udp_tunnels_info_destroy(ptr noundef %25) #10
  br label %err_free_netdev

if.end17:                                         ; preds = %if.end
  %26 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nsim_vf_netdev_ops, ptr %netdev_ops.i, align 8
  tail call void @rtnl_lock() #10
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %call.i46 = tail call i32 @register_netdevice(ptr noundef %28) #10
  tail call void @rtnl_unlock() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool18.not = icmp eq i32 %call.i46, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end17.err_free_netdev_crit_edge

if.end17.err_free_netdev_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free_netdev:                                  ; preds = %if.end17.err_free_netdev_crit_edge, %err_utn_destroy.i, %if.then14.err_free_netdev_crit_edge
  %err.049 = phi i32 [ %call.i46, %if.end17.err_free_netdev_crit_edge ], [ %call.i44, %if.then14.err_free_netdev_crit_edge ], [ %err.0.i, %err_utn_destroy.i ]
  tail call void @free_netdev(ptr noundef nonnull %call) #10
  %29 = inttoptr i32 %err.049 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_netdev, %if.end17.cleanup_crit_edge, %if.end17.thread50, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %err_free_netdev ], [ %add.ptr.i, %if.end17.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %add.ptr.i, %if.end17.thread50 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_setup(ptr noundef %dev) #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #10
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
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %6 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %or = and i32 %8, -4225
  %and = or i32 %or, 128
  store i32 %and, ptr %flags, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags, align 16
  %or2 = or i64 %10, 557056
  store i64 %or2, ptr %priv_flags, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %features, align 16
  %or3 = or i64 %12, 65641
  store i64 %or3, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %13 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %hw_features, align 8
  %or4 = or i64 %14, 562949953421312
  store i64 %or4, ptr %hw_features, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %15 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65535, ptr %max_mtu, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_ethtool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_destroy(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 8
  tail call void @rtnl_lock() #10
  tail call void @unregister_netdevice_queue(ptr noundef %1, ptr noundef null) #10
  %nsim_dev_port = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 2
  %2 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nsim_dev_port, align 8
  %port_type.i = getelementptr inbounds %struct.nsim_dev_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nsim_ipsec_teardown(ptr noundef %ns) #10
  tail call void @nsim_bpf_uninit(ptr noundef %ns) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtnl_unlock() #10
  %6 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsim_dev_port, align 8
  %port_type.i11 = getelementptr inbounds %struct.nsim_dev_port, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %port_type.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_type.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i12 = icmp eq i32 %9, 0
  br i1 %cmp.i12, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nsim_udp_tunnels_info_destroy(ptr noundef %1) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @free_netdev(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_ipsec_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_bpf_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_udp_tunnels_info_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nsim_module_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_link_unregister(ptr noundef nonnull @nsim_link_ops) #10
  tail call void @nsim_bus_exit() #10
  tail call void @nsim_dev_exit() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_bus_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_dev_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_module_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nsim_dev_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nsim_bus_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_dev_exit_crit_edge

if.end.err_dev_exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dev_exit

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @rtnl_link_register(ptr noundef nonnull @nsim_link_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_bus_exit

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_bus_exit:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nsim_bus_exit() #10
  br label %err_dev_exit

err_dev_exit:                                     ; preds = %err_bus_exit, %if.end.err_dev_exit_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.err_dev_exit_crit_edge ], [ %call5, %err_bus_exit ]
  tail call void @nsim_dev_exit() #10
  br label %cleanup

cleanup:                                          ; preds = %err_dev_exit, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_dev_exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_udp_tunnels_info_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_bpf_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_ipsec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @nsim_ipsec_tx(ptr noundef %add.ptr.i, ptr noundef %skb) #10
  br i1 %call1, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %syncp = getelementptr i8, ptr %dev, i32 2336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %if.end.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

if.end.u64_stats_update_begin.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %1 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %5 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  %14 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i7.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i9.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %25, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  %26 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %33 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i12.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %36, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !49

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %if.end.u64_stats_update_begin.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %dep_map.i.i.i = getelementptr i8, ptr %dev, i32 2340
  %39 = tail call ptr @llvm.returnaddress(i32 0) #10
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #10
  %tx_packets = getelementptr i8, ptr %dev, i32 2320
  %41 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tx_packets, align 8
  %inc = add i64 %42, 1
  store i64 %inc, ptr %tx_packets, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %conv = zext i32 %44 to i64
  %tx_bytes = getelementptr i8, ptr %dev, i32 2328
  %45 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_bytes, align 8
  %add = add i64 %46, %conv
  store i64 %add, ptr %tx_bytes, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %40) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  %47 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %out

out:                                              ; preds = %u64_stats_update_begin.exit, %entry.out_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nsim_set_rx_mode(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp = getelementptr i8, ptr %dev, i32 2380
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp, align 4
  %tobool.not = icmp ne ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %new_mtu)
  %cmp = icmp sgt i32 %new_mtu, 4000
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_get_stats64(ptr noundef %dev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %syncp = getelementptr i8, ptr %dev, i32 2336
  %dep_map.c48.i.i.i = getelementptr i8, ptr %dev, i32 2340
  %tx_bytes = getelementptr i8, ptr %dev, i32 2328
  %tx_bytes2 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_packets = getelementptr i8, ptr %dev, i32 2320
  %tx_packets3 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %u64_stats_fetch_begin.exit.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !52
  %and.i.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %4) #10
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !53
  %and.i.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !54

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !55
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_fetch_begin.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !57
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %9, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_fetch_begin.exit

u64_stats_fetch_begin.exit:                       ; preds = %do.end.i.i.u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.i.u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_bytes, align 8
  %12 = ptrtoint ptr %tx_bytes2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %tx_bytes2, align 8
  %13 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tx_packets, align 8
  %15 = ptrtoint ptr %tx_packets3 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %tx_packets3, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  %16 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %17, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end, label %u64_stats_fetch_begin.exit.do.body_crit_edge

u64_stats_fetch_begin.exit.do.body_crit_edge:     ; preds = %u64_stats_fetch_begin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %u64_stats_fetch_begin.exit
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_set_vf_mac(ptr nocapture noundef readonly %dev, i32 noundef %vf, ptr nocapture noundef readonly %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev1, align 4
  %call2 = tail call i32 @nsim_dev_get_vfs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %vf)
  %cmp.not = icmp ugt i32 %call2, %vf
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vfconfigs, align 4
  %vf_mac = getelementptr %struct.nsim_vf_config, ptr %6, i32 %vf, i32 6
  %7 = call ptr @memcpy(ptr %vf_mac, ptr %mac, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_set_vf_vlan(ptr nocapture noundef readonly %dev, i32 noundef %vf, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev1, align 4
  %call2 = tail call i32 @nsim_dev_get_vfs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %vf)
  %cmp.not = icmp ule i32 %call2, %vf
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan)
  %cmp3 = icmp ugt i16 %vlan, 4095
  %or.cond = or i1 %cmp3, %cmp.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %qos)
  %cmp7 = icmp ugt i8 %qos, 7
  %or.cond26 = or i1 %cmp7, %or.cond
  br i1 %or.cond26, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfconfigs, align 4
  %vlan9 = getelementptr %struct.nsim_vf_config, ptr %3, i32 %vf, i32 3
  %4 = ptrtoint ptr %vlan9 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %vlan, ptr %vlan9, align 4
  %conv10 = zext i8 %qos to i16
  %5 = load ptr, ptr %vfconfigs, align 4
  %qos13 = getelementptr %struct.nsim_vf_config, ptr %5, i32 %vf, i32 5
  %6 = ptrtoint ptr %qos13 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv10, ptr %qos13, align 4
  %7 = load ptr, ptr %vfconfigs, align 4
  %vlan_proto16 = getelementptr %struct.nsim_vf_config, ptr %7, i32 %vf, i32 4
  %8 = ptrtoint ptr %vlan_proto16 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %vlan_proto, ptr %vlan_proto16, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_set_vf_rate(ptr nocapture noundef readonly %dev, i32 noundef %vf, i32 noundef %min, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev1, align 4
  %esw_mode.i = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %esw_mode.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %esw_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.i = icmp eq i16 %3, 1
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @nsim_dev_get_vfs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %vf)
  %cmp.not = icmp ugt i32 %call5, %vf
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %min to i16
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfconfigs, align 4
  %min_tx_rate = getelementptr %struct.nsim_vf_config, ptr %5, i32 %vf, i32 1
  %6 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %min_tx_rate, align 4
  %conv8 = trunc i32 %max to i16
  %7 = load ptr, ptr %vfconfigs, align 4
  %max_tx_rate = getelementptr %struct.nsim_vf_config, ptr %7, i32 %vf, i32 2
  %8 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv8, ptr %max_tx_rate, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.end7 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_set_vf_spoofchk(ptr nocapture noundef readonly %dev, i32 noundef %vf, i1 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev1, align 4
  %call2 = tail call i32 @nsim_dev_get_vfs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %vf)
  %cmp.not = icmp ugt i32 %call2, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %frombool = zext i1 %val to i8
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfconfigs, align 4
  %spoofchk_enabled = getelementptr %struct.nsim_vf_config, ptr %3, i32 %vf, i32 7
  %4 = ptrtoint ptr %spoofchk_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %spoofchk_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_set_vf_trust(ptr nocapture noundef readonly %dev, i32 noundef %vf, i1 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev1, align 4
  %call2 = tail call i32 @nsim_dev_get_vfs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %vf)
  %cmp.not = icmp ugt i32 %call2, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %frombool = zext i1 %val to i8
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfconfigs, align 4
  %trusted = getelementptr %struct.nsim_vf_config, ptr %3, i32 %vf, i32 8
  %4 = ptrtoint ptr %trusted to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %trusted, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_get_vf_config(ptr nocapture noundef readonly %dev, i32 noundef %vf, ptr nocapture noundef writeonly %ivi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev1, align 4
  %call2 = tail call i32 @nsim_dev_get_vfs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %vf)
  %cmp.not = icmp ugt i32 %call2, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %ivi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %vf, ptr %ivi, align 4
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vfconfigs, align 4
  %arrayidx = getelementptr %struct.nsim_vf_config, ptr %4, i32 %vf
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %linkstate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 5
  %7 = ptrtoint ptr %linkstate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %linkstate, align 4
  %8 = load ptr, ptr %vfconfigs, align 4
  %min_tx_rate = getelementptr %struct.nsim_vf_config, ptr %8, i32 %vf, i32 1
  %9 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %min_tx_rate, align 4
  %conv = zext i16 %10 to i32
  %min_tx_rate6 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 6
  %11 = ptrtoint ptr %min_tx_rate6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %min_tx_rate6, align 4
  %12 = load ptr, ptr %vfconfigs, align 4
  %max_tx_rate = getelementptr %struct.nsim_vf_config, ptr %12, i32 %vf, i32 2
  %13 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_tx_rate, align 2
  %conv9 = zext i16 %14 to i32
  %max_tx_rate10 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 7
  %15 = ptrtoint ptr %max_tx_rate10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv9, ptr %max_tx_rate10, align 4
  %16 = load ptr, ptr %vfconfigs, align 4
  %vlan = getelementptr %struct.nsim_vf_config, ptr %16, i32 %vf, i32 3
  %17 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vlan, align 4
  %conv13 = zext i16 %18 to i32
  %vlan14 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %19 = ptrtoint ptr %vlan14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv13, ptr %vlan14, align 4
  %20 = load ptr, ptr %vfconfigs, align 4
  %vlan_proto = getelementptr %struct.nsim_vf_config, ptr %20, i32 %vf, i32 4
  %21 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan_proto, align 2
  %vlan_proto17 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 10
  %23 = ptrtoint ptr %vlan_proto17 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vlan_proto17, align 4
  %24 = load ptr, ptr %vfconfigs, align 4
  %qos = getelementptr %struct.nsim_vf_config, ptr %24, i32 %vf, i32 5
  %25 = ptrtoint ptr %qos to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %qos, align 4
  %conv20 = zext i16 %26 to i32
  %qos21 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 3
  %27 = ptrtoint ptr %qos21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv20, ptr %qos21, align 4
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %28 = load ptr, ptr %vfconfigs, align 4
  %vf_mac = getelementptr %struct.nsim_vf_config, ptr %28, i32 %vf, i32 6
  %29 = call ptr @memcpy(ptr %mac, ptr %vf_mac, i32 6)
  %30 = load ptr, ptr %vfconfigs, align 4
  %spoofchk_enabled = getelementptr %struct.nsim_vf_config, ptr %30, i32 %vf, i32 7
  %31 = ptrtoint ptr %spoofchk_enabled to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %spoofchk_enabled, align 4, !range !60
  %33 = zext i8 %32 to i32
  %spoofchk = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 4
  %34 = ptrtoint ptr %spoofchk to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %spoofchk, align 4
  %35 = load ptr, ptr %vfconfigs, align 4
  %trusted = getelementptr %struct.nsim_vf_config, ptr %35, i32 %vf, i32 8
  %36 = ptrtoint ptr %trusted to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %trusted, align 1, !range !60
  %38 = zext i8 %37 to i32
  %trusted31 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 9
  %39 = ptrtoint ptr %trusted31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %trusted31, align 4
  %40 = load ptr, ptr %vfconfigs, align 4
  %rss_query_enabled = getelementptr %struct.nsim_vf_config, ptr %40, i32 %vf, i32 9
  %41 = ptrtoint ptr %rss_query_enabled to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rss_query_enabled, align 2, !range !60
  %43 = zext i8 %42 to i32
  %rss_query_en = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 8
  %44 = ptrtoint ptr %rss_query_en to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rss_query_en, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_set_vf_link_state(ptr nocapture noundef readonly %dev, i32 noundef %vf, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev1, align 4
  %call2 = tail call i32 @nsim_dev_get_vfs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %vf)
  %cmp.not = icmp ugt i32 %call2, %vf
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %switch = icmp ult i32 %state, 3
  %or.cond = and i1 %switch, %cmp.not
  br i1 %or.cond, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfconfigs, align 4
  %arrayidx = getelementptr %struct.nsim_vf_config, ptr %3, i32 %vf
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %state, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_set_vf_rss_query_en(ptr nocapture noundef readonly %dev, i32 noundef %vf, i1 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev1, align 4
  %call2 = tail call i32 @nsim_dev_get_vfs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %vf)
  %cmp.not = icmp ugt i32 %call2, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %frombool = zext i1 %val to i8
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfconfigs, align 4
  %rss_query_enabled = getelementptr %struct.nsim_vf_config, ptr %3, i32 %vf, i32 9
  %4 = ptrtoint ptr %rss_query_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %rss_query_enabled, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_setup_tc(ptr noundef %dev, i32 noundef %type, ptr noundef %type_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @flow_block_cb_setup_simple(ptr noundef %type_data, ptr noundef nonnull @nsim_block_cb_list, ptr noundef nonnull @nsim_setup_tc_block_cb, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_set_features(ptr noundef %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %and = and i64 %1, 562949953421312
  %and2 = and i64 %features, 562949953421312
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %and2)
  %cmp = icmp ugt i64 %and, %and2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call3 = tail call i32 @nsim_bpf_disable_tc(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_bpf(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nsim_get_devlink_port(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev_port = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev_port, align 8
  %devlink_port = getelementptr inbounds %struct.nsim_dev_port, ptr %1, i32 0, i32 1
  ret ptr %devlink_port
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nsim_ipsec_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_dev_get_vfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_setup_simple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nsim_bpf_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_bpf_setup_tc_block_cb(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_bpf_disable_tc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_validate(ptr nocapture noundef readnone %tb, ptr nocapture noundef readnone %data, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_validate.__msg) #10
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nsim_validate.__msg, ptr %extack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_dev_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_bus_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/netdev.c", i32 350, i32 8}
!2 = !{ptr @nsim_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/netdevsim/netdev.c", i32 358, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_netdevsim__591_438_nsim_module_init6, !6, !"__initcall__kmod_netdevsim__591_438_nsim_module_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/netdevsim/netdev.c", i32 438, i32 1}
!7 = !{ptr @__exitcall_nsim_module_exit, !8, !"__exitcall_nsim_module_exit", i1 false, i1 false}
!8 = !{!"../drivers/net/netdevsim/netdev.c", i32 439, i32 1}
!9 = !{ptr @__UNIQUE_ID_file592, !10, !"__UNIQUE_ID_file592", i1 false, i1 false}
!10 = !{!"../drivers/net/netdevsim/netdev.c", i32 440, i32 1}
!11 = !{ptr @__UNIQUE_ID_license593, !10, !"__UNIQUE_ID_license593", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias594, !13, !"__UNIQUE_ID_alias594", i1 false, i1 false}
!13 = !{!"../drivers/net/netdevsim/netdev.c", i32 441, i32 1}
!14 = !{ptr @nsim_netdev_ops, !15, !"nsim_netdev_ops", i1 false, i1 false}
!15 = !{!"../drivers/net/netdevsim/netdev.c", i32 248, i32 36}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/netdevsim/netdev.c", i32 117, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nsim_set_vf_rate._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @nsim_set_vf_rate._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @nsim_block_cb_list, !26, !"nsim_block_cb_list", i1 false, i1 false}
!26 = !{!"../drivers/net/netdevsim/netdev.c", i32 212, i32 8}
!27 = !{ptr @nsim_vf_netdev_ops, !28, !"nsim_vf_netdev_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/netdevsim/netdev.c", i32 269, i32 36}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/netdevsim/netdev.c", i32 402, i32 11}
!31 = !{ptr @nsim_link_ops, !32, !"nsim_link_ops", i1 false, i1 false}
!32 = !{!"../drivers/net/netdevsim/netdev.c", i32 401, i32 29}
!33 = !{ptr @nsim_validate.__msg, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../drivers/net/netdevsim/netdev.c", i32 396, i32 2}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2149993564}
!46 = !{i64 2149998498}
!47 = !{i64 2150020216}
!48 = !{i64 2150025110}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2150101637}
!51 = !{i64 2150101962}
!52 = !{i64 1077177, i64 1077238}
!53 = !{i64 1079909}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 1080194}
!56 = !{i64 2154947765}
!57 = !{i64 2154947607}
!58 = !{i64 2154947935}
!59 = !{i64 2150101312}
!60 = !{i8 0, i8 2}
