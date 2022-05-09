; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.140, %union.anon.141, [48 x i8], %union.anon.142, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.144, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.140 = type { ptr }
%union.anon.141 = type { i64 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { i32, ptr }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.146, i32, i32, i32, i16, i16, %union.anon.148, i32, %union.anon.149, %union.anon.150, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.146 = type { i32 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { i32 }
%union.anon.150 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }
%struct.ptp_clock_event = type { i32, i32, %union.anon.174 }
%union.anon.174 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.128 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.128 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.bnxt_ptp_cfg = type { %struct.ptp_clock_info, ptr, %struct.cyclecounter, %struct.timecounter, %struct.bnxt_pps, %struct.spinlock, ptr, i64, i64, i32, i32, i16, i16, ptr, %struct.atomic_t, i16, i8, i32, [2 x i32], [2 x i32] }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.bnxt_pps = type { i8, [4 x %struct.pps_pin] }
%struct.pps_pin = type { i8, i8, i8 }
%struct.hwrm_func_ptp_pin_cfg_input = type { i16, i16, i16, i16, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%struct.hwrm_func_ptp_cfg_input = type { i16, i16, i16, i16, i64, i16, i8, i8, i8, [3 x i8], i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.2, %union.anon.3 }
%union.anon.2 = type { [16 x i8] }
%union.anon.3 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hwrm_port_mac_cfg_input = type { i16, i16, i16, i16, i64, i32, i32, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, [3 x i8], i32, i32 }
%struct.hwrm_func_ptp_pin_qcfg_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.161, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.161 = type { ptr }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.ptp_clock_request = type { i32, %union.anon.167 }
%union.anon.167 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.168, %struct.ptp_clock_time, i32, i32, %union.anon.169 }
%union.anon.168 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.169 = type { %struct.ptp_clock_time }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.hwrm_port_ts_query_input = type { i16, i16, i16, i16, i64, i32, i16, [2 x i8], i16, i16, i32, i16, [6 x i8] }
%struct.hwrm_port_ts_query_output = type { i16, i16, i16, i16, i64, i16, [5 x i8], i8 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"1PPS: Failed to configure pin%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"deferring skb:one SKB is still outstanding\0A\00", [52 x i8] zeroinitializer }, align 32
@bnxt_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ptp->ptp_lock\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bnxt_ptp_caps = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"bnxt clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 31000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @bnxt_ptp_adjfreq, ptr null, ptr @bnxt_ptp_adjtime, ptr null, ptr @bnxt_ptp_gettimex, ptr null, ptr @bnxt_ptp_settime, ptr @bnxt_ptp_enable, ptr null, ptr @bnxt_ptp_ts_aux_work }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"1pps not initialized, continuing without 1pps support\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"1PPS: Invalid pin. Check pin-function configuration\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ptp adjfreq failed. rc = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unrecognized PIN function\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TS query for TX timer failed rc = %x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bnxt_pps%d\00", [21 x i8] zeroinitializer }, align 32
@switch.table.bnxt_hwtstamp_set = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 15, i16 1, i16 2, i16 15, i16 1, i16 2, i16 15, i16 1, i16 2], [34 x i8] zeroinitializer }, align 32
@switch.table.bnxt_hwtstamp_set.12 = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 13, i32 14, i32 12, i32 13, i32 14, i32 12, i32 13, i32 14], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 263, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 595, i32 23 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 739, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"bnxt_ptp_caps\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 619, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 753, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 203, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 156, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 162, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 371, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 557, i32 23 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [49 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 687, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"switch.table.bnxt_hwtstamp_set\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [34 x i8] c"switch.table.bnxt_hwtstamp_set.12\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @bnxt_ptp_init.__key, ptr @.str.2, ptr @bnxt_ptp_caps, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @switch.table.bnxt_hwtstamp_set, ptr @switch.table.bnxt_hwtstamp_set.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_ptp_caps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnxt_hwtstamp_set to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnxt_hwtstamp_set.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_ptp_parse(ptr noundef %skb, ptr nocapture noundef writeonly %seq_id, ptr nocapture noundef writeonly %hdr_off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ptp_classify_raw(ptr noundef %skb) #10
  %and = and i32 %call, 15
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.off)
  %switch = icmp ult i32 %and.off, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %call) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i32 %sub.ptr.sub to i16
  %2 = ptrtoint ptr %hdr_off to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %hdr_off, align 2
  %sequence_id = getelementptr inbounds %struct.ptp_header, ptr %call1, i32 0, i32 9
  %3 = ptrtoint ptr %sequence_id to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %sequence_id, align 1
  %5 = ptrtoint ptr %seq_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %seq_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_parse_header(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ptp_pps_event(ptr nocapture noundef readonly %bp, i32 noundef %data1, i32 noundef %data2) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_cfg = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 147
  %0 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_cfg, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event) #10
  %2 = call ptr @memset(ptr %event, i32 255, i32 24)
  %and = and i32 %data2, 1048560
  %conv = zext i32 %and to i64
  %shl = shl nuw nsw i64 %conv, 28
  %conv2 = zext i32 %data1 to i64
  %or = or i64 %shl, %conv2
  %ptp_lock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_lock) #10
  %tc = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 3
  %call = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %or) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock) #10
  %3 = and i32 %data2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %trunc.not = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 2
  br i1 %trunc.not, label %sw.bb, label %sw.bb7

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %call) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call, ptr %4, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %storemerge = phi i32 [ 3, %sw.bb ], [ 1, %sw.bb7 ]
  %6 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %event, align 8
  %shr10.sink.in = lshr i32 %data2, 1
  %shr10.sink = and i32 %shr10.sink.in, 7
  %7 = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr10.sink, ptr %7, align 4
  %9 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptp_cfg, align 8
  %ptp_clock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp_clock, align 4
  call void @ptp_clock_event(ptr noundef %12, ptr noundef nonnull %event) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ptp_reapply_pps(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %req.i43 = alloca ptr, align 4
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_cfg = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 147
  %0 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %2 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap, align 8
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_config, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false2
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %pin.058 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 4, i32 1, i32 %pin.058
  %state = getelementptr %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 4, i32 1, i32 %pin.058, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %usage = getelementptr %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 4, i32 1, i32 %pin.058, i32 1
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %usage, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #10
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !38
  %11 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp_cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp ne i8 %9, 0
  %conv2.i = zext i1 %cmp.i to i8
  %bp7.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %bp7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp7.i, align 4
  %call.i = call i32 @__hwrm_req_init(ptr noundef %14, ptr noundef nonnull %req.i, i16 noundef zeroext 413, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then5.if.end18.thread52_crit_edge

if.then5.if.end18.thread52_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.thread52

if.end9.i:                                        ; preds = %if.then5
  %mul.i = shl nuw nsw i32 %pin.058, 1
  %shl.i = shl nuw nsw i32 3, %mul.i
  %15 = call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %16 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req.i, align 4
  %enables11.i = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %enables11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %enables11.i, align 8
  %pin0_state.i = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %17, i32 0, i32 6
  %pin0_usage.i = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %17, i32 0, i32 7
  %add.ptr.i = getelementptr i8, ptr %pin0_state.i, i32 %mul.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2.i, ptr %add.ptr.i, align 1
  %add.ptr16.i = getelementptr i8, ptr %pin0_usage.i, i32 %mul.i
  %20 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %9, ptr %add.ptr16.i, align 1
  %21 = ptrtoint ptr %bp7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bp7.i, align 4
  %23 = load ptr, ptr %req.i, align 4
  %call18.i = call i32 @hwrm_req_send(ptr noundef %22, ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true, label %if.end9.i.if.end18.thread52_crit_edge

if.end9.i.if.end18.thread52_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.thread52

if.end18.thread52:                                ; preds = %if.end9.i.if.end18.thread52_crit_edge, %if.then5.if.end18.thread52_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  br label %if.then20

land.lhs.true:                                    ; preds = %if.end9.i
  %usage22.i = getelementptr %struct.bnxt_ptp_cfg, ptr %12, i32 0, i32 4, i32 1, i32 %pin.058, i32 1
  %24 = ptrtoint ptr %usage22.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %9, ptr %usage22.i, align 1
  %state27.i = getelementptr %struct.bnxt_ptp_cfg, ptr %12, i32 0, i32 4, i32 1, i32 %pin.058, i32 2
  %25 = ptrtoint ptr %state27.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv2.i, ptr %state27.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool12.not = icmp eq i8 %27, 0
  br i1 %tobool12.not, label %land.lhs.true.for.inc_crit_edge, label %if.then13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i43) #10
  %28 = ptrtoint ptr %req.i43 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i43, align 4, !annotation !38
  %call.i44 = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i43, i16 noundef zeroext 414, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.end18, label %if.end18.thread55

if.end18.thread55:                                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i43) #10
  br label %if.then20

if.end18:                                         ; preds = %if.then13
  %29 = ptrtoint ptr %req.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req.i43, align 4
  %enables.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %enables.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 256, ptr %enables.i, align 8
  %ptp_pps_event.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %30, i32 0, i32 6
  %32 = ptrtoint ptr %ptp_pps_event.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %27, ptr %ptp_pps_event.i, align 2
  %call1.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %30) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool19.not = icmp eq i32 %call1.i, 0
  br i1 %tobool19.not, label %if.end18.for.inc_crit_edge, label %if.end18.if.then20_crit_edge

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %if.end18.thread55, %if.end18.thread52
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef %pin.058) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.end18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %pin.058, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_hwtstamp_set(ptr noundef %dev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  %stmpconf = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stmpconf) #10
  %0 = ptrtoint ptr %stmpconf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stmpconf, align 4, !annotation !38
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %stmpconf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !38
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %stmpconf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !38
  %ptp_cfg = getelementptr i8, ptr %dev, i32 6448
  %5 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_cfg, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %7 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 12, i32 -1226833920) #14, !srcloc !39
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !40

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %stmpconf, i32 noundef 12) #10
  %10 = call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !41
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %stmpconf, ptr noundef %8, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !40

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %stmpconf, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch = icmp ult i32 %15, 2
  br i1 %switch, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %rx_filter = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %6, i32 0, i32 17
  %16 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_filter, align 8
  %rxctl = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %6, i32 0, i32 15
  %18 = ptrtoint ptr %rxctl to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rxctl, align 4
  %tx_tstamp_en = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %6, i32 0, i32 16
  %20 = ptrtoint ptr %tx_tstamp_en to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %tx_tstamp_en, align 2
  %bf.lshr = and i8 %bf.load, -128
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %22)
  %23 = icmp ult i32 %22, 15
  br i1 %23, label %switch.hole_check, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %if.end8
  %switch.maskindex = trunc i32 %22 to i16
  %switch.shifted = lshr i16 32705, %switch.maskindex
  %24 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %switch.lobit.not = icmp eq i16 %24, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [15 x i16], ptr @switch.table.bnxt_hwtstamp_set, i32 0, i32 %22
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %25)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.gep90 = getelementptr inbounds [15 x i32], ptr @switch.table.bnxt_hwtstamp_set.12, i32 0, i32 %22
  %26 = ptrtoint ptr %switch.gep90 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load91 = load i32, ptr %switch.gep90, align 4
  %27 = ptrtoint ptr %rxctl to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %switch.load, ptr %rxctl, align 4
  %28 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %switch.load91, ptr %rx_filter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp22 = icmp eq i32 %15, 1
  %29 = ptrtoint ptr %tx_tstamp_en to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load25 = load i8, ptr %tx_tstamp_en, align 2
  %bf.clear28 = and i8 %bf.load25, 127
  %masksel = select i1 %cmp22, i8 -128, i8 0
  %storemerge = or i8 %bf.clear28, %masksel
  store i8 %storemerge, ptr %tx_tstamp_en, align 2
  %30 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptp_cfg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #10
  %32 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !38
  %call.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext 33, i32 noundef 48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %bnxt_hwrm_ptp_cfg.exit, label %bnxt_hwrm_ptp_cfg.exit.thread

