; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2x00debug.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rt2x00debug_dump_frame\22, \22a\22\09"
module asm "\09.weak\09__crc_rt2x00debug_dump_frame\09\09\09\09"
module asm "\09.long\09__crc_rt2x00debug_dump_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00debug_dump_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00debug_dump_frame\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00debug_dump_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }
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
%struct.rt2x00debug_intf = type { ptr, ptr, ptr, i32, %struct.sk_buff_head, %struct.wait_queue_head, [4 x %struct.rt2x00debug_crypto], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rt2x00debug_crypto = type { i32, i32, i32, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.queue_entry = type { i32, i32, ptr, ptr, i32, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.130 = type { i64, i64, i8 }
%struct.rt2x00dump_hdr = type { i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i32, i32 }
%struct.data_queue = type { ptr, ptr, i32, i32, %struct.mutex, %struct.spinlock, %struct.spinlock, i32, i16, i16, i16, [3 x i16], i16, i32, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00debug = type { ptr, %struct.regcsr, %struct.regeeprom, %struct.regbbp, %struct.regrf, %struct.regrfcsr }
%struct.regcsr = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regeeprom = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regbbp = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regrf = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regrfcsr = type { ptr, ptr, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.142, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.143, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.144, ptr, %struct.address_space, %struct.list_head, %union.anon.145, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.142 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.143 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.144 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.145 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rt2x00debug_dump_frame.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rt2x00lib\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt2x00debug_dump_frame\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00debug.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Debug - txrx dump queue length exceeded\0A\00", [51 x i8] zeroinitializer }, align 32
@rt2x00debug_dump_frame.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Debug - Failed to copy skb for dump\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_rt2x00debug_dump_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00debug_dump_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00debug_dump_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00debug_dump_frame to i32), ptr @__kstrtab_rt2x00debug_dump_frame, ptr @__kstrtabns_rt2x00debug_dump_frame }, section "___ksymtab_gpl+rt2x00debug_dump_frame", align 4
@rt2x00debug_register._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt2x00debug_register = private unnamed_addr constant [21 x i8] c"rt2x00debug_register\00", align 1
@rt2x00debug_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.rt2x00debug_register, ptr @.str.2, i32 644, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Error - Failed to allocate debug handler\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt2x00debug_register._entry_ptr = internal global ptr @rt2x00debug_register._entry, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"driver\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chipset\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_flags\00", [22 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_dev_flags = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rt2x00debug_read_dev_flags, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_file_open, ptr null, ptr @rt2x00debug_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cap_flags\00", [22 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_cap_flags = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rt2x00debug_read_cap_flags, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_file_open, ptr null, ptr @rt2x00debug_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"restart_hw\00", [21 x i8] zeroinitializer }, align 32
@rt2x00debug_restart_hw = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @rt2x00debug_write_restart_hw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"register\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"csr_offset\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"csr_value\00", [22 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_csr = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rt2x00debug_read_csr, ptr @rt2x00debug_write_csr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_file_open, ptr null, ptr @rt2x00debug_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eeprom_offset\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eeprom_value\00", [19 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_eeprom = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rt2x00debug_read_eeprom, ptr @rt2x00debug_write_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_file_open, ptr null, ptr @rt2x00debug_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bbp_offset\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bbp_value\00", [22 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_bbp = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rt2x00debug_read_bbp, ptr @rt2x00debug_write_bbp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_file_open, ptr null, ptr @rt2x00debug_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rf_offset\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rf_value\00", [23 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_rf = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rt2x00debug_read_rf, ptr @rt2x00debug_write_rf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_file_open, ptr null, ptr @rt2x00debug_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rfcsr_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rfcsr_value\00", [20 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_rfcsr = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rt2x00debug_read_rfcsr, ptr @rt2x00debug_write_rfcsr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_file_open, ptr null, ptr @rt2x00debug_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"queue\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dump\00", [27 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_queue_dump = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rt2x00debug_read_queue_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00debug_poll_queue_dump, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_open_queue_dump, ptr null, ptr @rt2x00debug_release_queue_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rt2x00debug_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&intf->frame_dump_waitqueue\00", [36 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_queue_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rt2x00debug_read_queue_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_file_open, ptr null, ptr @rt2x00debug_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crypto\00", [25 x i8] zeroinitializer }, align 32
@rt2x00debug_fop_crypto_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rt2x00debug_read_crypto_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rt2x00debug_file_open, ptr null, ptr @rt2x00debug_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"driver:\09%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"version:\09%s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt chip:\09%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rf chip:\09%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"revision:\09%04x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"register\09base\09words\09wordsize\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csr\09%d\09%d\09%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eeprom\09%d\09%d\09%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bbp\09%d\09%d\09%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rf\09%d\09%d\09%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcsr\09%d\09%d\09%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%.8x\0A\00", [24 x i8] zeroinitializer }, align 32
@rt2x00debug_write_restart_hw.last_reset = internal global { i32, [28 x i8] } { i32 -30000, [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%.4x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%.2x\0A\00", [24 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"qid\09flags\09\09count\09limit\09length\09index\09dma done\09done\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d\090x%.8x\09%d\09%d\09%d\09%d\09%d\09\09%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WEP64\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WEP128\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AES\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cipher\09success\09icv err\09mic err\09key err\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s\09%lu\09%lu\09%lu\09%lu\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 147, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 158, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 644, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 656, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 657, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 658, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"rt2x00debug_fop_dev_flags\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 518, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 660, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"rt2x00debug_fop_cap_flags\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 543, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 662, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant [23 x i8] c"rt2x00debug_restart_hw\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 572, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 665, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 680, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"rt2x00debug_fop_csr\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 495, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 681, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [23 x i8] c"rt2x00debug_fop_eeprom\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 682, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"rt2x00debug_fop_bbp\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 683, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"rt2x00debug_fop_rf\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 498, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 684, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [22 x i8] c"rt2x00debug_fop_rfcsr\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 499, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 688, i32 36 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 690, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant [27 x i8] c"rt2x00debug_fop_queue_dump\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 288, i32 37 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 694, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [28 x i8] c"rt2x00debug_fop_queue_stats\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 347, i32 37 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 701, i32 23 }
@___asan_gen_.183 = private unnamed_addr constant [29 x i8] c"rt2x00debug_fop_crypto_stats\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 400, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 590, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 591, i32 24 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 591, i32 42 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 609, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 610, i32 24 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 611, i32 24 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 613, i32 24 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 623, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 624, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 625, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 626, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 627, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 513, i32 23 }
@___asan_gen_.225 = private unnamed_addr constant [11 x i8] c"last_reset\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 558, i32 23 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 230, i32 6 }
@___asan_gen_.232 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 214, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 156, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 496, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 497, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1984, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 318, i32 20 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 323, i32 25 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 362, i32 39 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 362, i32 48 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 362, i32 58 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 362, i32 66 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 376, i32 24 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.271 = private constant [52 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 379, i32 25 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__ksymtab_rt2x00debug_dump_frame, ptr @rt2x00debug_register._entry, ptr @rt2x00debug_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rt2x00debug_register._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rt2x00debug_fop_dev_flags, ptr @.str.12, ptr @rt2x00debug_fop_cap_flags, ptr @.str.13, ptr @rt2x00debug_restart_hw, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rt2x00debug_fop_csr, ptr @.str.17, ptr @.str.18, ptr @rt2x00debug_fop_eeprom, ptr @.str.19, ptr @.str.20, ptr @rt2x00debug_fop_bbp, ptr @.str.21, ptr @.str.22, ptr @rt2x00debug_fop_rf, ptr @.str.23, ptr @.str.24, ptr @rt2x00debug_fop_rfcsr, ptr @.str.25, ptr @.str.26, ptr @rt2x00debug_fop_queue_dump, ptr @rt2x00debug_register.__key, ptr @.str.27, ptr @rt2x00debug_fop_queue_stats, ptr @.str.28, ptr @rt2x00debug_fop_crypto_stats, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rt2x00debug_write_restart_hw.last_reset, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @skb_queue_head_init.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_register._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_dev_flags to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_cap_flags to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_restart_hw to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_csr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_eeprom to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_bbp to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_rf to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_rfcsr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_queue_dump to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_queue_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_fop_crypto_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00debug_write_restart_hw.last_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rt2x00debug_update_crypto(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef readonly %rxdesc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher1 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 10
  %0 = ptrtoint ptr %cipher1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cipher1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp eq i8 %1, 7
  %narrow = select i1 %cmp, i8 3, i8 %1
  %2 = add i8 %narrow, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %2)
  %3 = icmp ult i8 %2, -3
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %spec.store.select = zext i8 %narrow to i32
  %cipher_status = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 11
  %4 = ptrtoint ptr %cipher_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cipher_status, align 1
  %debugfs_intf = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 8
  %6 = ptrtoint ptr %debugfs_intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_intf, align 4
  %dec = add nsw i32 %spec.store.select, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp10 = icmp eq i8 %5, 0
  %conv11 = zext i1 %cmp10 to i32
  %arrayidx = getelementptr %struct.rt2x00debug_intf, ptr %7, i32 0, i32 6, i32 %dec
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %conv11
  store i32 %add, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp12 = icmp eq i8 %5, 1
  %conv13 = zext i1 %cmp12 to i32
  %icv_error = getelementptr %struct.rt2x00debug_intf, ptr %7, i32 0, i32 6, i32 %dec, i32 1
  %10 = ptrtoint ptr %icv_error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %icv_error, align 4
  %add16 = add i32 %11, %conv13
  store i32 %add16, ptr %icv_error, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp17 = icmp eq i8 %5, 2
  %conv18 = zext i1 %cmp17 to i32
  %mic_error = getelementptr %struct.rt2x00debug_intf, ptr %7, i32 0, i32 6, i32 %dec, i32 2
  %12 = ptrtoint ptr %mic_error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mic_error, align 4
  %add21 = add i32 %13, %conv18
  store i32 %add21, ptr %mic_error, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp22 = icmp eq i8 %5, 3
  %conv23 = zext i1 %cmp22 to i32
  %key_error = getelementptr %struct.rt2x00debug_intf, ptr %7, i32 0, i32 6, i32 %dec, i32 3
  %14 = ptrtoint ptr %key_error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_error, align 4
  %add26 = add i32 %15, %conv23
  store i32 %add26, ptr %key_error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00debug_dump_frame(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %type, ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  %timestamp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_intf = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 8
  %0 = ptrtoint ptr %debugfs_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_intf, align 4
  %skb2 = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %2 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %timestamp) #11
  %5 = call ptr @memset(ptr %timestamp, i32 255, i32 16)
  %frame_dump_flags = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %frame_dump_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %frame_dump_flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !148

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @ktime_get_ts64(ptr noundef nonnull %timestamp) #11
  %frame_dump_skbqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 4
  %qlen.i = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %10)
  %cmp = icmp ugt i32 %10, 20
  br i1 %cmp, label %do.body, label %if.end19

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2x00debug_dump_frame.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2x00debug_dump_frame, %if.then17)) #11
          to label %cleanup [label %if.then17], !srcloc !149

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2x00debug_dump_frame.__UNIQUE_ID_ddebug368, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %4, align 4
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 9
  %20 = ptrtoint ptr %desc_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %desc_len, align 1
  %conv22 = zext i8 %21 to i32
  %sub = sub i32 %16, %conv22
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %data_len.0 = phi i32 [ %sub, %if.then21 ], [ %16, %if.end19.if.end23_crit_edge ]
  %desc_len24 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 9
  %22 = ptrtoint ptr %desc_len24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %desc_len24, align 1
  %conv25 = zext i8 %23 to i32
  %add = add i32 %data_len.0, 36
  %add26 = add i32 %add, %conv25
  %call.i = call ptr @__alloc_skb(i32 noundef %add26, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool28.not = icmp eq ptr %call.i, null
  br i1 %tobool28.not, label %do.body30, label %if.end49

do.body30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2x00debug_dump_frame.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2x00debug_dump_frame, %if.then42)) #11
          to label %cleanup [label %if.then42], !srcloc !149

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  %hw43 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %24 = ptrtoint ptr %hw43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw43, align 4
  %wiphy44 = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy44, align 8
  %dev45 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2x00debug_dump_frame.__UNIQUE_ID_ddebug369, ptr noundef %dev45, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end49:                                         ; preds = %if.end23
  %call50 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 36) #11
  %28 = ptrtoint ptr %call50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 50331648, ptr %call50, align 4
  %header_length = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 1
  %29 = ptrtoint ptr %header_length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 603979776, ptr %header_length, align 4
  %30 = ptrtoint ptr %desc_len24 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %desc_len24, align 1
  %conv52 = zext i8 %31 to i32
  %32 = shl nuw i32 %conv52, 24
  %desc_length = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 2
  %33 = ptrtoint ptr %desc_length to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %desc_length, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %data_len.0)
  %data_length = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 3
  %35 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %data_length, align 4
  %chip = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %chip, align 8
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %chip_rt = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 4
  %39 = ptrtoint ptr %chip_rt to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %chip_rt, align 4
  %rf = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %40 = ptrtoint ptr %rf to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rf, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  %chip_rf = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 5
  %43 = ptrtoint ptr %chip_rf to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %chip_rf, align 2
  %rev = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 2
  %44 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rev, align 4
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  %chip_rev = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 6
  %47 = ptrtoint ptr %chip_rev to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %chip_rev, align 4
  %conv55 = trunc i32 %type to i16
  %48 = call i16 @llvm.bswap.i16(i16 %conv55)
  %type56 = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 7
  %49 = ptrtoint ptr %type56 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %type56, align 2
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %50 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qid, align 4
  %conv57 = trunc i32 %53 to i8
  %queue_index = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 8
  %54 = ptrtoint ptr %queue_index to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv57, ptr %queue_index, align 4
  %entry_idx = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 4
  %55 = ptrtoint ptr %entry_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %entry_idx, align 4
  %conv58 = trunc i32 %56 to i8
  %entry_index = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 9
  %57 = ptrtoint ptr %entry_index to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv58, ptr %entry_index, align 1
  %58 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %timestamp, align 8
  %conv59 = trunc i64 %59 to i32
  %60 = call i32 @llvm.bswap.i32(i32 %conv59)
  %timestamp_sec = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 10
  %61 = ptrtoint ptr %timestamp_sec to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %timestamp_sec, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %timestamp, i32 0, i32 1
  %62 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %63, 1000
  %64 = call i32 @llvm.bswap.i32(i32 %div)
  %timestamp_usec = getelementptr inbounds %struct.rt2x00dump_hdr, ptr %call50, i32 0, i32 11
  %65 = ptrtoint ptr %timestamp_usec to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %timestamp_usec, align 4
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %4, align 4
  %68 = and i8 %67, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool63.not = icmp eq i8 %68, 0
  br i1 %tobool63.not, label %if.then64, label %if.end49.if.end68_crit_edge

if.end49.if.end68_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then64:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %desc = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 12
  %69 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %desc, align 4
  %71 = ptrtoint ptr %desc_len24 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %desc_len24, align 1
  %conv66 = zext i8 %72 to i32
  %call.i127 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv66) #11
  %73 = call ptr @memcpy(ptr %call.i127, ptr %70, i32 %conv66)
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end49.if.end68_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data, align 4
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  %call.i128 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %77) #11
  %78 = call ptr @memcpy(ptr %call.i128, ptr %75, i32 %77)
  call void @skb_queue_tail(ptr noundef %frame_dump_skbqueue, ptr noundef nonnull %call.i) #11
  %frame_dump_waitqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 5
  call void @__wake_up(ptr noundef %frame_dump_waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %79 = ptrtoint ptr %frame_dump_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %frame_dump_flags, align 4
  %81 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool74.not = icmp eq i32 %81, 0
  br i1 %tobool74.not, label %if.then75, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then75:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_queue_purge(ptr noundef %frame_dump_skbqueue) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end68.cleanup_crit_edge, %if.then42, %do.body30, %if.then17, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %timestamp) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00debug_register(ptr noundef %rt2x00dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %debugfs = getelementptr inbounds %struct.rt2x00_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 224) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00debug_register._rs, ptr noundef nonnull @__func__.rt2x00debug_register) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rt2x00debug_register) #15
  br label %cleanup

