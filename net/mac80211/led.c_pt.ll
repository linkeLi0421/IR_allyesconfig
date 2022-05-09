; ModuleID = '/llk/IR_all_yes/net/mac80211/led.c_pt.bc'
source_filename = "../net/mac80211/led.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__ieee80211_get_radio_led_name\22, \22a\22\09"
module asm "\09.weak\09__crc___ieee80211_get_radio_led_name\09\09\09\09"
module asm "\09.long\09__crc___ieee80211_get_radio_led_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ieee80211_get_radio_led_name:\09\09\09\09\09"
module asm "\09.asciz \09\22__ieee80211_get_radio_led_name\22\09\09\09\09\09"
module asm "__kstrtabns___ieee80211_get_radio_led_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ieee80211_get_assoc_led_name\22, \22a\22\09"
module asm "\09.weak\09__crc___ieee80211_get_assoc_led_name\09\09\09\09"
module asm "\09.long\09__crc___ieee80211_get_assoc_led_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ieee80211_get_assoc_led_name:\09\09\09\09\09"
module asm "\09.asciz \09\22__ieee80211_get_assoc_led_name\22\09\09\09\09\09"
module asm "__kstrtabns___ieee80211_get_assoc_led_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ieee80211_get_tx_led_name\22, \22a\22\09"
module asm "\09.weak\09__crc___ieee80211_get_tx_led_name\09\09\09\09"
module asm "\09.long\09__crc___ieee80211_get_tx_led_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ieee80211_get_tx_led_name:\09\09\09\09\09"
module asm "\09.asciz \09\22__ieee80211_get_tx_led_name\22\09\09\09\09\09"
module asm "__kstrtabns___ieee80211_get_tx_led_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ieee80211_get_rx_led_name\22, \22a\22\09"
module asm "\09.weak\09__crc___ieee80211_get_rx_led_name\09\09\09\09"
module asm "\09.long\09__crc___ieee80211_get_rx_led_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ieee80211_get_rx_led_name:\09\09\09\09\09"
module asm "\09.asciz \09\22__ieee80211_get_rx_led_name\22\09\09\09\09\09"
module asm "__kstrtabns___ieee80211_get_rx_led_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ieee80211_create_tpt_led_trigger\22, \22a\22\09"
module asm "\09.weak\09__crc___ieee80211_create_tpt_led_trigger\09\09\09\09"
module asm "\09.long\09__crc___ieee80211_create_tpt_led_trigger\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ieee80211_create_tpt_led_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22__ieee80211_create_tpt_led_trigger\22\09\09\09\09\09"
module asm "__kstrtabns___ieee80211_create_tpt_led_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpt_led_trigger = type { [32 x i8], ptr, i32, %struct.timer_list, ptr, i32, i32, i32, i32, i32, i8 }
%struct.ieee80211_tpt_blink = type { i32, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%srx\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%stx\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%sassoc\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%sradio\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab___ieee80211_get_radio_led_name = external dso_local constant [0 x i8], align 1
@__kstrtabns___ieee80211_get_radio_led_name = external dso_local constant [0 x i8], align 1
@__ksymtab___ieee80211_get_radio_led_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ieee80211_get_radio_led_name to i32), ptr @__kstrtab___ieee80211_get_radio_led_name, ptr @__kstrtabns___ieee80211_get_radio_led_name }, section "___ksymtab+__ieee80211_get_radio_led_name", align 4
@__kstrtab___ieee80211_get_assoc_led_name = external dso_local constant [0 x i8], align 1
@__kstrtabns___ieee80211_get_assoc_led_name = external dso_local constant [0 x i8], align 1
@__ksymtab___ieee80211_get_assoc_led_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ieee80211_get_assoc_led_name to i32), ptr @__kstrtab___ieee80211_get_assoc_led_name, ptr @__kstrtabns___ieee80211_get_assoc_led_name }, section "___ksymtab+__ieee80211_get_assoc_led_name", align 4
@__kstrtab___ieee80211_get_tx_led_name = external dso_local constant [0 x i8], align 1
@__kstrtabns___ieee80211_get_tx_led_name = external dso_local constant [0 x i8], align 1
@__ksymtab___ieee80211_get_tx_led_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ieee80211_get_tx_led_name to i32), ptr @__kstrtab___ieee80211_get_tx_led_name, ptr @__kstrtabns___ieee80211_get_tx_led_name }, section "___ksymtab+__ieee80211_get_tx_led_name", align 4
@__kstrtab___ieee80211_get_rx_led_name = external dso_local constant [0 x i8], align 1
@__kstrtabns___ieee80211_get_rx_led_name = external dso_local constant [0 x i8], align 1
@__ksymtab___ieee80211_get_rx_led_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ieee80211_get_rx_led_name to i32), ptr @__kstrtab___ieee80211_get_rx_led_name, ptr @__kstrtabns___ieee80211_get_rx_led_name }, section "___ksymtab+__ieee80211_get_rx_led_name", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/mac80211/led.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%stpt\00", [26 x i8] zeroinitializer }, align 32
@__ieee80211_create_tpt_led_trigger.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&tpt_trig->timer)\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab___ieee80211_create_tpt_led_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns___ieee80211_create_tpt_led_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab___ieee80211_create_tpt_led_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ieee80211_create_tpt_led_trigger to i32), ptr @__kstrtab___ieee80211_create_tpt_led_trigger, ptr @__kstrtabns___ieee80211_create_tpt_led_trigger }, section "___ksymtab+__ieee80211_create_tpt_led_trigger", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 34, i32 45 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 36, i32 45 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 38, i32 48 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 40, i32 48 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 297, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 305, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [22 x i8] c"../net/mac80211/led.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 314, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___ieee80211_create_tpt_led_trigger, ptr @__ksymtab___ieee80211_get_assoc_led_name, ptr @__ksymtab___ieee80211_get_radio_led_name, ptr @__ksymtab___ieee80211_get_rx_led_name, ptr @__ksymtab___ieee80211_get_tx_led_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_led_assoc(ptr noundef %local, i1 noundef zeroext %associated) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_led_active = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 97
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %assoc_led_active, i32 noundef 4) #7
  %0 = ptrtoint ptr %assoc_led_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %assoc_led_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %assoc_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 92
  %. = select i1 %associated, i32 255, i32 0
  tail call void @led_trigger_event(ptr noundef %assoc_led, i32 noundef %.) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_led_radio(ptr noundef %local, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_led_active = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 98
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %radio_led_active, i32 noundef 4) #7
  %0 = ptrtoint ptr %radio_led_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %radio_led_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %radio_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 93
  %. = select i1 %enabled, i32 255, i32 0
  tail call void @led_trigger_event(ptr noundef %radio_led, i32 noundef %.) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_alloc_led_names(ptr nocapture noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.wiphy_name.exit_crit_edge

entry.wiphy_name.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %entry.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.wiphy_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i) #7
  %rx_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 91
  %6 = ptrtoint ptr %rx_led to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %rx_led, align 8
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %init_name.i.i24 = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56, i32 3
  %9 = ptrtoint ptr %init_name.i.i24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i24, align 8
  %tobool.not.i.i25 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i25, label %if.end.i.i27, label %wiphy_name.exit.wiphy_name.exit29_crit_edge