bnxt_hwrm_ptp_cfg.exit.thread:                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  br label %ts_set_err

bnxt_hwrm_ptp_cfg.exit:                           ; preds = %switch.lookup
  %rx_filter.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %31, i32 0, i32 17
  %33 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_filter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool1.not.i = icmp eq i32 %34, 0
  %..i = select i1 %tobool1.not.i, i32 536870912, i32 268435456
  %tx_tstamp_en.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %31, i32 0, i32 16
  %35 = ptrtoint ptr %tx_tstamp_en.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %tx_tstamp_en.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool5.not25.i = icmp slt i8 %bf.load.i, 0
  %flags.1.v.i = select i1 %tobool5.not25.i, i32 1073741824, i32 -2147483648
  %flags.1.i = or i32 %flags.1.v.i, %..i
  %36 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %req.i, align 4
  %flags11.i = getelementptr inbounds %struct.hwrm_port_mac_cfg_input, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %flags.1.i, ptr %flags11.i, align 8
  %enables.i = getelementptr inbounds %struct.hwrm_port_mac_cfg_input, ptr %37, i32 0, i32 6
  %39 = ptrtoint ptr %enables.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1073741824, ptr %enables.i, align 4
  %rxctl.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %31, i32 0, i32 15
  %40 = ptrtoint ptr %rxctl.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rxctl.i, align 4
  %42 = call i16 @llvm.bswap.i16(i16 %41) #10
  %rx_ts_capture_ptp_msg_type.i = getelementptr inbounds %struct.hwrm_port_mac_cfg_input, ptr %37, i32 0, i32 14
  %43 = ptrtoint ptr %rx_ts_capture_ptp_msg_type.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %rx_ts_capture_ptp_msg_type.i, align 8
  %call12.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %37) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool32.not = icmp eq i32 %call12.i, 0
  br i1 %tobool32.not, label %if.then.i76, label %bnxt_hwrm_ptp_cfg.exit.ts_set_err_crit_edge

bnxt_hwrm_ptp_cfg.exit.ts_set_err_crit_edge:      ; preds = %bnxt_hwrm_ptp_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ts_set_err

if.then.i76:                                      ; preds = %bnxt_hwrm_ptp_cfg.exit
  %44 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_filter, align 8
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %3, align 4
  %47 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #10
  %call.i.i75 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i75, label %if.then.i76.cleanup_crit_edge, label %if.end.i.i79

if.then.i76.cleanup_crit_edge:                    ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i79:                                     ; preds = %if.then.i76
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 12, i32 -1226833920) #14, !srcloc !44
  %asmresult.i.i77 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i77)
  %cmp.i.i78 = icmp eq i32 %asmresult.i.i77, 0
  br i1 %cmp.i.i78, label %copy_to_user.exit, label %if.end.i.i79.cleanup_crit_edge

if.end.i.i79.cleanup_crit_edge:                   ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i80 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %stmpconf, i32 noundef 12) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef nonnull %stmpconf, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool39.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool39.not, i32 0, i32 -14
  br label %cleanup

ts_set_err:                                       ; preds = %bnxt_hwrm_ptp_cfg.exit.ts_set_err_crit_edge, %bnxt_hwrm_ptp_cfg.exit.thread
  %retval.0.i86 = phi i32 [ %call.i, %bnxt_hwrm_ptp_cfg.exit.thread ], [ %call12.i, %bnxt_hwrm_ptp_cfg.exit.ts_set_err_crit_edge ]
  %50 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %17, ptr %rx_filter, align 8
  %51 = ptrtoint ptr %rxctl to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %19, ptr %rxctl, align 4
  %52 = ptrtoint ptr %tx_tstamp_en to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load43 = load i8, ptr %tx_tstamp_en, align 2
  %bf.clear44 = and i8 %bf.load43, 127
  %bf.set45 = or i8 %bf.clear44, %bf.lshr
  store i8 %bf.set45, ptr %tx_tstamp_en, align 2
  br label %cleanup

