; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan743x_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan743x_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lan743x_adapter = type { ptr, ptr, i32, i32, ptr, %struct.lan743x_csr, %struct.lan743x_intr, %struct.lan743x_gpio, %struct.lan743x_ptp, [6 x i8], %struct.lan743x_phy, [1 x %struct.lan743x_tx], [4 x %struct.lan743x_rx], i32 }
%struct.lan743x_csr = type { i32, ptr, i32, i32 }
%struct.lan743x_intr = type { i32, i32, [8 x %struct.lan743x_vector], i32, i8, i8, %struct.wait_queue_head }
%struct.lan743x_vector = type { i32, i32, ptr, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lan743x_gpio = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32 }
%struct.lan743x_ptp = type { i32, %struct.mutex, ptr, %struct.ptp_clock_info, [12 x %struct.ptp_pin_desc], i32, [2 x %struct.lan743x_ptp_perout], i8, [4 x i8], %struct.spinlock, i32, [4 x ptr], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.lan743x_ptp_perout = type { i32, i32 }
%struct.lan743x_phy = type { i8, i8 }
%struct.lan743x_tx = type { ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %struct.napi_struct, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.lan743x_rx = type { ptr, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, %struct.napi_struct, i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.117 = type { ptr }
%struct.ptp_clock_request = type { i32, %union.anon.118 }
%union.anon.118 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.119, %struct.ptp_clock_time, i32, i32, %union.anon.120 }
%union.anon.119 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.120 = type { %struct.ptp_clock_time }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.hwtstamp_config = type { i32, i32, i32 }
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

@lan743x_gpio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&gpio->gpio_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PTP TX Software Timestamp Error\0A\00", [63 x i8] zeroinitializer }, align 32
@lan743x_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ptp->command_lock\00", [45 x i8] zeroinitializer }, align 32
@lan743x_ptp_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ptp->tx_ts_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unknown LAN743x (%08x). Assuming no GPIO\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lan743x_ptp_pin_%02d\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pm\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_clock_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"successfully registered ptp clock\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ptp clock unregister\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unrequest failed, pending_tx_timestamps==0\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SIOCSHWTSTAMP, ifr == NULL\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  tx_type = %d, UNKNOWN\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"timeout waiting for cmd to be done, cmd = 0x%08X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ts->tv_sec out of range, %lld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ts->tv_nsec out of range, %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ts == NULL\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"request->type == %d, Unknown\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"request == NULL\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to reserve event channel %d for PEROUT\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to reserve gpio %d for PEROUT\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"perout period too small, minimum is 200nS\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pulse width must be smaller than period\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"duty cycle specified is not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"attempted release on a not used event_channel = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"attempted to reserved a used event_channel = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Auto capture cause not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unknown tx timestamp capture cause\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TX TS INT but no TX TS CNT\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx ts queue overflow\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PTP already enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PTP already disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Attempting reset while enabled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx ts skb queue overflow\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1949302784, i64 1949368320]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 64, i64 100, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 200000000]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1073741824]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 32, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 940, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1023, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1024, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1067, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1081, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1087, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1110, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1115, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1134, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1279, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1300, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1335, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 59, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 430, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 437, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 446, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 694, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 700, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 519, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 531, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 559, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 565, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 603, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 172, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 155, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 760, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 763, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 767, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 78, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1196, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1211, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1228, i32 3 }
@___asan_gen_.152 = private constant [48 x i8] c"../drivers/net/ethernet/microchip/lan743x_ptp.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 980, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 156, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @lan743x_gpio_init.__key, ptr @.str, ptr @.str.1, ptr @lan743x_ptp_init.__key, ptr @.str.2, ptr @lan743x_ptp_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_gpio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_ptp_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan743x_gpio_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio1 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %gpio1, ptr noundef nonnull @.str, ptr noundef nonnull @lan743x_gpio_init.__key, i16 noundef signext 3) #8
  %gpio_cfg0 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %gpio_cfg0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %gpio_cfg0, align 4
  %gpio_cfg1 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 5
  %1 = ptrtoint ptr %gpio_cfg1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 268369920, ptr %gpio_cfg1, align 4
  %gpio_cfg2 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 6
  %2 = ptrtoint ptr %gpio_cfg2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gpio_cfg2, align 4
  %gpio_cfg3 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 7
  %3 = ptrtoint ptr %gpio_cfg3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gpio_cfg3, align 4
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 80, i32 noundef 0) #8
  %4 = ptrtoint ptr %gpio_cfg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_cfg1, align 4
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 84, i32 noundef %5) #8
  %6 = ptrtoint ptr %gpio_cfg2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_cfg2, align 4
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 88, i32 noundef %7) #8
  %8 = ptrtoint ptr %gpio_cfg3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_cfg3, align 4
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 92, i32 noundef %9) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan743x_csr_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan743x_ptp_isr(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lan743x_csr_write(ptr noundef %context, i32 noundef 1932, i32 noundef 128) #8
  %call = tail call i32 @lan743x_csr_read(ptr noundef %context, i32 noundef 2568) #8
  %call2 = tail call i32 @lan743x_csr_read(ptr noundef %context, i32 noundef 2572) #8
  %and = and i32 %call2, %call
  %and3 = and i32 %and, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ptp_clock = getelementptr inbounds %struct.lan743x_adapter, ptr %context, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %call4 = tail call i32 @ptp_schedule_worker(ptr noundef %1, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %and, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %do.body

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.lan743x_adapter, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and8 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body.do.end_crit_edge, label %if.then10

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body.do.end_crit_edge
  tail call void @lan743x_csr_write(ptr noundef %context, i32 noundef 2568, i32 noundef 8192) #8
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end.if.end12_crit_edge
  %and13 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lan743x_csr_write(ptr noundef %context, i32 noundef 2568, i32 noundef 2) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %and17 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lan743x_csr_write(ptr noundef %context, i32 noundef 2568, i32 noundef 1) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  br i1 %tobool.not, label %if.then22, label %if.end20.if.end23_crit_edge

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lan743x_csr_write(ptr noundef %context, i32 noundef 1928, i32 noundef 128) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan743x_csr_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan743x_ptp_update_latency(ptr noundef %adapter, i32 noundef %link_speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %link_speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %link_speed, label %entry.sw.epilog_crit_edge [
    i32 10, label %entry.sw.epilog.sink.split_crit_edge
    i32 100, label %sw.bb1
    i32 1000, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1966605, %sw.bb2 ], [ 11862610, %sw.bb1 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2652, i32 noundef %.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan743x_ptp_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %command_lock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 1
  tail call void @__mutex_init(ptr noundef %command_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @lan743x_ptp_init.__key) #8
  %tx_ts_lock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %tx_ts_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @lan743x_ptp_init.__key.3, i16 noundef signext 3) #8
  %used_event_ch = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %used_event_ch to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %used_event_ch, align 4
  %uglygep = getelementptr i8, ptr %adapter, i32 1764
  %1 = call ptr @memset(ptr %uglygep, i32 255, i32 16)
  %id_rev2.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %id_rev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id_rev2.i, align 4
  %and.i = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1949302784, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1949302784
  br i1 %cmp.i, label %if.then.i, label %entry.lan743x_led_mux_save.exit_crit_edge

entry.lan743x_led_mux_save.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_save.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 16) #8
  %and4.i = lshr i32 %call.i, 20
  %4 = trunc i32 %and4.i to i8
  %5 = and i8 %4, 1
  %arrayidx.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 8, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx.i, align 1
  %and4.1.i = lshr i32 %call.i, 21
  %7 = trunc i32 %and4.1.i to i8
  %8 = and i8 %7, 1
  %arrayidx.1.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 8, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx.1.i, align 1
  %and4.2.i = lshr i32 %call.i, 22
  %10 = trunc i32 %and4.2.i to i8
  %11 = and i8 %10, 1
  %arrayidx.2.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 8, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx.2.i, align 1
  %and4.3.i = lshr i32 %call.i, 23
  %13 = trunc i32 %and4.3.i to i8
  %14 = and i8 %13, 1
  %arrayidx.3.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 8, i32 3
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx.3.i, align 1
  br label %lan743x_led_mux_save.exit

lan743x_led_mux_save.exit:                        ; preds = %if.then.i, %entry.lan743x_led_mux_save.exit_crit_edge
  %.sink.i = phi i8 [ 1, %if.then.i ], [ 0, %entry.lan743x_led_mux_save.exit_crit_edge ]
  %leds_multiplexed8.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %leds_multiplexed8.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink.i, ptr %leds_multiplexed8.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan743x_ptp_open(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8
  %command_lock.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 1
  tail call void @mutex_lock_nested(ptr noundef %command_lock.i, i32 noundef 0) #8
  %call.i.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2560) #8
  %and.i.i = and i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end3.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.lan743x_ptp_reset.exit_crit_edge, label %if.then2.i

do.body.i.lan743x_ptp_reset.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_reset.exit

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.33) #11
  br label %lan743x_ptp_reset.exit

if.end3.i:                                        ; preds = %entry
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2560, i32 noundef 1) #8
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end3.i
  %timeout.014.i.i = phi i32 [ 1000, %if.end3.i ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %call.i11.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2560) #8
  %and.i12.i = and i32 %call.i11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool1.not.i.i = icmp eq i32 %and.i12.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.lan743x_ptp_reset.exit_crit_edge, label %while.body.i.i

land.rhs.i.i.lan743x_ptp_reset.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_reset.exit

while.body.i.i:                                   ; preds = %land.rhs.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 20000, i32 noundef 2) #8
  %dec.i.i = add nsw i32 %timeout.014.i.i, -1
  %tobool.not.i13.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i13.i, label %do.body.i.i, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

do.body.i.i:                                      ; preds = %while.body.i.i
  %msg_enable.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %4 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i.i, align 8
  %and3.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.lan743x_ptp_reset.exit_crit_edge, label %if.then5.i.i

do.body.i.i.lan743x_ptp_reset.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_reset.exit

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef 1) #11
  br label %lan743x_ptp_reset.exit

lan743x_ptp_reset.exit:                           ; preds = %if.then5.i.i, %do.body.i.i.lan743x_ptp_reset.exit_crit_edge, %land.rhs.i.i.lan743x_ptp_reset.exit_crit_edge, %if.then2.i, %do.body.i.lan743x_ptp_reset.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %command_lock.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #8
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 2) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, i64 noundef %call.i.i.i) #8
  %8 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %ts.sroa.0.0.copyload1.i = load i64, ptr %tmp.i.i, align 8
  %ts.sroa.5.0.tmp.i.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 8
  %9 = ptrtoint ptr %ts.sroa.5.0.tmp.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %ts.sroa.5.0.copyload2.i = load i32, ptr %ts.sroa.5.0.tmp.i.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #8
  %conv.i = trunc i64 %ts.sroa.0.0.copyload1.i to i32
  call fastcc void @lan743x_ptp_clock_set(ptr noundef %adapter, i32 noundef %conv.i, i32 noundef %ts.sroa.5.0.copyload2.i) #8
  %call = call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2728) #8
  %or = or i32 %call, 1
  call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2728, i32 noundef %or) #8
  call void @mutex_lock_nested(ptr noundef %command_lock.i, i32 noundef 0) #8
  %call.i.i118 = call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2560) #8
  %and.i.i119 = and i32 %call.i.i118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i119)
  %tobool.not.i.not.i120 = icmp eq i32 %and.i.i119, 0
  br i1 %tobool.not.i.not.i120, label %if.end3.i126, label %do.body.i124

do.body.i124:                                     ; preds = %lan743x_ptp_reset.exit
  %msg_enable.i121 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %10 = ptrtoint ptr %msg_enable.i121 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i121, align 8
  %and.i122 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i123 = icmp eq i32 %and.i122, 0
  br i1 %tobool.not.i123, label %do.body.i124.lan743x_ptp_enable.exit_crit_edge, label %if.then2.i125

do.body.i124.lan743x_ptp_enable.exit_crit_edge:   ; preds = %do.body.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_enable.exit

if.then2.i125:                                    ; preds = %do.body.i124
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.31) #11
  br label %lan743x_ptp_enable.exit

if.end3.i126:                                     ; preds = %lan743x_ptp_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2560, i32 noundef 4) #8
  br label %lan743x_ptp_enable.exit

lan743x_ptp_enable.exit:                          ; preds = %if.end3.i126, %if.then2.i125, %do.body.i124.lan743x_ptp_enable.exit_crit_edge
  call void @mutex_unlock(ptr noundef %command_lock.i) #8
  call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 1928, i32 noundef 128) #8
  call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2572, i32 noundef 12288) #8
  %14 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptp1, align 4
  %or2 = or i32 %15, 4
  store i32 %or2, ptr %ptp1, align 4
  %id_rev = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %id_rev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id_rev, align 4
  %and = and i32 %17, -65536
  %18 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and, label %do.body [
    i32 1949302784, label %lan743x_ptp_enable.exit.for.body.preheader_crit_edge
    i32 1949368320, label %sw.bb3
  ]