wiphy_name.exit.wiphy_name.exit29_crit_edge:      ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit29

if.end.i.i27:                                     ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i26 = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  %11 = ptrtoint ptr %dev.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i26, align 4
  br label %wiphy_name.exit29

wiphy_name.exit29:                                ; preds = %if.end.i.i27, %wiphy_name.exit.wiphy_name.exit29_crit_edge
  %retval.0.i.i28 = phi ptr [ %12, %if.end.i.i27 ], [ %10, %wiphy_name.exit.wiphy_name.exit29_crit_edge ]
  %call5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i28) #7
  %tx_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 90
  %13 = ptrtoint ptr %tx_led to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %tx_led, align 8
  %14 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy, align 8
  %init_name.i.i30 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56, i32 3
  %16 = ptrtoint ptr %init_name.i.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i30, align 8
  %tobool.not.i.i31 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i31, label %if.end.i.i33, label %wiphy_name.exit29.wiphy_name.exit35_crit_edge

wiphy_name.exit29.wiphy_name.exit35_crit_edge:    ; preds = %wiphy_name.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit35

if.end.i.i33:                                     ; preds = %wiphy_name.exit29
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i32 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56
  %18 = ptrtoint ptr %dev.i32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i32, align 4
  br label %wiphy_name.exit35

wiphy_name.exit35:                                ; preds = %if.end.i.i33, %wiphy_name.exit29.wiphy_name.exit35_crit_edge
  %retval.0.i.i34 = phi ptr [ %19, %if.end.i.i33 ], [ %17, %wiphy_name.exit29.wiphy_name.exit35_crit_edge ]
  %call10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i34) #7
  %assoc_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 92
  %20 = ptrtoint ptr %assoc_led to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call10, ptr %assoc_led, align 8
  %21 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy, align 8
  %init_name.i.i36 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56, i32 3
  %23 = ptrtoint ptr %init_name.i.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i36, align 8
  %tobool.not.i.i37 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i37, label %if.end.i.i39, label %wiphy_name.exit35.wiphy_name.exit41_crit_edge

