; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.b43legacy_wldev = type { ptr, ptr, %struct.atomic_t, i32, i8, i8, i8, i8, i8, %struct.b43legacy_phy, %union.anon.133, %struct.b43legacy_stats, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, i32, [6 x i32], i32, %struct.b43legacy_noise_calculation, i32, %struct.tasklet_struct, %struct.delayed_work, i32, %struct.work_struct, i16, i8, [58 x %struct.b43legacy_key], %struct.b43legacy_firmware, ptr, %struct.completion, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.b43legacy_phy = type { i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, %struct.anon.130, [2 x i16], [2 x i16], ptr, ptr, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i8, [2 x i16], %struct.anon.131, %struct.anon.132, i32, [26 x i32], [2 x i16], i32, [64 x i8], i8, i16, i16, %struct.atomic_t, i8, i8 }
%struct.anon.130 = type { i8, i16, i16 }
%struct.anon.131 = type { i16, i16, i16, i16 }
%struct.anon.132 = type { i16 }
%union.anon.133 = type { %struct.b43legacy_dma }
%struct.b43legacy_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.b43legacy_stats = type { i8, i32, i32 }
%struct.b43legacy_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_noise_calculation = type { i8, i8, i8, [8 x [4 x i8]] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%union.anon.134 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_key = type { ptr, i8, i8 }
%struct.b43legacy_firmware = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.b43legacy_dmaring = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i16, i16, i32, i8, i32, i8, i8, ptr, i32, i32 }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.b43legacy_dmadesc_meta = type { ptr, i32, i8 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.2, %union.anon.98, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.98 = type { %struct.atomic_t }
%struct.b43legacy_dmadesc32 = type { i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.b43legacy_wl = type { ptr, ptr, %struct.spinlock, %struct.mutex, %struct.spinlock, %struct.work_struct, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], %struct.list_head, i8, i8, i8, ptr, i8, i8, i8, %struct.work_struct, [4 x %struct.b43legacy_qos_params], %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8] }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.b43legacy_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.b43legacy_txstatus = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.b43legacy_hwtxstatus = type { [4 x i8], i16, i8, i8, [2 x i8], i16, i8, [1 x i8] }

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"DMA for this device not supported. Falling back to PIO\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%u-bit DMA initialized\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/broadcom/b43legacy/dma.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Packet after queue stopped\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA queue overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA tx mapping failure\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stopped TX ring %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Out of order TX status report on DMA ring %d. Expected %d, but got %d\0A\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Woke up TX ring %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA-%u 0x%04X (%s) max used slots: %d/%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA TX reset timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA RX reset timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@b43legacy_dmacontroller_base.map32 = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 512, i16 544, i16 576, i16 608, i16 640, i16 672], [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate initial descbuffers\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Injecting TX ring overflow on DMA controller %d\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"DMA RX buffer too small (len: %u, buffer: %u, nr-dropped: %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA RX: setup_rx_descbuffer() failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"max_used_slots increased to %d on %s ring %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 773, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 830, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1063, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1071, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1078, i32 25 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1092, i32 25 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1103, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1133, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1221, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 720, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 722, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 722, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 388, i32 25 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 347, i32 25 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"map32\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 219, i32 19 }
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 326, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 490, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1047, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1301, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1310, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [49 x i8] c"../drivers/net/wireless/broadcom/b43legacy/dma.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 147, i32 10 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @b43legacy_dmacontroller_base.map32, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_dmacontroller_base.map32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_dma_free(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  %rx_ring3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 7
  %3 = ptrtoint ptr %rx_ring3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_ring3, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %4)
  %5 = ptrtoint ptr %rx_ring3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_ring3, align 4
  %rx_ring0 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 6
  %6 = ptrtoint ptr %rx_ring0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring0, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %7)
  %8 = ptrtoint ptr %rx_ring0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx_ring0, align 4
  %tx_ring5 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 5
  %9 = ptrtoint ptr %tx_ring5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring5, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %10)
  %11 = ptrtoint ptr %tx_ring5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_ring5, align 4
  %tx_ring4 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 4
  %12 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring4, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %13)
  %14 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tx_ring4, align 4
  %tx_ring3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %15 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ring3, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %16)
  %17 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %tx_ring3, align 4
  %tx_ring2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  %18 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring2, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %19)
  %20 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx_ring2, align 4
  %tx_ring1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %21 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_ring1, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %22)
  %23 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %tx_ring1, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %25)
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_destroy_dmaring(ptr noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 15
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %type = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 12
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %mmio_base = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 9
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mmio_base, align 2
  %conv = zext i16 %7 to i32
  %tx = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool1.not, ptr @.str.11, ptr @.str.10
  %max_used_slots = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 16
  %10 = ptrtoint ptr %max_used_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_used_slots, align 4
  %nr_slots = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 4
  %12 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_slots, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %5, i32 noundef %conv, ptr noundef nonnull %cond, i32 noundef %11, i32 noundef %13) #6
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mmio_base, align 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 363) #6
  %add.i.i = add i16 %19, 12
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %25(ptr noundef %21, i16 noundef zeroext %add.i.i) #6
  %26 = trunc i32 %call.i.i.i.i to i16
  %trunc.i.i = and i16 %26, -4096
  %27 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i.i, label %if.end.i.i [
    i16 0, label %if.then.i.for.end.i.i_crit_edge
    i16 8192, label %if.then.i.for.end.i.i_crit_edge17
    i16 12288, label %if.then.i.for.end.i.i_crit_edge18
  ]

if.then.i.for.end.i.i_crit_edge18:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.then.i.for.end.i.i_crit_edge17:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.then.i.for.end.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  tail call void @msleep(i32 noundef 1) #6
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %17, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %read32.i.i.1.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %read32.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i.1.i.i, align 4
  %call.i.i.1.i.i = tail call i32 %33(ptr noundef %29, i16 noundef zeroext %add.i.i) #6
  %34 = trunc i32 %call.i.i.1.i.i to i16
  %trunc.1.i.i = and i16 %34, -4096
  %35 = zext i16 %trunc.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %trunc.1.i.i, label %if.end.1.i.i [
    i16 0, label %if.end.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.end.i.i.for.end.i.i_crit_edge19
    i16 12288, label %if.end.i.i.for.end.i.i_crit_edge20
  ]

if.end.i.i.for.end.i.i_crit_edge20:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.i.i.for.end.i.i_crit_edge19:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.1.i.i:                                     ; preds = %if.end.i.i
  tail call void @msleep(i32 noundef 1) #6
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %17, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %read32.i.i.2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %read32.i.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i.i.2.i.i, align 4
  %call.i.i.2.i.i = tail call i32 %41(ptr noundef %37, i16 noundef zeroext %add.i.i) #6
  %42 = trunc i32 %call.i.i.2.i.i to i16
  %trunc.2.i.i = and i16 %42, -4096
  %43 = zext i16 %trunc.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %trunc.2.i.i, label %if.end.2.i.i [
    i16 0, label %if.end.1.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.end.1.i.i.for.end.i.i_crit_edge21
    i16 12288, label %if.end.1.i.i.for.end.i.i_crit_edge22
  ]

if.end.1.i.i.for.end.i.i_crit_edge22:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.1.i.i.for.end.i.i_crit_edge21:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.1.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  tail call void @msleep(i32 noundef 1) #6
  %44 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %17, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %read32.i.i.3.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %read32.i.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i.i.3.i.i, align 4
  %call.i.i.3.i.i = tail call i32 %49(ptr noundef %45, i16 noundef zeroext %add.i.i) #6
  %50 = trunc i32 %call.i.i.3.i.i to i16
  %trunc.3.i.i = and i16 %50, -4096
  %51 = zext i16 %trunc.3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %trunc.3.i.i, label %if.end.3.i.i [
    i16 0, label %if.end.2.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.end.2.i.i.for.end.i.i_crit_edge23
    i16 12288, label %if.end.2.i.i.for.end.i.i_crit_edge24
  ]

if.end.2.i.i.for.end.i.i_crit_edge24:             ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.2.i.i.for.end.i.i_crit_edge23:             ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.2.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  tail call void @msleep(i32 noundef 1) #6
  %52 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %17, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %read32.i.i.4.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %read32.i.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i.i.4.i.i, align 4
  %call.i.i.4.i.i = tail call i32 %57(ptr noundef %53, i16 noundef zeroext %add.i.i) #6
  %58 = trunc i32 %call.i.i.4.i.i to i16
  %trunc.4.i.i = and i16 %58, -4096
  %59 = zext i16 %trunc.4.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %trunc.4.i.i, label %if.end.4.i.i [
    i16 0, label %if.end.3.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.end.3.i.i.for.end.i.i_crit_edge25
    i16 12288, label %if.end.3.i.i.for.end.i.i_crit_edge26
  ]

if.end.3.i.i.for.end.i.i_crit_edge26:             ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.3.i.i.for.end.i.i_crit_edge25:             ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.3.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  tail call void @msleep(i32 noundef 1) #6
  %60 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %17, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %read32.i.i.5.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %read32.i.i.5.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i.i.5.i.i, align 4
  %call.i.i.5.i.i = tail call i32 %65(ptr noundef %61, i16 noundef zeroext %add.i.i) #6
  %66 = trunc i32 %call.i.i.5.i.i to i16
  %trunc.5.i.i = and i16 %66, -4096
  %67 = zext i16 %trunc.5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %trunc.5.i.i, label %if.end.5.i.i [
    i16 0, label %if.end.4.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.end.4.i.i.for.end.i.i_crit_edge27
    i16 12288, label %if.end.4.i.i.for.end.i.i_crit_edge28
  ]

if.end.4.i.i.for.end.i.i_crit_edge28:             ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.4.i.i.for.end.i.i_crit_edge27:             ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.4.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  tail call void @msleep(i32 noundef 1) #6
  %68 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %17, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %read32.i.i.6.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %read32.i.i.6.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read32.i.i.6.i.i, align 4
  %call.i.i.6.i.i = tail call i32 %73(ptr noundef %69, i16 noundef zeroext %add.i.i) #6
  %74 = trunc i32 %call.i.i.6.i.i to i16
  %trunc.6.i.i = and i16 %74, -4096
  %75 = zext i16 %trunc.6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %trunc.6.i.i, label %if.end.6.i.i [
    i16 0, label %if.end.5.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.end.5.i.i.for.end.i.i_crit_edge29
    i16 12288, label %if.end.5.i.i.for.end.i.i_crit_edge30
  ]

if.end.5.i.i.for.end.i.i_crit_edge30:             ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.5.i.i.for.end.i.i_crit_edge29:             ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.5.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  tail call void @msleep(i32 noundef 1) #6
  %76 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %17, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %read32.i.i.7.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %read32.i.i.7.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32.i.i.7.i.i, align 4
  %call.i.i.7.i.i = tail call i32 %81(ptr noundef %77, i16 noundef zeroext %add.i.i) #6
  %82 = trunc i32 %call.i.i.7.i.i to i16
  %trunc.7.i.i = and i16 %82, -4096
  %83 = zext i16 %trunc.7.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %trunc.7.i.i, label %if.end.7.i.i [
    i16 0, label %if.end.6.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.end.6.i.i.for.end.i.i_crit_edge31
    i16 12288, label %if.end.6.i.i.for.end.i.i_crit_edge32
  ]

if.end.6.i.i.for.end.i.i_crit_edge32:             ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.6.i.i.for.end.i.i_crit_edge31:             ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.6.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  tail call void @msleep(i32 noundef 1) #6
  %84 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %17, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %read32.i.i.8.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %read32.i.i.8.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.i.8.i.i, align 4
  %call.i.i.8.i.i = tail call i32 %89(ptr noundef %85, i16 noundef zeroext %add.i.i) #6
  %90 = trunc i32 %call.i.i.8.i.i to i16
  %trunc.8.i.i = and i16 %90, -4096
  %91 = zext i16 %trunc.8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %trunc.8.i.i, label %if.end.8.i.i [
    i16 0, label %if.end.7.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.end.7.i.i.for.end.i.i_crit_edge33
    i16 12288, label %if.end.7.i.i.for.end.i.i_crit_edge34
  ]

if.end.7.i.i.for.end.i.i_crit_edge34:             ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.7.i.i.for.end.i.i_crit_edge33:             ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.7.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.8.i.i:                                     ; preds = %if.end.7.i.i
  tail call void @msleep(i32 noundef 1) #6
  %92 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %17, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %read32.i.i.9.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %read32.i.i.9.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read32.i.i.9.i.i, align 4
  %call.i.i.9.i.i = tail call i32 %97(ptr noundef %93, i16 noundef zeroext %add.i.i) #6
  %98 = trunc i32 %call.i.i.9.i.i to i16
  %trunc.9.i.i = and i16 %98, -4096
  %99 = zext i16 %trunc.9.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %trunc.9.i.i, label %if.end.9.i.i [
    i16 0, label %if.end.8.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.end.8.i.i.for.end.i.i_crit_edge35
    i16 12288, label %if.end.8.i.i.for.end.i.i_crit_edge36
  ]

if.end.8.i.i.for.end.i.i_crit_edge36:             ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.8.i.i.for.end.i.i_crit_edge35:             ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.8.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end.9.i.i:                                     ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1) #6
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.9.i.i, %if.end.8.i.i.for.end.i.i_crit_edge, %if.end.8.i.i.for.end.i.i_crit_edge35, %if.end.8.i.i.for.end.i.i_crit_edge36, %if.end.7.i.i.for.end.i.i_crit_edge, %if.end.7.i.i.for.end.i.i_crit_edge33, %if.end.7.i.i.for.end.i.i_crit_edge34, %if.end.6.i.i.for.end.i.i_crit_edge, %if.end.6.i.i.for.end.i.i_crit_edge31, %if.end.6.i.i.for.end.i.i_crit_edge32, %if.end.5.i.i.for.end.i.i_crit_edge, %if.end.5.i.i.for.end.i.i_crit_edge29, %if.end.5.i.i.for.end.i.i_crit_edge30, %if.end.4.i.i.for.end.i.i_crit_edge, %if.end.4.i.i.for.end.i.i_crit_edge27, %if.end.4.i.i.for.end.i.i_crit_edge28, %if.end.3.i.i.for.end.i.i_crit_edge, %if.end.3.i.i.for.end.i.i_crit_edge25, %if.end.3.i.i.for.end.i.i_crit_edge26, %if.end.2.i.i.for.end.i.i_crit_edge, %if.end.2.i.i.for.end.i.i_crit_edge23, %if.end.2.i.i.for.end.i.i_crit_edge24, %if.end.1.i.i.for.end.i.i_crit_edge, %if.end.1.i.i.for.end.i.i_crit_edge21, %if.end.1.i.i.for.end.i.i_crit_edge22, %if.end.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge19, %if.end.i.i.for.end.i.i_crit_edge20, %if.then.i.for.end.i.i_crit_edge, %if.then.i.for.end.i.i_crit_edge17, %if.then.i.for.end.i.i_crit_edge18
  %100 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %17, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %105(ptr noundef %101, i16 noundef zeroext %19, i32 noundef 0) #6
  %106 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %17, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %read32.i.i1.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %read32.i.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read32.i.i1.i.i, align 4
  %call.i.i2.i.i = tail call i32 %111(ptr noundef %107, i16 noundef zeroext %add.i.i) #6
  %and26.i.i = and i32 %call.i.i2.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %cmp27.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %cmp27.i.i, label %for.end.i.i.if.end37.i.i_crit_edge, label %if.end30.i.i

for.end.i.i.if.end37.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.i.i:                                     ; preds = %for.end.i.i
  tail call void @msleep(i32 noundef 1) #6
  %112 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %17, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %read32.i.i1.1.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %read32.i.i1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %read32.i.i1.1.i.i, align 4
  %call.i.i2.1.i.i = tail call i32 %117(ptr noundef %113, i16 noundef zeroext %add.i.i) #6
  %and26.1.i.i = and i32 %call.i.i2.1.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.1.i.i)
  %cmp27.1.i.i = icmp eq i32 %and26.1.i.i, 0
  br i1 %cmp27.1.i.i, label %if.end30.i.i.if.end37.i.i_crit_edge, label %if.end30.1.i.i

if.end30.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.1.i.i:                                   ; preds = %if.end30.i.i
  tail call void @msleep(i32 noundef 1) #6
  %118 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %17, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %read32.i.i1.2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %read32.i.i1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read32.i.i1.2.i.i, align 4
  %call.i.i2.2.i.i = tail call i32 %123(ptr noundef %119, i16 noundef zeroext %add.i.i) #6
  %and26.2.i.i = and i32 %call.i.i2.2.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.2.i.i)
  %cmp27.2.i.i = icmp eq i32 %and26.2.i.i, 0
  br i1 %cmp27.2.i.i, label %if.end30.1.i.i.if.end37.i.i_crit_edge, label %if.end30.2.i.i

if.end30.1.i.i.if.end37.i.i_crit_edge:            ; preds = %if.end30.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.2.i.i:                                   ; preds = %if.end30.1.i.i
  tail call void @msleep(i32 noundef 1) #6
  %124 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %17, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %read32.i.i1.3.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %read32.i.i1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read32.i.i1.3.i.i, align 4
  %call.i.i2.3.i.i = tail call i32 %129(ptr noundef %125, i16 noundef zeroext %add.i.i) #6
  %and26.3.i.i = and i32 %call.i.i2.3.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.3.i.i)
  %cmp27.3.i.i = icmp eq i32 %and26.3.i.i, 0
  br i1 %cmp27.3.i.i, label %if.end30.2.i.i.if.end37.i.i_crit_edge, label %if.end30.3.i.i

if.end30.2.i.i.if.end37.i.i_crit_edge:            ; preds = %if.end30.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.3.i.i:                                   ; preds = %if.end30.2.i.i
  tail call void @msleep(i32 noundef 1) #6
  %130 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %17, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %read32.i.i1.4.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %read32.i.i1.4.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read32.i.i1.4.i.i, align 4
  %call.i.i2.4.i.i = tail call i32 %135(ptr noundef %131, i16 noundef zeroext %add.i.i) #6
  %and26.4.i.i = and i32 %call.i.i2.4.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.4.i.i)
  %cmp27.4.i.i = icmp eq i32 %and26.4.i.i, 0
  br i1 %cmp27.4.i.i, label %if.end30.3.i.i.if.end37.i.i_crit_edge, label %if.end30.4.i.i

if.end30.3.i.i.if.end37.i.i_crit_edge:            ; preds = %if.end30.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.4.i.i:                                   ; preds = %if.end30.3.i.i
  tail call void @msleep(i32 noundef 1) #6
  %136 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %17, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %read32.i.i1.5.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %read32.i.i1.5.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read32.i.i1.5.i.i, align 4
  %call.i.i2.5.i.i = tail call i32 %141(ptr noundef %137, i16 noundef zeroext %add.i.i) #6
  %and26.5.i.i = and i32 %call.i.i2.5.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.5.i.i)
  %cmp27.5.i.i = icmp eq i32 %and26.5.i.i, 0
  br i1 %cmp27.5.i.i, label %if.end30.4.i.i.if.end37.i.i_crit_edge, label %if.end30.5.i.i

if.end30.4.i.i.if.end37.i.i_crit_edge:            ; preds = %if.end30.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.5.i.i:                                   ; preds = %if.end30.4.i.i
  tail call void @msleep(i32 noundef 1) #6
  %142 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %17, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %read32.i.i1.6.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %read32.i.i1.6.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32.i.i1.6.i.i, align 4
  %call.i.i2.6.i.i = tail call i32 %147(ptr noundef %143, i16 noundef zeroext %add.i.i) #6
  %and26.6.i.i = and i32 %call.i.i2.6.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.6.i.i)
  %cmp27.6.i.i = icmp eq i32 %and26.6.i.i, 0
  br i1 %cmp27.6.i.i, label %if.end30.5.i.i.if.end37.i.i_crit_edge, label %if.end30.6.i.i

if.end30.5.i.i.if.end37.i.i_crit_edge:            ; preds = %if.end30.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.6.i.i:                                   ; preds = %if.end30.5.i.i
  tail call void @msleep(i32 noundef 1) #6
  %148 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %17, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %read32.i.i1.7.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %read32.i.i1.7.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read32.i.i1.7.i.i, align 4
  %call.i.i2.7.i.i = tail call i32 %153(ptr noundef %149, i16 noundef zeroext %add.i.i) #6
  %and26.7.i.i = and i32 %call.i.i2.7.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.7.i.i)
  %cmp27.7.i.i = icmp eq i32 %and26.7.i.i, 0
  br i1 %cmp27.7.i.i, label %if.end30.6.i.i.if.end37.i.i_crit_edge, label %if.end30.7.i.i

if.end30.6.i.i.if.end37.i.i_crit_edge:            ; preds = %if.end30.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.7.i.i:                                   ; preds = %if.end30.6.i.i
  tail call void @msleep(i32 noundef 1) #6
  %154 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %17, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %read32.i.i1.8.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %read32.i.i1.8.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read32.i.i1.8.i.i, align 4
  %call.i.i2.8.i.i = tail call i32 %159(ptr noundef %155, i16 noundef zeroext %add.i.i) #6
  %and26.8.i.i = and i32 %call.i.i2.8.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.8.i.i)
  %cmp27.8.i.i = icmp eq i32 %and26.8.i.i, 0
  br i1 %cmp27.8.i.i, label %if.end30.7.i.i.if.end37.i.i_crit_edge, label %if.end30.8.i.i

if.end30.7.i.i.if.end37.i.i_crit_edge:            ; preds = %if.end30.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.8.i.i:                                   ; preds = %if.end30.7.i.i
  tail call void @msleep(i32 noundef 1) #6
  %160 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %17, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %read32.i.i1.9.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %read32.i.i1.9.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %read32.i.i1.9.i.i, align 4
  %call.i.i2.9.i.i = tail call i32 %165(ptr noundef %161, i16 noundef zeroext %add.i.i) #6
  %and26.9.i.i = and i32 %call.i.i2.9.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.9.i.i)
  %cmp27.9.i.i = icmp eq i32 %and26.9.i.i, 0
  br i1 %cmp27.9.i.i, label %if.end30.8.i.i.if.end37.i.i_crit_edge, label %if.end30.9.i.i