lan743x_ptp_enable.exit.for.body.preheader_crit_edge: ; preds = %lan743x_ptp_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

sw.bb3:                                           ; preds = %lan743x_ptp_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

do.body:                                          ; preds = %lan743x_ptp_enable.exit
  %msg_enable = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 8
  %and4 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %do.body.for.end_crit_edge, label %if.then

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.5, i32 noundef %17) #11
  br label %for.end

for.body.preheader:                               ; preds = %sw.bb3, %lan743x_ptp_enable.exit.for.body.preheader_crit_edge
  %n_pins.0.ph = phi i32 [ 12, %sw.bb3 ], [ 4, %lan743x_ptp_enable.exit.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0128 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 %i.0128
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 64, ptr noundef nonnull @.str.6, i32 noundef %i.0128)
  %index = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 %i.0128, i32 1
  %23 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.0128, ptr %index, align 4
  %func = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 %i.0128, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %func, align 4
  %inc = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, %n_pins.0.ph
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then, %do.body.for.end_crit_edge
  %n_pins.0131 = phi i32 [ 0, %do.body.for.end_crit_edge ], [ 0, %if.then ], [ %n_pins.0.ph, %for.body.for.end_crit_edge ]
  %ptp_clock_info = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3
  %25 = ptrtoint ptr %ptp_clock_info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ptp_clock_info, align 4
  %name12 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 1
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  %call15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name12, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %29)
  %max_adj = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %30 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 31249999, ptr %max_adj, align 4
  %n_alarm = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 3
  %31 = ptrtoint ptr %n_alarm to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %n_alarm, align 4
  %n_ext_ts = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 4
  %32 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %n_ext_ts, align 4
  %n_per_out = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 5
  %33 = ptrtoint ptr %n_per_out to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %n_per_out, align 4
  %n_pins21 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %34 = ptrtoint ptr %n_pins21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %n_pins.0131, ptr %n_pins21, align 4
  %pps = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 7
  %35 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %pps, align 4
  %pin_config23 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 4
  %pin_config26 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 8
  %36 = ptrtoint ptr %pin_config26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pin_config23, ptr %pin_config26, align 4
  %adjfine = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 9
  %37 = ptrtoint ptr %adjfine to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @lan743x_ptpci_adjfine, ptr %adjfine, align 4
  %adjfreq = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 10
  %38 = ptrtoint ptr %adjfreq to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @lan743x_ptpci_adjfreq, ptr %adjfreq, align 4
  %adjtime = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 12
  %39 = ptrtoint ptr %adjtime to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @lan743x_ptpci_adjtime, ptr %adjtime, align 4
  %gettime64 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 13
  %40 = ptrtoint ptr %gettime64 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @lan743x_ptpci_gettime64, ptr %gettime64, align 4
  %getcrosststamp = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 15
  %41 = ptrtoint ptr %getcrosststamp to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %getcrosststamp, align 4
  %settime64 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 16
  %42 = ptrtoint ptr %settime64 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @lan743x_ptpci_settime64, ptr %settime64, align 4
  %enable = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 17
  %43 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @lan743x_ptpci_enable, ptr %enable, align 4
  %do_aux_work = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 19
  %44 = ptrtoint ptr %do_aux_work to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @lan743x_ptpci_do_aux_work, ptr %do_aux_work, align 4
  %verify = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 18
  %45 = ptrtoint ptr %verify to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @lan743x_ptpci_verify_pin_config, ptr %verify, align 4
  %pdev = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 4
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %call37 = call ptr @ptp_clock_register(ptr noundef %ptp_clock_info, ptr noundef %dev) #8
  %ptp_clock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 2
  %48 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call37, ptr %ptp_clock, align 4
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body41, label %if.end50

do.body41:                                        ; preds = %for.end
  %msg_enable42 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %49 = ptrtoint ptr %msg_enable42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable42, align 8
  %and43 = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body41.done_crit_edge, label %if.then45

do.body41.done_crit_edge:                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then45:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.8) #11
  br label %done

if.end50:                                         ; preds = %for.end
  %53 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ptp1, align 4
  %or52 = or i32 %54, 2
  store i32 %or52, ptr %ptp1, align 4
  %msg_enable54 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %55 = ptrtoint ptr %msg_enable54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msg_enable54, align 8
  %and55 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end50.cleanup_crit_edge, label %if.then57

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %58, ptr noundef nonnull @.str.9) #11
  br label %cleanup

done:                                             ; preds = %if.then45, %do.body41.done_crit_edge
  call void @lan743x_ptp_close(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then57, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %done ], [ 0, %if.then57 ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ptpci_adjfine(ptr noundef %ptpci, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %scaled_ppm, -2047999935
  call void @__sanitizer_cov_trace_const_cmp4(i32 198967427, i32 %0)
  %1 = icmp ult i32 %0, 198967427
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %ptpci, i32 -500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scaled_ppm)
  %cmp5 = icmp sgt i32 %scaled_ppm, 0
  %conv = sext i32 %scaled_ppm to i64
  %sub = sub nsw i32 0, %scaled_ppm
  %2 = zext i32 %sub to i64
  %u64_delta.0 = select i1 %cmp5, i64 %conv, i64 %2
  %shl = shl nsw i64 %u64_delta.0, 19
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %shl) #12, !srcloc !88
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %shl, i64 %3, i32 0) #12, !srcloc !89
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div158.i.i22 = lshr i64 %asmresult10.i.i.i, 18
  %conv9 = trunc i64 %div158.i.i22 to i32
  %or = or i32 %conv9, -2147483648
  %lan743x_rate_adj.0 = select i1 %cmp5, i32 %or, i32 %conv9
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 2592, i32 noundef %lan743x_rate_adj.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ptpci_adjfreq(ptr noundef %ptpci, i32 noundef %delta_ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %delta_ppb, -31250000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62499999, i32 %0)
  %1 = icmp ult i32 %0, -62499999
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %ptpci, i32 -500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta_ppb)
  %cmp5 = icmp sgt i32 %delta_ppb, 0
  %2 = tail call i32 @llvm.abs.i32(i32 %delta_ppb, i1 true)
  %conv = zext i32 %2 to i64
  %shl = shl nuw nsw i64 %conv, 35
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %shl, i32 0) #12, !srcloc !90
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %shl, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !89
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div158.i.i21 = lshr i64 %asmresult10.i.i.i, 29
  %conv8 = trunc i64 %div158.i.i21 to i32
  %or = or i32 %conv8, -2147483648
  %lan743x_rate_adj.0 = select i1 %cmp5, i32 %or, i32 %conv8
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 2592, i32 noundef %lan743x_rate_adj.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ptpci_adjtime(ptr noundef %ptpci, i64 noundef %delta) #0 align 64 {
entry:
  %unsigned_seconds.i = alloca i32, align 4
  %nano_seconds.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %ptpci, i32 -500
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unsigned_seconds.i) #8
  %0 = ptrtoint ptr %unsigned_seconds.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %unsigned_seconds.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nano_seconds.i) #8
  %1 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nano_seconds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 15000000000, i64 %delta)
  %cmp.i = icmp sgt i64 %delta, 15000000000
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call fastcc void @lan743x_ptp_clock_get(ptr noundef %add.ptr3, ptr noundef nonnull %unsigned_seconds.i, ptr noundef nonnull %nano_seconds.i) #8
  %conv14.i.i = trunc i64 %delta to i32
  %2 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %delta, i32 0) #12, !srcloc !90
  %asmresult.i.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %2, 1
  %3 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %delta, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !89
  %asmresult10.i.i.i = extractvalue { i64, i32 } %3, 0
  %div158.i167.i = lshr i64 %asmresult10.i.i.i, 29
  %conv159.i.i = trunc i64 %div158.i167.i to i32
  %mul160.i.neg.i = mul i32 %conv159.i.i, -1000000000
  %4 = ptrtoint ptr %unsigned_seconds.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unsigned_seconds.i, align 4
  %conv2.i = add i32 %5, %conv159.i.i
  store i32 %conv2.i, ptr %unsigned_seconds.i, align 4
  %6 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nano_seconds.i, align 4
  %sub161.i.i = add i32 %7, %conv14.i.i
  %add3.i = add i32 %sub161.i.i, %mul160.i.neg.i
  store i32 %add3.i, ptr %nano_seconds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %add3.i)
  %cmp4.i = icmp ugt i32 %add3.i, 999999999
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i32 %conv2.i, 1
  %8 = ptrtoint ptr %unsigned_seconds.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %unsigned_seconds.i, align 4
  %sub.i = add i32 %add3.i, -1000000000
  %9 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %nano_seconds.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %10 = ptrtoint ptr %unsigned_seconds.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unsigned_seconds.i, align 4
  %12 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nano_seconds.i, align 4
  call fastcc void @lan743x_ptp_clock_set(ptr noundef %add.ptr3, i32 noundef %11, i32 noundef %13) #8
  br label %lan743x_ptp_clock_step.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -15000000000, i64 %delta)
  %cmp7.i = icmp slt i64 %delta, -15000000000
  br i1 %cmp7.i, label %if.then9.i, label %if.end22.i

if.then9.i:                                       ; preds = %if.else.i
  %sub10.i = sub i64 0, %delta
  call fastcc void @lan743x_ptp_clock_get(ptr noundef %add.ptr3, ptr noundef nonnull %unsigned_seconds.i, ptr noundef nonnull %nano_seconds.i) #8
  %conv14.i118.i = trunc i64 %sub10.i to i32
  %14 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub10.i, i32 0) #12, !srcloc !90
  %asmresult.i.i119.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i120.i = extractvalue { i64, i32 } %14, 1
  %15 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub10.i, i64 %asmresult.i.i119.i, i32 %asmresult4.i.i120.i) #12, !srcloc !89
  %asmresult10.i.i121.i = extractvalue { i64, i32 } %15, 0
  %div158.i122166.i = lshr i64 %asmresult10.i.i121.i, 29
  %conv159.i123.i = trunc i64 %div158.i122166.i to i32
  %mul160.i124.neg.i = mul i32 %conv159.i123.i, -1000000000
  %sub161.i125.i = add i32 %mul160.i124.neg.i, %conv14.i118.i
  %16 = ptrtoint ptr %unsigned_seconds.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unsigned_seconds.i, align 4
  %conv14.i = sub i32 %17, %conv159.i123.i
  store i32 %conv14.i, ptr %unsigned_seconds.i, align 4
  %18 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nano_seconds.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub161.i125.i)
  %cmp15.i = icmp ult i32 %19, %sub161.i125.i
  br i1 %cmp15.i, label %if.then17.i, label %if.then9.i.if.end19.i_crit_edge

if.then9.i.if.end19.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %conv14.i, -1
  %20 = ptrtoint ptr %unsigned_seconds.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec.i, ptr %unsigned_seconds.i, align 4
  %add18.i = add i32 %19, 1000000000
  %21 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add18.i, ptr %nano_seconds.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.then9.i.if.end19.i_crit_edge
  %22 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nano_seconds.i, align 4
  %sub20.i = sub i32 %23, %sub161.i125.i
  store i32 %sub20.i, ptr %nano_seconds.i, align 4
  %24 = ptrtoint ptr %unsigned_seconds.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %unsigned_seconds.i, align 4
  call fastcc void @lan743x_ptp_clock_set(ptr noundef %add.ptr3, i32 noundef %25, i32 noundef %sub20.i) #8
  br label %lan743x_ptp_clock_step.exit

if.end22.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %delta)
  %cmp23.i = icmp sgt i64 %delta, -1
  br i1 %cmp23.i, label %if.then25.i, label %if.else28.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv14.i126.i = trunc i64 %delta to i32
  %26 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %delta, i32 0) #12, !srcloc !90
  %asmresult.i.i127.i = extractvalue { i64, i32 } %26, 0
  %asmresult4.i.i128.i = extractvalue { i64, i32 } %26, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %delta, i64 %asmresult.i.i127.i, i32 %asmresult4.i.i128.i) #12, !srcloc !89
  %asmresult10.i.i129.i = extractvalue { i64, i32 } %27, 0
  %div158.i130165.i = lshr i64 %asmresult10.i.i129.i, 29
  %conv159.i131.i = trunc i64 %div158.i130165.i to i32
  %mul160.i132.neg.i = mul i32 %conv159.i131.i, -1000000000
  %sub161.i133.i = add i32 %mul160.i132.neg.i, %conv14.i126.i
  br label %if.end39.i