wiphy_name.exit35.wiphy_name.exit41_crit_edge:    ; preds = %wiphy_name.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit41

if.end.i.i39:                                     ; preds = %wiphy_name.exit35
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i38 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  %25 = ptrtoint ptr %dev.i38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i38, align 4
  br label %wiphy_name.exit41

wiphy_name.exit41:                                ; preds = %if.end.i.i39, %wiphy_name.exit35.wiphy_name.exit41_crit_edge
  %retval.0.i.i40 = phi ptr [ %26, %if.end.i.i39 ], [ %24, %wiphy_name.exit35.wiphy_name.exit41_crit_edge ]
  %call15 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i40) #7
  %radio_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 93
  %27 = ptrtoint ptr %radio_led to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call15, ptr %radio_led, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_free_led_names(ptr nocapture noundef readonly %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 91
  %0 = ptrtoint ptr %rx_led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_led, align 8
  tail call void @kfree(ptr noundef %1) #7
  %tx_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 90
  %2 = ptrtoint ptr %tx_led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_led, align 8
  tail call void @kfree(ptr noundef %3) #7
  %assoc_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 92
  %4 = ptrtoint ptr %assoc_led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %assoc_led, align 8
  tail call void @kfree(ptr noundef %5) #7
  %radio_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 93
  %6 = ptrtoint ptr %radio_led to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %radio_led, align 8
  tail call void @kfree(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_led_init(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_led_active = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_led_active, i32 noundef 4) #7
  %0 = ptrtoint ptr %rx_led_active to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %rx_led_active, align 4
  %rx_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 91
  %activate = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 91, i32 1
  %1 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ieee80211_rx_led_activate, ptr %activate, align 4
  %deactivate = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 91, i32 2
  %2 = ptrtoint ptr %deactivate to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ieee80211_rx_led_deactivate, ptr %deactivate, align 8
  %3 = ptrtoint ptr %rx_led to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_led, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @led_trigger_register(ptr noundef %rx_led) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %rx_led to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_led, align 8
  tail call void @kfree(ptr noundef %6) #7
  %7 = ptrtoint ptr %rx_led to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rx_led, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_led_active = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 95
  %call.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_led_active, i32 noundef 4) #7
  %8 = ptrtoint ptr %tx_led_active to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %tx_led_active, align 4
  %tx_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 90
  %activate9 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 90, i32 1
  %9 = ptrtoint ptr %activate9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ieee80211_tx_led_activate, ptr %activate9, align 4
  %deactivate11 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 90, i32 2
  %10 = ptrtoint ptr %deactivate11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ieee80211_tx_led_deactivate, ptr %deactivate11, align 8
  %11 = ptrtoint ptr %tx_led to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_led, align 8
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.end.if.end24_crit_edge, label %land.lhs.true15

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true15:                                  ; preds = %if.end
  %call17 = tail call i32 @led_trigger_register(ptr noundef %tx_led) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.end24_crit_edge, label %if.then19

land.lhs.true15.if.end24_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %tx_led to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_led, align 8
  tail call void @kfree(ptr noundef %14) #7
  %15 = ptrtoint ptr %tx_led to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tx_led, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %land.lhs.true15.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %assoc_led_active = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 97
  %call.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %assoc_led_active, i32 noundef 4) #7
  %16 = ptrtoint ptr %assoc_led_active to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %assoc_led_active, align 4
  %assoc_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 92
  %activate25 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 92, i32 1
  %17 = ptrtoint ptr %activate25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ieee80211_assoc_led_activate, ptr %activate25, align 4
  %deactivate27 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 92, i32 2
  %18 = ptrtoint ptr %deactivate27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ieee80211_assoc_led_deactivate, ptr %deactivate27, align 8
  %19 = ptrtoint ptr %assoc_led to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %assoc_led, align 8
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %if.end24.if.end40_crit_edge, label %land.lhs.true31

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

