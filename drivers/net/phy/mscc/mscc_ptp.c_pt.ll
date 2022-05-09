; ModuleID = '/llk/IR_all_yes/drivers/net/phy/mscc/mscc_ptp.c_pt.bc'
source_filename = "../drivers/net/phy/mscc/mscc_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vsc8531_private = type { i32, i16, [4 x i32], i8, ptr, ptr, i32, i8, i32, ptr, %struct.list_head, i32, i32, %struct.mii_timestamper, i8, ptr, ptr, i32, i8, %struct.mutex, %struct.mutex }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsc85xx_ptp = type { ptr, ptr, %struct.ptp_clock_info, %struct.sk_buff_head, i32, i32, i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.vsc85xx_ts_fifo = type <{ i32, [6 x i8], [16 x i8] }>
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.vsc85xx_ptphdr = type <{ i8, i8, i16, i8, i8, i16, i64, i32, i64, i16, i16, i8, i8 }>
%struct.phy_package_shared = type { i32, %struct.refcount_struct, i32, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.127, %union.anon.128 }
%union.anon.127 = type { [16 x i8] }
%union.anon.128 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }

@vsc8584_ptp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vsc8531->phc_lock\00", [45 x i8] zeroinitializer }, align 32
@vsc8584_ptp_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vsc8531->ts_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"load-save\00", [22 x i8] zeroinitializer }, align 32
@vsc8584_ptp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1571, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't get load-save GPIO (%ld)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vsc8584_ptp_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/phy/mscc/mscc_ptp.c\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsc8584_ptp_probe._entry_ptr = internal global ptr @vsc8584_ptp_probe._entry, section ".printk_index", align 4
@vsc8584_ptp_probe_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&shared->gpio_lock\00", [45 x i8] zeroinitializer }, align 32
@vsc85xx_ingr_latency_macsec = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2408, i32 22300, i32 222009, i32 2299, i32 22192], [44 x i8] zeroinitializer }, align 32
@vsc85xx_egr_latency_macsec = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3496, i32 34760, i32 347844, i32 3502, i32 34780], [44 x i8] zeroinitializer }, align 32
@phy_ts_base_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@phy_ts_base_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vsc85xx_clk_caps = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"VSC85xx timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2147483647, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @vsc85xx_adjfine, ptr null, ptr null, ptr @vsc85xx_adjtime, ptr @vsc85xx_gettime, ptr null, ptr null, ptr @vsc85xx_settime, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_ptp_conf.msgs = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\01", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 16, i64 45, i64 46, i64 77, i64 78]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 459936, i64 459984, i64 460720, i64 460736, i64 460752]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 35063]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 9]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1558, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1559, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1566, i32 66 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1570, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1586, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"vsc85xx_ingr_latency_macsec\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 235, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"vsc85xx_egr_latency_macsec\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 215, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"vsc85xx_clk_caps\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1220, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 156, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [5 x i8] c"msgs\00", align 1
@___asan_gen_.70 = private constant [35 x i8] c"../drivers/net/phy/mscc/mscc_ptp.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 850, i32 18 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @vsc8584_ptp_probe._entry, ptr @vsc8584_ptp_probe._entry_ptr, ptr @vsc8584_ptp_probe.__key, ptr @.str, ptr @vsc8584_ptp_probe.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @vsc8584_ptp_probe_once.__key, ptr @.str.9, ptr @vsc85xx_ingr_latency_macsec, ptr @vsc85xx_egr_latency_macsec, ptr @vsc85xx_clk_caps, ptr @.str.12, ptr @vsc85xx_ptp_conf.msgs], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_ptp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_ptp_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_ptp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_ptp_probe_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_ingr_latency_macsec to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_egr_latency_macsec to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_clk_caps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_ptp_conf.msgs to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsc85xx_link_change_notify(ptr nocapture noundef readonly %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ts_lock = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ts_lock, i32 noundef 0) #7
  tail call fastcc void @vsc85xx_ts_set_latencies(ptr noundef %phydev)
  tail call void @mutex_unlock(ptr noundef %ts_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc85xx_ts_set_latencies(ptr nocapture noundef readonly %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %link, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  %div = sdiv i32 1536000, %3
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 79, i32 noundef %div)
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 1000
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %5)
  %switch.selectcmp24 = icmp eq i32 %5, 100
  %switch.select25 = select i1 %switch.selectcmp24, i32 1, i32 %switch.select
  %arrayidx = getelementptr [5 x i32], ptr @vsc85xx_ingr_latency_macsec, i32 0, i32 %switch.select25
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr [5 x i32], ptr @vsc85xx_egr_latency_macsec, i32 0, i32 %switch.select25
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %7, 8388607
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 55, i32 noundef %and)
  %call = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 53)
  %or = or i32 %call, 1
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 53, i32 noundef %or)
  %and5 = and i32 %9, 8388607
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 87, i32 noundef %and5)
  %call6 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 85)
  %or7 = or i32 %call6, 1
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 85, i32 noundef %or7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsc8584_config_ts_intr(ptr nocapture noundef readonly %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ts_lock = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ts_lock, i32 noundef 0) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 78, i32 noundef 5)
  tail call void @mutex_unlock(ptr noundef %ts_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc85xx_ts_write_csr(ptr nocapture noundef readonly %phydev, i32 noundef %blk, i16 noundef zeroext %addr, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %addr2 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr2, align 8
  %ts_base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ts_base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_base_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  %shr = lshr i32 %val, 16
  %6 = zext i16 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %addr, label %entry.land.end_crit_edge [
    i16 16, label %entry.land.rhs_crit_edge
    i16 46, label %entry.land.rhs_crit_edge157
    i16 78, label %entry.land.rhs_crit_edge158
    i16 45, label %entry.land.rhs_crit_edge159
    i16 77, label %entry.land.rhs_crit_edge160
  ]

entry.land.rhs_crit_edge160:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

entry.land.rhs_crit_edge159:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

entry.land.rhs_crit_edge158:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

entry.land.rhs_crit_edge157:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry.land.rhs_crit_edge, %entry.land.rhs_crit_edge157, %entry.land.rhs_crit_edge158, %entry.land.rhs_crit_edge159, %entry.land.rhs_crit_edge160
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %blk)
  %cmp20 = icmp eq i32 %blk, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i1 [ %cmp20, %land.rhs ], [ false, %entry.land.end_crit_edge ]
  %8 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %blk, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ]

sw.bb:                                            ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %cond24 = select i1 %cmp, i16 0, i16 4096
  br label %sw.epilog

sw.bb25:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %cond28 = select i1 %cmp, i16 2048, i16 6144
  br label %sw.epilog

sw.default:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %cond32 = select i1 %cmp, i16 12288, i16 14336
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb
  %blk_hw.0 = phi i16 [ %cond32, %sw.default ], [ %cond28, %sw.bb25 ], [ %cond24, %sw.bb ]
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %10, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #7
  %11 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv1, align 8
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i86 = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i86) #7
  br i1 %call.i, label %sw.epilog.phy_ts_base_read.exit_crit_edge, label %land.rhs.i

sw.epilog.phy_ts_base_read.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit

land.rhs.i:                                       ; preds = %sw.epilog
  %.b44.i = load i1, ptr @phy_ts_base_read.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.phy_ts_base_read.exit_crit_edge, label %if.then.i, !prof !54

land.rhs.i.phy_ts_base_read.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 41, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_read.exit

phy_ts_base_read.exit:                            ; preds = %if.then.i, %land.rhs.i.phy_ts_base_read.exit_crit_edge, %sw.epilog.phy_ts_base_read.exit_crit_edge
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i = getelementptr inbounds %struct.vsc8531_private, ptr %12, i32 0, i32 17
  %17 = ptrtoint ptr %ts_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ts_base_addr.i, align 4
  %call39.i = tail call i32 @__mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 18) #7
  %19 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv1, align 8
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i89 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 8
  %call.i90 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i89) #7
  br i1 %call.i90, label %phy_ts_base_read.exit.phy_ts_base_write.exit_crit_edge, label %land.rhs.i91

phy_ts_base_read.exit.phy_ts_base_write.exit_crit_edge: ; preds = %phy_ts_base_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit

land.rhs.i91:                                     ; preds = %phy_ts_base_read.exit
  %.b1.i = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i91.phy_ts_base_write.exit_crit_edge, label %if.then.i92, !prof !54

land.rhs.i91.phy_ts_base_write.exit_crit_edge:    ; preds = %land.rhs.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit

if.then.i92:                                      ; preds = %land.rhs.i91
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit

phy_ts_base_write.exit:                           ; preds = %if.then.i92, %land.rhs.i91.phy_ts_base_write.exit_crit_edge, %phy_ts_base_read.exit.phy_ts_base_write.exit_crit_edge
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i93 = getelementptr inbounds %struct.vsc8531_private, ptr %20, i32 0, i32 17
  %25 = ptrtoint ptr %ts_base_addr.i93 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ts_base_addr.i93, align 4
  %call39.i94 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 31, i16 noundef zeroext 5512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %val)
  %tobool36.not = icmp ult i32 %val, 65536
  %or.cond = and i1 %tobool36.not, %7
  br i1 %or.cond, label %phy_ts_base_write.exit.if.end_crit_edge, label %if.then

phy_ts_base_write.exit.if.end_crit_edge:          ; preds = %phy_ts_base_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %phy_ts_base_write.exit
  %conv37 = trunc i32 %shr to i16
  %27 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv1, align 8
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i97 = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 8
  %call.i98 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i97) #7
  br i1 %call.i98, label %if.then.phy_ts_base_write.exit104_crit_edge, label %land.rhs.i100

if.then.phy_ts_base_write.exit104_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit104

land.rhs.i100:                                    ; preds = %if.then
  %.b1.i99 = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i99, label %land.rhs.i100.phy_ts_base_write.exit104_crit_edge, label %if.then.i101, !prof !54

land.rhs.i100.phy_ts_base_write.exit104_crit_edge: ; preds = %land.rhs.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit104

if.then.i101:                                     ; preds = %land.rhs.i100
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit104

phy_ts_base_write.exit104:                        ; preds = %if.then.i101, %land.rhs.i100.phy_ts_base_write.exit104_crit_edge, %if.then.phy_ts_base_write.exit104_crit_edge
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i102 = getelementptr inbounds %struct.vsc8531_private, ptr %28, i32 0, i32 17
  %33 = ptrtoint ptr %ts_base_addr.i102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ts_base_addr.i102, align 4
  %call39.i103 = tail call i32 @__mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 18, i16 noundef zeroext %conv37) #7
  br label %if.end

if.end:                                           ; preds = %phy_ts_base_write.exit104, %phy_ts_base_write.exit.if.end_crit_edge
  %conv39 = trunc i32 %val to i16
  %35 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv1, align 8
  %37 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i107 = getelementptr inbounds %struct.mii_bus, ptr %38, i32 0, i32 8
  %call.i108 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i107) #7
  br i1 %call.i108, label %if.end.phy_ts_base_write.exit114_crit_edge, label %land.rhs.i110

if.end.phy_ts_base_write.exit114_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit114

land.rhs.i110:                                    ; preds = %if.end
  %.b1.i109 = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i109, label %land.rhs.i110.phy_ts_base_write.exit114_crit_edge, label %if.then.i111, !prof !54

land.rhs.i110.phy_ts_base_write.exit114_crit_edge: ; preds = %land.rhs.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit114

if.then.i111:                                     ; preds = %land.rhs.i110
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit114

phy_ts_base_write.exit114:                        ; preds = %if.then.i111, %land.rhs.i110.phy_ts_base_write.exit114_crit_edge, %if.end.phy_ts_base_write.exit114_crit_edge
  %39 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i112 = getelementptr inbounds %struct.vsc8531_private, ptr %36, i32 0, i32 17
  %41 = ptrtoint ptr %ts_base_addr.i112 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ts_base_addr.i112, align 4
  %call39.i113 = tail call i32 @__mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 17, i16 noundef zeroext %conv39) #7
  %or = or i16 %blk_hw.0, %addr
  %or42 = or i16 %or, -32768
  %43 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv1, align 8
  %45 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i117 = getelementptr inbounds %struct.mii_bus, ptr %46, i32 0, i32 8
  %call.i118 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i117) #7
  br i1 %call.i118, label %phy_ts_base_write.exit114.phy_ts_base_write.exit124_crit_edge, label %land.rhs.i120

phy_ts_base_write.exit114.phy_ts_base_write.exit124_crit_edge: ; preds = %phy_ts_base_write.exit114
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit124