if.end30.8.i.i.if.end37.i.i_crit_edge:            ; preds = %if.end30.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end30.9.i.i:                                   ; preds = %if.end30.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1) #6
  %wl.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %17, i32 0, i32 1
  %166 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %167, ptr noundef nonnull @.str.12) #6
  br label %b43legacy_dmacontroller_tx_reset.exit.i

if.end37.i.i:                                     ; preds = %if.end30.8.i.i.if.end37.i.i_crit_edge, %if.end30.7.i.i.if.end37.i.i_crit_edge, %if.end30.6.i.i.if.end37.i.i_crit_edge, %if.end30.5.i.i.if.end37.i.i_crit_edge, %if.end30.4.i.i.if.end37.i.i_crit_edge, %if.end30.3.i.i.if.end37.i.i_crit_edge, %if.end30.2.i.i.if.end37.i.i_crit_edge, %if.end30.1.i.i.if.end37.i.i_crit_edge, %if.end30.i.i.if.end37.i.i_crit_edge, %for.end.i.i.if.end37.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  br label %b43legacy_dmacontroller_tx_reset.exit.i

b43legacy_dmacontroller_tx_reset.exit.i:          ; preds = %if.end37.i.i, %if.end30.9.i.i
  %168 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev, align 4
  %170 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %mmio_base, align 2
  %add.i13.i = add i16 %171, 4
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %169, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %write32.i.i.i14.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %write32.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %write32.i.i.i14.i, align 4
  tail call void %177(ptr noundef %173, i16 noundef zeroext %add.i13.i, i32 noundef 0) #6
  br label %dmacontroller_cleanup.exit

if.else.i:                                        ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 332) #6
  %add.i15.i = add i16 %19, 16
  %178 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %17, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %write32.i.i.i16.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %181, i32 0, i32 5
  %182 = ptrtoint ptr %write32.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write32.i.i.i16.i, align 4
  tail call void %183(ptr noundef %179, i16 noundef zeroext %add.i15.i, i32 noundef 0) #6
  %add9.i.i = add i16 %19, 28
  %184 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %17, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %read32.i.i.i17.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %read32.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %read32.i.i.i17.i, align 4
  %call.i.i.i18.i = tail call i32 %189(ptr noundef %185, i16 noundef zeroext %add9.i.i) #6
  %and.i.i = and i32 %call.i.i.i18.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp11.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp11.i.i, label %if.else.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.i21.i

if.else.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.i21.i:                                     ; preds = %if.else.i
  tail call void @msleep(i32 noundef 1) #6
  %190 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %17, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %read32.i.i.1.i19.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %read32.i.i.1.i19.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read32.i.i.1.i19.i, align 4
  %call.i.i.1.i20.i = tail call i32 %195(ptr noundef %191, i16 noundef zeroext %add9.i.i) #6
  %and.1.i.i = and i32 %call.i.i.1.i20.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %cmp11.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %cmp11.1.i.i, label %if.end.i21.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.1.i24.i

if.end.i21.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.1.i24.i:                                   ; preds = %if.end.i21.i
  tail call void @msleep(i32 noundef 1) #6
  %196 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %17, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %read32.i.i.2.i22.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %read32.i.i.2.i22.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read32.i.i.2.i22.i, align 4
  %call.i.i.2.i23.i = tail call i32 %201(ptr noundef %197, i16 noundef zeroext %add9.i.i) #6
  %and.2.i.i = and i32 %call.i.i.2.i23.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %cmp11.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %cmp11.2.i.i, label %if.end.1.i24.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.2.i27.i

if.end.1.i24.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.end.1.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.2.i27.i:                                   ; preds = %if.end.1.i24.i
  tail call void @msleep(i32 noundef 1) #6
  %202 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %17, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %read32.i.i.3.i25.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %205, i32 0, i32 2
  %206 = ptrtoint ptr %read32.i.i.3.i25.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read32.i.i.3.i25.i, align 4
  %call.i.i.3.i26.i = tail call i32 %207(ptr noundef %203, i16 noundef zeroext %add9.i.i) #6
  %and.3.i.i = and i32 %call.i.i.3.i26.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %cmp11.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %cmp11.3.i.i, label %if.end.2.i27.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.3.i30.i

if.end.2.i27.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.end.2.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.3.i30.i:                                   ; preds = %if.end.2.i27.i
  tail call void @msleep(i32 noundef 1) #6
  %208 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %17, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %read32.i.i.4.i28.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %read32.i.i.4.i28.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %read32.i.i.4.i28.i, align 4
  %call.i.i.4.i29.i = tail call i32 %213(ptr noundef %209, i16 noundef zeroext %add9.i.i) #6
  %and.4.i.i = and i32 %call.i.i.4.i29.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %cmp11.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %cmp11.4.i.i, label %if.end.3.i30.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.4.i33.i

if.end.3.i30.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.end.3.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.4.i33.i:                                   ; preds = %if.end.3.i30.i
  tail call void @msleep(i32 noundef 1) #6
  %214 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %17, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %read32.i.i.5.i31.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %217, i32 0, i32 2
  %218 = ptrtoint ptr %read32.i.i.5.i31.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %read32.i.i.5.i31.i, align 4
  %call.i.i.5.i32.i = tail call i32 %219(ptr noundef %215, i16 noundef zeroext %add9.i.i) #6
  %and.5.i.i = and i32 %call.i.i.5.i32.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %cmp11.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %cmp11.5.i.i, label %if.end.4.i33.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.5.i36.i

if.end.4.i33.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.end.4.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.5.i36.i:                                   ; preds = %if.end.4.i33.i
  tail call void @msleep(i32 noundef 1) #6
  %220 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %17, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %read32.i.i.6.i34.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %read32.i.i.6.i34.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %read32.i.i.6.i34.i, align 4
  %call.i.i.6.i35.i = tail call i32 %225(ptr noundef %221, i16 noundef zeroext %add9.i.i) #6
  %and.6.i.i = and i32 %call.i.i.6.i35.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %cmp11.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %cmp11.6.i.i, label %if.end.5.i36.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.6.i39.i

if.end.5.i36.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.end.5.i36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.6.i39.i:                                   ; preds = %if.end.5.i36.i
  tail call void @msleep(i32 noundef 1) #6
  %226 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %17, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %read32.i.i.7.i37.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %read32.i.i.7.i37.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read32.i.i.7.i37.i, align 4
  %call.i.i.7.i38.i = tail call i32 %231(ptr noundef %227, i16 noundef zeroext %add9.i.i) #6
  %and.7.i.i = and i32 %call.i.i.7.i38.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %cmp11.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %cmp11.7.i.i, label %if.end.6.i39.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.7.i42.i

if.end.6.i39.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.end.6.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.7.i42.i:                                   ; preds = %if.end.6.i39.i
  tail call void @msleep(i32 noundef 1) #6
  %232 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %17, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %read32.i.i.8.i40.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %235, i32 0, i32 2
  %236 = ptrtoint ptr %read32.i.i.8.i40.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read32.i.i.8.i40.i, align 4
  %call.i.i.8.i41.i = tail call i32 %237(ptr noundef %233, i16 noundef zeroext %add9.i.i) #6
  %and.8.i.i = and i32 %call.i.i.8.i41.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i.i)
  %cmp11.8.i.i = icmp eq i32 %and.8.i.i, 0
  br i1 %cmp11.8.i.i, label %if.end.7.i42.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.8.i45.i

if.end.7.i42.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.end.7.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.8.i45.i:                                   ; preds = %if.end.7.i42.i
  tail call void @msleep(i32 noundef 1) #6
  %238 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %17, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %239, align 4
  %read32.i.i.9.i43.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %read32.i.i.9.i43.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %read32.i.i.9.i43.i, align 4
  %call.i.i.9.i44.i = tail call i32 %243(ptr noundef %239, i16 noundef zeroext %add9.i.i) #6
  %and.9.i.i = and i32 %call.i.i.9.i44.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i.i)
  %cmp11.9.i.i = icmp eq i32 %and.9.i.i, 0
  br i1 %cmp11.9.i.i, label %if.end.8.i45.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, label %if.end.9.i47.i

if.end.8.i45.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.end.8.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dmacontroller_rx_reset.exit.i

if.end.9.i47.i:                                   ; preds = %if.end.8.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1) #6
  %wl.i46.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %17, i32 0, i32 1
  %244 = ptrtoint ptr %wl.i46.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %wl.i46.i, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %245, ptr noundef nonnull @.str.13) #6
  br label %b43legacy_dmacontroller_rx_reset.exit.i

b43legacy_dmacontroller_rx_reset.exit.i:          ; preds = %if.end.9.i47.i, %if.end.8.i45.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, %if.end.7.i42.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, %if.end.6.i39.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, %if.end.5.i36.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, %if.end.4.i33.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, %if.end.3.i30.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, %if.end.2.i27.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, %if.end.1.i24.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, %if.end.i21.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.i.b43legacy_dmacontroller_rx_reset.exit.i_crit_edge
  %246 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev, align 4
  %248 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %mmio_base, align 2
  %add.i50.i = add i16 %249, 20
  %250 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %247, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %write32.i.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %253, i32 0, i32 5
  %254 = ptrtoint ptr %write32.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %write32.i.i.i51.i, align 4
  tail call void %255(ptr noundef %251, i16 noundef zeroext %add.i50.i, i32 noundef 0) #6
  br label %dmacontroller_cleanup.exit

dmacontroller_cleanup.exit:                       ; preds = %b43legacy_dmacontroller_rx_reset.exit.i, %b43legacy_dmacontroller_tx_reset.exit.i
  %used_slots.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 5
  %256 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %used_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool.not.i15 = icmp eq i32 %257, 0
  br i1 %tobool.not.i15, label %dmacontroller_cleanup.exit.free_all_descbuffers.exit_crit_edge, label %for.cond.preheader.i

dmacontroller_cleanup.exit.free_all_descbuffers.exit_crit_edge: ; preds = %dmacontroller_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_all_descbuffers.exit

for.cond.preheader.i:                             ; preds = %dmacontroller_cleanup.exit
  %258 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp48.i = icmp sgt i32 %259, 0
  br i1 %cmp48.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.free_all_descbuffers.exit_crit_edge

for.cond.preheader.i.free_all_descbuffers.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_all_descbuffers.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %meta1.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 1
  %rx_buffersize.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %260 = ptrtoint ptr %meta1.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %meta1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %261, i32 %i.049.i
  %262 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool1.not.i = icmp eq ptr %263, null
  %264 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool3.not.i = icmp eq i8 %265, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end26.i

if.then2.i:                                       ; preds = %for.body.i
  br i1 %tobool3.not.i, label %do.end.i, label %if.then2.i.for.inc.i_crit_edge, !prof !54

if.then2.i.for.inc.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 580, i32 noundef 9, ptr noundef null) #6
  br label %for.inc.i

if.end26.i:                                       ; preds = %for.body.i
  %dmaaddr31.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %261, i32 %i.049.i, i32 1
  %266 = ptrtoint ptr %dmaaddr31.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %dmaaddr31.i, align 4
  br i1 %tobool3.not.i, label %if.else.i16, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %263, i32 0, i32 6
  %268 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %len.i, align 4
  %270 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %271, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.ssb_device, ptr %273, i32 0, i32 2
  %274 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dma_dev4.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %275, i32 noundef %267, i32 noundef %269, i32 noundef 1, i32 noundef 0) #6
  br label %if.end32.i

if.else.i16:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %276 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %rx_buffersize.i, align 4
  %conv.i = zext i16 %277 to i32
  %278 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %dma_dev4.i46.i = getelementptr inbounds %struct.ssb_device, ptr %281, i32 0, i32 2
  %282 = ptrtoint ptr %dma_dev4.i46.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dma_dev4.i46.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %283, i32 noundef %267, i32 noundef %conv.i, i32 noundef 2, i32 noundef 0) #6
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i16, %if.then29.i
  %284 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %285, null
  br i1 %tobool.not.i.i, label %if.end32.i.for.inc.i_crit_edge, label %if.else.i.i

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else.i.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef nonnull %285) #6
  %286 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.i, %if.end32.i.for.inc.i_crit_edge, %do.end.i, %if.then2.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %287 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %nr_slots, align 4
  %cmp.i = icmp slt i32 %inc.i, %288
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.free_all_descbuffers.exit_crit_edge

for.inc.i.free_all_descbuffers.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_all_descbuffers.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

free_all_descbuffers.exit:                        ; preds = %for.inc.i.free_all_descbuffers.exit_crit_edge, %for.cond.preheader.i.free_all_descbuffers.exit_crit_edge, %dmacontroller_cleanup.exit.free_all_descbuffers.exit_crit_edge
  %289 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev, align 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %290, align 4
  %dma_dev.i = getelementptr inbounds %struct.ssb_device, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dma_dev.i, align 4
  %295 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %ring, align 4
  %dmabase.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 3
  %297 = ptrtoint ptr %dmabase.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %dmabase.i, align 4
  tail call void @dma_free_attrs(ptr noundef %294, i32 noundef 4096, ptr noundef %296, i32 noundef %298, i32 noundef 0) #6
  %txhdr_cache = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 2
  %299 = ptrtoint ptr %txhdr_cache to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %txhdr_cache, align 4
  tail call void @kfree(ptr noundef %300) #6
  %meta = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 1
  %301 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %meta, align 4
  tail call void @kfree(ptr noundef %302) #6
  tail call void @kfree(ptr noundef nonnull %ring) #6
  br label %return

return:                                           ; preds = %free_all_descbuffers.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_dma_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %6(ptr noundef %2, i16 noundef zeroext 512, i32 noundef 196608) #6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %12(ptr noundef %8, i16 noundef zeroext 512) #6
  %and.i = and i32 %call.i.i.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 30, i32 32
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_dev, align 4
  %sh_prom = zext i32 %..i to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %call.i = tail call i32 @dma_set_mask(ptr noundef %16, i64 noundef %sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %17 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacywarn(ptr noundef %18, ptr noundef nonnull @.str) #6
  %__using_pio = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %__using_pio to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %__using_pio, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %16, i64 noundef %sub) #6
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call4 = tail call i32 @ssb_dma_translation(ptr noundef %21) #6
  %translation = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 8
  %22 = ptrtoint ptr %translation to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call4, ptr %translation, align 4
  %call5 = tail call fastcc ptr @b43legacy_setup_dmaring(ptr noundef %dev, i32 noundef 0, i32 noundef 1, i32 noundef %..i)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5, ptr %0, align 4
  %call9 = tail call fastcc ptr @b43legacy_setup_dmaring(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef %..i)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.err_destroy_tx0_crit_edge, label %if.end12

if.end8.err_destroy_tx0_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_destroy_tx0

if.end12:                                         ; preds = %if.end8
  %tx_ring1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %24 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9, ptr %tx_ring1, align 4
  %call13 = tail call fastcc ptr @b43legacy_setup_dmaring(ptr noundef %dev, i32 noundef 2, i32 noundef 1, i32 noundef %..i)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.err_destroy_tx1_crit_edge, label %if.end16

if.end12.err_destroy_tx1_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_destroy_tx1

if.end16:                                         ; preds = %if.end12
  %tx_ring2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  %25 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call13, ptr %tx_ring2, align 4
  %call17 = tail call fastcc ptr @b43legacy_setup_dmaring(ptr noundef %dev, i32 noundef 3, i32 noundef 1, i32 noundef %..i)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.err_destroy_tx2_crit_edge, label %if.end20

if.end16.err_destroy_tx2_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_destroy_tx2

if.end20:                                         ; preds = %if.end16
  %tx_ring3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %26 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call17, ptr %tx_ring3, align 4
  %call21 = tail call fastcc ptr @b43legacy_setup_dmaring(ptr noundef %dev, i32 noundef 4, i32 noundef 1, i32 noundef %..i)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.err_destroy_tx3_crit_edge, label %if.end24

if.end20.err_destroy_tx3_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_destroy_tx3

if.end24:                                         ; preds = %if.end20
  %tx_ring4 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 4
  %27 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call21, ptr %tx_ring4, align 4
  %call25 = tail call fastcc ptr @b43legacy_setup_dmaring(ptr noundef %dev, i32 noundef 5, i32 noundef 1, i32 noundef %..i)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.err_destroy_tx4_crit_edge, label %if.end28

if.end24.err_destroy_tx4_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_destroy_tx4

if.end28:                                         ; preds = %if.end24
  %tx_ring5 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 5
  %28 = ptrtoint ptr %tx_ring5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call25, ptr %tx_ring5, align 4
  %call29 = tail call fastcc ptr @b43legacy_setup_dmaring(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef %..i)
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.err_destroy_tx5_crit_edge, label %if.end32

if.end28.err_destroy_tx5_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_destroy_tx5

if.end32:                                         ; preds = %if.end28
  %rx_ring0 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 6
  %29 = ptrtoint ptr %rx_ring0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call29, ptr %rx_ring0, align 4
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %31, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %33)
  %cmp34 = icmp ult i8 %33, 5
  br i1 %cmp34, label %if.then36, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then36:                                        ; preds = %if.end32
  %call37 = tail call fastcc ptr @b43legacy_setup_dmaring(ptr noundef %dev, i32 noundef 3, i32 noundef 0, i32 noundef %..i)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %err_destroy_rx0, label %if.end40

if.end40:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ring3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 7
  %34 = ptrtoint ptr %rx_ring3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call37, ptr %rx_ring3, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end32.if.end41_crit_edge
  %wl42 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %35 = ptrtoint ptr %wl42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wl42, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef %..i) #6
  br label %cleanup

err_destroy_rx0:                                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %rx_ring0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_ring0, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %38)
  %39 = ptrtoint ptr %rx_ring0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rx_ring0, align 4
  br label %err_destroy_tx5

err_destroy_tx5:                                  ; preds = %err_destroy_rx0, %if.end28.err_destroy_tx5_crit_edge
  %40 = ptrtoint ptr %tx_ring5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_ring5, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %41)
  %42 = ptrtoint ptr %tx_ring5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %tx_ring5, align 4
  br label %err_destroy_tx4

err_destroy_tx4:                                  ; preds = %err_destroy_tx5, %if.end24.err_destroy_tx4_crit_edge
  %43 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_ring4, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %44)
  %45 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %tx_ring4, align 4
  br label %err_destroy_tx3

err_destroy_tx3:                                  ; preds = %err_destroy_tx4, %if.end20.err_destroy_tx3_crit_edge
  %46 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_ring3, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %47)
  %48 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %tx_ring3, align 4
  br label %err_destroy_tx2

err_destroy_tx2:                                  ; preds = %err_destroy_tx3, %if.end16.err_destroy_tx2_crit_edge
  %49 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_ring2, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %50)
  %51 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %tx_ring2, align 4
  br label %err_destroy_tx1

err_destroy_tx1:                                  ; preds = %err_destroy_tx2, %if.end12.err_destroy_tx1_crit_edge
  %52 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_ring1, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %53)
  %54 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %tx_ring1, align 4
  br label %err_destroy_tx0

err_destroy_tx0:                                  ; preds = %err_destroy_tx1, %if.end8.err_destroy_tx0_crit_edge
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %0, align 4
  tail call fastcc void @b43legacy_destroy_dmaring(ptr noundef %56)
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_tx0, %if.end41, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -11, %if.then ], [ 0, %if.end41 ], [ -12, %err_destroy_tx0 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacywarn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_dma_translation(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @b43legacy_setup_dmaring(ptr noundef %dev, i32 noundef %controller_index, i32 noundef %for_tx, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %type1 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 12
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %type, ptr %type1, align 4
  %dev2 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 15
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %for_tx)
  %tobool3.not = icmp eq i32 %for_tx, 0
  %spec.store.select = select i1 %tobool3.not, i32 64, i32 128
  %3 = mul nuw nsw i32 %spec.store.select, 12
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #10
  %meta = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %meta, align 4
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end.err_kfree_ring_crit_edge, label %if.end10

if.end.err_kfree_ring_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree_ring

if.end10:                                         ; preds = %if.end
  br i1 %tobool3.not, label %if.else.critedge, label %if.then12

if.then12:                                        ; preds = %if.end10
  %5 = mul nuw nsw i32 %spec.store.select, 82
  %call8.i.i163 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #10
  %txhdr_cache = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %txhdr_cache to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i163, ptr %txhdr_cache, align 8
  %tobool15.not = icmp eq ptr %call8.i.i163, null
  br i1 %tobool15.not, label %if.then12.err_kfree_meta_crit_edge, label %if.end17

if.then12.err_kfree_meta_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree_meta

if.end17:                                         ; preds = %if.then12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call8.i.i163) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end17
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !55

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %10) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i167, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i167:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i167, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i168 = phi ptr [ %14, %if.end.i.i167 ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i, ptr noundef %retval.0.i.i168) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %10, ptr noundef nonnull %call8.i.i163, i32 noundef 82) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %call8.i.i163 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %10, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 82, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dma_dev.i = getelementptr inbounds %struct.ssb_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i.not.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i.not.i, label %dma_map_single_attrs.exit.if.end.i.i170_crit_edge, label %if.end.i, !prof !54

dma_map_single_attrs.exit.if.end.i.i170_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i170

if.end.i:                                         ; preds = %dma_map_single_attrs.exit
  %23 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type1, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %24, label %if.end.i.if.end37_crit_edge [
    i32 30, label %sw.bb.i
    i32 32, label %sw.bb8.i
  ]

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741742, i32 %retval.0.i)
  %cmp.i = icmp ugt i32 %retval.0.i, 1073741742
  br i1 %cmp.i, label %sw.bb.i.address_error.i_crit_edge, label %sw.bb.i.if.end37_crit_edge