land.lhs.true31:                                  ; preds = %if.end24
  %call33 = tail call i32 @led_trigger_register(ptr noundef %assoc_led) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true31.if.end40_crit_edge, label %if.then35

land.lhs.true31.if.end40_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then35:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %assoc_led to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %assoc_led, align 8
  tail call void @kfree(ptr noundef %22) #7
  %23 = ptrtoint ptr %assoc_led to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %assoc_led, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %land.lhs.true31.if.end40_crit_edge, %if.end24.if.end40_crit_edge
  %radio_led_active = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 98
  %call.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %radio_led_active, i32 noundef 4) #7
  %24 = ptrtoint ptr %radio_led_active to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %radio_led_active, align 4
  %radio_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 93
  %activate41 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 93, i32 1
  %25 = ptrtoint ptr %activate41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ieee80211_radio_led_activate, ptr %activate41, align 4
  %deactivate43 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 93, i32 2
  %26 = ptrtoint ptr %deactivate43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ieee80211_radio_led_deactivate, ptr %deactivate43, align 8
  %27 = ptrtoint ptr %radio_led to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %radio_led, align 8
  %tobool46.not = icmp eq ptr %28, null
  br i1 %tobool46.not, label %if.end40.if.end56_crit_edge, label %land.lhs.true47

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.lhs.true47:                                  ; preds = %if.end40
  %call49 = tail call i32 @led_trigger_register(ptr noundef %radio_led) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true47.if.end56_crit_edge, label %if.then51

land.lhs.true47.if.end56_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then51:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %radio_led to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %radio_led, align 8
  tail call void @kfree(ptr noundef %30) #7
  %31 = ptrtoint ptr %radio_led to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %radio_led, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %land.lhs.true47.if.end56_crit_edge, %if.end40.if.end56_crit_edge
  %tpt_led_active = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 99
  %call.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tpt_led_active, i32 noundef 4) #7
  %32 = ptrtoint ptr %tpt_led_active to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %tpt_led_active, align 4
  %tpt_led_trigger = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 100
  %33 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tpt_led_trigger, align 4
  %tobool57.not = icmp eq ptr %34, null
  br i1 %tobool57.not, label %if.end56.if.end69_crit_edge, label %if.then58

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then58:                                        ; preds = %if.end56
  %tpt_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 94
  %activate59 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 94, i32 1
  %35 = ptrtoint ptr %activate59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ieee80211_tpt_led_activate, ptr %activate59, align 4
  %deactivate61 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 94, i32 2
  %36 = ptrtoint ptr %deactivate61 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ieee80211_tpt_led_deactivate, ptr %deactivate61, align 8
  %call63 = tail call i32 @led_trigger_register(ptr noundef %tpt_led) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then58.if.end69_crit_edge, label %if.then65