if.else28.i:                                      ; preds = %if.end22.i
  %sub29.i = sub nsw i64 0, %delta
  %conv14.i134.i = trunc i64 %sub29.i to i32
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub29.i, i32 0) #12, !srcloc !90
  %asmresult.i.i135.i = extractvalue { i64, i32 } %28, 0
  %asmresult4.i.i136.i = extractvalue { i64, i32 } %28, 1
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub29.i, i64 %asmresult.i.i135.i, i32 %asmresult4.i.i136.i) #12, !srcloc !89
  %asmresult10.i.i137.i = extractvalue { i64, i32 } %29, 0
  %div158.i138164.i = lshr i64 %asmresult10.i.i137.i, 29
  %conv159.i139.i = trunc i64 %div158.i138164.i to i32
  %mul160.i140.neg.i = mul i32 %conv159.i139.i, -1000000000
  %sub161.i141.i = add i32 %mul160.i140.neg.i, %conv14.i134.i
  %sub32.i = sub i32 0, %conv159.i139.i
  %30 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub161.i141.i, ptr %nano_seconds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub161.i141.i)
  %cmp33.not.i = icmp eq i32 %sub161.i141.i, 0
  br i1 %cmp33.not.i, label %if.else28.i.if.end50.i_crit_edge, label %if.then35.i

if.else28.i.if.end50.i_crit_edge:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then35.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec36.i = xor i32 %conv159.i139.i, -1
  %sub37.i = sub i32 1000000000, %sub161.i141.i
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %if.then25.i
  %31 = phi i32 [ %sub37.i, %if.then35.i ], [ %sub161.i133.i, %if.then25.i ]
  %seconds.0.i = phi i32 [ %dec36.i, %if.then35.i ], [ %conv159.i131.i, %if.then25.i ]
  %32 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %nano_seconds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp40.not.i = icmp eq i32 %31, 0
  br i1 %cmp40.not.i, label %if.end39.i.if.end50.i_crit_edge, label %if.end44.i

if.end39.i.if.end50.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.end44.i:                                       ; preds = %if.end39.i
  %add43.i = add i32 %31, 8
  %33 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add43.i, ptr %nano_seconds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %add43.i)
  %cmp45.i = icmp ugt i32 %add43.i, 999999999
  br i1 %cmp45.i, label %if.then47.i, label %if.end44.i.if.end50.i_crit_edge

if.end44.i.if.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc48.i = add i32 %seconds.0.i, 1
  %sub49.i = add i32 %31, -999999992
  %34 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub49.i, ptr %nano_seconds.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.end44.i.if.end50.i_crit_edge, %if.end39.i.if.end50.i_crit_edge, %if.else28.i.if.end50.i_crit_edge
  %seconds.1.i = phi i32 [ %inc48.i, %if.then47.i ], [ %seconds.0.i, %if.end44.i.if.end50.i_crit_edge ], [ %sub32.i, %if.else28.i.if.end50.i_crit_edge ], [ %seconds.0.i, %if.end39.i.if.end50.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seconds.1.i)
  %tobool.not168.i = icmp eq i32 %seconds.1.i, 0
  br i1 %tobool.not168.i, label %if.end50.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end50.i.while.end.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end50.i
  %command_lock.i = getelementptr i8, ptr %ptpci, i32 -96
  %msg_enable.i.i = getelementptr i8, ptr %ptpci, i32 -492
  br label %while.body.i

while.body.i:                                     ; preds = %lan743x_ptp_wait_till_cmd_done.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %seconds.2169.i = phi i32 [ %seconds.1.i, %while.body.lr.ph.i ], [ %seconds.3.i, %lan743x_ptp_wait_till_cmd_done.exit.i.while.body.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %command_lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seconds.2169.i)
  %cmp51.i = icmp sgt i32 %seconds.2169.i, 0
  br i1 %cmp51.i, label %if.then53.i, label %if.else59.i

if.then53.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = tail call i32 @llvm.umin.i32(i32 %seconds.2169.i, i32 15) #8
  %or.i = or i32 %35, -2147483648
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 2604, i32 noundef %or.i) #8
  %sub58.i = sub nsw i32 %seconds.2169.i, %35
  br label %if.end67.i

if.else59.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub61.i = sub i32 0, %seconds.2169.i
  %36 = tail call i32 @llvm.umin.i32(i32 %sub61.i, i32 15) #8
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 2604, i32 noundef %36) #8
  %add66.i = add nsw i32 %36, %seconds.2169.i
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else59.i, %if.then53.i
  %seconds.3.i = phi i32 [ %sub58.i, %if.then53.i ], [ %add66.i, %if.else59.i ]
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 2560, i32 noundef 32) #8
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end67.i
  %timeout.014.i.i = phi i32 [ 1000, %if.end67.i ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %call.i.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr3, i32 noundef 2560) #8
  %and.i.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.lan743x_ptp_wait_till_cmd_done.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.lan743x_ptp_wait_till_cmd_done.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_wait_till_cmd_done.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 20000, i32 noundef 2) #8
  %dec.i.i = add nsw i32 %timeout.014.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

do.body.i.i:                                      ; preds = %while.body.i.i
  %37 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable.i.i, align 8
  %and3.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.lan743x_ptp_wait_till_cmd_done.exit.i_crit_edge, label %if.then5.i.i

do.body.i.i.lan743x_ptp_wait_till_cmd_done.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_wait_till_cmd_done.exit.i

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.14, i32 noundef 32) #11
  br label %lan743x_ptp_wait_till_cmd_done.exit.i

lan743x_ptp_wait_till_cmd_done.exit.i:            ; preds = %if.then5.i.i, %do.body.i.i.lan743x_ptp_wait_till_cmd_done.exit.i_crit_edge, %land.rhs.i.i.lan743x_ptp_wait_till_cmd_done.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %command_lock.i) #8
  %tobool.not.i = icmp eq i32 %seconds.3.i, 0
  br i1 %tobool.not.i, label %lan743x_ptp_wait_till_cmd_done.exit.i.while.end.i_crit_edge, label %lan743x_ptp_wait_till_cmd_done.exit.i.while.body.i_crit_edge

lan743x_ptp_wait_till_cmd_done.exit.i.while.body.i_crit_edge: ; preds = %lan743x_ptp_wait_till_cmd_done.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

lan743x_ptp_wait_till_cmd_done.exit.i.while.end.i_crit_edge: ; preds = %lan743x_ptp_wait_till_cmd_done.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %lan743x_ptp_wait_till_cmd_done.exit.i.while.end.i_crit_edge, %if.end50.i.while.end.i_crit_edge
  %41 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nano_seconds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool69.not.i = icmp eq i32 %42, 0
  br i1 %tobool69.not.i, label %while.end.i.lan743x_ptp_clock_step.exit_crit_edge, label %if.then70.i

while.end.i.lan743x_ptp_clock_step.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_clock_step.exit

if.then70.i:                                      ; preds = %while.end.i
  %command_lock71.i = getelementptr i8, ptr %ptpci, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %command_lock71.i, i32 noundef 0) #8
  %43 = ptrtoint ptr %nano_seconds.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nano_seconds.i, align 4
  %and.i = and i32 %44, 1073741823
  %or72.i = or i32 %and.i, -2147483648
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 2604, i32 noundef %or72.i) #8
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 2560, i32 noundef 64) #8
  br label %land.rhs.i146.i

land.rhs.i146.i:                                  ; preds = %while.body.i149.i.land.rhs.i146.i_crit_edge, %if.then70.i
  %timeout.014.i142.i = phi i32 [ 1000, %if.then70.i ], [ %dec.i147.i, %while.body.i149.i.land.rhs.i146.i_crit_edge ]
  %call.i143.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr3, i32 noundef 2560) #8
  %and.i144.i = and i32 %call.i143.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144.i)
  %tobool1.not.i145.i = icmp eq i32 %and.i144.i, 0
  br i1 %tobool1.not.i145.i, label %land.rhs.i146.i.lan743x_ptp_wait_till_cmd_done.exit155.i_crit_edge, label %while.body.i149.i

land.rhs.i146.i.lan743x_ptp_wait_till_cmd_done.exit155.i_crit_edge: ; preds = %land.rhs.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_wait_till_cmd_done.exit155.i

while.body.i149.i:                                ; preds = %land.rhs.i146.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 20000, i32 noundef 2) #8
  %dec.i147.i = add nsw i32 %timeout.014.i142.i, -1
  %tobool.not.i148.i = icmp eq i32 %dec.i147.i, 0
  br i1 %tobool.not.i148.i, label %do.body.i153.i, label %while.body.i149.i.land.rhs.i146.i_crit_edge

while.body.i149.i.land.rhs.i146.i_crit_edge:      ; preds = %while.body.i149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i146.i

do.body.i153.i:                                   ; preds = %while.body.i149.i
  %msg_enable.i150.i = getelementptr i8, ptr %ptpci, i32 -492
  %45 = ptrtoint ptr %msg_enable.i150.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable.i150.i, align 8
  %and3.i151.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i151.i)
  %tobool4.not.i152.i = icmp eq i32 %and3.i151.i, 0
  br i1 %tobool4.not.i152.i, label %do.body.i153.i.lan743x_ptp_wait_till_cmd_done.exit155.i_crit_edge, label %if.then5.i154.i

do.body.i153.i.lan743x_ptp_wait_till_cmd_done.exit155.i_crit_edge: ; preds = %do.body.i153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_wait_till_cmd_done.exit155.i

if.then5.i154.i:                                  ; preds = %do.body.i153.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %48, ptr noundef nonnull @.str.14, i32 noundef 64) #11
  br label %lan743x_ptp_wait_till_cmd_done.exit155.i

lan743x_ptp_wait_till_cmd_done.exit155.i:         ; preds = %if.then5.i154.i, %do.body.i153.i.lan743x_ptp_wait_till_cmd_done.exit155.i_crit_edge, %land.rhs.i146.i.lan743x_ptp_wait_till_cmd_done.exit155.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %command_lock71.i) #8
  br label %lan743x_ptp_clock_step.exit

lan743x_ptp_clock_step.exit:                      ; preds = %lan743x_ptp_wait_till_cmd_done.exit155.i, %while.end.i.lan743x_ptp_clock_step.exit_crit_edge, %if.end19.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nano_seconds.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unsigned_seconds.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ptpci_gettime64(ptr noundef %ptpci, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %nano_seconds = alloca i32, align 4
  %seconds = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %ptpci, i32 -500
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nano_seconds) #8
  %0 = ptrtoint ptr %nano_seconds to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nano_seconds, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seconds) #8
  %1 = ptrtoint ptr %seconds to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %seconds, align 4
  call fastcc void @lan743x_ptp_clock_get(ptr noundef %add.ptr3, ptr noundef nonnull %seconds, ptr noundef nonnull %nano_seconds)
  %2 = ptrtoint ptr %seconds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seconds, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %ts, align 8
  %5 = ptrtoint ptr %nano_seconds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nano_seconds, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tv_nsec, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seconds) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nano_seconds) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ptpci_settime64(ptr noundef %ptpci, ptr noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %ptpci, i32 -500
  %tobool.not = icmp eq ptr %ts, null
  br i1 %tobool.not, label %do.body29, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %1)
  %2 = icmp ugt i64 %1, 4294967295
  br i1 %2, label %do.body, label %if.end10

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr i8, ptr %ptpci, i32 -492
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %if.then8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.15, i64 noundef %1) #11
  br label %cleanup

if.end10:                                         ; preds = %if.then
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %8)
  %9 = icmp ugt i32 %8, 999999999
  br i1 %9, label %do.body16, label %if.end26

do.body16:                                        ; preds = %if.end10
  %msg_enable17 = getelementptr i8, ptr %ptpci, i32 -492
  %10 = ptrtoint ptr %msg_enable17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable17, align 8
  %and18 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body16.cleanup_crit_edge, label %if.then20

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %8) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %1 to i32
  tail call fastcc void @lan743x_ptp_clock_set(ptr noundef %add.ptr3, i32 noundef %conv, i32 noundef %8)
  br label %cleanup