cleanup:                                          ; preds = %ts_set_err, %copy_to_user.exit, %if.end.i.i79.cleanup_crit_edge, %if.then.i76.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i86, %ts_set_err ], [ -95, %entry.cleanup_crit_edge ], [ -34, %if.end4.cleanup_crit_edge ], [ -34, %if.end8.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i76.cleanup_crit_edge ], [ -14, %if.end.i.i79.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ -34, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stmpconf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_hwtstamp_get(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %stmpconf = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stmpconf) #10
  %ptp_cfg = getelementptr i8, ptr %dev, i32 6448
  %0 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.hwtstamp_config, ptr %stmpconf, i32 0, i32 2
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %stmpconf, i32 0, i32 1
  %4 = ptrtoint ptr %stmpconf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %stmpconf, align 4
  %tx_tstamp_en = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %tx_tstamp_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %tx_tstamp_en, align 2
  %bf.load.lobit = lshr i8 %bf.load, 7
  %6 = zext i8 %bf.load.lobit to i32
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %3, align 4
  %rx_filter = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_filter, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %11 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 12, i32 -1226833920) #14, !srcloc !44
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %stmpconf, i32 noundef 12) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %stmpconf, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool4.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stmpconf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_get_tx_ts_p5(ptr nocapture noundef readonly %bp, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_cfg = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 147
  %0 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_cfg, align 8
  %tx_skb = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb, ptr %tx_skb, align 4
  %ptp_clock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_clock, align 4
  %call = tail call i32 @ptp_schedule_worker(ptr noundef %8, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_get_rx_ts_p5(ptr nocapture noundef readonly %bp, ptr nocapture noundef writeonly %ts, i32 noundef %pkt_ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_cfg = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 147
  %0 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_lock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_lock) #10
  %old_time = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %old_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %old_time, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock) #10
  %and = and i64 %3, 281470681743360
  %conv = zext i32 %pkt_ts to i64
  %or = or i64 %and, %conv
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %or, ptr %ts, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_ptp_init(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_cfg = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 147
  %0 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %refclk_regs.i = getelementptr %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %refclk_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refclk_regs.i, align 4
  %and.i.i = and i32 %5, -4096
  %arrayidx.1.i.i = getelementptr %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1.i.i, align 4
  %and1.1.i.i = and i32 %7, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.1.i.i, i32 %and.i.i)
  %cmp2.not.1.i.i = icmp eq i32 %and1.1.i.i, %and.i.i
  br i1 %cmp2.not.1.i.i, label %if.end3, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !45
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #10, !srcloc !46
  %11 = ptrtoint ptr %refclk_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refclk_regs.i, align 4
  %and4.i = and i32 %12, 4092
  %add.i = or i32 %and4.i, 24576
  %arrayidx5.i = getelementptr %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 19, i32 0
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i, ptr %arrayidx5.i, align 4
  %14 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i.i, align 4
  %and4.1.i = and i32 %15, 4092
  %add.1.i = or i32 %and4.1.i, 24576
  %arrayidx5.1.i = getelementptr %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.1.i, ptr %arrayidx5.1.i, align 4
  %ptp_clock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptp_clock, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %if.end3.if.end16_crit_edge, label %land.lhs.true

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end3
  %19 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptp_cfg, align 8
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %21 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_cap.i, align 8
  %and.i104 = lshr i32 %22, 28
  %and.lobit.i = and i32 %and.i104, 1
  %23 = xor i32 %and.lobit.i, 1
  %pin_config.i = getelementptr inbounds %struct.ptp_clock_info, ptr %20, i32 0, i32 8
  %24 = ptrtoint ptr %pin_config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pin_config.i, align 4
  %tobool1.not.i = icmp eq ptr %25, null
  %lnot.ext3.i = zext i1 %tobool1.not.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %lnot.ext3.i)
  %cmp.i = icmp eq i32 %23, %lnot.ext3.i
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %18) #10
  %26 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ptp_clock, align 4
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pin_config, align 4
  tail call void @kfree(ptr noundef %28) #10
  %29 = ptrtoint ptr %pin_config to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %pin_config, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end3.if.end16_crit_edge
  %tx_avail = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_avail, i32 noundef 4) #10
  %30 = ptrtoint ptr %tx_avail to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %tx_avail, align 4
  %ptp_lock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %ptp_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @bnxt_ptp_init.__key, i16 noundef signext 3) #10
  %cc = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %cc to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %cc, align 8
  store ptr @bnxt_cc_read, ptr %cc, align 8
  %mask = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 281474976710655, ptr %mask, align 8
  %shift = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %shift, align 4
  %mult = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %mult, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %35, 6840000
  %next_overflow_check = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %next_overflow_check to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %next_overflow_check, align 4
  %tc = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 3
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %call.i) #10
  %37 = call ptr @memcpy(ptr %1, ptr @bnxt_ptp_caps, i32 108)
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %38 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw_cap, align 8
  %and = and i32 %39, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end16.if.end32_crit_edge, label %if.then27

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #10
  %40 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !38
  %41 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ptp_cfg, align 8
  %call.i106 = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext 412, i32 noundef 24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %if.end.i, label %if.then27.if.then30_crit_edge

if.then27.if.then30_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.end.i:                                         ; preds = %if.then27
  %43 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %req.i, align 4
  %call1.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %44) #10
  %45 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req.i, align 4
  %call2.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i.if.then30.sink.split_crit_edge

if.end.i.if.then30.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.sink.split

lor.lhs.false.i:                                  ; preds = %if.end.i
  %num_pins.i = getelementptr inbounds %struct.hwrm_func_ptp_pin_qcfg_output, ptr %call1.i, i32 0, i32 4
  %47 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_pins.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool4.not.i = icmp eq i8 %48, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.then30.sink.split_crit_edge, label %if.end6.i

lor.lhs.false.i.if.then30.sink.split_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.sink.split

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %pps_info8.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %42, i32 0, i32 4
  %49 = ptrtoint ptr %pps_info8.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %pps_info8.i, align 1
  %conv.i = zext i8 %48 to i32
  %n_pins.i = getelementptr inbounds %struct.ptp_clock_info, ptr %42, i32 0, i32 6
  %50 = ptrtoint ptr %n_pins.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv.i, ptr %n_pins.i, align 4
  %51 = mul nuw nsw i32 %conv.i, 96
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #15
  %pin_config.i108 = getelementptr inbounds %struct.ptp_clock_info, ptr %42, i32 0, i32 8
  %52 = ptrtoint ptr %pin_config.i108 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call8.i.i.i, ptr %pin_config.i108, align 4
  %tobool15.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool15.not.i, label %if.end6.i.if.then30.sink.split_crit_edge, label %if.end17.i

if.end6.i.if.then30.sink.split_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.sink.split

if.end17.i:                                       ; preds = %if.end6.i
  %53 = ptrtoint ptr %pps_info8.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pps_info8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp99.not.i = icmp eq i8 %54, 0
  br i1 %cmp99.not.i, label %if.end17.i.bnxt_ptp_pps_init.exit_crit_edge, label %for.body.preheader.i

if.end17.i.bnxt_ptp_pps_init.exit_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_pps_init.exit

for.body.preheader.i:                             ; preds = %if.end17.i
  %pin0_usage.i = getelementptr inbounds %struct.hwrm_func_ptp_pin_qcfg_output, ptr %call1.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0101.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %pin_usg.0100.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %pin0_usage.i, %for.body.preheader.i ]
  %55 = ptrtoint ptr %pin_config.i108 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pin_config.i108, align 4
  %arrayidx.i = getelementptr %struct.ptp_pin_desc, ptr %56, i32 %i.0101.i
  %call22.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i, i32 noundef 64, ptr noundef nonnull @.str.11, i32 noundef %i.0101.i) #10
  %57 = ptrtoint ptr %pin_config.i108 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pin_config.i108, align 4
  %index.i = getelementptr %struct.ptp_pin_desc, ptr %58, i32 %i.0101.i, i32 1
  %59 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %i.0101.i, ptr %index.i, align 4
  %60 = load ptr, ptr %pin_config.i108, align 4
  %chan.i = getelementptr %struct.ptp_pin_desc, ptr %60, i32 %i.0101.i, i32 3
  %61 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %i.0101.i, ptr %chan.i, align 4
  %62 = ptrtoint ptr %pin_usg.0100.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pin_usg.0100.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %switch.selectcmp.i = icmp eq i8 %63, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %switch.selectcmp104.i = icmp eq i8 %63, 1
  %switch.select105.i = select i1 %switch.selectcmp104.i, i32 1, i32 %switch.select.i
  %64 = ptrtoint ptr %pin_config.i108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pin_config.i108, align 4
  %func39.i = getelementptr %struct.ptp_pin_desc, ptr %65, i32 %i.0101.i, i32 2
  %66 = ptrtoint ptr %func39.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %switch.select105.i, ptr %func39.i, align 4
  %67 = ptrtoint ptr %pin_usg.0100.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pin_usg.0100.i, align 1
  %usage.i = getelementptr %struct.bnxt_ptp_cfg, ptr %42, i32 0, i32 4, i32 1, i32 %i.0101.i, i32 1
  %69 = ptrtoint ptr %usage.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %usage.i, align 1
  %inc.i = add nuw nsw i32 %i.0101.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %pin_usg.0100.i, i32 1
  %70 = ptrtoint ptr %pps_info8.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %pps_info8.i, align 1
  %conv19.i = zext i8 %71 to i32
  %cmp.i109 = icmp ult i32 %inc.i, %conv19.i
  br i1 %cmp.i109, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bnxt_ptp_pps_init.exit_crit_edge

for.body.i.bnxt_ptp_pps_init.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_pps_init.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

bnxt_ptp_pps_init.exit:                           ; preds = %for.body.i.bnxt_ptp_pps_init.exit_crit_edge, %if.end17.i.bnxt_ptp_pps_init.exit_crit_edge
  %72 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %73) #10
  %n_ext_ts.i = getelementptr inbounds %struct.ptp_clock_info, ptr %42, i32 0, i32 4
  %74 = ptrtoint ptr %n_ext_ts.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %n_ext_ts.i, align 4
  %n_per_out.i = getelementptr inbounds %struct.ptp_clock_info, ptr %42, i32 0, i32 5
  %75 = ptrtoint ptr %n_per_out.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %n_per_out.i, align 4
  %pps.i = getelementptr inbounds %struct.ptp_clock_info, ptr %42, i32 0, i32 7
  %76 = ptrtoint ptr %pps.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %pps.i, align 4
  %verify.i = getelementptr inbounds %struct.ptp_clock_info, ptr %42, i32 0, i32 18
  %77 = ptrtoint ptr %verify.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @bnxt_ptp_verify, ptr %verify.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  br label %if.end32

