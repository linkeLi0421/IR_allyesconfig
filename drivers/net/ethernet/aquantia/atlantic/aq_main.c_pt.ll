; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
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
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.112, [48 x i8], %union.anon.113, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.115, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, ptr }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.117, i32, i32, i32, i16, i16, %union.anon.119, i32, %union.anon.120, %union.anon.121, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.117 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.128, %union.anon.129 }
%union.anon.128 = type { [16 x i8] }
%union.anon.129 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.aq_hw_s = type { %struct.atomic_t, i8, ptr, ptr, ptr, %struct.aq_hw_link_status_s, %struct.hw_atl_utils_mbox, %struct.hw_atl_stats_s, %struct.aq_stats_s, i64, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.hw_atl_utils_fw_rpc, i64, i16, ptr }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.hw_atl_utils_mbox = type { %struct.hw_atl_utils_mbox_header, %struct.hw_atl_stats_s, %struct.hw_atl_info }
%struct.hw_atl_utils_mbox_header = type { i32, i32, i32 }
%struct.hw_atl_info = type { [6 x i8], i16, i16, i8, i8, [4 x %struct.hw_atl_cable_diag], %struct.hw_atl_ptp_offset, [12 x i8], i32, i32, i32, [7 x i32], [3 x i32], [7 x i32], i32, [12 x i32], i32, i32, i32, i32, [3 x i32], [18 x i32], [4 x i16] }
%struct.hw_atl_cable_diag = type { i8, i8, i8, i8 }
%struct.hw_atl_ptp_offset = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hw_atl_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hw_atl_utils_fw_rpc = type { i32, %union.anon.161 }
%union.anon.161 = type { %struct.offload_info }
%struct.offload_info = type { i32, i32, [6 x i8], [2 x i8], %struct.offload_ip_info, %struct.offload_port_info, %struct.offload_ka_info, %struct.offload_rr_info, [0 x i8] }
%struct.offload_ip_info = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.offload_port_info = type { i16, i16, i32, i32 }
%struct.offload_ka_info = type { i16, i16, i32, i32, i32, i32 }
%struct.offload_rr_info = type { i32, i32, i32, i32 }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }

@__UNIQUE_ID_file490 = internal constant [62 x i8] c"atlantic.file=drivers/net/ethernet/aquantia/atlantic/atlantic\00", section ".modinfo", align 1
@__UNIQUE_ID_license491 = internal constant [24 x i8] c"atlantic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author492 = internal constant [24 x i8] c"atlantic.author=Marvell\00", section ".modinfo", align 1
@__UNIQUE_ID_description493 = internal constant [70 x i8] c"atlantic.description=Marvell (Aquantia) Corporation(R) Network Driver\00", section ".modinfo", align 1
@aq_ndev_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aq_ndev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @aq_ndev_open, ptr @aq_ndev_close, ptr @aq_ndev_start_xmit, ptr null, ptr null, ptr null, ptr @aq_ndev_set_multicast_settings, ptr @aq_ndev_set_mac_address, ptr null, ptr null, ptr @aq_ndev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @aq_ndev_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aq_ndo_vlan_rx_add_vid, ptr @aq_ndo_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aq_ndo_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aq_ndev_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@aq_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@__initcall__kmod_atlantic__496_456_aq_ndev_init_module6 = internal global ptr @aq_ndev_init_module, section ".initcall6.init", align 4
@__exitcall_aq_ndev_exit_module = internal global ptr @aq_ndev_exit_module, section ".exitcall.exit", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Too many TCs requested\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TC count should be power of 2\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Min tx rate is not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@aq_ndev_driver_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atlantic\00", [23 x i8] zeroinitializer }, align 32
@aq_ndev_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Failed to create workqueue\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aq_ndev_init_module\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/aquantia/atlantic/aq_main.c\00", [47 x i8] zeroinitializer }, align 32
@aq_ndev_init_module._entry_ptr = internal global ptr @aq_ndev_init_module._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.10 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"aq_ndev_wq\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 32, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"aq_ndev_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 413, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 156, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 356, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 361, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 366, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 431, i32 15 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"aq_ndev_driver_name\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 28, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [52 x i8] c"../drivers/net/ethernet/aquantia/atlantic/aq_main.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 433, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author492, ptr @__UNIQUE_ID_description493, ptr @__UNIQUE_ID_file490, ptr @__UNIQUE_ID_license491, ptr @__exitcall_aq_ndev_exit_module, ptr @__initcall__kmod_atlantic__496_456_aq_ndev_init_module6, ptr @aq_ndev_exit_module, ptr @aq_ndev_init_module._entry, ptr @aq_ndev_init_module._entry_ptr, ptr @aq_ndev_wq, ptr @aq_ndev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @aq_ndev_driver_name, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ndev_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ndev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ndev_driver_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ndev_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ndev_schedule_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aq_ndev_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aq_ndev_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 1584, i32 noundef 32, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ndev2 = getelementptr i8, ptr %call, i32 2476
  %0 = ptrtoint ptr %ndev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %ndev2, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @aq_ndev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @aq_ethtool_ops, ptr %ethtool_ops, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aq_ndev_exit_module() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @aq_pci_func_unregister_driver() #7
  %0 = load ptr, ptr @aq_ndev_wq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @destroy_workqueue(ptr noundef nonnull %0) #7
  store ptr null, ptr @aq_ndev_wq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_pci_func_unregister_driver() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndev_init_module() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.6, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @aq_ndev_driver_name) #7
  store ptr %call, ptr @aq_ndev_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @aq_pci_func_register_driver() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @aq_ndev_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndev_open(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call i32 @aq_nic_init(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.if.then16_crit_edge, label %if.end

entry.if.then16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @aq_reapply_rxnfc_all_rules(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.if.then16_crit_edge, label %if.end5

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @aq_filters_vlans_update(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.if.then16_crit_edge, label %if.end9

if.end5.if.then16_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @aq_nic_start(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @aq_nic_stop(ptr noundef %add.ptr.i) #7
  br label %if.then16

if.then16:                                        ; preds = %if.then12, %if.end5.if.then16_crit_edge, %if.end.if.then16_crit_edge, %entry.if.then16_crit_edge
  %err.0.ph = phi i32 [ %call10, %if.then12 ], [ %call6, %if.end5.if.then16_crit_edge ], [ %call2, %if.end.if.then16_crit_edge ], [ %call1, %entry.if.then16_crit_edge ]
  tail call void @aq_nic_deinit(ptr noundef %add.ptr.i, i1 noundef zeroext true) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end9.if.end17_crit_edge
  %err.030 = phi i32 [ %err.0.ph, %if.then16 ], [ %call10, %if.end9.if.end17_crit_edge ]
  ret i32 %err.030
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndev_close(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call i32 @aq_nic_stop(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @aq_nic_deinit(ptr noundef %add.ptr.i, i1 noundef zeroext true) #7
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndev_start_xmit(ptr noundef %skb, ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #7
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end46_crit_edge, label %if.then, !prof !48

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then:                                          ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_flags, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then.if.then44_crit_edge, !prof !48

if.then.if.then44_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.then
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.lor.lhs.false33_crit_edge

lor.lhs.false.lor.lhs.false33_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false33

land.lhs.true:                                    ; preds = %lor.lhs.false
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %13)
  %cmp16 = icmp eq i8 %13, 17
  br i1 %cmp16, label %land.rhs, label %land.lhs.true.lor.lhs.false33_crit_edge

land.lhs.true.lor.lhs.false33_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false33

land.rhs:                                         ; preds = %land.lhs.true
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i64 = zext i16 %15 to i32
  %add.ptr.i.i65 = getelementptr i8, ptr %8, i32 %conv.i.i64
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i65, i32 0, i32 1
  %16 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dest, align 2
  %.off = add i16 %17, -319
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %land.rhs.if.then44_crit_edge, label %land.rhs.lor.lhs.false33_crit_edge, !prof !49

land.rhs.lor.lhs.false33_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false33

land.rhs.if.then44_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

lor.lhs.false33:                                  ; preds = %land.rhs.lor.lhs.false33_crit_edge, %land.lhs.true.lor.lhs.false33_crit_edge, %lor.lhs.false.lor.lhs.false33_crit_edge
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %18 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i71 = zext i16 %19 to i32
  %add.ptr.i.i72 = getelementptr i8, ptr %8, i32 %conv.i.i71
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i72, i32 0, i32 2
  %20 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30473, i16 %21)
  %cmp36 = icmp eq i16 %21, -30473
  br i1 %cmp36, label %lor.lhs.false33.if.then44_crit_edge, label %lor.lhs.false33.if.end46_crit_edge, !prof !50

lor.lhs.false33.if.end46_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

lor.lhs.false33.if.then44_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false33.if.then44_crit_edge, %land.rhs.if.then44_crit_edge, %if.then.if.then44_crit_edge
  %call45 = tail call i32 @aq_ptp_xmit(ptr noundef %add.ptr.i, ptr noundef %skb) #7
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false33.if.end46_crit_edge, %entry.if.end46_crit_edge
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #7
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %22 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx_flags.i, align 1
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end46.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.end46.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #7
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.end46.skb_tx_timestamp.exit_crit_edge
  %call47 = tail call i32 @aq_nic_xmit(ptr noundef %add.ptr.i, ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %skb_tx_timestamp.exit, %if.then44
  %retval.0 = phi i32 [ %call45, %if.then44 ], [ %call47, %skb_tx_timestamp.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_ndev_set_multicast_settings(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call i32 @aq_nic_set_multicast_list(ptr noundef %add.ptr.i, ptr noundef %ndev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndev_set_mac_address(ptr noundef %ndev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @eth_mac_addr(ptr noundef %ndev, ptr noundef %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call2 = tail call i32 @aq_nic_set_mac(ptr noundef %add.ptr.i, ptr noundef %ndev) #7
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call1, %entry.err_exit_crit_edge ], [ %call2, %if.end ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndev_ioctl(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  %config.i6 = alloca %struct.hwtstamp_config, align 4
  %config.i = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35248, label %sw.bb
    i32 35249, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i) #7
  %1 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %config.i, align 4, !annotation !51
  %2 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !51
  %4 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !51
  %aq_ptp.i = getelementptr i8, ptr %netdev, i32 3772
  %6 = ptrtoint ptr %aq_ptp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_ptp.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %sw.bb.aq_ndev_hwtstamp_set.exit_crit_edge, label %if.end.i

sw.bb.aq_ndev_hwtstamp_set.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_hwtstamp_set.exit

if.end.i:                                         ; preds = %sw.bb
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %8 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ifr_ifru.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.end.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.then11.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 12, i32 -1226833920) #11, !srcloc !52
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config.i, i32 noundef 12) #7
  %11 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !53
  %and.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config.i, ptr noundef %9, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #7, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !48

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %if.end.i.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %config.i, i32 %sub.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %aq_ndev_hwtstamp_set.exit

if.end3.i:                                        ; preds = %if.end.i.i.i
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.i.i = icmp ult i32 %16, 2
  br i1 %switch.i.i, label %sw.epilog.i.i, label %if.end3.i.aq_ndev_hwtstamp_set.exit_crit_edge

if.end3.i.aq_ndev_hwtstamp_set.exit_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_hwtstamp_set.exit

sw.epilog.i.i:                                    ; preds = %if.end3.i
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %18, label %sw.epilog.i.i.aq_ndev_hwtstamp_set.exit_crit_edge [
    i32 6, label %sw.epilog.i.i.sw.bb1.i.i_crit_edge
    i32 7, label %sw.epilog.i.i.sw.bb1.i.i_crit_edge20
    i32 8, label %sw.epilog.i.i.sw.bb1.i.i_crit_edge21
    i32 9, label %sw.epilog.i.i.sw.bb1.i.i_crit_edge22
    i32 10, label %sw.epilog.i.i.sw.bb1.i.i_crit_edge23
    i32 11, label %sw.epilog.i.i.sw.bb1.i.i_crit_edge24
    i32 13, label %sw.epilog.i.i.sw.bb1.i.i_crit_edge25
    i32 14, label %sw.epilog.i.i.sw.bb1.i.i_crit_edge26
    i32 12, label %sw.epilog.i.i.aq_ndev_config_hwtstamp.exit.i_crit_edge
    i32 0, label %sw.epilog.i.i.aq_ndev_config_hwtstamp.exit.i_crit_edge27
  ]

sw.epilog.i.i.aq_ndev_config_hwtstamp.exit.i_crit_edge27: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_config_hwtstamp.exit.i

sw.epilog.i.i.aq_ndev_config_hwtstamp.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_config_hwtstamp.exit.i

sw.epilog.i.i.sw.bb1.i.i_crit_edge26:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.epilog.i.i.sw.bb1.i.i_crit_edge25:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.epilog.i.i.sw.bb1.i.i_crit_edge24:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.epilog.i.i.sw.bb1.i.i_crit_edge23:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.epilog.i.i.sw.bb1.i.i_crit_edge22:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.epilog.i.i.sw.bb1.i.i_crit_edge21:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.epilog.i.i.sw.bb1.i.i_crit_edge20:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.epilog.i.i.sw.bb1.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.epilog.i.i.aq_ndev_hwtstamp_set.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_hwtstamp_set.exit

sw.bb1.i.i:                                       ; preds = %sw.epilog.i.i.sw.bb1.i.i_crit_edge, %sw.epilog.i.i.sw.bb1.i.i_crit_edge20, %sw.epilog.i.i.sw.bb1.i.i_crit_edge21, %sw.epilog.i.i.sw.bb1.i.i_crit_edge22, %sw.epilog.i.i.sw.bb1.i.i_crit_edge23, %sw.epilog.i.i.sw.bb1.i.i_crit_edge24, %sw.epilog.i.i.sw.bb1.i.i_crit_edge25, %sw.epilog.i.i.sw.bb1.i.i_crit_edge26
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %4, align 4
  br label %aq_ndev_config_hwtstamp.exit.i

aq_ndev_config_hwtstamp.exit.i:                   ; preds = %sw.bb1.i.i, %sw.epilog.i.i.aq_ndev_config_hwtstamp.exit.i_crit_edge, %sw.epilog.i.i.aq_ndev_config_hwtstamp.exit.i_crit_edge27
  %21 = ptrtoint ptr %aq_ptp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aq_ptp.i, align 4
  %call.i.i = call i32 @aq_ptp_hwtstamp_config_set(ptr noundef %22, ptr noundef nonnull %config.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.then.i18.i, label %aq_ndev_config_hwtstamp.exit.i.aq_ndev_hwtstamp_set.exit_crit_edge

aq_ndev_config_hwtstamp.exit.i.aq_ndev_hwtstamp_set.exit_crit_edge: ; preds = %aq_ndev_config_hwtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_hwtstamp_set.exit

if.then.i18.i:                                    ; preds = %aq_ndev_config_hwtstamp.exit.i
  %23 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ifr_ifru.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i17.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i17.i, label %if.then.i18.i.aq_ndev_hwtstamp_set.exit_crit_edge, label %if.end.i.i21.i

if.then.i18.i.aq_ndev_hwtstamp_set.exit_crit_edge: ; preds = %if.then.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_hwtstamp_set.exit

if.end.i.i21.i:                                   ; preds = %if.then.i18.i
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 12, i32 -1226833920) #11, !srcloc !56
  %asmresult.i.i19.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i19.i)
  %cmp.i.i20.i = icmp eq i32 %asmresult.i.i19.i, 0
  br i1 %cmp.i.i20.i, label %copy_to_user.exit.i, label %if.end.i.i21.i.aq_ndev_hwtstamp_set.exit_crit_edge

if.end.i.i21.i.aq_ndev_hwtstamp_set.exit_crit_edge: ; preds = %if.end.i.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_hwtstamp_set.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i22.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config.i, i32 noundef 12) #7
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %24, ptr noundef nonnull %config.i, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool10.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool10.not.i, i32 0, i32 -14
  br label %aq_ndev_hwtstamp_set.exit

aq_ndev_hwtstamp_set.exit:                        ; preds = %copy_to_user.exit.i, %if.end.i.i21.i.aq_ndev_hwtstamp_set.exit_crit_edge, %if.then.i18.i.aq_ndev_hwtstamp_set.exit_crit_edge, %aq_ndev_config_hwtstamp.exit.i.aq_ndev_hwtstamp_set.exit_crit_edge, %sw.epilog.i.i.aq_ndev_hwtstamp_set.exit_crit_edge, %if.end3.i.aq_ndev_hwtstamp_set.exit_crit_edge, %if.then11.i.i.i, %sw.bb.aq_ndev_hwtstamp_set.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %sw.bb.aq_ndev_hwtstamp_set.exit_crit_edge ], [ %call.i.i, %aq_ndev_config_hwtstamp.exit.i.aq_ndev_hwtstamp_set.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -34, %if.end3.i.aq_ndev_hwtstamp_set.exit_crit_edge ], [ -34, %sw.epilog.i.i.aq_ndev_hwtstamp_set.exit_crit_edge ], [ -14, %if.then.i18.i.aq_ndev_hwtstamp_set.exit_crit_edge ], [ -14, %if.end.i.i21.i.aq_ndev_hwtstamp_set.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i6) #7
  %26 = ptrtoint ptr %config.i6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %config.i6, align 4, !annotation !51
  %27 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i6, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4, !annotation !51
  %29 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i6, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4, !annotation !51
  %aq_ptp.i7 = getelementptr i8, ptr %netdev, i32 3772
  %31 = ptrtoint ptr %aq_ptp.i7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aq_ptp.i7, align 4
  %tobool.not.i8 = icmp eq ptr %32, null
  br i1 %tobool.not.i8, label %sw.bb2.aq_ndev_hwtstamp_get.exit_crit_edge, label %if.end.i11

sw.bb2.aq_ndev_hwtstamp_get.exit_crit_edge:       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_hwtstamp_get.exit

if.end.i11:                                       ; preds = %sw.bb2
  call void @aq_ptp_hwtstamp_config_get(ptr noundef nonnull %32, ptr noundef nonnull %config.i6) #7
  %ifr_ifru.i9 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %33 = ptrtoint ptr %ifr_ifru.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ifr_ifru.i9, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i.i10 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i10, label %if.end.i11.aq_ndev_hwtstamp_get.exit_crit_edge, label %if.end.i.i.i14

if.end.i11.aq_ndev_hwtstamp_get.exit_crit_edge:   ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_hwtstamp_get.exit

if.end.i.i.i14:                                   ; preds = %if.end.i11
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 12, i32 -1226833920) #11, !srcloc !56
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.i.i.i13 = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.i.i.i13, label %copy_to_user.exit.i18, label %if.end.i.i.i14.aq_ndev_hwtstamp_get.exit_crit_edge

if.end.i.i.i14.aq_ndev_hwtstamp_get.exit_crit_edge: ; preds = %if.end.i.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_hwtstamp_get.exit

copy_to_user.exit.i18:                            ; preds = %if.end.i.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config.i6, i32 noundef 12) #7
  %call.i1.i.i.i16 = call i32 @arm_copy_to_user(ptr noundef %34, ptr noundef nonnull %config.i6, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i16)
  %tobool2.not.i = icmp eq i32 %call.i1.i.i.i16, 0
  %spec.select.i17 = select i1 %tobool2.not.i, i32 0, i32 -14
  br label %aq_ndev_hwtstamp_get.exit

aq_ndev_hwtstamp_get.exit:                        ; preds = %copy_to_user.exit.i18, %if.end.i.i.i14.aq_ndev_hwtstamp_get.exit_crit_edge, %if.end.i11.aq_ndev_hwtstamp_get.exit_crit_edge, %sw.bb2.aq_ndev_hwtstamp_get.exit_crit_edge
  %retval.0.i19 = phi i32 [ -95, %sw.bb2.aq_ndev_hwtstamp_get.exit_crit_edge ], [ -14, %if.end.i11.aq_ndev_hwtstamp_get.exit_crit_edge ], [ -14, %if.end.i.i.i14.aq_ndev_hwtstamp_get.exit_crit_edge ], [ %spec.select.i17, %copy_to_user.exit.i18 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i6) #7
  br label %cleanup

cleanup:                                          ; preds = %aq_ndev_hwtstamp_get.exit, %aq_ndev_hwtstamp_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i19, %aq_ndev_hwtstamp_get.exit ], [ %retval.0.i, %aq_ndev_hwtstamp_set.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndev_change_mtu(ptr noundef %ndev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %add = add i32 %new_mtu, 14
  %call1 = tail call i32 @aq_nic_set_mtu(ptr noundef %add.ptr.i, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndo_vlan_rx_add_vid(ptr noundef %ndev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr i8, ptr %ndev, i32 2496
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_filter_vlan_set = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %hw_filter_vlan_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_filter_vlan_set, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %ndev, i32 3152
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %active_vlans) #7
  %call1 = tail call i32 @aq_filters_vlans_update(ptr noundef %add.ptr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndo_vlan_rx_kill_vid(ptr noundef %ndev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %aq_hw_ops = getelementptr i8, ptr %ndev, i32 2496
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_filter_vlan_set = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %hw_filter_vlan_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_filter_vlan_set, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %ndev, i32 3152
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %active_vlans) #7
  %call1 = tail call i32 @aq_del_fvlan_by_vlan(ptr noundef %add.ptr.i, i16 noundef zeroext %vid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1)
  %cmp = icmp eq i32 %call1, -2
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @aq_filters_vlans_update(ptr noundef %add.ptr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndo_setup_tc(ptr noundef %dev, i32 noundef %type, ptr noundef %type_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.tc_mqprio_qopt_offload, ptr %type_data, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %2 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type_data, align 8
  %call.i = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 8
  %tcs_max2.i = getelementptr inbounds %struct.aq_hw_caps_s, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %tcs_max2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tcs_max2.i, align 1
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 8) #7
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %3)
  %cmp7.i = icmp ult i8 %8, %3
  br i1 %cmp7.i, label %if.end.aq_validate_mqprio_opt.exit.thread_crit_edge, label %if.end.i

if.end.aq_validate_mqprio_opt.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_validate_mqprio_opt.exit.thread

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp9.not.i = icmp eq i8 %3, 0
  %9 = tail call i8 @llvm.ctpop.i8(i8 %3), !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp1.i.i = icmp ult i8 %9, 2
  %or.cond.i = or i1 %cmp9.not.i, %cmp1.i.i
  br i1 %or.cond.i, label %if.end14.i, label %if.end.i.aq_validate_mqprio_opt.exit.thread_crit_edge

if.end.i.aq_validate_mqprio_opt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_validate_mqprio_opt.exit.thread

if.end14.i:                                       ; preds = %if.end.i
  br i1 %tobool.not, label %if.end14.i.aq_validate_mqprio_opt.exit_crit_edge, label %land.lhs.true17.i

if.end14.i.aq_validate_mqprio_opt.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_validate_mqprio_opt.exit

land.lhs.true17.i:                                ; preds = %if.end14.i
  %aq_hw.i = getelementptr i8, ptr %dev, i32 2472
  %10 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw.i, align 8
  %chip_features.i = getelementptr inbounds %struct.aq_hw_s, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %chip_features.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip_features.i, align 8
  %and18.i = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.aq_validate_mqprio_opt.exit.thread_crit_edge, label %land.lhs.true17.i.aq_validate_mqprio_opt.exit_crit_edge

land.lhs.true17.i.aq_validate_mqprio_opt.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_validate_mqprio_opt.exit

land.lhs.true17.i.aq_validate_mqprio_opt.exit.thread_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_validate_mqprio_opt.exit.thread

aq_validate_mqprio_opt.exit.thread:               ; preds = %land.lhs.true17.i.aq_validate_mqprio_opt.exit.thread_crit_edge, %if.end.i.aq_validate_mqprio_opt.exit.thread_crit_edge, %if.end.aq_validate_mqprio_opt.exit.thread_crit_edge
  %.str.5.sink.i = phi ptr [ @.str.3, %if.end.aq_validate_mqprio_opt.exit.thread_crit_edge ], [ @.str.4, %if.end.i.aq_validate_mqprio_opt.exit.thread_crit_edge ], [ @.str.5, %land.lhs.true17.i.aq_validate_mqprio_opt.exit.thread_crit_edge ]
  %ndev21.i = getelementptr i8, ptr %dev, i32 2476
  %14 = ptrtoint ptr %ndev21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev21.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull %.str.5.sink.i) #10
  br label %cleanup

aq_validate_mqprio_opt.exit:                      ; preds = %land.lhs.true17.i.aq_validate_mqprio_opt.exit_crit_edge, %if.end14.i.aq_validate_mqprio_opt.exit_crit_edge
  %16 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp15633.not = icmp eq i8 %17, 0
  br i1 %cmp15633.not, label %aq_validate_mqprio_opt.exit.for.end_crit_edge, label %aq_validate_mqprio_opt.exit.for.body_crit_edge

aq_validate_mqprio_opt.exit.for.body_crit_edge:   ; preds = %aq_validate_mqprio_opt.exit
  br label %for.body

aq_validate_mqprio_opt.exit.for.end_crit_edge:    ; preds = %aq_validate_mqprio_opt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %aq_validate_mqprio_opt.exit.for.body_crit_edge
  %i.0634 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %aq_validate_mqprio_opt.exit.for.body_crit_edge ]
  br i1 %tobool4.not, label %for.body.if.end210_crit_edge, label %if.end206

for.body.if.end210_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

if.end206:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.tc_mqprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.0634
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx, align 8
  %20 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %19) #11, !srcloc !58
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %19, i64 %20, i32 0) #11, !srcloc !59
  %asmresult10.i = extractvalue { i64, i32 } %21, 0
  %div185626 = lshr i64 %asmresult10.i, 15
  %extract.t628 = trunc i64 %div185626 to i32
  %call209 = tail call i32 @aq_nic_setup_tc_max_rate(ptr noundef %add.ptr.i, i32 noundef %i.0634, i32 noundef %extract.t628) #7
  br label %if.end210

if.end210:                                        ; preds = %if.end206, %for.body.if.end210_crit_edge
  br i1 %tobool.not, label %if.end210.for.inc_crit_edge, label %if.end434

if.end210.for.inc_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end434:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx214 = getelementptr %struct.tc_mqprio_qopt_offload, ptr %type_data, i32 0, i32 4, i32 %i.0634
  %22 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx214, align 8
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %23) #11, !srcloc !58
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %23, i64 %24, i32 0) #11, !srcloc !59
  %asmresult10.i629 = extractvalue { i64, i32 } %25, 0
  %div410624 = lshr i64 %asmresult10.i629, 15
  %extract.t625 = trunc i64 %div410624 to i32
  %call437 = tail call i32 @aq_nic_setup_tc_min_rate(ptr noundef %add.ptr.i, i32 noundef %i.0634, i32 noundef %extract.t625) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end434, %if.end210.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0634, 1
  %26 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type_data, align 8
  %conv14 = zext i8 %27 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = zext i8 %27 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %aq_validate_mqprio_opt.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %aq_validate_mqprio_opt.exit.for.end_crit_edge ]
  %prio_tc_map = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 1
  %call443 = tail call i32 @aq_nic_setup_tc_mqprio(ptr noundef %add.ptr.i, i32 noundef %.lcssa, ptr noundef %prio_tc_map) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %aq_validate_mqprio_opt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call443, %for.end ], [ -95, %entry.cleanup_crit_edge ], [ -95, %aq_validate_mqprio_opt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ndev_set_features(ptr noundef %ndev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i64 %features, 7
  %and.lobit = and i64 %and, 1
  %0 = trunc i64 %and.lobit to i8
  %and2 = lshr i64 %features, 8
  %and2.lobit = and i64 %and2, 1
  %1 = trunc i64 %and2.lobit to i8
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call7 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #7
  %and8 = and i64 %features, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then:                                          ; preds = %entry
  %ndev10 = getelementptr i8, ptr %ndev, i32 2476
  %2 = ptrtoint ptr %ndev10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev10, align 4
  %features11 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %features11 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features11, align 16
  %and12 = and i64 %5, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.then.if.end22_crit_edge, label %if.then14

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then14:                                        ; preds = %if.then
  %call15 = tail call i32 @aq_clear_rxnfc_all_rules(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end22_crit_edge, label %if.then14.err_exit_crit_edge, !prof !48

if.then14.err_exit_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %if.then14.if.end22_crit_edge, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  %and23 = and i64 %features, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.if.end42_crit_edge

if.end22.if.end42_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then25:                                        ; preds = %if.end22
  %ndev26 = getelementptr i8, ptr %ndev, i32 2476
  %6 = ptrtoint ptr %ndev26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev26, align 4
  %features27 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %features27 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features27, align 16
  %and28 = and i64 %9, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.then25.if.end42_crit_edge, label %if.then30

if.then25.if.end42_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then30:                                        ; preds = %if.then25
  %call31 = tail call i32 @aq_filters_vlan_offload_off(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end42_crit_edge, label %if.then30.err_exit_crit_edge, !prof !48

if.then30.err_exit_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.then30.if.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42:                                         ; preds = %if.then30.if.end42_crit_edge, %if.then25.if.end42_crit_edge, %if.end22.if.end42_crit_edge
  %features43 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call7, i32 0, i32 1
  %10 = ptrtoint ptr %features43 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %features, ptr %features43, align 8
  %11 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %and44 = and i64 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44)
  %tobool45.not = icmp eq i64 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end60_crit_edge, label %if.then46

if.end42.if.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then46:                                        ; preds = %if.end42
  %is_lro50 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call7, i32 0, i32 24
  %15 = ptrtoint ptr %is_lro50 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_lro50, align 1, !range !60
  %17 = zext i8 %16 to i32
  %and47 = lshr i64 %features, 15
  %and47.lobit140 = and i64 %and47, 1
  %18 = trunc i64 %and47.lobit140 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp.not = icmp eq i32 %17, %18
  br i1 %cmp.not, label %if.then46.if.end60_crit_edge, label %if.then55

if.then46.if.end60_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %19 = trunc i64 %and47.lobit140 to i8
  %20 = ptrtoint ptr %is_lro50 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %is_lro50, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.then46.if.end60_crit_edge, %if.end42.if.end60_crit_edge
  %need_ndev_restart.0.off0 = phi i1 [ true, %if.then55 ], [ false, %if.then46.if.end60_crit_edge ], [ false, %if.end42.if.end60_crit_edge ]
  %ndev61 = getelementptr i8, ptr %ndev, i32 2476
  %21 = ptrtoint ptr %ndev61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev61, align 4
  %features62 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %features62 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %features62, align 16
  %xor = xor i64 %24, %features
  %and63 = and i64 %xor, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and63)
  %tobool64.not = icmp eq i64 %and63, 0
  br i1 %tobool64.not, label %if.end60.if.end76_crit_edge, label %if.then65

if.end60.if.end76_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then65:                                        ; preds = %if.end60
  %aq_hw_ops = getelementptr i8, ptr %ndev, i32 2496
  %25 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aq_hw_ops, align 8
  %hw_set_offload = getelementptr inbounds %struct.aq_hw_ops, ptr %26, i32 0, i32 35
  %27 = ptrtoint ptr %hw_set_offload to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_set_offload, align 4
  %aq_hw = getelementptr i8, ptr %ndev, i32 2472
  %29 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aq_hw, align 8
  %call66 = tail call i32 %28(ptr noundef %30, ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end76_crit_edge, label %if.then65.err_exit_crit_edge, !prof !48

if.then65.err_exit_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.then65.if.end76_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.end76:                                         ; preds = %if.then65.if.end76_crit_edge, %if.end60.if.end76_crit_edge
  %is_vlan_rx_strip77 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call7, i32 0, i32 16
  %31 = ptrtoint ptr %is_vlan_rx_strip77 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_vlan_rx_strip77, align 8
  %conv78 = zext i8 %32 to i32
  %33 = trunc i64 %and2.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv78, i32 %33)
  %cmp81.not = icmp eq i32 %conv78, %33
  br i1 %cmp81.not, label %if.end87, label %if.end87.thread

if.end87:                                         ; preds = %if.end76
  %is_vlan_tx_insert88 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call7, i32 0, i32 17
  %34 = ptrtoint ptr %is_vlan_tx_insert88 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_vlan_tx_insert88, align 1
  %conv89 = zext i8 %35 to i32
  %36 = trunc i64 %and.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv89, i32 %36)
  %cmp92.not = icmp eq i32 %conv89, %36
  br i1 %cmp92.not, label %if.end98, label %if.end87.if.then94_crit_edge

if.end87.if.then94_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

if.end87.thread:                                  ; preds = %if.end76
  %37 = ptrtoint ptr %is_vlan_rx_strip77 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %1, ptr %is_vlan_rx_strip77, align 8
  %is_vlan_tx_insert88146 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call7, i32 0, i32 17
  %38 = ptrtoint ptr %is_vlan_tx_insert88146 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_vlan_tx_insert88146, align 1
  %conv89147 = zext i8 %39 to i32
  %40 = trunc i64 %and.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv89147, i32 %40)
  %cmp92.not148 = icmp eq i32 %conv89147, %40
  br i1 %cmp92.not148, label %if.end87.thread.land.lhs.true_crit_edge, label %if.end87.thread.if.then94_crit_edge