land.rhs.i120:                                    ; preds = %phy_ts_base_write.exit114
  %.b1.i119 = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i119, label %land.rhs.i120.phy_ts_base_write.exit124_crit_edge, label %if.then.i121, !prof !54

land.rhs.i120.phy_ts_base_write.exit124_crit_edge: ; preds = %land.rhs.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit124

if.then.i121:                                     ; preds = %land.rhs.i120
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit124

phy_ts_base_write.exit124:                        ; preds = %if.then.i121, %land.rhs.i120.phy_ts_base_write.exit124_crit_edge, %phy_ts_base_write.exit114.phy_ts_base_write.exit124_crit_edge
  %47 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i122 = getelementptr inbounds %struct.vsc8531_private, ptr %44, i32 0, i32 17
  %49 = ptrtoint ptr %ts_base_addr.i122 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ts_base_addr.i122, align 4
  %call39.i123 = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %50, i32 noundef 16, i16 noundef zeroext %or42) #7
  br label %do.body

do.body:                                          ; preds = %phy_ts_base_read.exit134.do.body_crit_edge, %phy_ts_base_write.exit124
  %cnt.0 = phi i32 [ 0, %phy_ts_base_write.exit124 ], [ %inc, %phy_ts_base_read.exit134.do.body_crit_edge ]
  %51 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv1, align 8
  %53 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i127 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 8
  %call.i128 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i127) #7
  br i1 %call.i128, label %do.body.phy_ts_base_read.exit134_crit_edge, label %land.rhs.i130

do.body.phy_ts_base_read.exit134_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit134

land.rhs.i130:                                    ; preds = %do.body
  %.b44.i129 = load i1, ptr @phy_ts_base_read.__already_done, align 1
  br i1 %.b44.i129, label %land.rhs.i130.phy_ts_base_read.exit134_crit_edge, label %if.then.i131, !prof !54

land.rhs.i130.phy_ts_base_read.exit134_crit_edge: ; preds = %land.rhs.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit134

if.then.i131:                                     ; preds = %land.rhs.i130
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 41, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_read.exit134

phy_ts_base_read.exit134:                         ; preds = %if.then.i131, %land.rhs.i130.phy_ts_base_read.exit134_crit_edge, %do.body.phy_ts_base_read.exit134_crit_edge
  %55 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i132 = getelementptr inbounds %struct.vsc8531_private, ptr %52, i32 0, i32 17
  %57 = ptrtoint ptr %ts_base_addr.i132 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ts_base_addr.i132, align 4
  %call39.i133 = tail call i32 @__mdiobus_read(ptr noundef %56, i32 noundef %58, i32 noundef 16) #7
  %and46 = and i32 %call39.i133, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %inc = add nuw nsw i32 %cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cnt.0)
  %cmp49 = icmp ult i32 %cnt.0, 8
  %or.cond83 = select i1 %tobool47.not, i1 %cmp49, i1 false
  br i1 %or.cond83, label %phy_ts_base_read.exit134.do.body_crit_edge, label %do.end

phy_ts_base_read.exit134.do.body_crit_edge:       ; preds = %phy_ts_base_read.exit134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %phy_ts_base_read.exit134
  %59 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv1, align 8
  %61 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i137 = getelementptr inbounds %struct.mii_bus, ptr %62, i32 0, i32 8
  %call.i138 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i137) #7
  br i1 %call.i138, label %do.end.phy_ts_base_write.exit144_crit_edge, label %land.rhs.i140

do.end.phy_ts_base_write.exit144_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit144

land.rhs.i140:                                    ; preds = %do.end
  %.b1.i139 = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i139, label %land.rhs.i140.phy_ts_base_write.exit144_crit_edge, label %if.then.i141, !prof !54

land.rhs.i140.phy_ts_base_write.exit144_crit_edge: ; preds = %land.rhs.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit144

if.then.i141:                                     ; preds = %land.rhs.i140
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit144

phy_ts_base_write.exit144:                        ; preds = %if.then.i141, %land.rhs.i140.phy_ts_base_write.exit144_crit_edge, %do.end.phy_ts_base_write.exit144_crit_edge
  %63 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i142 = getelementptr inbounds %struct.vsc8531_private, ptr %60, i32 0, i32 17
  %65 = ptrtoint ptr %ts_base_addr.i142 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ts_base_addr.i142, align 4
  %call39.i143 = tail call i32 @__mdiobus_write(ptr noundef %64, i32 noundef %66, i32 noundef 31, i16 noundef zeroext 0) #7
  %.not = xor i1 %7, true
  %or.cond84 = or i1 %tobool36.not, %.not
  br i1 %or.cond84, label %phy_ts_base_write.exit144.if.end59_crit_edge, label %if.then56

phy_ts_base_write.exit144.if.end59_crit_edge:     ; preds = %phy_ts_base_write.exit144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then56:                                        ; preds = %phy_ts_base_write.exit144
  %conv57 = trunc i32 %call39.i to i16
  %67 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv1, align 8
  %69 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i147 = getelementptr inbounds %struct.mii_bus, ptr %70, i32 0, i32 8
  %call.i148 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i147) #7
  br i1 %call.i148, label %if.then56.phy_ts_base_write.exit154_crit_edge, label %land.rhs.i150

if.then56.phy_ts_base_write.exit154_crit_edge:    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit154

land.rhs.i150:                                    ; preds = %if.then56
  %.b1.i149 = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i149, label %land.rhs.i150.phy_ts_base_write.exit154_crit_edge, label %if.then.i151, !prof !54

land.rhs.i150.phy_ts_base_write.exit154_crit_edge: ; preds = %land.rhs.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit154

if.then.i151:                                     ; preds = %land.rhs.i150
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit154

phy_ts_base_write.exit154:                        ; preds = %if.then.i151, %land.rhs.i150.phy_ts_base_write.exit154_crit_edge, %if.then56.phy_ts_base_write.exit154_crit_edge
  %71 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i152 = getelementptr inbounds %struct.vsc8531_private, ptr %68, i32 0, i32 17
  %73 = ptrtoint ptr %ts_base_addr.i152 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ts_base_addr.i152, align 4
  %call39.i153 = tail call i32 @__mdiobus_write(ptr noundef %72, i32 noundef %74, i32 noundef 18, i16 noundef zeroext %conv57) #7
  br label %if.end59

if.end59:                                         ; preds = %phy_ts_base_write.exit154, %phy_ts_base_write.exit144.if.end59_crit_edge
  %75 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i156 = getelementptr inbounds %struct.mii_bus, ptr %76, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i156) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc8584_ptp_init(ptr noundef %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id, align 4
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv, align 8
  %phy_id_mask = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_id_mask, align 4
  %and = and i32 %5, %1
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and, label %entry.return_crit_edge [
    i32 459984, label %entry.sw.bb_crit_edge
    i32 459936, label %entry.sw.bb_crit_edge3
    i32 460752, label %entry.sw.bb_crit_edge4
    i32 460720, label %entry.sw.bb_crit_edge5
    i32 460736, label %entry.sw.bb_crit_edge6
  ]

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge3, %entry.sw.bb_crit_edge4, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6
  %priv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %ts_base_addr.i.i.i = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %ts_base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ts_base_addr.i.i.i, align 4
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %11 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not.i.i.i = icmp eq i32 %10, %12
  br i1 %cmp.not.i.i.i, label %sw.bb.vsc8584_is_1588_input_clk_configured.exit.i_crit_edge, label %if.then.i.i.i

sw.bb.vsc8584_is_1588_input_clk_configured.exit.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsc8584_is_1588_input_clk_configured.exit.i

if.then.i.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %13 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.mii_bus, ptr %14, i32 0, i32 12, i32 %10
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  %priv3.i.i.i = getelementptr inbounds %struct.phy_device, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %priv3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv3.i.i.i, align 8
  br label %vsc8584_is_1588_input_clk_configured.exit.i

vsc8584_is_1588_input_clk_configured.exit.i:      ; preds = %if.then.i.i.i, %sw.bb.vsc8584_is_1588_input_clk_configured.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %18, %if.then.i.i.i ], [ %8, %sw.bb.vsc8584_is_1588_input_clk_configured.exit.i_crit_edge ]
  %input_clk_init.i.i = getelementptr inbounds %struct.vsc8531_private, ptr %retval.0.i.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %input_clk_init.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %input_clk_init.i.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not.i = icmp eq i8 %20, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %vsc8584_is_1588_input_clk_configured.exit.i.__vsc8584_init_ptp.exit_crit_edge

vsc8584_is_1588_input_clk_configured.exit.i.__vsc8584_init_ptp.exit_crit_edge: ; preds = %vsc8584_is_1588_input_clk_configured.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__vsc8584_init_ptp.exit

if.then.i:                                        ; preds = %vsc8584_is_1588_input_clk_configured.exit.i
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %21 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #7
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 8
  %25 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i210.i = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i210.i) #7
  br i1 %call.i.i, label %if.then.i.phy_ts_base_write.exit.i_crit_edge, label %land.rhs.i.i

if.then.i.phy_ts_base_write.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b1.i.i = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.phy_ts_base_write.exit.i_crit_edge, label %if.then.i.i, !prof !54

land.rhs.i.i.phy_ts_base_write.exit.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit.i

phy_ts_base_write.exit.i:                         ; preds = %if.then.i.i, %land.rhs.i.i.phy_ts_base_write.exit.i_crit_edge, %if.then.i.phy_ts_base_write.exit.i_crit_edge
  %27 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i, align 8
  %ts_base_addr.i.i = getelementptr inbounds %struct.vsc8531_private, ptr %24, i32 0, i32 17
  %29 = ptrtoint ptr %ts_base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ts_base_addr.i.i, align 4
  %call39.i.i = tail call i32 @__mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 31, i16 noundef zeroext 5512) #7
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 8
  %33 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i213.i = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 8
  %call.i214.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i213.i) #7
  br i1 %call.i214.i, label %phy_ts_base_write.exit.i.phy_ts_base_write.exit220.i_crit_edge, label %land.rhs.i216.i

phy_ts_base_write.exit.i.phy_ts_base_write.exit220.i_crit_edge: ; preds = %phy_ts_base_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit220.i

land.rhs.i216.i:                                  ; preds = %phy_ts_base_write.exit.i
  %.b1.i215.i = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i215.i, label %land.rhs.i216.i.phy_ts_base_write.exit220.i_crit_edge, label %if.then.i217.i, !prof !54

land.rhs.i216.i.phy_ts_base_write.exit220.i_crit_edge: ; preds = %land.rhs.i216.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit220.i

if.then.i217.i:                                   ; preds = %land.rhs.i216.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit220.i

phy_ts_base_write.exit220.i:                      ; preds = %if.then.i217.i, %land.rhs.i216.i.phy_ts_base_write.exit220.i_crit_edge, %phy_ts_base_write.exit.i.phy_ts_base_write.exit220.i_crit_edge
  %35 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i.i, align 8
  %ts_base_addr.i218.i = getelementptr inbounds %struct.vsc8531_private, ptr %32, i32 0, i32 17
  %37 = ptrtoint ptr %ts_base_addr.i218.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ts_base_addr.i218.i, align 4
  %call39.i219.i = tail call i32 @__mdiobus_write(ptr noundef %36, i32 noundef %38, i32 noundef 29, i16 noundef zeroext 31456) #7
  %39 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i, align 8
  %41 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i223.i = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 8
  %call.i224.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i223.i) #7
  br i1 %call.i224.i, label %phy_ts_base_write.exit220.i.phy_ts_base_write.exit230.i_crit_edge, label %land.rhs.i226.i

phy_ts_base_write.exit220.i.phy_ts_base_write.exit230.i_crit_edge: ; preds = %phy_ts_base_write.exit220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit230.i

land.rhs.i226.i:                                  ; preds = %phy_ts_base_write.exit220.i
  %.b1.i225.i = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i225.i, label %land.rhs.i226.i.phy_ts_base_write.exit230.i_crit_edge, label %if.then.i227.i, !prof !54

land.rhs.i226.i.phy_ts_base_write.exit230.i_crit_edge: ; preds = %land.rhs.i226.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit230.i

if.then.i227.i:                                   ; preds = %land.rhs.i226.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit230.i

