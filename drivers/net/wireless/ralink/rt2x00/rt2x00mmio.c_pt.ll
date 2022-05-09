; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rt2x00mmio_regbusy_read\22, \22a\22\09"
module asm "\09.weak\09__crc_rt2x00mmio_regbusy_read\09\09\09\09"
module asm "\09.long\09__crc_rt2x00mmio_regbusy_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00mmio_regbusy_read:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00mmio_regbusy_read\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00mmio_regbusy_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt2x00mmio_rxdone\22, \22a\22\09"
module asm "\09.weak\09__crc_rt2x00mmio_rxdone\09\09\09\09"
module asm "\09.long\09__crc_rt2x00mmio_rxdone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00mmio_rxdone:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00mmio_rxdone\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00mmio_rxdone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt2x00mmio_flush_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_rt2x00mmio_flush_queue\09\09\09\09"
module asm "\09.long\09__crc_rt2x00mmio_flush_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00mmio_flush_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00mmio_flush_queue\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00mmio_flush_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt2x00mmio_initialize\22, \22a\22\09"
module asm "\09.weak\09__crc_rt2x00mmio_initialize\09\09\09\09"
module asm "\09.long\09__crc_rt2x00mmio_initialize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00mmio_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00mmio_initialize\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00mmio_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt2x00mmio_uninitialize\22, \22a\22\09"
module asm "\09.weak\09__crc_rt2x00mmio_uninitialize\09\09\09\09"
module asm "\09.long\09__crc_rt2x00mmio_uninitialize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00mmio_uninitialize:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00mmio_uninitialize\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00mmio_uninitialize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.queue_entry = type { i32, i32, ptr, ptr, i32, ptr }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.data_queue = type { ptr, ptr, i32, i32, %struct.mutex, %struct.spinlock, %struct.spinlock, i32, i16, i16, i16, [3 x i16], i16, i32, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.queue_entry_priv_mmio = type { ptr, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt2x00mmio_regbusy_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rt2x00mmio_regbusy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013%s() Indirect register access failed: offset=0x%.08x, value=0x%.08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt2x00mmio_regbusy_read\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c\00", [48 x i8] zeroinitializer }, align 32
@rt2x00mmio_regbusy_read._entry_ptr = internal global ptr @rt2x00mmio_regbusy_read._entry, section ".printk_index", align 4
@__kstrtab_rt2x00mmio_regbusy_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00mmio_regbusy_read = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00mmio_regbusy_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00mmio_regbusy_read to i32), ptr @__kstrtab_rt2x00mmio_regbusy_read, ptr @__kstrtabns_rt2x00mmio_regbusy_read }, section "___ksymtab_gpl+rt2x00mmio_regbusy_read", align 4
@__kstrtab_rt2x00mmio_rxdone = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00mmio_rxdone = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00mmio_rxdone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00mmio_rxdone to i32), ptr @__kstrtab_rt2x00mmio_rxdone, ptr @__kstrtabns_rt2x00mmio_rxdone }, section "___ksymtab_gpl+rt2x00mmio_rxdone", align 4
@__kstrtab_rt2x00mmio_flush_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00mmio_flush_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00mmio_flush_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00mmio_flush_queue to i32), ptr @__kstrtab_rt2x00mmio_flush_queue, ptr @__kstrtabns_rt2x00mmio_flush_queue }, section "___ksymtab_gpl+rt2x00mmio_flush_queue", align 4
@rt2x00mmio_initialize._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt2x00mmio_initialize = private unnamed_addr constant [22 x i8] c"rt2x00mmio_initialize\00", align 1
@rt2x00mmio_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.rt2x00mmio_initialize, ptr @.str.2, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Error - IRQ %d allocation failed (error %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt2x00mmio_initialize._entry_ptr = internal global ptr @rt2x00mmio_initialize._entry, section ".printk_index", align 4
@__kstrtab_rt2x00mmio_initialize = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00mmio_initialize = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00mmio_initialize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00mmio_initialize to i32), ptr @__kstrtab_rt2x00mmio_initialize, ptr @__kstrtabns_rt2x00mmio_initialize }, section "___ksymtab_gpl+rt2x00mmio_initialize", align 4
@__kstrtab_rt2x00mmio_uninitialize = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00mmio_uninitialize = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00mmio_uninitialize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00mmio_uninitialize to i32), ptr @__kstrtab_rt2x00mmio_uninitialize, ptr @__kstrtabns_rt2x00mmio_uninitialize }, section "___ksymtab_gpl+rt2x00mmio_uninitialize", align 4
@__UNIQUE_ID_author368 = internal constant [49 x i8] c"rt2x00mmio.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version369 = internal constant [25 x i8] c"rt2x00mmio.version=2.3.0\00", section ".modinfo", align 1
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt2x00mmio\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.8, ptr @.str.9 }, section "__modver", align 4
@__UNIQUE_ID_description370 = internal constant [43 x i8] c"rt2x00mmio.description=rt2x00 mmio library\00", section ".modinfo", align 1
@__UNIQUE_ID_file371 = internal constant [62 x i8] c"rt2x00mmio.file=drivers/net/wireless/ralink/rt2x00/rt2x00mmio\00", section ".modinfo", align 1
@__UNIQUE_ID_license372 = internal constant [23 x i8] c"rt2x00mmio.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 41, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 163, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [51 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 199, i32 1 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author368, ptr @__UNIQUE_ID_description370, ptr @__UNIQUE_ID_file371, ptr @__UNIQUE_ID_license372, ptr @__UNIQUE_ID_version369, ptr @__ksymtab_rt2x00mmio_flush_queue, ptr @__ksymtab_rt2x00mmio_initialize, ptr @__ksymtab_rt2x00mmio_regbusy_read, ptr @__ksymtab_rt2x00mmio_rxdone, ptr @__ksymtab_rt2x00mmio_uninitialize, ptr @__modver_attr, ptr @rt2x00mmio_initialize._entry, ptr @rt2x00mmio_initialize._entry_ptr, ptr @rt2x00mmio_regbusy_read._entry, ptr @rt2x00mmio_regbusy_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rt2x00mmio_initialize._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00mmio_regbusy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00mmio_initialize._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00mmio_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef %offset, [2 x i32] %field.coerce, ptr nocapture noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %field.coerce.fca.0.extract = extractvalue [2 x i32] %field.coerce, 0
  %field.coerce.fca.1.extract = extractvalue [2 x i32] %field.coerce, 1
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.cond.preheader
  %i.032 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end6.for.body_crit_edge ]
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %offset
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %reg, align 4
  %and = and i32 %5, %field.coerce.fca.1.extract
  %shr = lshr i32 %and, %field.coerce.fca.0.extract
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool4.not = icmp eq i32 %shr, 0
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #5
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %land.end, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

