; ModuleID = '/llk/IR_all_yes/net/mac802154/iface.c_pt.bc'
source_filename = "../net/mac802154/iface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee802154_mlme_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wpan_dev_header_ops = type { ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.102 }
%union.anon.102 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee802154_llsec_params = type { i8, i32, i8, %struct.ieee802154_llsec_key_id, i64, i16, i64, i64, i16 }
%struct.ieee802154_llsec_key_id = type { i8, i8, %union.anon.120 }
%union.anon.120 = type { %struct.ieee802154_addr }
%struct.ieee802154_addr = type { i8, i16, %union.anon.113 }
%union.anon.113 = type { i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { ptr }
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
%struct.ieee802154_llsec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.ieee802154_local = type { %struct.ieee802154_hw, ptr, ptr, i32, %struct.list_head, %struct.mutex, ptr, %struct.hrtimer, i8, i8, %struct.tasklet_struct, %struct.sk_buff_head, ptr, %struct.work_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.119, i32 }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.ieee802154_sub_if_data = type { %struct.list_head, %struct.wpan_dev, ptr, ptr, i32, [16 x i8], %struct.mutex, %struct.mac802154_llsec }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }
%struct.mac802154_llsec = type { %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_table, [64 x %struct.hlist_head], [64 x %struct.hlist_head], %struct.rwlock_t }
%struct.ieee802154_llsec_table = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ieee802154_hdr = type { %struct.ieee802154_hdr_fc, i8, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.ieee802154_sechdr }
%struct.ieee802154_hdr_fc = type { i16 }
%struct.ieee802154_sechdr = type { i8, i8, i32, %union.anon.125 }
%union.anon.125 = type { i64 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.ieee802154_hw_addr_filt = type { i16, i16, i64, i8 }
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.19, %union.anon.20 }
%union.anon.19 = type { [16 x i8] }
%union.anon.20 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ieee802154_if_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/mac802154/iface.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ieee802154_if_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mac802154_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @netdev_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mac802154_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @mac802154_header_create, ptr @mac802154_header_parse, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mac802154_wpan_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mac802154_wpan_open, ptr @mac802154_slave_close, ptr @ieee802154_subif_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @mac802154_wpan_mac_addr, ptr null, ptr @mac802154_wpan_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mac802154_mlme_wpan = external dso_local global %struct.ieee802154_mlme_ops, align 4
@ieee802154_header_ops = internal constant { %struct.wpan_dev_header_ops, [28 x i8] } { %struct.wpan_dev_header_ops { ptr @ieee802154_header_create }, [28 x i8] zeroinitializer }, align 32
@ieee802154_setup_sdata.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sdata->sec_mtx\00", [16 x i8] zeroinitializer }, align 32
@mac802154_monitor_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mac802154_wpan_open, ptr @mac802154_slave_close, ptr @ieee802154_monitor_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mac802154_header_parse.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac802154\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mac802154_header_parse\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"malformed packet\0A\00", [46 x i8] zeroinitializer }, align 32
@ieee802154_check_mac_settings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mac802154_slave_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac802154/driver-ops.h\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_802154_drv_set_promiscuous_mode = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/mac802154/trace.h\00", [42 x i8] zeroinitializer }, align 32
@trace_802154_drv_set_promiscuous_mode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_802154_drv_return_int = external dso_local global %struct.tracepoint, align 4
@trace_802154_drv_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_drv_set_pan_id = external dso_local global %struct.tracepoint, align 4
@trace_802154_drv_set_pan_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_drv_set_extended_addr = external dso_local global %struct.tracepoint, align 4
@trace_802154_drv_set_extended_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_drv_set_short_addr = external dso_local global %struct.tracepoint, align 4
@trace_802154_drv_set_short_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_drv_set_lbt_mode = external dso_local global %struct.tracepoint, align 4
@trace_802154_drv_set_lbt_mode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_drv_set_csma_params = external dso_local global %struct.tracepoint, align 4
@trace_802154_drv_set_csma_params.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_drv_set_max_frame_retries = external dso_local global %struct.tracepoint, align 4
@trace_802154_drv_set_max_frame_retries.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_drv_start = external dso_local global %struct.tracepoint, align 4
@trace_802154_drv_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mac802154_slave_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mac802154_wpan_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 90, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Using DEBUGing ioctl SIOCSIFADDR isn't recommended!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mac802154_wpan_ioctl\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mac802154_wpan_ioctl._entry_ptr = internal global ptr @mac802154_wpan_ioctl._entry, section ".printk_index", align 4
@mac802154_wpan_phy_privid = external dso_local local_unnamed_addr constant ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 35093, i64 35094]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 65279, i64 65535]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 622, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"mac802154_netdev_notifier\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 732, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"mac802154_header_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 496, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"mac802154_wpan_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 501, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"ieee802154_header_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 416, i32 41 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 592, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"mac802154_monitor_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 509, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 484, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [30 x i8] c"../net/mac802154/driver-ops.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 272, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"../net/mac802154/trace.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 252, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 108, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [25 x i8] c"../net/mac802154/iface.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 89, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @mac802154_wpan_ioctl._entry, ptr @mac802154_wpan_ioctl._entry_ptr, ptr @.str, ptr @.str.1, ptr @mac802154_netdev_notifier, ptr @mac802154_header_ops, ptr @mac802154_wpan_ops, ptr @ieee802154_header_ops, ptr @ieee802154_setup_sdata.__key, ptr @.str.2, ptr @mac802154_monitor_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac802154_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac802154_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac802154_wpan_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_header_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_setup_sdata.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac802154_monitor_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac802154_wpan_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_wpan_update_llsec(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.ieee802154_llsec_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i, align 8
  %llsec = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %llsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %llsec, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params) #10
  %4 = call ptr @memset(ptr %params, i32 255, i32 80)
  %pan_id = getelementptr i8, ptr %dev, i32 2344
  %5 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pan_id, align 8
  %pan_id3 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 5
  %7 = ptrtoint ptr %pan_id3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %pan_id3, align 8
  %extended_addr = getelementptr i8, ptr %dev, i32 2352
  %8 = ptrtoint ptr %extended_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %extended_addr, align 8
  %hwaddr = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 6
  %10 = ptrtoint ptr %hwaddr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %hwaddr, align 8
  %11 = ptrtoint ptr %llsec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %llsec, align 4
  %set_params = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_params, align 4
  %call6 = call i32 %14(ptr noundef %dev, ptr noundef nonnull %params, i32 noundef 96) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ieee802154_if_add(ptr noundef %local, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %type, i64 noundef %extended_addr) local_unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.ieee802154_llsec_params, align 8
  %tmp.i = alloca i8, align 1
  %addr = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #10
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %addr, align 8
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b126 = load i1, ptr @ieee802154_if_add.__already_done, align 1
  br i1 %.b126, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !81

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee802154_if_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 622, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 622) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = tail call ptr @alloc_netdev_mqs(i32 noundef 856, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef nonnull @ieee802154_if_setup, i32 noundef 1, i32 noundef 1) #10
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end29.cleanup_crit_edge, label %if.end41

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %1 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %local, align 8
  %3 = trunc i32 %2 to i16
  %conv = add i16 %3, 37
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 21
  %4 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %needed_headroom, align 8
  %call43 = tail call i32 @dev_alloc_name(ptr noundef nonnull %call37, ptr noundef nonnull %call37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.end41.err_crit_edge, label %if.end46

if.end41.err_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end46:                                         ; preds = %if.end41
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 54
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 8
  %perm_extended_addr = getelementptr inbounds %struct.wpan_phy, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %perm_extended_addr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %perm_extended_addr, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #10
  %10 = ptrtoint ptr %perm_addr to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %perm_addr, align 1
  %11 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end46.err_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb57
  ]

if.end46.err_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

sw.bb:                                            ; preds = %if.end46
  %type49 = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 32
  %12 = ptrtoint ptr %type49 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 804, ptr %type49, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %extended_addr)
  %cmp.not.i = icmp ne i64 %extended_addr, 0
  %and.i = and i64 %extended_addr, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %13 = and i1 %cmp.not.i, %tobool.not.i
  br i1 %13, label %if.then51, label %if.else

if.then51:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call i64 @llvm.bswap.i64(i64 %extended_addr) #10
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %addr, align 8
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 56
  %16 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %17 to i32
  call void @dev_addr_mod(ptr noundef nonnull %call37, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef %conv.i) #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %addr_len.i127 = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 56
  %18 = ptrtoint ptr %addr_len.i127 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr_len.i127, align 1
  %conv.i128 = zext i8 %19 to i32
  tail call void @dev_addr_mod(ptr noundef nonnull %call37, i32 noundef 0, ptr noundef %perm_addr, i32 noundef %conv.i128) #10
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %type58 = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 32
  %20 = ptrtoint ptr %type58 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 805, ptr %type58, align 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb57, %if.else, %if.then51
  %phy59 = getelementptr inbounds %struct.ieee802154_local, ptr %local, i32 0, i32 2
  %21 = ptrtoint ptr %phy59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy59, align 8
  %dev = getelementptr inbounds %struct.wpan_phy, ptr %22, i32 0, i32 12
  %parent = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 133, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %parent, align 8
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy, align 8
  %_net.i = getelementptr inbounds %struct.wpan_phy, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_net.i, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 127
  %28 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %nd_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call37, i32 2304
  %wpan_dev = getelementptr i8, ptr %call37, i32 2312
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 83
  %29 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %wpan_dev, ptr %ieee802154_ptr, align 4
  %name65 = getelementptr i8, ptr %call37, i32 2388
  %30 = call ptr @memcpy(ptr %name65, ptr %call37, i32 16)
  %dev69 = getelementptr i8, ptr %call37, i32 2380
  %31 = ptrtoint ptr %dev69 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call37, ptr %dev69, align 4
  %32 = load ptr, ptr %phy, align 8
  %33 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %wpan_dev, align 8
  %local73 = getelementptr i8, ptr %call37, i32 2376
  %34 = ptrtoint ptr %local73 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %local, ptr %local73, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %35 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %tmp.i, align 1, !annotation !82
  %iftype.i = getelementptr i8, ptr %call37, i32 2316
  %36 = ptrtoint ptr %iftype.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %type, ptr %iftype.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %tmp.i, i32 noundef 1) #10
  %bsn.i = getelementptr i8, ptr %call37, i32 2360
  %37 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tmp.i, align 1
  %conv.i129 = zext i8 %38 to i32
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bsn.i, i32 noundef 4) #10
  %39 = ptrtoint ptr %bsn.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %conv.i129, ptr %bsn.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %tmp.i, i32 noundef 1) #10
  %dsn.i = getelementptr i8, ptr %call37, i32 2364
  %40 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tmp.i, align 1
  %conv3.i = zext i8 %41 to i32
  %call.i.i51.i = call zeroext i1 @__kasan_check_write(ptr noundef %dsn.i, i32 noundef 4) #10
  %42 = ptrtoint ptr %dsn.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %conv3.i, ptr %dsn.i, align 4
  %min_be.i = getelementptr i8, ptr %call37, i32 2368
  %43 = ptrtoint ptr %min_be.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %min_be.i, align 8
  %max_be.i = getelementptr i8, ptr %call37, i32 2369
  %44 = ptrtoint ptr %max_be.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %max_be.i, align 1
  %csma_retries.i = getelementptr i8, ptr %call37, i32 2370
  %45 = ptrtoint ptr %csma_retries.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %csma_retries.i, align 2
  %frame_retries.i = getelementptr i8, ptr %call37, i32 2371
  %46 = ptrtoint ptr %frame_retries.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %frame_retries.i, align 1
  %pan_id.i = getelementptr i8, ptr %call37, i32 2344
  %47 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %pan_id.i, align 8
  %short_addr.i = getelementptr i8, ptr %call37, i32 2346
  %48 = ptrtoint ptr %short_addr.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %short_addr.i, align 2
  %49 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %type, label %do.body18.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb12.i
  ]