if.then30.sink.split:                             ; preds = %if.end6.i.if.then30.sink.split_crit_edge, %lor.lhs.false.i.if.then30.sink.split_crit_edge, %if.end.i.if.then30.sink.split_crit_edge
  %78 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.sink = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %.sink) #10
  br label %if.then30

if.then30:                                        ; preds = %if.then30.sink.split, %if.then27.if.then30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.3) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %bnxt_ptp_pps_init.exit, %if.end16.if.end32_crit_edge
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %81 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %call35 = call ptr @ptp_clock_register(ptr noundef nonnull %1, ptr noundef %dev34) #10
  %83 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call35, ptr %ptp_clock, align 4
  %cmp.i111 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %call35 to i32
  %85 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %ptp_clock, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @arm_heavy_mb() #10
  %86 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bp, align 8
  %add.ptr1.i = getelementptr i8, ptr %87, i32 1044
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #10, !srcloc !46
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.i, align 8
  %and44 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.then46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46:                                        ; preds = %if.end43
  call void @_raw_spin_lock_bh(ptr noundef %ptp_lock) #10
  %current_time = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 7
  %90 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ptp_cfg, align 8
  %state.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 64
  %92 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %state.i, align 4
  %94 = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i113 = icmp eq i32 %94, 0
  br i1 %tobool.not.i113, label %if.end.i114, label %if.then46.bnxt_refclk_read.exit_crit_edge

if.then46.bnxt_refclk_read.exit_crit_edge:        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_refclk_read.exit

if.end.i114:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bp, align 8
  %refclk_mapped_regs.c.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %91, i32 0, i32 19
  %97 = ptrtoint ptr %refclk_mapped_regs.c.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %refclk_mapped_regs.c.i, align 4
  %add.ptr.c.i = getelementptr i8, ptr %96, i32 %98
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.c.i) #10, !srcloc !48
  %100 = call i32 @llvm.bswap.i32(i32 %99) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !49
  %conv.c.i = zext i32 %100 to i64
  %101 = ptrtoint ptr %current_time to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv.c.i, ptr %current_time, align 8
  %102 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bp, align 8
  %arrayidx7.i = getelementptr %struct.bnxt_ptp_cfg, ptr %91, i32 0, i32 19, i32 1
  %104 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %103, i32 %105
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #10, !srcloc !48
  %107 = call i32 @llvm.bswap.i32(i32 %106) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  %conv12.i = zext i32 %107 to i64
  %shl.i = shl nuw i64 %conv12.i, 32
  %108 = ptrtoint ptr %current_time to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %current_time, align 8
  %or.i = or i64 %shl.i, %109
  store i64 %or.i, ptr %current_time, align 8
  br label %bnxt_refclk_read.exit

bnxt_refclk_read.exit:                            ; preds = %if.end.i114, %if.then46.bnxt_refclk_read.exit_crit_edge
  %110 = ptrtoint ptr %current_time to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %current_time, align 8
  %old_time = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 8
  %112 = ptrtoint ptr %old_time to i32
  call void @__asan_store8_noabort(i32 %112)
  store volatile i64 %111, ptr %old_time, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock) #10
  %113 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ptp_clock, align 4
  %call61 = call i32 @ptp_schedule_worker(ptr noundef %114, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %bnxt_refclk_read.exit, %if.end43.cleanup_crit_edge, %if.then39, %land.lhs.true.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %84, %if.then39 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %bnxt_refclk_read.exit ], [ 0, %if.end43.cleanup_crit_edge ], [ -34, %if.then.i.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bnxt_cc_read(ptr nocapture noundef readonly %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bp = getelementptr i8, ptr %cc, i32 156
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 4
  %ptp_cfg.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 147
  %2 = ptrtoint ptr %ptp_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_cfg.i, align 8
  %state.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 64
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bnxt_refclk_read.exit_crit_edge

entry.bnxt_refclk_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_refclk_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %refclk_mapped_regs.c.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %refclk_mapped_regs.c.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %refclk_mapped_regs.c.i, align 4
  %add.ptr.c.i = getelementptr i8, ptr %8, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.c.i) #10, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !49
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %arrayidx7.i = getelementptr %struct.bnxt_ptp_cfg, ptr %3, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %13, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #10, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  %17 = zext i32 %16 to i64
  %18 = zext i32 %11 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or i64 %19, %17
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  br label %bnxt_refclk_read.exit

bnxt_refclk_read.exit:                            ; preds = %if.end.i, %entry.bnxt_refclk_read.exit_crit_edge
  %ns.0 = phi i64 [ %21, %if.end.i ], [ 0, %entry.bnxt_refclk_read.exit_crit_edge ]
  ret i64 %ns.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ptp_clear(ptr nocapture noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_cfg = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 147
  %0 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_cfg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_clock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %3) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %4 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ptp_clock, align 4
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pin_config, align 4
  tail call void @kfree(ptr noundef %6) #10
  %7 = ptrtoint ptr %pin_config to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pin_config, align 4
  %tx_skb = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_skb, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end4.if.end12_crit_edge, label %if.then9

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #10
  %10 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end4.if.end12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bp, align 8
  %add.ptr1.i = getelementptr i8, ptr %12, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #10, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwrm_req_init(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_ptp_adjfreq(ptr nocapture noundef readonly %ptp_info, i32 noundef %ppb) #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #10
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !38
  %bp1 = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 13
  %1 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bp1, align 4
  %call = call i32 @__hwrm_req_init(ptr noundef %2, ptr noundef nonnull %req, i16 noundef zeroext 33, i32 noundef 48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call i32 @llvm.bswap.i32(i32 %ppb)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %ptp_freq_adj_ppb = getelementptr inbounds %struct.hwrm_port_mac_cfg_input, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %ptp_freq_adj_ppb to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %ptp_freq_adj_ppb, align 8
  %enables = getelementptr inbounds %struct.hwrm_port_mac_cfg_input, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %enables to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131072, ptr %enables, align 4
  %8 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bp1, align 4
  %call3 = call i32 @hwrm_req_send(ptr noundef %9, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bp1, align 4
  %dev = getelementptr inbounds %struct.bnxt, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_ptp_adjtime(ptr noundef %ptp_info, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_lock) #10
  %nsec.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %1, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_ptp_gettimex(ptr noundef %ptp_info, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp4 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_lock) #10
  %bp = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 13
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 4
  %ptp_cfg.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 147
  %2 = ptrtoint ptr %ptp_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_cfg.i, align 8
  %state.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 64
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then

if.end.i:                                         ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i.i, label %ptp_read_system_postts.exit.critedge.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %refclk_mapped_regs.c21.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %refclk_mapped_regs.c21.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %refclk_mapped_regs.c21.i, align 4
  %add.ptr.c22.i = getelementptr i8, ptr %8, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.c22.i) #10, !srcloc !48
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !49
  %post_ts.i.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i.i) #10
  br label %if.end

ptp_read_system_postts.exit.critedge.i:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %refclk_mapped_regs.c.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %3, i32 0, i32 19
  %15 = ptrtoint ptr %refclk_mapped_regs.c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refclk_mapped_regs.c.i, align 4
  %add.ptr.c.i = getelementptr i8, ptr %14, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.c.i) #10, !srcloc !48
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !49
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock) #10
  br label %cleanup