sw.bb.i.if.end37_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

sw.bb.i.address_error.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -82, i32 %retval.0.i)
  %cmp12.i = icmp ugt i32 %retval.0.i, -82
  br i1 %cmp12.i, label %sw.bb8.i.address_error.i_crit_edge, label %sw.bb8.i.if.end37_crit_edge

sw.bb8.i.if.end37_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

sw.bb8.i.address_error.i_crit_edge:               ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i

address_error.i:                                  ; preds = %sw.bb8.i.address_error.i_crit_edge, %sw.bb.i.address_error.i_crit_edge
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.ssb_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_dev4.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %retval.0.i, i32 noundef 82, i32 noundef 1, i32 noundef 0) #6
  br label %if.end.i.i170

if.end.i.i170:                                    ; preds = %address_error.i, %dma_map_single_attrs.exit.if.end.i.i170_crit_edge
  %32 = ptrtoint ptr %txhdr_cache to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %txhdr_cache, align 8
  tail call void @kfree(ptr noundef %33) #6
  %call8.i.i199 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3521) #10
  %34 = ptrtoint ptr %txhdr_cache to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i199, ptr %txhdr_cache, align 8
  %tobool27.not = icmp eq ptr %call8.i.i199, null
  br i1 %tobool27.not, label %if.end.i.i170.err_kfree_meta_crit_edge, label %if.end29

if.end.i.i170.err_kfree_meta_crit_edge:           ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree_meta

if.end29:                                         ; preds = %if.end.i.i170
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %dma_dev31 = getelementptr inbounds %struct.ssb_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dma_dev31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_dev31, align 4
  %call.i203 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call8.i.i199) #6
  br i1 %call.i203, label %land.rhs.i205, label %if.end39.i218

land.rhs.i205:                                    ; preds = %if.end29
  %.b1.i204 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i204, label %land.rhs.i205.dma_map_single_attrs.exit220_crit_edge, label %if.then.i209, !prof !55

land.rhs.i205.dma_map_single_attrs.exit220_crit_edge: ; preds = %land.rhs.i205
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit220

if.then.i209:                                     ; preds = %land.rhs.i205
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i206 = tail call ptr @dev_driver_string(ptr noundef %38) #6
  %init_name.i.i207 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %init_name.i.i207 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i207, align 8
  %tobool.not.i.i208 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i208, label %if.end.i.i210, label %if.then.i209.dev_name.exit.i212_crit_edge

if.then.i209.dev_name.exit.i212_crit_edge:        ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i212

if.end.i.i210:                                    ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  br label %dev_name.exit.i212

dev_name.exit.i212:                               ; preds = %if.end.i.i210, %if.then.i209.dev_name.exit.i212_crit_edge
  %retval.0.i.i211 = phi ptr [ %42, %if.end.i.i210 ], [ %40, %if.then.i209.dev_name.exit.i212_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i206, ptr noundef %retval.0.i.i211) #6
  br label %dma_map_single_attrs.exit220

if.end39.i218:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %38, ptr noundef nonnull %call8.i.i199, i32 noundef 82) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %43 = load ptr, ptr @mem_map, align 4
  %44 = ptrtoint ptr %call8.i.i199 to i32
  %sub.i213 = add i32 %44, 1073741824
  %shr.i214 = lshr i32 %sub.i213, 12
  %add.ptr.i215 = getelementptr %struct.page, ptr %43, i32 %shr.i214
  %and.i216 = and i32 %44, 3968
  %call41.i217 = tail call i32 @dma_map_page_attrs(ptr noundef %38, ptr noundef %add.ptr.i215, i32 noundef %and.i216, i32 noundef 82, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit220

dma_map_single_attrs.exit220:                     ; preds = %if.end39.i218, %dev_name.exit.i212, %land.rhs.i205.dma_map_single_attrs.exit220_crit_edge
  %retval.0.i219 = phi i32 [ %call41.i217, %if.end39.i218 ], [ -1, %dev_name.exit.i212 ], [ -1, %land.rhs.i205.dma_map_single_attrs.exit220_crit_edge ]
  %45 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev2, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dma_dev.i222 = getelementptr inbounds %struct.ssb_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dma_dev.i222 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_dev.i222, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %50, i32 noundef %retval.0.i219) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i219)
  %cmp.i.not.i223 = icmp eq i32 %retval.0.i219, -1
  br i1 %cmp.i.not.i223, label %dma_map_single_attrs.exit220.err_kfree_txhdr_cache_crit_edge, label %if.end.i225, !prof !54

dma_map_single_attrs.exit220.err_kfree_txhdr_cache_crit_edge: ; preds = %dma_map_single_attrs.exit220
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree_txhdr_cache

if.end.i225:                                      ; preds = %dma_map_single_attrs.exit220
  %51 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type1, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %52, label %if.end.i225.if.end37_crit_edge [
    i32 30, label %sw.bb.i229
    i32 32, label %sw.bb8.i233
  ]

if.end.i225.if.end37_crit_edge:                   ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

sw.bb.i229:                                       ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741742, i32 %retval.0.i219)
  %cmp.i228 = icmp ugt i32 %retval.0.i219, 1073741742
  br i1 %cmp.i228, label %sw.bb.i229.address_error.i235_crit_edge, label %sw.bb.i229.if.end37_crit_edge

sw.bb.i229.if.end37_crit_edge:                    ; preds = %sw.bb.i229
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

sw.bb.i229.address_error.i235_crit_edge:          ; preds = %sw.bb.i229
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i235

sw.bb8.i233:                                      ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_const_cmp4(i32 -82, i32 %retval.0.i219)
  %cmp12.i232 = icmp ugt i32 %retval.0.i219, -82
  br i1 %cmp12.i232, label %sw.bb8.i233.address_error.i235_crit_edge, label %sw.bb8.i233.if.end37_crit_edge

sw.bb8.i233.if.end37_crit_edge:                   ; preds = %sw.bb8.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

sw.bb8.i233.address_error.i235_crit_edge:         ; preds = %sw.bb8.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i235

address_error.i235:                               ; preds = %sw.bb8.i233.address_error.i235_crit_edge, %sw.bb.i229.address_error.i235_crit_edge
  %54 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev2, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dma_dev4.i.i234 = getelementptr inbounds %struct.ssb_device, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dma_dev4.i.i234 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_dev4.i.i234, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %59, i32 noundef %retval.0.i219, i32 noundef 82, i32 noundef 1, i32 noundef 0) #6
  br label %err_kfree_txhdr_cache

if.end37:                                         ; preds = %sw.bb8.i233.if.end37_crit_edge, %sw.bb.i229.if.end37_crit_edge, %if.end.i225.if.end37_crit_edge, %sw.bb8.i.if.end37_crit_edge, %sw.bb.i.if.end37_crit_edge, %if.end.i.if.end37_crit_edge
  %dma_test.0 = phi i32 [ %retval.0.i, %sw.bb8.i.if.end37_crit_edge ], [ %retval.0.i, %sw.bb.i.if.end37_crit_edge ], [ %retval.0.i, %if.end.i.if.end37_crit_edge ], [ %retval.0.i219, %sw.bb8.i233.if.end37_crit_edge ], [ %retval.0.i219, %sw.bb.i229.if.end37_crit_edge ], [ %retval.0.i219, %if.end.i225.if.end37_crit_edge ]
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %dma_dev39 = getelementptr inbounds %struct.ssb_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dma_dev39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_dev39, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %63, i32 noundef %dma_test.0, i32 noundef 82, i32 noundef 1, i32 noundef 0) #6
  %nr_slots41.c = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %nr_slots41.c to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.store.select, ptr %nr_slots41.c, align 8
  %arrayidx.i = getelementptr [6 x i16], ptr @b43legacy_dmacontroller_base.map32, i32 0, i32 %controller_index
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i, align 2
  %mmio_base.c = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 9
  %67 = ptrtoint ptr %mmio_base.c to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %mmio_base.c, align 2
  %index.c = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 10
  %68 = ptrtoint ptr %index.c to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %controller_index, ptr %index.c, align 4
  %tx = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 11
  %69 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %tx, align 8
  %current_slot = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %current_slot to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %current_slot, align 8
  br label %if.end73

if.else.critedge:                                 ; preds = %if.end10
  %nr_slots41.c130 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %nr_slots41.c130 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.store.select, ptr %nr_slots41.c130, align 8
  %arrayidx.i238 = getelementptr [6 x i16], ptr @b43legacy_dmacontroller_base.map32, i32 0, i32 %controller_index
  %72 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i238, align 2
  %mmio_base.c132 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 9
  %74 = ptrtoint ptr %mmio_base.c132 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %mmio_base.c132, align 2
  %index.c133 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 10
  %75 = ptrtoint ptr %index.c133 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %controller_index, ptr %index.c133, align 4
  %76 = zext i32 %controller_index to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %controller_index, label %do.end [
    i32 0, label %if.then46
    i32 3, label %if.then50
  ]

if.then46:                                        ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %rx_buffersize = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 8
  %77 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 2404, ptr %rx_buffersize, align 8
  %frameoffset = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 7
  %78 = ptrtoint ptr %frameoffset to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 30, ptr %frameoffset, align 4
  br label %if.end73

if.then50:                                        ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %rx_buffersize51 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 8
  %79 = ptrtoint ptr %rx_buffersize51 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 16, ptr %rx_buffersize51, align 8
  %frameoffset52 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %frameoffset52 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %frameoffset52, align 4
  br label %if.end73

do.end:                                           ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 686, i32 noundef 9, ptr noundef null) #6
  br label %if.end73

if.end73:                                         ; preds = %do.end, %if.then50, %if.then46, %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %last_injected_overflow = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 17
  %82 = ptrtoint ptr %last_injected_overflow to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %last_injected_overflow, align 4
  %83 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev2, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %dma_dev.i240 = getelementptr inbounds %struct.ssb_device, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %dma_dev.i240 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dma_dev.i240, align 4
  %dmabase.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %88, i32 noundef 4096, ptr noundef %dmabase.i, i32 noundef 3264, i32 noundef 0) #6
  %89 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i.i, ptr %call7.i.i, align 8
  %tobool.not.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not, label %if.end73.err_kfree_txhdr_cache_crit_edge, label %if.end77

if.end73.err_kfree_txhdr_cache_crit_edge:         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree_txhdr_cache

if.end77:                                         ; preds = %if.end73
  %90 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev2, align 4
  %translation.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %91, i32 0, i32 10, i32 0, i32 8
  %92 = ptrtoint ptr %translation.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %translation.i, align 4
  %94 = ptrtoint ptr %dmabase.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dmabase.i, align 4
  %tx.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 11
  %96 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tx.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i243 = icmp eq i8 %97, 0
  br i1 %tobool.not.i243, label %if.else.i, label %if.then.i244

if.then.i244:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %98 = lshr i32 %95, 14
  %shl.i = and i32 %98, 196608
  %or.i = or i32 %shl.i, 1
  %mmio_base.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 9
  %99 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %mmio_base.i.i, align 2
  %101 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %91, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %106(ptr noundef %102, i16 noundef zeroext %100, i32 noundef %or.i) #6
  %and2.i = and i32 %95, 1073741823
  %or3.i = or i32 %and2.i, %93
  %107 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev2, align 4
  %109 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %mmio_base.i.i, align 2
  %add.i.i = add i16 %110, 4
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %108, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %write32.i.i.i37.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %write32.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write32.i.i.i37.i, align 4
  tail call void %116(ptr noundef %112, i16 noundef zeroext %add.i.i, i32 noundef %or3.i) #6
  br label %out

if.else.i:                                        ; preds = %if.end77
  %nr_slots.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 4
  %117 = ptrtoint ptr %nr_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nr_slots.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp32.i.i = icmp sgt i32 %118, 0
  br i1 %cmp32.i.i, label %if.else.i.for.body.i.i_crit_edge, label %if.else.i.alloc_initial_descbuffers.exit.thread.i_crit_edge

if.else.i.alloc_initial_descbuffers.exit.thread.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %alloc_initial_descbuffers.exit.thread.i

if.else.i.for.body.i.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.i.for.body.i.i_crit_edge
  %i.033.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.for.body.i.i_crit_edge ]
  %119 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %meta, align 4
  %arrayidx.i.i.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %120, i32 %i.033.i.i
  %121 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call7.i.i, align 8
  %arrayidx2.i.i.i = getelementptr %struct.b43legacy_dmadesc32, ptr %122, i32 %i.033.i.i
  %call1.i.i = tail call fastcc i32 @setup_rx_descbuffer(ptr noundef %call7.i.i, ptr noundef %arrayidx2.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i245 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i245, label %for.inc.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %123 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev2, align 4
  %wl.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %126, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.033.i.i)
  %cmp435.not.i.i = icmp eq i32 %i.033.i.i, 0
  br i1 %cmp435.not.i.i, label %if.then.i.i.err_free_ringmemory_crit_edge, label %for.body5.lr.ph.i.i

if.then.i.i.err_free_ringmemory_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_ringmemory

for.body5.lr.ph.i.i:                              ; preds = %if.then.i.i
  %rx_buffersize.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 8
  br label %for.body5.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %127 = ptrtoint ptr %nr_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nr_slots.i.i, align 8
  %cmp.i.i = icmp slt i32 %inc.i.i, %128
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.alloc_initial_descbuffers.exit.thread.i_crit_edge

for.inc.i.i.alloc_initial_descbuffers.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %alloc_initial_descbuffers.exit.thread.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

alloc_initial_descbuffers.exit.thread.i:          ; preds = %for.inc.i.i.alloc_initial_descbuffers.exit.thread.i_crit_edge, %if.else.i.alloc_initial_descbuffers.exit.thread.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %129 = ptrtoint ptr %nr_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nr_slots.i.i, align 8
  %used_slots.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 5
  %131 = ptrtoint ptr %used_slots.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %used_slots.i.i, align 4
  %frameoffset.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 7
  %132 = ptrtoint ptr %frameoffset.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %frameoffset.i, align 4
  %shl8.i = shl i32 %133, 1
  %134 = lshr i32 %95, 14
  %shl10.i = and i32 %134, 196608
  %or9.i = or i32 %shl10.i, %shl8.i
  %or12.i = or i32 %or9.i, 1
  %135 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev2, align 4
  %mmio_base.i40.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 9
  %137 = ptrtoint ptr %mmio_base.i40.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %mmio_base.i40.i, align 2
  %add.i41.i = add i16 %138, 16
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %136, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %write32.i.i.i42.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %write32.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write32.i.i.i42.i, align 4
  tail call void %144(ptr noundef %140, i16 noundef zeroext %add.i41.i, i32 noundef %or12.i) #6
  %and13.i = and i32 %95, 1073741823
  %or14.i = or i32 %and13.i, %93
  %145 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev2, align 4
  %147 = ptrtoint ptr %mmio_base.i40.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %mmio_base.i40.i, align 2
  %add.i45.i = add i16 %148, 20
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %146, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %write32.i.i.i46.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %write32.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write32.i.i.i46.i, align 4
  tail call void %154(ptr noundef %150, i16 noundef zeroext %add.i45.i, i32 noundef %or14.i) #6
  %155 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev2, align 4
  %157 = ptrtoint ptr %mmio_base.i40.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %mmio_base.i40.i, align 2
  %add.i49.i = add i16 %158, 24
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %156, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %write32.i.i.i50.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %162, i32 0, i32 5
  %163 = ptrtoint ptr %write32.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write32.i.i.i50.i, align 4
  tail call void %164(ptr noundef %160, i16 noundef zeroext %add.i49.i, i32 noundef 200) #6
  br label %out

for.body5.i.i:                                    ; preds = %for.body5.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %i.136.in.i.i = phi i32 [ %i.033.i.i, %for.body5.lr.ph.i.i ], [ %i.136.i.i, %for.body5.i.i.for.body5.i.i_crit_edge ]
  %i.136.i.i = add nsw i32 %i.136.in.i.i, -1
  %165 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %meta, align 4
  %arrayidx.i26.i.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %166, i32 %i.136.i.i
  %dmaaddr.i.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %166, i32 %i.136.i.i, i32 1
  %167 = ptrtoint ptr %dmaaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dmaaddr.i.i, align 4
  %169 = ptrtoint ptr %rx_buffersize.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %rx_buffersize.i.i, align 8
  %conv.i.i = zext i16 %170 to i32
  %171 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev2, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %dma_dev4.i.i.i = getelementptr inbounds %struct.ssb_device, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %dma_dev4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dma_dev4.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %176, i32 noundef %168, i32 noundef %conv.i.i, i32 noundef 2, i32 noundef 0) #6
  %177 = ptrtoint ptr %arrayidx.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i26.i.i, align 4
  tail call void @consume_skb(ptr noundef %178) #6
  %cmp4.i.i = icmp sgt i32 %i.136.in.i.i, 1
  br i1 %cmp4.i.i, label %for.body5.i.i.for.body5.i.i_crit_edge, label %for.body5.i.i.err_free_ringmemory_crit_edge

for.body5.i.i.err_free_ringmemory_crit_edge:      ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_ringmemory

for.body5.i.i.for.body5.i.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i.i

out:                                              ; preds = %err_kfree_ring, %alloc_initial_descbuffers.exit.thread.i, %if.then.i244, %entry.out_crit_edge
  %ring.0 = phi ptr [ null, %err_kfree_ring ], [ null, %entry.out_crit_edge ], [ %call7.i.i, %if.then.i244 ], [ %call7.i.i, %alloc_initial_descbuffers.exit.thread.i ]
  ret ptr %ring.0

err_free_ringmemory:                              ; preds = %for.body5.i.i.err_free_ringmemory_crit_edge, %if.then.i.i.err_free_ringmemory_crit_edge
  %179 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev2, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %dma_dev.i247 = getelementptr inbounds %struct.ssb_device, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %dma_dev.i247 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dma_dev.i247, align 4
  %185 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %call7.i.i, align 8
  %187 = ptrtoint ptr %dmabase.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %dmabase.i, align 4
  tail call void @dma_free_attrs(ptr noundef %184, i32 noundef 4096, ptr noundef %186, i32 noundef %188, i32 noundef 0) #6
  br label %err_kfree_txhdr_cache

err_kfree_txhdr_cache:                            ; preds = %err_free_ringmemory, %if.end73.err_kfree_txhdr_cache_crit_edge, %address_error.i235, %dma_map_single_attrs.exit220.err_kfree_txhdr_cache_crit_edge
  %txhdr_cache82 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %call7.i.i, i32 0, i32 2
  %189 = ptrtoint ptr %txhdr_cache82 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %txhdr_cache82, align 8
  tail call void @kfree(ptr noundef %190) #6
  br label %err_kfree_meta

err_kfree_meta:                                   ; preds = %err_kfree_txhdr_cache, %if.end.i.i170.err_kfree_meta_crit_edge, %if.then12.err_kfree_meta_crit_edge
  %191 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %meta, align 4
  tail call void @kfree(ptr noundef %192) #6
  br label %err_kfree_ring

err_kfree_ring:                                   ; preds = %err_kfree_meta, %if.end.err_kfree_ring_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacydbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_dma_tx(ptr noundef %dev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %tx_ring1.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %0 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring1.i, align 4
  %tx = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !54

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1063, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %stopped = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stopped, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool22.not = icmp eq i8 %5, 0
  br i1 %tobool22.not, label %if.end34, label %if.then29, !prof !55

if.then29:                                        ; preds = %if.end
  %call30 = tail call i32 @b43legacy_debug(ptr noundef %dev, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.cleanup_crit_edge, label %if.then32

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %7, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %nr_slots.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_slots.i, align 4
  %used_slots.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used_slots.i, align 4
  %sub.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 2
  br i1 %cmp, label %do.end53, label %if.end70, !prof !54

do.end53:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1075, i32 noundef 9, ptr noundef null) #6
  %wl69 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %wl69 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wl69, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %13, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end70:                                         ; preds = %if.end34
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not.i = icmp eq i8 %17, 0
  br i1 %cmp.not.i, label %if.end70.if.end.i_crit_edge, label %do.end.i, !prof !55

if.end70.if.end.i_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 947, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end70.if.end.i_crit_edge
  %current_slot.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %current_slot.i, align 4
  %20 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used_slots.i, align 4
  %call21.i = tail call fastcc i32 @request_slot(ptr noundef %1) #6
  %meta1.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %meta1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %meta1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %23, i32 %call21.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %arrayidx2.i.i = getelementptr %struct.b43legacy_dmadesc32, ptr %25, i32 %call21.i
  %26 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 12)
  %txhdr_cache.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %txhdr_cache.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %txhdr_cache.i, align 4
  %mul.i = mul i32 %call21.i, 82
  %arrayidx.i = getelementptr i8, ptr %28, i32 %mul.i
  %dev.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i, align 4
  %index.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %37 = icmp ult i32 %36, 6
  %switch.idx.mult = shl i32 %36, 12
  %switch.offset = add i32 %switch.idx.mult, 40960
  %cookie.0.i.i = select i1 %37, i32 %switch.offset, i32 4096
  %and.i.i = and i32 %call21.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.generate_cookie.exit.i_crit_edge, label %do.end.i.i, !prof !55

if.end.i.generate_cookie.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %generate_cookie.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 891, i32 noundef 9, ptr noundef null) #6
  br label %generate_cookie.exit.i

generate_cookie.exit.i:                           ; preds = %do.end.i.i, %if.end.i.generate_cookie.exit.i_crit_edge
  %or.i.i = or i32 %cookie.0.i.i, %call21.i
  %conv30.i.i = trunc i32 %or.i.i to i16
  %call24.i = tail call i32 @b43legacy_generate_txhdr(ptr noundef %30, ptr noundef %arrayidx.i, ptr noundef %32, i32 noundef %34, ptr noundef %cb.i.i, i16 noundef zeroext %conv30.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end35.i, label %dma_tx_fragment.exit, !prof !55

if.end35.i:                                       ; preds = %generate_cookie.exit.i
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.ssb_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_dev4.i.i, align 4
  %call.i9.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %arrayidx.i) #6
  br i1 %call.i9.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end35.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.map_descbuffer.exit.i_crit_edge, label %if.then.i.i.i, !prof !55