sw.bb.i:                                          ; preds = %sw.epilog
  %extended_addr.i = getelementptr i8, ptr %call37, i32 2352
  %50 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev69, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 86
  %52 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_addr.i, align 64
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %53, align 1
  %56 = call i64 @llvm.bswap.i64(i64 %55) #10
  %57 = ptrtoint ptr %extended_addr.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %extended_addr.i, align 1
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 49
  %58 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @mac802154_header_ops, ptr %header_ops.i, align 4
  %59 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev69, align 4
  %needs_free_netdev.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 124
  %61 = ptrtoint ptr %needs_free_netdev.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %needs_free_netdev.i, align 8
  %62 = load ptr, ptr %dev69, align 4
  %priv_destructor.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 125
  %63 = ptrtoint ptr %priv_destructor.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @mac802154_wpan_free, ptr %priv_destructor.i, align 4
  %64 = load ptr, ptr %dev69, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 16
  %65 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @mac802154_wpan_ops, ptr %netdev_ops.i, align 8
  %66 = load ptr, ptr %dev69, align 4
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 128
  %67 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @mac802154_mlme_wpan, ptr %ml_priv.i, align 8
  %promiscuous_mode.i = getelementptr i8, ptr %call37, i32 2373
  %68 = ptrtoint ptr %promiscuous_mode.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %promiscuous_mode.i, align 1
  %header_ops9.i = getelementptr i8, ptr %call37, i32 2332
  %69 = ptrtoint ptr %header_ops9.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @ieee802154_header_ops, ptr %header_ops9.i, align 4
  %sec_mtx.i = getelementptr i8, ptr %call37, i32 2404
  call void @__mutex_init(ptr noundef %sec_mtx.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ieee802154_setup_sdata.__key) #10
  %sec.i = getelementptr i8, ptr %call37, i32 2496
  call void @mac802154_llsec_init(ptr noundef %sec.i) #10
  %70 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev69, align 4
  %ml_priv.i.i.i = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 128
  %72 = ptrtoint ptr %ml_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ml_priv.i.i.i, align 8
  %llsec.i.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %llsec.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %llsec.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %sw.bb.i.if.end77_crit_edge, label %mac802154_wpan_update_llsec.exit.i

sw.bb.i.if.end77_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

mac802154_wpan_update_llsec.exit.i:               ; preds = %sw.bb.i
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params.i.i) #10
  %76 = call ptr @memset(ptr %params.i.i, i32 255, i32 80)
  %pan_id.i.i = getelementptr i8, ptr %71, i32 2344
  %77 = ptrtoint ptr %pan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %pan_id.i.i, align 8
  %pan_id3.i.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i.i, i32 0, i32 5
  %79 = ptrtoint ptr %pan_id3.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %pan_id3.i.i, align 8
  %extended_addr.i.i = getelementptr i8, ptr %71, i32 2352
  %80 = ptrtoint ptr %extended_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %extended_addr.i.i, align 8
  %hwaddr.i.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i.i, i32 0, i32 6
  %82 = ptrtoint ptr %hwaddr.i.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %hwaddr.i.i, align 8
  %83 = ptrtoint ptr %llsec.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %llsec.i.i, align 4
  %set_params.i.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %set_params.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %set_params.i.i, align 4
  %call6.i.i = call i32 %86(ptr noundef %71, ptr noundef nonnull %params.i.i, i32 noundef 96) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i, label %ieee802154_setup_sdata.exit, label %mac802154_wpan_update_llsec.exit.i.if.end77_crit_edge

mac802154_wpan_update_llsec.exit.i.if.end77_crit_edge: ; preds = %mac802154_wpan_update_llsec.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

sw.bb12.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev69, align 4
  %needs_free_netdev14.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 124
  %89 = ptrtoint ptr %needs_free_netdev14.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %needs_free_netdev14.i, align 8
  %90 = load ptr, ptr %dev69, align 4
  %netdev_ops16.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 16
  %91 = ptrtoint ptr %netdev_ops16.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @mac802154_monitor_ops, ptr %netdev_ops16.i, align 8
  %promiscuous_mode17.i = getelementptr i8, ptr %call37, i32 2373
  %92 = ptrtoint ptr %promiscuous_mode17.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %promiscuous_mode17.i, align 1
  br label %if.end77

do.body18.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/mac802154/iface.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 606, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

ieee802154_setup_sdata.exit:                      ; preds = %mac802154_wpan_update_llsec.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  br label %err

if.end77:                                         ; preds = %sw.bb12.i, %mac802154_wpan_update_llsec.exit.i.if.end77_crit_edge, %sw.bb.i.if.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  %call78 = call i32 @register_netdevice(ptr noundef nonnull %call37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end77.err_crit_edge, label %if.end82

if.end77.err_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end82:                                         ; preds = %if.end77
  %iflist_mtx = getelementptr inbounds %struct.ieee802154_local, ptr %local, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #10
  %interfaces = getelementptr inbounds %struct.ieee802154_local, ptr %local, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.ieee802154_local, ptr %local, i32 0, i32 4, i32 1
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %94, ptr noundef %interfaces) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end82.list_add_tail_rcu.exit_crit_edge

if.end82.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %interfaces, ptr %add.ptr.i, align 4
  %prev2.i.i = getelementptr i8, ptr %call37, i32 2308
  %96 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %94, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %add.ptr.i, ptr %94, align 4
  %98 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr.i, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end82.list_add_tail_rcu.exit_crit_edge
  call void @mutex_unlock(ptr noundef %iflist_mtx) #10
  br label %cleanup

err:                                              ; preds = %if.end77.err_crit_edge, %ieee802154_setup_sdata.exit, %if.end46.err_crit_edge, %if.end41.err_crit_edge
  %ret.0 = phi i32 [ %call43, %if.end41.err_crit_edge ], [ %call6.i.i, %ieee802154_setup_sdata.exit ], [ %call78, %if.end77.err_crit_edge ], [ -22, %if.end46.err_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call37) #10
  %99 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %list_add_tail_rcu.exit, %if.end29.cleanup_crit_edge
  %retval.0 = phi ptr [ %99, %err ], [ %call37, %list_add_tail_rcu.exit ], [ inttoptr (i32 -12 to ptr), %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ieee802154_if_setup(ptr nocapture noundef writeonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %addr_len, align 1
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %1 = ptrtoint ptr %broadcast to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %broadcast, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2, ptr %hard_header_len, align 2
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %3 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 18, ptr %needed_tailroom, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 123, ptr %mtu, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %5 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 300, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 130, ptr %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee802154_if_remove(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @ieee802154_if_remove.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !81

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee802154_if_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 688, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 688) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %local = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata, i32 0, i32 2
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 8
  %iflist_mtx = getelementptr inbounds %struct.ieee802154_local, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sdata) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_del_rcu.exit_crit_edge

if.end29.list_del_rcu.exit_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sdata, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdata, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end29.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sdata, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %9 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %local, align 8
  %iflist_mtx38 = getelementptr inbounds %struct.ieee802154_local, ptr %10, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %iflist_mtx38) #10
  tail call void @synchronize_rcu() #10
  %dev = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %12, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee802154_remove_interfaces(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iflist_mtx = getelementptr inbounds %struct.ieee802154_local, ptr %local, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #10
  %interfaces = getelementptr inbounds %struct.ieee802154_local, ptr %local, i32 0, i32 4
  %0 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interfaces, align 8
  %cmp.not22 = icmp eq ptr %1, %interfaces
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %sdata.023 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %sdata.023 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %sdata.023, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sdata.023) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sdata.023, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %sdata.023 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdata.023, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %sdata.023 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %sdata.023, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sdata.023, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata.023, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %12, ptr noundef null) #10
  %cmp.not = icmp eq ptr %tmp.0, %interfaces
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_iface_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @mac802154_netdev_notifier) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee802154_iface_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @mac802154_netdev_notifier) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mac802154_wpan_free(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sec = getelementptr i8, ptr %dev, i32 2496
  tail call void @mac802154_llsec_destroy(ptr noundef %sec) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac802154_llsec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac802154_header_create(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %type, ptr noundef readonly %daddr, ptr noundef readonly %saddr, i32 noundef %len) #0 align 64 {
entry:
  %params.i = alloca %struct.ieee802154_llsec_params, align 8
  %hdr = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #10
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 56)
  %tobool.not = icmp eq ptr %daddr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ackreq = getelementptr i8, ptr %dev, i32 2374
  %1 = ptrtoint ptr %ackreq to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ackreq, align 2, !range !85
  %3 = zext i8 %2 to i16
  %bf.shl = shl nuw nsw i16 %3, 13
  %bf.set7 = or i16 %bf.shl, 256
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %bf.set7, ptr %hdr, align 8
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 83
  %5 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ieee802154_ptr, align 4
  %dsn = getelementptr inbounds %struct.wpan_dev, ptr %6, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dsn, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %dsn, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dsn, ptr %dsn, i32 1, ptr elementtype(i32) %dsn) #10, !srcloc !87
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  %conv9 = trunc i32 %asmresult.i.i.i.i to i8
  %seq = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 1
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9, ptr %seq, align 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params.i) #10
  %9 = call ptr @memset(ptr %params.i, i32 255, i32 80)
  %sec.i = getelementptr i8, ptr %dev, i32 2496
  %call.i = call i32 @mac802154_llsec_get_params(ptr noundef %sec.i, ptr noundef nonnull %params.i) #10
  %10 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %params.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.if.end13_crit_edge, label %lor.lhs.false11.i

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