if.end:                                           ; preds = %ptp_read_system_postts.exit.critedge.i, %if.then.i.i
  %cycles.0.in = phi i32 [ %18, %ptp_read_system_postts.exit.critedge.i ], [ %12, %if.then.i.i ]
  %cycles.0 = zext i32 %cycles.0.in to i64
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %arrayidx7.i = getelementptr %struct.bnxt_ptp_cfg, ptr %3, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %20, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #10, !srcloc !48
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  %conv12.i = zext i32 %24 to i64
  %shl.i = shl nuw i64 %conv12.i, 32
  %or.i = or i64 %shl.i, %cycles.0
  %tc = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 3
  %call2 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %or.i) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp4) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp4, i64 noundef %call2) #10
  %25 = call ptr @memcpy(ptr %ts, ptr %tmp4, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_ptp_settime(ptr noundef %ptp_info, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = mul nsw i64 %1, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %3 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %ptp_lock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_lock) #10
  %tc = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 3
  %cc = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 2
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %retval.0.i) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_ptp_enable(ptr noundef %ptp_info, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  %req.i128 = alloca ptr, align 4
  %req.i119 = alloca ptr, align 4
  %req.i102 = alloca ptr, align 4
  %req.i98 = alloca ptr, align 4
  %req.i73 = alloca ptr, align 4
  %req.i68 = alloca ptr, align 4
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bp1 = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 13
  %0 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp1, align 4
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %ptp_clock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 1
  %5 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_clock, align 4
  %7 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %call = tail call i32 @ptp_find_pin(ptr noundef %6, i32 noundef 1, i32 noundef %9) #10
  %conv = trunc i32 %call to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #10
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !38
  %ptp_cfg.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 147
  %11 = ptrtoint ptr %ptp_cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp_cfg.i, align 8
  %conv3.i = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv)
  %cmp4.i = icmp ult i8 %conv, 4
  %bp7.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %bp7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp7.i, align 4
  br i1 %cmp4.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.4) #13
  br label %bnxt_ptp_cfg_pin.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i = call i32 @__hwrm_req_init(ptr noundef %14, ptr noundef nonnull %req.i, i16 noundef zeroext 413, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.end.i.bnxt_ptp_cfg_pin.exit.thread_crit_edge

if.end.i.bnxt_ptp_cfg_pin.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_cfg_pin.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %mul.i = shl nuw nsw i32 %conv3.i, 1
  %shl.i = shl i32 3, %mul.i
  %17 = call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req.i, align 4
  %enables11.i = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %enables11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %enables11.i, align 8
  %pin0_state.i = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %19, i32 0, i32 6
  %pin0_usage.i = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %19, i32 0, i32 7
  %add.ptr.i = getelementptr i8, ptr %pin0_state.i, i32 %mul.i
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %add.ptr.i, align 1
  %add.ptr16.i = getelementptr i8, ptr %pin0_usage.i, i32 %mul.i
  %22 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %add.ptr16.i, align 1
  %23 = ptrtoint ptr %bp7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bp7.i, align 4
  %25 = load ptr, ptr %req.i, align 4
  %call18.i = call i32 @hwrm_req_send(ptr noundef %24, ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end5, label %if.end9.i.bnxt_ptp_cfg_pin.exit.thread_crit_edge

if.end9.i.bnxt_ptp_cfg_pin.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_cfg_pin.exit.thread

bnxt_ptp_cfg_pin.exit.thread:                     ; preds = %if.end9.i.bnxt_ptp_cfg_pin.exit.thread_crit_edge, %if.end.i.bnxt_ptp_cfg_pin.exit.thread_crit_edge, %if.then.i
  %retval.0.i.ph = phi i32 [ %call18.i, %if.end9.i.bnxt_ptp_cfg_pin.exit.thread_crit_edge ], [ %call.i, %if.end.i.bnxt_ptp_cfg_pin.exit.thread_crit_edge ], [ -95, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end9.i
  %usage22.i = getelementptr %struct.bnxt_ptp_cfg, ptr %12, i32 0, i32 4, i32 1, i32 %conv3.i, i32 1
  %26 = ptrtoint ptr %usage22.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %usage22.i, align 1
  %state27.i = getelementptr %struct.bnxt_ptp_cfg, ptr %12, i32 0, i32 4, i32 1, i32 %conv3.i, i32 2
  %27 = ptrtoint ptr %state27.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %state27.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i68) #10
  %28 = ptrtoint ptr %req.i68 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i68, align 4, !annotation !38
  %call.i69 = call i32 @__hwrm_req_init(ptr noundef %1, ptr noundef nonnull %req.i68, i16 noundef zeroext 414, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %bnxt_ptp_cfg_event.exit, label %bnxt_ptp_cfg_event.exit.thread

bnxt_ptp_cfg_event.exit.thread:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i68) #10
  br label %cleanup

bnxt_ptp_cfg_event.exit:                          ; preds = %if.end5
  %29 = ptrtoint ptr %req.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req.i68, align 4
  %enables.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %enables.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 256, ptr %enables.i, align 8
  %ptp_pps_event.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %30, i32 0, i32 6
  %32 = ptrtoint ptr %ptp_pps_event.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %ptp_pps_event.i, align 2
  %call1.i = call i32 @hwrm_req_send(ptr noundef %1, ptr noundef %30) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %if.then8, label %bnxt_ptp_cfg_event.exit.cleanup_crit_edge

bnxt_ptp_cfg_event.exit.cleanup_crit_edge:        ; preds = %bnxt_ptp_cfg_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %bnxt_ptp_cfg_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 4, i32 1, i32 %conv3.i
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %arrayidx, align 1
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %ptp_clock11 = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 1
  %34 = ptrtoint ptr %ptp_clock11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptp_clock11, align 4
  %index12 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %index12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index12, align 8
  %call13 = tail call i32 @ptp_find_pin(ptr noundef %35, i32 noundef 2, i32 noundef %37) #10
  %conv14 = trunc i32 %call13 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool15.not = icmp eq i32 %on, 0
  br i1 %tobool15.not, label %sw.bb10.sw.epilog_crit_edge, label %if.end17

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end17:                                         ; preds = %sw.bb10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i73) #10
  %38 = ptrtoint ptr %req.i73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i73, align 4, !annotation !38
  %ptp_cfg.i74 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 147
  %39 = ptrtoint ptr %ptp_cfg.i74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ptp_cfg.i74, align 8
  %conv3.i75 = and i32 %call13, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv14)
  %cmp4.i76 = icmp ult i8 %conv14, 4
  %bp7.i77 = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %bp7.i77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bp7.i77, align 4
  br i1 %cmp4.i76, label %if.end.i82, label %if.then.i79

if.then.i79:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i78 = getelementptr inbounds %struct.bnxt, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %dev.i78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i78, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.4) #13
  br label %bnxt_ptp_cfg_pin.exit97.thread

if.end.i82:                                       ; preds = %if.end17
  %call.i80 = call i32 @__hwrm_req_init(ptr noundef %42, ptr noundef nonnull %req.i73, i16 noundef zeroext 413, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i81, label %if.end9.i92, label %if.end.i82.bnxt_ptp_cfg_pin.exit97.thread_crit_edge

if.end.i82.bnxt_ptp_cfg_pin.exit97.thread_crit_edge: ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_cfg_pin.exit97.thread

if.end9.i92:                                      ; preds = %if.end.i82
  %mul.i83 = shl nuw nsw i32 %conv3.i75, 1
  %shl.i84 = shl i32 3, %mul.i83
  %45 = call i32 @llvm.bswap.i32(i32 %shl.i84) #10
  %46 = ptrtoint ptr %req.i73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req.i73, align 4
  %enables11.i85 = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %enables11.i85 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %enables11.i85, align 8
  %pin0_state.i86 = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %47, i32 0, i32 6
  %pin0_usage.i87 = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %47, i32 0, i32 7
  %add.ptr.i88 = getelementptr i8, ptr %pin0_state.i86, i32 %mul.i83
  %49 = ptrtoint ptr %add.ptr.i88 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %add.ptr.i88, align 1
  %add.ptr16.i89 = getelementptr i8, ptr %pin0_usage.i87, i32 %mul.i83
  %50 = ptrtoint ptr %add.ptr16.i89 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %add.ptr16.i89, align 1
  %51 = ptrtoint ptr %bp7.i77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bp7.i77, align 4
  %53 = load ptr, ptr %req.i73, align 4
  %call18.i90 = call i32 @hwrm_req_send(ptr noundef %52, ptr noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i90)
  %tobool19.not.i91 = icmp eq i32 %call18.i90, 0
  br i1 %tobool19.not.i91, label %if.then20, label %if.end9.i92.bnxt_ptp_cfg_pin.exit97.thread_crit_edge

if.end9.i92.bnxt_ptp_cfg_pin.exit97.thread_crit_edge: ; preds = %if.end9.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_cfg_pin.exit97.thread

bnxt_ptp_cfg_pin.exit97.thread:                   ; preds = %if.end9.i92.bnxt_ptp_cfg_pin.exit97.thread_crit_edge, %if.end.i82.bnxt_ptp_cfg_pin.exit97.thread_crit_edge, %if.then.i79
  %retval.0.i96.ph = phi i32 [ %call18.i90, %if.end9.i92.bnxt_ptp_cfg_pin.exit97.thread_crit_edge ], [ %call.i80, %if.end.i82.bnxt_ptp_cfg_pin.exit97.thread_crit_edge ], [ -95, %if.then.i79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i73) #10
  br label %cleanup

if.then20:                                        ; preds = %if.end9.i92
  %usage22.i93 = getelementptr %struct.bnxt_ptp_cfg, ptr %40, i32 0, i32 4, i32 1, i32 %conv3.i75, i32 1
  %54 = ptrtoint ptr %usage22.i93 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %usage22.i93, align 1
  %state27.i94 = getelementptr %struct.bnxt_ptp_cfg, ptr %40, i32 0, i32 4, i32 1, i32 %conv3.i75, i32 2
  %55 = ptrtoint ptr %state27.i94 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %state27.i94, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i73) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i98) #10
  %56 = ptrtoint ptr %req.i98 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i98, align 4, !annotation !38
  %57 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bp1, align 4
  %59 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %59, align 8
  %nsec.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %61)
  %cmp.i.i = icmp sgt i64 %61, 9223372035
  br i1 %cmp.i.i, label %if.then20.timespec64_to_ns.exit.i_crit_edge, label %if.end.i.i