phy_ts_base_write.exit230.i:                      ; preds = %if.then.i227.i, %land.rhs.i226.i.phy_ts_base_write.exit230.i_crit_edge, %phy_ts_base_write.exit220.i.phy_ts_base_write.exit230.i_crit_edge
  %43 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.i, align 8
  %ts_base_addr.i228.i = getelementptr inbounds %struct.vsc8531_private, ptr %40, i32 0, i32 17
  %45 = ptrtoint ptr %ts_base_addr.i228.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ts_base_addr.i228.i, align 4
  %call39.i229.i = tail call i32 @__mdiobus_write(ptr noundef %44, i32 noundef %46, i32 noundef 30, i16 noundef zeroext -18660) #7
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i, align 8
  %49 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i233.i = getelementptr inbounds %struct.mii_bus, ptr %50, i32 0, i32 8
  %call.i234.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i233.i) #7
  br i1 %call.i234.i, label %phy_ts_base_write.exit230.i.phy_ts_base_write.exit240.i_crit_edge, label %land.rhs.i236.i

phy_ts_base_write.exit230.i.phy_ts_base_write.exit240.i_crit_edge: ; preds = %phy_ts_base_write.exit230.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit240.i

land.rhs.i236.i:                                  ; preds = %phy_ts_base_write.exit230.i
  %.b1.i235.i = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i235.i, label %land.rhs.i236.i.phy_ts_base_write.exit240.i_crit_edge, label %if.then.i237.i, !prof !54

land.rhs.i236.i.phy_ts_base_write.exit240.i_crit_edge: ; preds = %land.rhs.i236.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit240.i

if.then.i237.i:                                   ; preds = %land.rhs.i236.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit240.i

phy_ts_base_write.exit240.i:                      ; preds = %if.then.i237.i, %land.rhs.i236.i.phy_ts_base_write.exit240.i_crit_edge, %phy_ts_base_write.exit230.i.phy_ts_base_write.exit240.i_crit_edge
  %51 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i.i, align 8
  %ts_base_addr.i238.i = getelementptr inbounds %struct.vsc8531_private, ptr %48, i32 0, i32 17
  %53 = ptrtoint ptr %ts_base_addr.i238.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ts_base_addr.i238.i, align 4
  %call39.i239.i = tail call i32 @__mdiobus_write(ptr noundef %52, i32 noundef %54, i32 noundef 31, i16 noundef zeroext 0) #7
  %55 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i242.i = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i242.i) #7
  %57 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv.i, align 8
  %ts_base_addr.i.i244.i = getelementptr inbounds %struct.vsc8531_private, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %ts_base_addr.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ts_base_addr.i.i244.i, align 4
  %61 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.not.i.i246.i = icmp eq i32 %60, %62
  br i1 %cmp.not.i.i246.i, label %phy_ts_base_write.exit240.i.vsc8584_set_input_clk_configured.exit.i_crit_edge, label %if.then.i.i250.i

phy_ts_base_write.exit240.i.vsc8584_set_input_clk_configured.exit.i_crit_edge: ; preds = %phy_ts_base_write.exit240.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsc8584_set_input_clk_configured.exit.i

if.then.i.i250.i:                                 ; preds = %phy_ts_base_write.exit240.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i.i, align 8
  %arrayidx.i.i248.i = getelementptr %struct.mii_bus, ptr %64, i32 0, i32 12, i32 %60
  %65 = ptrtoint ptr %arrayidx.i.i248.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i248.i, align 4
  %priv3.i.i249.i = getelementptr inbounds %struct.phy_device, ptr %66, i32 0, i32 26
  %67 = ptrtoint ptr %priv3.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv3.i.i249.i, align 8
  br label %vsc8584_set_input_clk_configured.exit.i

vsc8584_set_input_clk_configured.exit.i:          ; preds = %if.then.i.i250.i, %phy_ts_base_write.exit240.i.vsc8584_set_input_clk_configured.exit.i_crit_edge
  %retval.0.i.i251.i = phi ptr [ %68, %if.then.i.i250.i ], [ %58, %phy_ts_base_write.exit240.i.vsc8584_set_input_clk_configured.exit.i_crit_edge ]
  %input_clk_init.i252.i = getelementptr inbounds %struct.vsc8531_private, ptr %retval.0.i.i251.i, i32 0, i32 14
  %69 = ptrtoint ptr %input_clk_init.i252.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %input_clk_init.i252.i, align 4
  br label %__vsc8584_init_ptp.exit

__vsc8584_init_ptp.exit:                          ; preds = %vsc8584_set_input_clk_configured.exit.i, %vsc8584_is_1588_input_clk_configured.exit.i.__vsc8584_init_ptp.exit_crit_edge
  %call5.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 34) #7
  %and.i = and i32 %call5.i, -2
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 34, i32 noundef %and.i) #7
  %call6.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 38) #7
  %and7.i = and i32 %call6.i, -2
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 38, i32 noundef %and7.i) #7
  %call8.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 16) #7
  %and9.i = and i32 %call8.i, -28673
  %or.i = or i32 %and9.i, 20480
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 16, i32 noundef %or.i) #7
  %call10.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 23) #7
  %and11.i = and i32 %call10.i, -16
  %or13.i = or i32 %and11.i, 4
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 23, i32 noundef %or13.i) #7
  %call14.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 24) #7
  %and15.i = and i32 %call14.i, -1048576
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 24, i32 noundef %and15.i) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 27, i32 noundef 500000000) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 58, i32 noundef 19) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 90, i32 noundef 19) #7
  %call21.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116) #7
  %and22.i = and i32 %call21.i, -229280
  %or23.i = or i32 %and22.i, 229248
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116, i32 noundef %or23.i) #7
  %call24.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116) #7
  %or25.i = or i32 %call24.i, 64
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116, i32 noundef %or25.i) #7
  %call26.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116) #7
  %and27.i = and i32 %call26.i, -229313
  %or28.i = or i32 %and27.i, 229248
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116, i32 noundef %or28.i) #7
  %call29.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116) #7
  %or30.i = or i32 %call29.i, 64
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116, i32 noundef %or30.i) #7
  %call31.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116) #7
  %and32.i = and i32 %call31.i, -65
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 116, i32 noundef %and32.i) #7
  %call33.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 32) #7
  %and34.i = and i32 %call33.i, -2
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 32, i32 noundef %and34.i) #7
  %call35.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 68) #7
  %and36.i = and i32 %call35.i, -17
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 68, i32 noundef %and36.i) #7
  %call37.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 100) #7
  %and38.i = and i32 %call37.i, -17
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 100, i32 noundef %and38.i) #7
  %call39.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 68) #7
  %or40.i = or i32 %call39.i, 15
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 68, i32 noundef %or40.i) #7
  %call41.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 100) #7
  %or42.i = and i32 %call41.i, -16
  %and43.i = or i32 %or42.i, 7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 100, i32 noundef %and43.i) #7
  %call44.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 53) #7
  %or45.i = or i32 %call44.i, 4
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 53, i32 noundef %or45.i) #7
  %call46.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 85) #7
  %or47.i = or i32 %call46.i, 4
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 85, i32 noundef %or47.i) #7
  %call48.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 110) #7
  %or49.i = or i32 %call48.i, 4
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 110, i32 noundef %or49.i) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 818, i32 noundef 594120768) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 819, i32 noundef 511576162) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 820, i32 noundef 443131546) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 821, i32 noundef 26) #7
  %call51.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 91) #7
  %and52.i = and i32 %call51.i, -3872
  %or53.i = or i32 %and52.i, 1808
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 91, i32 noundef %or53.i) #7
  %call.i253.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 91) #7
  %or.i.i = or i32 %call.i253.i, 65536
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 91, i32 noundef %or.i.i) #7
  %and.i.i = and i32 %call.i253.i, -65537
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 91, i32 noundef %and.i.i) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 0, i32 noundef 64) #7
  tail call fastcc void @vsc85xx_ts_set_latencies(ptr noundef %phydev) #7
  %call54.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 3) #7
  %call55.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 0) #7
  %or56.i = or i32 %call55.i, 4
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 0, i32 noundef %or56.i) #7
  tail call fastcc void @vsc85xx_ts_disable_flows(ptr noundef %phydev, i32 noundef 1) #7
  tail call fastcc void @vsc85xx_ts_disable_flows(ptr noundef %phydev, i32 noundef 0) #7
  %call59.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 1) #7
  %and60.i = and i32 %call59.i, -24576120
  %or61.i = or i32 %and60.i, 24576000
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 1, i32 noundef %or61.i) #7
  tail call fastcc void @vsc85xx_eth_cmp1_init(ptr noundef %phydev, i32 noundef 0) #7
  tail call fastcc void @vsc85xx_ip_cmp1_init(ptr noundef %phydev, i32 noundef 0) #7
  tail call fastcc void @vsc85xx_ptp_cmp_init(ptr noundef %phydev, i32 noundef 0) #7
  tail call fastcc void @vsc85xx_eth_cmp1_init(ptr noundef %phydev, i32 noundef 1) #7
  tail call fastcc void @vsc85xx_ip_cmp1_init(ptr noundef %phydev, i32 noundef 1) #7
  tail call fastcc void @vsc85xx_ptp_cmp_init(ptr noundef %phydev, i32 noundef 1) #7
  %call.i254.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 0) #7
  %and.i255.i = and i32 %call.i254.i, -2031617
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 0, i32 noundef %and.i255.i) #7
  %call1.i.i = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 817) #7
  %and2.i.i = and i32 %call1.i.i, -4
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 817, i32 noundef %and2.i.i) #7
  %mii_ts.i = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 13
  %70 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @vsc85xx_rxtstamp, ptr %mii_ts.i, align 4
  %txtstamp.i = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 13, i32 1
  %71 = ptrtoint ptr %txtstamp.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @vsc85xx_txtstamp, ptr %txtstamp.i, align 4
  %hwtstamp.i = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 13, i32 2
  %72 = ptrtoint ptr %hwtstamp.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @vsc85xx_hwtstamp, ptr %hwtstamp.i, align 4
  %ts_info.i = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 13, i32 4
  %73 = ptrtoint ptr %ts_info.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @vsc85xx_ts_info, ptr %ts_info.i, align 4
  %mii_ts73.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 37
  %74 = ptrtoint ptr %mii_ts73.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %mii_ts.i, ptr %mii_ts73.i, align 4
  %ptp.i = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 15
  %75 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ptp.i, align 4
  %caps.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %76, i32 0, i32 2
  %77 = call ptr @memcpy(ptr %caps.i, ptr @vsc85xx_clk_caps, i32 108)
  %78 = load ptr, ptr %ptp.i, align 4
  %caps75.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %78, i32 0, i32 2
  %call76.i = tail call ptr @ptp_clock_register(ptr noundef %caps75.i, ptr noundef %phydev) #7
  %79 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ptp.i, align 4
  %ptp_clock.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call76.i, ptr %ptp_clock.i, align 4
  %82 = load ptr, ptr %ptp.i, align 4
  %ptp_clock79.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %ptp_clock79.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ptp_clock79.i, align 4
  %cmp.i.i.i = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  %85 = ptrtoint ptr %84 to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %85, i32 0
  br label %return

return:                                           ; preds = %__vsc8584_init_ptp.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %spec.select.i.i, %__vsc8584_init_ptp.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc8584_handle_ts_interrupt(ptr nocapture noundef readonly %phydev) local_unnamed_addr #0 align 64 {
entry:
  %shhwtstamps.i.i = alloca %struct.skb_shared_hwtstamps, align 8
  %fifo.i.i = alloca %struct.vsc85xx_ts_fifo, align 4
  %skb_sig.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ts_lock = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ts_lock, i32 noundef 0) #7
  %call = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 77)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 77, i32 noundef %call)
  %and = and i32 %call, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %ts_lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %ptp = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp, align 4
  %4 = getelementptr inbounds %struct.vsc85xx_ts_fifo, ptr %fifo.i.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.vsc85xx_ts_fifo, ptr %fifo.i.i, i32 0, i32 2
  %6 = getelementptr inbounds [16 x i8], ptr %skb_sig.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [16 x i8], ptr %skb_sig.i.i, i32 0, i32 2
  %8 = getelementptr inbounds [16 x i8], ptr %skb_sig.i.i, i32 0, i32 3
  %9 = getelementptr inbounds [16 x i8], ptr %skb_sig.i.i, i32 0, i32 4
  %10 = getelementptr inbounds [16 x i8], ptr %skb_sig.i.i, i32 0, i32 10
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 1
  %incdec.ptr4.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 2
  %incdec.ptr11.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 3
  %incdec.ptr19.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 5
  %incdec.ptr23.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 6
  %incdec.ptr11.1.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 7
  %incdec.ptr15.1.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 8
  %incdec.ptr19.1.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 9
  %incdec.ptr11.2.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 11
  %incdec.ptr15.2.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 12
  %incdec.ptr19.2.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 13
  %incdec.ptr23.2.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 14
  %incdec.ptr11.3.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 15
  %incdec.ptr15.3.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 16
  %incdec.ptr19.3.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 17
  %incdec.ptr23.3.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 18
  %incdec.ptr11.4.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 19
  %incdec.ptr15.4.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 20
  %incdec.ptr19.4.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 21
  %incdec.ptr23.4.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 22
  %incdec.ptr11.5.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 23
  %incdec.ptr15.5.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 24
  %incdec.ptr19.5.i.i = getelementptr inbounds i8, ptr %fifo.i.i, i32 25
  %tx_queue.i.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %3, i32 0, i32 3
  %qlen.i.i.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %3, i32 0, i32 3, i32 1
  %prev.i.i.i.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %3, i32 0, i32 3, i32 0, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %vsc85xx_dequeue_skb.exit.i.do.body.i_crit_edge, %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i.i) #7
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %fifo.i.i) #7
  %11 = call ptr @memset(ptr %fifo.i.i, i32 255, i32 26)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %skb_sig.i.i) #7
  %12 = call ptr @memset(ptr %skb_sig.i.i, i32 255, i32 16)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call.i.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %14, i32 noundef 2, i16 noundef zeroext 92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.i.vsc85xx_dequeue_skb.exit.i_crit_edge