lor.lhs.false11.i:                                ; preds = %if.end
  %out_level.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 2
  %12 = ptrtoint ptr %out_level.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %out_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.i = icmp eq i8 %13, 0
  br i1 %tobool12.not.i, label %lor.lhs.false11.i.if.end13_crit_edge, label %cond.end.i

lor.lhs.false11.i.if.end13_crit_edge:             ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

cond.end.i:                                       ; preds = %lor.lhs.false11.i
  %14 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %hdr, align 8
  %bf.set.i = or i16 %bf.load.i, 2048
  store i16 %bf.set.i, ptr %hdr, align 8
  %sec26.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %15 = ptrtoint ptr %sec26.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load27.i = load i8, ptr %sec26.i, align 8
  %bf.value.i = and i8 %13, 7
  %bf.clear28.i = and i8 %bf.load27.i, -32
  %bf.set29.i = or i8 %bf.clear28.i, %bf.value.i
  %out_key.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 3
  %16 = ptrtoint ptr %out_key.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %out_key.i, align 8
  %bf.value32.i = shl i8 %17, 3
  %bf.shl.i = and i8 %bf.value32.i, 24
  %bf.set34.i = or i8 %bf.set29.i, %bf.shl.i
  store i8 %bf.set34.i, ptr %sec26.i, align 8
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %17, label %cond.end.i.if.end51.i_crit_edge [
    i8 2, label %if.then39.i
    i8 3, label %if.then47.i
  ]

cond.end.i.if.end51.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then39.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %22 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %22, align 8
  br label %if.end51.i

if.then47.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %27 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %26, ptr %27, align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then47.i, %if.then39.i, %cond.end.i.if.end51.i_crit_edge
  %id.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %id.i, align 1
  %key_id.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %key_id.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %key_id.i, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.end51.i, %lor.lhs.false11.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params.i) #10
  %pan_id = getelementptr i8, ptr %dev, i32 2344
  %32 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pan_id, align 8
  %dest = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  %pan_id14 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %pan_id14 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %pan_id14, align 2
  %35 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %dest, align 8
  %36 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %daddr to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %daddr, align 1
  %39 = call i64 @llvm.bswap.i64(i64 %38) #10
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %36, align 8
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %pan_id19 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %pan_id19 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %33, ptr %pan_id19, align 2
  %42 = ptrtoint ptr %source to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %source, align 8
  %tobool22.not = icmp eq ptr %saddr, null
  br i1 %tobool22.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %extended_addr = getelementptr i8, ptr %dev, i32 2352
  %43 = ptrtoint ptr %extended_addr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %extended_addr, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %saddr to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %saddr, align 1
  %47 = call i64 @llvm.bswap.i64(i64 %46) #10
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %.sink = phi i64 [ %44, %if.then23 ], [ %47, %if.else ]
  %48 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %.sink, ptr %48, align 8
  %call27 = call i32 @ieee802154_hdr_push(ptr noundef %skb, ptr noundef nonnull %hdr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %52 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %54 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv32 = trunc i32 %call27 to i16
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %55 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv32, ptr %mac_len, align 4
  %call33 = call i32 @ieee802154_max_payload(ptr noundef nonnull %hdr) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %len)
  %cmp34 = icmp ult i32 %call33, %len
  %.call27 = select i1 %cmp34, i32 -90, i32 %call27
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ %.call27, %if.end31 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac802154_header_parse(ptr noundef %skb, ptr nocapture noundef writeonly %haddr) #0 align 64 {
entry:
  %hdr = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #10
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 56)
  %call = call i32 @ieee802154_hdr_peek_addrs(ptr noundef %skb, ptr noundef nonnull %hdr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac802154_header_parse.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac802154_header_parse, %if.then4)) #10
          to label %cleanup [label %if.then4], !srcloc !89

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac802154_header_parse.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %1 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %source, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp6 = icmp eq i8 %2, 3
  br i1 %cmp6, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %6 = call i64 @llvm.bswap.i64(i64 %5) #10
  %7 = ptrtoint ptr %haddr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %haddr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ 8, %if.then8 ], [ 0, %if.then4 ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_max_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac802154_llsec_get_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_peek_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac802154_llsec_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac802154_wpan_open(ptr noundef %dev) #0 align 64 {
entry:
  %filt.i104.i.i = alloca %struct.ieee802154_hw_addr_filt, align 8
  %filt.i96.i.i = alloca %struct.ieee802154_hw_addr_filt, align 8
  %filt.i.i.i = alloca %struct.ieee802154_hw_addr_filt, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %local1.i = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1.i, align 8
  %interfaces.i = getelementptr inbounds %struct.ieee802154_local, ptr %1, i32 0, i32 4
  %promiscuous_mode.i.i = getelementptr i8, ptr %dev, i32 2373
  %pan_id.i.i = getelementptr i8, ptr %dev, i32 2344
  %short_addr.i.i = getelementptr i8, ptr %dev, i32 2346
  %extended_addr.i.i = getelementptr i8, ptr %dev, i32 2352
  %min_be.i.i = getelementptr i8, ptr %dev, i32 2368
  %max_be.i.i = getelementptr i8, ptr %dev, i32 2369
  %csma_retries.i.i = getelementptr i8, ptr %dev, i32 2370
  %frame_retries.i.i = getelementptr i8, ptr %dev, i32 2371
  %lbt.i.i = getelementptr i8, ptr %dev, i32 2372
  %2 = ptrtoint ptr %interfaces.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %nsdata.08.i = load ptr, ptr %interfaces.i, align 8
  %cmp.not9.i = icmp eq ptr %nsdata.08.i, %interfaces.i
  br i1 %cmp.not9.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %iftype5.i = getelementptr i8, ptr %dev, i32 2316
  %flags.i.i = getelementptr inbounds %struct.ieee802154_hw, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nsdata.010.i = phi ptr [ %nsdata.08.i, %for.body.lr.ph.i ], [ %nsdata.0.i, %for.inc.i.for.body.i_crit_edge ]
  %cmp4.not.i = icmp eq ptr %nsdata.010.i, %add.ptr.i.i
  br i1 %cmp4.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %state.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 4
  %3 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %iftype5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.i = icmp eq i32 %6, 0
  br i1 %cmp6.i, label %land.lhs.true7.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true7.i:                                 ; preds = %if.then.i
  %iftype9.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %iftype9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iftype9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10.i = icmp eq i32 %8, 0
  br i1 %cmp10.i, label %land.lhs.true7.i.cleanup_crit_edge, label %land.lhs.true7.i.if.end.i_crit_edge

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true7.i.cleanup_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true7.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %call.i.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end.i.if.end29.i.i_crit_edge

if.end.i.if.end29.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b144.i.i = load i1, ptr @ieee802154_check_mac_settings.__already_done, align 1
  br i1 %.b144.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !81

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee802154_check_mac_settings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 229) #10
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %if.end.i.if.end29.i.i_crit_edge
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end29.i.i.if.end46.i.i_crit_edge, label %if.then38.i.i

if.end29.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i.i

if.then38.i.i:                                    ; preds = %if.end29.i.i
  %11 = ptrtoint ptr %promiscuous_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %promiscuous_mode.i.i, align 1, !range !85
  %promiscuous_mode40.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 17
  %13 = ptrtoint ptr %promiscuous_mode40.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %promiscuous_mode40.i.i, align 1, !range !85
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp.not.i.i = icmp eq i8 %12, %14
  br i1 %cmp.not.i.i, label %if.then38.i.i.if.end46.i.i_crit_edge, label %if.then38.i.i.cleanup_crit_edge

if.then38.i.i.cleanup_crit_edge:                  ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38.i.i.if.end46.i.i_crit_edge:             ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then38.i.i.if.end46.i.i_crit_edge, %if.end29.i.i.if.end46.i.i_crit_edge
  %and49.i.i = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i)
  %tobool50.not.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end46.i.i.if.end68.i.i_crit_edge, label %if.then51.i.i

if.end46.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i.i

if.then51.i.i:                                    ; preds = %if.end46.i.i
  %15 = ptrtoint ptr %pan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pan_id.i.i, align 8
  %pan_id53.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %pan_id53.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pan_id53.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp55.not.i.i = icmp eq i16 %16, %18
  br i1 %cmp55.not.i.i, label %lor.lhs.false.i.i, label %if.then51.i.i.cleanup_crit_edge

if.then51.i.i.cleanup_crit_edge:                  ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.then51.i.i
  %19 = ptrtoint ptr %short_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %short_addr.i.i, align 2
  %short_addr58.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %short_addr58.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %short_addr58.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp60.not.i.i = icmp eq i16 %20, %22
  br i1 %cmp60.not.i.i, label %lor.lhs.false62.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false62.i.i:                              ; preds = %lor.lhs.false.i.i
  %23 = ptrtoint ptr %extended_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %extended_addr.i.i, align 8
  %extended_addr63.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 9
  %25 = ptrtoint ptr %extended_addr63.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %extended_addr63.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp64.not.i.i = icmp eq i64 %24, %26
  br i1 %cmp64.not.i.i, label %lor.lhs.false62.i.i.if.end68.i.i_crit_edge, label %lor.lhs.false62.i.i.cleanup_crit_edge

lor.lhs.false62.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false62.i.i.if.end68.i.i_crit_edge:       ; preds = %lor.lhs.false62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %lor.lhs.false62.i.i.if.end68.i.i_crit_edge, %if.end46.i.i.if.end68.i.i_crit_edge
  %and71.i.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i)
  %tobool72.not.i.i = icmp eq i32 %and71.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end68.i.i.if.end93.i.i_crit_edge, label %if.then73.i.i

if.end68.i.i.if.end93.i.i_crit_edge:              ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i.i

if.then73.i.i:                                    ; preds = %if.end68.i.i
  %27 = ptrtoint ptr %min_be.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %min_be.i.i, align 8
  %min_be75.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 12
  %29 = ptrtoint ptr %min_be75.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %min_be75.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp77.not.i.i = icmp eq i8 %28, %30
  br i1 %cmp77.not.i.i, label %lor.lhs.false79.i.i, label %if.then73.i.i.cleanup_crit_edge