do.body29:                                        ; preds = %entry
  %msg_enable30 = getelementptr i8, ptr %ptpci, i32 -492
  %14 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable30, align 8
  %and31 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body29.cleanup_crit_edge, label %if.then33

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body29.cleanup_crit_edge, %if.end26, %if.then20, %do.body16.cleanup_crit_edge, %if.then8, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -34, %if.then8 ], [ -34, %do.body.cleanup_crit_edge ], [ -34, %if.then20 ], [ -34, %do.body16.cleanup_crit_edge ], [ -22, %if.then33 ], [ -22, %do.body29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ptpci_enable(ptr noundef %ptpci, ptr noundef readonly %request, i32 noundef %on) #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %reminder.i = alloca i32, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %ptpci, i32 -500
  %tobool.not = icmp eq ptr %request, null
  br i1 %tobool.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %request, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %do.body [
    i32 0, label %if.then.cleanup_crit_edge
    i32 1, label %sw.bb4
    i32 2, label %if.then.cleanup_crit_edge32
  ]

if.then.cleanup_crit_edge32:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %if.then
  %index = getelementptr inbounds %struct.ptp_clock_request, ptr %request, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 8
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %ptpci, i32 0, i32 5
  %5 = ptrtoint ptr %n_per_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_per_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %if.then5, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %sw.bb4
  %7 = getelementptr inbounds %struct.ptp_clock_request, ptr %request, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %arrayidx.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr3, i32 0, i32 8, i32 6, i32 %9
  %flags.i = getelementptr inbounds %struct.ptp_clock_request, ptr %request, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool4.not.i = icmp eq i32 %on, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %ptp_clock.i = getelementptr i8, ptr %ptpci, i32 -4
  %12 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptp_clock.i, align 4
  %call.i = tail call i32 @ptp_find_pin(ptr noundef %13, i32 noundef 2, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then5.i.cleanup_crit_edge, label %if.end9.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lan743x_ptp_perout_off(ptr noundef %add.ptr3, i32 noundef %9) #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.then5.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp10.i = icmp sgt i32 %15, -1
  br i1 %cmp10.i, label %if.end9.i.if.then12.i_crit_edge, label %lor.lhs.false.i

if.end9.i.if.then12.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %gpio_pin.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr3, i32 0, i32 8, i32 6, i32 %9, i32 1
  %16 = ptrtoint ptr %gpio_pin.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_pin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp11.i = icmp sgt i32 %17, -1
  br i1 %cmp11.i, label %lor.lhs.false.i.if.then12.i_crit_edge, label %lor.lhs.false.i.if.end13.i_crit_edge

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %if.end9.i.if.then12.i_crit_edge
  tail call fastcc void @lan743x_ptp_perout_off(ptr noundef %add.ptr3, i32 noundef %9) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %lor.lhs.false.i.if.end13.i_crit_edge
  %command_lock.i.i = getelementptr i8, ptr %ptpci, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %command_lock.i.i, i32 noundef 0) #8
  %used_event_ch.i.i = getelementptr i8, ptr %ptpci, i32 1260
  %div3.i.i.i = lshr i32 %9, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %used_event_ch.i.i, i32 %div3.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %9, 31
  %20 = shl nuw i32 1, %and.i.i.i
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %lan743x_ptp_reserve_event_ch.exit.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end13.i
  %msg_enable.i.i = getelementptr i8, ptr %ptpci, i32 -492
  %22 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i.lan743x_ptp_reserve_event_ch.exit.thread.i_crit_edge, label %if.then4.i.i

do.body.i.i.lan743x_ptp_reserve_event_ch.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_reserve_event_ch.exit.thread.i

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.26, i32 noundef %9) #11
  br label %lan743x_ptp_reserve_event_ch.exit.thread.i

lan743x_ptp_reserve_event_ch.exit.thread.i:       ; preds = %if.then4.i.i, %do.body.i.i.lan743x_ptp_reserve_event_ch.exit.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %command_lock.i.i) #8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -19, ptr %arrayidx.i, align 4
  br label %do.body.i

lan743x_ptp_reserve_event_ch.exit.i:              ; preds = %if.end13.i
  %shl.i.i = shl nuw i32 1, %9
  %27 = ptrtoint ptr %used_event_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %used_event_ch.i.i, align 4
  %or.i.i = or i32 %28, %shl.i.i
  store i32 %or.i.i, ptr %used_event_ch.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %command_lock.i.i) #8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %9, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17.i = icmp slt i32 %9, 0
  br i1 %cmp17.i, label %lan743x_ptp_reserve_event_ch.exit.i.do.body.i_crit_edge, label %if.end23.i

lan743x_ptp_reserve_event_ch.exit.i.do.body.i_crit_edge: ; preds = %lan743x_ptp_reserve_event_ch.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %lan743x_ptp_reserve_event_ch.exit.i.do.body.i_crit_edge, %lan743x_ptp_reserve_event_ch.exit.thread.i
  %msg_enable.i = getelementptr i8, ptr %ptpci, i32 -492
  %30 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable.i, align 8
  %and19.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.body.i.failed.i_crit_edge, label %if.then21.i

do.body.i.failed.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.i

if.then21.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.20, i32 noundef %9) #11
  br label %failed.i

if.end23.i:                                       ; preds = %lan743x_ptp_reserve_event_ch.exit.i
  %gpio1.i.i = getelementptr i8, ptr %ptpci, i32 -172
  %shl.i319.i = shl nuw i32 1, %call.i
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio1.i.i) #8
  %used_bits.i.i = getelementptr i8, ptr %ptpci, i32 -128
  %34 = ptrtoint ptr %used_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %used_bits.i.i, align 4
  %and.i320.i = and i32 %35, %shl.i319.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i320.i)
  %tobool.not.i321.i = icmp eq i32 %and.i320.i, 0
  br i1 %tobool.not.i321.i, label %if.then.i323.i, label %if.end23.i.lan743x_gpio_rsrv_ptp_out.exit.i_crit_edge

if.end23.i.lan743x_gpio_rsrv_ptp_out.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_gpio_rsrv_ptp_out.exit.i

if.then.i323.i:                                   ; preds = %if.end23.i
  %or.i322.i = or i32 %35, %shl.i319.i
  %36 = ptrtoint ptr %used_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i322.i, ptr %used_bits.i.i, align 4
  %output_bits.i.i = getelementptr i8, ptr %ptpci, i32 -124
  %37 = ptrtoint ptr %output_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %output_bits.i.i, align 4
  %or7.i.i = or i32 %38, %shl.i319.i
  store i32 %or7.i.i, ptr %output_bits.i.i, align 4
  %ptp_bits.i.i = getelementptr i8, ptr %ptpci, i32 -120
  %39 = ptrtoint ptr %ptp_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ptp_bits.i.i, align 4
  %or8.i.i = or i32 %40, %shl.i319.i
  store i32 %or8.i.i, ptr %ptp_bits.i.i, align 4
  %leds_multiplexed.i.i.i = getelementptr i8, ptr %ptpci, i32 1280
  %41 = ptrtoint ptr %leds_multiplexed.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %leds_multiplexed.i.i.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i.i, label %if.then.i323.i.lan743x_led_mux_enable.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i323.i.lan743x_led_mux_enable.exit.i.i_crit_edge: ; preds = %if.then.i323.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_enable.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i323.i
  %arrayidx.i.i324.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr3, i32 0, i32 8, i32 8, i32 %call.i
  %43 = ptrtoint ptr %arrayidx.i.i324.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i.i324.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool2.not.i.i.i = icmp eq i8 %44, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.lan743x_led_mux_enable.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.lan743x_led_mux_enable.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_enable.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr3, i32 noundef 16) #8
  %shl.i.i.i = shl i32 1048576, %call.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and.i.i325.i = and i32 %call.i.i.i, %neg.i.i.i
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 16, i32 noundef %and.i.i325.i) #8
  br label %lan743x_led_mux_enable.exit.i.i

lan743x_led_mux_enable.exit.i.i:                  ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.lan743x_led_mux_enable.exit.i.i_crit_edge, %if.then.i323.i.lan743x_led_mux_enable.exit.i.i_crit_edge
  %shl9.i.i = shl i32 65536, %call.i
  %gpio_cfg0.i.i = getelementptr i8, ptr %ptpci, i32 -116
  %45 = ptrtoint ptr %gpio_cfg0.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gpio_cfg0.i.i, align 4
  %or10.i.i = or i32 %46, %shl9.i.i
  %neg.i.i = xor i32 %shl.i319.i, -1
  %and14.i.i = and i32 %or10.i.i, %neg.i.i
  store i32 %and14.i.i, ptr %gpio_cfg0.i.i, align 4
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 80, i32 noundef %and14.i.i) #8
  %neg18.i.i = xor i32 %shl9.i.i, -1
  %gpio_cfg1.i.i = getelementptr i8, ptr %ptpci, i32 -112
  %47 = ptrtoint ptr %gpio_cfg1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gpio_cfg1.i.i, align 4
  %and19.i.i = and i32 %48, %neg18.i.i
  %or23.i.i = or i32 %and19.i.i, %shl.i319.i
  store i32 %or23.i.i, ptr %gpio_cfg1.i.i, align 4
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 84, i32 noundef %or23.i.i) #8
  %gpio_cfg2.i.i = getelementptr i8, ptr %ptpci, i32 -108
  %49 = ptrtoint ptr %gpio_cfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gpio_cfg2.i.i, align 4
  %or27.i.i = or i32 %50, %shl.i319.i
  store i32 %or27.i.i, ptr %gpio_cfg2.i.i, align 4
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 88, i32 noundef %or27.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp29.i.i = icmp eq i32 %9, 0
  %gpio_cfg3.i.i = getelementptr i8, ptr %ptpci, i32 -104
  %51 = ptrtoint ptr %gpio_cfg3.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gpio_cfg3.i.i, align 4
  %or39.i.i = or i32 %52, %shl9.i.i
  %and35.i.i = and i32 %52, %neg18.i.i
  %or39.sink.i.i = select i1 %cmp29.i.i, i32 %and35.i.i, i32 %or39.i.i
  %or43.i.i = or i32 %or39.sink.i.i, %shl.i319.i
  store i32 %or43.i.i, ptr %gpio_cfg3.i.i, align 4
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 92, i32 noundef %or43.i.i) #8
  br label %lan743x_gpio_rsrv_ptp_out.exit.i

lan743x_gpio_rsrv_ptp_out.exit.i:                 ; preds = %lan743x_led_mux_enable.exit.i.i, %if.end23.i.lan743x_gpio_rsrv_ptp_out.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ -16, %if.end23.i.lan743x_gpio_rsrv_ptp_out.exit.i_crit_edge ], [ %call.i, %lan743x_led_mux_enable.exit.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio1.i.i, i32 noundef %call3.i.i) #8
  %gpio_pin26.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr3, i32 0, i32 8, i32 6, i32 %9, i32 1
  %53 = ptrtoint ptr %gpio_pin26.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %ret.0.i.i, ptr %gpio_pin26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp28.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp28.i, label %do.body30.i, label %if.end39.i

do.body30.i:                                      ; preds = %lan743x_gpio_rsrv_ptp_out.exit.i
  %msg_enable31.i = getelementptr i8, ptr %ptpci, i32 -492
  %54 = ptrtoint ptr %msg_enable31.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_enable31.i, align 8
  %and32.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %do.body30.i.failed.i_crit_edge, label %if.then34.i

do.body30.i.failed.i_crit_edge:                   ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.i

if.then34.i:                                      ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  br label %failed.i

if.end39.i:                                       ; preds = %lan743x_gpio_rsrv_ptp_out.exit.i
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %7, align 8
  %conv.i = trunc i64 %59 to i32
  %nsec.i = getelementptr inbounds %struct.ptp_clock_request, ptr %request, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nsec.i, align 8
  %.frozen = freeze i32 %61
  %div.i = udiv i32 %.frozen, 1000000000
  %add.i = add i32 %div.i, %conv.i
  %62 = mul i32 %div.i, 1000000000
  %rem.i.decomposed = sub i32 %.frozen, %62
  %period.i = getelementptr inbounds %struct.ptp_clock_request, ptr %request, i32 0, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %period.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %period.i, align 8
  %conv42.i = trunc i64 %64 to i32
  %nsec44.i = getelementptr inbounds %struct.ptp_clock_request, ptr %request, i32 0, i32 1, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %nsec44.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nsec44.i, align 8
  %.frozen31 = freeze i32 %66
  %div45.i = udiv i32 %.frozen31, 1000000000
  %add46.i = add i32 %div45.i, %conv42.i
  %67 = mul i32 %div45.i, 1000000000
  %rem49.i.decomposed = sub i32 %.frozen31, %67
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i, align 4
  %and51.i = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.else146.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.end39.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reminder.i) #8
  %70 = ptrtoint ptr %reminder.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %reminder.i, align 4, !annotation !92
  %71 = getelementptr inbounds %struct.ptp_clock_request, ptr %request, i32 0, i32 1, i32 0, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %71, align 8
  %nsec55.i = getelementptr inbounds %struct.ptp_clock_request, ptr %request, i32 0, i32 1, i32 0, i32 4, i32 0, i32 1
  %74 = ptrtoint ptr %nsec55.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nsec55.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %73)
  %cmp.i.i = icmp sgt i64 %73, 9223372035
  br i1 %cmp.i.i, label %if.then53.i.timespec64_to_ns.exit.i_crit_edge, label %if.end.i.i

if.then53.i.timespec64_to_ns.exit.i_crit_edge:    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit.i

if.end.i.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %73)
  %cmp2.i.i = icmp slt i64 %73, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.timespec64_to_ns.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.timespec64_to_ns.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i = mul nsw i64 %73, 1000000000
  %conv.i.i = sext i32 %75 to i64
  %add.i326.i = add i64 %mul.i.i, %conv.i.i
  br label %timespec64_to_ns.exit.i

timespec64_to_ns.exit.i:                          ; preds = %if.end4.i.i, %if.end.i.i.timespec64_to_ns.exit.i_crit_edge, %if.then53.i.timespec64_to_ns.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ %add.i326.i, %if.end4.i.i ], [ 9223372036854775807, %if.then53.i.timespec64_to_ns.exit.i_crit_edge ], [ -9223372036854775808, %if.end.i.i.timespec64_to_ns.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %64)
  %cmp.i327.i = icmp sgt i64 %64, 9223372035
  br i1 %cmp.i327.i, label %timespec64_to_ns.exit.i.if.end76.i_crit_edge, label %if.end.i329.i