if.end7:                                          ; preds = %entry
  %debug8 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %debug8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %debug8, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rt2x00dev, ptr %call7.i.i, align 8
  %debugfs_intf = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 8
  %11 = ptrtoint ptr %debugfs_intf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %debugfs_intf, align 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %hw12 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %16 = ptrtoint ptr %hw12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw12, align 4
  %wiphy13 = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wiphy13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy13, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 58
  %20 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfsdir, align 4
  %call14 = tail call ptr @debugfs_create_dir(ptr noundef %15, ptr noundef %21) #11
  %driver_folder = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %driver_folder to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call14, ptr %driver_folder, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 192) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.rt2x00debug_create_file_driver.exit_crit_edge, label %if.end.i

if.end7.rt2x00debug_create_file_driver.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rt2x00debug_create_file_driver.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %driver_blob = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %driver_blob to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %driver_blob, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.29, ptr noundef %30) #11
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 %call3.i
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #11
  %31 = ptrtoint ptr %driver_blob to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_blob, align 4
  %call7.i = tail call i32 @strlen(ptr noundef %32) #16
  %size.i = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call7.i, ptr %size.i, align 8
  %34 = ptrtoint ptr %driver_folder to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_folder, align 8
  %call8.i = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %35, ptr noundef %driver_blob) #11
  br label %rt2x00debug_create_file_driver.exit