land.end:                                         ; preds = %if.end6
  %.b31 = load i1, ptr @rt2x00mmio_regbusy_read.__already_done, align 1
  br i1 %.b31, label %land.end.if.end16_crit_edge, label %if.then13, !prof !50

land.end.if.end16_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rt2x00mmio_regbusy_read.__already_done, align 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %offset, i32 noundef %9) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.end.if.end16_crit_edge
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rt2x00mmio_rxdone(ptr nocapture noundef readonly %rt2x00dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 50
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %dec16 = phi i32 [ 15, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %call = tail call ptr @rt2x00queue_get_entry(ptr noundef %1, i32 noundef 0) #5
  %priv_data = getelementptr inbounds %struct.queue_entry, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_data, align 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lib, align 4
  %get_entry_state = getelementptr inbounds %struct.rt2x00lib_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %get_entry_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_entry_state, align 4
  %call2 = tail call zeroext i1 %9(ptr noundef %call) #5
  br i1 %call2, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %skb = getelementptr inbounds %struct.queue_entry, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %desc4 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %desc4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %desc4, align 4
  %queue5 = getelementptr inbounds %struct.queue_entry, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %queue5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue5, align 4
  %desc_size = getelementptr inbounds %struct.data_queue, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %desc_size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %desc_size, align 2
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 9
  %19 = ptrtoint ptr %desc_len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %desc_len, align 1
  tail call void @rt2x00lib_dmastart(ptr noundef %call) #5
  tail call void @rt2x00lib_dmadone(ptr noundef %call) #5
  tail call void @rt2x00lib_rxdone(ptr noundef %call, i32 noundef 2592) #5
  %dec = add nsw i32 %dec16, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %20 = xor i1 %call2, true
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt2x00queue_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_dmastart(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_dmadone(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_rxdone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00mmio_flush_queue(ptr nocapture noundef readonly %queue, i1 zeroext %drop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %length.i = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 10
  %0 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i2.not = icmp eq i16 %1, 0
  br i1 %cmp.i2.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 50) #5
  %inc = add nuw nsw i32 %i.03, 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i = icmp ne i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.03)
  %cmp = icmp ult i32 %i.03, 9
  %or.cond = select i1 %cmp.i, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt2x00mmio_initialize(ptr noundef %rt2x00dev) #0 align 64 {
entry:
  %dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 50
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %arrayidx65 = getelementptr %struct.data_queue, ptr %1, i32 1
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx65) #5, !srcloc !51
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %data_queues = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 49
  %4 = ptrtoint ptr %data_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_queues, align 8
  %arrayidx266 = getelementptr %struct.data_queue, ptr %3, i32 %5
  %cmp.not67 = icmp eq ptr %1, %arrayidx266
  br i1 %cmp.not67, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %rt2x00mmio_alloc_queue_dma.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %arrayidx69 = phi ptr [ %arrayidx, %rt2x00mmio_alloc_queue_dma.exit.for.body_crit_edge ], [ %arrayidx65, %entry.for.body_crit_edge ]
  %queue.068 = phi ptr [ %arrayidx69, %rt2x00mmio_alloc_queue_dma.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i) #5
  %6 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dma.i, align 4, !annotation !52
  %7 = ptrtoint ptr %rt2x00dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rt2x00dev, align 8
  %limit.i = getelementptr inbounds %struct.data_queue, ptr %queue.068, i32 0, i32 8
  %9 = ptrtoint ptr %limit.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %limit.i, align 4
  %conv.i = zext i16 %10 to i32
  %desc_size.i = getelementptr inbounds %struct.data_queue, ptr %queue.068, i32 0, i32 19
  %11 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %desc_size.i, align 2
  %conv1.i = zext i8 %12 to i32
  %mul.i = mul nuw nsw i32 %conv1.i, %conv.i
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %mul.i, ptr noundef nonnull %dma.i, i32 noundef 3264, i32 noundef 0) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %rt2x00mmio_alloc_queue_dma.exit.thread, label %for.cond.preheader.i

rt2x00mmio_alloc_queue_dma.exit.thread:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i) #5
  br label %exit