if.then73.i.i.cleanup_crit_edge:                  ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false79.i.i:                              ; preds = %if.then73.i.i
  %31 = ptrtoint ptr %max_be.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_be.i.i, align 1
  %max_be81.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 13
  %33 = ptrtoint ptr %max_be81.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max_be81.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp83.not.i.i = icmp eq i8 %32, %34
  br i1 %cmp83.not.i.i, label %lor.lhs.false85.i.i, label %lor.lhs.false79.i.i.cleanup_crit_edge

lor.lhs.false79.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false85.i.i:                              ; preds = %lor.lhs.false79.i.i
  %35 = ptrtoint ptr %csma_retries.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %csma_retries.i.i, align 2
  %csma_retries87.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 14
  %37 = ptrtoint ptr %csma_retries87.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %csma_retries87.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp89.not.i.i = icmp eq i8 %36, %38
  br i1 %cmp89.not.i.i, label %lor.lhs.false85.i.i.if.end93.i.i_crit_edge, label %lor.lhs.false85.i.i.cleanup_crit_edge

lor.lhs.false85.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false85.i.i.if.end93.i.i_crit_edge:       ; preds = %lor.lhs.false85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %lor.lhs.false85.i.i.if.end93.i.i_crit_edge, %if.end68.i.i.if.end93.i.i_crit_edge
  %and96.i.i = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i.i)
  %tobool97.not.i.i = icmp eq i32 %and96.i.i, 0
  br i1 %tobool97.not.i.i, label %if.end93.i.i.if.end106.i.i_crit_edge, label %if.then98.i.i

if.end93.i.i.if.end106.i.i_crit_edge:             ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i.i

if.then98.i.i:                                    ; preds = %if.end93.i.i
  %39 = ptrtoint ptr %frame_retries.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %frame_retries.i.i, align 1
  %frame_retries100.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 15
  %41 = ptrtoint ptr %frame_retries100.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %frame_retries100.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp102.not.i.i = icmp eq i8 %40, %42
  br i1 %cmp102.not.i.i, label %if.then98.i.i.if.end106.i.i_crit_edge, label %if.then98.i.i.cleanup_crit_edge

if.then98.i.i.cleanup_crit_edge:                  ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then98.i.i.if.end106.i.i_crit_edge:            ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %if.then98.i.i.if.end106.i.i_crit_edge, %if.end93.i.i.if.end106.i.i_crit_edge
  %and109.i.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i.i)
  %tobool110.not.i.i = icmp eq i32 %and109.i.i, 0
  br i1 %tobool110.not.i.i, label %if.end106.i.i.for.inc.i_crit_edge, label %if.then111.i.i

if.end106.i.i.for.inc.i_crit_edge:                ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then111.i.i:                                   ; preds = %if.end106.i.i
  %43 = ptrtoint ptr %lbt.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lbt.i.i, align 4, !range !85
  %lbt114.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %nsdata.010.i, i32 0, i32 1, i32 16
  %45 = ptrtoint ptr %lbt114.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %lbt114.i.i, align 4, !range !85
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp117.not.i.i = icmp eq i8 %44, %46
  br i1 %cmp117.not.i.i, label %if.then111.i.i.for.inc.i_crit_edge, label %if.then111.i.i.cleanup_crit_edge

if.then111.i.i.cleanup_crit_edge:                 ; preds = %if.then111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then111.i.i.for.inc.i_crit_edge:               ; preds = %if.then111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then111.i.i.for.inc.i_crit_edge, %if.end106.i.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %47 = ptrtoint ptr %nsdata.010.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %nsdata.0.i = load ptr, ptr %nsdata.010.i, align 8
  %cmp.not.i = icmp eq ptr %nsdata.0.i, %interfaces.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %48 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %local1.i, align 8
  %call2.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.if.end31.i_crit_edge

if.end.if.end31.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.end
  %.b64.i = load i1, ptr @mac802154_slave_open.__already_done, align 1
  br i1 %.b64.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then.i10, !prof !81

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then.i10:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mac802154_slave_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 200) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then.i10, %land.rhs.i.if.end31.i_crit_edge, %if.end.if.end31.i_crit_edge
  %state.i = getelementptr i8, ptr %dev, i32 2384
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  %open_count.i = getelementptr inbounds %struct.ieee802154_local, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %open_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool39.not.i = icmp eq i32 %51, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end31.i.if.end49.i_crit_edge

if.end31.i.if.end49.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

if.then40.i:                                      ; preds = %if.end31.i
  %52 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %local1.i, align 8
  %flags.i.i11 = getelementptr inbounds %struct.ieee802154_hw, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i.i11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i11, align 4
  %and.i.i12 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12)
  %tobool.not.i.i13 = icmp eq i32 %and.i.i12, 0
  br i1 %tobool.not.i.i13, label %if.then40.i.if.end5.i.i_crit_edge, label %if.then.i.i15

if.then40.i.if.end5.i.i_crit_edge:                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i.i

if.then.i.i15:                                    ; preds = %if.then40.i
  %56 = ptrtoint ptr %promiscuous_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %promiscuous_mode.i.i, align 1, !range !85
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 272) #10
  %ops.i.i.i = getelementptr inbounds %struct.ieee802154_local, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i.i.i, align 4
  %set_promiscuous_mode.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %set_promiscuous_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_promiscuous_mode.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i, label %drv_set_promiscuous_mode.exit.thread.i.i, label %drv_set_promiscuous_mode.exit.i.i

drv_set_promiscuous_mode.exit.thread.i.i:         ; preds = %if.then.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 275, i32 noundef 9, ptr noundef null) #10
  br label %mac802154_slave_open.exit

drv_set_promiscuous_mode.exit.i.i:                ; preds = %if.then.i.i15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool3.i.i = icmp ne i8 %57, 0
  tail call fastcc void @trace_802154_drv_set_promiscuous_mode(ptr noundef %53, i1 noundef zeroext %tobool3.i.i) #10
  %62 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i.i, align 4
  %set_promiscuous_mode26.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %set_promiscuous_mode26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_promiscuous_mode26.i.i.i, align 4
  %call.i.i.i = tail call i32 %65(ptr noundef %53, i1 noundef zeroext %tobool3.i.i) #10
  tail call fastcc void @trace_802154_drv_return_int(ptr noundef %53, i32 noundef %call.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %drv_set_promiscuous_mode.exit.i.i.mac802154_slave_open.exit_crit_edge, label %drv_set_promiscuous_mode.exit.i.i.if.end5.i.i_crit_edge

drv_set_promiscuous_mode.exit.i.i.if.end5.i.i_crit_edge: ; preds = %drv_set_promiscuous_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i.i

drv_set_promiscuous_mode.exit.i.i.mac802154_slave_open.exit_crit_edge: ; preds = %drv_set_promiscuous_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_slave_open.exit

if.end5.i.i:                                      ; preds = %drv_set_promiscuous_mode.exit.i.i.if.end5.i.i_crit_edge, %if.then40.i.if.end5.i.i_crit_edge
  %66 = ptrtoint ptr %flags.i.i11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i.i11, align 4
  %and8.i.i = and i32 %67, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end5.i.i.if.end23.i.i_crit_edge, label %if.then10.i.i

if.end5.i.i.if.end23.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

if.then10.i.i:                                    ; preds = %if.end5.i.i
  %68 = ptrtoint ptr %pan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %pan_id.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %filt.i.i.i) #10
  %70 = call ptr @memset(ptr %filt.i.i.i, i32 255, i32 24)
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 146) #10
  %ops.i90.i.i = getelementptr inbounds %struct.ieee802154_local, ptr %53, i32 0, i32 1
  %71 = ptrtoint ptr %ops.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i90.i.i, align 4
  %set_hw_addr_filt.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %set_hw_addr_filt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_hw_addr_filt.i.i.i, align 4
  %tobool.not.i91.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i91.i.i, label %drv_set_pan_id.exit.thread.i.i, label %drv_set_pan_id.exit.i.i

drv_set_pan_id.exit.thread.i.i:                   ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 149, i32 noundef 9, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %filt.i.i.i) #10
  br label %mac802154_slave_open.exit

drv_set_pan_id.exit.i.i:                          ; preds = %if.then10.i.i
  %75 = ptrtoint ptr %filt.i.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %69, ptr %filt.i.i.i, align 8
  tail call fastcc void @trace_802154_drv_set_pan_id(ptr noundef %53, i16 noundef zeroext %69) #10
  %76 = ptrtoint ptr %ops.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i90.i.i, align 4
  %set_hw_addr_filt26.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %set_hw_addr_filt26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_hw_addr_filt26.i.i.i, align 4
  %call.i93.i.i = call i32 %79(ptr noundef %53, ptr noundef nonnull %filt.i.i.i, i32 noundef 4) #10
  call fastcc void @trace_802154_drv_return_int(ptr noundef %53, i32 noundef %call.i93.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %filt.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %cmp12.i.i = icmp slt i32 %call.i93.i.i, 0
  br i1 %cmp12.i.i, label %drv_set_pan_id.exit.i.i.mac802154_slave_open.exit_crit_edge, label %if.end14.i.i

drv_set_pan_id.exit.i.i.mac802154_slave_open.exit_crit_edge: ; preds = %drv_set_pan_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_slave_open.exit

if.end14.i.i:                                     ; preds = %drv_set_pan_id.exit.i.i
  %80 = ptrtoint ptr %extended_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %extended_addr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %filt.i96.i.i) #10
  %82 = call ptr @memset(ptr %filt.i96.i.i, i32 255, i32 24)
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 168) #10
  %83 = ptrtoint ptr %ops.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i90.i.i, align 4
  %set_hw_addr_filt.i98.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %set_hw_addr_filt.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %set_hw_addr_filt.i98.i.i, align 4
  %tobool.not.i99.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i99.i.i, label %drv_set_extended_addr.exit.thread.i.i, label %drv_set_extended_addr.exit.i.i

drv_set_extended_addr.exit.thread.i.i:            ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 171, i32 noundef 9, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %filt.i96.i.i) #10
  br label %mac802154_slave_open.exit