rt2x00debug_create_file_driver.exit:              ; preds = %if.end.i, %if.end7.rt2x00debug_create_file_driver.exit_crit_edge
  %chipset_blob = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %debug8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %debug8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i114 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 576) #14
  %tobool.not.i115 = icmp eq ptr %call7.i.i.i114, null
  br i1 %tobool.not.i115, label %rt2x00debug_create_file_driver.exit.rt2x00debug_create_file_chipset.exit_crit_edge, label %if.end.i119

rt2x00debug_create_file_driver.exit.rt2x00debug_create_file_chipset.exit_crit_edge: ; preds = %rt2x00debug_create_file_driver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rt2x00debug_create_file_chipset.exit

if.end.i119:                                      ; preds = %rt2x00debug_create_file_driver.exit
  %39 = ptrtoint ptr %chipset_blob to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i114, ptr %chipset_blob, align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  %chip.i = getelementptr inbounds %struct.rt2x00_dev, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %chip.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %chip.i, align 8
  %conv.i = zext i16 %43 to i32
  %call3.i116 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i.i.i114, ptr noundef nonnull @.str.32, i32 noundef %conv.i) #11
  %add.ptr.i117 = getelementptr i8, ptr %call7.i.i.i114, i32 %call3.i116
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %rf.i = getelementptr inbounds %struct.rt2x00_dev, ptr %45, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %rf.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rf.i, align 2
  %conv6.i = zext i16 %47 to i32
  %call7.i118 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i117, ptr noundef nonnull @.str.33, i32 noundef %conv6.i) #11
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i117, i32 %call7.i118
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i, align 8
  %rev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %49, i32 0, i32 17, i32 2
  %50 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rev.i, align 4
  %conv11.i = zext i16 %51 to i32
  %call12.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr8.i, ptr noundef nonnull @.str.34, i32 noundef %conv11.i) #11
  %add.ptr13.i = getelementptr i8, ptr %add.ptr8.i, i32 %call12.i
  %52 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 2560, ptr %add.ptr13.i, align 1
  %add.ptr15.i = getelementptr i8, ptr %add.ptr13.i, i32 1
  %53 = call ptr @memcpy(ptr %add.ptr15.i, ptr @.str.36, i32 30)
  %add.ptr17.i = getelementptr i8, ptr %add.ptr15.i, i32 29
  %csr.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 1
  %54 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %csr.i, align 4
  %tobool18.not.i = icmp eq ptr %55, null
  br i1 %tobool18.not.i, label %if.end.i119.if.end25.i_crit_edge, label %if.then19.i

if.end.i119.if.end25.i_crit_edge:                 ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then19.i:                                      ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #13
  %word_base.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %word_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %word_base.i, align 4
  %word_count.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %word_count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %word_count.i, align 4
  %word_size.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 1, i32 4
  %60 = ptrtoint ptr %word_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %word_size.i, align 4
  %call23.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.i, ptr noundef nonnull @.str.37, i32 noundef %57, i32 noundef %59, i32 noundef %61) #11
  %add.ptr24.i = getelementptr i8, ptr %add.ptr17.i, i32 %call23.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then19.i, %if.end.i119.if.end25.i_crit_edge
  %data.0.i = phi ptr [ %add.ptr24.i, %if.then19.i ], [ %add.ptr17.i, %if.end.i119.if.end25.i_crit_edge ]
  %eeprom.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 2
  %62 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %eeprom.i, align 4
  %tobool27.not.i = icmp eq ptr %63, null
  br i1 %tobool27.not.i, label %if.end25.i.if.end37.i_crit_edge, label %if.then28.i

if.end25.i.if.end37.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %word_base30.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %word_base30.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %word_base30.i, align 4
  %word_count32.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 2, i32 5
  %66 = ptrtoint ptr %word_count32.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %word_count32.i, align 4
  %word_size34.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 2, i32 4
  %68 = ptrtoint ptr %word_size34.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %word_size34.i, align 4
  %call35.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data.0.i, ptr noundef nonnull @.str.38, i32 noundef %65, i32 noundef %67, i32 noundef %69) #11
  %add.ptr36.i = getelementptr i8, ptr %data.0.i, i32 %call35.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end37.i_crit_edge
  %data.1.i = phi ptr [ %add.ptr36.i, %if.then28.i ], [ %data.0.i, %if.end25.i.if.end37.i_crit_edge ]
  %bbp.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 3
  %70 = ptrtoint ptr %bbp.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bbp.i, align 4
  %tobool39.not.i = icmp eq ptr %71, null
  br i1 %tobool39.not.i, label %if.end37.i.if.end49.i_crit_edge, label %if.then40.i