timespec64_to_ns.exit.i.if.end76.i_crit_edge:     ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

if.end.i329.i:                                    ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %64)
  %cmp2.i328.i = icmp slt i64 %64, -9223372035
  br i1 %cmp2.i328.i, label %if.end.i329.i.do.body67.i_crit_edge, label %timespec64_to_ns.exit336.i

if.end.i329.i.do.body67.i_crit_edge:              ; preds = %if.end.i329.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67.i

timespec64_to_ns.exit336.i:                       ; preds = %if.end.i329.i
  %mul.i330.i = mul nsw i64 %64, 1000000000
  %conv.i332.i = sext i32 %66 to i64
  %add.i333.i = add i64 %mul.i330.i, %conv.i332.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 200, i64 %add.i333.i)
  %cmp64.i = icmp slt i64 %add.i333.i, 200
  br i1 %cmp64.i, label %timespec64_to_ns.exit336.i.do.body67.i_crit_edge, label %timespec64_to_ns.exit336.i.if.end76.i_crit_edge

timespec64_to_ns.exit336.i.if.end76.i_crit_edge:  ; preds = %timespec64_to_ns.exit336.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

timespec64_to_ns.exit336.i.do.body67.i_crit_edge: ; preds = %timespec64_to_ns.exit336.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67.i

do.body67.i:                                      ; preds = %timespec64_to_ns.exit336.i.do.body67.i_crit_edge, %if.end.i329.i.do.body67.i_crit_edge
  %msg_enable68.i = getelementptr i8, ptr %ptpci, i32 -492
  %76 = ptrtoint ptr %msg_enable68.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msg_enable68.i, align 8
  %and69.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %do.body67.i.cleanup.i_crit_edge, label %if.then71.i

do.body67.i.cleanup.i_crit_edge:                  ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then71.i:                                      ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %79, ptr noundef nonnull @.str.22) #11
  br label %cleanup.i

if.end76.i:                                       ; preds = %timespec64_to_ns.exit336.i.if.end76.i_crit_edge, %timespec64_to_ns.exit.i.if.end76.i_crit_edge
  %retval.0.i335349.i = phi i64 [ %add.i333.i, %timespec64_to_ns.exit336.i.if.end76.i_crit_edge ], [ 9223372036854775807, %timespec64_to_ns.exit.i.if.end76.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i, i64 %retval.0.i335349.i)
  %cmp77.not.i = icmp slt i64 %retval.0.i.i, %retval.0.i335349.i
  br i1 %cmp77.not.i, label %if.end89.i, label %do.body80.i

do.body80.i:                                      ; preds = %if.end76.i
  %msg_enable81.i = getelementptr i8, ptr %ptpci, i32 -492
  %80 = ptrtoint ptr %msg_enable81.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_enable81.i, align 8
  %and82.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %do.body80.i.cleanup.i_crit_edge, label %if.then84.i

do.body80.i.cleanup.i_crit_edge:                  ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then84.i:                                      ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %83, ptr noundef nonnull @.str.23) #11
  br label %cleanup.i

if.end89.i:                                       ; preds = %if.end76.i
  %call90.i = call i64 @div_s64_rem(i64 noundef %retval.0.i335349.i, i32 noundef 2, ptr noundef nonnull %reminder.i) #8
  %84 = ptrtoint ptr %reminder.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reminder.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool91.not.i = icmp eq i32 %85, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call90.i, i64 %retval.0.i.i)
  %cmp93.i = icmp eq i64 %call90.i, %retval.0.i.i
  %or.cond.i = select i1 %tobool91.not.i, i1 %cmp93.i, i1 false
  br i1 %or.cond.i, label %if.then95.i, label %if.end101.i

if.then95.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #8
  %86 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !92
  %call.i.i = call i64 @div_s64_rem(i64 noundef %retval.0.i335349.i, i32 noundef 2, ptr noundef nonnull %remainder.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %call.i.i) #8
  %87 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %ts_period.sroa.0.0.copyload338.i = load i64, ptr %tmp.i, align 8
  %ts_period.sroa.7.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %88 = ptrtoint ptr %ts_period.sroa.7.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %ts_period.sroa.7.0.copyload339.i = load i32, ptr %ts_period.sroa.7.0.tmp.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #8
  %conv98.i = trunc i64 %ts_period.sroa.0.0.copyload338.i to i32
  br label %cleanup.thread.i

if.end101.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_switch(i64 %retval.0.i.i, ptr @__sancov_gen_cov_switch_values.40)
  switch i64 %retval.0.i.i, label %do.body126.i [
    i64 200000000, label %if.end101.i.cleanup.thread.i_crit_edge
    i64 10000000, label %if.then108.i
    i64 1000000, label %if.then112.i
    i64 100000, label %if.then116.i
    i64 10000, label %if.then120.i
    i64 100, label %if.then124.i
  ]

if.end101.i.cleanup.thread.i_crit_edge:           ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then108.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then112.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then116.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then120.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then124.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

do.body126.i:                                     ; preds = %if.end101.i
  %msg_enable127.i = getelementptr i8, ptr %ptpci, i32 -492
  %89 = ptrtoint ptr %msg_enable127.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_enable127.i, align 8
  %and128.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128.i)
  %tobool129.not.i = icmp eq i32 %and128.i, 0
  br i1 %tobool129.not.i, label %do.body126.i.cleanup.i_crit_edge, label %if.then130.i

do.body126.i.cleanup.i_crit_edge:                 ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then130.i:                                     ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr3, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %92, ptr noundef nonnull @.str.24) #11
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then124.i, %if.then120.i, %if.then116.i, %if.then112.i, %if.then108.i, %if.end101.i.cleanup.thread.i_crit_edge, %if.then95.i
  %period_sec.0.ph.i = phi i32 [ %add46.i, %if.then112.i ], [ %add46.i, %if.then120.i ], [ %add46.i, %if.then124.i ], [ %add46.i, %if.then116.i ], [ %add46.i, %if.then108.i ], [ %add46.i, %if.end101.i.cleanup.thread.i_crit_edge ], [ %conv98.i, %if.then95.i ]
  %period_nsec.0.ph.i = phi i32 [ %rem49.i.decomposed, %if.then112.i ], [ %rem49.i.decomposed, %if.then120.i ], [ %rem49.i.decomposed, %if.then124.i ], [ %rem49.i.decomposed, %if.then116.i ], [ %rem49.i.decomposed, %if.then108.i ], [ %rem49.i.decomposed, %if.end101.i.cleanup.thread.i_crit_edge ], [ %ts_period.sroa.7.0.copyload339.i, %if.then95.i ]
  %pulse_width.1.ph.i = phi i32 [ 3, %if.then112.i ], [ 1, %if.then120.i ], [ 0, %if.then124.i ], [ 2, %if.then116.i ], [ 4, %if.then108.i ], [ 5, %if.end101.i.cleanup.thread.i_crit_edge ], [ 6, %if.then95.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reminder.i) #8
  br label %program.i

cleanup.i:                                        ; preds = %if.then130.i, %do.body126.i.cleanup.i_crit_edge, %if.then84.i, %do.body80.i.cleanup.i_crit_edge, %if.then71.i, %do.body67.i.cleanup.i_crit_edge
  %ret.0.i = phi i32 [ -95, %if.then71.i ], [ -95, %do.body67.i.cleanup.i_crit_edge ], [ -22, %if.then84.i ], [ -22, %do.body80.i.cleanup.i_crit_edge ], [ -95, %if.then130.i ], [ -95, %do.body126.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reminder.i) #8
  br label %failed.i

if.else146.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add46.i)
  %cmp147.i = icmp eq i32 %add46.i, 0
  br i1 %cmp147.i, label %if.then149.i, label %if.else146.i.program.i_crit_edge

if.else146.i.program.i_crit_edge:                 ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %program.i

if.then149.i:                                     ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999999, i32 %rem49.i.decomposed)
  %cmp150.i = icmp ugt i32 %rem49.i.decomposed, 399999999
  br i1 %cmp150.i, label %if.then149.i.program.i_crit_edge, label %if.else153.i

if.then149.i.program.i_crit_edge:                 ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %program.i

if.else153.i:                                     ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999999, i32 %rem49.i.decomposed)
  %cmp154.i = icmp ugt i32 %rem49.i.decomposed, 19999999
  br i1 %cmp154.i, label %if.else153.i.program.i_crit_edge, label %if.else157.i

if.else153.i.program.i_crit_edge:                 ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %program.i

if.else157.i:                                     ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999999, i32 %rem49.i.decomposed)
  %cmp158.i = icmp ugt i32 %rem49.i.decomposed, 1999999
  br i1 %cmp158.i, label %if.else157.i.program.i_crit_edge, label %if.else161.i

if.else157.i.program.i_crit_edge:                 ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %program.i

if.else161.i:                                     ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 199999, i32 %rem49.i.decomposed)
  %cmp162.i = icmp ugt i32 %rem49.i.decomposed, 199999
  br i1 %cmp162.i, label %if.else161.i.program.i_crit_edge, label %if.else165.i

if.else161.i.program.i_crit_edge:                 ; preds = %if.else161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %program.i

if.else165.i:                                     ; preds = %if.else161.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %rem49.i.decomposed)
  %cmp166.i = icmp ugt i32 %rem49.i.decomposed, 19999
  br i1 %cmp166.i, label %if.else165.i.program.i_crit_edge, label %if.else169.i

if.else165.i.program.i_crit_edge:                 ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %program.i

if.else169.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %rem49.i.decomposed)
  %cmp170.i = icmp ugt i32 %rem49.i.decomposed, 199
  br i1 %cmp170.i, label %if.else169.i.program.i_crit_edge, label %do.body174.i

if.else169.i.program.i_crit_edge:                 ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %program.i

do.body174.i:                                     ; preds = %if.else169.i
  %msg_enable175.i = getelementptr i8, ptr %ptpci, i32 -492
  %93 = ptrtoint ptr %msg_enable175.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %msg_enable175.i, align 8
  %and176.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i)
  %tobool177.not.i = icmp eq i32 %and176.i, 0
  br i1 %tobool177.not.i, label %do.body174.i.failed.i_crit_edge, label %if.then178.i

do.body174.i.failed.i_crit_edge:                  ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.i

if.then178.i:                                     ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %96, ptr noundef nonnull @.str.22) #11
  br label %failed.i

program.i:                                        ; preds = %if.else169.i.program.i_crit_edge, %if.else165.i.program.i_crit_edge, %if.else161.i.program.i_crit_edge, %if.else157.i.program.i_crit_edge, %if.else153.i.program.i_crit_edge, %if.then149.i.program.i_crit_edge, %if.else146.i.program.i_crit_edge, %cleanup.thread.i
  %period_sec.1.i = phi i32 [ 0, %if.then149.i.program.i_crit_edge ], [ 0, %if.else153.i.program.i_crit_edge ], [ 0, %if.else157.i.program.i_crit_edge ], [ 0, %if.else161.i.program.i_crit_edge ], [ 0, %if.else165.i.program.i_crit_edge ], [ 0, %if.else169.i.program.i_crit_edge ], [ %add46.i, %if.else146.i.program.i_crit_edge ], [ %period_sec.0.ph.i, %cleanup.thread.i ]
  %period_nsec.1.i = phi i32 [ %rem49.i.decomposed, %if.then149.i.program.i_crit_edge ], [ %rem49.i.decomposed, %if.else153.i.program.i_crit_edge ], [ %rem49.i.decomposed, %if.else157.i.program.i_crit_edge ], [ %rem49.i.decomposed, %if.else161.i.program.i_crit_edge ], [ %rem49.i.decomposed, %if.else165.i.program.i_crit_edge ], [ %rem49.i.decomposed, %if.else169.i.program.i_crit_edge ], [ %rem49.i.decomposed, %if.else146.i.program.i_crit_edge ], [ %period_nsec.0.ph.i, %cleanup.thread.i ]
  %pulse_width.2.i = phi i32 [ 5, %if.then149.i.program.i_crit_edge ], [ 4, %if.else153.i.program.i_crit_edge ], [ 3, %if.else157.i.program.i_crit_edge ], [ 2, %if.else161.i.program.i_crit_edge ], [ 1, %if.else165.i.program.i_crit_edge ], [ 0, %if.else169.i.program.i_crit_edge ], [ 5, %if.else146.i.program.i_crit_edge ], [ %pulse_width.1.ph.i, %cleanup.thread.i ]
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %98, 4
  %add193.i = add i32 %shl.i, 2608
  call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef %add193.i, i32 noundef -65536) #8
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i, align 4
  %shl195.i = shl i32 %100, 4
  %add196.i = add i32 %shl195.i, 2612
  call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef %add196.i, i32 noundef 0) #8
  %call197.i = call i32 @lan743x_csr_read(ptr noundef %add.ptr3, i32 noundef 2564) #8
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i, align 4
  %shl199.i = shl i32 %102, 2
  %add200.i = or i32 %shl199.i, 1
  %shl201.i = shl i32 7, %add200.i
  %neg.i = xor i32 %shl201.i, -1
  %and202.i = and i32 %call197.i, %neg.i
  %shl207.i = shl i32 %pulse_width.2.i, %add200.i
  %or.i = or i32 %and202.i, %shl207.i
  %shl210.i = shl nuw i32 1, %shl199.i
  %neg211.i = xor i32 %shl210.i, -1
  %and212.i = and i32 %or.i, %neg211.i
  call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 2564, i32 noundef %and212.i) #8
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i, align 4
  %shl214.i = shl i32 %104, 4
  %add215.i = add i32 %shl214.i, 2616
  call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef %add215.i, i32 noundef %period_sec.1.i) #8
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i, align 4
  %shl217.i = shl i32 %106, 4
  %add218.i = add i32 %shl217.i, 2620
  call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef %add218.i, i32 noundef %period_nsec.1.i) #8
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i, align 4
  %shl220.i = shl i32 %108, 4
  %add221.i = add i32 %shl220.i, 2608
  call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef %add221.i, i32 noundef %add.i) #8
  %109 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i, align 4
  %shl223.i = shl i32 %110, 4
  %add224.i = add i32 %shl223.i, 2612
  call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef %add224.i, i32 noundef %rem.i.decomposed) #8
  br label %cleanup