land.rhs.i.i.i.map_descbuffer.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %map_descbuffer.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %43) #6
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %47, %if.end.i.i.i.i ], [ %45, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #6
  br label %map_descbuffer.exit.i

if.end39.i.i.i:                                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %43, ptr noundef %arrayidx.i, i32 noundef 82) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %48 = load ptr, ptr @mem_map, align 4
  %49 = ptrtoint ptr %arrayidx.i to i32
  %sub.i.i.i = add i32 %49, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %48, i32 %shr.i.i.i
  %and.i.i.i = and i32 %49, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %43, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 82, i32 noundef 1, i32 noundef 0) #6
  br label %map_descbuffer.exit.i

map_descbuffer.exit.i:                            ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.map_descbuffer.exit.i_crit_edge
  %dmaaddr.0.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.map_descbuffer.exit.i_crit_edge ]
  %dmaaddr.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %23, i32 %call21.i, i32 1
  %50 = ptrtoint ptr %dmaaddr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %dmaaddr.0.i.i, ptr %dmaaddr.i, align 4
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.ssb_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_dev.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %56, i32 noundef %dmaaddr.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0.i.i)
  %cmp.i.not.i.i = icmp eq i32 %dmaaddr.0.i.i, -1
  br i1 %cmp.i.not.i.i, label %map_descbuffer.exit.i.dma_tx_fragment.exit.thread_crit_edge, label %if.end.i.i, !prof !54

map_descbuffer.exit.i.dma_tx_fragment.exit.thread_crit_edge: ; preds = %map_descbuffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_tx_fragment.exit.thread

if.end.i.i:                                       ; preds = %map_descbuffer.exit.i
  %type.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 12
  %57 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type.i.i, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %58, label %if.end.i.i.if.end42.i_crit_edge [
    i32 30, label %sw.bb.i170.i
    i32 32, label %sw.bb8.i.i
  ]

if.end.i.i.if.end42.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

sw.bb.i170.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741742, i32 %dmaaddr.0.i.i)
  %cmp.i.i = icmp ugt i32 %dmaaddr.0.i.i, 1073741742
  br i1 %cmp.i.i, label %sw.bb.i170.i.address_error.i.i_crit_edge, label %sw.bb.i170.i.if.end42.i_crit_edge

sw.bb.i170.i.if.end42.i_crit_edge:                ; preds = %sw.bb.i170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

sw.bb.i170.i.address_error.i.i_crit_edge:         ; preds = %sw.bb.i170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -82, i32 %dmaaddr.0.i.i)
  %cmp12.i.i = icmp ugt i32 %dmaaddr.0.i.i, -82
  br i1 %cmp12.i.i, label %sw.bb8.i.i.address_error.i.i_crit_edge, label %sw.bb8.i.i.if.end42.i_crit_edge

sw.bb8.i.i.if.end42.i_crit_edge:                  ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

sw.bb8.i.i.address_error.i.i_crit_edge:           ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i.i

address_error.i.i:                                ; preds = %sw.bb8.i.i.address_error.i.i_crit_edge, %sw.bb.i170.i.address_error.i.i_crit_edge
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %dma_dev4.i.i.i = getelementptr inbounds %struct.ssb_device, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %dma_dev4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_dev4.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %65, i32 noundef %dmaaddr.0.i.i, i32 noundef 82, i32 noundef 1, i32 noundef 0) #6
  br label %dma_tx_fragment.exit.thread

dma_tx_fragment.exit.thread:                      ; preds = %address_error.i.i, %map_descbuffer.exit.i.dma_tx_fragment.exit.thread_crit_edge
  %66 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %19, ptr %current_slot.i, align 4
  %67 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %21, ptr %used_slots.i, align 4
  br label %if.then89

if.end42.i:                                       ; preds = %sw.bb8.i.i.if.end42.i_crit_edge, %sw.bb.i170.i.if.end42.i_crit_edge, %if.end.i.i.if.end42.i_crit_edge
  %68 = ptrtoint ptr %dmaaddr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dmaaddr.i, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %arrayidx2.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %sub.ptr.sub.i.i)
  %cmp.i171.i = icmp sgt i32 %sub.ptr.sub.i.i, -8
  br i1 %cmp.i171.i, label %land.rhs.i.i, label %if.end42.i.do.end.i172.i_crit_edge

if.end42.i.do.end.i172.i_crit_edge:               ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i172.i

land.rhs.i.i:                                     ; preds = %if.end42.i
  %72 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %73)
  %cmp2.not.i.i = icmp slt i32 %sub.ptr.div.i.i, %73
  br i1 %cmp2.not.i.i, label %land.rhs.i.i.op32_fill_descriptor.exit.i_crit_edge, label %land.rhs.i.i.do.end.i172.i_crit_edge, !prof !55

land.rhs.i.i.do.end.i172.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i172.i

land.rhs.i.i.op32_fill_descriptor.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %op32_fill_descriptor.exit.i

do.end.i172.i:                                    ; preds = %land.rhs.i.i.do.end.i172.i_crit_edge, %if.end42.i.do.end.i172.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 57, i32 noundef 9, ptr noundef null) #6
  br label %op32_fill_descriptor.exit.i

op32_fill_descriptor.exit.i:                      ; preds = %do.end.i172.i, %land.rhs.i.i.op32_fill_descriptor.exit.i_crit_edge
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %translation.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %75, i32 0, i32 10, i32 0, i32 8
  %76 = ptrtoint ptr %translation.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %translation.i.i, align 4
  %frameoffset.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 7
  %78 = ptrtoint ptr %frameoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %frameoffset.i.i, align 4
  %sub.i.i = sub i32 82, %79
  %and23.i.i = and i32 %sub.i.i, 8191
  %80 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_slots.i, align 4
  %sub25.i.i = add i32 %81, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %sub25.i.i)
  %cmp26.i.i = icmp eq i32 %sub.ptr.div.i.i, %sub25.i.i
  %or29.i.i = or i32 %and23.i.i, 268435456
  %spec.select.i.i = select i1 %cmp26.i.i, i32 %or29.i.i, i32 %and23.i.i
  %and.i174.i = and i32 %69, 1073741823
  %or.i175.i = or i32 %77, %and.i174.i
  %82 = lshr i32 %69, 14
  %shl.i.i = and i32 %82, 196608
  %or33.i.i = or i32 %shl.i.i, %spec.select.i.i
  %or44.i.i = or i32 %or33.i.i, -2147483648
  %83 = tail call i32 @llvm.bswap.i32(i32 %or44.i.i) #6
  %84 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %83, ptr %arrayidx2.i.i, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %or.i175.i) #6
  %address.i.i = getelementptr %struct.b43legacy_dmadesc32, ptr %25, i32 %call21.i, i32 1
  %86 = ptrtoint ptr %address.i.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %85, ptr %address.i.i, align 1
  %call44.i = tail call fastcc i32 @request_slot(ptr noundef %1) #6
  %87 = ptrtoint ptr %meta1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %meta1.i.i, align 4
  %arrayidx.i178.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %88, i32 %call44.i
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %arrayidx2.i179.i = getelementptr %struct.b43legacy_dmadesc32, ptr %90, i32 %call44.i
  %91 = getelementptr inbounds i8, ptr %arrayidx.i178.i, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 0, ptr %91, align 4
  %93 = ptrtoint ptr %arrayidx.i178.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %skb, ptr %arrayidx.i178.i, align 4
  %is_last_fragment.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %88, i32 %call44.i, i32 2
  %94 = ptrtoint ptr %is_last_fragment.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %is_last_fragment.i, align 4
  %95 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i, align 4
  %97 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i, align 4
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %dma_dev4.i181.i = getelementptr inbounds %struct.ssb_device, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %dma_dev4.i181.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma_dev4.i181.i, align 4
  %call.i9.i182.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %96) #6
  br i1 %call.i9.i182.i, label %land.rhs.i.i184.i, label %if.end39.i.i197.i

land.rhs.i.i184.i:                                ; preds = %op32_fill_descriptor.exit.i
  %.b1.i.i183.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i183.i, label %land.rhs.i.i184.i.map_descbuffer.exit200.i_crit_edge, label %if.then.i.i188.i, !prof !55

land.rhs.i.i184.i.map_descbuffer.exit200.i_crit_edge: ; preds = %land.rhs.i.i184.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %map_descbuffer.exit200.i

if.then.i.i188.i:                                 ; preds = %land.rhs.i.i184.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i185.i = tail call ptr @dev_driver_string(ptr noundef %104) #6
  %init_name.i.i.i186.i = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %init_name.i.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %init_name.i.i.i186.i, align 8
  %tobool.not.i.i.i187.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.i187.i, label %if.end.i.i.i189.i, label %if.then.i.i188.i.dev_name.exit.i.i191.i_crit_edge

if.then.i.i188.i.dev_name.exit.i.i191.i_crit_edge: ; preds = %if.then.i.i188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i191.i

if.end.i.i.i189.i:                                ; preds = %if.then.i.i188.i
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %104, align 4
  br label %dev_name.exit.i.i191.i

dev_name.exit.i.i191.i:                           ; preds = %if.end.i.i.i189.i, %if.then.i.i188.i.dev_name.exit.i.i191.i_crit_edge
  %retval.0.i.i.i190.i = phi ptr [ %108, %if.end.i.i.i189.i ], [ %106, %if.then.i.i188.i.dev_name.exit.i.i191.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i.i185.i, ptr noundef %retval.0.i.i.i190.i) #6
  br label %map_descbuffer.exit200.i

if.end39.i.i197.i:                                ; preds = %op32_fill_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %104, ptr noundef %96, i32 noundef %98) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %109 = load ptr, ptr @mem_map, align 4
  %110 = ptrtoint ptr %96 to i32
  %sub.i.i192.i = add i32 %110, 1073741824
  %shr.i.i193.i = lshr i32 %sub.i.i192.i, 12
  %add.ptr.i.i194.i = getelementptr %struct.page, ptr %109, i32 %shr.i.i193.i
  %and.i.i195.i = and i32 %110, 4095
  %call41.i.i196.i = tail call i32 @dma_map_page_attrs(ptr noundef %104, ptr noundef %add.ptr.i.i194.i, i32 noundef %and.i.i195.i, i32 noundef %98, i32 noundef 1, i32 noundef 0) #6
  br label %map_descbuffer.exit200.i

map_descbuffer.exit200.i:                         ; preds = %if.end39.i.i197.i, %dev_name.exit.i.i191.i, %land.rhs.i.i184.i.map_descbuffer.exit200.i_crit_edge
  %dmaaddr.0.i198.i = phi i32 [ %call41.i.i196.i, %if.end39.i.i197.i ], [ -1, %dev_name.exit.i.i191.i ], [ -1, %land.rhs.i.i184.i.map_descbuffer.exit200.i_crit_edge ]
  %dmaaddr50.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %88, i32 %call44.i, i32 1
  %111 = ptrtoint ptr %dmaaddr50.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %dmaaddr.0.i198.i, ptr %dmaaddr50.i, align 4
  %112 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len.i, align 4
  %114 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %dma_dev.i202.i = getelementptr inbounds %struct.ssb_device, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %dma_dev.i202.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dma_dev.i202.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %119, i32 noundef %dmaaddr.0.i198.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0.i198.i)
  %cmp.i.not.i203.i = icmp eq i32 %dmaaddr.0.i198.i, -1
  br i1 %cmp.i.not.i203.i, label %map_descbuffer.exit200.i.if.then54.i_crit_edge, label %if.end.i205.i, !prof !54

map_descbuffer.exit200.i.if.then54.i_crit_edge:   ; preds = %map_descbuffer.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54.i

if.end.i205.i:                                    ; preds = %map_descbuffer.exit200.i
  %120 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type.i.i, align 4
  %122 = zext i32 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %121, label %if.end.i205.i.if.end81.i_crit_edge [
    i32 30, label %sw.bb.i209.i
    i32 32, label %sw.bb8.i213.i
  ]

if.end.i205.i.if.end81.i_crit_edge:               ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

sw.bb.i209.i:                                     ; preds = %if.end.i205.i
  %conv.i206.i = zext i32 %dmaaddr.0.i198.i to i64
  %conv4.i.i = zext i32 %113 to i64
  %add.i207.i = add nuw nsw i64 %conv4.i.i, %conv.i206.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i207.i)
  %cmp.i208.i = icmp ugt i64 %add.i207.i, 1073741824
  br i1 %cmp.i208.i, label %sw.bb.i209.i.address_error.i215.i_crit_edge, label %sw.bb.i209.i.if.end81.i_crit_edge

sw.bb.i209.i.if.end81.i_crit_edge:                ; preds = %sw.bb.i209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

sw.bb.i209.i.address_error.i215.i_crit_edge:      ; preds = %sw.bb.i209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i215.i

sw.bb8.i213.i:                                    ; preds = %if.end.i205.i
  %conv9.i210.i = zext i32 %dmaaddr.0.i198.i to i64
  %conv10.i.i = zext i32 %113 to i64
  %add11.i211.i = add nuw nsw i64 %conv10.i.i, %conv9.i210.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i211.i)
  %cmp12.i212.i = icmp ugt i64 %add11.i211.i, 4294967296
  br i1 %cmp12.i212.i, label %sw.bb8.i213.i.address_error.i215.i_crit_edge, label %sw.bb8.i213.i.if.end81.i_crit_edge

sw.bb8.i213.i.if.end81.i_crit_edge:               ; preds = %sw.bb8.i213.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

sw.bb8.i213.i.address_error.i215.i_crit_edge:     ; preds = %sw.bb8.i213.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i215.i

address_error.i215.i:                             ; preds = %sw.bb8.i213.i.address_error.i215.i_crit_edge, %sw.bb.i209.i.address_error.i215.i_crit_edge
  %123 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %dma_dev4.i.i214.i = getelementptr inbounds %struct.ssb_device, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %dma_dev4.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dma_dev4.i.i214.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %128, i32 noundef %dmaaddr.0.i198.i, i32 noundef %113, i32 noundef 1, i32 noundef 0) #6
  br label %if.then54.i

if.then54.i:                                      ; preds = %address_error.i215.i, %map_descbuffer.exit200.i.if.then54.i_crit_edge
  %129 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len.i, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %130, i32 noundef 3265, i32 noundef 0, i32 noundef -1) #6
  %tobool57.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end61.i

if.then58.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %19, ptr %current_slot.i, align 4
  %132 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %21, ptr %used_slots.i, align 4
  br label %dma_tx_fragment.exit.thread149

if.end61.i:                                       ; preds = %if.then54.i
  %133 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i, align 4
  %135 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len.i, align 4
  %call.i218.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %136) #6
  %137 = call ptr @memcpy(ptr %call.i218.i, ptr %134, i32 %136)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %138 = call ptr @memcpy(ptr %cb.i, ptr %cb.i.i, i32 48)
  %139 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 8
  %142 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %141, ptr %142, align 8
  %144 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %queue_mapping.i, align 8
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %146 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %queue_mapping1.i.i, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  %147 = ptrtoint ptr %arrayidx.i178.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i.i, ptr %arrayidx.i178.i, align 4
  %data70.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %148 = ptrtoint ptr %data70.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data70.i, align 4
  %len71.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %150 = ptrtoint ptr %len71.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len71.i, align 4
  %152 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %dma_dev4.i221.i = getelementptr inbounds %struct.ssb_device, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %dma_dev4.i221.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dma_dev4.i221.i, align 4
  %call.i9.i222.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %149) #6
  br i1 %call.i9.i222.i, label %land.rhs.i.i224.i, label %if.end39.i.i237.i

land.rhs.i.i224.i:                                ; preds = %if.end61.i
  %.b1.i.i223.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i223.i, label %land.rhs.i.i224.i.map_descbuffer.exit240.i_crit_edge, label %if.then.i.i228.i, !prof !55

land.rhs.i.i224.i.map_descbuffer.exit240.i_crit_edge: ; preds = %land.rhs.i.i224.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %map_descbuffer.exit240.i

if.then.i.i228.i:                                 ; preds = %land.rhs.i.i224.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i225.i = tail call ptr @dev_driver_string(ptr noundef %157) #6
  %init_name.i.i.i226.i = getelementptr inbounds %struct.device, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %init_name.i.i.i226.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %init_name.i.i.i226.i, align 8
  %tobool.not.i.i.i227.i = icmp eq ptr %159, null
  br i1 %tobool.not.i.i.i227.i, label %if.end.i.i.i229.i, label %if.then.i.i228.i.dev_name.exit.i.i231.i_crit_edge

if.then.i.i228.i.dev_name.exit.i.i231.i_crit_edge: ; preds = %if.then.i.i228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i231.i

if.end.i.i.i229.i:                                ; preds = %if.then.i.i228.i
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %157, align 4
  br label %dev_name.exit.i.i231.i

dev_name.exit.i.i231.i:                           ; preds = %if.end.i.i.i229.i, %if.then.i.i228.i.dev_name.exit.i.i231.i_crit_edge
  %retval.0.i.i.i230.i = phi ptr [ %161, %if.end.i.i.i229.i ], [ %159, %if.then.i.i228.i.dev_name.exit.i.i231.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i.i225.i, ptr noundef %retval.0.i.i.i230.i) #6
  br label %map_descbuffer.exit240.i

if.end39.i.i237.i:                                ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %157, ptr noundef %149, i32 noundef %151) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %162 = load ptr, ptr @mem_map, align 4
  %163 = ptrtoint ptr %149 to i32
  %sub.i.i232.i = add i32 %163, 1073741824
  %shr.i.i233.i = lshr i32 %sub.i.i232.i, 12
  %add.ptr.i.i234.i = getelementptr %struct.page, ptr %162, i32 %shr.i.i233.i
  %and.i.i235.i = and i32 %163, 4095
  %call41.i.i236.i = tail call i32 @dma_map_page_attrs(ptr noundef %157, ptr noundef %add.ptr.i.i234.i, i32 noundef %and.i.i235.i, i32 noundef %151, i32 noundef 1, i32 noundef 0) #6
  br label %map_descbuffer.exit240.i

map_descbuffer.exit240.i:                         ; preds = %if.end39.i.i237.i, %dev_name.exit.i.i231.i, %land.rhs.i.i224.i.map_descbuffer.exit240.i_crit_edge
  %dmaaddr.0.i238.i = phi i32 [ %call41.i.i236.i, %if.end39.i.i237.i ], [ -1, %dev_name.exit.i.i231.i ], [ -1, %land.rhs.i.i224.i.map_descbuffer.exit240.i_crit_edge ]
  %164 = ptrtoint ptr %dmaaddr50.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %dmaaddr.0.i238.i, ptr %dmaaddr50.i, align 4
  %165 = ptrtoint ptr %len71.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len71.i, align 4
  %167 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %dma_dev.i242.i = getelementptr inbounds %struct.ssb_device, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %dma_dev.i242.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dma_dev.i242.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %172, i32 noundef %dmaaddr.0.i238.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0.i238.i)
  %cmp.i.not.i243.i = icmp eq i32 %dmaaddr.0.i238.i, -1
  br i1 %cmp.i.not.i243.i, label %map_descbuffer.exit240.i.if.then77.i_crit_edge, label %if.end.i245.i, !prof !54

map_descbuffer.exit240.i.if.then77.i_crit_edge:   ; preds = %map_descbuffer.exit240.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then77.i

if.end.i245.i:                                    ; preds = %map_descbuffer.exit240.i
  %173 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %type.i.i, align 4
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %174, label %if.end.i245.i.if.end81.i_crit_edge [
    i32 30, label %sw.bb.i250.i
    i32 32, label %sw.bb8.i255.i
  ]

if.end.i245.i.if.end81.i_crit_edge:               ; preds = %if.end.i245.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

sw.bb.i250.i:                                     ; preds = %if.end.i245.i
  %conv.i246.i = zext i32 %dmaaddr.0.i238.i to i64
  %conv4.i247.i = zext i32 %166 to i64
  %add.i248.i = add nuw nsw i64 %conv4.i247.i, %conv.i246.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i248.i)
  %cmp.i249.i = icmp ugt i64 %add.i248.i, 1073741824
  br i1 %cmp.i249.i, label %sw.bb.i250.i.address_error.i257.i_crit_edge, label %sw.bb.i250.i.if.end81.i_crit_edge

sw.bb.i250.i.if.end81.i_crit_edge:                ; preds = %sw.bb.i250.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

sw.bb.i250.i.address_error.i257.i_crit_edge:      ; preds = %sw.bb.i250.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i257.i

sw.bb8.i255.i:                                    ; preds = %if.end.i245.i
  %conv9.i251.i = zext i32 %dmaaddr.0.i238.i to i64
  %conv10.i252.i = zext i32 %166 to i64
  %add11.i253.i = add nuw nsw i64 %conv10.i252.i, %conv9.i251.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i253.i)
  %cmp12.i254.i = icmp ugt i64 %add11.i253.i, 4294967296
  br i1 %cmp12.i254.i, label %sw.bb8.i255.i.address_error.i257.i_crit_edge, label %sw.bb8.i255.i.if.end81.i_crit_edge

sw.bb8.i255.i.if.end81.i_crit_edge:               ; preds = %sw.bb8.i255.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

sw.bb8.i255.i.address_error.i257.i_crit_edge:     ; preds = %sw.bb8.i255.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i257.i

address_error.i257.i:                             ; preds = %sw.bb8.i255.i.address_error.i257.i_crit_edge, %sw.bb.i250.i.address_error.i257.i_crit_edge
  %176 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %dma_dev4.i.i256.i = getelementptr inbounds %struct.ssb_device, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %dma_dev4.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dma_dev4.i.i256.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %181, i32 noundef %dmaaddr.0.i238.i, i32 noundef %166, i32 noundef 1, i32 noundef 0) #6
  br label %if.then77.i