for.cond.preheader.i:                             ; preds = %for.body
  %13 = ptrtoint ptr %limit.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp26.not.i = icmp eq i16 %14, 0
  br i1 %cmp26.not.i, label %for.cond.preheader.i.rt2x00mmio_alloc_queue_dma.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.rt2x00mmio_alloc_queue_dma.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00mmio_alloc_queue_dma.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %entries.i = getelementptr inbounds %struct.data_queue, ptr %queue.068, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entries.i, align 4
  %priv_data.i = getelementptr %struct.queue_entry, ptr %16, i32 %i.027.i, i32 5
  %17 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv_data.i, align 4
  %19 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %desc_size.i, align 2
  %conv6.i = zext i8 %20 to i32
  %mul7.i = mul i32 %i.027.i, %conv6.i
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %mul7.i
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %18, align 4
  %22 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma.i, align 4
  %24 = load i8, ptr %desc_size.i, align 2
  %conv9.i = zext i8 %24 to i32
  %mul10.i = mul i32 %i.027.i, %conv9.i
  %add.i = add i32 %mul10.i, %23
  %desc_dma.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %desc_dma.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %desc_dma.i, align 4
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %26 = ptrtoint ptr %limit.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %limit.i, align 4
  %conv3.i = zext i16 %27 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv3.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rt2x00mmio_alloc_queue_dma.exit_crit_edge