if.end37.i.if.end49.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %word_base42.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 3, i32 3
  %72 = ptrtoint ptr %word_base42.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %word_base42.i, align 4
  %word_count44.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 3, i32 5
  %74 = ptrtoint ptr %word_count44.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %word_count44.i, align 4
  %word_size46.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 3, i32 4
  %76 = ptrtoint ptr %word_size46.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %word_size46.i, align 4
  %call47.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data.1.i, ptr noundef nonnull @.str.39, i32 noundef %73, i32 noundef %75, i32 noundef %77) #11
  %add.ptr48.i = getelementptr i8, ptr %data.1.i, i32 %call47.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end49.i_crit_edge
  %data.2.i = phi ptr [ %add.ptr48.i, %if.then40.i ], [ %data.1.i, %if.end37.i.if.end49.i_crit_edge ]
  %rf50.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 4
  %78 = ptrtoint ptr %rf50.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rf50.i, align 4
  %tobool52.not.i = icmp eq ptr %79, null
  br i1 %tobool52.not.i, label %if.end49.i.if.end62.i_crit_edge, label %if.then53.i

if.end49.i.if.end62.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.then53.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %word_base55.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 4, i32 3
  %80 = ptrtoint ptr %word_base55.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %word_base55.i, align 4
  %word_count57.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 4, i32 5
  %82 = ptrtoint ptr %word_count57.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %word_count57.i, align 4
  %word_size59.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 4, i32 4
  %84 = ptrtoint ptr %word_size59.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %word_size59.i, align 4
  %call60.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data.2.i, ptr noundef nonnull @.str.40, i32 noundef %81, i32 noundef %83, i32 noundef %85) #11
  %add.ptr61.i = getelementptr i8, ptr %data.2.i, i32 %call60.i
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then53.i, %if.end49.i.if.end62.i_crit_edge
  %data.3.i = phi ptr [ %add.ptr61.i, %if.then53.i ], [ %data.2.i, %if.end49.i.if.end62.i_crit_edge ]
  %rfcsr.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 5
  %86 = ptrtoint ptr %rfcsr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rfcsr.i, align 4
  %tobool64.not.i = icmp eq ptr %87, null
  br i1 %tobool64.not.i, label %if.end62.i.if.end74.i_crit_edge, label %if.then65.i

if.end62.i.if.end74.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.then65.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  %word_base67.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 5, i32 3
  %88 = ptrtoint ptr %word_base67.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %word_base67.i, align 4
  %word_count69.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 5, i32 5
  %90 = ptrtoint ptr %word_count69.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %word_count69.i, align 4
  %word_size71.i = getelementptr inbounds %struct.rt2x00debug, ptr %37, i32 0, i32 5, i32 4
  %92 = ptrtoint ptr %word_size71.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %word_size71.i, align 4
  %call72.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data.3.i, ptr noundef nonnull @.str.41, i32 noundef %89, i32 noundef %91, i32 noundef %93) #11
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then65.i, %if.end62.i.if.end74.i_crit_edge
  %94 = ptrtoint ptr %chipset_blob to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chipset_blob, align 4
  %call76.i = tail call i32 @strlen(ptr noundef %95) #16
  %size.i120 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 8, i32 1
  %96 = ptrtoint ptr %size.i120 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call76.i, ptr %size.i120, align 8
  %97 = ptrtoint ptr %driver_folder to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %driver_folder, align 8
  %call77.i = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %98, ptr noundef %chipset_blob) #11
  br label %rt2x00debug_create_file_chipset.exit

rt2x00debug_create_file_chipset.exit:             ; preds = %if.end74.i, %rt2x00debug_create_file_driver.exit.rt2x00debug_create_file_chipset.exit_crit_edge
  %99 = ptrtoint ptr %driver_folder to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %driver_folder, align 8
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %100, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_dev_flags) #11
  %101 = ptrtoint ptr %driver_folder to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %driver_folder, align 8
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %102, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_cap_flags) #11
  %103 = ptrtoint ptr %driver_folder to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %driver_folder, align 8
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 128, ptr noundef %104, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_restart_hw) #11
  %105 = ptrtoint ptr %driver_folder to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %driver_folder, align 8
  %call22 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.14, ptr noundef %106) #11
  %csr = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1
  %107 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %csr, align 4
  %tobool23.not = icmp eq ptr %108, null
  br i1 %tobool23.not, label %rt2x00debug_create_file_chipset.exit.if.end26_crit_edge, label %if.then24

rt2x00debug_create_file_chipset.exit.if.end26_crit_edge: ; preds = %rt2x00debug_create_file_chipset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %rt2x00debug_create_file_chipset.exit
  call void @__sanitizer_cov_trace_pc() #13
  %offset_csr = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.15, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef %offset_csr) #11
  %call25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_csr) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %rt2x00debug_create_file_chipset.exit.if.end26_crit_edge
  %eeprom = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2
  %109 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %eeprom, align 4
  %tobool28.not = icmp eq ptr %110, null
  br i1 %tobool28.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %offset_eeprom = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 10
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.17, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef %offset_eeprom) #11
  %call30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_eeprom) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %bbp = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3
  %111 = ptrtoint ptr %bbp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bbp, align 4
  %tobool33.not = icmp eq ptr %112, null
  br i1 %tobool33.not, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %offset_bbp = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 11
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.19, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef %offset_bbp) #11
  %call35 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_bbp) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %rf = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4
  %113 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rf, align 4
  %tobool38.not = icmp eq ptr %114, null
  br i1 %tobool38.not, label %if.end36.if.end41_crit_edge, label %if.then39

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %offset_rf = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 12
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.21, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef %offset_rf) #11
  %call40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_rf) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %rfcsr = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5
  %115 = ptrtoint ptr %rfcsr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rfcsr, align 4
  %tobool43.not = icmp eq ptr %116, null
  br i1 %tobool43.not, label %if.end41.if.end46_crit_edge, label %if.then44

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %offset_rfcsr = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 13
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.23, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef %offset_rfcsr) #11
  %call45 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 384, ptr noundef %call22, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_rfcsr) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41.if.end46_crit_edge
  %117 = ptrtoint ptr %driver_folder to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %driver_folder, align 8
  %call48 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.25, ptr noundef %118) #11
  %call49 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 256, ptr noundef %call48, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_queue_dump) #11
  %frame_dump_skbqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 4
  %lock.i = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %119 = ptrtoint ptr %frame_dump_skbqueue to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %frame_dump_skbqueue, ptr %frame_dump_skbqueue, align 8
  %prev.i.i = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %frame_dump_skbqueue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 4, i32 1
  %121 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %qlen.i.i, align 8
  %frame_dump_waitqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %frame_dump_waitqueue, ptr noundef nonnull @.str.27, ptr noundef nonnull @rt2x00debug_register.__key) #11
  %call53 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 256, ptr noundef %call48, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_queue_stats) #11
  %cap_flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %122 = ptrtoint ptr %cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %cap_flags.i.i, align 4
  %124 = and i32 %123, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.i.i.not = icmp eq i32 %124, 0
  br i1 %tobool.i.i.not, label %if.end46.cleanup_crit_edge, label %if.then55

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 292, ptr noundef %call48, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rt2x00debug_fop_crypto_stats) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end46.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00debug_deregister(ptr nocapture noundef %rt2x00dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_intf = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 8
  %0 = ptrtoint ptr %debugfs_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_intf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !150

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %frame_dump_skbqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %frame_dump_skbqueue) #11
  %driver_folder = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver_folder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_folder, align 4
  tail call void @debugfs_remove(ptr noundef %3) #11
  %chipset_blob = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %chipset_blob to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chipset_blob, align 4
  tail call void @kfree(ptr noundef %5) #11
  %driver_blob = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %driver_blob to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_blob, align 4
  tail call void @kfree(ptr noundef %7) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  %8 = ptrtoint ptr %debugfs_intf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debugfs_intf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_dev_flags(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr noundef %offset) #2 align 64 {