do.body.i.vsc85xx_dequeue_skb.exit.i_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsc85xx_dequeue_skb.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  %conv.i.i = trunc i32 %call.i.i to i8
  %15 = ptrtoint ptr %fifo.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i.i, ptr %fifo.i.i, align 4
  %shr.i.i = lshr i32 %call.i.i, 8
  %conv3.i.i = trunc i32 %shr.i.i to i8
  %16 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i.i, ptr %incdec.ptr.i.i, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %call8.i.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %18, i32 noundef 2, i16 noundef zeroext 93) #7
  %conv10.i.i = trunc i32 %call8.i.i to i8
  %19 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv10.i.i, ptr %incdec.ptr4.i.i, align 2
  %shr12.i.i = lshr i32 %call8.i.i, 8
  %conv14.i.i = trunc i32 %shr12.i.i to i8
  %20 = ptrtoint ptr %incdec.ptr11.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv14.i.i, ptr %incdec.ptr11.i.i, align 1
  %shr16.i.i = lshr i32 %call8.i.i, 16
  %conv18.i.i = trunc i32 %shr16.i.i to i8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv18.i.i, ptr %4, align 4
  %shr20.i.i = lshr i32 %call8.i.i, 24
  %conv22.i.i = trunc i32 %shr20.i.i to i8
  %22 = ptrtoint ptr %incdec.ptr19.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv22.i.i, ptr %incdec.ptr19.i.i, align 1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %call8.1.i.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %24, i32 noundef 2, i16 noundef zeroext 94) #7
  %conv10.1.i.i = trunc i32 %call8.1.i.i to i8
  %25 = ptrtoint ptr %incdec.ptr23.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10.1.i.i, ptr %incdec.ptr23.i.i, align 2
  %shr12.1.i.i = lshr i32 %call8.1.i.i, 8
  %conv14.1.i.i = trunc i32 %shr12.1.i.i to i8
  %26 = ptrtoint ptr %incdec.ptr11.1.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv14.1.i.i, ptr %incdec.ptr11.1.i.i, align 1
  %shr16.1.i.i = lshr i32 %call8.1.i.i, 16
  %conv18.1.i.i = trunc i32 %shr16.1.i.i to i8
  %27 = ptrtoint ptr %incdec.ptr15.1.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv18.1.i.i, ptr %incdec.ptr15.1.i.i, align 4
  %shr20.1.i.i = lshr i32 %call8.1.i.i, 24
  %conv22.1.i.i = trunc i32 %shr20.1.i.i to i8
  %28 = ptrtoint ptr %incdec.ptr19.1.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv22.1.i.i, ptr %incdec.ptr19.1.i.i, align 1
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %call8.2.i.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %30, i32 noundef 2, i16 noundef zeroext 95) #7
  %conv10.2.i.i = trunc i32 %call8.2.i.i to i8
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv10.2.i.i, ptr %5, align 2
  %shr12.2.i.i = lshr i32 %call8.2.i.i, 8
  %conv14.2.i.i = trunc i32 %shr12.2.i.i to i8
  %32 = ptrtoint ptr %incdec.ptr11.2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv14.2.i.i, ptr %incdec.ptr11.2.i.i, align 1
  %shr16.2.i.i = lshr i32 %call8.2.i.i, 16
  %conv18.2.i.i = trunc i32 %shr16.2.i.i to i8
  %33 = ptrtoint ptr %incdec.ptr15.2.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv18.2.i.i, ptr %incdec.ptr15.2.i.i, align 4
  %shr20.2.i.i = lshr i32 %call8.2.i.i, 24
  %conv22.2.i.i = trunc i32 %shr20.2.i.i to i8
  %34 = ptrtoint ptr %incdec.ptr19.2.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv22.2.i.i, ptr %incdec.ptr19.2.i.i, align 1
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %call8.3.i.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %36, i32 noundef 2, i16 noundef zeroext 96) #7
  %conv10.3.i.i = trunc i32 %call8.3.i.i to i8
  %37 = ptrtoint ptr %incdec.ptr23.2.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv10.3.i.i, ptr %incdec.ptr23.2.i.i, align 2
  %shr12.3.i.i = lshr i32 %call8.3.i.i, 8
  %conv14.3.i.i = trunc i32 %shr12.3.i.i to i8
  %38 = ptrtoint ptr %incdec.ptr11.3.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv14.3.i.i, ptr %incdec.ptr11.3.i.i, align 1
  %shr16.3.i.i = lshr i32 %call8.3.i.i, 16
  %conv18.3.i.i = trunc i32 %shr16.3.i.i to i8
  %39 = ptrtoint ptr %incdec.ptr15.3.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv18.3.i.i, ptr %incdec.ptr15.3.i.i, align 4
  %shr20.3.i.i = lshr i32 %call8.3.i.i, 24
  %conv22.3.i.i = trunc i32 %shr20.3.i.i to i8
  %40 = ptrtoint ptr %incdec.ptr19.3.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv22.3.i.i, ptr %incdec.ptr19.3.i.i, align 1
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %call8.4.i.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %42, i32 noundef 2, i16 noundef zeroext 97) #7
  %conv10.4.i.i = trunc i32 %call8.4.i.i to i8
  %43 = ptrtoint ptr %incdec.ptr23.3.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv10.4.i.i, ptr %incdec.ptr23.3.i.i, align 2
  %shr12.4.i.i = lshr i32 %call8.4.i.i, 8
  %conv14.4.i.i = trunc i32 %shr12.4.i.i to i8
  %44 = ptrtoint ptr %incdec.ptr11.4.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv14.4.i.i, ptr %incdec.ptr11.4.i.i, align 1
  %shr16.4.i.i = lshr i32 %call8.4.i.i, 16
  %conv18.4.i.i = trunc i32 %shr16.4.i.i to i8
  %45 = ptrtoint ptr %incdec.ptr15.4.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv18.4.i.i, ptr %incdec.ptr15.4.i.i, align 4
  %shr20.4.i.i = lshr i32 %call8.4.i.i, 24
  %conv22.4.i.i = trunc i32 %shr20.4.i.i to i8
  %46 = ptrtoint ptr %incdec.ptr19.4.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv22.4.i.i, ptr %incdec.ptr19.4.i.i, align 1
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %call8.5.i.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %48, i32 noundef 2, i16 noundef zeroext 98) #7
  %conv10.5.i.i = trunc i32 %call8.5.i.i to i8
  %49 = ptrtoint ptr %incdec.ptr23.4.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv10.5.i.i, ptr %incdec.ptr23.4.i.i, align 2
  %shr12.5.i.i = lshr i32 %call8.5.i.i, 8
  %conv14.5.i.i = trunc i32 %shr12.5.i.i to i8
  %50 = ptrtoint ptr %incdec.ptr11.5.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv14.5.i.i, ptr %incdec.ptr11.5.i.i, align 1
  %shr16.5.i.i = lshr i32 %call8.5.i.i, 16
  %conv18.5.i.i = trunc i32 %shr16.5.i.i to i8
  %51 = ptrtoint ptr %incdec.ptr15.5.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv18.5.i.i, ptr %incdec.ptr15.5.i.i, align 4
  %shr20.5.i.i = lshr i32 %call8.5.i.i, 24
  %conv22.5.i.i = trunc i32 %shr20.5.i.i to i8
  %52 = ptrtoint ptr %incdec.ptr19.5.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv22.5.i.i, ptr %incdec.ptr19.5.i.i, align 1
  %53 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp25.i.i = icmp slt i32 %54, 1
  br i1 %cmp25.i.i, label %if.end.i.i.vsc85xx_dequeue_skb.exit.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

if.end.i.i.vsc85xx_dequeue_skb.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsc85xx_dequeue_skb.exit.i

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %dec87.in.i.i = phi i32 [ %dec87.i.i, %while.cond.backedge.i.i.while.body.i.i_crit_edge ], [ %54, %if.end.i.i.while.body.i.i_crit_edge ]
  %dec87.i.i = add i32 %dec87.in.i.i, -1
  %55 = ptrtoint ptr %tx_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_queue.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %56, %tx_queue.i.i
  %tobool.not.i82.i.i = icmp eq ptr %56, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i82.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.vsc85xx_dequeue_skb.exit.i_crit_edge, label %if.end34.i.i

while.body.i.i.vsc85xx_dequeue_skb.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsc85xx_dequeue_skb.exit.i

if.end34.i.i:                                     ; preds = %while.body.i.i
  %57 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %56, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %62, ptr %prev17.i.i.i.i, align 4
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %60, ptr %62, align 8
  %head.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 18
  %65 = ptrtoint ptr %head.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i.i.i.i.i, align 8
  %mac_header.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 15, i32 0, i32 21
  %67 = ptrtoint ptr %mac_header.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mac_header.i.i.i.i.i.i, align 2
  %conv.i.i.i.i.i.i = zext i16 %68 to i32
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %66, i32 %conv.i.i.i.i.i.i
  %h_proto.i.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %h_proto.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %h_proto.i.i.i.i, align 1
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %70, label %if.end34.i.i.if.then38.i.i_crit_edge [
    i16 -30473, label %if.then.i.i.i.i
    i16 2048, label %if.end8.i.i.i.i
  ]

if.end34.i.i.if.then38.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i.i

if.then.i.i.i.i:                                  ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 15, i32 0, i32 20
  %72 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %73 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %66, i32 %conv.i.i.i.i.i
  br label %get_ptp_header_tx.exit.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end34.i.i
  %network_header.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 15, i32 0, i32 20
  %74 = ptrtoint ptr %network_header.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %network_header.i.i.i.i.i.i, align 4
  %conv.i.i21.i.i.i.i = zext i16 %75 to i32
  %add.ptr.i.i22.i.i.i.i = getelementptr i8, ptr %66, i32 %conv.i.i21.i.i.i.i
  %76 = ptrtoint ptr %add.ptr.i.i22.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load.i.i.i.i.i = load i8, ptr %add.ptr.i.i22.i.i.i.i, align 4
  %bf.lshr.mask.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i8 %bf.lshr.mask.i.i.i.i.i, 64
  br i1 %cmp.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i, label %if.end8.i.i.i.i.if.then38.i.i_crit_edge

if.end8.i.i.i.i.if.then38.i.i_crit_edge:          ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end8.i.i.i.i
  %transport_header.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 15, i32 0, i32 19
  %77 = ptrtoint ptr %transport_header.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %transport_header.i.i.i.i.i.i, align 2
  %conv.i.i24.i.i.i.i = zext i16 %78 to i32
  %add.ptr.i.i25.i.i.i.i = getelementptr i8, ptr %66, i32 8
  %protocol.i.i.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i22.i.i.i.i, i32 0, i32 6
  %79 = ptrtoint ptr %protocol.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %protocol.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %80)
  %cmp3.not.i.i.i.i.i = icmp eq i8 %80, 17
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i25.i.i.i.i, i32 %conv.i.i24.i.i.i.i
  br i1 %cmp3.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.get_ptp_header_tx.exit.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.if.then38.i.i_crit_edge

lor.lhs.false.i.i.i.i.i.if.then38.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i.i

lor.lhs.false.i.i.i.i.i.get_ptp_header_tx.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ptp_header_tx.exit.i.i.i