failed.i:                                         ; preds = %if.then178.i, %do.body174.i.failed.i_crit_edge, %cleanup.i, %if.then34.i, %do.body30.i.failed.i_crit_edge, %if.then21.i, %do.body.i.failed.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %cleanup.i ], [ -16, %if.then21.i ], [ -16, %do.body.i.failed.i_crit_edge ], [ -16, %if.then34.i ], [ -16, %do.body30.i.failed.i_crit_edge ], [ -95, %if.then178.i ], [ -95, %do.body174.i.failed.i_crit_edge ]
  call fastcc void @lan743x_ptp_perout_off(ptr noundef %add.ptr3, i32 noundef %9) #8
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr i8, ptr %ptpci, i32 -492
  %111 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %msg_enable, align 8
  %and = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %if.then8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %114, ptr noundef nonnull @.str.18, i32 noundef %1) #11
  br label %cleanup

do.body11:                                        ; preds = %entry
  %msg_enable12 = getelementptr i8, ptr %ptpci, i32 -492
  %115 = ptrtoint ptr %msg_enable12 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %msg_enable12, align 8
  %and13 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body11.cleanup_crit_edge, label %if.then15

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %118, ptr noundef nonnull @.str.19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body11.cleanup_crit_edge, %if.then8, %do.body.cleanup_crit_edge, %failed.i, %program.i, %if.else.i, %if.then5.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge32
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge32 ], [ 0, %do.body11.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.then8 ], [ 0, %do.body.cleanup_crit_edge ], [ %ret.1.i, %failed.i ], [ 0, %program.i ], [ 0, %if.else.i ], [ -95, %if.then5.cleanup_crit_edge ], [ -16, %if.then5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ptpci_do_aux_work(ptr noundef %ptpci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %ptpci, i32 -500
  %msg_enable = getelementptr i8, ptr %ptpci, i32 -492
  %tx_ts_lock.i = getelementptr i8, ptr %ptpci, i32 1288
  %tx_ts_queue_size.i = getelementptr i8, ptr %ptpci, i32 1408
  br label %land.rhs

land.rhs:                                         ; preds = %if.end41.land.rhs_crit_edge, %entry
  %count.070 = phi i32 [ 0, %entry ], [ %inc, %if.end41.land.rhs_crit_edge ]
  %new_timestamp_available.0.off069 = phi i1 [ false, %entry ], [ %new_timestamp_available.1.off0, %if.end41.land.rhs_crit_edge ]
  %call = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr3, i32 noundef 2568) #8
  %and = and i32 %call, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %count.070, 1
  %call4 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr3, i32 noundef 2656) #8
  %0 = and i32 %call4, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp6.not = icmp eq i32 %0, 0
  br i1 %cmp6.not, label %do.body32, label %if.then

if.then:                                          ; preds = %while.body
  %call7 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr3, i32 noundef 2732) #8
  %call8 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr3, i32 noundef 2736) #8
  %and9 = and i32 %call8, -1073741824
  %call10 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr3, i32 noundef 2740) #8
  %1 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %and9, label %do.body20 [
    i32 1073741824, label %if.then12
    i32 0, label %do.body
  ]

if.then12:                                        ; preds = %if.then
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ts_lock.i) #8
  %2 = ptrtoint ptr %tx_ts_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ts_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp slt i32 %3, 4
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %and13 = and i32 %call8, 1073741823
  %arrayidx.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr3, i32 0, i32 8, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call7, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %tx_ts_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_ts_queue_size.i, align 4
  %arrayidx4.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr3, i32 0, i32 8, i32 15, i32 %6
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and13, ptr %arrayidx4.i, align 4
  %8 = load i32, ptr %tx_ts_queue_size.i, align 4
  %arrayidx6.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr3, i32 0, i32 8, i32 16, i32 %8
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call10, ptr %arrayidx6.i, align 4
  %10 = load i32, ptr %tx_ts_queue_size.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %tx_ts_queue_size.i, align 4
  br label %lan743x_ptp_tx_ts_enqueue_ts.exit

do.body.i:                                        ; preds = %if.then12
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.lan743x_ptp_tx_ts_enqueue_ts.exit_crit_edge, label %if.then8.i

do.body.i.lan743x_ptp_tx_ts_enqueue_ts.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_tx_ts_enqueue_ts.exit

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.30) #11
  br label %lan743x_ptp_tx_ts_enqueue_ts.exit

lan743x_ptp_tx_ts_enqueue_ts.exit:                ; preds = %if.then8.i, %do.body.i.lan743x_ptp_tx_ts_enqueue_ts.exit_crit_edge, %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ts_lock.i) #8
  br label %if.end41

do.body:                                          ; preds = %if.then
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 8
  %and16 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.if.end41_crit_edge, label %if.then18

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.27) #11
  br label %if.end41

do.body20:                                        ; preds = %if.then
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 8
  %and22 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body20.if.end41_crit_edge, label %if.then24

do.body20.if.end41_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.28) #11
  br label %if.end41

do.body32:                                        ; preds = %while.body
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 8
  %and34 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body32.if.end41_crit_edge, label %if.then36

do.body32.if.end41_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.29) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %do.body32.if.end41_crit_edge, %if.then24, %do.body20.if.end41_crit_edge, %if.then18, %do.body.if.end41_crit_edge, %lan743x_ptp_tx_ts_enqueue_ts.exit
  %new_timestamp_available.1.off0 = phi i1 [ true, %lan743x_ptp_tx_ts_enqueue_ts.exit ], [ %new_timestamp_available.0.off069, %if.then18 ], [ %new_timestamp_available.0.off069, %do.body.if.end41_crit_edge ], [ %new_timestamp_available.0.off069, %if.then24 ], [ %new_timestamp_available.0.off069, %do.body20.if.end41_crit_edge ], [ %new_timestamp_available.0.off069, %if.then36 ], [ %new_timestamp_available.0.off069, %do.body32.if.end41_crit_edge ]
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 2568, i32 noundef 4096) #8
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end41.while.end_crit_edge, label %if.end41.land.rhs_crit_edge

if.end41.land.rhs_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end41.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %new_timestamp_available.0.off0.lcssa = phi i1 [ %new_timestamp_available.1.off0, %if.end41.while.end_crit_edge ], [ %new_timestamp_available.0.off069, %land.rhs.while.end_crit_edge ]
  br i1 %new_timestamp_available.0.off0.lcssa, label %if.then43, label %while.end.if.end44_crit_edge

while.end.if.end44_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then43:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lan743x_ptp_tx_ts_complete(ptr noundef %add.ptr3)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %while.end.if.end44_crit_edge
  tail call void @lan743x_csr_write(ptr noundef %add.ptr3, i32 noundef 1928, i32 noundef 128) #8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan743x_ptpci_verify_pin_config(ptr nocapture noundef readnone %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.and = and i32 %func, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  %0 = sext i1 %switch.selectcmp to i32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan743x_ptp_close(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8
  %0 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptp1, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %ptp_clock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock, align 4
  %call = tail call i32 @ptp_clock_unregister(ptr noundef %3) #8
  %4 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ptp_clock, align 4
  %5 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptp1, align 4
  %and4 = and i32 %6, -3
  store i32 %and4, ptr %ptp1, align 4
  %msg_enable = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and5 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then7

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %10, ptr noundef nonnull @.str.10) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %11 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptp1, align 4
  %and10 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2576, i32 noundef 12288) #8
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 1932, i32 noundef 128) #8
  %13 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptp1, align 4
  %and14 = and i32 %14, -5
  store i32 %and14, ptr %ptp1, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  tail call fastcc void @lan743x_ptp_tx_ts_complete(ptr noundef %adapter)
  %tx_ts_lock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ts_lock) #8
  %arrayidx = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 11, i32 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void @consume_skb(ptr noundef %16) #8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx18 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 14, i32 0
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 15, i32 0
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx19, align 4
  %arrayidx.1 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  tail call void @consume_skb(ptr noundef %21) #8
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx18.1 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 14, i32 1
  %23 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx18.1, align 4
  %arrayidx19.1 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 15, i32 1
  %24 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx19.1, align 4
  %arrayidx.2 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 11, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.2, align 4
  tail call void @consume_skb(ptr noundef %26) #8
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx18.2 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 14, i32 2
  %28 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx18.2, align 4
  %arrayidx19.2 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 15, i32 2
  %29 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx19.2, align 4
  %arrayidx.3 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 11, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.3, align 4
  tail call void @consume_skb(ptr noundef %31) #8
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx18.3 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 14, i32 3
  %33 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx18.3, align 4
  %arrayidx19.3 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 15, i32 3
  %34 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx19.3, align 4
  %tx_ts_skb_queue_size = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 13
  %35 = ptrtoint ptr %tx_ts_skb_queue_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %tx_ts_skb_queue_size, align 4
  %tx_ts_queue_size = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 17
  %36 = ptrtoint ptr %tx_ts_queue_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tx_ts_queue_size, align 4
  %pending_tx_timestamps = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 10
  %37 = ptrtoint ptr %pending_tx_timestamps to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pending_tx_timestamps, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ts_lock) #8
  %id_rev1.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %id_rev1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id_rev1.i, align 4
  %and.i = and i32 %39, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1949302784, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1949302784
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.end15.lan743x_led_mux_restore.exit_crit_edge

if.end15.lan743x_led_mux_restore.exit_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_restore.exit

for.cond.preheader.i:                             ; preds = %if.end15
  %leds_multiplexed.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 7
  %40 = ptrtoint ptr %leds_multiplexed.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %leds_multiplexed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.lan743x_led_mux_restore.exit_crit_edge, label %land.lhs.true.i.i

for.cond.preheader.i.lan743x_led_mux_restore.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_restore.exit

land.lhs.true.i.i:                                ; preds = %for.cond.preheader.i
  %arrayidx.i.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 8, i32 0
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool2.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.lan743x_led_mux_enable.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.lan743x_led_mux_enable.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_enable.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 16) #8
  %or.i.i = or i32 %call.i.i, 1048576
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 16, i32 noundef %or.i.i) #8
  br label %lan743x_led_mux_enable.exit.i

lan743x_led_mux_enable.exit.i:                    ; preds = %if.then.i.i, %land.lhs.true.i.i.lan743x_led_mux_enable.exit.i_crit_edge
  %44 = ptrtoint ptr %leds_multiplexed.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %.pr.i = load i8, ptr %leds_multiplexed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.not.i.1.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i.1.i, label %lan743x_led_mux_enable.exit.i.lan743x_led_mux_restore.exit_crit_edge, label %land.lhs.true.i.1.i

lan743x_led_mux_enable.exit.i.lan743x_led_mux_restore.exit_crit_edge: ; preds = %lan743x_led_mux_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_restore.exit

land.lhs.true.i.1.i:                              ; preds = %lan743x_led_mux_enable.exit.i
  %arrayidx.i.1.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 8, i32 1
  %45 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.1.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool2.not.i.1.i = icmp eq i8 %46, 0
  br i1 %tobool2.not.i.1.i, label %land.lhs.true.i.1.i.lan743x_led_mux_enable.exit.1.i_crit_edge, label %if.then.i.1.i

land.lhs.true.i.1.i.lan743x_led_mux_enable.exit.1.i_crit_edge: ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_enable.exit.1.i

if.then.i.1.i:                                    ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.1.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 16) #8
  %or.i.1.i = or i32 %call.i.1.i, 2097152
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 16, i32 noundef %or.i.1.i) #8
  br label %lan743x_led_mux_enable.exit.1.i