entry:
  %line = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line) #11
  %2 = call ptr @memset(ptr %line, i32 255, i32 16)
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line, ptr noundef nonnull @.str.42, i32 noundef %8)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %length, ptr noundef %offset, ptr noundef nonnull %line, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_file_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %private_data, align 4
  %debug = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debug, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %6) #11
  %. = select i1 %call, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_file_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @module_put(ptr noundef %5) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_cap_flags(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr noundef %offset) #2 align 64 {
entry:
  %line = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line) #11
  %2 = call ptr @memset(ptr %line, i32 255, i32 16)
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %cap_flags = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %cap_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cap_flags, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line, ptr noundef nonnull @.str.42, i32 noundef %8)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %length, ptr noundef %offset, ptr noundef nonnull %line, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_write_restart_hw(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %buf, i32 noundef %length, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cap_flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cap_flags.i.i, align 4
  %6 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = load i32, ptr @rt2x00debug_write_restart_hw.last_reset, align 4
  %add.neg = add i32 %7, -200
  %sub = sub i32 %add.neg, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  store i32 %9, ptr @rt2x00debug_write_restart_hw.last_reset, align 4
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_restart_hw(ptr noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %length, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_restart_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_csr(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr noundef %offset) #2 align 64 {
entry:
  %line = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line) #11
  %offset_csr = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 9
  %4 = call ptr @memset(ptr %line, i32 255, i32 16)
  %5 = ptrtoint ptr %offset_csr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset_csr, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp.not = icmp ult i32 %6, %10
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %csr = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %word_size, align 4
  %div = udiv i32 %12, %14
  %add = add i32 %div, %6
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool7.not, i32 1, i32 %14
  %spec.select = mul i32 %mul, %add
  %17 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call = tail call i32 %18(ptr noundef %20, i32 noundef %spec.select) #11
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line, ptr noundef nonnull @.str.42, i32 noundef %call)
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %length, ptr noundef %offset, ptr noundef nonnull %line, i32 noundef %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_write_csr(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef %offset) #2 align 64 {
entry:
  %line = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %line) #11
  %4 = getelementptr inbounds [17 x i8], ptr %line, i32 0, i32 16
  %offset_csr = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 9
  %5 = call ptr @memset(ptr %line, i32 255, i32 17)
  %6 = ptrtoint ptr %offset_csr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset_csr, align 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp.not = icmp uge i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %length)
  %cmp4 = icmp ugt i32 %length, 17
  %or.cond = or i1 %cmp4, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %line, i32 noundef %length, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %length, i32 -1226833920) #17, !srcloc !151
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !148

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %line, i32 noundef %length) #11
  %13 = call i32 @llvm.read_register.i32(metadata !138) #11
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !152
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %line, ptr noundef %buf, i32 noundef %length) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %length, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %length, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.then11.i.i, !prof !148

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %length, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %line, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %4, align 1
  %call11 = call i32 @strlen(ptr noundef nonnull %line) #18
  %call13 = call i32 @simple_strtoul(ptr noundef nonnull %line, ptr noundef null, i32 noundef 0) #11
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %word_size, align 4
  %div = udiv i32 %19, %21
  %add = add i32 %div, %7
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool17.not, i32 1, i32 %21
  %spec.select = mul i32 %mul, %add
  %write = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  call void %25(ptr noundef %27, i32 noundef %spec.select, i32 noundef %call13) #11
  %conv = zext i32 %call11 to i64
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset, align 8
  %add23 = add i64 %29, %conv
  store i64 %add23, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_eeprom(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr noundef %offset) #2 align 64 {
entry:
  %line = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line) #11
  %offset_eeprom = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 10
  %4 = call ptr @memset(ptr %line, i32 255, i32 16)
  %5 = ptrtoint ptr %offset_eeprom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset_eeprom, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp.not = icmp ult i32 %6, %10
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %word_size, align 4
  %div = udiv i32 %12, %14
  %add = add i32 %div, %6
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool7.not, i32 1, i32 %14
  %spec.select = mul i32 %mul, %add
  %17 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eeprom, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call = tail call zeroext i16 %18(ptr noundef %20, i32 noundef %spec.select) #11
  %conv = zext i16 %call to i32
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line, ptr noundef nonnull @.str.46, i32 noundef %conv)
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %length, ptr noundef %offset, ptr noundef nonnull %line, i32 noundef %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_write_eeprom(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef %offset) #2 align 64 {
entry:
  %line = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %line) #11
  %4 = getelementptr inbounds [17 x i8], ptr %line, i32 0, i32 16
  %offset_eeprom = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 10
  %5 = call ptr @memset(ptr %line, i32 255, i32 17)
  %6 = ptrtoint ptr %offset_eeprom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset_eeprom, align 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp.not = icmp uge i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %length)
  %cmp4 = icmp ugt i32 %length, 17
  %or.cond = or i1 %cmp4, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %line, i32 noundef %length, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %length, i32 -1226833920) #17, !srcloc !151
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !148

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %line, i32 noundef %length) #11
  %13 = call i32 @llvm.read_register.i32(metadata !138) #11
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !152
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %line, ptr noundef %buf, i32 noundef %length) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %length, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %length, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.then11.i.i, !prof !148

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %length, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %line, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %4, align 1
  %call11 = call i32 @strlen(ptr noundef nonnull %line) #18
  %call13 = call i32 @simple_strtoul(ptr noundef nonnull %line, ptr noundef null, i32 noundef 0) #11
  %conv = trunc i32 %call13 to i16
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %word_size, align 4
  %div = udiv i32 %19, %21
  %add = add i32 %div, %7
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool17.not, i32 1, i32 %21
  %spec.select = mul i32 %mul, %add
  %write = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  call void %25(ptr noundef %27, i32 noundef %spec.select, i16 noundef zeroext %conv) #11
  %conv23 = zext i32 %call11 to i64
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset, align 8
  %add24 = add i64 %29, %conv23
  store i64 %add24, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_bbp(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr noundef %offset) #2 align 64 {
entry:
  %line = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line) #11
  %offset_bbp = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 11
  %4 = call ptr @memset(ptr %line, i32 255, i32 16)
  %5 = ptrtoint ptr %offset_bbp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset_bbp, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3, i32 5
  %9 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp.not = icmp ult i32 %6, %10
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bbp = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %word_size, align 4
  %div = udiv i32 %12, %14
  %add = add i32 %div, %6
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool7.not, i32 1, i32 %14
  %spec.select = mul i32 %mul, %add
  %17 = ptrtoint ptr %bbp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bbp, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call = tail call zeroext i8 %18(ptr noundef %20, i32 noundef %spec.select) #11
  %conv = zext i8 %call to i32
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line, ptr noundef nonnull @.str.47, i32 noundef %conv)
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %length, ptr noundef %offset, ptr noundef nonnull %line, i32 noundef %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_write_bbp(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef %offset) #2 align 64 {
entry:
  %line = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %line) #11
  %4 = getelementptr inbounds [17 x i8], ptr %line, i32 0, i32 16
  %offset_bbp = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 11
  %5 = call ptr @memset(ptr %line, i32 255, i32 17)
  %6 = ptrtoint ptr %offset_bbp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset_bbp, align 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp.not = icmp uge i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %length)
  %cmp4 = icmp ugt i32 %length, 17
  %or.cond = or i1 %cmp4, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %line, i32 noundef %length, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %length, i32 -1226833920) #17, !srcloc !151
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !148

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %line, i32 noundef %length) #11
  %13 = call i32 @llvm.read_register.i32(metadata !138) #11
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !152
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %line, ptr noundef %buf, i32 noundef %length) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %length, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %length, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.then11.i.i, !prof !148

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %length, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %line, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %4, align 1
  %call11 = call i32 @strlen(ptr noundef nonnull %line) #18
  %call13 = call i32 @simple_strtoul(ptr noundef nonnull %line, ptr noundef null, i32 noundef 0) #11
  %conv = trunc i32 %call13 to i8
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %word_size, align 4
  %div = udiv i32 %19, %21
  %add = add i32 %div, %7
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool17.not, i32 1, i32 %21
  %spec.select = mul i32 %mul, %add
  %write = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  call void %25(ptr noundef %27, i32 noundef %spec.select, i8 noundef zeroext %conv) #11
  %conv23 = zext i32 %call11 to i64
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset, align 8
  %add24 = add i64 %29, %conv23
  store i64 %add24, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_rf(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr noundef %offset) #2 align 64 {