for.body.i.rt2x00mmio_alloc_queue_dma.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00mmio_alloc_queue_dma.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

rt2x00mmio_alloc_queue_dma.exit:                  ; preds = %for.body.i.rt2x00mmio_alloc_queue_dma.exit_crit_edge, %for.cond.preheader.i.rt2x00mmio_alloc_queue_dma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i) #5
  %arrayidx = getelementptr %struct.data_queue, ptr %arrayidx69, i32 1
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx) #5, !srcloc !51
  %28 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx, align 4
  %30 = ptrtoint ptr %data_queues to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_queues, align 8
  %arrayidx2 = getelementptr %struct.data_queue, ptr %29, i32 %31
  %cmp.not = icmp eq ptr %arrayidx69, %arrayidx2
  br i1 %cmp.not, label %rt2x00mmio_alloc_queue_dma.exit.for.end_crit_edge, label %rt2x00mmio_alloc_queue_dma.exit.for.body_crit_edge

rt2x00mmio_alloc_queue_dma.exit.for.body_crit_edge: ; preds = %rt2x00mmio_alloc_queue_dma.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

rt2x00mmio_alloc_queue_dma.exit.for.end_crit_edge: ; preds = %rt2x00mmio_alloc_queue_dma.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %rt2x00mmio_alloc_queue_dma.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %irq = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 15
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 8
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lib, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %name = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 16
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %33, ptr noundef %39, ptr noundef null, i32 noundef 128, ptr noundef %41, ptr noundef %rt2x00dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %for.end.cleanup_crit_edge, label %do.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %for.end
  %call7 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00mmio_initialize._rs, ptr noundef nonnull @__func__.rt2x00mmio_initialize) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.exit_crit_edge, label %do.end

do.body.exit_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %45, i32 0, i32 56
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rt2x00mmio_initialize, i32 noundef %47, i32 noundef %call.i) #8
  br label %exit

exit:                                             ; preds = %do.end, %do.body.exit_crit_edge, %rt2x00mmio_alloc_queue_dma.exit.thread
  %status.0 = phi i32 [ %call.i, %do.end ], [ %call.i, %do.body.exit_crit_edge ], [ -12, %rt2x00mmio_alloc_queue_dma.exit.thread ]
  %48 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx, align 4
  %arrayidx1870 = getelementptr %struct.data_queue, ptr %49, i32 1
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx1870) #5, !srcloc !51
  %50 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx, align 4
  %52 = ptrtoint ptr %data_queues to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_queues, align 8
  %arrayidx2171 = getelementptr %struct.data_queue, ptr %51, i32 %53
  %cmp22.not72 = icmp eq ptr %49, %arrayidx2171
  br i1 %cmp22.not72, label %exit.cleanup_crit_edge, label %exit.for.body23_crit_edge

exit.for.body23_crit_edge:                        ; preds = %exit
  br label %for.body23

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body23:                                       ; preds = %rt2x00mmio_free_queue_dma.exit.for.body23_crit_edge, %exit.for.body23_crit_edge
  %arrayidx1874 = phi ptr [ %arrayidx18, %rt2x00mmio_free_queue_dma.exit.for.body23_crit_edge ], [ %arrayidx1870, %exit.for.body23_crit_edge ]
  %queue.173 = phi ptr [ %arrayidx1874, %rt2x00mmio_free_queue_dma.exit.for.body23_crit_edge ], [ %49, %exit.for.body23_crit_edge ]
  %entries.i51 = getelementptr inbounds %struct.data_queue, ptr %queue.173, i32 0, i32 1
  %54 = ptrtoint ptr %entries.i51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %entries.i51, align 4
  %priv_data.i52 = getelementptr inbounds %struct.queue_entry, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %priv_data.i52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv_data.i52, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool.not.i53 = icmp eq ptr %59, null
  br i1 %tobool.not.i53, label %for.body23.rt2x00mmio_free_queue_dma.exit_crit_edge, label %if.then.i