if.then58.if.end69_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then65:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tpt_led_trigger, align 4
  tail call void @kfree(ptr noundef %38) #7
  %39 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %tpt_led_trigger, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.then58.if.end69_crit_edge, %if.end56.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_rx_led_activate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %rx_led_active = getelementptr i8, ptr %1, i32 324
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %rx_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_led_active, ptr %rx_led_active, i32 1, ptr elementtype(i32) %rx_led_active) #7, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_rx_led_deactivate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %rx_led_active = getelementptr i8, ptr %1, i32 324
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %rx_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_led_active, ptr %rx_led_active, i32 1, ptr elementtype(i32) %rx_led_active) #7, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_tx_led_activate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %tx_led_active = getelementptr i8, ptr %1, i32 400
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %tx_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_led_active, ptr %tx_led_active, i32 1, ptr elementtype(i32) %tx_led_active) #7, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_tx_led_deactivate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %tx_led_active = getelementptr i8, ptr %1, i32 400
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %tx_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_led_active, ptr %tx_led_active, i32 1, ptr elementtype(i32) %tx_led_active) #7, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_assoc_led_activate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %assoc_led_active = getelementptr i8, ptr %1, i32 248
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %assoc_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %assoc_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %assoc_led_active, ptr %assoc_led_active, i32 1, ptr elementtype(i32) %assoc_led_active) #7, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_assoc_led_deactivate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %assoc_led_active = getelementptr i8, ptr %1, i32 248
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %assoc_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %assoc_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %assoc_led_active, ptr %assoc_led_active, i32 1, ptr elementtype(i32) %assoc_led_active) #7, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_radio_led_activate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %radio_led_active = getelementptr i8, ptr %1, i32 172
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %radio_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %radio_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %radio_led_active, ptr %radio_led_active, i32 1, ptr elementtype(i32) %radio_led_active) #7, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_radio_led_deactivate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %radio_led_active = getelementptr i8, ptr %1, i32 172
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %radio_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %radio_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %radio_led_active, ptr %radio_led_active, i32 1, ptr elementtype(i32) %radio_led_active) #7, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_tpt_led_activate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %tpt_led_active = getelementptr i8, ptr %1, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tpt_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %tpt_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpt_led_active, ptr %tpt_led_active, i32 1, ptr elementtype(i32) %tpt_led_active) #7, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_tpt_led_deactivate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %tpt_led_active = getelementptr i8, ptr %1, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tpt_led_active, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %tpt_led_active, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpt_led_active, ptr %tpt_led_active, i32 1, ptr elementtype(i32) %tpt_led_active) #7, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_led_exit(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 93
  %0 = ptrtoint ptr %radio_led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radio_led, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_trigger_unregister(ptr noundef %radio_led) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %assoc_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 92
  %2 = ptrtoint ptr %assoc_led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %assoc_led, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_trigger_unregister(ptr noundef %assoc_led) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %tx_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 90
  %4 = ptrtoint ptr %tx_led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_led, align 8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_trigger_unregister(ptr noundef %tx_led) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %rx_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 91
  %6 = ptrtoint ptr %rx_led to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_led, align 8
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_trigger_unregister(ptr noundef %rx_led) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %tpt_led_trigger = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 100
  %8 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tpt_led_trigger, align 4
  %tobool17.not = icmp eq ptr %9, null
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %tpt_led = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 94
  tail call void @led_trigger_unregister(ptr noundef %tpt_led) #7
  %10 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tpt_led_trigger, align 4
  tail call void @kfree(ptr noundef %11) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @__ieee80211_get_radio_led_name(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_led = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 93
  %0 = ptrtoint ptr %radio_led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radio_led, align 8
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @__ieee80211_get_assoc_led_name(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_led = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 92
  %0 = ptrtoint ptr %assoc_led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %assoc_led, align 8
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @__ieee80211_get_tx_led_name(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_led = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 90
  %0 = ptrtoint ptr %tx_led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_led, align 8
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @__ieee80211_get_rx_led_name(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_led = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 91
  %0 = ptrtoint ptr %rx_led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_led, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ieee80211_create_tpt_led_trigger(ptr noundef %hw, i32 noundef %flags, ptr noundef %blink_table, i32 noundef %blink_table_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tpt_led_trigger = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpt_led_trigger, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !36

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 297, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 116) #10
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %4, i32 0, i32 56, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end26.wiphy_name.exit_crit_edge

if.end26.wiphy_name.exit_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %4, i32 0, i32 56
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end26.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end26.wiphy_name.exit_crit_edge ]
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i)
  %tpt_led = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 94
  %9 = ptrtoint ptr %tpt_led to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %tpt_led, align 8
  %blink_table33 = getelementptr inbounds %struct.tpt_led_trigger, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %blink_table33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %blink_table, ptr %blink_table33, align 8
  %blink_table_len34 = getelementptr inbounds %struct.tpt_led_trigger, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %blink_table_len34 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %blink_table_len, ptr %blink_table_len34, align 4
  %want = getelementptr inbounds %struct.tpt_led_trigger, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %want to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %want, align 4
  %local35 = getelementptr inbounds %struct.tpt_led_trigger, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %local35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hw, ptr %local35, align 8
  %timer = getelementptr inbounds %struct.tpt_led_trigger, ptr %call7.i.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @tpt_trig_timer, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__ieee80211_create_tpt_led_trigger.__key) #7
  %14 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %tpt_led_trigger, align 4
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i.i, %wiphy_name.exit ], [ null, %if.end22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpt_trig_timer(ptr noundef %t) #0 align 64 {
entry:
  %on = alloca i32, align 4
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %on) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #7
  %running = getelementptr i8, ptr %t, i32 72
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %running, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %call = tail call i32 @round_jiffies(i32 noundef %add) #7
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call) #7
  %tx_bytes.i = getelementptr i8, ptr %t, i32 56
  %5 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_bytes.i, align 4
  %rx_bytes.i = getelementptr i8, ptr %t, i32 60
  %7 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_bytes.i, align 4
  %add.i = add i32 %8, %6
  %prev_traffic.i = getelementptr i8, ptr %t, i32 52
  %9 = ptrtoint ptr %prev_traffic.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prev_traffic.i, align 4
  store i32 %add.i, ptr %prev_traffic.i, align 4
  %sub.i = sub i32 127, %10
  %sub3.i = add i32 %sub.i, %add.i
  %div1.i = lshr i32 %sub3.i, 7
  %11 = ptrtoint ptr %on to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %on, align 4
  %12 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %off, align 4
  %blink_table_len = getelementptr i8, ptr %t, i32 -4
  %13 = ptrtoint ptr %blink_table_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blink_table_len, align 4
  %blink_table = getelementptr i8, ptr %t, i32 -8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %i.0.in = phi i32 [ %14, %if.end ], [ %i.0, %for.body.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0)
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %15 = ptrtoint ptr %blink_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %blink_table, align 4
  %arrayidx = getelementptr %struct.ieee80211_tpt_blink, ptr %16, i32 %i.0
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4 = icmp slt i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %18)
  %cmp8 = icmp ugt i32 %div1.i, %18
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then9, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %blink_time = getelementptr %struct.ieee80211_tpt_blink, ptr %16, i32 %i.0, i32 1
  %19 = ptrtoint ptr %blink_time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blink_time, align 4
  %div = sdiv i32 %20, 2
  %21 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %off, align 4
  %22 = load i32, ptr %blink_time, align 4
  %sub15 = sub i32 %22, %div
  %23 = ptrtoint ptr %on to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub15, ptr %on, align 4
  br label %for.end