entry:
  %line = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line) #11
  %offset_rf = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 12
  %4 = call ptr @memset(ptr %line, i32 255, i32 16)
  %5 = ptrtoint ptr %offset_rf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset_rf, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4, i32 5
  %9 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp.not = icmp ult i32 %6, %10
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rf = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %word_size, align 4
  %div = udiv i32 %12, %14
  %add = add i32 %div, %6
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool7.not, i32 1, i32 %14
  %spec.select = mul i32 %mul, %add
  %17 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rf, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call = tail call i32 %18(ptr noundef %20, i32 noundef %spec.select) #11
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line, ptr noundef nonnull @.str.42, i32 noundef %call)
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %length, ptr noundef %offset, ptr noundef nonnull %line, i32 noundef %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_write_rf(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef %offset) #2 align 64 {
entry:
  %line = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %line) #11
  %4 = getelementptr inbounds [17 x i8], ptr %line, i32 0, i32 16
  %offset_rf = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 12
  %5 = call ptr @memset(ptr %line, i32 255, i32 17)
  %6 = ptrtoint ptr %offset_rf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset_rf, align 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp.not = icmp uge i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %length)
  %cmp4 = icmp ugt i32 %length, 17
  %or.cond = or i1 %cmp4, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %line, i32 noundef %length, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %length, i32 -1226833920) #17, !srcloc !151
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !148

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %line, i32 noundef %length) #11
  %13 = call i32 @llvm.read_register.i32(metadata !138) #11
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !152
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %line, ptr noundef %buf, i32 noundef %length) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %length, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %length, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.then11.i.i, !prof !148

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %length, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %line, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %4, align 1
  %call11 = call i32 @strlen(ptr noundef nonnull %line) #18
  %call13 = call i32 @simple_strtoul(ptr noundef nonnull %line, ptr noundef null, i32 noundef 0) #11
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %word_size, align 4
  %div = udiv i32 %19, %21
  %add = add i32 %div, %7
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool17.not, i32 1, i32 %21
  %spec.select = mul i32 %mul, %add
  %write = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  call void %25(ptr noundef %27, i32 noundef %spec.select, i32 noundef %call13) #11
  %conv = zext i32 %call11 to i64
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset, align 8
  %add23 = add i64 %29, %conv
  store i64 %add23, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_rfcsr(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr noundef %offset) #2 align 64 {
entry:
  %line = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line) #11
  %offset_rfcsr = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 13
  %4 = call ptr @memset(ptr %line, i32 255, i32 16)
  %5 = ptrtoint ptr %offset_rfcsr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset_rfcsr, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5, i32 5
  %9 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp.not = icmp ult i32 %6, %10
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rfcsr = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %word_size, align 4
  %div = udiv i32 %12, %14
  %add = add i32 %div, %6
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool7.not, i32 1, i32 %14
  %spec.select = mul i32 %mul, %add
  %17 = ptrtoint ptr %rfcsr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rfcsr, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call = tail call zeroext i8 %18(ptr noundef %20, i32 noundef %spec.select) #11
  %conv = zext i8 %call to i32
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line, ptr noundef nonnull @.str.47, i32 noundef %conv)
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %length, ptr noundef %offset, ptr noundef nonnull %line, i32 noundef %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_write_rfcsr(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef %offset) #2 align 64 {
entry:
  %line = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug1 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %line) #11
  %4 = getelementptr inbounds [17 x i8], ptr %line, i32 0, i32 16
  %offset_rfcsr = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 13
  %5 = call ptr @memset(ptr %line, i32 255, i32 17)
  %6 = ptrtoint ptr %offset_rfcsr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset_rfcsr, align 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %word_count = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5, i32 5
  %10 = ptrtoint ptr %word_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp.not = icmp uge i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %length)
  %cmp4 = icmp ugt i32 %length, 17
  %or.cond = or i1 %cmp4, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %line, i32 noundef %length, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %length, i32 -1226833920) #17, !srcloc !151
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !148

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %line, i32 noundef %length) #11
  %13 = call i32 @llvm.read_register.i32(metadata !138) #11
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !152
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %line, ptr noundef %buf, i32 noundef %length) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %length, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %length, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.then11.i.i, !prof !148

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %length, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %line, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %4, align 1
  %call11 = call i32 @strlen(ptr noundef nonnull %line) #18
  %call13 = call i32 @simple_strtoul(ptr noundef nonnull %line, ptr noundef null, i32 noundef 0) #11
  %conv = trunc i32 %call13 to i8
  %word_base = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %word_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %word_base, align 4
  %word_size = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %word_size, align 4
  %div = udiv i32 %19, %21
  %add = add i32 %div, %7
  %flags = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool17.not, i32 1, i32 %21
  %spec.select = mul i32 %mul, %add
  %write = getelementptr inbounds %struct.rt2x00debug, ptr %3, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  call void %25(ptr noundef %27, i32 noundef %spec.select, i8 noundef zeroext %conv) #11
  %conv23 = zext i32 %call11 to i64
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset, align 8
  %add24 = add i64 %29, %conv23
  store i64 %add24, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %line) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_queue_dump(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef %offset) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup28_crit_edge

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup28

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 257) #11
  %frame_dump_skbqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 4
  %call = tail call ptr @skb_dequeue(ptr noundef %frame_dump_skbqueue) #11
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %frame_dump_waitqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 5
  %call863 = call i32 @prepare_to_wait_event(ptr noundef %frame_dump_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call1064 = call ptr @skb_dequeue(ptr noundef %frame_dump_skbqueue) #11
  %tobool11.not65 = icmp eq ptr %call1064, null
  br i1 %tobool11.not65, label %if.then6.if.end13_crit_edge, label %if.then6.if.end18.thread55_crit_edge

if.then6.if.end18.thread55_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.thread55

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  br label %if.end13

if.end13:                                         ; preds = %cleanup.if.end13_crit_edge, %if.then6.if.end13_crit_edge
  %call866 = phi i32 [ %call8, %cleanup.if.end13_crit_edge ], [ %call863, %if.then6.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call866)
  %tobool14.not = icmp eq i32 %call866, 0
  br i1 %tobool14.not, label %cleanup, label %if.end18

cleanup:                                          ; preds = %if.end13
  call void @schedule() #11
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %frame_dump_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call10 = call ptr @skb_dequeue(ptr noundef %frame_dump_skbqueue) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %cleanup.if.end13_crit_edge, label %cleanup.if.end18.thread55_crit_edge

cleanup.if.end18.thread55_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.thread55

cleanup.if.end13_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end18.thread55:                                ; preds = %cleanup.if.end18.thread55_crit_edge, %if.then6.if.end18.thread55_crit_edge
  %call10.lcssa = phi ptr [ %call1064, %if.then6.if.end18.thread55_crit_edge ], [ %call10, %cleanup.if.end18.thread55_crit_edge ]
  call void @finish_wait(ptr noundef %frame_dump_waitqueue, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end22

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup28

if.end22:                                         ; preds = %if.end18.thread55, %if.end.if.end22_crit_edge
  %skb.054 = phi ptr [ %call10.lcssa, %if.end18.thread55 ], [ %call, %if.end.if.end22_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.054, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 %length)
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.054, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.i.i = icmp slt i32 %7, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end22
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.exit_crit_edge, label %if.then27.i.i, !prof !148

land.rhs16.i.i.exit_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %exit

if.then.i.i.i:                                    ; preds = %if.end22
  call void @__check_object_size(ptr noundef %9, i32 noundef %7, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %7, i32 -1226833920) #17, !srcloc !155
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef %7) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %9, i32 noundef %7) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %7, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %7, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool25.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool25.not, label %if.end27, label %copy_to_user.exit.exit_crit_edge