for.body23.rt2x00mmio_free_queue_dma.exit_crit_edge: ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00mmio_free_queue_dma.exit

if.then.i:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %rt2x00dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rt2x00dev, align 8
  %limit.i54 = getelementptr inbounds %struct.data_queue, ptr %queue.173, i32 0, i32 8
  %62 = ptrtoint ptr %limit.i54 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %limit.i54, align 4
  %conv.i55 = zext i16 %63 to i32
  %desc_size.i56 = getelementptr inbounds %struct.data_queue, ptr %queue.173, i32 0, i32 19
  %64 = ptrtoint ptr %desc_size.i56 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %desc_size.i56, align 2
  %conv1.i57 = zext i8 %65 to i32
  %mul.i58 = mul nuw nsw i32 %conv1.i57, %conv.i55
  %desc_dma.i59 = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %57, i32 0, i32 1
  %66 = ptrtoint ptr %desc_dma.i59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %desc_dma.i59, align 4
  call void @dma_free_attrs(ptr noundef %61, i32 noundef %mul.i58, ptr noundef nonnull %59, i32 noundef %67, i32 noundef 0) #5
  br label %rt2x00mmio_free_queue_dma.exit

rt2x00mmio_free_queue_dma.exit:                   ; preds = %if.then.i, %for.body23.rt2x00mmio_free_queue_dma.exit_crit_edge
  %68 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %57, align 4
  %arrayidx18 = getelementptr %struct.data_queue, ptr %arrayidx1874, i32 1
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx18) #5, !srcloc !51
  %69 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rx, align 4
  %71 = ptrtoint ptr %data_queues to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_queues, align 8
  %arrayidx21 = getelementptr %struct.data_queue, ptr %70, i32 %72
  %cmp22.not = icmp eq ptr %arrayidx1874, %arrayidx21
  br i1 %cmp22.not, label %rt2x00mmio_free_queue_dma.exit.cleanup_crit_edge, label %rt2x00mmio_free_queue_dma.exit.for.body23_crit_edge

rt2x00mmio_free_queue_dma.exit.for.body23_crit_edge: ; preds = %rt2x00mmio_free_queue_dma.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body23

rt2x00mmio_free_queue_dma.exit.cleanup_crit_edge: ; preds = %rt2x00mmio_free_queue_dma.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %rt2x00mmio_free_queue_dma.exit.cleanup_crit_edge, %exit.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %status.0, %exit.cleanup_crit_edge ], [ %status.0, %rt2x00mmio_free_queue_dma.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00mmio_uninitialize(ptr noundef %rt2x00dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 15
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %rt2x00dev) #5
  %rx = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 50
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %arrayidx12 = getelementptr %struct.data_queue, ptr %3, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx12) #5, !srcloc !51
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx, align 4
  %data_queues = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 49
  %6 = ptrtoint ptr %data_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_queues, align 8
  %arrayidx213 = getelementptr %struct.data_queue, ptr %5, i32 %7
  %cmp.not14 = icmp eq ptr %3, %arrayidx213
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %rt2x00mmio_free_queue_dma.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %arrayidx16 = phi ptr [ %arrayidx, %rt2x00mmio_free_queue_dma.exit.for.body_crit_edge ], [ %arrayidx12, %entry.for.body_crit_edge ]
  %queue.015 = phi ptr [ %arrayidx16, %rt2x00mmio_free_queue_dma.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %entries.i = getelementptr inbounds %struct.data_queue, ptr %queue.015, i32 0, i32 1
  %8 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries.i, align 4
  %priv_data.i = getelementptr inbounds %struct.queue_entry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv_data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.rt2x00mmio_free_queue_dma.exit_crit_edge, label %if.then.i

for.body.rt2x00mmio_free_queue_dma.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00mmio_free_queue_dma.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %rt2x00dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rt2x00dev, align 8
  %limit.i = getelementptr inbounds %struct.data_queue, ptr %queue.015, i32 0, i32 8
  %16 = ptrtoint ptr %limit.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %limit.i, align 4
  %conv.i = zext i16 %17 to i32
  %desc_size.i = getelementptr inbounds %struct.data_queue, ptr %queue.015, i32 0, i32 19
  %18 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %desc_size.i, align 2
  %conv1.i = zext i8 %19 to i32
  %mul.i = mul nuw nsw i32 %conv1.i, %conv.i
  %desc_dma.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %mul.i, ptr noundef nonnull %13, i32 noundef %21, i32 noundef 0) #5
  br label %rt2x00mmio_free_queue_dma.exit