drv_set_extended_addr.exit.i.i:                   ; preds = %if.end14.i.i
  %ieee_addr.i.i.i = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt.i96.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %ieee_addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %81, ptr %ieee_addr.i.i.i, align 8
  call fastcc void @trace_802154_drv_set_extended_addr(ptr noundef %53, i64 noundef %81) #10
  %88 = ptrtoint ptr %ops.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i90.i.i, align 4
  %set_hw_addr_filt25.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %set_hw_addr_filt25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_hw_addr_filt25.i.i.i, align 4
  %call.i101.i.i = call i32 %91(ptr noundef %53, ptr noundef nonnull %filt.i96.i.i, i32 noundef 2) #10
  call fastcc void @trace_802154_drv_return_int(ptr noundef %53, i32 noundef %call.i101.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %filt.i96.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i.i)
  %cmp16.i.i = icmp slt i32 %call.i101.i.i, 0
  br i1 %cmp16.i.i, label %drv_set_extended_addr.exit.i.i.mac802154_slave_open.exit_crit_edge, label %if.end18.i.i

drv_set_extended_addr.exit.i.i.mac802154_slave_open.exit_crit_edge: ; preds = %drv_set_extended_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_slave_open.exit

if.end18.i.i:                                     ; preds = %drv_set_extended_addr.exit.i.i
  %92 = ptrtoint ptr %short_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %short_addr.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %filt.i104.i.i) #10
  %94 = call ptr @memset(ptr %filt.i104.i.i, i32 255, i32 24)
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 190) #10
  %95 = ptrtoint ptr %ops.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i90.i.i, align 4
  %set_hw_addr_filt.i106.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %set_hw_addr_filt.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %set_hw_addr_filt.i106.i.i, align 4
  %tobool.not.i107.i.i = icmp eq ptr %98, null
  br i1 %tobool.not.i107.i.i, label %drv_set_short_addr.exit.thread.i.i, label %drv_set_short_addr.exit.i.i

drv_set_short_addr.exit.thread.i.i:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 193, i32 noundef 9, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %filt.i104.i.i) #10
  br label %mac802154_slave_open.exit

drv_set_short_addr.exit.i.i:                      ; preds = %if.end18.i.i
  %short_addr24.i.i.i = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt.i104.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %short_addr24.i.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %93, ptr %short_addr24.i.i.i, align 2
  call fastcc void @trace_802154_drv_set_short_addr(ptr noundef %53, i16 noundef zeroext %93) #10
  %100 = ptrtoint ptr %ops.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i90.i.i, align 4
  %set_hw_addr_filt26.i109.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %101, i32 0, i32 7
  %102 = ptrtoint ptr %set_hw_addr_filt26.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %set_hw_addr_filt26.i109.i.i, align 4
  %call.i110.i.i = call i32 %103(ptr noundef %53, ptr noundef nonnull %filt.i104.i.i, i32 noundef 1) #10
  call fastcc void @trace_802154_drv_return_int(ptr noundef %53, i32 noundef %call.i110.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %filt.i104.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i.i)
  %cmp20.i.i = icmp slt i32 %call.i110.i.i, 0
  br i1 %cmp20.i.i, label %drv_set_short_addr.exit.i.i.mac802154_slave_open.exit_crit_edge, label %drv_set_short_addr.exit.i.i.if.end23.i.i_crit_edge

drv_set_short_addr.exit.i.i.if.end23.i.i_crit_edge: ; preds = %drv_set_short_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

drv_set_short_addr.exit.i.i.mac802154_slave_open.exit_crit_edge: ; preds = %drv_set_short_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_slave_open.exit

if.end23.i.i:                                     ; preds = %drv_set_short_addr.exit.i.i.if.end23.i.i_crit_edge, %if.end5.i.i.if.end23.i.i_crit_edge
  %104 = ptrtoint ptr %flags.i.i11 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags.i.i11, align 4
  %and26.i.i = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end23.i.i.if.end34.i.i_crit_edge, label %if.then28.i.i

if.end23.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

if.then28.i.i:                                    ; preds = %if.end23.i.i
  %106 = ptrtoint ptr %lbt.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %lbt.i.i, align 4, !range !85
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 110) #10
  %ops.i113.i.i = getelementptr inbounds %struct.ieee802154_local, ptr %53, i32 0, i32 1
  %108 = ptrtoint ptr %ops.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops.i113.i.i, align 4
  %set_lbt.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %set_lbt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %set_lbt.i.i.i, align 4
  %tobool.not.i114.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i114.i.i, label %drv_set_lbt_mode.exit.thread.i.i, label %drv_set_lbt_mode.exit.i.i

drv_set_lbt_mode.exit.thread.i.i:                 ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 113, i32 noundef 9, ptr noundef null) #10
  br label %mac802154_slave_open.exit

drv_set_lbt_mode.exit.i.i:                        ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool29.i.i = icmp ne i8 %107, 0
  call fastcc void @trace_802154_drv_set_lbt_mode(ptr noundef %53, i1 noundef zeroext %tobool29.i.i) #10
  %112 = ptrtoint ptr %ops.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i113.i.i, align 4
  %set_lbt26.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %113, i32 0, i32 9
  %114 = ptrtoint ptr %set_lbt26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %set_lbt26.i.i.i, align 4
  %call.i116.i.i = call i32 %115(ptr noundef %53, i1 noundef zeroext %tobool29.i.i) #10
  call fastcc void @trace_802154_drv_return_int(ptr noundef %53, i32 noundef %call.i116.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i.i)
  %cmp31.i.i = icmp slt i32 %call.i116.i.i, 0
  br i1 %cmp31.i.i, label %drv_set_lbt_mode.exit.i.i.mac802154_slave_open.exit_crit_edge, label %drv_set_lbt_mode.exit.i.i.if.end34.i.i_crit_edge

drv_set_lbt_mode.exit.i.i.if.end34.i.i_crit_edge: ; preds = %drv_set_lbt_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

drv_set_lbt_mode.exit.i.i.mac802154_slave_open.exit_crit_edge: ; preds = %drv_set_lbt_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_slave_open.exit

if.end34.i.i:                                     ; preds = %drv_set_lbt_mode.exit.i.i.if.end34.i.i_crit_edge, %if.end23.i.i.if.end34.i.i_crit_edge
  %116 = ptrtoint ptr %flags.i.i11 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags.i.i11, align 4
  %and37.i.i = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %tobool38.not.i.i = icmp eq i32 %and37.i.i, 0
  br i1 %tobool38.not.i.i, label %if.end34.i.i.if.end44.i.i_crit_edge, label %if.then39.i.i

if.end34.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i.i

if.then39.i.i:                                    ; preds = %if.end34.i.i
  %118 = ptrtoint ptr %min_be.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %min_be.i.i, align 8
  %120 = ptrtoint ptr %max_be.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %max_be.i.i, align 1
  %122 = ptrtoint ptr %csma_retries.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %csma_retries.i.i, align 2
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 234) #10
  %ops.i119.i.i = getelementptr inbounds %struct.ieee802154_local, ptr %53, i32 0, i32 1
  %124 = ptrtoint ptr %ops.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i119.i.i, align 4
  %set_csma_params.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %125, i32 0, i32 12
  %126 = ptrtoint ptr %set_csma_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %set_csma_params.i.i.i, align 4
  %tobool.not.i120.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i120.i.i, label %drv_set_csma_params.exit.thread.i.i, label %drv_set_csma_params.exit.i.i

drv_set_csma_params.exit.thread.i.i:              ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 237, i32 noundef 9, ptr noundef null) #10
  br label %mac802154_slave_open.exit

drv_set_csma_params.exit.i.i:                     ; preds = %if.then39.i.i
  call fastcc void @trace_802154_drv_set_csma_params(ptr noundef %53, i8 noundef zeroext %119, i8 noundef zeroext %121, i8 noundef zeroext %123) #10
  %128 = ptrtoint ptr %ops.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i119.i.i, align 4
  %set_csma_params25.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %129, i32 0, i32 12
  %130 = ptrtoint ptr %set_csma_params25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %set_csma_params25.i.i.i, align 4
  %call.i122.i.i = call i32 %131(ptr noundef %53, i8 noundef zeroext %119, i8 noundef zeroext %121, i8 noundef zeroext %123) #10
  call fastcc void @trace_802154_drv_return_int(ptr noundef %53, i32 noundef %call.i122.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i.i)
  %cmp41.i.i = icmp slt i32 %call.i122.i.i, 0
  br i1 %cmp41.i.i, label %drv_set_csma_params.exit.i.i.mac802154_slave_open.exit_crit_edge, label %drv_set_csma_params.exit.i.i.if.end44.i.i_crit_edge

drv_set_csma_params.exit.i.i.if.end44.i.i_crit_edge: ; preds = %drv_set_csma_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i.i

drv_set_csma_params.exit.i.i.mac802154_slave_open.exit_crit_edge: ; preds = %drv_set_csma_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_slave_open.exit

if.end44.i.i:                                     ; preds = %drv_set_csma_params.exit.i.i.if.end44.i.i_crit_edge, %if.end34.i.i.if.end44.i.i_crit_edge
  %132 = ptrtoint ptr %flags.i.i11 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i.i11, align 4
  %and47.i.i = and i32 %133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end44.i.i.if.end44.i_crit_edge, label %if.then49.i.i

if.end44.i.i.if.end44.i_crit_edge:                ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then49.i.i:                                    ; preds = %if.end44.i.i
  %134 = ptrtoint ptr %frame_retries.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %frame_retries.i.i, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 254) #10
  %ops.i125.i.i = getelementptr inbounds %struct.ieee802154_local, ptr %53, i32 0, i32 1
  %136 = ptrtoint ptr %ops.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i125.i.i, align 4
  %set_frame_retries.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %137, i32 0, i32 13
  %138 = ptrtoint ptr %set_frame_retries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %set_frame_retries.i.i.i, align 4
  %tobool.not.i126.i.i = icmp eq ptr %139, null
  br i1 %tobool.not.i126.i.i, label %drv_set_max_frame_retries.exit.thread.i.i, label %drv_set_max_frame_retries.exit.i.i

drv_set_max_frame_retries.exit.thread.i.i:        ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 257, i32 noundef 9, ptr noundef null) #10
  br label %mac802154_slave_open.exit

drv_set_max_frame_retries.exit.i.i:               ; preds = %if.then49.i.i
  call fastcc void @trace_802154_drv_set_max_frame_retries(ptr noundef %53, i8 noundef signext %135) #10
  %140 = ptrtoint ptr %ops.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ops.i125.i.i, align 4
  %set_frame_retries25.i.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %141, i32 0, i32 13
  %142 = ptrtoint ptr %set_frame_retries25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %set_frame_retries25.i.i.i, align 4
  %call.i128.i.i = call i32 %143(ptr noundef %53, i8 noundef signext %135) #10
  call fastcc void @trace_802154_drv_return_int(ptr noundef %53, i32 noundef %call.i128.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i.i)
  %cmp51.i.i = icmp slt i32 %call.i128.i.i, 0
  br i1 %cmp51.i.i, label %drv_set_max_frame_retries.exit.i.i.mac802154_slave_open.exit_crit_edge, label %drv_set_max_frame_retries.exit.i.i.if.end44.i_crit_edge

