; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, ptr, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rt2x00_led = type { ptr, %struct.led_classdev, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.link = type { i32, %struct.link_qual, %struct.link_ant, %struct.ewma_rssi, %struct.delayed_work, %struct.delayed_work, i32, i8, %struct.delayed_work, %struct.delayed_work }
%struct.link_qual = type { i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.link_ant = type { i32, %struct.antenna_setup, i32, %struct.ewma_rssi }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.140 = type { %union.anon.141, [0 x i32] }
%union.anon.141 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.130 = type { i64, i64, i8 }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@rt2x00lib_request_firmware._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt2x00lib_request_firmware = private unnamed_addr constant [27 x i8] c"rt2x00lib_request_firmware\00", align 1
@rt2x00lib_request_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.rt2x00lib_request_firmware, ptr @.str.2, i32 34, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: Error - Invalid firmware filename\0APlease file bug report to %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry_ptr = internal global ptr @rt2x00lib_request_firmware._entry, section ".printk_index", align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"http://rt2x00.serialmonkey.com\00", [33 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.rt2x00lib_request_firmware, ptr @.str.2, i32 38, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Info - Loading firmware file '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry_ptr.9 = internal global ptr @rt2x00lib_request_firmware._entry.6, section ".printk_index", align 4
@rt2x00lib_request_firmware._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.rt2x00lib_request_firmware, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Error - Failed to request Firmware\0A\00", [56 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry_ptr.13 = internal global ptr @rt2x00lib_request_firmware._entry.11, section ".printk_index", align 4
@rt2x00lib_request_firmware._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.rt2x00lib_request_firmware, ptr @.str.2, i32 47, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Error - Failed to read Firmware\0A\00", [59 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry_ptr.17 = internal global ptr @rt2x00lib_request_firmware._entry.15, section ".printk_index", align 4
@rt2x00lib_request_firmware._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.rt2x00lib_request_firmware, ptr @.str.2, i32 53, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Info - Firmware detected - version: %d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry_ptr.20 = internal global ptr @rt2x00lib_request_firmware._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d.%d\00", [26 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.rt2x00lib_request_firmware, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Error - Firmware checksum error\0A\00", [59 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry_ptr.25 = internal global ptr @rt2x00lib_request_firmware._entry.23, section ".printk_index", align 4
@rt2x00lib_request_firmware._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.rt2x00lib_request_firmware, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Error - Invalid firmware file length (len=%zu)\0A\00", [44 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry_ptr.29 = internal global ptr @rt2x00lib_request_firmware._entry.27, section ".printk_index", align 4
@rt2x00lib_request_firmware._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.rt2x00lib_request_firmware, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: Error - Current firmware does not support detected chipset\0A\00", [32 x i8] zeroinitializer }, align 32
@rt2x00lib_request_firmware._entry_ptr.33 = internal global ptr @rt2x00lib_request_firmware._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 32, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 38, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 42, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 47, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 52, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 55, i32 46 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 63, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 66, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [55 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 70, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @rt2x00lib_request_firmware._entry, ptr @rt2x00lib_request_firmware._entry.11, ptr @rt2x00lib_request_firmware._entry.15, ptr @rt2x00lib_request_firmware._entry.18, ptr @rt2x00lib_request_firmware._entry.23, ptr @rt2x00lib_request_firmware._entry.27, ptr @rt2x00lib_request_firmware._entry.31, ptr @rt2x00lib_request_firmware._entry.6, ptr @rt2x00lib_request_firmware._entry_ptr, ptr @rt2x00lib_request_firmware._entry_ptr.13, ptr @rt2x00lib_request_firmware._entry_ptr.17, ptr @rt2x00lib_request_firmware._entry_ptr.20, ptr @rt2x00lib_request_firmware._entry_ptr.25, ptr @rt2x00lib_request_firmware._entry_ptr.29, ptr @rt2x00lib_request_firmware._entry_ptr.33, ptr @rt2x00lib_request_firmware._entry_ptr.9, ptr @rt2x00lib_request_firmware._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @rt2x00lib_request_firmware._rs.10, ptr @.str.12, ptr @rt2x00lib_request_firmware._rs.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @rt2x00lib_request_firmware._rs.22, ptr @.str.24, ptr @rt2x00lib_request_firmware._rs.26, ptr @.str.28, ptr @rt2x00lib_request_firmware._rs.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00lib_request_firmware._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt2x00lib_load_firmware(ptr noundef %rt2x00dev) local_unnamed_addr #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %0 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cap_flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 54
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %hw.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56, i32 1
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #5
  %10 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !56
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %lib.i = getelementptr inbounds %struct.rt2x00_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lib.i, align 4
  %get_firmware_name.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %get_firmware_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_firmware_name.i, align 4
  %call2.i = tail call ptr %16(ptr noundef %rt2x00dev) #5
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.body.i, label %do.end14.i

do.body.i:                                        ; preds = %if.then2
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.rt2x00lib_request_firmware.exit.thread_crit_edge, label %do.end.i

do.body.i.rt2x00lib_request_firmware.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00lib_request_firmware.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 4
  %wiphy8.i = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy8.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rt2x00lib_request_firmware, ptr noundef nonnull @.str.5) #8
  br label %rt2x00lib_request_firmware.exit.thread

do.end14.i:                                       ; preds = %if.then2
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 4
  %wiphy16.i = getelementptr inbounds %struct.ieee80211_hw, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy16.i, align 8
  %dev17.i = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rt2x00lib_request_firmware, ptr noundef nonnull %call2.i) #8
  %call18.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %call2.i, ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end34.i, label %do.body21.i

do.body21.i:                                      ; preds = %do.end14.i
  %call22.i = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.10, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %do.body21.i.rt2x00lib_request_firmware.exit.thread_crit_edge, label %do.end27.i

do.body21.i.rt2x00lib_request_firmware.exit.thread_crit_edge: ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00lib_request_firmware.exit.thread

do.end27.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 4
  %wiphy29.i = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy29.i, align 8
  %dev30.i = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #8
  br label %rt2x00lib_request_firmware.exit.thread

if.end34.i:                                       ; preds = %do.end14.i
  %29 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw.i, align 4
  %tobool35.not.i = icmp eq ptr %30, null
  br i1 %tobool35.not.i, label %if.end34.i.do.body40.i_crit_edge, label %lor.lhs.false.i

if.end34.i.do.body40.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40.i

lor.lhs.false.i:                                  ; preds = %if.end34.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool36.not.i = icmp eq i32 %32, 0
  br i1 %tobool36.not.i, label %lor.lhs.false.i.do.body40.i_crit_edge, label %lor.lhs.false37.i

lor.lhs.false.i.do.body40.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40.i

lor.lhs.false37.i:                                ; preds = %lor.lhs.false.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %tobool38.not.i = icmp eq ptr %34, null
  br i1 %tobool38.not.i, label %lor.lhs.false37.i.do.body40.i_crit_edge, label %do.end56.i

lor.lhs.false37.i.do.body40.i_crit_edge:          ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40.i

do.body40.i:                                      ; preds = %lor.lhs.false37.i.do.body40.i_crit_edge, %lor.lhs.false.i.do.body40.i_crit_edge, %if.end34.i.do.body40.i_crit_edge
  %call41.i = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.14, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %do.body40.i.do.end52.i_crit_edge, label %do.end46.i

do.body40.i.do.end52.i_crit_edge:                 ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52.i

do.end46.i:                                       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw.i, align 4
  %wiphy48.i = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy48.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy48.i, align 8
  %dev49.i = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #8
  br label %do.end52.i

do.end52.i:                                       ; preds = %do.end46.i, %do.body40.i.do.end52.i_crit_edge
  %39 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %40) #5
  br label %rt2x00lib_request_firmware.exit.thread

do.end56.i:                                       ; preds = %lor.lhs.false37.i
  %41 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw.i, align 4
  %wiphy58.i = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wiphy58.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy58.i, align 8
  %dev59.i = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  %sub.i = add i32 %32, -4
  %arrayidx.i = getelementptr i8, ptr %34, i32 %sub.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %46 to i32
  %sub64.i = add i32 %32, -3
  %arrayidx65.i = getelementptr i8, ptr %34, i32 %sub64.i
  %47 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx65.i, align 1
  %conv66.i = zext i8 %48 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rt2x00lib_request_firmware, i32 noundef %conv.i, i32 noundef %conv66.i) #8
  %49 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw.i, align 4
  %wiphy68.i = getelementptr inbounds %struct.ieee80211_hw, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wiphy68.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wiphy68.i, align 8
  %fw_version.i = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 38
  %53 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i, align 4
  %data69.i = getelementptr inbounds %struct.firmware, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %data69.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data69.i, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %54, align 4
  %sub71.i = add i32 %58, -4
  %arrayidx72.i = getelementptr i8, ptr %56, i32 %sub71.i
  %59 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %60 to i32
  %sub76.i = add i32 %58, -3
  %arrayidx77.i = getelementptr i8, ptr %56, i32 %sub76.i
  %61 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %62 to i32
  %call79.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %conv73.i, i32 noundef %conv78.i) #5
  %63 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i, align 4
  %lib81.i = getelementptr inbounds %struct.rt2x00_ops, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %lib81.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lib81.i, align 4
  %check_firmware.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %check_firmware.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %check_firmware.i, align 4
  %69 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fw.i, align 4
  %data82.i = getelementptr inbounds %struct.firmware, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %data82.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data82.i, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 4
  %call84.i = call i32 %68(ptr noundef %rt2x00dev, ptr noundef %72, i32 noundef %74) #5
  %75 = zext i32 %call84.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call84.i, label %rt2x00lib_request_firmware.exit [
    i32 3, label %do.body114.i
    i32 1, label %do.body85.i
    i32 2, label %do.body99.i
  ]