if.then20.timespec64_to_ns.exit.i_crit_edge:      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit.i

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %61)
  %cmp2.i.i = icmp slt i64 %61, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.timespec64_to_ns.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.timespec64_to_ns.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = mul nsw i64 %61, 1000000000
  %conv.i.i = sext i32 %63 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %timespec64_to_ns.exit.i

timespec64_to_ns.exit.i:                          ; preds = %if.end4.i.i, %if.end.i.i.timespec64_to_ns.exit.i_crit_edge, %if.then20.timespec64_to_ns.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %if.then20.timespec64_to_ns.exit.i_crit_edge ], [ -9223372036854775808, %if.end.i.i.timespec64_to_ns.exit.i_crit_edge ]
  %ptp_lock.i.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %ptp_lock.i.i) #10
  %64 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bp1, align 4
  %ptp_cfg.i.i.i = getelementptr inbounds %struct.bnxt, ptr %65, i32 0, i32 147
  %66 = ptrtoint ptr %ptp_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ptp_cfg.i.i.i, align 8
  %state.i.i.i = getelementptr inbounds %struct.bnxt, ptr %65, i32 0, i32 64
  %68 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state.i.i.i, align 4
  %70 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i.i, label %if.end.i99, label %bnxt_get_target_cycles.exit.i

bnxt_get_target_cycles.exit.i:                    ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock.i.i) #10
  br label %bnxt_ptp_perout_cfg.exit

if.end.i99:                                       ; preds = %timespec64_to_ns.exit.i
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %65, align 8
  %refclk_mapped_regs.c.i.i.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %67, i32 0, i32 19
  %73 = ptrtoint ptr %refclk_mapped_regs.c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %refclk_mapped_regs.c.i.i.i, align 4
  %add.ptr.c.i.i.i = getelementptr i8, ptr %72, i32 %74
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.c.i.i.i) #10, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !49
  %76 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %65, align 8
  %arrayidx7.i.i.i = getelementptr %struct.bnxt_ptp_cfg, ptr %67, i32 0, i32 19, i32 1
  %78 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx7.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %77, i32 %79
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #10, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  %81 = zext i32 %80 to i64
  %82 = zext i32 %75 to i64
  %83 = shl nuw i64 %82, 32
  %84 = or i64 %83, %81
  %85 = call i64 @llvm.bswap.i64(i64 %84) #10
  %tc.i.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 3
  %call2.i.i = call i64 @timecounter_cyc2time(ptr noundef %tc.i.i, i64 noundef %85) #10
  call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock.i.i) #10
  %sub.i.i = sub i64 %retval.0.i.i, %call2.i.i
  %shift.i.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 2, i32 3
  %86 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %shift.i.i, align 4
  %sh_prom.i.i = zext i32 %87 to i64
  %shl.i.i = shl i64 %sub.i.i, %sh_prom.i.i
  %mult.i.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 2, i32 2
  %88 = ptrtoint ptr %mult.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mult.i.i, align 8
  %conv.i21.i = zext i32 %89 to i64
  %call5.i.i = call i64 @div64_u64(i64 noundef %shl.i.i, i64 noundef %conv.i21.i) #10
  %call3.i = call i32 @__hwrm_req_init(ptr noundef %58, ptr noundef nonnull %req.i98, i16 noundef zeroext 414, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i99.bnxt_ptp_perout_cfg.exit_crit_edge

if.end.i99.bnxt_ptp_perout_cfg.exit_crit_edge:    ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_perout_cfg.exit

if.end6.i:                                        ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %req.i98 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %req.i98, align 4
  %enables7.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %enables7.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 14336, ptr %enables7.i, align 8
  %ptp_pps_event.i100 = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %91, i32 0, i32 6
  %93 = ptrtoint ptr %ptp_pps_event.i100 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %ptp_pps_event.i100, align 2
  %ptp_freq_adj_dll_source.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %91, i32 0, i32 7
  %94 = ptrtoint ptr %ptp_freq_adj_dll_source.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %ptp_freq_adj_dll_source.i, align 1
  %ptp_freq_adj_dll_phase.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %91, i32 0, i32 8
  %95 = ptrtoint ptr %ptp_freq_adj_dll_phase.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %ptp_freq_adj_dll_phase.i, align 4
  %ptp_freq_adj_ext_period.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %91, i32 0, i32 10
  %96 = ptrtoint ptr %ptp_freq_adj_ext_period.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 13277755, ptr %ptp_freq_adj_ext_period.i, align 8
  %ptp_freq_adj_ext_up.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %91, i32 0, i32 11
  %97 = ptrtoint ptr %ptp_freq_adj_ext_up.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %ptp_freq_adj_ext_up.i, align 4
  %conv.i = trunc i64 %call5.i.i to i32
  %98 = call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %ptp_freq_adj_ext_phase_lower.i = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %91, i32 0, i32 12
  %99 = ptrtoint ptr %ptp_freq_adj_ext_phase_lower.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %ptp_freq_adj_ext_phase_lower.i, align 8
  %call8.i = call i32 @hwrm_req_send(ptr noundef %58, ptr noundef %91) #10
  br label %bnxt_ptp_perout_cfg.exit

bnxt_ptp_perout_cfg.exit:                         ; preds = %if.end6.i, %if.end.i99.bnxt_ptp_perout_cfg.exit_crit_edge, %bnxt_get_target_cycles.exit.i
  %retval.0.i101 = phi i32 [ %call8.i, %if.end6.i ], [ -5, %bnxt_get_target_cycles.exit.i ], [ %call3.i, %if.end.i99.bnxt_ptp_perout_cfg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i98) #10
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i102) #10
  %100 = ptrtoint ptr %req.i102 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i102, align 4, !annotation !38
  %ptp_cfg.i103 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 147
  %101 = ptrtoint ptr %ptp_cfg.i103 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ptp_cfg.i103, align 8
  %bp7.i104 = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %102, i32 0, i32 13
  %103 = ptrtoint ptr %bp7.i104 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bp7.i104, align 4
  %call.i105 = call i32 @__hwrm_req_init(ptr noundef %104, ptr noundef nonnull %req.i102, i16 noundef zeroext 413, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end9.i113, label %sw.bb23.bnxt_ptp_cfg_pin.exit118.thread_crit_edge

sw.bb23.bnxt_ptp_cfg_pin.exit118.thread_crit_edge: ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_cfg_pin.exit118.thread

if.end9.i113:                                     ; preds = %sw.bb23
  %105 = ptrtoint ptr %req.i102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %req.i102, align 4
  %enables11.i108 = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %enables11.i108 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 50331648, ptr %enables11.i108, align 8
  %pin0_state.i109 = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %106, i32 0, i32 6
  %pin0_usage.i110 = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %106, i32 0, i32 7
  %108 = ptrtoint ptr %pin0_state.i109 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %pin0_state.i109, align 1
  %109 = ptrtoint ptr %pin0_usage.i110 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %pin0_usage.i110, align 1
  %110 = ptrtoint ptr %bp7.i104 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bp7.i104, align 4
  %call18.i111 = call i32 @hwrm_req_send(ptr noundef %111, ptr noundef %106) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i111)
  %tobool19.not.i112 = icmp eq i32 %call18.i111, 0
  br i1 %tobool19.not.i112, label %if.end27, label %if.end9.i113.bnxt_ptp_cfg_pin.exit118.thread_crit_edge

if.end9.i113.bnxt_ptp_cfg_pin.exit118.thread_crit_edge: ; preds = %if.end9.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_cfg_pin.exit118.thread

bnxt_ptp_cfg_pin.exit118.thread:                  ; preds = %if.end9.i113.bnxt_ptp_cfg_pin.exit118.thread_crit_edge, %sw.bb23.bnxt_ptp_cfg_pin.exit118.thread_crit_edge
  %retval.0.i117.ph = phi i32 [ %call18.i111, %if.end9.i113.bnxt_ptp_cfg_pin.exit118.thread_crit_edge ], [ %call.i105, %sw.bb23.bnxt_ptp_cfg_pin.exit118.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i102) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end9.i113
  %usage22.i114 = getelementptr %struct.bnxt_ptp_cfg, ptr %102, i32 0, i32 4, i32 1, i32 0, i32 1
  %112 = ptrtoint ptr %usage22.i114 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %usage22.i114, align 1
  %state27.i115 = getelementptr %struct.bnxt_ptp_cfg, ptr %102, i32 0, i32 4, i32 1, i32 0, i32 2
  %113 = ptrtoint ptr %state27.i115 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %state27.i115, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i102) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i119) #10
  %114 = ptrtoint ptr %req.i119 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i119, align 4, !annotation !38
  %call.i120 = call i32 @__hwrm_req_init(ptr noundef %1, ptr noundef nonnull %req.i119, i16 noundef zeroext 414, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i121 = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i121, label %bnxt_ptp_cfg_event.exit127, label %bnxt_ptp_cfg_event.exit127.thread

bnxt_ptp_cfg_event.exit127.thread:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i119) #10
  br label %cleanup