drv_set_max_frame_retries.exit.i.i.if.end44.i_crit_edge: ; preds = %drv_set_max_frame_retries.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

drv_set_max_frame_retries.exit.i.i.mac802154_slave_open.exit_crit_edge: ; preds = %drv_set_max_frame_retries.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_slave_open.exit

if.end44.i:                                       ; preds = %drv_set_max_frame_retries.exit.i.i.if.end44.i_crit_edge, %if.end44.i.i.if.end44.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 31) #10
  call fastcc void @trace_802154_drv_start(ptr noundef %49) #10
  %started.i.i = getelementptr inbounds %struct.ieee802154_local, ptr %49, i32 0, i32 8
  %144 = ptrtoint ptr %started.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %started.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %ops.i.i = getelementptr inbounds %struct.ieee802154_local, ptr %49, i32 0, i32 1
  %145 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i.i, align 4
  %start.i.i = getelementptr inbounds %struct.ieee802154_ops, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %start.i.i, align 4
  %call.i.i24 = call i32 %148(ptr noundef %49) #10
  call fastcc void @trace_802154_drv_return_int(ptr noundef %49, i32 noundef %call.i.i24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool46.not.i = icmp eq i32 %call.i.i24, 0
  br i1 %tobool46.not.i, label %if.end44.i.if.end49.i_crit_edge, label %if.end44.i.mac802154_slave_open.exit_crit_edge

if.end44.i.mac802154_slave_open.exit_crit_edge:   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_slave_open.exit

if.end44.i.if.end49.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end44.i.if.end49.i_crit_edge, %if.end31.i.if.end49.i_crit_edge
  %149 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %open_count.i, align 4
  %inc.i = add i32 %150, 1
  store i32 %inc.i, ptr %open_count.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %151 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %152, i32 0, i32 13
  br label %mac802154_slave_open.exit

mac802154_slave_open.exit:                        ; preds = %if.end49.i, %if.end44.i.mac802154_slave_open.exit_crit_edge, %drv_set_max_frame_retries.exit.i.i.mac802154_slave_open.exit_crit_edge, %drv_set_max_frame_retries.exit.thread.i.i, %drv_set_csma_params.exit.i.i.mac802154_slave_open.exit_crit_edge, %drv_set_csma_params.exit.thread.i.i, %drv_set_lbt_mode.exit.i.i.mac802154_slave_open.exit_crit_edge, %drv_set_lbt_mode.exit.thread.i.i, %drv_set_short_addr.exit.i.i.mac802154_slave_open.exit_crit_edge, %drv_set_short_addr.exit.thread.i.i, %drv_set_extended_addr.exit.i.i.mac802154_slave_open.exit_crit_edge, %drv_set_extended_addr.exit.thread.i.i, %drv_set_pan_id.exit.i.i.mac802154_slave_open.exit_crit_edge, %drv_set_pan_id.exit.thread.i.i, %drv_set_promiscuous_mode.exit.i.i.mac802154_slave_open.exit_crit_edge, %drv_set_promiscuous_mode.exit.thread.i.i
  %state.sink.i = phi ptr [ %state.i.i.i, %if.end49.i ], [ %state.i, %drv_set_max_frame_retries.exit.thread.i.i ], [ %state.i, %drv_set_csma_params.exit.thread.i.i ], [ %state.i, %drv_set_lbt_mode.exit.thread.i.i ], [ %state.i, %drv_set_short_addr.exit.thread.i.i ], [ %state.i, %drv_set_extended_addr.exit.thread.i.i ], [ %state.i, %drv_set_pan_id.exit.thread.i.i ], [ %state.i, %drv_set_promiscuous_mode.exit.thread.i.i ], [ %state.i, %drv_set_max_frame_retries.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %state.i, %drv_set_csma_params.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %state.i, %drv_set_lbt_mode.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %state.i, %drv_set_short_addr.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %state.i, %drv_set_extended_addr.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %state.i, %drv_set_pan_id.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %state.i, %drv_set_promiscuous_mode.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %state.i, %if.end44.i.mac802154_slave_open.exit_crit_edge ]
  %retval.0.i = phi i32 [ 0, %if.end49.i ], [ -95, %drv_set_max_frame_retries.exit.thread.i.i ], [ -95, %drv_set_csma_params.exit.thread.i.i ], [ -95, %drv_set_lbt_mode.exit.thread.i.i ], [ -95, %drv_set_short_addr.exit.thread.i.i ], [ -95, %drv_set_extended_addr.exit.thread.i.i ], [ -95, %drv_set_pan_id.exit.thread.i.i ], [ -95, %drv_set_promiscuous_mode.exit.thread.i.i ], [ %call.i128.i.i, %drv_set_max_frame_retries.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %call.i122.i.i, %drv_set_csma_params.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %call.i116.i.i, %drv_set_lbt_mode.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %call.i110.i.i, %drv_set_short_addr.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %call.i101.i.i, %drv_set_extended_addr.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %call.i93.i.i, %drv_set_pan_id.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %call.i.i.i, %drv_set_promiscuous_mode.exit.i.i.mac802154_slave_open.exit_crit_edge ], [ %call.i.i24, %if.end44.i.mac802154_slave_open.exit_crit_edge ]
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.sink.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mac802154_slave_open.exit, %if.then111.i.i.cleanup_crit_edge, %if.then98.i.i.cleanup_crit_edge, %lor.lhs.false85.i.i.cleanup_crit_edge, %lor.lhs.false79.i.i.cleanup_crit_edge, %if.then73.i.i.cleanup_crit_edge, %lor.lhs.false62.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.then51.i.i.cleanup_crit_edge, %if.then38.i.i.cleanup_crit_edge, %land.lhs.true7.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mac802154_slave_open.exit ], [ -16, %if.then111.i.i.cleanup_crit_edge ], [ -16, %if.then98.i.i.cleanup_crit_edge ], [ -16, %if.then73.i.i.cleanup_crit_edge ], [ -16, %lor.lhs.false79.i.i.cleanup_crit_edge ], [ -16, %lor.lhs.false85.i.i.cleanup_crit_edge ], [ -16, %if.then51.i.i.cleanup_crit_edge ], [ -16, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -16, %lor.lhs.false62.i.i.cleanup_crit_edge ], [ -16, %if.then38.i.i.cleanup_crit_edge ], [ -16, %land.lhs.true7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac802154_slave_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 8
  %call2 = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @mac802154_slave_close.__already_done, align 1
  br i1 %.b49, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !81

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mac802154_slave_close.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 316, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 316) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %open_count = getelementptr inbounds %struct.ieee802154_local, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %open_count, align 4
  %state = getelementptr i8, ptr %dev, i32 2384
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #10
  %6 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool40.not = icmp eq i32 %7, 0
  br i1 %tobool40.not, label %if.then41, label %if.end31.if.end42_crit_edge

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee802154_stop_device(ptr noundef %1) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end31.if.end42_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_subif_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac802154_wpan_mac_addr(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  %params.i = alloca %struct.ieee802154_llsec_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lowpan_dev = getelementptr i8, ptr %dev, i32 2336
  %2 = ptrtoint ptr %lowpan_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lowpan_dev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %state.i36 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i36, align 4
  %and1.i.i37 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i37)
  %tobool.i38.not = icmp eq i32 %and1.i.i37, 0
  br i1 %tobool.i38.not, label %if.then2.if.end8_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %sa_data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %sa_data, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.not.i = icmp ne i64 %7, 0
  %and.i = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %9 = and i1 %cmp.not.i, %tobool.not.i
  br i1 %9, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %10 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %11 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #10
  %extended_addr15 = getelementptr i8, ptr %dev, i32 2352
  %12 = ptrtoint ptr %extended_addr15 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %8, ptr %extended_addr15, align 8
  %13 = ptrtoint ptr %lowpan_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lowpan_dev, align 8
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %if.end11.if.end22_crit_edge, label %if.then19

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  %addr_len.i39 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 56
  %17 = ptrtoint ptr %addr_len.i39 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr_len.i39, align 1
  %conv.i40 = zext i8 %18 to i32
  tail call void @dev_addr_mod(ptr noundef nonnull %14, i32 noundef 0, ptr noundef %16, i32 noundef %conv.i40) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end11.if.end22_crit_edge
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %19 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ml_priv.i.i, align 8
  %llsec.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %llsec.i, align 4
  %tobool.not.i41 = icmp eq ptr %22, null
  br i1 %tobool.not.i41, label %if.end22.cleanup_crit_edge, label %if.then.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params.i) #10
  %23 = call ptr @memset(ptr %params.i, i32 255, i32 80)
  %pan_id.i = getelementptr i8, ptr %dev, i32 2344
  %24 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pan_id.i, align 8
  %pan_id3.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 5
  %26 = ptrtoint ptr %pan_id3.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %pan_id3.i, align 8
  %27 = ptrtoint ptr %extended_addr15 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %extended_addr15, align 8
  %hwaddr.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 6
  %29 = ptrtoint ptr %hwaddr.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %hwaddr.i, align 8
  %30 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %llsec.i, align 4
  %set_params.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %set_params.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_params.i, align 4
  %call6.i = call i32 %33(ptr noundef %dev, ptr noundef nonnull %params.i, i32 noundef 96) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end22.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -16, %if.then2.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %call6.i, %if.then.i ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac802154_wpan_ioctl(ptr noundef %dev, ptr nocapture noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %cmd.off = add i32 %cmd, -35093
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup54_crit_edge

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #10
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %if.end.cleanup54.sink.split_crit_edge [
    i32 35093, label %sw.bb
    i32 35094, label %sw.bb16
  ]

if.end.cleanup54.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54.sink.split

sw.bb:                                            ; preds = %if.end
  %pan_id3 = getelementptr i8, ptr %dev, i32 2344
  %1 = ptrtoint ptr %pan_id3 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %pan_id3, align 8
  %short_addr4 = getelementptr i8, ptr %dev, i32 2346
  %3 = ptrtoint ptr %short_addr4 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %short_addr4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %cmp5 = icmp eq i16 %2, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp8 = icmp eq i16 %4, -1
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp8
  br i1 %or.cond, label %sw.bb.cleanup54.sink.split_crit_edge, label %if.end11

sw.bb.cleanup54.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54.sink.split

if.end11:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = tail call i16 @llvm.bswap.i16(i16 %2)
  %7 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 36, ptr %ifr_ifru, align 4
  %addr = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %addr, align 4
  %pan_id13 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pan_id13 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %pan_id13, align 4
  %10 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %5, ptr %10, align 2
  br label %cleanup54.sink.split

sw.bb16:                                          ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end, label %sw.bb16.cleanup54.sink.split_crit_edge

sw.bb16.cleanup54.sink.split_crit_edge:           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54.sink.split

do.end:                                           ; preds = %sw.bb16
  %dev20 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev20, ptr noundef nonnull @.str.10) #13
  %14 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ifr_ifru, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %15)
  %cmp23.not = icmp eq i16 %15, 36
  br i1 %cmp23.not, label %lor.lhs.false25, label %do.end.cleanup54.sink.split_crit_edge