do.body85.i:                                      ; preds = %do.end56.i
  %call86.i = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.22, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %do.body85.i.exit.i_crit_edge, label %do.end91.i

do.body85.i.exit.i_crit_edge:                     ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

do.end91.i:                                       ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw.i, align 4
  %wiphy93.i = getelementptr inbounds %struct.ieee80211_hw, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %wiphy93.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wiphy93.i, align 8
  %dev94.i = getelementptr inbounds %struct.wiphy, ptr %79, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #8
  br label %exit.i

do.body99.i:                                      ; preds = %do.end56.i
  %call100.i = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.26, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %do.body99.i.exit.i_crit_edge, label %do.end105.i

do.body99.i.exit.i_crit_edge:                     ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

do.end105.i:                                      ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw.i, align 4
  %wiphy107.i = getelementptr inbounds %struct.ieee80211_hw, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %wiphy107.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy107.i, align 8
  %dev108.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 56
  %84 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rt2x00lib_request_firmware, i32 noundef %87) #8
  br label %exit.i

do.body114.i:                                     ; preds = %do.end56.i
  %call115.i = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.30, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %do.body114.i.exit.i_crit_edge, label %do.end120.i

do.body114.i.exit.i_crit_edge:                    ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

do.end120.i:                                      ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw.i, align 4
  %wiphy122.i = getelementptr inbounds %struct.ieee80211_hw, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %wiphy122.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wiphy122.i, align 8
  %dev123.i = getelementptr inbounds %struct.wiphy, ptr %91, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev123.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #8
  br label %exit.i