get_ptp_header_tx.exit.i.i.i:                     ; preds = %lor.lhs.false.i.i.i.i.i.get_ptp_header_tx.exit.i.i.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %add.ptr.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.get_ptp_header_tx.exit.i.i.i_crit_edge ]
  %tobool.not.i77.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool.not.i77.i.i, label %get_ptp_header_tx.exit.i.i.i.if.then38.i.i_crit_edge, label %if.end39.i.i

get_ptp_header_tx.exit.i.i.i.if.then38.i.i_crit_edge: ; preds = %get_ptp_header_tx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %get_ptp_header_tx.exit.i.i.i.if.then38.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.if.then38.i.i_crit_edge, %if.end8.i.i.i.i.if.then38.i.i_crit_edge, %if.end34.i.i.if.then38.i.i_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %56, i32 noundef 0) #7
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %if.end46.i.i, %if.then38.i.i
  %tobool29.not.i.i = icmp eq i32 %dec87.i.i, 0
  br i1 %tobool29.not.i.i, label %while.cond.backedge.i.i.vsc85xx_dequeue_skb.exit.i_crit_edge, label %while.cond.backedge.i.i.while.body.i.i_crit_edge

while.cond.backedge.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.cond.backedge.i.i.vsc85xx_dequeue_skb.exit.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsc85xx_dequeue_skb.exit.i

if.end39.i.i:                                     ; preds = %get_ptp_header_tx.exit.i.i.i
  %seq_id.i.i.i = getelementptr inbounds %struct.vsc85xx_ptphdr, ptr %retval.0.i.i.i.i, i32 0, i32 10
  %81 = ptrtoint ptr %seq_id.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %seq_id.i.i.i, align 1
  %83 = lshr i16 %82, 8
  %conv2.i.i.i = trunc i16 %83 to i8
  %84 = ptrtoint ptr %skb_sig.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv2.i.i.i, ptr %skb_sig.i.i, align 1
  %conv5.i.i.i = trunc i16 %82 to i8
  %85 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv5.i.i.i, ptr %6, align 1
  %domain.i.i.i = getelementptr inbounds %struct.vsc85xx_ptphdr, ptr %retval.0.i.i.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %domain.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %domain.i.i.i, align 1
  %88 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %7, align 1
  %89 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %retval.0.i.i.i.i, align 1
  %91 = and i8 %90, 15
  %92 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %8, align 1
  %93 = call ptr @memcpy(ptr %9, ptr %add.ptr.i.i.i.i.i.i, i32 6)
  %94 = zext i8 %91 to i32
  %95 = call ptr @memset(ptr %10, i32 %94, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %skb_sig.i.i, ptr noundef dereferenceable(16) %5, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool43.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool43.not.i.i, label %if.then44.i.i, label %if.end46.i.i

if.then44.i.i:                                    ; preds = %if.end39.i.i
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 6)
  %bf.load.i.i = load i48, ptr %4, align 4
  %cmp.i.i.i = icmp ugt i48 %bf.load.i.i, 9223372035
  br i1 %cmp.i.i.i, label %if.then44.i.i.ktime_set.exit.i.i_crit_edge, label %if.end.i78.i.i, !prof !56

if.then44.i.i.ktime_set.exit.i.i_crit_edge:       ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ktime_set.exit.i.i

if.end.i78.i.i:                                   ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.cast.i.i = zext i48 %bf.load.i.i to i64
  %97 = ptrtoint ptr %fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fifo.i.i, align 4
  %mul.i.i.i = mul nuw nsw i64 %bf.cast.i.i, 1000000000
  %conv.i.i.i = zext i32 %98 to i64
  %add.i.i.i = add nuw i64 %mul.i.i.i, %conv.i.i.i
  br label %ktime_set.exit.i.i

ktime_set.exit.i.i:                               ; preds = %if.end.i78.i.i, %if.then44.i.i.ktime_set.exit.i.i_crit_edge
  %retval.0.i79.i.i = phi i64 [ %add.i.i.i, %if.end.i78.i.i ], [ 9223372036854775807, %if.then44.i.i.ktime_set.exit.i.i_crit_edge ]
  %99 = ptrtoint ptr %shhwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %retval.0.i79.i.i, ptr %shhwtstamps.i.i, align 8
  call void @skb_complete_tx_timestamp(ptr noundef nonnull %56, ptr noundef nonnull %shhwtstamps.i.i) #7
  br label %vsc85xx_dequeue_skb.exit.i

if.end46.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i.i.i, align 4
  %102 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %tx_queue.i.i, ptr %56, align 8
  %103 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %prev9.i.i.i.i, align 4
  store volatile ptr %56, ptr %prev.i.i.i.i, align 4
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %56, ptr %101, align 4
  %105 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %106, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i.i, align 4
  br label %while.cond.backedge.i.i

vsc85xx_dequeue_skb.exit.i:                       ; preds = %ktime_set.exit.i.i, %while.cond.backedge.i.i.vsc85xx_dequeue_skb.exit.i_crit_edge, %while.body.i.i.vsc85xx_dequeue_skb.exit.i_crit_edge, %if.end.i.i.vsc85xx_dequeue_skb.exit.i_crit_edge, %do.body.i.vsc85xx_dequeue_skb.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %skb_sig.i.i) #7
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %fifo.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i.i) #7
  %107 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %3, align 4
  %call.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %108, i32 noundef 2, i16 noundef zeroext 91) #7
  %109 = and i32 %call.i, 57344
  %cmp.not.i = icmp eq i32 %109, 0
  br i1 %cmp.not.i, label %vsc85xx_dequeue_skb.exit.i.if.end11_crit_edge, label %vsc85xx_dequeue_skb.exit.i.do.body.i_crit_edge

vsc85xx_dequeue_skb.exit.i.do.body.i_crit_edge:   ; preds = %vsc85xx_dequeue_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

vsc85xx_dequeue_skb.exit.i.if.end11_crit_edge:    ; preds = %vsc85xx_dequeue_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else:                                          ; preds = %if.end
  %and6 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.if.end11_crit_edge, label %if.then8

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.else
  %ptp9 = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 15
  %110 = ptrtoint ptr %ptp9 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ptp9, align 4
  %tx_queue = getelementptr inbounds %struct.vsc85xx_ptp, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tx_queue, align 4
  %cmp.i.i2.i = icmp eq ptr %113, %tx_queue
  %tobool.not.i13.i = icmp eq ptr %113, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then8.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

if.then8.__skb_queue_purge.exit_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %if.then8
  %qlen.i.i.i24 = getelementptr inbounds %struct.vsc85xx_ptp, ptr %111, i32 0, i32 3, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %114 = phi ptr [ %113, %while.body.lr.ph.i ], [ %124, %while.body.i.while.body.i_crit_edge ]
  %115 = ptrtoint ptr %qlen.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qlen.i.i.i24, align 4
  %sub.i.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i24, align 4
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %114, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %114, i32 0, i32 1
  %119 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %114, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %118, i32 0, i32 1
  %121 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %120, ptr %prev17.i.i.i, align 4
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %118, ptr %120, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %114, i32 noundef 0) #7
  %123 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tx_queue, align 4
  %cmp.i.i.i25 = icmp eq ptr %124, %tx_queue
  %tobool.not.i1.i = icmp eq ptr %124, null
  %tobool.not.i.i26 = or i1 %cmp.i.i.i25, %tobool.not.i1.i
  br i1 %tobool.not.i.i26, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %if.then8.__skb_queue_purge.exit_crit_edge
  %call.i27 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 91) #7
  %or.i = or i32 %call.i27, 65536
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 91, i32 noundef %or.i) #7
  %and.i = and i32 %call.i27, -65537
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 91, i32 noundef %and.i) #7
  br label %if.end11

if.end11:                                         ; preds = %__skb_queue_purge.exit, %if.else.if.end11_crit_edge, %vsc85xx_dequeue_skb.exit.i.if.end11_crit_edge
  call void @mutex_unlock(ptr noundef %ts_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_ts_read_csr(ptr nocapture noundef readonly %phydev, i32 noundef %blk, i16 noundef zeroext %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %addr2 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr2, align 8
  %ts_base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ts_base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_base_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  %6 = zext i32 %blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %blk, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %cmp, i16 0, i16 4096
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cond5 = select i1 %cmp, i16 2048, i16 6144
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cond8 = select i1 %cmp, i16 12288, i16 14336
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %blk_hw.0 = phi i16 [ %cond8, %sw.default ], [ %cond5, %sw.bb3 ], [ %cond, %sw.bb ]
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #7
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 8
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i36 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i36) #7
  br i1 %call.i, label %sw.epilog.phy_ts_base_write.exit_crit_edge, label %land.rhs.i

sw.epilog.phy_ts_base_write.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit

land.rhs.i:                                       ; preds = %sw.epilog
  %.b1.i = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.phy_ts_base_write.exit_crit_edge, label %if.then.i, !prof !54

land.rhs.i.phy_ts_base_write.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit

phy_ts_base_write.exit:                           ; preds = %if.then.i, %land.rhs.i.phy_ts_base_write.exit_crit_edge, %sw.epilog.phy_ts_base_write.exit_crit_edge
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i = getelementptr inbounds %struct.vsc8531_private, ptr %10, i32 0, i32 17
  %15 = ptrtoint ptr %ts_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ts_base_addr.i, align 4
  %call39.i = tail call i32 @__mdiobus_write(ptr noundef %14, i32 noundef %16, i32 noundef 31, i16 noundef zeroext 5512) #7
  %or = or i16 %blk_hw.0, %addr
  %or9 = or i16 %or, -16384
  %17 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv1, align 8
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i39 = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 8
  %call.i40 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i39) #7
  br i1 %call.i40, label %phy_ts_base_write.exit.phy_ts_base_write.exit46_crit_edge, label %land.rhs.i42

phy_ts_base_write.exit.phy_ts_base_write.exit46_crit_edge: ; preds = %phy_ts_base_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit46

land.rhs.i42:                                     ; preds = %phy_ts_base_write.exit
  %.b1.i41 = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i41, label %land.rhs.i42.phy_ts_base_write.exit46_crit_edge, label %if.then.i43, !prof !54

land.rhs.i42.phy_ts_base_write.exit46_crit_edge:  ; preds = %land.rhs.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit46

if.then.i43:                                      ; preds = %land.rhs.i42
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit46

phy_ts_base_write.exit46:                         ; preds = %if.then.i43, %land.rhs.i42.phy_ts_base_write.exit46_crit_edge, %phy_ts_base_write.exit.phy_ts_base_write.exit46_crit_edge
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i44 = getelementptr inbounds %struct.vsc8531_private, ptr %18, i32 0, i32 17
  %23 = ptrtoint ptr %ts_base_addr.i44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ts_base_addr.i44, align 4
  %call39.i45 = tail call i32 @__mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 16, i16 noundef zeroext %or9) #7
  br label %do.body

do.body:                                          ; preds = %phy_ts_base_read.exit.do.body_crit_edge, %phy_ts_base_write.exit46
  %cnt.0 = phi i32 [ 0, %phy_ts_base_write.exit46 ], [ %inc, %phy_ts_base_read.exit.do.body_crit_edge ]
  %25 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv1, align 8
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i49 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 8
  %call.i50 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i49) #7
  br i1 %call.i50, label %do.body.phy_ts_base_read.exit_crit_edge, label %land.rhs.i51

do.body.phy_ts_base_read.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit

land.rhs.i51:                                     ; preds = %do.body
  %.b44.i = load i1, ptr @phy_ts_base_read.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i51.phy_ts_base_read.exit_crit_edge, label %if.then.i52, !prof !54

land.rhs.i51.phy_ts_base_read.exit_crit_edge:     ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit

if.then.i52:                                      ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 41, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_read.exit

phy_ts_base_read.exit:                            ; preds = %if.then.i52, %land.rhs.i51.phy_ts_base_read.exit_crit_edge, %do.body.phy_ts_base_read.exit_crit_edge
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i53 = getelementptr inbounds %struct.vsc8531_private, ptr %26, i32 0, i32 17
  %31 = ptrtoint ptr %ts_base_addr.i53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ts_base_addr.i53, align 4
  %call39.i54 = tail call i32 @__mdiobus_read(ptr noundef %30, i32 noundef %32, i32 noundef 16) #7
  %and = and i32 %call39.i54, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %inc = add nuw nsw i32 %cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cnt.0)
  %cmp14 = icmp ult i32 %cnt.0, 8
  %or.cond = select i1 %tobool13.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %phy_ts_base_read.exit.do.body_crit_edge, label %do.end