do.end.cleanup54.sink.split_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54.sink.split

lor.lhs.false25:                                  ; preds = %do.end
  %addr26 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %addr26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp28.not = icmp eq i32 %17, 2
  br i1 %cmp28.not, label %lor.lhs.false30, label %lor.lhs.false25.cleanup54.sink.split_crit_edge

lor.lhs.false25.cleanup54.sink.split_crit_edge:   ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54.sink.split

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %pan_id32 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %pan_id32 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pan_id32, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp34 = icmp eq i16 %19, -1
  br i1 %cmp34, label %lor.lhs.false30.cleanup54.sink.split_crit_edge, label %lor.lhs.false36

lor.lhs.false30.cleanup54.sink.split_crit_edge:   ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54.sink.split

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %20 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %22)
  %switch79 = icmp ugt i16 %22, -3
  br i1 %switch79, label %lor.lhs.false36.cleanup54.sink.split_crit_edge, label %if.end47

lor.lhs.false36.cleanup54.sink.split_crit_edge:   ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54.sink.split

if.end47:                                         ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i16 @llvm.bswap.i16(i16 %19)
  %pan_id50 = getelementptr i8, ptr %dev, i32 2344
  %24 = ptrtoint ptr %pan_id50 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %pan_id50, align 8
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %20, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %short_addr52 = getelementptr i8, ptr %dev, i32 2346
  %28 = ptrtoint ptr %short_addr52 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %short_addr52, align 2
  %call53 = tail call i32 @mac802154_wpan_update_llsec(ptr noundef %dev)
  br label %cleanup54.sink.split

cleanup54.sink.split:                             ; preds = %if.end47, %lor.lhs.false36.cleanup54.sink.split_crit_edge, %lor.lhs.false30.cleanup54.sink.split_crit_edge, %lor.lhs.false25.cleanup54.sink.split_crit_edge, %do.end.cleanup54.sink.split_crit_edge, %sw.bb16.cleanup54.sink.split_crit_edge, %if.end11, %sw.bb.cleanup54.sink.split_crit_edge, %if.end.cleanup54.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -16, %sw.bb16.cleanup54.sink.split_crit_edge ], [ -515, %if.end.cleanup54.sink.split_crit_edge ], [ %call53, %if.end47 ], [ 0, %if.end11 ], [ -99, %sw.bb.cleanup54.sink.split_crit_edge ], [ -22, %lor.lhs.false36.cleanup54.sink.split_crit_edge ], [ -22, %lor.lhs.false30.cleanup54.sink.split_crit_edge ], [ -22, %lor.lhs.false25.cleanup54.sink.split_crit_edge ], [ -22, %do.end.cleanup54.sink.split_crit_edge ]
  tail call void @rtnl_unlock() #10
  br label %cleanup54

cleanup54:                                        ; preds = %cleanup54.sink.split, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ -515, %entry.cleanup54_crit_edge ], [ %retval.0.ph, %cleanup54.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_drv_set_promiscuous_mode(ptr noundef %local, i1 noundef zeroext %on) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_promiscuous_mode, i32 0, i32 1), ptr blockaddress(@trace_802154_drv_set_promiscuous_mode, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %call43 = tail call i32 @__traceiter_802154_drv_set_promiscuous_mode(ptr noundef null, ptr noundef %local, i1 noundef zeroext %on) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !81

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_promiscuous_mode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_promiscuous_mode, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_802154_drv_set_promiscuous_mode.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_drv_set_promiscuous_mode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 265, ptr noundef nonnull @.str.8) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_drv_return_int(ptr noundef %local, i32 noundef %ret) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_return_int, i32 0, i32 1), ptr blockaddress(@trace_802154_drv_return_int, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %call42 = tail call i32 @__traceiter_802154_drv_return_int(ptr noundef null, ptr noundef %local, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_drv_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_drv_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 66, ptr noundef nonnull @.str.8) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_drv_set_promiscuous_mode(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_drv_set_pan_id(ptr noundef %local, i16 noundef zeroext %pan_id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_pan_id, i32 0, i32 1), ptr blockaddress(@trace_802154_drv_set_pan_id, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %call42 = tail call i32 @__traceiter_802154_drv_set_pan_id(ptr noundef null, ptr noundef %local, i16 noundef zeroext %pan_id) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_pan_id, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_pan_id, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_drv_set_pan_id.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_drv_set_pan_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 184, ptr noundef nonnull @.str.8) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_drv_set_pan_id(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_drv_set_extended_addr(ptr noundef %local, i64 noundef %extended_addr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_extended_addr, i32 0, i32 1), ptr blockaddress(@trace_802154_drv_set_extended_addr, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  %call42 = tail call i32 @__traceiter_802154_drv_set_extended_addr(ptr noundef null, ptr noundef %local, i64 noundef %extended_addr) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_extended_addr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_extended_addr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_drv_set_extended_addr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_drv_set_extended_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 199, ptr noundef nonnull @.str.8) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_drv_set_extended_addr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_drv_set_short_addr(ptr noundef %local, i16 noundef zeroext %short_addr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_short_addr, i32 0, i32 1), ptr blockaddress(@trace_802154_drv_set_short_addr, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %call42 = tail call i32 @__traceiter_802154_drv_set_short_addr(ptr noundef null, ptr noundef %local, i16 noundef zeroext %short_addr) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_short_addr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_short_addr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_drv_set_short_addr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_drv_set_short_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 169, ptr noundef nonnull @.str.8) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_drv_set_short_addr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_drv_set_lbt_mode(ptr noundef %local, i1 noundef zeroext %mode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_lbt_mode, i32 0, i32 1), ptr blockaddress(@trace_802154_drv_set_lbt_mode, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %call43 = tail call i32 @__traceiter_802154_drv_set_lbt_mode(ptr noundef null, ptr noundef %local, i1 noundef zeroext %mode) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !81

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_lbt_mode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_lbt_mode, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_802154_drv_set_lbt_mode.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_drv_set_lbt_mode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 154, ptr noundef nonnull @.str.8) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_drv_set_lbt_mode(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_drv_set_csma_params(ptr noundef %local, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %max_csma_backoffs) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_csma_params, i32 0, i32 1), ptr blockaddress(@trace_802154_drv_set_csma_params, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %call42 = tail call i32 @__traceiter_802154_drv_set_csma_params(ptr noundef null, ptr noundef %local, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %max_csma_backoffs) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_csma_params, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_csma_params, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_drv_set_csma_params.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_drv_set_csma_params.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 235, ptr noundef nonnull @.str.8) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_drv_set_csma_params(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_drv_set_max_frame_retries(ptr noundef %local, i8 noundef signext %max_frame_retries) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_max_frame_retries, i32 0, i32 1), ptr blockaddress(@trace_802154_drv_set_max_frame_retries, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !107
  %call42 = tail call i32 @__traceiter_802154_drv_set_max_frame_retries(ptr noundef null, ptr noundef %local, i8 noundef signext %max_frame_retries) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_max_frame_retries, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_set_max_frame_retries, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_drv_set_max_frame_retries.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_drv_set_max_frame_retries.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 250, ptr noundef nonnull @.str.8) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_drv_set_max_frame_retries(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_drv_start(ptr noundef %local) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_start, i32 0, i32 1), ptr blockaddress(@trace_802154_drv_start, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %call42 = tail call i32 @__traceiter_802154_drv_start(ptr noundef null, ptr noundef %local) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_drv_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_drv_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_drv_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 71, ptr noundef nonnull @.str.8) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_drv_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_stop_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_header_create(ptr noundef %skb, ptr noundef %dev, ptr noundef readonly %daddr, ptr noundef readonly %saddr, i32 noundef %len) #0 align 64 {
entry:
  %params.i = alloca %struct.ieee802154_llsec_params, align 8
  %hdr = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #10
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 56)
  %tobool.not = icmp eq ptr %daddr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type, align 1
  %3 = and i8 %2, 7
  %bf.value = zext i8 %3 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 8
  %secen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %secen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %secen, align 1, !range !85
  %6 = zext i8 %5 to i16
  %bf.shl9 = shl nuw nsw i16 %6, 11
  %bf.set11 = or i16 %bf.shl9, %bf.shl
  %ackreq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %ackreq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ackreq, align 2, !range !85
  %9 = zext i8 %8 to i16
  %bf.shl17 = shl nuw nsw i16 %9, 13
  %bf.set19 = or i16 %bf.shl17, %bf.set11
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %bf.set19, ptr %hdr, align 8
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 83
  %11 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ieee802154_ptr, align 4
  %dsn = getelementptr inbounds %struct.wpan_dev, ptr %12, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dsn, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %dsn, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dsn, ptr %dsn, i32 1, ptr elementtype(i32) %dsn) #10, !srcloc !87
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  %conv21 = trunc i32 %asmresult.i.i.i.i to i8
  %seq = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 1
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21, ptr %seq, align 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params.i) #10
  %15 = call ptr @memset(ptr %params.i, i32 255, i32 80)
  %sec.i = getelementptr i8, ptr %dev, i32 2496
  %call.i = call i32 @mac802154_llsec_get_params(ptr noundef %sec.i, ptr noundef nonnull %params.i) #10
  %16 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %params.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %secen_override.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %secen_override.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %secen_override.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end25_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end25_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %secen to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %secen, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not.i = icmp eq i8 %21, 0
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end25_crit_edge, label %land.lhs.true2.i.mac802154_set_header_security.exit_crit_edge

land.lhs.true2.i.mac802154_set_header_security.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_set_header_security.exit

land.lhs.true2.i.if.end25_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

lor.lhs.false.i:                                  ; preds = %if.end
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.lhs.false11.i_crit_edge, label %land.lhs.true8.i

lor.lhs.false.i.lor.lhs.false11.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false11.i