for.end:                                          ; preds = %if.then9, %for.cond.for.end_crit_edge
  %tpt_led = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 94
  call void @led_trigger_blink(ptr noundef %tpt_led, ptr noundef nonnull %on, ptr noundef nonnull %off) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %on) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mod_tpt_led_trig(ptr noundef %local, i32 noundef %types_on, i32 noundef %types_off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tpt_led_trigger = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 100
  %0 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpt_led_trigger, align 4
  %and = and i32 %types_off, %types_on
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !36

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 356, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool20.not = icmp eq ptr %1, null
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %neg = xor i32 %types_off, -1
  %active = getelementptr inbounds %struct.tpt_led_trigger, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active, align 4
  %and23 = and i32 %3, %neg
  %or = or i32 %and23, %types_on
  store i32 %or, ptr %active, align 4
  %and26 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end22.if.then32_crit_edge, label %lor.lhs.false

if.end22.if.then32_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end22
  %want = getelementptr inbounds %struct.tpt_led_trigger, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %want to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %want, align 4
  %and30 = and i32 %5, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %lor.lhs.false.if.then32_crit_edge, label %if.else

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end22.if.then32_crit_edge
  %6 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tpt_led_trigger, align 4
  %running.i = getelementptr inbounds %struct.tpt_led_trigger, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %running.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then32.cleanup_crit_edge, label %if.end.i

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %running.i, align 4
  %timer.i = getelementptr inbounds %struct.tpt_led_trigger, ptr %7, i32 0, i32 3
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #7
  %tpt_led.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 94
  tail call void @led_trigger_event(ptr noundef %tpt_led.i, i32 noundef 0) #7
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %tpt_led_trigger to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tpt_led_trigger, align 4
  %running.i46 = getelementptr inbounds %struct.tpt_led_trigger, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %running.i46 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %running.i46, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i47 = icmp eq i8 %14, 0
  br i1 %tobool.not.i47, label %if.end.i49, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i49:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %tx_bytes.i.i = getelementptr inbounds %struct.tpt_led_trigger, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_bytes.i.i, align 4
  %rx_bytes.i.i = getelementptr inbounds %struct.tpt_led_trigger, ptr %12, i32 0, i32 7
  %17 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_bytes.i.i, align 4
  %add.i.i = add i32 %18, %16
  %prev_traffic.i.i = getelementptr inbounds %struct.tpt_led_trigger, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %prev_traffic.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i.i, ptr %prev_traffic.i.i, align 4
  %20 = ptrtoint ptr %running.i46 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %running.i46, align 4
  %timer.i48 = getelementptr inbounds %struct.tpt_led_trigger, ptr %12, i32 0, i32 3
  tail call void @tpt_trig_timer(ptr noundef %timer.i48) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %21, 100
  %call3.i = tail call i32 @round_jiffies(i32 noundef %add.i) #7
  %call4.i = tail call i32 @mod_timer(ptr noundef %timer.i48, i32 noundef %call3.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i49, %if.else.cleanup_crit_edge, %if.end.i, %if.then32.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_blink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/led.c", i32 34, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/led.c", i32 36, i32 45}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mac80211/led.c", i32 38, i32 48}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/led.c", i32 40, i32 48}