lan743x_led_mux_enable.exit.1.i:                  ; preds = %if.then.i.1.i, %land.lhs.true.i.1.i.lan743x_led_mux_enable.exit.1.i_crit_edge
  %47 = ptrtoint ptr %leds_multiplexed.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %.pr9.i = load i8, ptr %leds_multiplexed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr9.i)
  %tobool.not.i.2.i = icmp eq i8 %.pr9.i, 0
  br i1 %tobool.not.i.2.i, label %lan743x_led_mux_enable.exit.1.i.lan743x_led_mux_restore.exit_crit_edge, label %land.lhs.true.i.2.i

lan743x_led_mux_enable.exit.1.i.lan743x_led_mux_restore.exit_crit_edge: ; preds = %lan743x_led_mux_enable.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_restore.exit

land.lhs.true.i.2.i:                              ; preds = %lan743x_led_mux_enable.exit.1.i
  %arrayidx.i.2.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 8, i32 2
  %48 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.2.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool2.not.i.2.i = icmp eq i8 %49, 0
  br i1 %tobool2.not.i.2.i, label %land.lhs.true.i.2.i.lan743x_led_mux_enable.exit.2.i_crit_edge, label %if.then.i.2.i

land.lhs.true.i.2.i.lan743x_led_mux_enable.exit.2.i_crit_edge: ; preds = %land.lhs.true.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_enable.exit.2.i

if.then.i.2.i:                                    ; preds = %land.lhs.true.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.2.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 16) #8
  %or.i.2.i = or i32 %call.i.2.i, 4194304
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 16, i32 noundef %or.i.2.i) #8
  br label %lan743x_led_mux_enable.exit.2.i

lan743x_led_mux_enable.exit.2.i:                  ; preds = %if.then.i.2.i, %land.lhs.true.i.2.i.lan743x_led_mux_enable.exit.2.i_crit_edge
  %50 = ptrtoint ptr %leds_multiplexed.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %.pr11.pr.i = load i8, ptr %leds_multiplexed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr11.pr.i)
  %tobool.not.i.3.i = icmp eq i8 %.pr11.pr.i, 0
  br i1 %tobool.not.i.3.i, label %lan743x_led_mux_enable.exit.2.i.lan743x_led_mux_restore.exit_crit_edge, label %land.lhs.true.i.3.i

lan743x_led_mux_enable.exit.2.i.lan743x_led_mux_restore.exit_crit_edge: ; preds = %lan743x_led_mux_enable.exit.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_restore.exit

land.lhs.true.i.3.i:                              ; preds = %lan743x_led_mux_enable.exit.2.i
  %arrayidx.i.3.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 8, i32 3
  %51 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.3.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool2.not.i.3.i = icmp eq i8 %52, 0
  br i1 %tobool2.not.i.3.i, label %land.lhs.true.i.3.i.lan743x_led_mux_restore.exit_crit_edge, label %if.then.i.3.i

land.lhs.true.i.3.i.lan743x_led_mux_restore.exit_crit_edge: ; preds = %land.lhs.true.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_led_mux_restore.exit

if.then.i.3.i:                                    ; preds = %land.lhs.true.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 16) #8
  %or.i.3.i = or i32 %call.i.3.i, 8388608
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 16, i32 noundef %or.i.3.i) #8
  br label %lan743x_led_mux_restore.exit

lan743x_led_mux_restore.exit:                     ; preds = %if.then.i.3.i, %land.lhs.true.i.3.i.lan743x_led_mux_restore.exit_crit_edge, %lan743x_led_mux_enable.exit.2.i.lan743x_led_mux_restore.exit_crit_edge, %lan743x_led_mux_enable.exit.1.i.lan743x_led_mux_restore.exit_crit_edge, %lan743x_led_mux_enable.exit.i.lan743x_led_mux_restore.exit_crit_edge, %for.cond.preheader.i.lan743x_led_mux_restore.exit_crit_edge, %if.end15.lan743x_led_mux_restore.exit_crit_edge
  %command_lock.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 1
  tail call void @mutex_lock_nested(ptr noundef %command_lock.i, i32 noundef 0) #8
  %call.i.i47 = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2560) #8
  %and.i.i = and i32 %call.i.i47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %lan743x_led_mux_restore.exit
  %msg_enable.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %53 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable.i, align 8
  %and.i48 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i, label %do.body.i.lan743x_ptp_disable.exit_crit_edge, label %if.then2.i

do.body.i.lan743x_ptp_disable.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_disable.exit

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.32) #11
  br label %lan743x_ptp_disable.exit

if.end3.i:                                        ; preds = %lan743x_led_mux_restore.exit
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2560, i32 noundef 2) #8
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end3.i
  %timeout.014.i.i = phi i32 [ 1000, %if.end3.i ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %call.i11.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2560) #8
  %and.i12.i = and i32 %call.i11.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool1.not.i.i = icmp eq i32 %and.i12.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.lan743x_ptp_disable.exit_crit_edge, label %while.body.i.i

land.rhs.i.i.lan743x_ptp_disable.exit_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_disable.exit

while.body.i.i:                                   ; preds = %land.rhs.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 20000, i32 noundef 2) #8
  %dec.i.i = add nsw i32 %timeout.014.i.i, -1
  %tobool.not.i13.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i13.i, label %do.body.i.i, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

do.body.i.i:                                      ; preds = %while.body.i.i
  %msg_enable.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %57 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable.i.i, align 8
  %and3.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.lan743x_ptp_disable.exit_crit_edge, label %if.then5.i.i

do.body.i.i.lan743x_ptp_disable.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_disable.exit

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.14, i32 noundef 4) #11
  br label %lan743x_ptp_disable.exit

lan743x_ptp_disable.exit:                         ; preds = %if.then5.i.i, %do.body.i.i.lan743x_ptp_disable.exit_crit_edge, %land.rhs.i.i.lan743x_ptp_disable.exit_crit_edge, %if.then2.i, %do.body.i.lan743x_ptp_disable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %command_lock.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_ptp_tx_ts_complete(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %tstamps = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tstamps) #8
  %0 = ptrtoint ptr %tstamps to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tstamps, align 8, !annotation !92
  %tx_ts_lock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ts_lock) #8
  %tx_ts_skb_queue_size = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 13
  %1 = ptrtoint ptr %tx_ts_skb_queue_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_ts_skb_queue_size, align 4
  %tx_ts_queue_size = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 17
  %3 = ptrtoint ptr %tx_ts_queue_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_ts_queue_size, align 4
  %5 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp slt i32 %5, 1
  br i1 %cmp3, label %entry.done_crit_edge, label %for.body.lr.ph

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.body.lr.ph:                                   ; preds = %entry
  %tx_ts_ignore_sync_queue = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end15.for.body_crit_edge ]
  %6 = ptrtoint ptr %tx_ts_ignore_sync_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_ts_ignore_sync_queue, align 4
  %shl = shl nuw i32 1, %i.0132
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7.not = icmp ne i32 %and, 0
  %arrayidx = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 11, i32 %i.0132
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 15, i32 %i.0132
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 14, i32 %i.0132
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 16, i32 %i.0132
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %conv = zext i32 %13 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000000
  %conv.i = zext i32 %11 to i64
  %add.i = add nuw nsw i64 %mul.i, %conv.i
  %16 = ptrtoint ptr %tstamps to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add.i, ptr %tstamps, align 8
  %and11 = and i32 %15, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12.not = icmp eq i32 %and11, 0
  %or.cond = select i1 %cmp7.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %for.body.if.end15_crit_edge, label %if.then14

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @skb_tstamp_tx(ptr noundef %9, ptr noundef nonnull %tstamps) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.body.if.end15_crit_edge
  call void @consume_skb(ptr noundef %9) #8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx9, align 4
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx8, align 4
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx10, align 4
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end15
  %tx_ts_ignore_sync_queue24 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 12
  %21 = ptrtoint ptr %tx_ts_ignore_sync_queue24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_ts_ignore_sync_queue24, align 4
  %shr = lshr i32 %22, %5
  store i32 %shr, ptr %tx_ts_ignore_sync_queue24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp26133 = icmp slt i32 %5, 4
  br i1 %cmp26133, label %for.end.for.body28_crit_edge, label %for.end.for.end58_crit_edge

for.end.for.end58_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end58

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %i.1134 = phi i32 [ %inc57, %for.body28.for.body28_crit_edge ], [ %5, %for.end.for.body28_crit_edge ]
  %arrayidx30 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 11, i32 %i.1134
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx30, align 4
  %sub = sub i32 %i.1134, %5
  %arrayidx32 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 11, i32 %sub
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 14, i32 %i.1134
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx34, align 4
  %arrayidx37 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 14, i32 %sub
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx37, align 4
  %arrayidx39 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 15, i32 %i.1134
  %29 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx39, align 4
  %arrayidx42 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 15, i32 %sub
  %31 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx42, align 4
  %arrayidx44 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 16, i32 %i.1134
  %32 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx44, align 4
  %arrayidx47 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 16, i32 %sub
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx47, align 4
  store ptr null, ptr %arrayidx30, align 4
  store i32 0, ptr %arrayidx34, align 4
  store i32 0, ptr %arrayidx39, align 4
  store i32 0, ptr %arrayidx44, align 4
  %inc57 = add i32 %i.1134, 1
  %exitcond135.not = icmp eq i32 %inc57, 4
  br i1 %exitcond135.not, label %for.body28.for.end58_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

for.body28.for.end58_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end58

for.end58:                                        ; preds = %for.body28.for.end58_crit_edge, %for.end.for.end58_crit_edge
  %35 = ptrtoint ptr %tx_ts_skb_queue_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_ts_skb_queue_size, align 4
  %sub60 = sub i32 %36, %5
  store i32 %sub60, ptr %tx_ts_skb_queue_size, align 4
  %37 = ptrtoint ptr %tx_ts_queue_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_ts_queue_size, align 4
  %sub62 = sub i32 %38, %5
  store i32 %sub62, ptr %tx_ts_queue_size, align 4
  br label %done

done:                                             ; preds = %for.end58, %entry.done_crit_edge
  %pending_tx_timestamps = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 10
  %39 = ptrtoint ptr %pending_tx_timestamps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pending_tx_timestamps, align 4
  %sub63 = sub i32 %40, %5
  store i32 %sub63, ptr %pending_tx_timestamps, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tx_ts_lock) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tstamps) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @lan743x_ptp_request_tx_timestamp(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ts_lock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ts_lock) #8
  %pending_tx_timestamps = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %pending_tx_timestamps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_tx_timestamps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nsw i32 %1, 1
  %2 = ptrtoint ptr %pending_tx_timestamps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %pending_tx_timestamps, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ts_lock) #8
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan743x_ptp_unrequest_tx_timestamp(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ts_lock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ts_lock) #8
  %pending_tx_timestamps = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %pending_tx_timestamps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_tx_timestamps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %pending_tx_timestamps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %pending_tx_timestamps, align 4
  br label %if.end4

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end4_crit_edge, label %if.then3

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.11) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body.if.end4_crit_edge, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ts_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan743x_ptp_tx_timestamp_skb(ptr noundef %adapter, ptr noundef %skb, i1 noundef zeroext %ignore_sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ts_lock.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ts_lock.i) #8
  %tx_ts_skb_queue_size.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 13
  %0 = ptrtoint ptr %tx_ts_skb_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ts_skb_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp slt i32 %1, 4
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %entry
  %arrayidx.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %arrayidx.i, align 4
  br i1 %ignore_sync, label %if.then3.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %tx_ts_skb_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_ts_skb_queue_size.i, align 4
  %shl.i = shl nuw i32 1, %4
  %tx_ts_ignore_sync_queue.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 12
  %5 = ptrtoint ptr %tx_ts_ignore_sync_queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_ts_ignore_sync_queue.i, align 4
  %or.i = or i32 %6, %shl.i
  store i32 %or.i, ptr %tx_ts_ignore_sync_queue.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %7 = ptrtoint ptr %tx_ts_skb_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_ts_skb_queue_size.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %tx_ts_skb_queue_size.i, align 4
  br label %lan743x_ptp_tx_ts_enqueue_skb.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %9 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then7.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.34) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %do.body.i.do.end.i_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %lan743x_ptp_tx_ts_enqueue_skb.exit

lan743x_ptp_tx_ts_enqueue_skb.exit:               ; preds = %do.end.i, %if.end.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ts_lock.i) #8
  tail call fastcc void @lan743x_ptp_tx_ts_complete(ptr noundef %adapter)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan743x_ptp_ioctl(ptr noundef %netdev, ptr noundef readonly %ifr, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !92
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !92
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !92
  %tobool.not = icmp eq ptr %ifr, null
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %netdev, i32 2312
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %9 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end4.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.if.then11.i.i_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 12, i32 -1226833920) #12, !srcloc !93
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !94

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #8
  %12 = call i32 @llvm.read_register.i32(metadata !78) #8
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !95
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %10, i32 noundef 12) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !94

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end4.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end4.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %17, label %do.body28 [
    i32 0, label %for.body
    i32 1, label %for.body12
    i32 2, label %for.body21
    i32 3, label %if.end8.cleanup_crit_edge
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %tx = getelementptr i8, ptr %netdev, i32 4224
  call void @lan743x_tx_set_timestamping_mode(ptr noundef %tx, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i = call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 2724) #8
  %and.i = and i32 %call.i, -268435457
  br label %if.then.i70

for.body12:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %tx13 = getelementptr i8, ptr %netdev, i32 4224
  call void @lan743x_tx_set_timestamping_mode(ptr noundef %tx13, i1 noundef zeroext true, i1 noundef zeroext false) #8
  %call.i76 = call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 2724) #8
  %and.i77 = and i32 %call.i76, -268435457
  br label %if.then.i70