land.lhs.true8.i:                                 ; preds = %lor.lhs.false.i
  %22 = ptrtoint ptr %secen to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %secen, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not.i = icmp eq i8 %23, 0
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.end25_crit_edge, label %land.lhs.true8.i.lor.lhs.false11.i_crit_edge

land.lhs.true8.i.lor.lhs.false11.i_crit_edge:     ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false11.i

land.lhs.true8.i.if.end25_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

lor.lhs.false11.i:                                ; preds = %land.lhs.true8.i.lor.lhs.false11.i_crit_edge, %lor.lhs.false.i.lor.lhs.false11.i_crit_edge
  %out_level.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 2
  %24 = ptrtoint ptr %out_level.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %out_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool12.not.i = icmp eq i8 %25, 0
  br i1 %tobool12.not.i, label %lor.lhs.false11.i.if.end25_crit_edge, label %if.end14.i

lor.lhs.false11.i.if.end25_crit_edge:             ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end14.i:                                       ; preds = %lor.lhs.false11.i
  %seclevel_override.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %26 = ptrtoint ptr %seclevel_override.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %seclevel_override.i, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool15.not.i = icmp eq i8 %27, 0
  br i1 %tobool15.not.i, label %if.end14.i.cond.end.i_crit_edge, label %land.lhs.true16.i

if.end14.i.cond.end.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

land.lhs.true16.i:                                ; preds = %if.end14.i
  %seclevel.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %seclevel.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %seclevel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool17.not.i = icmp eq i8 %29, 0
  br i1 %tobool17.not.i, label %land.lhs.true16.i.mac802154_set_header_security.exit_crit_edge, label %land.lhs.true16.i.cond.end.i_crit_edge

land.lhs.true16.i.cond.end.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

land.lhs.true16.i.mac802154_set_header_security.exit_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mac802154_set_header_security.exit

cond.end.i:                                       ; preds = %land.lhs.true16.i.cond.end.i_crit_edge, %if.end14.i.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %25, %if.end14.i.cond.end.i_crit_edge ], [ %29, %land.lhs.true16.i.cond.end.i_crit_edge ]
  %30 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i = load i16, ptr %hdr, align 8
  %bf.set.i = or i16 %bf.load.i, 2048
  store i16 %bf.set.i, ptr %hdr, align 8
  %sec26.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %31 = ptrtoint ptr %sec26.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load27.i = load i8, ptr %sec26.i, align 8
  %bf.value.i = and i8 %cond.in.i, 7
  %bf.clear28.i = and i8 %bf.load27.i, -32
  %bf.set29.i = or i8 %bf.clear28.i, %bf.value.i
  %out_key.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 3
  %32 = ptrtoint ptr %out_key.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %out_key.i, align 8
  %bf.value32.i = shl i8 %33, 3
  %bf.shl.i = and i8 %bf.value32.i, 24
  %bf.set34.i = or i8 %bf.set29.i, %bf.shl.i
  store i8 %bf.set34.i, ptr %sec26.i, align 8
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %33, label %cond.end.i.if.end51.i_crit_edge [
    i8 2, label %if.then39.i
    i8 3, label %if.then47.i
  ]

cond.end.i.if.end51.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then39.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %38 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %38, align 8
  br label %if.end51.i

if.then47.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %43 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %42, ptr %43, align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then47.i, %if.then39.i, %cond.end.i.if.end51.i_crit_edge
  %id.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params.i, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id.i, align 1
  %key_id.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %key_id.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %key_id.i, align 1
  br label %if.end25

mac802154_set_header_security.exit:               ; preds = %land.lhs.true16.i.mac802154_set_header_security.exit_crit_edge, %land.lhs.true2.i.mac802154_set_header_security.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params.i) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end51.i, %lor.lhs.false11.i.if.end25_crit_edge, %land.lhs.true8.i.if.end25_crit_edge, %land.lhs.true2.i.if.end25_crit_edge, %land.lhs.true.i.if.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params.i) #10
  %tobool26.not = icmp eq ptr %saddr, null
  br i1 %tobool26.not, label %if.then27, label %if.else49

if.then27:                                        ; preds = %if.end25
  %short_addr = getelementptr i8, ptr %dev, i32 2346
  %48 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %short_addr, align 2
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %49, label %lor.lhs.false35 [
    i16 -1, label %if.then27.if.then39_crit_edge
    i16 -257, label %if.then27.if.then39_crit_edge86
  ]

if.then27.if.then39_crit_edge86:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

if.then27.if.then39_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

lor.lhs.false35:                                  ; preds = %if.then27
  %pan_id = getelementptr i8, ptr %dev, i32 2344
  %51 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pan_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %cmp37 = icmp eq i16 %52, -1
  br i1 %cmp37, label %lor.lhs.false35.if.then39_crit_edge, label %if.else

lor.lhs.false35.if.then39_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false35.if.then39_crit_edge, %if.then27.if.then39_crit_edge, %if.then27.if.then39_crit_edge86
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %53 = ptrtoint ptr %source to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %source, align 8
  %extended_addr = getelementptr i8, ptr %dev, i32 2352
  %54 = ptrtoint ptr %extended_addr to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %extended_addr, align 8
  %56 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %55, ptr %56, align 8
  br label %if.end45

if.else:                                          ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  %source41 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %58 = ptrtoint ptr %source41 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %source41, align 8
  %59 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %49, ptr %59, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then39
  %pan_id46 = getelementptr i8, ptr %dev, i32 2344
  %61 = ptrtoint ptr %pan_id46 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %pan_id46, align 8
  %pan_id48 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %pan_id48 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %pan_id48, align 2
  br label %if.end51

if.else49:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %source50 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %64 = call ptr @memcpy(ptr %source50, ptr %saddr, i32 16)
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.end45
  %dest = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  %65 = call ptr @memcpy(ptr %dest, ptr %daddr, i32 16)
  %call52 = call i32 @ieee802154_hdr_push(ptr noundef %skb, ptr noundef nonnull %hdr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %68 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %70 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv57 = trunc i32 %call52 to i16
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %71 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv57, ptr %mac_len, align 4
  %call58 = call i32 @ieee802154_max_payload(ptr noundef nonnull %hdr) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call58, i32 %len)
  %cmp59 = icmp ult i32 %call58, %len
  %.call52 = select i1 %cmp59, i32 -90, i32 %call52
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end51.cleanup_crit_edge, %mac802154_set_header_security.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %mac802154_set_header_security.exit ], [ -22, %if.end51.cleanup_crit_edge ], [ %.call52, %if.end56 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_monitor_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_notify(ptr nocapture noundef readnone %nb, i32 noundef %state, ptr nocapture noundef readonly %ptr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %state)
  %cmp.not = icmp eq i32 %state, 11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee802154_ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mac802154_wpan_phy_privid to i32))
  %8 = load ptr, ptr @mac802154_wpan_phy_privid, align 4
  %cmp7.not = icmp eq ptr %7, %8
  br i1 %cmp7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %1, i32 2388
  %9 = call ptr @memcpy(ptr %name, ptr %1, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !60, !61, !62, !63, !64, !65, !67, !69}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/mac802154/iface.c", i32 622, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/mac802154/iface.c", i32 688, i32 2}
!6 = !{ptr @ieee802154_setup_sdata.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/mac802154/iface.c", i32 592, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mac802154_header_ops, !10, !"mac802154_header_ops", i1 false, i1 false}
!10 = !{!"../net/mac802154/iface.c", i32 496, i32 32}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/mac802154/iface.c", i32 484, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mac802154_header_parse.__UNIQUE_ID_ddebug373, !12, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!16 = !{ptr @mac802154_wpan_ops, !17, !"mac802154_wpan_ops", i1 false, i1 false}
!17 = !{!"../net/mac802154/iface.c", i32 501, i32 36}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../net/mac802154/iface.c", i32 229, i32 2}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../net/mac802154/iface.c", i32 200, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/mac802154/driver-ops.h", i32 272, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/mac802154/trace.h", i32 252, i32 1}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../net/mac802154/trace.h", i32 53, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../net/mac802154/trace.h", i32 171, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../net/mac802154/trace.h", i32 186, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../net/mac802154/trace.h", i32 156, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../net/mac802154/trace.h", i32 141, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../net/mac802154/trace.h", i32 216, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../net/mac802154/trace.h", i32 237, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../net/mac802154/trace.h", i32 68, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../net/mac802154/iface.c", i32 316, i32 2}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/mac802154/iface.c", i32 89, i32 3}
!60 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mac802154_wpan_ioctl._entry, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @mac802154_wpan_ioctl._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ieee802154_header_ops, !66, !"ieee802154_header_ops", i1 false, i1 false}
!66 = !{!"../net/mac802154/iface.c", i32 416, i32 41}
!67 = !{ptr @mac802154_monitor_ops, !68, !"mac802154_monitor_ops", i1 false, i1 false}
!68 = !{!"../net/mac802154/iface.c", i32 509, i32 36}
!69 = !{ptr @mac802154_netdev_notifier, !70, !"mac802154_netdev_notifier", i1 false, i1 false}
!70 = !{!"../net/mac802154/iface.c", i32 732, i32 30}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{!"auto-init"}
!83 = !{i64 2156443470, i64 2156443956, i64 2156443507, i64 2156443563, i64 2156443597, i64 2156443621, i64 2156443662, i64 2156443683, i64 2156443711, i64 2156443745}
!84 = !{i64 2149630976}
!85 = !{i8 0, i8 2}
!86 = !{i64 2148584994}
!87 = !{i64 2148500279, i64 2148500311, i64 2148500340, i64 2148500374, i64 2148500405, i64 2148500428}
!88 = !{i64 2148585223}
!89 = !{i64 2149056824, i64 2149056829, i64 2149056842, i64 2149056886, i64 2149056920, i64 2149056941}
!90 = !{i64 2156416517}
!91 = !{i64 2156400747}
!92 = !{i64 2156400990}
!93 = !{i64 2149614143}
!94 = !{i64 2149615179}
!95 = !{i64 2156140817}
!96 = !{i64 2156141042}
!97 = !{i64 2156306979}
!98 = !{i64 2156307210}
!99 = !{i64 2156324510}
!100 = !{i64 2156324769}
!101 = !{i64 2156285558}
!102 = !{i64 2156285805}
!103 = !{i64 2156268126}
!104 = !{i64 2156268357}
!105 = !{i64 2156364418}
!106 = !{i64 2156364713}
!107 = !{i64 2156382687}
!108 = !{i64 2156382962}
!109 = !{i64 2156157410}
!110 = !{i64 2156157615}