phy_ts_base_read.exit.do.body_crit_edge:          ; preds = %phy_ts_base_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %phy_ts_base_read.exit
  %33 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv1, align 8
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i57 = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 8
  %call.i58 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i57) #7
  br i1 %call.i58, label %do.end.phy_ts_base_read.exit64_crit_edge, label %land.rhs.i60

do.end.phy_ts_base_read.exit64_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit64

land.rhs.i60:                                     ; preds = %do.end
  %.b44.i59 = load i1, ptr @phy_ts_base_read.__already_done, align 1
  br i1 %.b44.i59, label %land.rhs.i60.phy_ts_base_read.exit64_crit_edge, label %if.then.i61, !prof !54

land.rhs.i60.phy_ts_base_read.exit64_crit_edge:   ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit64

if.then.i61:                                      ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 41, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_read.exit64

phy_ts_base_read.exit64:                          ; preds = %if.then.i61, %land.rhs.i60.phy_ts_base_read.exit64_crit_edge, %do.end.phy_ts_base_read.exit64_crit_edge
  %37 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i62 = getelementptr inbounds %struct.vsc8531_private, ptr %34, i32 0, i32 17
  %39 = ptrtoint ptr %ts_base_addr.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ts_base_addr.i62, align 4
  %call39.i63 = tail call i32 @__mdiobus_read(ptr noundef %38, i32 noundef %40, i32 noundef 18) #7
  %41 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv1, align 8
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i67 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 8
  %call.i68 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i67) #7
  br i1 %call.i68, label %phy_ts_base_read.exit64.phy_ts_base_read.exit74_crit_edge, label %land.rhs.i70

phy_ts_base_read.exit64.phy_ts_base_read.exit74_crit_edge: ; preds = %phy_ts_base_read.exit64
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit74

land.rhs.i70:                                     ; preds = %phy_ts_base_read.exit64
  %.b44.i69 = load i1, ptr @phy_ts_base_read.__already_done, align 1
  br i1 %.b44.i69, label %land.rhs.i70.phy_ts_base_read.exit74_crit_edge, label %if.then.i71, !prof !54

land.rhs.i70.phy_ts_base_read.exit74_crit_edge:   ; preds = %land.rhs.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_read.exit74

if.then.i71:                                      ; preds = %land.rhs.i70
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 41, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_read.exit74

phy_ts_base_read.exit74:                          ; preds = %if.then.i71, %land.rhs.i70.phy_ts_base_read.exit74_crit_edge, %phy_ts_base_read.exit64.phy_ts_base_read.exit74_crit_edge
  %45 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i72 = getelementptr inbounds %struct.vsc8531_private, ptr %42, i32 0, i32 17
  %47 = ptrtoint ptr %ts_base_addr.i72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ts_base_addr.i72, align 4
  %call39.i73 = tail call i32 @__mdiobus_read(ptr noundef %46, i32 noundef %48, i32 noundef 17) #7
  %49 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv1, align 8
  %51 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i77 = getelementptr inbounds %struct.mii_bus, ptr %52, i32 0, i32 8
  %call.i78 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i77) #7
  br i1 %call.i78, label %phy_ts_base_read.exit74.phy_ts_base_write.exit84_crit_edge, label %land.rhs.i80

phy_ts_base_read.exit74.phy_ts_base_write.exit84_crit_edge: ; preds = %phy_ts_base_read.exit74
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit84

land.rhs.i80:                                     ; preds = %phy_ts_base_read.exit74
  %.b1.i79 = load i1, ptr @phy_ts_base_write.__already_done, align 1
  br i1 %.b1.i79, label %land.rhs.i80.phy_ts_base_write.exit84_crit_edge, label %if.then.i81, !prof !54

land.rhs.i80.phy_ts_base_write.exit84_crit_edge:  ; preds = %land.rhs.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_ts_base_write.exit84

if.then.i81:                                      ; preds = %land.rhs.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phy_ts_base_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 31, i32 noundef 9, ptr noundef null) #7
  br label %phy_ts_base_write.exit84

phy_ts_base_write.exit84:                         ; preds = %if.then.i81, %land.rhs.i80.phy_ts_base_write.exit84_crit_edge, %phy_ts_base_read.exit74.phy_ts_base_write.exit84_crit_edge
  %shl17 = shl i32 %call39.i63, 16
  %or19 = or i32 %call39.i73, %shl17
  %53 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i, align 8
  %ts_base_addr.i82 = getelementptr inbounds %struct.vsc8531_private, ptr %50, i32 0, i32 17
  %55 = ptrtoint ptr %ts_base_addr.i82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ts_base_addr.i82, align 4
  %call39.i83 = tail call i32 @__mdiobus_write(ptr noundef %54, i32 noundef %56, i32 noundef 31, i16 noundef zeroext 0) #7
  %57 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i86 = getelementptr inbounds %struct.mii_bus, ptr %58, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i86) #7
  ret i32 %or19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc8584_ptp_probe(ptr noundef %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 184, i32 noundef 3520) #7
  %ptp = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %ptp, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %phc_lock = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %phc_lock, ptr noundef nonnull @.str, ptr noundef nonnull @vsc8584_ptp_probe.__key) #7
  %ts_lock = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %ts_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @vsc8584_ptp_probe.__key.1) #7
  %call7 = tail call ptr @devm_gpiod_get_optional(ptr noundef %phydev, ptr noundef nonnull @.str.3, i32 noundef 19) #7
  %load_save = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %load_save to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %load_save, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end20

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.4, i32 noundef %4) #11
  %5 = ptrtoint ptr %load_save to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %load_save, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end20:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %phydev, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end13 ], [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc8584_ptp_probe_once(ptr nocapture noundef readonly %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shared1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %0 = ptrtoint ptr %shared1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared1, align 4
  %priv = getelementptr inbounds %struct.phy_package_shared, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @__mutex_init(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @vsc8584_ptp_probe_once.__key) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc85xx_ts_disable_flows(ptr noundef readonly %phydev, i32 noundef %blk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 432, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 440, i32 noundef 32)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 576, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 584, i32 noundef 32)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 288, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 0, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 144, i32 noundef 0)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.01 = phi i8 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = zext i8 %i.01 to i16
  %shl = shl nuw nsw i16 %conv, 4
  %conv3 = add nuw nsw i16 %shl, 448
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv3, i32 noundef 48)
  %conv7 = add nuw nsw i16 %shl, 592
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv7, i32 noundef 48)
  %conv11 = add nuw nsw i16 %shl, 16
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv11, i32 noundef 768)
  %conv15 = add nuw nsw i16 %shl, 160
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv15, i32 noundef 768)
  %conv19 = add nuw nsw i16 %shl, 304
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv19, i32 noundef 50331648)
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %i.01)
  %cmp21 = icmp ugt i8 %i.01, 5
  br i1 %cmp21, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv26 = add nuw nsw i16 %shl, 720
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv26, i32 noundef 0)
  %conv31 = add nuw nsw i16 %shl, 725
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv31, i32 noundef 0)
  %conv36 = add nuw nsw i16 %shl, 723
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv36, i32 noundef 0)
  %conv41 = add nuw nsw i16 %shl, 724
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv41, i32 noundef 0)
  %conv46 = add nuw nsw i16 %shl, 721
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv46, i32 noundef 0)
  %conv51 = add nuw nsw i16 %shl, 722
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv51, i32 noundef 0)
  %conv56 = add nuw nsw i16 %shl, 726
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv56, i32 noundef 0)
  %conv61 = add nuw nsw i16 %shl, 727
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv61, i32 noundef 0)
  %conv66 = add nuw nsw i16 %shl, 728
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv66, i32 noundef 0)
  %conv70 = add nuw nsw i16 %shl, 480
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext %conv70, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i8 %i.01, 1
  %cmp = icmp ult i8 %i.01, 7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc85xx_eth_cmp1_init(ptr nocapture noundef readonly %phydev, i32 noundef %blk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 8
  %ts_base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ts_base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_base_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 2, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 1, i32 noundef -2002255872)
  %cond = select i1 %cmp, i32 256, i32 512
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 16, i32 noundef %cond)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 17, i32 noundef 512)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 18, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 19, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 20, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 21, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 22, i32 noundef 0)
  %call = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 17)
  %and = and i32 %call, -209
  %or = or i32 %and, 16
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 17, i32 noundef %or)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc85xx_ip_cmp1_init(ptr nocapture noundef readonly %phydev, i32 noundef %blk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 8
  %ts_base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ts_base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_base_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 435, i32 noundef 319)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 437, i32 noundef 65535)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 436, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 438, i32 noundef 0)
  %call = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 448)
  %and = and i32 %call, -49
  %cond = select i1 %cmp, i32 16, i32 32
  %or = or i32 %and, %cond
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 448, i32 noundef %or)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 449, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 453, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 450, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 454, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 451, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 455, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 452, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 456, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 816, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc85xx_ptp_cmp_init(ptr nocapture noundef readonly %phydev, i32 noundef %blk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 8
  %ts_base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ts_base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_base_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  %cond = select i1 %cmp, i32 16, i32 32
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 720, i32 noundef %cond)
  %call = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 725)
  %and = and i32 %call, -2
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 725, i32 noundef %and)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 721, i32 noundef 0)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 723, i32 noundef 251658240)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 736, i32 noundef %cond)
  %call.1 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 741)
  %and.1 = and i32 %call.1, -2
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 741, i32 noundef %and.1)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 737, i32 noundef 16777216)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 739, i32 noundef 251658240)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vsc85xx_rxtstamp(ptr nocapture noundef readonly %mii_ts, ptr noundef %skb, i32 noundef %type) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #7
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %ptp = getelementptr i8, ptr %mii_ts, i32 28
  %1 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptp, align 4
  %configured = getelementptr inbounds %struct.vsc85xx_ptp, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_filter = getelementptr inbounds %struct.vsc85xx_ptp, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp2 = icmp eq i32 %type, 0
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %caps = getelementptr inbounds %struct.vsc85xx_ptp, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %priv2.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv2.i, align 8
  %phc_lock.i = getelementptr inbounds %struct.vsc8531_private, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %phc_lock.i, i32 noundef 0) #7
  call fastcc void @__vsc85xx_gettime(ptr noundef %caps, ptr noundef nonnull %ts) #7
  tail call void @mutex_unlock(ptr noundef %phc_lock.i) #7
  %10 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp, align 4
  %rx_filter7 = getelementptr inbounds %struct.vsc85xx_ptp, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %rx_filter7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_filter7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp.i = icmp eq i32 %13, 9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  br i1 %cmp.i, label %if.end4.get_ptp_header_rx.exit_crit_edge, label %if.end.i

if.end4.get_ptp_header_rx.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ptp_header_rx.exit

if.end.i:                                         ; preds = %if.end4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %15, align 4
  %bf.lshr.mask.i.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i.i)
  %cmp.not.i.i = icmp eq i8 %bf.lshr.mask.i.i, 64
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %bf.clear.i = shl i8 %bf.load.i, 2
  %17 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %17 to i32
  %add.ptr.i31 = getelementptr i8, ptr %15, i32 %mul.i
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %protocol.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %19)
  %cmp3.not.i.i = icmp eq i8 %19, 17
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i31, i32 8
  br i1 %cmp3.not.i.i, label %lor.lhs.false.i.i.get_ptp_header_rx.exit_crit_edge, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i.get_ptp_header_rx.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ptp_header_rx.exit

get_ptp_header_rx.exit:                           ; preds = %lor.lhs.false.i.i.get_ptp_header_rx.exit_crit_edge, %if.end4.get_ptp_header_rx.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end4.get_ptp_header_rx.exit_crit_edge ], [ %add.ptr.i.i, %lor.lhs.false.i.i.get_ptp_header_rx.exit_crit_edge ]
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %get_ptp_header_rx.exit.cleanup_crit_edge, label %if.end11

get_ptp_header_rx.exit.cleanup_crit_edge:         ; preds = %get_ptp_header_rx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %get_ptp_header_rx.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %20 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %hwtstamps.i, align 8
  %rsrvd2 = getelementptr inbounds %struct.vsc85xx_ptphdr, ptr %retval.0.i, i32 0, i32 7
  %23 = ptrtoint ptr %rsrvd2 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %rsrvd2, align 1
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %25 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp13 = icmp ult i32 %26, %24
  %27 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ts, align 8
  %dec = sext i1 %cmp13 to i64
  %29 = add i64 %28, %dec
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %29)
  %cmp.i32 = icmp sgt i64 %29, 9223372035
  br i1 %cmp.i32, label %if.end11.ktime_set.exit_crit_edge, label %if.end.i34, !prof !56