for.body21:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %tx22 = getelementptr i8, ptr %netdev, i32 4224
  call void @lan743x_tx_set_timestamping_mode(ptr noundef %tx22, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %call.i78 = call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 2724) #8
  %ptp_tx_mod.0.i = or i32 %call.i78, 268435456
  br label %if.then.i70

do.body28:                                        ; preds = %if.end8
  %msg_enable29 = getelementptr i8, ptr %netdev, i32 2312
  %19 = ptrtoint ptr %msg_enable29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable29, align 8
  %and30 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body28.cleanup_crit_edge, label %if.then32

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef %17) #11
  br label %cleanup

if.then.i70:                                      ; preds = %for.body21, %for.body12, %for.body
  %and.i.sink = phi i32 [ %and.i, %for.body ], [ %and.i77, %for.body12 ], [ %ptp_tx_mod.0.i, %for.body21 ]
  call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 2724, i32 noundef %and.i.sink) #8
  %23 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #8
  %call.i.i69 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i69, label %if.then.i70.cleanup_crit_edge, label %if.end.i.i73

if.then.i70.cleanup_crit_edge:                    ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i73:                                     ; preds = %if.then.i70
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 12, i32 -1226833920) #12, !srcloc !98
  %asmresult.i.i71 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i71)
  %cmp.i.i72 = icmp eq i32 %asmresult.i.i71, 0
  br i1 %cmp.i.i72, label %copy_to_user.exit, label %if.end.i.i73.cleanup_crit_edge

if.end.i.i73.cleanup_crit_edge:                   ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i74 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %24, ptr noundef nonnull %config, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool42.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool42.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i73.cleanup_crit_edge, %if.then.i70.cleanup_crit_edge, %if.then32, %do.body28.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then11.i.i, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -34, %if.end8.cleanup_crit_edge ], [ -22, %if.then32 ], [ -22, %do.body28.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i70.cleanup_crit_edge ], [ -14, %if.end.i.i73.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan743x_tx_set_timestamping_mode(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_ptp_clock_set(ptr noundef %adapter, i32 noundef %seconds, i32 noundef %nano_seconds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %command_lock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 1
  tail call void @mutex_lock_nested(ptr noundef %command_lock, i32 noundef 0) #8
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2580, i32 noundef %seconds) #8
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2584, i32 noundef %nano_seconds) #8
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2588, i32 noundef 0) #8
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2560, i32 noundef 16) #8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry
  %timeout.014.i = phi i32 [ 1000, %entry ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %call.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2560) #8
  %and.i = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge, label %while.body.i

land.rhs.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_wait_till_cmd_done.exit

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 20000, i32 noundef 2) #8
  %dec.i = add nsw i32 %timeout.014.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

do.body.i:                                        ; preds = %while.body.i
  %msg_enable.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable.i, align 8
  %and3.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge, label %if.then5.i

do.body.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_wait_till_cmd_done.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef 16) #11
  br label %lan743x_ptp_wait_till_cmd_done.exit

lan743x_ptp_wait_till_cmd_done.exit:              ; preds = %if.then5.i, %do.body.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge, %land.rhs.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %command_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_ptp_clock_get(ptr noundef %adapter, ptr noundef writeonly %seconds, ptr noundef writeonly %nano_seconds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %command_lock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 1
  tail call void @mutex_lock_nested(ptr noundef %command_lock, i32 noundef 0) #8
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2560, i32 noundef 8) #8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry
  %timeout.014.i = phi i32 [ 1000, %entry ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %call.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2560) #8
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge, label %while.body.i

land.rhs.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_wait_till_cmd_done.exit

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 20000, i32 noundef 2) #8
  %dec.i = add nsw i32 %timeout.014.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

do.body.i:                                        ; preds = %while.body.i
  %msg_enable.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable.i, align 8
  %and3.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge, label %if.then5.i

do.body.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_wait_till_cmd_done.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef 8) #11
  br label %lan743x_ptp_wait_till_cmd_done.exit

lan743x_ptp_wait_till_cmd_done.exit:              ; preds = %if.then5.i, %do.body.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge, %land.rhs.i.lan743x_ptp_wait_till_cmd_done.exit_crit_edge
  %tobool.not = icmp eq ptr %seconds, null
  br i1 %tobool.not, label %lan743x_ptp_wait_till_cmd_done.exit.if.end_crit_edge, label %if.then

lan743x_ptp_wait_till_cmd_done.exit.if.end_crit_edge: ; preds = %lan743x_ptp_wait_till_cmd_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lan743x_ptp_wait_till_cmd_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2580) #8
  %4 = ptrtoint ptr %seconds to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %seconds, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lan743x_ptp_wait_till_cmd_done.exit.if.end_crit_edge
  %tobool2.not = icmp eq ptr %nano_seconds, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2584) #8
  %5 = ptrtoint ptr %nano_seconds to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4, ptr %nano_seconds, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %command_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_ptp_perout_off(ptr noundef %adapter, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 6, i32 %index
  %gpio_pin = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 6, i32 %index, i32 1
  %0 = ptrtoint ptr %gpio_pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %gpio1.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7
  %shl.i = shl nuw i32 1, %1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio1.i) #8
  %used_bits.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %used_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used_bits.i, align 4
  %and.i = and i32 %3, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.lan743x_gpio_release.exit_crit_edge, label %if.then.i

if.then.lan743x_gpio_release.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_gpio_release.exit

if.then.i:                                        ; preds = %if.then
  %neg.i = xor i32 %shl.i, -1
  %and7.i = and i32 %3, %neg.i
  %4 = ptrtoint ptr %used_bits.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and7.i, ptr %used_bits.i, align 4
  %output_bits.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %output_bits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %output_bits.i, align 4
  %and8.i = and i32 %6, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.then.i.lan743x_gpio_release.exit_crit_edge, label %if.then10.i

if.then.i.lan743x_gpio_release.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_gpio_release.exit

if.then10.i:                                      ; preds = %if.then.i
  %and13.i = and i32 %6, %neg.i
  %7 = ptrtoint ptr %output_bits.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and13.i, ptr %output_bits.i, align 4
  %ptp_bits.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %ptp_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptp_bits.i, align 4
  %and14.i = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.then10.i.if.end.i_crit_edge, label %if.then16.i

if.then10.i.if.end.i_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then16.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %and19.i = and i32 %9, %neg.i
  %10 = ptrtoint ptr %ptp_bits.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and19.i, ptr %ptp_bits.i, align 4
  %gpio_cfg3.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 7
  %11 = ptrtoint ptr %gpio_cfg3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio_cfg3.i, align 4
  %and22.i = and i32 %12, %neg.i
  store i32 %and22.i, ptr %gpio_cfg3.i, align 4
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 92, i32 noundef %and22.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then16.i, %if.then10.i.if.end.i_crit_edge
  %shl25.i = shl i32 65536, %1
  %gpio_cfg1.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %gpio_cfg1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_cfg1.i, align 4
  %or.i = or i32 %14, %shl25.i
  %and30.i = and i32 %or.i, %neg.i
  store i32 %and30.i, ptr %gpio_cfg1.i, align 4
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 84, i32 noundef %and30.i) #8
  %gpio_cfg0.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %gpio_cfg0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_cfg0.i, align 4
  %17 = shl i32 65537, %1
  %18 = xor i32 %17, -1
  %and40.i = and i32 %16, %18
  store i32 %and40.i, ptr %gpio_cfg0.i, align 4
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 80, i32 noundef %and40.i) #8
  %leds_multiplexed.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %leds_multiplexed.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %leds_multiplexed.i.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.end.i.lan743x_gpio_release.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.lan743x_gpio_release.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_gpio_release.exit

land.lhs.true.i.i:                                ; preds = %if.end.i
  %arrayidx.i.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 8, i32 %1
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool2.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.lan743x_gpio_release.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.lan743x_gpio_release.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_gpio_release.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 16) #8
  %shl.i.i = shl i32 1048576, %1
  %or.i.i = or i32 %call.i.i, %shl.i.i
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 16, i32 noundef %or.i.i) #8
  br label %lan743x_gpio_release.exit

lan743x_gpio_release.exit:                        ; preds = %if.then.i.i, %land.lhs.true.i.i.lan743x_gpio_release.exit_crit_edge, %if.end.i.lan743x_gpio_release.exit_crit_edge, %if.then.i.lan743x_gpio_release.exit_crit_edge, %if.then.lan743x_gpio_release.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio1.i, i32 noundef %call3.i) #8
  %23 = ptrtoint ptr %gpio_pin to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %gpio_pin, align 4
  br label %if.end

if.end:                                           ; preds = %lan743x_gpio_release.exit, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp5 = icmp sgt i32 %25, -1
  br i1 %cmp5, label %if.then6, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then6:                                         ; preds = %if.end
  %shl = shl i32 %25, 4
  %add = add i32 %shl, 2608
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef %add, i32 noundef -65536) #8
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %shl9 = shl i32 %27, 4
  %add10 = add i32 %shl9, 2612
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef %add10, i32 noundef 0) #8
  %call = tail call i32 @lan743x_csr_read(ptr noundef %adapter, i32 noundef 2564) #8
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %shl12 = shl i32 %29, 2
  %shl13 = shl nuw i32 1, %shl12
  %or = or i32 %shl13, %call
  tail call void @lan743x_csr_write(ptr noundef %adapter, i32 noundef 2564, i32 noundef %or) #8
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %command_lock.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 1
  tail call void @mutex_lock_nested(ptr noundef %command_lock.i, i32 noundef 0) #8
  %used_event_ch.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 8, i32 5
  %div3.i.i = lshr i32 %31, 5
  %arrayidx.i.i33 = getelementptr i32, ptr %used_event_ch.i, i32 %div3.i.i
  %32 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i33, align 4
  %and.i.i = and i32 %31, 31
  %34 = shl nuw i32 1, %and.i.i
  %35 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i34 = icmp eq i32 %35, 0
  br i1 %tobool.not.i34, label %do.body.i, label %if.then.i38

if.then.i38:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i35 = shl nuw i32 1, %31
  %neg.i36 = xor i32 %shl.i35, -1
  %36 = ptrtoint ptr %used_event_ch.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used_event_ch.i, align 4
  %and.i37 = and i32 %37, %neg.i36
  store i32 %and.i37, ptr %used_event_ch.i, align 4
  br label %lan743x_ptp_release_event_ch.exit

do.body.i:                                        ; preds = %if.then6
  %msg_enable.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %38 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable.i, align 8
  %and3.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.lan743x_ptp_release_event_ch.exit_crit_edge, label %if.then5.i

do.body.i.lan743x_ptp_release_event_ch.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lan743x_ptp_release_event_ch.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.25, i32 noundef %31) #11
  br label %lan743x_ptp_release_event_ch.exit

lan743x_ptp_release_event_ch.exit:                ; preds = %if.then5.i, %do.body.i.lan743x_ptp_release_event_ch.exit_crit_edge, %if.then.i38
  tail call void @mutex_unlock(ptr noundef %command_lock.i) #8
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %arrayidx, align 4
  br label %if.end16

if.end16:                                         ; preds = %lan743x_ptp_release_event_ch.exit, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @lan743x_gpio_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 32, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 940, i32 3}
!5 = !{ptr @lan743x_ptp_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1023, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @lan743x_ptp_init.__key.3, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1024, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1067, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1081, i32 28}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1087, i32 41}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1110, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1115, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1134, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1279, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1300, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1335, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 59, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 430, i32 4}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 437, i32 4}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 446, i32 3}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 694, i32 4}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 700, i32 3}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 519, i32 3}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 531, i32 3}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 559, i32 4}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 565, i32 4}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 603, i32 4}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 172, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 155, i32 3}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 760, i32 5}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 763, i32 5}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 767, i32 4}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 78, i32 3}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1196, i32 3}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1211, i32 3}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 1228, i32 3}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/microchip/lan743x_ptp.c", i32 980, i32 3}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!73 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 878456, i64 878483}
!89 = !{i64 879151, i64 879178, i64 879211, i64 879232, i64 879259, i64 879285}
!90 = !{i64 878743, i64 878770, i64 878792, i64 878820}
!91 = !{i8 0, i8 2}
!92 = !{!"auto-init"}
!93 = !{i64 2152903365, i64 2152903390}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 5398920}
!96 = !{i64 5399117}
!97 = !{i64 2152884350}
!98 = !{i64 2152904046, i64 2152904071}