if.then77.i:                                      ; preds = %address_error.i257.i, %map_descbuffer.exit240.i.if.then77.i_crit_edge
  %182 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %19, ptr %current_slot.i, align 4
  %183 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %21, ptr %used_slots.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #6
  br label %dma_tx_fragment.exit.thread149

if.end81.i:                                       ; preds = %sw.bb8.i255.i.if.end81.i_crit_edge, %sw.bb.i250.i.if.end81.i_crit_edge, %if.end.i245.i.if.end81.i_crit_edge, %sw.bb8.i213.i.if.end81.i_crit_edge, %sw.bb.i209.i.if.end81.i_crit_edge, %if.end.i205.i.if.end81.i_crit_edge
  %skb.addr.0 = phi ptr [ %call.i.i, %if.end.i245.i.if.end81.i_crit_edge ], [ %call.i.i, %sw.bb8.i255.i.if.end81.i_crit_edge ], [ %call.i.i, %sw.bb.i250.i.if.end81.i_crit_edge ], [ %skb, %if.end.i205.i.if.end81.i_crit_edge ], [ %skb, %sw.bb8.i213.i.if.end81.i_crit_edge ], [ %skb, %sw.bb.i209.i.if.end81.i_crit_edge ]
  %184 = ptrtoint ptr %dmaaddr50.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %dmaaddr50.i, align 4
  %len83.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %186 = ptrtoint ptr %len83.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %len83.i, align 4
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i260.i = ptrtoint ptr %arrayidx2.i179.i to i32
  %sub.ptr.rhs.cast.i261.i = ptrtoint ptr %189 to i32
  %sub.ptr.sub.i262.i = sub i32 %sub.ptr.lhs.cast.i260.i, %sub.ptr.rhs.cast.i261.i
  %sub.ptr.div.i263.i = ashr exact i32 %sub.ptr.sub.i262.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %sub.ptr.sub.i262.i)
  %cmp.i264.i = icmp sgt i32 %sub.ptr.sub.i262.i, -8
  br i1 %cmp.i264.i, label %land.rhs.i267.i, label %if.end81.i.do.end.i268.i_crit_edge

if.end81.i.do.end.i268.i_crit_edge:               ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i268.i

land.rhs.i267.i:                                  ; preds = %if.end81.i
  %190 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %nr_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i263.i, i32 %191)
  %cmp2.not.i266.i = icmp slt i32 %sub.ptr.div.i263.i, %191
  br i1 %cmp2.not.i266.i, label %land.rhs.i267.i.op32_fill_descriptor.exit289.i_crit_edge, label %land.rhs.i267.i.do.end.i268.i_crit_edge, !prof !55

land.rhs.i267.i.do.end.i268.i_crit_edge:          ; preds = %land.rhs.i267.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i268.i

land.rhs.i267.i.op32_fill_descriptor.exit289.i_crit_edge: ; preds = %land.rhs.i267.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %op32_fill_descriptor.exit289.i

do.end.i268.i:                                    ; preds = %land.rhs.i267.i.do.end.i268.i_crit_edge, %if.end81.i.do.end.i268.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 57, i32 noundef 9, ptr noundef null) #6
  br label %op32_fill_descriptor.exit289.i

op32_fill_descriptor.exit289.i:                   ; preds = %do.end.i268.i, %land.rhs.i267.i.op32_fill_descriptor.exit289.i_crit_edge
  %192 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev.i, align 4
  %translation.i270.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %193, i32 0, i32 10, i32 0, i32 8
  %194 = ptrtoint ptr %translation.i270.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %translation.i270.i, align 4
  %196 = ptrtoint ptr %frameoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %frameoffset.i.i, align 4
  %sub.i273.i = sub i32 %187, %197
  %and23.i274.i = and i32 %sub.i273.i, 8191
  %198 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %nr_slots.i, align 4
  %sub25.i276.i = add i32 %199, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i263.i, i32 %sub25.i276.i)
  %cmp26.i277.i = icmp eq i32 %sub.ptr.div.i263.i, %sub25.i276.i
  %or29.i278.i = or i32 %and23.i274.i, 268435456
  %spec.select.i279.i = select i1 %cmp26.i277.i, i32 %or29.i278.i, i32 %and23.i274.i
  %and.i283.i = and i32 %185, 1073741823
  %or.i284.i = or i32 %195, %and.i283.i
  %200 = lshr i32 %185, 14
  %shl.i285.i = and i32 %200, 196608
  %or41.i282.i = or i32 %shl.i285.i, %spec.select.i279.i
  %or44.i286.i = or i32 %or41.i282.i, 1610612736
  %201 = tail call i32 @llvm.bswap.i32(i32 %or44.i286.i) #6
  %202 = ptrtoint ptr %arrayidx2.i179.i to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %201, ptr %arrayidx2.i179.i, align 1
  %203 = tail call i32 @llvm.bswap.i32(i32 %or.i284.i) #6
  %address.i287.i = getelementptr %struct.b43legacy_dmadesc32, ptr %90, i32 %call44.i, i32 1
  %204 = ptrtoint ptr %address.i287.i to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 %203, ptr %address.i287.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call44.i)
  %cmp.i290.i = icmp sgt i32 %call44.i, -2
  br i1 %cmp.i290.i, label %land.rhs.i293.i, label %op32_fill_descriptor.exit289.i.do.end.i294.i_crit_edge

op32_fill_descriptor.exit289.i.do.end.i294.i_crit_edge: ; preds = %op32_fill_descriptor.exit289.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i294.i

land.rhs.i293.i:                                  ; preds = %op32_fill_descriptor.exit289.i
  %205 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %nr_slots.i, align 4
  %sub.i292.i = add i32 %206, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i292.i, i32 %call44.i)
  %cmp1.i.i = icmp slt i32 %sub.i292.i, %call44.i
  br i1 %cmp1.i.i, label %land.rhs.i293.i.do.end.i294.i_crit_edge, label %land.rhs.i293.i.dma_tx_fragment.exit.thread143_crit_edge, !prof !54

land.rhs.i293.i.dma_tx_fragment.exit.thread143_crit_edge: ; preds = %land.rhs.i293.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_tx_fragment.exit.thread143

land.rhs.i293.i.do.end.i294.i_crit_edge:          ; preds = %land.rhs.i293.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i294.i

do.end.i294.i:                                    ; preds = %land.rhs.i293.i.do.end.i294.i_crit_edge, %op32_fill_descriptor.exit289.i.do.end.i294.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 124, i32 noundef 9, ptr noundef null) #6
  br label %dma_tx_fragment.exit.thread143

dma_tx_fragment.exit.thread143:                   ; preds = %do.end.i294.i, %land.rhs.i293.i.dma_tx_fragment.exit.thread143_crit_edge
  %207 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %nr_slots.i, align 4
  %sub22.i.i = add i32 %208, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i.i, i32 %call44.i)
  %cmp23.i.i = icmp eq i32 %sub22.i.i, %call44.i
  %add.i295.i = shl i32 %call44.i, 3
  %add.i295.op.i = add i32 %add.i295.i, 8
  %mul.i.i = select i1 %cmp23.i.i, i32 0, i32 %add.i295.op.i
  %209 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev.i, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 9
  %211 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %mmio_base.i.i.i, align 2
  %add.i.i.i = add i16 %212, 8
  %213 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %210, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %216, i32 0, i32 5
  %217 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %218(ptr noundef %214, i16 noundef zeroext %add.i.i.i, i32 noundef %mul.i.i) #6
  %219 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %nr_slots.i, align 4
  %221 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %used_slots.i, align 4
  %sub.i134 = sub i32 %220, %222
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i134)
  %cmp93 = icmp slt i32 %sub.i134, 2
  br i1 %cmp93, label %dma_tx_fragment.exit.thread143.if.then97_crit_edge, label %lor.lhs.false

dma_tx_fragment.exit.thread143.if.then97_crit_edge: ; preds = %dma_tx_fragment.exit.thread143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then97

dma_tx_fragment.exit.thread149:                   ; preds = %if.then77.i, %if.then58.i
  %err.0.i = phi i32 [ -12, %if.then58.i ], [ -5, %if.then77.i ]
  %223 = ptrtoint ptr %dmaaddr.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %dmaaddr.i, align 4
  %225 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev.i, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %dma_dev4.i299.i = getelementptr inbounds %struct.ssb_device, ptr %228, i32 0, i32 2
  %229 = ptrtoint ptr %dma_dev4.i299.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dma_dev4.i299.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %230, i32 noundef %224, i32 noundef 82, i32 noundef 1, i32 noundef 0) #6
  br label %if.then89

dma_tx_fragment.exit:                             ; preds = %generate_cookie.exit.i
  %231 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %19, ptr %current_slot.i, align 4
  %232 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %21, ptr %used_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call24.i)
  %cond = icmp eq i32 %call24.i, -126
  br i1 %cond, label %if.then80, label %dma_tx_fragment.exit.if.then89_crit_edge, !prof !58

dma_tx_fragment.exit.if.then89_crit_edge:         ; preds = %dma_tx_fragment.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89

if.then80:                                        ; preds = %dma_tx_fragment.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %cleanup

if.then89:                                        ; preds = %dma_tx_fragment.exit.if.then89_crit_edge, %dma_tx_fragment.exit.thread149, %dma_tx_fragment.exit.thread
  %retval.0.i142 = phi i32 [ -5, %dma_tx_fragment.exit.thread ], [ %call24.i, %dma_tx_fragment.exit.if.then89_crit_edge ], [ %err.0.i, %dma_tx_fragment.exit.thread149 ]
  %wl90 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %233 = ptrtoint ptr %wl90 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %wl90, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %234, ptr noundef nonnull @.str.5) #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %dma_tx_fragment.exit.thread143
  %235 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @b43legacy_debug(ptr noundef %236, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %if.then.i, !prof !55

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false
  %last_injected_overflow.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %1, i32 0, i32 17
  %237 = ptrtoint ptr %last_injected_overflow.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %last_injected_overflow.i, align 4
  %add.i = add i32 %238, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %239 = load volatile i32, ptr @jiffies, align 128
  %sub.i136 = sub i32 %add.i, %239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i136)
  %cmp.i = icmp slt i32 %sub.i136, 0
  br i1 %cmp.i, label %should_inject_overflow.exit, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

should_inject_overflow.exit:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %240 = load volatile i32, ptr @jiffies, align 128
  %241 = ptrtoint ptr %last_injected_overflow.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %last_injected_overflow.i, align 4
  %242 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev.i, align 4
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %wl.i, align 4
  %246 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %index.i.i, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %245, ptr noundef nonnull @.str.17, i32 noundef %247) #6
  br label %if.then97

if.then97:                                        ; preds = %should_inject_overflow.exit, %dma_tx_fragment.exit.thread143.if.then97_crit_edge
  %queue_mapping.i137 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 10
  %248 = ptrtoint ptr %queue_mapping.i137 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %queue_mapping.i137, align 8
  %conv99 = zext i16 %249 to i32
  %wl100 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %250 = ptrtoint ptr %wl100 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %wl100, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queue(ptr noundef %253, i32 noundef %conv99) #6
  %254 = ptrtoint ptr %wl100 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wl100, align 4
  %arrayidx = getelementptr %struct.b43legacy_wl, ptr %255, i32 0, i32 28, i32 %conv99
  %256 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 1, ptr %arrayidx, align 1
  %257 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 1, ptr %stopped, align 4
  %call103 = tail call i32 @b43legacy_debug(ptr noundef %dev, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then97.cleanup_crit_edge, label %if.then105

if.then97.cleanup_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then105:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  %258 = ptrtoint ptr %wl100 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %wl100, align 4
  %260 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %index.i.i, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %259, ptr noundef nonnull @.str.6, i32 noundef %261) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.then97.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then89, %if.then80, %do.end53, %if.then32, %if.then29.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %do.end53 ], [ 0, %if.then80 ], [ %retval.0.i142, %if.then89 ], [ -28, %if.then32 ], [ -28, %if.then29.cleanup_crit_edge ], [ 0, %if.then97.cleanup_crit_edge ], [ 0, %if.then105 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_debug(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacyerr(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_dma_handle_txstatus(ptr noundef %dev, ptr nocapture noundef readonly %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status, align 2
  %conv.i = zext i16 %1 to i32
  %and.i = and i32 %conv.i, 61440
  %2 = add nsw i32 %and.i, -40960
  %3 = lshr exact i32 %2, 12
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %sw.epilog.thread.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_ring1.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_ring2.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_ring3.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_ring4.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 4
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_ring5.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 5
  br label %sw.epilog.i

sw.epilog.thread.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 925, i32 noundef 9, ptr noundef null) #6
  br label %parse_cookie.exit.thread354

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %ring.0.in.i = phi ptr [ %tx_ring5.i, %sw.bb5.i ], [ %tx_ring4.i, %sw.bb4.i ], [ %tx_ring3.i, %sw.bb3.i ], [ %tx_ring2.i, %sw.bb2.i ], [ %tx_ring1.i, %sw.bb1.i ], [ %5, %sw.bb.i ]
  %6 = ptrtoint ptr %ring.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %ring.0.i = load ptr, ptr %ring.0.in.i, align 4
  %and21.i = and i32 %conv.i, 4095
  %tobool23.not.i = icmp eq ptr %ring.0.i, null
  br i1 %tobool23.not.i, label %sw.epilog.i.parse_cookie.exit.thread354_crit_edge, label %land.rhs.i

sw.epilog.i.parse_cookie.exit.thread354_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_cookie.exit.thread354

land.rhs.i:                                       ; preds = %sw.epilog.i
  %nr_slots.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 4
  %7 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and21.i, i32 %8)
  %cmp25.not.i = icmp slt i32 %and21.i, %8
  br i1 %cmp25.not.i, label %land.rhs.i.if.end_crit_edge, label %parse_cookie.exit, !prof !55

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

parse_cookie.exit.thread354:                      ; preds = %sw.epilog.i.parse_cookie.exit.thread354_crit_edge, %sw.epilog.thread.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 928, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

parse_cookie.exit:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 928, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %parse_cookie.exit, %land.rhs.i.if.end_crit_edge
  %tx = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 11
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %do.end, label %if.end.if.end25_crit_edge, !prof !54

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1121, i32 noundef 9, ptr noundef null) #6
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end.if.end25_crit_edge
  %current_slot = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_slot, align 4
  %used_slots = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 5
  %13 = ptrtoint ptr %used_slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used_slots, align 4
  %sub = sub i32 %12, %14
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp slt i32 %add, 0
  br i1 %cmp, label %if.then32, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_slots.i, align 4
  %add33 = add i32 %16, %add
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end25.if.end34_crit_edge
  %firstused.0 = phi i32 [ %add33, %if.then32 ], [ %add, %if.end25.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and21.i, i32 %firstused.0)
  %cmp35.not = icmp eq i32 %and21.i, %firstused.0
  br i1 %cmp35.not, label %while.cond.preheader, label %if.then42, !prof !55

while.cond.preheader:                             ; preds = %if.end34
  %meta1.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 1
  %dev2.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 15
  %acked = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 9
  %rts_count = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 4
  %wl114 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %frame_count131 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 3
  br label %while.cond

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %17 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wl, align 4
  %index = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 10
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef %20, i32 noundef %firstused.0, i32 noundef %and21.i) #6
  br label %cleanup

while.cond:                                       ; preds = %next_slot.exit, %while.cond.preheader
  %slot.2 = phi i32 [ %and21.i, %while.cond.preheader ], [ %slot.2.be, %next_slot.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %slot.2)
  %cmp45 = icmp sgt i32 %slot.2, -1
  br i1 %cmp45, label %land.rhs, label %while.cond.do.end65_crit_edge

while.cond.do.end65_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

land.rhs:                                         ; preds = %while.cond
  %21 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.2, i32 %22)
  %cmp47 = icmp slt i32 %slot.2, %22
  br i1 %cmp47, label %land.rhs.if.end71_crit_edge, label %land.rhs.do.end65_crit_edge, !prof !55

land.rhs.do.end65_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

land.rhs.if.end71_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

do.end65:                                         ; preds = %land.rhs.do.end65_crit_edge, %while.cond.do.end65_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1140, i32 noundef 9, ptr noundef null) #6
  br label %if.end71

if.end71:                                         ; preds = %do.end65, %land.rhs.if.end71_crit_edge
  %23 = ptrtoint ptr %meta1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %meta1.i, align 4
  %arrayidx.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %24, i32 %slot.2
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool80.not = icmp eq ptr %26, null
  %dmaaddr83 = getelementptr %struct.b43legacy_dmadesc_meta, ptr %24, i32 %slot.2, i32 1
  %27 = ptrtoint ptr %dmaaddr83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dmaaddr83, align 4
  br i1 %tobool80.not, label %if.end71.if.end84_crit_edge, label %if.then81

if.end71.if.end84_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then81:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end71.if.end84_crit_edge
  %.sink358 = phi i32 [ %30, %if.then81 ], [ 82, %if.end71.if.end84_crit_edge ]
  %31 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dma_dev4.i337 = getelementptr inbounds %struct.ssb_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dma_dev4.i337 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_dev4.i337, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %28, i32 noundef %.sink358, i32 noundef 1, i32 noundef 0) #6
  %is_last_fragment = getelementptr %struct.b43legacy_dmadesc_meta, ptr %24, i32 %slot.2, i32 2
  %37 = ptrtoint ptr %is_last_fragment to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_last_fragment, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool85.not = icmp eq i8 %38, 0
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %cmp179.not = icmp eq ptr %40, null
  br i1 %tobool85.not, label %if.else176, label %if.then86

if.then86:                                        ; preds = %if.end84
  br i1 %cmp179.not, label %do.body99, label %do.end107, !prof !54

do.body99:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1153, 0\0A.popsection", ""() #6, !srcloc !59
  unreachable

do.end107:                                        ; preds = %if.then86
  %count = getelementptr %struct.sk_buff, ptr %40, i32 0, i32 3, i32 9
  %41 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %bf.clear.i = and i16 %bf.load, 2047
  store i16 %bf.clear.i, ptr %count, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %40, i32 0, i32 3, i32 12
  %42 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %40, i32 0, i32 3, i32 15
  %43 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %40, i32 0, i32 3, i32 18
  %44 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %40, i32 0, i32 3, i32 20
  %45 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %46 = ptrtoint ptr %acked to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %acked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool110.not = icmp eq i8 %47, 0
  br i1 %tobool110.not, label %do.end107.if.end112_crit_edge, label %if.then111

do.end107.if.end112_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then111:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 3
  %48 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cb.i, align 8
  %or = or i32 %49, 512
  store i32 %or, ptr %cb.i, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %do.end107.if.end112_crit_edge
  %50 = ptrtoint ptr %rts_count to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rts_count, align 2
  %52 = ptrtoint ptr %wl114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wl114, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %short_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %short_frame_max_tx_count, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %57)
  %cmp116 = icmp ugt i8 %51, %57
  br i1 %cmp116, label %if.then118, label %if.else130

if.then118:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %bf.load122 = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load122, 2047
  store i16 %bf.clear, ptr %count, align 1
  %59 = ptrtoint ptr %frame_count131 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %frame_count131, align 1
  %61 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %bf.load127 = load i16, ptr %count.1.i, align 1
  %bf.value = zext i8 %60 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.clear128 = and i16 %bf.load127, 2047
  %bf.set129 = or i16 %bf.clear128, %bf.shl
  store i16 %bf.set129, ptr %count.1.i, align 1
  br label %if.end171

if.else130:                                       ; preds = %if.end112
  %62 = ptrtoint ptr %frame_count131 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %frame_count131, align 1
  %64 = zext i8 %63 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr, i16 %64)
  %cmp133 = icmp ult i16 %bf.lshr, %64
  %65 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %bf.load140 = load i16, ptr %count, align 1
  br i1 %cmp133, label %if.then135, label %if.else157

if.then135:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #8
  %bf.shl142 = and i16 %bf.load, -2048
  %bf.clear143 = and i16 %bf.load140, 2047
  %bf.set144 = or i16 %bf.clear143, %bf.shl142
  %66 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %bf.set144, ptr %count, align 1
  %67 = ptrtoint ptr %frame_count131 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %frame_count131, align 1
  %conv146 = zext i8 %68 to i16
  %sub147 = sub nsw i16 %conv146, %bf.lshr
  %69 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %bf.load152 = load i16, ptr %count.1.i, align 1
  %bf.shl154 = shl i16 %sub147, 11
  %bf.clear155 = and i16 %bf.load152, 2047
  %bf.set156 = or i16 %bf.shl154, %bf.clear155
  store i16 %bf.set156, ptr %count.1.i, align 1
  br label %if.end171

if.else157:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #8
  %bf.shl165 = shl i16 %64, 11
  %bf.clear166 = and i16 %bf.load140, 2047
  %bf.set167 = or i16 %bf.clear166, %bf.shl165
  %70 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %bf.set167, ptr %count, align 1
  %arrayidx169 = getelementptr %struct.sk_buff, ptr %40, i32 0, i32 3, i32 11
  %71 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %arrayidx169, align 1
  br label %if.end171

if.end171:                                        ; preds = %if.else157, %if.then135, %if.then118
  %72 = ptrtoint ptr %wl114 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wl114, align 4
  %hw173 = getelementptr inbounds %struct.b43legacy_wl, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %hw173 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw173, align 4
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %75, ptr noundef %77) #6
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end210

if.else176:                                       ; preds = %if.end84
  br i1 %cmp179.not, label %if.else176.if.end210_crit_edge, label %do.end196, !prof !55

if.else176.if.end210_crit_edge:                   ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end210

do.end196:                                        ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1198, i32 noundef 9, ptr noundef null) #6
  br label %if.end210