if.end87.thread.if.then94_crit_edge:              ; preds = %if.end87.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

if.end87.thread.land.lhs.true_crit_edge:          ; preds = %if.end87.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then94:                                        ; preds = %if.end87.thread.if.then94_crit_edge, %if.end87.if.then94_crit_edge
  %is_vlan_tx_insert88150 = phi ptr [ %is_vlan_tx_insert88146, %if.end87.thread.if.then94_crit_edge ], [ %is_vlan_tx_insert88, %if.end87.if.then94_crit_edge ]
  %41 = ptrtoint ptr %is_vlan_tx_insert88150 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %0, ptr %is_vlan_tx_insert88150, align 1
  br label %land.lhs.true

if.end98:                                         ; preds = %if.end87
  br i1 %need_ndev_restart.0.off0, label %if.end98.land.lhs.true_crit_edge, label %if.end98.err_exit_crit_edge

if.end98.err_exit_crit_edge:                      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.end98.land.lhs.true_crit_edge:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end98.land.lhs.true_crit_edge, %if.then94, %if.end87.thread.land.lhs.true_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.err_exit_crit_edge, label %if.then103

land.lhs.true.err_exit_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.then103:                                       ; preds = %land.lhs.true
  %call1.i = tail call i32 @aq_nic_stop(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then103.aq_ndev_close.exit_crit_edge, label %if.end.i

if.then103.aq_ndev_close.exit_crit_edge:          ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %aq_ndev_close.exit

if.end.i:                                         ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @aq_nic_deinit(ptr noundef %add.ptr.i, i1 noundef zeroext true) #7
  br label %aq_ndev_close.exit

aq_ndev_close.exit:                               ; preds = %if.end.i, %if.then103.aq_ndev_close.exit_crit_edge
  %call1.i142 = tail call i32 @aq_nic_init(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i142)
  %cmp.i143 = icmp slt i32 %call1.i142, 0
  br i1 %cmp.i143, label %aq_ndev_close.exit.if.then16.i_crit_edge, label %if.end.i144

aq_ndev_close.exit.if.then16.i_crit_edge:         ; preds = %aq_ndev_close.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

if.end.i144:                                      ; preds = %aq_ndev_close.exit
  %call2.i = tail call i32 @aq_reapply_rxnfc_all_rules(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i144.if.then16.i_crit_edge, label %if.end5.i

if.end.i144.if.then16.i_crit_edge:                ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

if.end5.i:                                        ; preds = %if.end.i144
  %call6.i = tail call i32 @aq_filters_vlans_update(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.if.then16.i_crit_edge, label %if.end9.i

if.end5.i.if.then16.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call i32 @aq_nic_start(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end9.i.err_exit_crit_edge

if.end9.i.err_exit_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call i32 @aq_nic_stop(ptr noundef %add.ptr.i) #7
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.then12.i, %if.end5.i.if.then16.i_crit_edge, %if.end.i144.if.then16.i_crit_edge, %aq_ndev_close.exit.if.then16.i_crit_edge
  tail call void @aq_nic_deinit(ptr noundef %add.ptr.i, i1 noundef zeroext true) #7
  br label %err_exit

err_exit:                                         ; preds = %if.then16.i, %if.end9.i.err_exit_crit_edge, %land.lhs.true.err_exit_crit_edge, %if.end98.err_exit_crit_edge, %if.then65.err_exit_crit_edge, %if.then30.err_exit_crit_edge, %if.then14.err_exit_crit_edge
  %err.3 = phi i32 [ %call66, %if.then65.err_exit_crit_edge ], [ 0, %land.lhs.true.err_exit_crit_edge ], [ 0, %if.end98.err_exit_crit_edge ], [ %call31, %if.then30.err_exit_crit_edge ], [ %call15, %if.then14.err_exit_crit_edge ], [ 0, %if.end9.i.err_exit_crit_edge ], [ 0, %if.then16.i ]
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_reapply_rxnfc_all_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_filters_vlans_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_deinit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ptp_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_set_multicast_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_set_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ptp_hwtstamp_config_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_hwtstamp_config_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_del_fvlan_by_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_setup_tc_max_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_setup_tc_min_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_setup_tc_mqprio(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_nic_get_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_clear_rxnfc_all_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_filters_vlan_offload_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_pci_func_register_driver() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__UNIQUE_ID_file490, !1, !"__UNIQUE_ID_file490", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_license491, !1, !"__UNIQUE_ID_license491", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author492, !4, !"__UNIQUE_ID_author492", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 25, i32 1}
!5 = !{ptr @__UNIQUE_ID_description493, !6, !"__UNIQUE_ID_description493", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 26, i32 1}
!7 = !{ptr @__initcall__kmod_atlantic__496_456_aq_ndev_init_module6, !8, !"__initcall__kmod_atlantic__496_456_aq_ndev_init_module6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 456, i32 1}
!9 = !{ptr @__exitcall_aq_ndev_exit_module, !10, !"__exitcall_aq_ndev_exit_module", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 457, i32 1}
!11 = !{ptr @aq_ndev_wq, !12, !"aq_ndev_wq", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 32, i32 33}
!13 = !{ptr @aq_ndev_ops, !14, !"aq_ndev_ops", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 413, i32 36}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!17 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 356, i32 26}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 361, i32 26}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 366, i32 26}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 431, i32 15}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 433, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @aq_ndev_init_module._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @aq_ndev_init_module._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @aq_ndev_driver_name, !37, !"aq_ndev_driver_name", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_main.c", i32 28, i32 19}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!"branch_weights", i32 2002, i32 2000}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"auto-init"}
!52 = !{i64 2152352107, i64 2152352132}
!53 = !{i64 4847662}
!54 = !{i64 4847859}
!55 = !{i64 2152333092}
!56 = !{i64 2152352788, i64 2152352813}
!57 = !{i8 0, i8 9}
!58 = !{i64 1283791, i64 1283818}
!59 = !{i64 1284486, i64 1284513, i64 1284546, i64 1284567, i64 1284594, i64 1284620}
!60 = !{i8 0, i8 2}