if.end11.ktime_set.exit_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %ktime_set.exit

if.end.i34:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i33 = mul i64 %29, 1000000000
  %conv.i = zext i32 %24 to i64
  %add.i = add i64 %mul.i33, %conv.i
  br label %ktime_set.exit

ktime_set.exit:                                   ; preds = %if.end.i34, %if.end11.ktime_set.exit_crit_edge
  %retval.0.i35 = phi i64 [ %add.i, %if.end.i34 ], [ 9223372036854775807, %if.end11.ktime_set.exit_crit_edge ]
  %30 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %retval.0.i35, ptr %hwtstamps.i, align 8
  %call18 = tail call i32 @netif_rx_ni(ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %ktime_set.exit, %get_ptp_header_rx.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %ktime_set.exit ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %get_ptp_header_rx.exit.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc85xx_txtstamp(ptr noundef %mii_ts, ptr noundef %skb, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp = getelementptr i8, ptr %mii_ts, i32 28
  %0 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp, align 4
  %configured = getelementptr inbounds %struct.vsc85xx_ptp, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_type = getelementptr inbounds %struct.vsc85xx_ptp, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_flags, align 1
  %9 = or i8 %8, 4
  store i8 %9, ptr %tx_flags, align 1
  %ts_lock = getelementptr i8, ptr %mii_ts, i32 44
  tail call void @mutex_lock_nested(ptr noundef %ts_lock, i32 noundef 0) #7
  %10 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp, align 4
  %tx_queue = getelementptr inbounds %struct.vsc85xx_ptp, ptr %11, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %tx_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %15 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %skb, ptr %13, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %11, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %ts_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_hwtstamp(ptr noundef %mii_ts, ptr nocapture noundef readonly %ifr) #0 align 64 {
entry:
  %cfg = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp = getelementptr i8, ptr %mii_ts, i32 28
  %0 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #7
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cfg, align 4, !annotation !57
  %5 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !57
  %7 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !57
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %9 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 12, i32 -1226833920) #12, !srcloc !58
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !54

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg, i32 noundef 12) #7
  %12 = call i32 @llvm.read_register.i32(metadata !44) #7
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !59
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg, ptr noundef %10, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !54

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cfg, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.cast = trunc i32 %17 to i3
  %19 = sext i3 %switch.cast to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %switch.masked = icmp eq i3 %switch.cast, 2
  %20 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptp, align 4
  %tx_type4 = getelementptr inbounds %struct.vsc85xx_ptp, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %tx_type4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %tx_type4, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %7, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %24, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.sw.epilog6_crit_edge
    i32 6, label %switch.lookup.sw.epilog6_crit_edge94
    i32 9, label %switch.lookup.sw.epilog6_crit_edge95
  ]

switch.lookup.sw.epilog6_crit_edge95:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

switch.lookup.sw.epilog6_crit_edge94:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

switch.lookup.sw.epilog6_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog6:                                       ; preds = %switch.lookup.sw.epilog6_crit_edge, %switch.lookup.sw.epilog6_crit_edge94, %switch.lookup.sw.epilog6_crit_edge95
  %26 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptp, align 4
  %rx_filter9 = getelementptr inbounds %struct.vsc85xx_ptp, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %rx_filter9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %24, ptr %rx_filter9, align 4
  %ts_lock = getelementptr i8, ptr %mii_ts, i32 44
  call void @mutex_lock_nested(ptr noundef %ts_lock, i32 noundef 0) #7
  %29 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptp, align 4
  %tx_queue = getelementptr inbounds %struct.vsc85xx_ptp, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_queue, align 4
  %cmp.i.i2.i = icmp eq ptr %32, %tx_queue
  %tobool.not.i13.i = icmp eq ptr %32, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %sw.epilog6.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

sw.epilog6.__skb_queue_purge.exit_crit_edge:      ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %sw.epilog6
  %qlen.i.i.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %30, i32 0, i32 3, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %33 = phi ptr [ %32, %while.body.lr.ph.i ], [ %43, %while.body.i.while.body.i_crit_edge ]
  %34 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %33, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %39, ptr %prev17.i.i.i, align 4
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %37, ptr %39, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %33, i32 noundef 0) #7
  %42 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_queue, align 4
  %cmp.i.i.i = icmp eq ptr %43, %tx_queue
  %tobool.not.i1.i = icmp eq ptr %43, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %sw.epilog6.__skb_queue_purge.exit_crit_edge
  %44 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptp, align 4
  %tx_queue12 = getelementptr inbounds %struct.vsc85xx_ptp, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %tx_queue12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %tx_queue12, ptr %tx_queue12, align 4
  %prev.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %45, i32 0, i32 3, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %tx_queue12, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %45, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %qlen.i, align 4
  %call13 = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 34)
  %and = and i32 %call13, -2
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 34, i32 noundef %and)
  %call14 = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 38)
  %and15 = and i32 %call14, -2
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 38, i32 noundef %and15)
  %call16 = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 0)
  %and17 = and i32 %call16, -13
  %49 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptp, align 4
  %tx_type19 = getelementptr inbounds %struct.vsc85xx_ptp, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %tx_type19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_type19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp = icmp eq i32 %52, 0
  %or = or i32 %and17, 4
  %spec.select = select i1 %cmp, i32 %or, i32 %and17
  %rx_filter23 = getelementptr inbounds %struct.vsc85xx_ptp, ptr %50, i32 0, i32 5
  %53 = ptrtoint ptr %rx_filter23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_filter23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp24 = icmp eq i32 %54, 0
  %or26 = or i32 %spec.select, 8
  %val.1 = select i1 %cmp24, i32 %or26, i32 %spec.select
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 0, i32 noundef %val.1)
  %call.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 91) #7
  %or.i = or i32 %call.i, 65536
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 91, i32 noundef %or.i) #7
  %and.i = and i32 %call.i, -65537
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 91, i32 noundef %and.i) #7
  %priv.i = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 26
  %55 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr.i, align 8
  %ts_base_addr.i = getelementptr inbounds %struct.vsc8531_private, ptr %56, i32 0, i32 17
  %59 = ptrtoint ptr %ts_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ts_base_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.i = icmp ne i32 %58, %60
  %ptp.i = getelementptr inbounds %struct.vsc8531_private, ptr %56, i32 0, i32 15
  %61 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ptp.i, align 4
  %rx_filter.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_filter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %64)
  %cmp2.i = icmp eq i32 %64, 6
  %call.i84 = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 1) #7
  %conv5.i = zext i1 %cmp.i to i32
  %shl.i = shl nuw nsw i32 1, %conv5.i
  %shl6.i = shl nuw nsw i32 %shl.i, 4
  %or.i85 = or i32 %shl6.i, %shl.i
  %neg.i = xor i32 %or.i85, -1
  %and10.i = and i32 %call.i84, %neg.i
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 1, i32 noundef %and10.i) #7
  %65 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ptp.i, align 4
  %rx_filter12.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %rx_filter12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_filter12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %68)
  %cmp13.i = icmp eq i32 %68, 9
  %call.i.i86 = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 0) #7
  %and.i.i = and i32 %call.i.i86, -8
  br i1 %cmp13.i, label %if.then.i87, label %if.else.i

if.then.i87:                                      ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %and.i.i, 5
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 0, i32 noundef %or.i.i) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 3, i32 noundef 100599) #7
  %call.i1.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 0) #7
  %and.i2.i = and i32 %call.i1.i, -8
  %or.i3.i = or i32 %and.i2.i, 5
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 0, i32 noundef %or.i3.i) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 3, i32 noundef 100599) #7
  br label %if.end.i

if.else.i:                                        ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or.i6.i = or i32 %and.i.i, 2
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 0, i32 noundef %or.i6.i) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 3, i32 noundef 67584) #7
  %call.i7.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 0) #7
  %and.i8.i = and i32 %call.i7.i, -8
  %or.i9.i = or i32 %and.i8.i, 2
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 0, i32 noundef %or.i9.i) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 3, i32 noundef 67584) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 432, i32 noundef 7173) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 432, i32 noundef 7173) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i87
  %69 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ptp.i, align 4
  %rx_filter22.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %rx_filter22.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_filter22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp23.i = icmp ne i32 %72, 0
  %73 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv.i, align 8
  %ptp.i.i = getelementptr inbounds %struct.vsc8531_private, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %ptp.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ptp.i.i, align 4
  %rx_filter.i.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %rx_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_filter.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %78)
  %cmp.i.i88 = icmp eq i32 %78, 9
  %..i.i = select i1 %cmp.i.i88, i32 1048576, i32 4194304
  %.2.i.i = select i1 %cmp.i.i88, i32 18553088, i32 0
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 19, i32 noundef %..i.i) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 18, i32 noundef %.2.i.i) #7
  %call4.i.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 16) #7
  %and.i10.i = and i32 %call4.i.i, -2
  %masksel.i.i = zext i1 %cmp23.i to i32
  %spec.select.i.i = or i32 %and.i10.i, %masksel.i.i
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 16, i32 noundef %spec.select.i.i) #7
  br i1 %cmp2.i, label %land.rhs.i, label %if.end.i.land.end.i_crit_edge

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ptp.i, align 4
  %rx_filter29.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %rx_filter29.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_filter29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp30.not.i = icmp eq i32 %82, 0
  %phi.sel.i = select i1 %cmp30.not.i, i32 512, i32 513
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i.land.end.i_crit_edge
  %83 = phi i32 [ 512, %if.end.i.land.end.i_crit_edge ], [ %phi.sel.i, %land.rhs.i ]
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 433, i32 noundef 3072) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 434, i32 noundef 622609) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 439, i32 noundef 20) #7
  %call.i11.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 440) #7
  %and.i12.i = and i32 %call.i11.i, -65332
  %or2.i.i = or i32 %and.i12.i, 6689
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 440, i32 noundef %or2.i.i) #7
  %call3.i.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 448) #7
  %and4.i.i = and i32 %call3.i.i, -770
  %spec.select.i13.i = or i32 %and4.i.i, %83
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 448, i32 noundef %spec.select.i13.i) #7
  %84 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ptp.i, align 4
  %rx_filter35.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %rx_filter35.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_filter35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp36.i = icmp ne i32 %87, 0
  call fastcc void @vsc85xx_ptp_conf(ptr noundef %3, i32 noundef 0, i1 noundef zeroext %switch.masked, i1 noundef zeroext %cmp36.i) #7
  %88 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ptp.i, align 4
  %tx_type.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %tx_type.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tx_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp40.i = icmp ne i32 %91, 0
  %92 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv.i, align 8
  %ptp.i15.i = getelementptr inbounds %struct.vsc8531_private, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %ptp.i15.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ptp.i15.i, align 4
  %rx_filter.i16.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %rx_filter.i16.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_filter.i16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %97)
  %cmp.i17.i = icmp eq i32 %97, 9
  %..i18.i = select i1 %cmp.i17.i, i32 1048576, i32 4194304
  %.2.i19.i = select i1 %cmp.i17.i, i32 18553088, i32 0
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 19, i32 noundef %..i18.i) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 18, i32 noundef %.2.i19.i) #7
  %call4.i20.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 16) #7
  %and.i21.i = and i32 %call4.i20.i, -2
  %masksel.i22.i = zext i1 %cmp40.i to i32
  %spec.select.i23.i = or i32 %and.i21.i, %masksel.i22.i
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 16, i32 noundef %spec.select.i23.i) #7
  br i1 %cmp2.i, label %land.rhs45.i, label %land.end.i.vsc85xx_ts_engine_init.exit_crit_edge

land.end.i.vsc85xx_ts_engine_init.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsc85xx_ts_engine_init.exit

land.rhs45.i:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ptp.i, align 4
  %tx_type47.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %tx_type47.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_type47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp48.not.i = icmp eq i32 %101, 0
  %phi.sel33.i = select i1 %cmp48.not.i, i32 512, i32 513
  br label %vsc85xx_ts_engine_init.exit