copy_to_user.exit.exit_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end27:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %7 to i64
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset, align 8
  %add = add i64 %12, %conv
  store i64 %add, ptr %offset, align 8
  br label %exit

exit:                                             ; preds = %if.end27, %copy_to_user.exit.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.exit_crit_edge
  %status.0 = phi i32 [ %7, %if.end27 ], [ -14, %copy_to_user.exit.exit_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.exit_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %skb.054, i32 noundef 0) #11
  br label %cleanup28

cleanup28:                                        ; preds = %exit, %if.end18, %entry.cleanup28_crit_edge
  %retval.0 = phi i32 [ %status.0, %exit ], [ -11, %entry.cleanup28_crit_edge ], [ %call866, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_poll_queue_dump(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %frame_dump_waitqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %frame_dump_waitqueue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %file, ptr noundef nonnull %frame_dump_waitqueue, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %frame_dump_skbqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %frame_dump_skbqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frame_dump_skbqueue, align 4
  %cmp.i.not = icmp eq ptr %5, %frame_dump_skbqueue
  %. = select i1 %cmp.i.not, i32 0, i32 260
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_open_queue_dump(ptr nocapture noundef readonly %inode, ptr nocapture noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %private_data.i, align 4
  %debug.i = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debug.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %6) #11
  br i1 %call.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %frame_dump_flags = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %frame_dump_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data.i, align 4
  %debug.i13 = getelementptr inbounds %struct.rt2x00debug_intf, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %debug.i13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debug.i13, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @module_put(ptr noundef %12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then4 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_release_queue_dump(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %frame_dump_skbqueue = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %frame_dump_skbqueue) #11
  %frame_dump_flags = getelementptr inbounds %struct.rt2x00debug_intf, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %frame_dump_flags) #11
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %debug.i = getelementptr inbounds %struct.rt2x00debug_intf, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debug.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @module_put(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_queue_stats(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %data_queues = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %data_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_queues, align 8
  %add = add i32 %7, 1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 64) #11
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !150

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #19
  %tobool1.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool1.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end3

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end7.i.i
  %11 = call ptr @memcpy(ptr %call8.i.i, ptr @.str.49, i32 51)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %rx = getelementptr inbounds %struct.rt2x00_dev, ptr %13, i32 0, i32 50
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx, align 4
  %arrayidx89 = getelementptr %struct.data_queue, ptr %15, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx89) #11, !srcloc !156
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %rx790 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 50
  %18 = ptrtoint ptr %rx790 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx790, align 4
  %data_queues991 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 49
  %20 = ptrtoint ptr %data_queues991 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_queues991, align 8
  %arrayidx1092 = getelementptr %struct.data_queue, ptr %19, i32 %21
  %cmp.not93 = icmp eq ptr %15, %arrayidx1092
  br i1 %cmp.not93, label %if.end3.for.end_crit_edge, label %do.body11.preheader

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body11.preheader:                              ; preds = %if.end3
  %add.ptr = getelementptr i8, ptr %call8.i.i, i32 50
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %do.body11.preheader
  %arrayidx96 = phi ptr [ %arrayidx, %do.body11.do.body11_crit_edge ], [ %arrayidx89, %do.body11.preheader ]
  %temp.095 = phi ptr [ %add.ptr29, %do.body11.do.body11_crit_edge ], [ %add.ptr, %do.body11.preheader ]
  %queue.094 = phi ptr [ %arrayidx96, %do.body11.do.body11_crit_edge ], [ %15, %do.body11.preheader ]
  %index_lock = getelementptr inbounds %struct.data_queue, ptr %queue.094, i32 0, i32 6
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %index_lock) #11
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue.094, i32 0, i32 2
  %22 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qid, align 4
  %flags = getelementptr inbounds %struct.data_queue, ptr %queue.094, i32 0, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %count = getelementptr inbounds %struct.data_queue, ptr %queue.094, i32 0, i32 7
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  %limit = getelementptr inbounds %struct.data_queue, ptr %queue.094, i32 0, i32 8
  %28 = ptrtoint ptr %limit to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %limit, align 4
  %conv17 = zext i16 %29 to i32
  %length18 = getelementptr inbounds %struct.data_queue, ptr %queue.094, i32 0, i32 10
  %30 = ptrtoint ptr %length18 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %length18, align 4
  %conv19 = zext i16 %31 to i32
  %index = getelementptr inbounds %struct.data_queue, ptr %queue.094, i32 0, i32 11
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %index, align 2
  %conv21 = zext i16 %33 to i32
  %arrayidx23 = getelementptr %struct.data_queue, ptr %queue.094, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %35 to i32
  %arrayidx26 = getelementptr %struct.data_queue, ptr %queue.094, i32 0, i32 11, i32 2
  %36 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx26, align 2
  %conv27 = zext i16 %37 to i32
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %temp.095, ptr noundef nonnull @.str.50, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %conv27)
  %add.ptr29 = getelementptr i8, ptr %temp.095, i32 %call28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %index_lock, i32 noundef %call14) #11
  %arrayidx = getelementptr %struct.data_queue, ptr %arrayidx96, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx) #11, !srcloc !156
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %rx7 = getelementptr inbounds %struct.rt2x00_dev, ptr %39, i32 0, i32 50
  %40 = ptrtoint ptr %rx7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx7, align 4
  %data_queues9 = getelementptr inbounds %struct.rt2x00_dev, ptr %39, i32 0, i32 49
  %42 = ptrtoint ptr %data_queues9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_queues9, align 8
  %arrayidx10 = getelementptr %struct.data_queue, ptr %41, i32 %43
  %cmp.not = icmp eq ptr %arrayidx96, %arrayidx10
  br i1 %cmp.not, label %do.body11.for.end_crit_edge, label %do.body11.do.body11_crit_edge

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

do.body11.for.end_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %do.body11.for.end_crit_edge, %if.end3.for.end_crit_edge
  %call32 = tail call i32 @strlen(ptr noundef nonnull %call8.i.i) #18
  %44 = tail call i32 @llvm.umin.i32(i32 %call32, i32 %length)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp9.i.i = icmp slt i32 %44, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then38_crit_edge, label %if.then27.i.i, !prof !148

land.rhs16.i.i.if.then38_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then38