rt2x00mmio_free_queue_dma.exit:                   ; preds = %if.then.i, %for.body.rt2x00mmio_free_queue_dma.exit_crit_edge
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %11, align 4
  %arrayidx = getelementptr %struct.data_queue, ptr %arrayidx16, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx) #5, !srcloc !51
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx, align 4
  %25 = ptrtoint ptr %data_queues to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_queues, align 8
  %arrayidx2 = getelementptr %struct.data_queue, ptr %24, i32 %26
  %cmp.not = icmp eq ptr %arrayidx16, %arrayidx2
  br i1 %cmp.not, label %rt2x00mmio_free_queue_dma.exit.for.end_crit_edge, label %rt2x00mmio_free_queue_dma.exit.for.body_crit_edge

rt2x00mmio_free_queue_dma.exit.for.body_crit_edge: ; preds = %rt2x00mmio_free_queue_dma.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

rt2x00mmio_free_queue_dma.exit.for.end_crit_edge: ; preds = %rt2x00mmio_free_queue_dma.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %rt2x00mmio_free_queue_dma.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 41, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rt2x00mmio_regbusy_read._entry, !1, !"_entry", i1 false, i1 false}
!6 = !{ptr @rt2x00mmio_regbusy_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @__ksymtab_rt2x00mmio_regbusy_read, !8, !"__ksymtab_rt2x00mmio_regbusy_read", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 47, i32 1}
!9 = !{ptr @__ksymtab_rt2x00mmio_rxdone, !10, !"__ksymtab_rt2x00mmio_rxdone", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 86, i32 1}
!11 = !{ptr @__ksymtab_rt2x00mmio_flush_queue, !12, !"__ksymtab_rt2x00mmio_flush_queue", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 95, i32 1}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 163, i32 3}
!15 = !{ptr @rt2x00mmio_initialize._rs, !14, !"_rs", i1 false, i1 false}
!16 = !{ptr @__func__.rt2x00mmio_initialize, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rt2x00mmio_initialize._entry, !14, !"_entry", i1 false, i1 false}
!21 = !{ptr @rt2x00mmio_initialize._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_rt2x00mmio_initialize, !23, !"__ksymtab_rt2x00mmio_initialize", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 176, i32 1}
!24 = !{ptr @__ksymtab_rt2x00mmio_uninitialize, !25, !"__ksymtab_rt2x00mmio_uninitialize", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 193, i32 1}
!26 = !{ptr @__UNIQUE_ID_author368, !27, !"__UNIQUE_ID_author368", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 198, i32 1}
!28 = !{ptr @__UNIQUE_ID_version369, !29, !"__UNIQUE_ID_version369", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 199, i32 1}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__modver_attr, !29, !"__modver_attr", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_description370, !35, !"__UNIQUE_ID_description370", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 200, i32 1}
!36 = !{ptr @__UNIQUE_ID_file371, !37, !"__UNIQUE_ID_file371", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00mmio.c", i32 201, i32 1}
!38 = !{ptr @__UNIQUE_ID_license372, !37, !"__UNIQUE_ID_license372", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 6219590}
!49 = !{i64 2157709708}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 1009982}
!52 = !{!"auto-init"}