vsc85xx_ts_engine_init.exit:                      ; preds = %land.rhs45.i, %land.end.i.vsc85xx_ts_engine_init.exit_crit_edge
  %102 = phi i32 [ 512, %land.end.i.vsc85xx_ts_engine_init.exit_crit_edge ], [ %phi.sel33.i, %land.rhs45.i ]
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 433, i32 noundef 3072) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 434, i32 noundef 622609) #7
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 439, i32 noundef 20) #7
  %call.i24.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 440) #7
  %and.i25.i = and i32 %call.i24.i, -65332
  %or2.i26.i = or i32 %and.i25.i, 6689
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 440, i32 noundef %or2.i26.i) #7
  %call3.i27.i = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 448) #7
  %and4.i28.i = and i32 %call3.i27.i, -770
  %spec.select.i30.i = or i32 %and4.i28.i, %102
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 1, i16 noundef zeroext 448, i32 noundef %spec.select.i30.i) #7
  %103 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ptp.i, align 4
  %tx_type54.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %tx_type54.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tx_type54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp55.i = icmp ne i32 %106, 0
  call fastcc void @vsc85xx_ptp_conf(ptr noundef %3, i32 noundef 1, i1 noundef zeroext %switch.masked, i1 noundef zeroext %cmp55.i) #7
  %107 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ptp.i, align 4
  %tx_type65.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %tx_type65.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_type65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp66.not.i = icmp eq i32 %110, 0
  %or73.i = select i1 %cmp66.not.i, i32 0, i32 %shl6.i
  %spec.select.i = or i32 %or73.i, %and10.i
  %neg78.i = xor i32 %shl.i, -1
  %and79.i = and i32 %spec.select.i, %neg78.i
  %rx_filter81.i = getelementptr inbounds %struct.vsc85xx_ptp, ptr %108, i32 0, i32 5
  %111 = ptrtoint ptr %rx_filter81.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_filter81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp82.not.i = icmp eq i32 %112, 0
  %or88.i = or i32 %spec.select.i, %shl.i
  %val.1.i = select i1 %cmp82.not.i, i32 %and79.i, i32 %or88.i
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 1, i32 noundef %val.1.i) #7
  %call30 = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 34)
  %or31 = or i32 %call30, 1
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 34, i32 noundef %or31)
  %call32 = call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 38)
  %or33 = or i32 %call32, 1
  call fastcc void @vsc85xx_ts_write_csr(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 38, i32 noundef %or33)
  %113 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ptp, align 4
  %configured = getelementptr inbounds %struct.vsc85xx_ptp, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load = load i8, ptr %configured, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %configured, align 4
  call void @mutex_unlock(ptr noundef %ts_lock) #7
  %116 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #7
  %call.i.i77 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i77, label %vsc85xx_ts_engine_init.exit.cleanup_crit_edge, label %if.end.i.i81

vsc85xx_ts_engine_init.exit.cleanup_crit_edge:    ; preds = %vsc85xx_ts_engine_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i81:                                     ; preds = %vsc85xx_ts_engine_init.exit
  %118 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %117, i32 12, i32 -1226833920) #12, !srcloc !62
  %asmresult.i.i79 = extractvalue { i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i79)
  %cmp.i.i80 = icmp eq i32 %asmresult.i.i79, 0
  br i1 %cmp.i.i80, label %copy_to_user.exit, label %if.end.i.i81.cleanup_crit_edge

if.end.i.i81.cleanup_crit_edge:                   ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i82 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg, i32 noundef 12) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %117, ptr noundef nonnull %cfg, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool38.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select93 = select i1 %tobool38.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i81.cleanup_crit_edge, %vsc85xx_ts_engine_init.exit.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -34, %if.end.cleanup_crit_edge ], [ -34, %switch.lookup.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %vsc85xx_ts_engine_init.exit.cleanup_crit_edge ], [ -14, %if.end.i.i81.cleanup_crit_edge ], [ %spec.select93, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_ts_info(ptr nocapture noundef readonly %mii_ts, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp = getelementptr i8, ptr %mii_ts, i32 28
  %0 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp, align 4
  %ptp_clock = getelementptr inbounds %struct.vsc85xx_ptp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock, align 4
  %call = tail call i32 @ptp_clock_index(ptr noundef %3) #7
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %phc_index, align 4
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 69, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 577, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_gettime(ptr nocapture noundef readonly %info, ptr nocapture noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %priv2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 8
  %phc_lock = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %phc_lock, i32 noundef 0) #7
  tail call fastcc void @__vsc85xx_gettime(ptr noundef %info, ptr noundef %ts)
  tail call void @mutex_unlock(ptr noundef %phc_lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vsc85xx_gettime(ptr nocapture noundef readonly %info, ptr nocapture noundef %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %shared2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %shared2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared2, align 4
  %priv = getelementptr inbounds %struct.phy_package_shared, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %priv4 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv4, align 8
  %call = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 16)
  %or = or i32 %call, 2
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 16, i32 noundef %or)
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #7
  %load_save = getelementptr inbounds %struct.vsc8531_private, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %load_save to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %load_save, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #7
  %call5 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 20)
  %conv = zext i32 %call5 to i64
  %shl = shl nuw i64 %conv, 32
  %10 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shl, ptr %ts, align 8
  %call6 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 21)
  %conv7 = zext i32 %call6 to i64
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ts, align 8
  %add = add i64 %12, %conv7
  store i64 %add, ptr %ts, align 8
  %call9 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 22)
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %13 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call9, ptr %tv_nsec, align 8
  %14 = ptrtoint ptr %load_save to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %load_save, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 0) #7
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc85xx_ptp_conf(ptr nocapture noundef readonly %phydev, i32 noundef %blk, i1 noundef zeroext %one_step, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blk)
  %cmp3 = icmp eq i32 %blk, 0
  %masksel = zext i1 %enable to i32
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 728, i32 noundef 49152) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 726, i32 noundef 369107207) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 727, i32 noundef 4100) #7
  %call22.c17 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 720)
  %and.c18 = and i32 %call22.c17, -2
  %spec.select.c19 = or i32 %and.c18, %masksel
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 720, i32 noundef %spec.select.c19)
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 744, i32 noundef 49152) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 742, i32 noundef 369107207) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 743, i32 noundef 4100) #7
  br label %if.end19.1

if.else:                                          ; preds = %entry
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 728, i32 noundef 49152) #7
  br i1 %one_step, label %if.then11, label %if.else15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 726, i32 noundef 8453) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 727, i32 noundef 8714) #7
  %call22.c = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 720)
  %and.c = and i32 %call22.c, -2
  %spec.select.c = or i32 %and.c, %masksel
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 720, i32 noundef %spec.select.c)
  br label %if.else.1

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 726, i32 noundef 8464) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 727, i32 noundef 0) #7
  %call22.c14 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 720)
  %and.c15 = and i32 %call22.c14, -2
  %spec.select.c16 = or i32 %and.c15, %masksel
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 720, i32 noundef %spec.select.c16)
  br label %if.else.1

if.else.1:                                        ; preds = %if.else15, %if.then11
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 744, i32 noundef 49152) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 742, i32 noundef 8464) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef 1, i16 noundef zeroext 743, i32 noundef 0) #7
  br label %if.end19.1

if.end19.1:                                       ; preds = %if.else.1, %if.then
  %call22.1 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 736)
  %and.1 = and i32 %call22.1, -2
  %spec.select.1 = or i32 %and.1, %masksel
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %phydev, i32 noundef %blk, i16 noundef zeroext 736, i32 noundef %spec.select.1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_adjfine(ptr nocapture noundef readonly %info, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %1 = add i32 %0, -1111490561
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1111490495, i32 %1)
  %2 = icmp ult i32 %1, -1111490495
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %info, i32 -8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %priv2 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv2, align 8
  %conv54 = zext i32 %0 to i64
  %call = tail call i64 @div64_u64(i64 noundef 65536000000, i64 noundef %conv54) #7
  %7 = tail call i64 @llvm.umin.i64(i64 %call, i64 1000000000)
  %conv26 = trunc i64 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scaled_ppm)
  %cmp27 = icmp sgt i32 %scaled_ppm, 0
  %cond29 = select i1 %cmp27, i32 1073741824, i32 -2147483648
  %or = or i32 %cond29, %conv26
  %phc_lock = getelementptr inbounds %struct.vsc8531_private, ptr %6, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %phc_lock, i32 noundef 0) #7
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %4, i32 noundef 2, i16 noundef zeroext 26, i32 noundef %or)
  %call30 = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %4, i32 noundef 2, i16 noundef zeroext 16)
  %or31 = or i32 %call30, 16
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %4, i32 noundef 2, i16 noundef zeroext 16, i32 noundef %or31)
  tail call void @mutex_unlock(ptr noundef %phc_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_adjtime(ptr nocapture noundef readonly %info, i64 noundef %delta) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %priv2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 8
  %4 = tail call i64 @llvm.abs.i64(i64 %delta, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %4)
  %cmp4 = icmp sgt i64 %4, 999999999
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #7
  %5 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %phc_lock = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %phc_lock, i32 noundef 0) #7
  call fastcc void @__vsc85xx_gettime(ptr noundef %info, ptr noundef nonnull %ts)
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %6)
  %.fca.0.load = load i64, ptr %ts, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %ts, i32 0, i32 1
  %7 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load)
  %cmp.i.i = icmp sgt i64 %.fca.0.load, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %mul.i.i = mul i64 %.fca.0.load, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !56
  %add = add i64 %retval.0.i.i, %delta
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %add) #7
  call fastcc void @__vsc85xx_settime(ptr noundef %info, ptr noundef nonnull %ts)
  call void @mutex_unlock(ptr noundef %phc_lock) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp = icmp slt i64 %delta, 0
  %phc_lock10 = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %phc_lock10, i32 noundef 0) #7
  %8 = trunc i64 %delta to i32
  %extract.t = sub i32 0, %8
  %cond18.off0 = select i1 %cmp, i32 %extract.t, i32 %8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp19 = icmp sgt i64 %delta, 0
  %val.0.v = select i1 %cmp19, i32 -1073741824, i32 -2147483648
  %val.0 = or i32 %cond18.off0, %val.0.v
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 112, i32 noundef %val.0)
  tail call void @mutex_unlock(ptr noundef %phc_lock10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_settime(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %priv2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 8
  %phc_lock = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %phc_lock, i32 noundef 0) #7
  tail call fastcc void @__vsc85xx_settime(ptr noundef %info, ptr noundef %ts)
  tail call void @mutex_unlock(ptr noundef %phc_lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vsc85xx_settime(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %shared2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %shared2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared2, align 4
  %priv = getelementptr inbounds %struct.phy_package_shared, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %priv4 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv4, align 8
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ts, align 8
  %and = lshr i64 %9, 32
  %10 = trunc i64 %and to i32
  %conv = and i32 %10, 65535
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 17, i32 noundef %conv)
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ts, align 8
  %conv7 = trunc i64 %12 to i32
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 18, i32 noundef %conv7)
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %13 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tv_nsec, align 8
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 19, i32 noundef %14)
  %call = tail call fastcc i32 @vsc85xx_ts_read_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 16)
  %or = or i32 %call, 1
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 16, i32 noundef %or)
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #7
  %load_save = getelementptr inbounds %struct.vsc8531_private, ptr %7, i32 0, i32 16
  %15 = ptrtoint ptr %load_save to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %load_save, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 1) #7
  %and9 = and i32 %call, -2
  tail call fastcc void @vsc85xx_ts_write_csr(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 16, i32 noundef %and9)
  %17 = ptrtoint ptr %load_save to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %load_save, align 4
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 0) #7
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @vsc8584_ptp_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 1558, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @vsc8584_ptp_probe.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 1559, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 1566, i32 66}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 1570, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vsc8584_ptp_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @vsc8584_ptp_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @vsc8584_ptp_probe_once.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 1586, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vsc85xx_ingr_latency_macsec, !20, !"vsc85xx_ingr_latency_macsec", i1 false, i1 false}
!20 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 235, i32 18}
!21 = !{ptr @vsc85xx_egr_latency_macsec, !22, !"vsc85xx_egr_latency_macsec", i1 false, i1 false}
!22 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 215, i32 18}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 41, i32 2}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 31, i32 2}
!27 = distinct !{null, !28, !"ltc_seq_e", i1 false, i1 false}
!28 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 1268, i32 19}
!29 = distinct !{null, !30, !"ltc_seq_a", i1 false, i1 false}
!30 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 1269, i32 19}
!31 = distinct !{null, !32, !"msgs", i1 false, i1 false}
!32 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 509, i32 18}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!35 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!40 = !{ptr @vsc85xx_ptp_conf.msgs, !41, !"msgs", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 850, i32 18}
!42 = !{ptr @vsc85xx_clk_caps, !43, !"vsc85xx_clk_caps", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/mscc/mscc_ptp.c", i32 1220, i32 36}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{!"auto-init"}
!58 = !{i64 2152394938, i64 2152394963}
!59 = !{i64 4890493}
!60 = !{i64 4890690}
!61 = !{i64 2152375923}
!62 = !{i64 2152395619, i64 2152395644}