bnxt_ptp_cfg_event.exit127:                       ; preds = %if.end27
  %115 = ptrtoint ptr %req.i119 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %req.i119, align 4
  %enables.i122 = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %116, i32 0, i32 5
  %117 = ptrtoint ptr %enables.i122 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 256, ptr %enables.i122, align 8
  %ptp_pps_event.i123 = getelementptr inbounds %struct.hwrm_func_ptp_cfg_input, ptr %116, i32 0, i32 6
  %118 = ptrtoint ptr %ptp_pps_event.i123 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %ptp_pps_event.i123, align 2
  %call1.i124 = call i32 @hwrm_req_send(ptr noundef %1, ptr noundef %116) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i119) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i124)
  %tobool29.not = icmp eq i32 %call1.i124, 0
  br i1 %tobool29.not, label %if.then30, label %bnxt_ptp_cfg_event.exit127.cleanup_crit_edge

bnxt_ptp_cfg_event.exit127.cleanup_crit_edge:     ; preds = %bnxt_ptp_cfg_event.exit127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30:                                        ; preds = %bnxt_ptp_cfg_event.exit127
  call void @__sanitizer_cov_trace_pc() #12
  %pins32 = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 4, i32 1
  %119 = ptrtoint ptr %pins32 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %pins32, align 1
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %120 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %121, ptr noundef nonnull @.str.9) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %pin_id.0 = phi i8 [ %conv14, %sw.bb10.sw.epilog_crit_edge ], [ %conv, %sw.bb.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i128) #10
  %122 = ptrtoint ptr %req.i128 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i128, align 4, !annotation !38
  %ptp_cfg.i129 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 147
  %123 = ptrtoint ptr %ptp_cfg.i129 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ptp_cfg.i129, align 8
  %conv3.i130 = zext i8 %pin_id.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %pin_id.0)
  %cmp4.i131 = icmp ult i8 %pin_id.0, 4
  %bp7.i132 = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %124, i32 0, i32 13
  %125 = ptrtoint ptr %bp7.i132 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bp7.i132, align 4
  br i1 %cmp4.i131, label %if.end.i137, label %if.then.i134

if.then.i134:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i133 = getelementptr inbounds %struct.bnxt, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %dev.i133 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i133, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %128, ptr noundef nonnull @.str.4) #13
  br label %bnxt_ptp_cfg_pin.exit152

if.end.i137:                                      ; preds = %sw.epilog
  %call.i135 = call i32 @__hwrm_req_init(ptr noundef %126, ptr noundef nonnull %req.i128, i16 noundef zeroext 413, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i136 = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i136, label %if.end9.i147, label %if.end.i137.bnxt_ptp_cfg_pin.exit152_crit_edge

if.end.i137.bnxt_ptp_cfg_pin.exit152_crit_edge:   ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_cfg_pin.exit152

if.end9.i147:                                     ; preds = %if.end.i137
  %mul.i138 = shl nuw nsw i32 %conv3.i130, 1
  %shl.i139 = shl i32 3, %mul.i138
  %129 = call i32 @llvm.bswap.i32(i32 %shl.i139) #10
  %130 = ptrtoint ptr %req.i128 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %req.i128, align 4
  %enables11.i140 = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %enables11.i140 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %129, ptr %enables11.i140, align 8
  %pin0_state.i141 = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %131, i32 0, i32 6
  %pin0_usage.i142 = getelementptr inbounds %struct.hwrm_func_ptp_pin_cfg_input, ptr %131, i32 0, i32 7
  %add.ptr.i143 = getelementptr i8, ptr %pin0_state.i141, i32 %mul.i138
  %133 = ptrtoint ptr %add.ptr.i143 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %add.ptr.i143, align 1
  %add.ptr16.i144 = getelementptr i8, ptr %pin0_usage.i142, i32 %mul.i138
  %134 = ptrtoint ptr %add.ptr16.i144 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %add.ptr16.i144, align 1
  %135 = ptrtoint ptr %bp7.i132 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bp7.i132, align 4
  %137 = load ptr, ptr %req.i128, align 4
  %call18.i145 = call i32 @hwrm_req_send(ptr noundef %136, ptr noundef %137) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i145)
  %tobool19.not.i146 = icmp eq i32 %call18.i145, 0
  br i1 %tobool19.not.i146, label %if.end21.i150, label %if.end9.i147.bnxt_ptp_cfg_pin.exit152_crit_edge

if.end9.i147.bnxt_ptp_cfg_pin.exit152_crit_edge:  ; preds = %if.end9.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_cfg_pin.exit152

if.end21.i150:                                    ; preds = %if.end9.i147
  call void @__sanitizer_cov_trace_pc() #12
  %usage22.i148 = getelementptr %struct.bnxt_ptp_cfg, ptr %124, i32 0, i32 4, i32 1, i32 %conv3.i130, i32 1
  %138 = ptrtoint ptr %usage22.i148 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %usage22.i148, align 1
  %state27.i149 = getelementptr %struct.bnxt_ptp_cfg, ptr %124, i32 0, i32 4, i32 1, i32 %conv3.i130, i32 2
  %139 = ptrtoint ptr %state27.i149 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %state27.i149, align 1
  br label %bnxt_ptp_cfg_pin.exit152

bnxt_ptp_cfg_pin.exit152:                         ; preds = %if.end21.i150, %if.end9.i147.bnxt_ptp_cfg_pin.exit152_crit_edge, %if.end.i137.bnxt_ptp_cfg_pin.exit152_crit_edge, %if.then.i134
  %retval.0.i151 = phi i32 [ 0, %if.end21.i150 ], [ -95, %if.then.i134 ], [ %call.i135, %if.end.i137.bnxt_ptp_cfg_pin.exit152_crit_edge ], [ %call18.i145, %if.end9.i147.bnxt_ptp_cfg_pin.exit152_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i128) #10
  br label %cleanup

cleanup:                                          ; preds = %bnxt_ptp_cfg_pin.exit152, %sw.default, %if.then30, %bnxt_ptp_cfg_event.exit127.cleanup_crit_edge, %bnxt_ptp_cfg_event.exit127.thread, %bnxt_ptp_cfg_pin.exit118.thread, %bnxt_ptp_perout_cfg.exit, %bnxt_ptp_cfg_pin.exit97.thread, %if.then8, %bnxt_ptp_cfg_event.exit.cleanup_crit_edge, %bnxt_ptp_cfg_event.exit.thread, %bnxt_ptp_cfg_pin.exit.thread
  %retval.0 = phi i32 [ -95, %sw.default ], [ %retval.0.i151, %bnxt_ptp_cfg_pin.exit152 ], [ 0, %if.then8 ], [ %call1.i, %bnxt_ptp_cfg_event.exit.cleanup_crit_edge ], [ %retval.0.i101, %bnxt_ptp_perout_cfg.exit ], [ 0, %if.then30 ], [ %call1.i124, %bnxt_ptp_cfg_event.exit127.cleanup_crit_edge ], [ %retval.0.i.ph, %bnxt_ptp_cfg_pin.exit.thread ], [ %call.i69, %bnxt_ptp_cfg_event.exit.thread ], [ %retval.0.i96.ph, %bnxt_ptp_cfg_pin.exit97.thread ], [ %retval.0.i117.ph, %bnxt_ptp_cfg_pin.exit118.thread ], [ %call.i120, %bnxt_ptp_cfg_event.exit127.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_ptp_ts_aux_work(ptr noundef %ptp_info) #0 align 64 {
entry:
  %req.i.i = alloca ptr, align 4
  %timestamp.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %bp1 = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 13
  %1 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bp1, align 4
  %tx_skb = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 6
  %3 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %ptp_cfg.i = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 147
  %5 = ptrtoint ptr %ptp_cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_cfg.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timestamp.i) #10
  %7 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %timestamp.i, align 8, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #10
  %8 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i, align 4, !annotation !38
  %call.i.i = call i32 @__hwrm_req_init(ptr noundef %2, ptr noundef nonnull %req.i.i, i16 noundef zeroext 34, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %bnxt_hwrm_port_ts_query.exit.thread.i

bnxt_hwrm_port_ts_query.exit.thread.i:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #10
  br label %if.else.i

if.end.i.i:                                       ; preds = %if.then
  %9 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req.i.i, align 4
  %flags1.i.i = getelementptr inbounds %struct.hwrm_port_ts_query_input, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags1.i.i, align 8
  %enables.i.i = getelementptr inbounds %struct.hwrm_port_ts_query_input, ptr %10, i32 0, i32 8
  %12 = ptrtoint ptr %enables.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1792, ptr %enables.i.i, align 8
  %13 = ptrtoint ptr %ptp_cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp_cfg.i, align 8
  %tx_seqid.i.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %tx_seqid.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_seqid.i.i, align 8
  %conv.i.i = zext i16 %16 to i32
  %17 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #10
  %ptp_seq_id.i.i = getelementptr inbounds %struct.hwrm_port_ts_query_input, ptr %10, i32 0, i32 10
  %18 = ptrtoint ptr %ptp_seq_id.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ptp_seq_id.i.i, align 4
  %19 = ptrtoint ptr %ptp_cfg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptp_cfg.i, align 8
  %tx_hdr_off.i.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %tx_hdr_off.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tx_hdr_off.i.i, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22) #10
  %ptp_hdr_offset.i.i = getelementptr inbounds %struct.hwrm_port_ts_query_input, ptr %10, i32 0, i32 11
  %24 = ptrtoint ptr %ptp_hdr_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %ptp_hdr_offset.i.i, align 8
  %ts_req_timeout.i.i = getelementptr inbounds %struct.hwrm_port_ts_query_input, ptr %10, i32 0, i32 9
  %25 = ptrtoint ptr %ts_req_timeout.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -6141, ptr %ts_req_timeout.i.i, align 2
  %call5.i.i = call ptr @hwrm_req_hold(ptr noundef %2, ptr noundef %10) #10
  %26 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req.i.i, align 4
  %call6.i.i = call i32 @hwrm_req_send(ptr noundef %2, ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then.i, label %bnxt_hwrm_port_ts_query.exit.i

bnxt_hwrm_port_ts_query.exit.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %2, ptr noundef %29) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #10
  br label %if.else.i

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_msg_ts.i.i = getelementptr inbounds %struct.hwrm_port_ts_query_output, ptr %call5.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %ptp_msg_ts.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ptp_msg_ts.i.i, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31) #10
  %33 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %2, ptr noundef %34) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #10
  %ptp_lock.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %6, i32 0, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %ptp_lock.i) #10
  %tc.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %6, i32 0, i32 3
  %call1.i = call i64 @timecounter_cyc2time(ptr noundef %tc.i, i64 noundef %32) #10
  call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock.i) #10
  %35 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call1.i, ptr %timestamp.i, align 8
  %tx_skb.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %6, i32 0, i32 6
  %36 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_skb.i, align 4
  call void @skb_tstamp_tx(ptr noundef %37, ptr noundef nonnull %timestamp.i) #10
  br label %bnxt_stamp_tx_skb.exit