if.end210:                                        ; preds = %do.end196, %if.else176.if.end210_crit_edge, %if.end171
  %79 = ptrtoint ptr %used_slots to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %used_slots, align 4
  %dec = add i32 %80, -1
  store i32 %dec, ptr %used_slots, align 4
  %81 = ptrtoint ptr %is_last_fragment to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %is_last_fragment, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool213.not = icmp eq i8 %82, 0
  br i1 %tobool213.not, label %if.end215, label %while.end

if.end215:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %slot.2)
  %cmp.i = icmp sgt i32 %slot.2, -2
  br i1 %cmp.i, label %land.rhs.i339, label %if.end215.do.end.i_crit_edge

if.end215.do.end.i_crit_edge:                     ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.rhs.i339:                                    ; preds = %if.end215
  %83 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_slots.i, align 4
  %sub.i = add i32 %84, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %slot.2)
  %cmp1.i = icmp slt i32 %sub.i, %slot.2
  br i1 %cmp1.i, label %land.rhs.i339.do.end.i_crit_edge, label %land.rhs.i339.next_slot.exit_crit_edge, !prof !54

land.rhs.i339.next_slot.exit_crit_edge:           ; preds = %land.rhs.i339
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_slot.exit

land.rhs.i339.do.end.i_crit_edge:                 ; preds = %land.rhs.i339
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i339.do.end.i_crit_edge, %if.end215.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 124, i32 noundef 9, ptr noundef null) #6
  br label %next_slot.exit

next_slot.exit:                                   ; preds = %do.end.i, %land.rhs.i339.next_slot.exit_crit_edge
  %85 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nr_slots.i, align 4
  %sub22.i = add i32 %86, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i, i32 %slot.2)
  %cmp23.i = icmp eq i32 %sub22.i, %slot.2
  %add.i = add i32 %slot.2, 1
  %slot.2.be = select i1 %cmp23.i, i32 0, i32 %add.i
  br label %while.cond

while.end:                                        ; preds = %if.end210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %last_tx = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 11, i32 1
  %88 = ptrtoint ptr %last_tx to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %last_tx, align 4
  %stopped = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 13
  %89 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %stopped, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool217.not = icmp eq i8 %90, 0
  br i1 %tobool217.not, label %while.end.if.end253_crit_edge, label %if.then218

while.end.if.end253_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end253

if.then218:                                       ; preds = %while.end
  %91 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nr_slots.i, align 4
  %93 = ptrtoint ptr %used_slots to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %used_slots, align 4
  %sub.i341 = sub i32 %92, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i341)
  %cmp221 = icmp slt i32 %sub.i341, 2
  br i1 %cmp221, label %do.end238, label %if.then218.if.end244_crit_edge, !prof !54

if.then218.if.end244_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

do.end238:                                        ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1210, i32 noundef 9, ptr noundef null) #6
  br label %if.end244

if.end244:                                        ; preds = %do.end238, %if.then218.if.end244_crit_edge
  %95 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %stopped, align 4
  br label %if.end253

if.end253:                                        ; preds = %if.end244, %while.end.if.end253_crit_edge
  %96 = ptrtoint ptr %wl114 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wl114, align 4
  %queue_prio = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 14
  %98 = ptrtoint ptr %queue_prio to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %queue_prio, align 1
  %idxprom = zext i8 %99 to i32
  %arrayidx255 = getelementptr %struct.b43legacy_wl, ptr %97, i32 0, i32 28, i32 %idxprom
  %100 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx255, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool256.not = icmp eq i8 %101, 0
  br i1 %tobool256.not, label %if.else263, label %if.then257

if.then257:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %arrayidx255, align 1
  br label %if.end274

if.else263:                                       ; preds = %if.end253
  %hw265 = getelementptr inbounds %struct.b43legacy_wl, ptr %97, i32 0, i32 1
  %103 = ptrtoint ptr %hw265 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw265, align 4
  tail call void @ieee80211_wake_queue(ptr noundef %104, i32 noundef %idxprom) #6
  %call268 = tail call i32 @b43legacy_debug(ptr noundef %dev, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %if.else263.if.end274_crit_edge, label %if.then270

if.else263.if.end274_crit_edge:                   ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end274

if.then270:                                       ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %wl114 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wl114, align 4
  %index272 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring.0.i, i32 0, i32 10
  %107 = ptrtoint ptr %index272 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %index272, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %106, ptr noundef nonnull @.str.8, i32 noundef %108) #6
  br label %if.end274

if.end274:                                        ; preds = %if.then270, %if.else263.if.end274_crit_edge, %if.then257
  %109 = ptrtoint ptr %wl114 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wl114, align 4
  %hw276 = getelementptr inbounds %struct.b43legacy_wl, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %hw276 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw276, align 4
  %tx_work = getelementptr inbounds %struct.b43legacy_wl, ptr %110, i32 0, i32 26
  tail call void @ieee80211_queue_work(ptr noundef %112, ptr noundef %tx_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end274, %if.then42, %parse_cookie.exit.thread354
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_dma_rx(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1332, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dev.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 9
  %4 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mmio_base.i.i, align 2
  %add.i.i = add i16 %5, 28
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %11(ptr noundef %7, i16 noundef zeroext %add.i.i) #6
  %and.i = lshr i32 %call.i.i.i.i, 3
  %div2.i = and i32 %and.i, 511
  %nr_slots = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 4
  %12 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.i, i32 %13)
  %cmp21.not = icmp slt i32 %div2.i, %13
  br i1 %cmp21.not, label %if.end.if.end45_crit_edge, label %do.end39, !prof !55

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1335, i32 noundef 9, ptr noundef null) #6
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end.if.end45_crit_edge
  %current_slot53 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 6
  %14 = ptrtoint ptr %current_slot53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_slot53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div2.i)
  %cmp54.not104 = icmp eq i32 %15, %div2.i
  br i1 %cmp54.not104, label %if.end45.for.end_crit_edge, label %for.body.lr.ph

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end45
  %meta1.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 1
  %rx_buffersize.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 8
  %index.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 10
  %frameoffset.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 7
  %max_used_slots.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %next_slot.exit.for.body_crit_edge, %for.body.lr.ph
  %used_slots.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %next_slot.exit.for.body_crit_edge ]
  %storemerge105 = phi i32 [ %15, %for.body.lr.ph ], [ %retval.0.i, %next_slot.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %meta1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %meta1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %17, i32 %storemerge105
  %18 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring, align 4
  %arrayidx2.i.i = getelementptr %struct.b43legacy_dmadesc32, ptr %19, i32 %storemerge105
  %dmaaddr1.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %17, i32 %storemerge105, i32 1
  %20 = ptrtoint ptr %dmaaddr1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dmaaddr1.i, align 4
  %22 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rx_buffersize.i, align 4
  %conv.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %for.body.sync_descbuffer_for_cpu.exit.i_crit_edge, label %do.end.i.i, !prof !55

for.body.sync_descbuffer_for_cpu.exit.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sync_descbuffer_for_cpu.exit.i

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 274, i32 noundef 9, ptr noundef null) #6
  br label %sync_descbuffer_for_cpu.exit.i

sync_descbuffer_for_cpu.exit.i:                   ; preds = %do.end.i.i, %for.body.sync_descbuffer_for_cpu.exit.i_crit_edge
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.ssb_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_dev.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %31, i32 noundef %21, i32 noundef %conv.i, i32 noundef 2) #6
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %34 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.i = icmp eq i32 %35, 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.end13.i

if.then.i:                                        ; preds = %sync_descbuffer_for_cpu.exit.i
  %cookie.i = getelementptr inbounds %struct.b43legacy_hwtxstatus, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %cookie.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %cookie.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp5165.not.i = icmp eq i16 %39, 0
  br i1 %cmp5165.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.while.end.i_crit_edge

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %i.0166.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %if.then.i.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0166.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 429496) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !60
  %41 = ptrtoint ptr %cookie.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %cookie.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp5.i = icmp ne i16 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %i.0166.i)
  %cmp7.i = icmp ugt i32 %i.0166.i, 99
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  tail call void @b43legacy_handle_hwtxstatus(ptr noundef %44, ptr noundef %37) #6
  %45 = ptrtoint ptr %dmaaddr1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dmaaddr1.i, align 4
  %47 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rx_buffersize.i, align 4
  %conv12.i = zext i16 %48 to i32
  %49 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i150.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i150.i, label %while.end.i.sync_descbuffer_for_device.exit.i_crit_edge, label %do.end.i151.i, !prof !55

while.end.i.sync_descbuffer_for_device.exit.i_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sync_descbuffer_for_device.exit.i

do.end.i151.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 285, i32 noundef 9, ptr noundef null) #6
  br label %sync_descbuffer_for_device.exit.i

sync_descbuffer_for_device.exit.i:                ; preds = %do.end.i151.i, %while.end.i.sync_descbuffer_for_device.exit.i_crit_edge
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dma_dev.i153.i = getelementptr inbounds %struct.ssb_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dma_dev.i153.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_dev.i153.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %56, i32 noundef %46, i32 noundef %conv12.i, i32 noundef 2) #6
  br label %dma_rx.exit

if.end13.i:                                       ; preds = %sync_descbuffer_for_cpu.exit.i
  %57 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %37, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp16.i = icmp eq i16 %58, 0
  br i1 %cmp16.i, label %do.body.i, label %if.end13.i.if.end36.i_crit_edge

if.end13.i.if.end36.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

do.body.i:                                        ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 429496) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  %61 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp22.i = icmp eq i16 %62, 0
  br i1 %cmp22.i, label %do.body.i.1, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.body.i.1:                                      ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 429496) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  %64 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp22.i.1 = icmp eq i16 %65, 0
  br i1 %cmp22.i.1, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 429496) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  %67 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp22.i.2 = icmp eq i16 %68, 0
  br i1 %cmp22.i.2, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 429496) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  %70 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp22.i.3 = icmp eq i16 %71, 0
  br i1 %cmp22.i.3, label %do.body.i.4, label %do.body.i.3.do.end.i_crit_edge

do.body.i.3.do.end.i_crit_edge:                   ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.body.i.4:                                      ; preds = %do.body.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 429496) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  %73 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp22.i.4 = icmp eq i16 %74, 0
  br i1 %cmp22.i.4, label %do.body.i.5, label %do.body.i.4.do.end.i_crit_edge

do.body.i.4.do.end.i_crit_edge:                   ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.body.i.5:                                      ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 429496) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  %76 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp22.i.5 = icmp eq i16 %77, 0
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.5, %do.body.i.4.do.end.i_crit_edge, %do.body.i.3.do.end.i_crit_edge, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %.lcssa = phi i16 [ %62, %do.body.i.do.end.i_crit_edge ], [ %65, %do.body.i.1.do.end.i_crit_edge ], [ %68, %do.body.i.2.do.end.i_crit_edge ], [ %71, %do.body.i.3.do.end.i_crit_edge ], [ %74, %do.body.i.4.do.end.i_crit_edge ], [ %77, %do.body.i.5 ]
  %cmp22.i.lcssa = phi i1 [ %cmp22.i, %do.body.i.do.end.i_crit_edge ], [ %cmp22.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %cmp22.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %cmp22.i.3, %do.body.i.3.do.end.i_crit_edge ], [ %cmp22.i.4, %do.body.i.4.do.end.i_crit_edge ], [ %cmp22.i.5, %do.body.i.5 ]
  %78 = tail call i16 @llvm.bswap.i16(i16 %.lcssa) #6
  br i1 %cmp22.i.lcssa, label %cleanup.i, label %do.end.i.if.end36.i_crit_edge, !prof !54

do.end.i.if.end36.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

cleanup.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %dmaaddr1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dmaaddr1.i, align 4
  %81 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %rx_buffersize.i, align 4
  %conv34.i = zext i16 %82 to i32
  tail call fastcc void @sync_descbuffer_for_device(ptr noundef %ring, i32 noundef %80, i32 noundef %conv34.i) #6
  br label %dma_rx.exit

if.end36.i:                                       ; preds = %do.end.i.if.end36.i_crit_edge, %if.end13.i.if.end36.i_crit_edge
  %len.0.i = phi i16 [ %59, %if.end13.i.if.end36.i_crit_edge ], [ %78, %do.end.i.if.end36.i_crit_edge ]
  %conv37.i = zext i16 %len.0.i to i32
  %83 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %rx_buffersize.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %len.0.i, i16 %84)
  %cmp40.i = icmp ugt i16 %len.0.i, %84
  br i1 %cmp40.i, label %if.end36.i.while.cond50.i_crit_edge, label %if.end71.i, !prof !54

if.end36.i.while.cond50.i_crit_edge:              ; preds = %if.end36.i
  br label %while.cond50.i

while.cond50.i:                                   ; preds = %next_slot.exit93.while.cond50.i_crit_edge, %if.end36.i.while.cond50.i_crit_edge
  %slot.0 = phi i32 [ %retval.0.i91, %next_slot.exit93.while.cond50.i_crit_edge ], [ %storemerge105, %if.end36.i.while.cond50.i_crit_edge ]
  %cnt.0.i = phi i32 [ %inc57.i, %next_slot.exit93.while.cond50.i_crit_edge ], [ 0, %if.end36.i.while.cond50.i_crit_edge ]
  %tmp.0.i = phi i32 [ %sub.i, %next_slot.exit93.while.cond50.i_crit_edge ], [ %conv37.i, %if.end36.i.while.cond50.i_crit_edge ]
  %85 = ptrtoint ptr %meta1.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %meta1.i.i, align 4
  %dmaaddr53.i = getelementptr %struct.b43legacy_dmadesc_meta, ptr %86, i32 %slot.0, i32 1
  %87 = ptrtoint ptr %dmaaddr53.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dmaaddr53.i, align 4
  %89 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %rx_buffersize.i, align 4
  %conv55.i = zext i16 %90 to i32
  %91 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i95 = icmp eq i8 %92, 0
  br i1 %tobool.not.i95, label %while.cond50.i.sync_descbuffer_for_device.exit_crit_edge, label %do.end.i96, !prof !55

while.cond50.i.sync_descbuffer_for_device.exit_crit_edge: ; preds = %while.cond50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sync_descbuffer_for_device.exit

do.end.i96:                                       ; preds = %while.cond50.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 285, i32 noundef 9, ptr noundef null) #6
  br label %sync_descbuffer_for_device.exit

sync_descbuffer_for_device.exit:                  ; preds = %do.end.i96, %while.cond50.i.sync_descbuffer_for_device.exit_crit_edge
  %93 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %dma_dev.i = getelementptr inbounds %struct.ssb_device, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dma_dev.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %98, i32 noundef %88, i32 noundef %conv55.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %slot.0)
  %cmp.i81 = icmp sgt i32 %slot.0, -2
  br i1 %cmp.i81, label %land.rhs.i85, label %sync_descbuffer_for_device.exit.do.end.i86_crit_edge

sync_descbuffer_for_device.exit.do.end.i86_crit_edge: ; preds = %sync_descbuffer_for_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i86

land.rhs.i85:                                     ; preds = %sync_descbuffer_for_device.exit
  %99 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nr_slots, align 4
  %sub.i83 = add i32 %100, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i83, i32 %slot.0)
  %cmp1.i84 = icmp slt i32 %sub.i83, %slot.0
  br i1 %cmp1.i84, label %land.rhs.i85.do.end.i86_crit_edge, label %land.rhs.i85.next_slot.exit93_crit_edge, !prof !54

land.rhs.i85.next_slot.exit93_crit_edge:          ; preds = %land.rhs.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_slot.exit93

land.rhs.i85.do.end.i86_crit_edge:                ; preds = %land.rhs.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i86

do.end.i86:                                       ; preds = %land.rhs.i85.do.end.i86_crit_edge, %sync_descbuffer_for_device.exit.do.end.i86_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 124, i32 noundef 9, ptr noundef null) #6
  br label %next_slot.exit93

next_slot.exit93:                                 ; preds = %do.end.i86, %land.rhs.i85.next_slot.exit93_crit_edge
  %101 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr_slots, align 4
  %sub22.i88 = add i32 %102, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i88, i32 %slot.0)
  %cmp23.i89 = icmp eq i32 %sub22.i88, %slot.0
  %add.i90 = add i32 %slot.0, 1
  %retval.0.i91 = select i1 %cmp23.i89, i32 0, i32 %add.i90
  %inc57.i = add i32 %cnt.0.i, 1
  %103 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %rx_buffersize.i, align 4
  %conv59.i = zext i16 %104 to i32
  %sub.i = sub nsw i32 %tmp.0.i, %conv59.i
  %cmp60.i = icmp slt i32 %sub.i, 1
  br i1 %cmp60.i, label %while.end64.i, label %next_slot.exit93.while.cond50.i_crit_edge

next_slot.exit93.while.cond50.i_crit_edge:        ; preds = %next_slot.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond50.i

while.end64.i:                                    ; preds = %next_slot.exit93
  call void @__sanitizer_cov_trace_pc() #8
  %conv59.i.le = zext i16 %104 to i32
  %105 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i.i, align 4
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %108, ptr noundef nonnull @.str.18, i32 noundef %conv37.i, i32 noundef %conv59.i.le, i32 noundef %inc57.i) #6
  br label %dma_rx.exit

if.end71.i:                                       ; preds = %if.end36.i
  %109 = ptrtoint ptr %dmaaddr1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dmaaddr1.i, align 4
  %call73.i = tail call fastcc i32 @setup_rx_descbuffer(ptr noundef %ring, ptr noundef %arrayidx2.i.i, ptr noundef %arrayidx.i.i, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end86.i, label %if.then81.i, !prof !55

if.then81.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i.i, align 4
  %wl83.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %wl83.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wl83.i, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %114, ptr noundef nonnull @.str.19) #6
  %115 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %rx_buffersize.i, align 4
  %conv85.i = zext i16 %116 to i32
  tail call fastcc void @sync_descbuffer_for_device(ptr noundef %ring, i32 noundef %110, i32 noundef %conv85.i) #6
  br label %dma_rx.exit

if.end86.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %rx_buffersize.i, align 4
  %conv88.i = zext i16 %118 to i32
  %119 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.ssb_device, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dma_dev4.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %124, i32 noundef %110, i32 noundef %conv88.i, i32 noundef 2, i32 noundef 0) #6
  %125 = ptrtoint ptr %frameoffset.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %frameoffset.i, align 4
  %add.i = add i32 %126, %conv37.i
  %call90.i = tail call ptr @skb_put(ptr noundef %33, i32 noundef %add.i) #6
  %127 = ptrtoint ptr %frameoffset.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %frameoffset.i, align 4
  %call92.i = tail call ptr @skb_pull(ptr noundef %33, i32 noundef %128) #6
  %129 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i.i, align 4
  tail call void @b43legacy_rx(ptr noundef %130, ptr noundef %33, ptr noundef %37) #6
  br label %dma_rx.exit

dma_rx.exit:                                      ; preds = %if.end86.i, %if.then81.i, %while.end64.i, %cleanup.i, %sync_descbuffer_for_device.exit.i
  %slot.1 = phi i32 [ %storemerge105, %sync_descbuffer_for_device.exit.i ], [ %storemerge105, %cleanup.i ], [ %retval.0.i91, %while.end64.i ], [ %storemerge105, %if.end86.i ], [ %storemerge105, %if.then81.i ]
  %inc = add i32 %used_slots.0106, 1
  %131 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %max_used_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %inc)
  %cmp.not.i = icmp slt i32 %132, %inc
  br i1 %cmp.not.i, label %if.end.i70, label %dma_rx.exit.update_max_used_slots.exit_crit_edge

dma_rx.exit.update_max_used_slots.exit_crit_edge: ; preds = %dma_rx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_max_used_slots.exit

if.end.i70:                                       ; preds = %dma_rx.exit
  %133 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %inc, ptr %max_used_slots.i, align 4
  %134 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i.i, align 4
  %call.i = tail call i32 @b43legacy_debug(ptr noundef %135, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i70.update_max_used_slots.exit_crit_edge, label %if.then2.i

if.end.i70.update_max_used_slots.exit_crit_edge:  ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_max_used_slots.exit

if.then2.i:                                       ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i.i, align 4
  %wl.i71 = getelementptr inbounds %struct.b43legacy_wldev, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %wl.i71 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %wl.i71, align 4
  %140 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %max_used_slots.i, align 4
  %142 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool5.not.i = icmp eq i8 %143, 0
  %cond.i = select i1 %tobool5.not.i, ptr @.str.11, ptr @.str.10
  %144 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %139, ptr noundef nonnull @.str.20, i32 noundef %141, ptr noundef nonnull %cond.i, i32 noundef %145) #6
  br label %update_max_used_slots.exit

update_max_used_slots.exit:                       ; preds = %if.then2.i, %if.end.i70.update_max_used_slots.exit_crit_edge, %dma_rx.exit.update_max_used_slots.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %slot.1)
  %cmp.i73 = icmp sgt i32 %slot.1, -2
  br i1 %cmp.i73, label %land.rhs.i, label %update_max_used_slots.exit.do.end.i75_crit_edge

update_max_used_slots.exit.do.end.i75_crit_edge:  ; preds = %update_max_used_slots.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i75

land.rhs.i:                                       ; preds = %update_max_used_slots.exit
  %146 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %nr_slots, align 4
  %sub.i74 = add i32 %147, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i74, i32 %slot.1)
  %cmp1.i = icmp slt i32 %sub.i74, %slot.1
  br i1 %cmp1.i, label %land.rhs.i.do.end.i75_crit_edge, label %land.rhs.i.next_slot.exit_crit_edge, !prof !54

land.rhs.i.next_slot.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_slot.exit

land.rhs.i.do.end.i75_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i75

do.end.i75:                                       ; preds = %land.rhs.i.do.end.i75_crit_edge, %update_max_used_slots.exit.do.end.i75_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 124, i32 noundef 9, ptr noundef null) #6
  br label %next_slot.exit