if.then.i.i.i:                                    ; preds = %for.end
  tail call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %44, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %44, i32 -1226833920) #17, !srcloc !155
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i.i, i32 noundef %44) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call8.i.i, i32 noundef %44) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %44, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %44, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool37.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool37.not, label %if.end39, label %copy_to_user.exit.if.then38_crit_edge

copy_to_user.exit.if.then38_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.then38:                                        ; preds = %copy_to_user.exit.if.then38_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then38_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

if.end39:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  %conv40 = zext i32 %44 to i64
  %46 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %offset, align 8
  %add41 = add i64 %47, %conv40
  store i64 %add41, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then38, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then38 ], [ %44, %if.end39 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00debug_read_crypto_stats(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 320) #14
  %tobool1.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.55, i32 40)
  %add.ptr = getelementptr i8, ptr %call7.i.i.i, i32 39
  %arrayidx5 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %icv_error = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 0, i32 1
  %8 = ptrtoint ptr %icv_error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %icv_error, align 4
  %mic_error = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 0, i32 2
  %10 = ptrtoint ptr %mic_error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mic_error, align 4
  %key_error = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 0, i32 3
  %12 = ptrtoint ptr %key_error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_error, align 4
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.51, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13)
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %call12
  %arrayidx5.1 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.1, align 4
  %icv_error.1 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 1, i32 1
  %16 = ptrtoint ptr %icv_error.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %icv_error.1, align 4
  %mic_error.1 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 1, i32 2
  %18 = ptrtoint ptr %mic_error.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mic_error.1, align 4
  %key_error.1 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 1, i32 3
  %20 = ptrtoint ptr %key_error.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_error.1, align 4
  %call12.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.52, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21)
  %add.ptr13.1 = getelementptr i8, ptr %add.ptr13, i32 %call12.1
  %arrayidx5.2 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx5.2, align 4
  %icv_error.2 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 2, i32 1
  %24 = ptrtoint ptr %icv_error.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %icv_error.2, align 4
  %mic_error.2 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 2, i32 2
  %26 = ptrtoint ptr %mic_error.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mic_error.2, align 4
  %key_error.2 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 2, i32 3
  %28 = ptrtoint ptr %key_error.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_error.2, align 4
  %call12.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.53, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29)
  %add.ptr13.2 = getelementptr i8, ptr %add.ptr13.1, i32 %call12.2
  %arrayidx5.3 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx5.3, align 4
  %icv_error.3 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 3, i32 1
  %32 = ptrtoint ptr %icv_error.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %icv_error.3, align 4
  %mic_error.3 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 3, i32 2
  %34 = ptrtoint ptr %mic_error.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mic_error.3, align 4
  %key_error.3 = getelementptr %struct.rt2x00debug_intf, ptr %1, i32 0, i32 6, i32 3, i32 3
  %36 = ptrtoint ptr %key_error.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_error.3, align 4
  %call12.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.2, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37)
  %call14 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i.i) #18
  %38 = tail call i32 @llvm.umin.i32(i32 %call14, i32 %length)
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %38)
  %cmp1.i.i = icmp ugt i32 %38, 320
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !150

if.then3.i.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.44, i32 noundef 320, i32 noundef %38) #11
  br label %if.then18

if.then.i.i.i:                                    ; preds = %if.end3
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i.i, i32 noundef %38, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %38, i32 -1226833920) #17, !srcloc !155
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i.i, i32 noundef %38) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call7.i.i.i, i32 noundef %38) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %38, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %38, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool17.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool17.not, label %if.end19, label %copy_to_user.exit.if.then18_crit_edge

copy_to_user.exit.if.then18_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %copy_to_user.exit.if.then18_crit_edge, %if.then3.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end19:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %conv = zext i32 %38 to i64
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %offset, align 8
  %add = add i64 %41, %conv
  store i64 %add, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then18 ], [ %38, %if.end19 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !99, !101, !103, !104, !106, !107, !109, !111, !113, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 147, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rt2x00debug_dump_frame.__UNIQUE_ID_ddebug368, !1, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 158, i32 3}
!8 = !{ptr @rt2x00debug_dump_frame.__UNIQUE_ID_ddebug369, !7, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!9 = !{ptr @__ksymtab_rt2x00debug_dump_frame, !10, !"__ksymtab_rt2x00debug_dump_frame", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 190, i32 1}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 644, i32 3}
!13 = !{ptr @rt2x00debug_register._rs, !12, !"_rs", i1 false, i1 false}
!14 = !{ptr @__func__.rt2x00debug_register, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rt2x00debug_register._entry, !12, !"_entry", i1 false, i1 false}
!19 = !{ptr @rt2x00debug_register._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 656, i32 33}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 657, i32 34}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 658, i32 22}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 660, i32 22}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 662, i32 22}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 665, i32 39}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 680, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 681, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 682, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 683, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 684, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 688, i32 36}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 690, i32 22}
!51 = !{ptr @rt2x00debug_register.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 694, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 701, i32 23}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 590, i32 24}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 591, i32 24}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 591, i32 42}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 609, i32 24}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 610, i32 24}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 611, i32 24}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 612, i32 24}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 613, i32 24}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 623, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 624, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 625, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 626, i32 2}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 627, i32 2}
!82 = !{ptr @rt2x00debug_fop_dev_flags, !83, !"rt2x00debug_fop_dev_flags", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 518, i32 37}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 513, i32 23}
!86 = !{ptr @rt2x00debug_fop_cap_flags, !87, !"rt2x00debug_fop_cap_flags", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 543, i32 37}
!88 = !{ptr @rt2x00debug_restart_hw, !89, !"rt2x00debug_restart_hw", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 572, i32 37}
!90 = !{ptr @rt2x00debug_write_restart_hw.last_reset, !91, !"last_reset", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 558, i32 23}
!92 = !{ptr @rt2x00debug_fop_csr, !93, !"rt2x00debug_fop_csr", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 495, i32 1}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!101 = !{ptr @rt2x00debug_fop_eeprom, !102, !"rt2x00debug_fop_eeprom", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 496, i32 1}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rt2x00debug_fop_bbp, !105, !"rt2x00debug_fop_bbp", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 497, i32 1}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rt2x00debug_fop_rf, !108, !"rt2x00debug_fop_rf", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 498, i32 1}
!109 = !{ptr @rt2x00debug_fop_rfcsr, !110, !"rt2x00debug_fop_rfcsr", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 499, i32 1}
!111 = !{ptr @rt2x00debug_fop_queue_dump, !112, !"rt2x00debug_fop_queue_dump", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 288, i32 37}
!113 = !{ptr @skb_queue_head_init.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @rt2x00debug_fop_queue_stats, !117, !"rt2x00debug_fop_queue_stats", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 347, i32 37}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 318, i32 20}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 323, i32 25}
!122 = !{ptr @rt2x00debug_fop_crypto_stats, !123, !"rt2x00debug_fop_crypto_stats", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 400, i32 37}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 362, i32 39}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 362, i32 48}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 362, i32 58}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 362, i32 66}
!132 = distinct !{null, !133, !"name", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 362, i32 28}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 376, i32 24}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00debug.c", i32 379, i32 25}
!138 = !{!"sp"}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{i64 2148505707, i64 2148505712, i64 2148505725, i64 2148505769, i64 2148505803, i64 2148505824}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i64 2152193588, i64 2152193613}
!152 = !{i64 4689143}
!153 = !{i64 4689340}
!154 = !{i64 2152174573}
!155 = !{i64 2152194269, i64 2152194294}
!156 = !{i64 1180377}