if.else.i:                                        ; preds = %bnxt_hwrm_port_ts_query.exit.i, %bnxt_hwrm_port_ts_query.exit.thread.i
  %retval.0.i4.i = phi i32 [ %call.i.i, %bnxt_hwrm_port_ts_query.exit.thread.i ], [ %call6.i.i, %bnxt_hwrm_port_ts_query.exit.i ]
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 8
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i4.i) #13
  br label %bnxt_stamp_tx_skb.exit

bnxt_stamp_tx_skb.exit:                           ; preds = %if.else.i, %if.then.i
  %tx_skb4.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %6, i32 0, i32 6
  %40 = ptrtoint ptr %tx_skb4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_skb4.i, align 4
  call void @__dev_kfree_skb_any(ptr noundef %41, i32 noundef 1) #10
  %42 = ptrtoint ptr %tx_skb4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %tx_skb4.i, align 4
  %tx_avail.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %6, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_avail.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %tx_avail.i, i32 1, i32 3, i32 1) #10
  %43 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_avail.i, ptr %tx_avail.i, i32 1, ptr elementtype(i32) %tx_avail.i) #10, !srcloc !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamp.i) #10
  br label %if.end

if.end:                                           ; preds = %bnxt_stamp_tx_skb.exit, %entry.if.end_crit_edge
  %next_period = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 9
  %44 = ptrtoint ptr %next_period to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %next_period, align 8
  %sub = sub i32 %0, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub5 = sub i32 %45, %0
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ptp_cfg.i32 = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 147
  %46 = ptrtoint ptr %ptp_cfg.i32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ptp_cfg.i32, align 8
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %if.end6.bnxt_ptp_get_current_time.exit_crit_edge, label %if.end.i

if.end6.bnxt_ptp_get_current_time.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_ptp_get_current_time.exit

if.end.i:                                         ; preds = %if.end6
  %ptp_lock.i33 = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %47, i32 0, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %ptp_lock.i33) #10
  %current_time.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %current_time.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %current_time.i, align 8
  %old_time.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %47, i32 0, i32 8
  %50 = ptrtoint ptr %old_time.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store volatile i64 %49, ptr %old_time.i, align 8
  %51 = ptrtoint ptr %ptp_cfg.i32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ptp_cfg.i32, align 8
  %state.i.i = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 64
  %53 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i.i, align 4
  %55 = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i34 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i34, label %if.end.i.i35, label %if.end.i.bnxt_refclk_read.exit.i_crit_edge

if.end.i.bnxt_refclk_read.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bnxt_refclk_read.exit.i

if.end.i.i35:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %2, align 8
  %refclk_mapped_regs.c.i.i = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %52, i32 0, i32 19
  %58 = ptrtoint ptr %refclk_mapped_regs.c.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %refclk_mapped_regs.c.i.i, align 4
  %add.ptr.c.i.i = getelementptr i8, ptr %57, i32 %59
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.c.i.i) #10, !srcloc !48
  %61 = call i32 @llvm.bswap.i32(i32 %60) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !49
  %conv.c.i.i = zext i32 %61 to i64
  %62 = ptrtoint ptr %current_time.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv.c.i.i, ptr %current_time.i, align 8
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %2, align 8
  %arrayidx7.i.i = getelementptr %struct.bnxt_ptp_cfg, ptr %52, i32 0, i32 19, i32 1
  %65 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx7.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %64, i32 %66
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #10, !srcloc !48
  %68 = call i32 @llvm.bswap.i32(i32 %67) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  %conv12.i.i = zext i32 %68 to i64
  %shl.i.i = shl nuw i64 %conv12.i.i, 32
  %69 = ptrtoint ptr %current_time.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %current_time.i, align 8
  %or.i.i = or i64 %shl.i.i, %70
  store i64 %or.i.i, ptr %current_time.i, align 8
  br label %bnxt_refclk_read.exit.i

bnxt_refclk_read.exit.i:                          ; preds = %if.end.i.i35, %if.end.i.bnxt_refclk_read.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock.i33) #10
  br label %bnxt_ptp_get_current_time.exit

bnxt_ptp_get_current_time.exit:                   ; preds = %bnxt_refclk_read.exit.i, %if.end6.bnxt_ptp_get_current_time.exit_crit_edge
  %add = add i32 %0, 100
  %71 = ptrtoint ptr %next_period to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add, ptr %next_period, align 8
  %next_overflow_check = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 10
  %72 = ptrtoint ptr %next_overflow_check to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %next_overflow_check, align 4
  %sub8 = sub i32 %0, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub8)
  %cmp9 = icmp sgt i32 %sub8, -1
  br i1 %cmp9, label %if.then10, label %bnxt_ptp_get_current_time.exit.cleanup_crit_edge

bnxt_ptp_get_current_time.exit.cleanup_crit_edge: ; preds = %bnxt_ptp_get_current_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %bnxt_ptp_get_current_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_lock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %ptp_lock) #10
  %tc = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 3
  %call = call i64 @timecounter_read(ptr noundef %tc) #10
  call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock) #10
  %add12 = add i32 %0, 6840000
  %74 = ptrtoint ptr %next_overflow_check to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add12, ptr %next_overflow_check, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %bnxt_ptp_get_current_time.exit.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %sub5, %if.then3 ], [ 100, %if.then10 ], [ 100, %bnxt_ptp_get_current_time.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_hold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_ptp_verify(ptr nocapture noundef readonly %ptp_info, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr %struct.bnxt_ptp_cfg, ptr %ptp_info, i32 0, i32 4, i32 1, i32 %pin, i32 1
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %usage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ugt i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %func)
  %cmp2.not = icmp eq i32 %func, 3
  %or.cond = or i1 %cmp2.not, %cmp
  %retval.0 = select i1 %or.cond, i32 -95, i32 0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 263, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 595, i32 23}
!4 = !{ptr @bnxt_ptp_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 739, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 753, i32 24}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 203, i32 28}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!13 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!18 = !{ptr @bnxt_ptp_caps, !19, !"bnxt_ptp_caps", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 619, i32 36}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 162, i32 7}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 371, i32 28}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 557, i32 23}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ptp.c", i32 687, i32 43}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i64 2153894272, i64 2153894297}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 6389827}
!42 = !{i64 6390024}
!43 = !{i64 2153875257}
!44 = !{i64 2153894953, i64 2153894978}
!45 = !{i64 2159279276}
!46 = !{i64 4997908}
!47 = !{i64 2159279732}
!48 = !{i64 4998326}
!49 = !{i64 2159267484}
!50 = !{i64 2159268050}
!51 = !{i64 2148227803, i64 2148227829, i64 2148227858, i64 2148227892, i64 2148227923, i64 2148227946}