next_slot.exit:                                   ; preds = %do.end.i75, %land.rhs.i.next_slot.exit_crit_edge
  %148 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nr_slots, align 4
  %sub22.i = add i32 %149, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i, i32 %slot.1)
  %cmp23.i = icmp eq i32 %sub22.i, %slot.1
  %add.i76 = add i32 %slot.1, 1
  %retval.0.i = select i1 %cmp23.i, i32 0, i32 %add.i76
  %cmp54.not = icmp eq i32 %retval.0.i, %div2.i
  br i1 %cmp54.not, label %next_slot.exit.for.end_crit_edge, label %next_slot.exit.for.body_crit_edge

next_slot.exit.for.body_crit_edge:                ; preds = %next_slot.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

next_slot.exit.for.end_crit_edge:                 ; preds = %next_slot.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %next_slot.exit.for.end_crit_edge, %if.end45.for.end_crit_edge
  %mul.i = shl nuw nsw i32 %div2.i, 3
  %150 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i.i, align 4
  %152 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %mmio_base.i.i, align 2
  %add.i.i80 = add i16 %153, 24
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %151, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %157, i32 0, i32 5
  %158 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %159(ptr noundef %155, i16 noundef zeroext %add.i.i80, i32 noundef %mul.i) #6
  %160 = ptrtoint ptr %current_slot53 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %div2.i, ptr %current_slot53, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_dma_tx_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43legacy_power_saving_ctl_bits(ptr noundef %dev, i32 noundef -1, i32 noundef 1) #6
  %0 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tx.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.b43legacy_dma_tx_suspend_ring.exit_crit_edge, !prof !54

entry.b43legacy_dma_tx_suspend_ring.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_suspend_ring.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1348, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_suspend_ring.exit

b43legacy_dma_tx_suspend_ring.exit:               ; preds = %do.end.i, %entry.b43legacy_dma_tx_suspend_ring.exit_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %2, i32 0, i32 15
  %5 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i.i, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %2, i32 0, i32 9
  %7 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mmio_base.i.i.i, align 2
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %read32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %14(ptr noundef %10, i16 noundef zeroext %8) #6
  %or.i.i = or i32 %call.i.i.i.i.i, 2
  %15 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i.i, align 4
  %17 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mmio_base.i.i.i, align 2
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %24(ptr noundef %20, i16 noundef zeroext %18, i32 noundef %or.i.i) #6
  %tx_ring1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %25 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ring1, align 4
  %tx.i7 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %tx.i7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx.i7, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i8 = icmp eq i8 %28, 0
  br i1 %tobool.not.i8, label %do.end.i9, label %b43legacy_dma_tx_suspend_ring.exit.b43legacy_dma_tx_suspend_ring.exit16_crit_edge, !prof !54

b43legacy_dma_tx_suspend_ring.exit.b43legacy_dma_tx_suspend_ring.exit16_crit_edge: ; preds = %b43legacy_dma_tx_suspend_ring.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_suspend_ring.exit16

do.end.i9:                                        ; preds = %b43legacy_dma_tx_suspend_ring.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1348, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_suspend_ring.exit16

b43legacy_dma_tx_suspend_ring.exit16:             ; preds = %do.end.i9, %b43legacy_dma_tx_suspend_ring.exit.b43legacy_dma_tx_suspend_ring.exit16_crit_edge
  %dev.i.i.i10 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %dev.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i.i10, align 4
  %mmio_base.i.i.i11 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %26, i32 0, i32 9
  %31 = ptrtoint ptr %mmio_base.i.i.i11 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mmio_base.i.i.i11, align 2
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %read32.i.i.i.i.i12 = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read32.i.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32.i.i.i.i.i12, align 4
  %call.i.i.i.i.i13 = tail call i32 %38(ptr noundef %34, i16 noundef zeroext %32) #6
  %or.i.i14 = or i32 %call.i.i.i.i.i13, 2
  %39 = ptrtoint ptr %dev.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i.i10, align 4
  %41 = ptrtoint ptr %mmio_base.i.i.i11 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mmio_base.i.i.i11, align 2
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write32.i.i.i.i.i15 = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %write32.i.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i.i.i.i.i15, align 4
  tail call void %48(ptr noundef %44, i16 noundef zeroext %42, i32 noundef %or.i.i14) #6
  %tx_ring2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  %49 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_ring2, align 4
  %tx.i17 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %tx.i17 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tx.i17, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i18 = icmp eq i8 %52, 0
  br i1 %tobool.not.i18, label %do.end.i19, label %b43legacy_dma_tx_suspend_ring.exit16.b43legacy_dma_tx_suspend_ring.exit26_crit_edge, !prof !54

b43legacy_dma_tx_suspend_ring.exit16.b43legacy_dma_tx_suspend_ring.exit26_crit_edge: ; preds = %b43legacy_dma_tx_suspend_ring.exit16
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_suspend_ring.exit26

do.end.i19:                                       ; preds = %b43legacy_dma_tx_suspend_ring.exit16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1348, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_suspend_ring.exit26

b43legacy_dma_tx_suspend_ring.exit26:             ; preds = %do.end.i19, %b43legacy_dma_tx_suspend_ring.exit16.b43legacy_dma_tx_suspend_ring.exit26_crit_edge
  %dev.i.i.i20 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %50, i32 0, i32 15
  %53 = ptrtoint ptr %dev.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i.i20, align 4
  %mmio_base.i.i.i21 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %50, i32 0, i32 9
  %55 = ptrtoint ptr %mmio_base.i.i.i21 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mmio_base.i.i.i21, align 2
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %read32.i.i.i.i.i22 = getelementptr inbounds %struct.ssb_bus_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %read32.i.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32.i.i.i.i.i22, align 4
  %call.i.i.i.i.i23 = tail call i32 %62(ptr noundef %58, i16 noundef zeroext %56) #6
  %or.i.i24 = or i32 %call.i.i.i.i.i23, 2
  %63 = ptrtoint ptr %dev.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i.i20, align 4
  %65 = ptrtoint ptr %mmio_base.i.i.i21 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %mmio_base.i.i.i21, align 2
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %write32.i.i.i.i.i25 = getelementptr inbounds %struct.ssb_bus_ops, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %write32.i.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write32.i.i.i.i.i25, align 4
  tail call void %72(ptr noundef %68, i16 noundef zeroext %66, i32 noundef %or.i.i24) #6
  %tx_ring3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %73 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_ring3, align 4
  %tx.i27 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %tx.i27 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %tx.i27, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i28 = icmp eq i8 %76, 0
  br i1 %tobool.not.i28, label %do.end.i29, label %b43legacy_dma_tx_suspend_ring.exit26.b43legacy_dma_tx_suspend_ring.exit36_crit_edge, !prof !54

b43legacy_dma_tx_suspend_ring.exit26.b43legacy_dma_tx_suspend_ring.exit36_crit_edge: ; preds = %b43legacy_dma_tx_suspend_ring.exit26
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_suspend_ring.exit36

do.end.i29:                                       ; preds = %b43legacy_dma_tx_suspend_ring.exit26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1348, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_suspend_ring.exit36

b43legacy_dma_tx_suspend_ring.exit36:             ; preds = %do.end.i29, %b43legacy_dma_tx_suspend_ring.exit26.b43legacy_dma_tx_suspend_ring.exit36_crit_edge
  %dev.i.i.i30 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %74, i32 0, i32 15
  %77 = ptrtoint ptr %dev.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i.i.i30, align 4
  %mmio_base.i.i.i31 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %74, i32 0, i32 9
  %79 = ptrtoint ptr %mmio_base.i.i.i31 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %mmio_base.i.i.i31, align 2
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %78, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %read32.i.i.i.i.i32 = getelementptr inbounds %struct.ssb_bus_ops, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %read32.i.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read32.i.i.i.i.i32, align 4
  %call.i.i.i.i.i33 = tail call i32 %86(ptr noundef %82, i16 noundef zeroext %80) #6
  %or.i.i34 = or i32 %call.i.i.i.i.i33, 2
  %87 = ptrtoint ptr %dev.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i.i.i30, align 4
  %89 = ptrtoint ptr %mmio_base.i.i.i31 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %mmio_base.i.i.i31, align 2
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %write32.i.i.i.i.i35 = getelementptr inbounds %struct.ssb_bus_ops, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %write32.i.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write32.i.i.i.i.i35, align 4
  tail call void %96(ptr noundef %92, i16 noundef zeroext %90, i32 noundef %or.i.i34) #6
  %tx_ring4 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 4
  %97 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tx_ring4, align 4
  %tx.i37 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %98, i32 0, i32 11
  %99 = ptrtoint ptr %tx.i37 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %tx.i37, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i38 = icmp eq i8 %100, 0
  br i1 %tobool.not.i38, label %do.end.i39, label %b43legacy_dma_tx_suspend_ring.exit36.b43legacy_dma_tx_suspend_ring.exit46_crit_edge, !prof !54

b43legacy_dma_tx_suspend_ring.exit36.b43legacy_dma_tx_suspend_ring.exit46_crit_edge: ; preds = %b43legacy_dma_tx_suspend_ring.exit36
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_suspend_ring.exit46

do.end.i39:                                       ; preds = %b43legacy_dma_tx_suspend_ring.exit36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1348, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_suspend_ring.exit46

b43legacy_dma_tx_suspend_ring.exit46:             ; preds = %do.end.i39, %b43legacy_dma_tx_suspend_ring.exit36.b43legacy_dma_tx_suspend_ring.exit46_crit_edge
  %dev.i.i.i40 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %98, i32 0, i32 15
  %101 = ptrtoint ptr %dev.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i.i40, align 4
  %mmio_base.i.i.i41 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %98, i32 0, i32 9
  %103 = ptrtoint ptr %mmio_base.i.i.i41 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %mmio_base.i.i.i41, align 2
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %102, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %read32.i.i.i.i.i42 = getelementptr inbounds %struct.ssb_bus_ops, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %read32.i.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read32.i.i.i.i.i42, align 4
  %call.i.i.i.i.i43 = tail call i32 %110(ptr noundef %106, i16 noundef zeroext %104) #6
  %or.i.i44 = or i32 %call.i.i.i.i.i43, 2
  %111 = ptrtoint ptr %dev.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i.i.i40, align 4
  %113 = ptrtoint ptr %mmio_base.i.i.i41 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mmio_base.i.i.i41, align 2
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %112, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %write32.i.i.i.i.i45 = getelementptr inbounds %struct.ssb_bus_ops, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %write32.i.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write32.i.i.i.i.i45, align 4
  tail call void %120(ptr noundef %116, i16 noundef zeroext %114, i32 noundef %or.i.i44) #6
  %tx_ring5 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 5
  %121 = ptrtoint ptr %tx_ring5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tx_ring5, align 4
  %tx.i47 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %tx.i47 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %tx.i47, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i48 = icmp eq i8 %124, 0
  br i1 %tobool.not.i48, label %do.end.i49, label %b43legacy_dma_tx_suspend_ring.exit46.b43legacy_dma_tx_suspend_ring.exit56_crit_edge, !prof !54

b43legacy_dma_tx_suspend_ring.exit46.b43legacy_dma_tx_suspend_ring.exit56_crit_edge: ; preds = %b43legacy_dma_tx_suspend_ring.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_suspend_ring.exit56

do.end.i49:                                       ; preds = %b43legacy_dma_tx_suspend_ring.exit46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1348, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_suspend_ring.exit56

b43legacy_dma_tx_suspend_ring.exit56:             ; preds = %do.end.i49, %b43legacy_dma_tx_suspend_ring.exit46.b43legacy_dma_tx_suspend_ring.exit56_crit_edge
  %dev.i.i.i50 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %122, i32 0, i32 15
  %125 = ptrtoint ptr %dev.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i.i.i50, align 4
  %mmio_base.i.i.i51 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %122, i32 0, i32 9
  %127 = ptrtoint ptr %mmio_base.i.i.i51 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %mmio_base.i.i.i51, align 2
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %read32.i.i.i.i.i52 = getelementptr inbounds %struct.ssb_bus_ops, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %read32.i.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read32.i.i.i.i.i52, align 4
  %call.i.i.i.i.i53 = tail call i32 %134(ptr noundef %130, i16 noundef zeroext %128) #6
  %or.i.i54 = or i32 %call.i.i.i.i.i53, 2
  %135 = ptrtoint ptr %dev.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i.i.i50, align 4
  %137 = ptrtoint ptr %mmio_base.i.i.i51 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %mmio_base.i.i.i51, align 2
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %136, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %write32.i.i.i.i.i55 = getelementptr inbounds %struct.ssb_bus_ops, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %write32.i.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write32.i.i.i.i.i55, align 4
  tail call void %144(ptr noundef %140, i16 noundef zeroext %138, i32 noundef %or.i.i54) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_power_saving_ctl_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_dma_tx_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  %tx_ring5 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 5
  %1 = ptrtoint ptr %tx_ring5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_ring5, align 4
  %tx.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.b43legacy_dma_tx_resume_ring.exit_crit_edge, !prof !54

entry.b43legacy_dma_tx_resume_ring.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_resume_ring.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1354, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_resume_ring.exit

b43legacy_dma_tx_resume_ring.exit:                ; preds = %do.end.i, %entry.b43legacy_dma_tx_resume_ring.exit_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %2, i32 0, i32 15
  %5 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i.i, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %2, i32 0, i32 9
  %7 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mmio_base.i.i.i, align 2
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %read32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %14(ptr noundef %10, i16 noundef zeroext %8) #6
  %and.i.i = and i32 %call.i.i.i.i.i, -3
  %15 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i.i, align 4
  %17 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mmio_base.i.i.i, align 2
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %24(ptr noundef %20, i16 noundef zeroext %18, i32 noundef %and.i.i) #6
  %tx_ring4 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 4
  %25 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ring4, align 4
  %tx.i7 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %tx.i7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx.i7, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i8 = icmp eq i8 %28, 0
  br i1 %tobool.not.i8, label %do.end.i9, label %b43legacy_dma_tx_resume_ring.exit.b43legacy_dma_tx_resume_ring.exit16_crit_edge, !prof !54

b43legacy_dma_tx_resume_ring.exit.b43legacy_dma_tx_resume_ring.exit16_crit_edge: ; preds = %b43legacy_dma_tx_resume_ring.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_resume_ring.exit16

do.end.i9:                                        ; preds = %b43legacy_dma_tx_resume_ring.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1354, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_resume_ring.exit16

b43legacy_dma_tx_resume_ring.exit16:              ; preds = %do.end.i9, %b43legacy_dma_tx_resume_ring.exit.b43legacy_dma_tx_resume_ring.exit16_crit_edge
  %dev.i.i.i10 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %dev.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i.i10, align 4
  %mmio_base.i.i.i11 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %26, i32 0, i32 9
  %31 = ptrtoint ptr %mmio_base.i.i.i11 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mmio_base.i.i.i11, align 2
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %read32.i.i.i.i.i12 = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read32.i.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32.i.i.i.i.i12, align 4
  %call.i.i.i.i.i13 = tail call i32 %38(ptr noundef %34, i16 noundef zeroext %32) #6
  %and.i.i14 = and i32 %call.i.i.i.i.i13, -3
  %39 = ptrtoint ptr %dev.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i.i10, align 4
  %41 = ptrtoint ptr %mmio_base.i.i.i11 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mmio_base.i.i.i11, align 2
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write32.i.i.i.i.i15 = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %write32.i.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i.i.i.i.i15, align 4
  tail call void %48(ptr noundef %44, i16 noundef zeroext %42, i32 noundef %and.i.i14) #6
  %tx_ring3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %49 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_ring3, align 4
  %tx.i17 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %tx.i17 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tx.i17, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i18 = icmp eq i8 %52, 0
  br i1 %tobool.not.i18, label %do.end.i19, label %b43legacy_dma_tx_resume_ring.exit16.b43legacy_dma_tx_resume_ring.exit26_crit_edge, !prof !54

b43legacy_dma_tx_resume_ring.exit16.b43legacy_dma_tx_resume_ring.exit26_crit_edge: ; preds = %b43legacy_dma_tx_resume_ring.exit16
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_resume_ring.exit26

do.end.i19:                                       ; preds = %b43legacy_dma_tx_resume_ring.exit16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1354, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_resume_ring.exit26

b43legacy_dma_tx_resume_ring.exit26:              ; preds = %do.end.i19, %b43legacy_dma_tx_resume_ring.exit16.b43legacy_dma_tx_resume_ring.exit26_crit_edge
  %dev.i.i.i20 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %50, i32 0, i32 15
  %53 = ptrtoint ptr %dev.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i.i20, align 4
  %mmio_base.i.i.i21 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %50, i32 0, i32 9
  %55 = ptrtoint ptr %mmio_base.i.i.i21 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mmio_base.i.i.i21, align 2
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %read32.i.i.i.i.i22 = getelementptr inbounds %struct.ssb_bus_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %read32.i.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32.i.i.i.i.i22, align 4
  %call.i.i.i.i.i23 = tail call i32 %62(ptr noundef %58, i16 noundef zeroext %56) #6
  %and.i.i24 = and i32 %call.i.i.i.i.i23, -3
  %63 = ptrtoint ptr %dev.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i.i20, align 4
  %65 = ptrtoint ptr %mmio_base.i.i.i21 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %mmio_base.i.i.i21, align 2
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %write32.i.i.i.i.i25 = getelementptr inbounds %struct.ssb_bus_ops, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %write32.i.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write32.i.i.i.i.i25, align 4
  tail call void %72(ptr noundef %68, i16 noundef zeroext %66, i32 noundef %and.i.i24) #6
  %tx_ring2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  %73 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_ring2, align 4
  %tx.i27 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %tx.i27 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %tx.i27, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i28 = icmp eq i8 %76, 0
  br i1 %tobool.not.i28, label %do.end.i29, label %b43legacy_dma_tx_resume_ring.exit26.b43legacy_dma_tx_resume_ring.exit36_crit_edge, !prof !54

b43legacy_dma_tx_resume_ring.exit26.b43legacy_dma_tx_resume_ring.exit36_crit_edge: ; preds = %b43legacy_dma_tx_resume_ring.exit26
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_resume_ring.exit36

do.end.i29:                                       ; preds = %b43legacy_dma_tx_resume_ring.exit26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1354, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_resume_ring.exit36

b43legacy_dma_tx_resume_ring.exit36:              ; preds = %do.end.i29, %b43legacy_dma_tx_resume_ring.exit26.b43legacy_dma_tx_resume_ring.exit36_crit_edge
  %dev.i.i.i30 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %74, i32 0, i32 15
  %77 = ptrtoint ptr %dev.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i.i.i30, align 4
  %mmio_base.i.i.i31 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %74, i32 0, i32 9
  %79 = ptrtoint ptr %mmio_base.i.i.i31 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %mmio_base.i.i.i31, align 2
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %78, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %read32.i.i.i.i.i32 = getelementptr inbounds %struct.ssb_bus_ops, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %read32.i.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read32.i.i.i.i.i32, align 4
  %call.i.i.i.i.i33 = tail call i32 %86(ptr noundef %82, i16 noundef zeroext %80) #6
  %and.i.i34 = and i32 %call.i.i.i.i.i33, -3
  %87 = ptrtoint ptr %dev.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i.i.i30, align 4
  %89 = ptrtoint ptr %mmio_base.i.i.i31 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %mmio_base.i.i.i31, align 2
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %write32.i.i.i.i.i35 = getelementptr inbounds %struct.ssb_bus_ops, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %write32.i.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write32.i.i.i.i.i35, align 4
  tail call void %96(ptr noundef %92, i16 noundef zeroext %90, i32 noundef %and.i.i34) #6
  %tx_ring1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %97 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tx_ring1, align 4
  %tx.i37 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %98, i32 0, i32 11
  %99 = ptrtoint ptr %tx.i37 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %tx.i37, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i38 = icmp eq i8 %100, 0
  br i1 %tobool.not.i38, label %do.end.i39, label %b43legacy_dma_tx_resume_ring.exit36.b43legacy_dma_tx_resume_ring.exit46_crit_edge, !prof !54

b43legacy_dma_tx_resume_ring.exit36.b43legacy_dma_tx_resume_ring.exit46_crit_edge: ; preds = %b43legacy_dma_tx_resume_ring.exit36
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_resume_ring.exit46

do.end.i39:                                       ; preds = %b43legacy_dma_tx_resume_ring.exit36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1354, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_resume_ring.exit46

b43legacy_dma_tx_resume_ring.exit46:              ; preds = %do.end.i39, %b43legacy_dma_tx_resume_ring.exit36.b43legacy_dma_tx_resume_ring.exit46_crit_edge
  %dev.i.i.i40 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %98, i32 0, i32 15
  %101 = ptrtoint ptr %dev.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i.i40, align 4
  %mmio_base.i.i.i41 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %98, i32 0, i32 9
  %103 = ptrtoint ptr %mmio_base.i.i.i41 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %mmio_base.i.i.i41, align 2
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %102, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %read32.i.i.i.i.i42 = getelementptr inbounds %struct.ssb_bus_ops, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %read32.i.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read32.i.i.i.i.i42, align 4
  %call.i.i.i.i.i43 = tail call i32 %110(ptr noundef %106, i16 noundef zeroext %104) #6
  %and.i.i44 = and i32 %call.i.i.i.i.i43, -3
  %111 = ptrtoint ptr %dev.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i.i.i40, align 4
  %113 = ptrtoint ptr %mmio_base.i.i.i41 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mmio_base.i.i.i41, align 2
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %112, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %write32.i.i.i.i.i45 = getelementptr inbounds %struct.ssb_bus_ops, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %write32.i.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write32.i.i.i.i.i45, align 4
  tail call void %120(ptr noundef %116, i16 noundef zeroext %114, i32 noundef %and.i.i44) #6
  %121 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %0, align 4
  %tx.i47 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %tx.i47 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %tx.i47, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i48 = icmp eq i8 %124, 0
  br i1 %tobool.not.i48, label %do.end.i49, label %b43legacy_dma_tx_resume_ring.exit46.b43legacy_dma_tx_resume_ring.exit56_crit_edge, !prof !54