!8 = !{ptr @__ksymtab___ieee80211_get_radio_led_name, !9, !"__ksymtab___ieee80211_get_radio_led_name", i1 false, i1 false}
!9 = !{!"../net/mac80211/led.c", i32 220, i32 1}
!10 = !{ptr @__ksymtab___ieee80211_get_assoc_led_name, !11, !"__ksymtab___ieee80211_get_assoc_led_name", i1 false, i1 false}
!11 = !{!"../net/mac80211/led.c", i32 228, i32 1}
!12 = !{ptr @__ksymtab___ieee80211_get_tx_led_name, !13, !"__ksymtab___ieee80211_get_tx_led_name", i1 false, i1 false}
!13 = !{!"../net/mac80211/led.c", i32 236, i32 1}
!14 = !{ptr @__ksymtab___ieee80211_get_rx_led_name, !15, !"__ksymtab___ieee80211_get_rx_led_name", i1 false, i1 false}
!15 = !{!"../net/mac80211/led.c", i32 244, i32 1}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mac80211/led.c", i32 297, i32 6}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/mac80211/led.c", i32 305, i32 4}
!20 = !{ptr @__ieee80211_create_tpt_led_trigger.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/mac80211/led.c", i32 314, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__ksymtab___ieee80211_create_tpt_led_trigger, !24, !"__ksymtab___ieee80211_create_tpt_led_trigger", i1 false, i1 false}
!24 = !{!"../net/mac80211/led.c", i32 320, i32 1}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2148272596, i64 2148272622, i64 2148272651, i64 2148272685, i64 2148272716, i64 2148272739}
!35 = !{i64 2148275061, i64 2148275087, i64 2148275116, i64 2148275150, i64 2148275181, i64 2148275204}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i8 0, i8 2}