exit.i:                                           ; preds = %do.end120.i, %do.body114.i.exit.i_crit_edge, %do.end105.i, %do.body99.i.exit.i_crit_edge, %do.end91.i, %do.body85.i.exit.i_crit_edge
  %92 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %93) #5
  br label %rt2x00lib_request_firmware.exit.thread

rt2x00lib_request_firmware.exit.thread:           ; preds = %exit.i, %do.end52.i, %do.end27.i, %do.body21.i.rt2x00lib_request_firmware.exit.thread_crit_edge, %do.end.i, %do.body.i.rt2x00lib_request_firmware.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call18.i, %do.body21.i.rt2x00lib_request_firmware.exit.thread_crit_edge ], [ %call18.i, %do.end27.i ], [ -22, %do.body.i.rt2x00lib_request_firmware.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -2, %do.end52.i ], [ -2, %exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %cleanup

rt2x00lib_request_firmware.exit:                  ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fw.i, align 4
  %96 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %fw, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %if.end7

if.end7:                                          ; preds = %rt2x00lib_request_firmware.exit, %if.end.if.end7_crit_edge
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %97 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %98, i32 0, i32 7
  %99 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lib, align 4
  %load_firmware = getelementptr inbounds %struct.rt2x00lib_ops, ptr %100, i32 0, i32 9
  %101 = ptrtoint ptr %load_firmware to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %load_firmware, align 4
  %103 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data, align 4
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %104, align 4
  %call10 = call i32 %102(ptr noundef %rt2x00dev, ptr noundef %106, i32 noundef %108) #5
  call void @rt2x00leds_led_assoc(ptr noundef %rt2x00dev, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %rt2x00lib_request_firmware.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %rt2x00lib_request_firmware.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00leds_led_assoc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00lib_free_firmware(ptr nocapture noundef %rt2x00dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 54
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %1) #5
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c", i32 32, i32 3}
!2 = !{ptr @rt2x00lib_request_firmware._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.rt2x00lib_request_firmware, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rt2x00lib_request_firmware._entry, !1, !"_entry", i1 false, i1 false}
!9 = !{ptr @rt2x00lib_request_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c", i32 38, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rt2x00lib_request_firmware._entry.6, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @rt2x00lib_request_firmware._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @rt2x00lib_request_firmware._rs.10, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c", i32 42, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rt2x00lib_request_firmware._entry.11, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @rt2x00lib_request_firmware._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @rt2x00lib_request_firmware._rs.14, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c", i32 47, i32 3}
!23 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rt2x00lib_request_firmware._entry.15, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @rt2x00lib_request_firmware._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c", i32 52, i32 2}
!28 = !{ptr @rt2x00lib_request_firmware._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rt2x00lib_request_firmware._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c", i32 55, i32 46}
!32 = !{ptr @rt2x00lib_request_firmware._rs.22, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c", i32 63, i32 3}
!34 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rt2x00lib_request_firmware._entry.23, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rt2x00lib_request_firmware._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @rt2x00lib_request_firmware._rs.26, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c", i32 66, i32 3}
!39 = !{ptr @.str.28, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rt2x00lib_request_firmware._entry.27, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rt2x00lib_request_firmware._entry_ptr.29, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @rt2x00lib_request_firmware._rs.30, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c", i32 70, i32 3}
!44 = !{ptr @.str.32, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rt2x00lib_request_firmware._entry.31, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rt2x00lib_request_firmware._entry_ptr.33, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