b43legacy_dma_tx_resume_ring.exit46.b43legacy_dma_tx_resume_ring.exit56_crit_edge: ; preds = %b43legacy_dma_tx_resume_ring.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %b43legacy_dma_tx_resume_ring.exit56

do.end.i49:                                       ; preds = %b43legacy_dma_tx_resume_ring.exit46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1354, i32 noundef 9, ptr noundef null) #6
  br label %b43legacy_dma_tx_resume_ring.exit56

b43legacy_dma_tx_resume_ring.exit56:              ; preds = %do.end.i49, %b43legacy_dma_tx_resume_ring.exit46.b43legacy_dma_tx_resume_ring.exit56_crit_edge
  %dev.i.i.i50 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %122, i32 0, i32 15
  %125 = ptrtoint ptr %dev.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i.i.i50, align 4
  %mmio_base.i.i.i51 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %122, i32 0, i32 9
  %127 = ptrtoint ptr %mmio_base.i.i.i51 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %mmio_base.i.i.i51, align 2
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %read32.i.i.i.i.i52 = getelementptr inbounds %struct.ssb_bus_ops, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %read32.i.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read32.i.i.i.i.i52, align 4
  %call.i.i.i.i.i53 = tail call i32 %134(ptr noundef %130, i16 noundef zeroext %128) #6
  %and.i.i54 = and i32 %call.i.i.i.i.i53, -3
  %135 = ptrtoint ptr %dev.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i.i.i50, align 4
  %137 = ptrtoint ptr %mmio_base.i.i.i51 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %mmio_base.i.i.i51, align 2
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %136, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %write32.i.i.i.i.i55 = getelementptr inbounds %struct.ssb_bus_ops, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %write32.i.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write32.i.i.i.i.i55, align 4
  tail call void %144(ptr noundef %140, i16 noundef zeroext %138, i32 noundef %and.i.i54) #6
  tail call void @b43legacy_power_saving_ctl_bits(ptr noundef %dev, i32 noundef -1, i32 noundef -1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_rx_descbuffer(ptr nocapture noundef readonly %ring, ptr noundef %desc, ptr nocapture noundef writeonly %meta, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 437, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rx_buffersize = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 8
  %2 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_buffersize, align 4
  %conv = zext i16 %3 to i32
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv, i32 noundef %gfp_flags) #6
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.end30, !prof !54

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rx_buffersize, align 4
  %dev2.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 15
  %8 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dma_dev4.i = getelementptr inbounds %struct.ssb_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dma_dev4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_dev4.i, align 4
  %call.i9.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #6
  br i1 %call.i9.i, label %land.rhs.i11.i, label %if.end39.i24.i

land.rhs.i11.i:                                   ; preds = %if.end30
  %.b1.i10.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i10.i, label %land.rhs.i11.i.map_descbuffer.exit_crit_edge, label %if.then.i15.i, !prof !55

land.rhs.i11.i.map_descbuffer.exit_crit_edge:     ; preds = %land.rhs.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %map_descbuffer.exit

if.then.i15.i:                                    ; preds = %land.rhs.i11.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i12.i = tail call ptr @dev_driver_string(ptr noundef %13) #6
  %init_name.i.i13.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i13.i, align 8
  %tobool.not.i.i14.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i14.i, label %if.end.i.i16.i, label %if.then.i15.i.dev_name.exit.i18.i_crit_edge

if.then.i15.i.dev_name.exit.i18.i_crit_edge:      ; preds = %if.then.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i18.i

if.end.i.i16.i:                                   ; preds = %if.then.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i18.i

dev_name.exit.i18.i:                              ; preds = %if.end.i.i16.i, %if.then.i15.i.dev_name.exit.i18.i_crit_edge
  %retval.0.i.i17.i = phi ptr [ %17, %if.end.i.i16.i ], [ %15, %if.then.i15.i.dev_name.exit.i18.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i12.i, ptr noundef %retval.0.i.i17.i) #6
  br label %map_descbuffer.exit

if.end39.i24.i:                                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %conv32 = zext i16 %7 to i32
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef %5, i32 noundef %conv32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %5 to i32
  %sub.i19.i = add i32 %19, 1073741824
  %shr.i20.i = lshr i32 %sub.i19.i, 12
  %add.ptr.i21.i = getelementptr %struct.page, ptr %18, i32 %shr.i20.i
  %and.i22.i = and i32 %19, 4095
  %call41.i23.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i21.i, i32 noundef %and.i22.i, i32 noundef %conv32, i32 noundef 2, i32 noundef 0) #6
  br label %map_descbuffer.exit

map_descbuffer.exit:                              ; preds = %if.end39.i24.i, %dev_name.exit.i18.i, %land.rhs.i11.i.map_descbuffer.exit_crit_edge
  %dmaaddr.0.i = phi i32 [ %call41.i23.i, %if.end39.i24.i ], [ -1, %dev_name.exit.i18.i ], [ -1, %land.rhs.i11.i.map_descbuffer.exit_crit_edge ]
  %20 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rx_buffersize, align 4
  %conv35 = zext i16 %21 to i32
  %22 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %dma_dev.i = getelementptr inbounds %struct.ssb_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef %dmaaddr.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0.i)
  %cmp.i.not.i = icmp eq i32 %dmaaddr.0.i, -1
  br i1 %cmp.i.not.i, label %map_descbuffer.exit.if.then37_crit_edge, label %if.end.i, !prof !54

map_descbuffer.exit.if.then37_crit_edge:          ; preds = %map_descbuffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

if.end.i:                                         ; preds = %map_descbuffer.exit
  %type.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 12
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %29, label %if.end.i.if.end56_crit_edge [
    i32 30, label %sw.bb.i
    i32 32, label %sw.bb8.i
  ]

if.end.i.if.end56_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

sw.bb.i:                                          ; preds = %if.end.i
  %conv.i = zext i32 %dmaaddr.0.i to i64
  %conv4.i = zext i16 %21 to i64
  %add.i = add nuw nsw i64 %conv4.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i)
  %cmp.i = icmp ugt i64 %add.i, 1073741824
  br i1 %cmp.i, label %sw.bb.i.address_error.i_crit_edge, label %sw.bb.i.if.end56_crit_edge

sw.bb.i.if.end56_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

sw.bb.i.address_error.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i

sw.bb8.i:                                         ; preds = %if.end.i
  %conv9.i = zext i32 %dmaaddr.0.i to i64
  %conv10.i = zext i16 %21 to i64
  %add11.i = add nuw nsw i64 %conv10.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i)
  %cmp12.i = icmp ugt i64 %add11.i, 4294967296
  br i1 %cmp12.i, label %sw.bb8.i.address_error.i_crit_edge, label %sw.bb8.i.if.end56_crit_edge

sw.bb8.i.if.end56_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

sw.bb8.i.address_error.i_crit_edge:               ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i

address_error.i:                                  ; preds = %sw.bb8.i.address_error.i_crit_edge, %sw.bb.i.address_error.i_crit_edge
  %31 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.ssb_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_dev4.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %dmaaddr.0.i, i32 noundef %conv35, i32 noundef 2, i32 noundef 0) #6
  br label %if.then37

if.then37:                                        ; preds = %address_error.i, %map_descbuffer.exit.if.then37_crit_edge
  %or = or i32 %gfp_flags, 1
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #6
  %37 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rx_buffersize, align 4
  %conv39 = zext i16 %38 to i32
  %call.i97 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv39, i32 noundef %or) #6
  %tobool41.not = icmp eq ptr %call.i97, null
  br i1 %tobool41.not, label %if.then37.cleanup_crit_edge, label %if.end51, !prof !54

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.then37
  %data52 = getelementptr inbounds %struct.sk_buff, ptr %call.i97, i32 0, i32 19
  %39 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data52, align 4
  %41 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rx_buffersize, align 4
  %43 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev2.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %dma_dev4.i99 = getelementptr inbounds %struct.ssb_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dma_dev4.i99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_dev4.i99, align 4
  %call.i9.i100 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %40) #6
  br i1 %call.i9.i100, label %land.rhs.i11.i102, label %if.end39.i24.i115

land.rhs.i11.i102:                                ; preds = %if.end51
  %.b1.i10.i101 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i10.i101, label %land.rhs.i11.i102.if.end56_crit_edge, label %if.then.i15.i106, !prof !55

land.rhs.i11.i102.if.end56_crit_edge:             ; preds = %land.rhs.i11.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then.i15.i106:                                 ; preds = %land.rhs.i11.i102
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i12.i103 = tail call ptr @dev_driver_string(ptr noundef %48) #6
  %init_name.i.i13.i104 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %init_name.i.i13.i104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i13.i104, align 8
  %tobool.not.i.i14.i105 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i14.i105, label %if.end.i.i16.i107, label %if.then.i15.i106.dev_name.exit.i18.i109_crit_edge

if.then.i15.i106.dev_name.exit.i18.i109_crit_edge: ; preds = %if.then.i15.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i18.i109

if.end.i.i16.i107:                                ; preds = %if.then.i15.i106
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  br label %dev_name.exit.i18.i109

dev_name.exit.i18.i109:                           ; preds = %if.end.i.i16.i107, %if.then.i15.i106.dev_name.exit.i18.i109_crit_edge
  %retval.0.i.i17.i108 = phi ptr [ %52, %if.end.i.i16.i107 ], [ %50, %if.then.i15.i106.dev_name.exit.i18.i109_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i12.i103, ptr noundef %retval.0.i.i17.i108) #6
  br label %if.end56

if.end39.i24.i115:                                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %conv54 = zext i16 %42 to i32
  tail call void @debug_dma_map_single(ptr noundef %48, ptr noundef %40, i32 noundef %conv54) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %53 = load ptr, ptr @mem_map, align 4
  %54 = ptrtoint ptr %40 to i32
  %sub.i19.i110 = add i32 %54, 1073741824
  %shr.i20.i111 = lshr i32 %sub.i19.i110, 12
  %add.ptr.i21.i112 = getelementptr %struct.page, ptr %53, i32 %shr.i20.i111
  %and.i22.i113 = and i32 %54, 4095
  %call41.i23.i114 = tail call i32 @dma_map_page_attrs(ptr noundef %48, ptr noundef %add.ptr.i21.i112, i32 noundef %and.i22.i113, i32 noundef %conv54, i32 noundef 2, i32 noundef 0) #6
  br label %if.end56

if.end56:                                         ; preds = %if.end39.i24.i115, %dev_name.exit.i18.i109, %land.rhs.i11.i102.if.end56_crit_edge, %sw.bb8.i.if.end56_crit_edge, %sw.bb.i.if.end56_crit_edge, %if.end.i.if.end56_crit_edge
  %dmaaddr.0 = phi i32 [ %call41.i23.i114, %if.end39.i24.i115 ], [ -1, %dev_name.exit.i18.i109 ], [ -1, %land.rhs.i11.i102.if.end56_crit_edge ], [ %dmaaddr.0.i, %sw.bb8.i.if.end56_crit_edge ], [ %dmaaddr.0.i, %sw.bb.i.if.end56_crit_edge ], [ %dmaaddr.0.i, %if.end.i.if.end56_crit_edge ]
  %skb.0 = phi ptr [ %call.i97, %if.end39.i24.i115 ], [ %call.i97, %dev_name.exit.i18.i109 ], [ %call.i97, %land.rhs.i11.i102.if.end56_crit_edge ], [ %call.i, %sw.bb8.i.if.end56_crit_edge ], [ %call.i, %sw.bb.i.if.end56_crit_edge ], [ %call.i, %if.end.i.if.end56_crit_edge ]
  %55 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rx_buffersize, align 4
  %conv58 = zext i16 %56 to i32
  %57 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev2.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %dma_dev.i120 = getelementptr inbounds %struct.ssb_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dma_dev.i120 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_dev.i120, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %62, i32 noundef %dmaaddr.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0)
  %cmp.i.not.i121 = icmp eq i32 %dmaaddr.0, -1
  br i1 %cmp.i.not.i121, label %if.end56.if.then60_crit_edge, label %if.end.i123, !prof !54

if.end56.if.then60_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

if.end.i123:                                      ; preds = %if.end56
  %type.i122 = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 12
  %63 = ptrtoint ptr %type.i122 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type.i122, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %64, label %if.end.i123.if.end61_crit_edge [
    i32 30, label %sw.bb.i128
    i32 32, label %sw.bb8.i133
  ]

if.end.i123.if.end61_crit_edge:                   ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

sw.bb.i128:                                       ; preds = %if.end.i123
  %conv.i124 = zext i32 %dmaaddr.0 to i64
  %conv4.i125 = zext i16 %56 to i64
  %add.i126 = add nuw nsw i64 %conv4.i125, %conv.i124
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i126)
  %cmp.i127 = icmp ugt i64 %add.i126, 1073741824
  br i1 %cmp.i127, label %sw.bb.i128.address_error.i135_crit_edge, label %sw.bb.i128.if.end61_crit_edge

sw.bb.i128.if.end61_crit_edge:                    ; preds = %sw.bb.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

sw.bb.i128.address_error.i135_crit_edge:          ; preds = %sw.bb.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i135

sw.bb8.i133:                                      ; preds = %if.end.i123
  %conv9.i129 = zext i32 %dmaaddr.0 to i64
  %conv10.i130 = zext i16 %56 to i64
  %add11.i131 = add nuw nsw i64 %conv10.i130, %conv9.i129
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i131)
  %cmp12.i132 = icmp ugt i64 %add11.i131, 4294967296
  br i1 %cmp12.i132, label %sw.bb8.i133.address_error.i135_crit_edge, label %sw.bb8.i133.if.end61_crit_edge

sw.bb8.i133.if.end61_crit_edge:                   ; preds = %sw.bb8.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

sw.bb8.i133.address_error.i135_crit_edge:         ; preds = %sw.bb8.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %address_error.i135

address_error.i135:                               ; preds = %sw.bb8.i133.address_error.i135_crit_edge, %sw.bb.i128.address_error.i135_crit_edge
  %66 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev2.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %dma_dev4.i.i134 = getelementptr inbounds %struct.ssb_device, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dma_dev4.i.i134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_dev4.i.i134, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %71, i32 noundef %dmaaddr.0, i32 noundef %conv58, i32 noundef 2, i32 noundef 0) #6
  br label %if.then60

if.then60:                                        ; preds = %address_error.i135, %if.end56.if.then60_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.0, i32 noundef 1) #6
  br label %cleanup

if.end61:                                         ; preds = %sw.bb8.i133.if.end61_crit_edge, %sw.bb.i128.if.end61_crit_edge, %if.end.i123.if.end61_crit_edge
  %72 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %skb.0, ptr %meta, align 4
  %dmaaddr63 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, ptr %meta, i32 0, i32 1
  %73 = ptrtoint ptr %dmaaddr63 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %dmaaddr.0, ptr %dmaaddr63, align 4
  %74 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %rx_buffersize, align 4
  %76 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ring, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %desc to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %sub.ptr.sub.i)
  %cmp.i138 = icmp sgt i32 %sub.ptr.sub.i, -8
  br i1 %cmp.i138, label %land.rhs.i, label %if.end61.do.end.i_crit_edge

if.end61.do.end.i_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.end61
  %nr_slots.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 4
  %78 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %79)
  %cmp2.not.i = icmp slt i32 %sub.ptr.div.i, %79
  br i1 %cmp2.not.i, label %land.rhs.i.op32_fill_descriptor.exit_crit_edge, label %land.rhs.i.do.end.i_crit_edge, !prof !55

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.rhs.i.op32_fill_descriptor.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %op32_fill_descriptor.exit

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %if.end61.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 57, i32 noundef 9, ptr noundef null) #6
  br label %op32_fill_descriptor.exit

op32_fill_descriptor.exit:                        ; preds = %do.end.i, %land.rhs.i.op32_fill_descriptor.exit_crit_edge
  %80 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev2.i, align 4
  %translation.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %81, i32 0, i32 10, i32 0, i32 8
  %82 = ptrtoint ptr %translation.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %translation.i, align 4
  %conv.i140 = zext i16 %75 to i32
  %frameoffset.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 7
  %84 = ptrtoint ptr %frameoffset.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %frameoffset.i, align 4
  %sub.i = sub i32 %conv.i140, %85
  %and23.i = and i32 %sub.i, 8191
  %nr_slots24.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 4
  %86 = ptrtoint ptr %nr_slots24.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr_slots24.i, align 4
  %sub25.i = add i32 %87, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %sub25.i)
  %cmp26.i = icmp eq i32 %sub.ptr.div.i, %sub25.i
  %or29.i = or i32 %and23.i, 268435456
  %spec.select.i = select i1 %cmp26.i, i32 %or29.i, i32 %and23.i
  %and.i = and i32 %dmaaddr.0, 1073741823
  %or.i = or i32 %83, %and.i
  %88 = lshr i32 %dmaaddr.0, 14
  %shl.i = and i32 %88, 196608
  %or44.i = or i32 %spec.select.i, %shl.i
  %89 = tail call i32 @llvm.bswap.i32(i32 %or44.i) #6
  %90 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %desc, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %address.i = getelementptr inbounds %struct.b43legacy_dmadesc32, ptr %desc, i32 0, i32 1
  %92 = ptrtoint ptr %address.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %address.i, align 1
  %data65 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %93 = ptrtoint ptr %data65 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data65, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 0, ptr %94, align 1
  %96 = load ptr, ptr %data65, align 4
  %cookie = getelementptr inbounds %struct.b43legacy_hwtxstatus, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %cookie to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 0, ptr %cookie, align 1
  br label %cleanup

cleanup:                                          ; preds = %op32_fill_descriptor.exit, %if.then60, %if.then37.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then60 ], [ 0, %op32_fill_descriptor.exit ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_slot(ptr nocapture noundef %ring) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %tx = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !54

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 165, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %stopped = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 13
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stopped, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool22.not = icmp eq i8 %3, 0
  br i1 %tobool22.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !55

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 9, ptr noundef null) #6
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %nr_slots.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 4
  %4 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_slots.i, align 4
  %used_slots.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %do.end68, label %if.end44.if.end74_crit_edge, !prof !54

if.end44.if.end74_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

do.end68:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 167, i32 noundef 9, ptr noundef null) #6
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end44.if.end74_crit_edge
  %current_slot = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 6
  %8 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %cmp.i = icmp sgt i32 %9, -2
  br i1 %cmp.i, label %land.rhs.i, label %if.end74.do.end.i_crit_edge

if.end74.do.end.i_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.end74
  %10 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_slots.i, align 4
  %sub.i98 = add i32 %11, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i98, i32 %9)
  %cmp1.i = icmp slt i32 %sub.i98, %9
  br i1 %cmp1.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.next_slot.exit_crit_edge, !prof !54

land.rhs.i.next_slot.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_slot.exit

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %if.end74.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 124, i32 noundef 9, ptr noundef null) #6
  br label %next_slot.exit

next_slot.exit:                                   ; preds = %do.end.i, %land.rhs.i.next_slot.exit_crit_edge
  %12 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_slots.i, align 4
  %sub22.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i, i32 %9)
  %cmp23.i = icmp eq i32 %sub22.i, %9
  %add.i = add i32 %9, 1
  %retval.0.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %14 = ptrtoint ptr %current_slot to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %current_slot, align 4
  %15 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %used_slots.i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %used_slots.i, align 4
  %max_used_slots.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 16
  %17 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_used_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %inc)
  %cmp.not.i = icmp slt i32 %18, %inc
  br i1 %cmp.not.i, label %if.end.i, label %next_slot.exit.update_max_used_slots.exit_crit_edge

next_slot.exit.update_max_used_slots.exit_crit_edge: ; preds = %next_slot.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_max_used_slots.exit

if.end.i:                                         ; preds = %next_slot.exit
  %19 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc, ptr %max_used_slots.i, align 4
  %dev.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 15
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @b43legacy_debug(ptr noundef %21, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.update_max_used_slots.exit_crit_edge, label %if.then2.i

if.end.i.update_max_used_slots.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_max_used_slots.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wl.i, align 4
  %26 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_used_slots.i, align 4
  %28 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool5.not.i = icmp eq i8 %29, 0
  %cond.i = select i1 %tobool5.not.i, ptr @.str.11, ptr @.str.10
  %index.i = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 10
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %25, ptr noundef nonnull @.str.20, i32 noundef %27, ptr noundef nonnull %cond.i, i32 noundef %31) #6
  br label %update_max_used_slots.exit

update_max_used_slots.exit:                       ; preds = %if.then2.i, %if.end.i.update_max_used_slots.exit_crit_edge, %next_slot.exit.update_max_used_slots.exit_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_generate_txhdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_handle_hwtxstatus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sync_descbuffer_for_device(ptr nocapture noundef readonly %ring, i32 noundef %addr, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %tx = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 285, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.b43legacy_dmaring, ptr %ring, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %addr, i32 noundef %len, i32 noundef 2) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 773, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 830, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1063, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1071, i32 26}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1078, i32 25}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1092, i32 25}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1103, i32 26}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1133, i32 25}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1221, i32 26}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 720, i32 30}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 722, i32 21}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 722, i32 28}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 388, i32 25}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 347, i32 25}
!28 = !{ptr @b43legacy_dmacontroller_base.map32, !29, !"map32", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 219, i32 19}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 490, i32 11}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1047, i32 11}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1301, i32 31}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 1310, i32 31}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43legacy/dma.c", i32 147, i32 10}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2158264281}
!57 = !{i64 2158269797}
!58 = !{!"branch_weights", i32 2001, i32 2000}
!59 = !{i64 2158273230, i64 2158277802, i64 2158273267, i64 2158273323, i64 2158273357, i64 2158273381, i64 2158273422, i64 2158273443, i64 2158273471, i64 2158273505}
!60 = !{i64 2158280340}
!61 = !{i64 2158281063}
