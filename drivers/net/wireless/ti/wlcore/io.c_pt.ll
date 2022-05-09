; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/io.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wlcore_disable_interrupts\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_disable_interrupts\09\09\09\09"
module asm "\09.long\09__crc_wlcore_disable_interrupts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_disable_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_disable_interrupts\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_disable_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wlcore_disable_interrupts_nosync\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_disable_interrupts_nosync\09\09\09\09"
module asm "\09.long\09__crc_wlcore_disable_interrupts_nosync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_disable_interrupts_nosync:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_disable_interrupts_nosync\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_disable_interrupts_nosync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wlcore_enable_interrupts\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_enable_interrupts\09\09\09\09"
module asm "\09.long\09__crc_wlcore_enable_interrupts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_enable_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_enable_interrupts\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_enable_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wlcore_synchronize_interrupts\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_synchronize_interrupts\09\09\09\09"
module asm "\09.long\09__crc_wlcore_synchronize_interrupts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_synchronize_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_synchronize_interrupts\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_synchronize_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wlcore_translate_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_translate_addr\09\09\09\09"
module asm "\09.long\09__crc_wlcore_translate_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_translate_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_translate_addr\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_translate_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wlcore_set_partition\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_set_partition\09\09\09\09"
module asm "\09.long\09__crc_wlcore_set_partition\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_set_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_set_partition\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_set_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wl1271_scan = type { ptr, [2 x i32], i8, i8, [33 x i8], i32 }
%struct.wl1271_stats = type { ptr, i32, i32, i32, i32 }
%struct.wlcore_conf = type <{ %struct.conf_sg_settings, %struct.conf_rx_settings, %struct.conf_tx_settings, %struct.conf_conn_settings, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }>
%struct.conf_sg_settings = type <{ [67 x i32], i8 }>
%struct.conf_rx_settings = type <{ i32, i32, i16, i16, i16, i16, i16, i16, i16, i8 }>
%struct.conf_tx_settings = type <{ i8, %struct.conf_tx_rate_class, i8, [4 x %struct.conf_tx_ac_category], i8, i16, i8, [8 x %struct.conf_tx_tid], i16, i16, i16, i32, i32, i8, i8, i32, i8, i8 }>
%struct.conf_tx_rate_class = type <{ i32, i8, i8, i8 }>
%struct.conf_tx_ac_category = type <{ i8, i8, i16, i8, i16 }>
%struct.conf_tx_tid = type <{ i8, i8, i8, i8, i8, [2 x i32] }>
%struct.conf_conn_settings = type <{ i8, i8, i8, i8, i8, i8, [32 x %struct.conf_bcn_filt_rule], i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>
%struct.conf_bcn_filt_rule = type { i8, i8, [3 x i8], i8, [2 x i8] }
%struct.conf_sig_weights = type { i8, i8, i8, i8 }
%struct.conf_itrim_settings = type <{ i8, i32 }>
%struct.conf_pm_config_settings = type <{ i32, i8 }>
%struct.conf_roam_trigger_settings = type { i16, i8, i8, i8, i8 }
%struct.conf_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i16, i32 }>
%struct.conf_sched_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16 }>
%struct.conf_ht_setting = type <{ i8, i8, i16, i8 }>
%struct.conf_memory_settings = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.conf_fm_coex = type { i8, i8, i8, i8, i16, i16, i32, i16, i8, i8 }
%struct.conf_rx_streaming_settings = type <{ i32, i8, i8, i8 }>
%struct.conf_fwlog = type { i8, i8, i8, i8, i8, i8 }
%struct.conf_rate_policy_settings = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8] }
%struct.conf_hangover_settings = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.conf_recovery_settings = type { i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wl1271_link = type { [4 x %struct.sk_buff_head], i8, i8, [6 x i8], i8, i8, i8, ptr, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wl1271_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_wlcore_disable_interrupts = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_disable_interrupts = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_disable_interrupts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_disable_interrupts to i32), ptr @__kstrtab_wlcore_disable_interrupts, ptr @__kstrtabns_wlcore_disable_interrupts }, section "___ksymtab_gpl+wlcore_disable_interrupts", align 4
@__kstrtab_wlcore_disable_interrupts_nosync = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_disable_interrupts_nosync = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_disable_interrupts_nosync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_disable_interrupts_nosync to i32), ptr @__kstrtab_wlcore_disable_interrupts_nosync, ptr @__kstrtabns_wlcore_disable_interrupts_nosync }, section "___ksymtab_gpl+wlcore_disable_interrupts_nosync", align 4
@__kstrtab_wlcore_enable_interrupts = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_enable_interrupts = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_enable_interrupts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_enable_interrupts to i32), ptr @__kstrtab_wlcore_enable_interrupts, ptr @__kstrtabns_wlcore_enable_interrupts }, section "___ksymtab_gpl+wlcore_enable_interrupts", align 4
@__kstrtab_wlcore_synchronize_interrupts = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_synchronize_interrupts = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_synchronize_interrupts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_synchronize_interrupts to i32), ptr @__kstrtab_wlcore_synchronize_interrupts, ptr @__kstrtabns_wlcore_synchronize_interrupts }, section "___ksymtab_gpl+wlcore_synchronize_interrupts", align 4
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wlcore/io.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HW address 0x%x out of range\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_wlcore_translate_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_translate_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_translate_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_translate_addr to i32), ptr @__kstrtab_wlcore_translate_addr, ptr @__kstrtabns_wlcore_translate_addr }, section "___ksymtab_gpl+wlcore_translate_addr", align 4
@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wlcore_set_partition.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wlcore_set_partition\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wlcore: mem_start %08X mem_size %08X\0A\00", [58 x i8] zeroinitializer }, align 32
@wlcore_set_partition.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.5, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wlcore: reg_start %08X reg_size %08X\0A\00", [58 x i8] zeroinitializer }, align 32
@wlcore_set_partition.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.6, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wlcore: mem2_start %08X mem2_size %08X\0A\00", [56 x i8] zeroinitializer }, align 32
@wlcore_set_partition.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.7, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wlcore: mem3_start %08X mem3_size %08X\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_wlcore_set_partition = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_set_partition = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_set_partition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_set_partition to i32), ptr @__kstrtab_wlcore_set_partition, ptr @__kstrtabns_wlcore_set_partition }, section "___ksymtab_gpl+wlcore_set_partition", align 4
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wlcore/io.h\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 84, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 131, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 133, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 135, i32 2 }
@___asan_gen_.31 = private constant [39 x i8] c"../drivers/net/wireless/ti/wlcore/io.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 137, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [39 x i8] c"../drivers/net/wireless/ti/wlcore/io.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 51, i32 6 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_wlcore_disable_interrupts, ptr @__ksymtab_wlcore_disable_interrupts_nosync, ptr @__ksymtab_wlcore_enable_interrupts, ptr @__ksymtab_wlcore_set_partition, ptr @__ksymtab_wlcore_synchronize_interrupts, ptr @__ksymtab_wlcore_translate_addr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wl1271_set_block_size(ptr nocapture noundef readonly %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %if_ops = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %0 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_ops, align 8
  %set_block_size = getelementptr inbounds %struct.wl1271_if_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set_block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_block_size, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void %3(ptr noundef %5, i32 noundef 256) #3
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %6 = xor i1 %tobool.not, true
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_disable_interrupts(ptr nocapture noundef readonly %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 7
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_disable_interrupts_nosync(ptr nocapture noundef readonly %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 7
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_enable_interrupts(ptr nocapture noundef readonly %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 7
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_synchronize_interrupts(ptr nocapture noundef readonly %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 7
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_translate_addr(ptr nocapture noundef readonly %wl, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_part = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20
  %start = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp.not = icmp ugt i32 %1, %addr
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %curr_part to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_part, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr)
  %cmp4 = icmp ugt i32 %add, %addr
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %sub = sub i32 %addr, %1
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %reg = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20, i32 1
  %start7 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20, i32 1, i32 1
  %4 = ptrtoint ptr %start7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %addr)
  %cmp8.not = icmp ugt i32 %5, %addr
  br i1 %cmp8.not, label %if.else.if.else23_crit_edge, label %land.lhs.true9

if.else.if.else23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else23

land.lhs.true9:                                   ; preds = %if.else
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %add14 = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %addr)
  %cmp15 = icmp ugt i32 %add14, %addr
  br i1 %cmp15, label %if.then16, label %land.lhs.true9.if.else23_crit_edge

land.lhs.true9.if.else23_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else23

if.then16:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #5
  %sub19 = sub i32 %addr, %5
  %8 = ptrtoint ptr %curr_part to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %curr_part, align 4
  %add22 = add i32 %sub19, %9
  br label %cleanup

if.else23:                                        ; preds = %land.lhs.true9.if.else23_crit_edge, %if.else.if.else23_crit_edge
  %mem2 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20, i32 2
  %start24 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20, i32 2, i32 1
  %10 = ptrtoint ptr %start24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %addr)
  %cmp25.not = icmp ugt i32 %11, %addr
  br i1 %cmp25.not, label %if.else23.if.else43_crit_edge, label %land.lhs.true26

if.else23.if.else43_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else43

land.lhs.true26:                                  ; preds = %if.else23
  %12 = ptrtoint ptr %mem2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem2, align 4
  %add31 = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %addr)
  %cmp32 = icmp ugt i32 %add31, %addr
  br i1 %cmp32, label %if.then33, label %land.lhs.true26.if.else43_crit_edge

land.lhs.true26.if.else43_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else43

if.then33:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  %sub36 = sub i32 %addr, %11
  %14 = ptrtoint ptr %curr_part to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %curr_part, align 4
  %add39 = add i32 %sub36, %15
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %add42 = add i32 %add39, %17
  br label %cleanup

if.else43:                                        ; preds = %land.lhs.true26.if.else43_crit_edge, %if.else23.if.else43_crit_edge
  %start45 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20, i32 3, i32 1
  %18 = ptrtoint ptr %start45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %start45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %addr)
  %cmp46.not = icmp ugt i32 %19, %addr
  br i1 %cmp46.not, label %if.else43.do.end_crit_edge, label %land.lhs.true47

if.else43.do.end_crit_edge:                       ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true47:                                  ; preds = %if.else43
  %mem344 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20, i32 3
  %20 = ptrtoint ptr %mem344 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem344, align 4
  %add52 = add i32 %21, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %addr)
  %cmp53 = icmp ugt i32 %add52, %addr
  br i1 %cmp53, label %if.then54, label %land.lhs.true47.do.end_crit_edge

land.lhs.true47.do.end_crit_edge:                 ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then54:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #5
  %sub57 = sub i32 %addr, %19
  %22 = ptrtoint ptr %curr_part to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %curr_part, align 4
  %add60 = add i32 %sub57, %23
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  %add63 = add i32 %add60, %25
  %26 = ptrtoint ptr %mem2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mem2, align 4
  %add66 = add i32 %add63, %27
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true47.do.end_crit_edge, %if.else43.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %addr) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then54, %if.then33, %if.then16, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %add22, %if.then16 ], [ %add42, %if.then33 ], [ %add66, %if.then54 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_set_partition(ptr noundef %wl, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_part = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20
  %0 = call ptr @memcpy(ptr %curr_part, ptr %p, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %1 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body16_crit_edge, label %do.body3, !prof !40

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_set_partition.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_set_partition, %if.then11)) #3
          to label %do.body16 [label %if.then11], !srcloc !41

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  %start = getelementptr inbounds %struct.wlcore_partition, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_set_partition.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %5) #3
  br label %do.body16

do.body16:                                        ; preds = %if.then11, %do.body3, %entry.do.body16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %6 = load i32, ptr @wl12xx_debug_level, align 4
  %and17 = and i32 %6, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.body48_crit_edge, label %do.body26, !prof !40

do.body16.do.body48_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body48

do.body26:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_set_partition.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_set_partition, %if.then38)) #3
          to label %do.body48 [label %if.then38], !srcloc !41

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #5
  %reg = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 1
  %start39 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %start39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start39, align 4
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_set_partition.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef %10) #3
  br label %do.body48

do.body48:                                        ; preds = %if.then38, %do.body26, %do.body16.do.body48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %11 = load i32, ptr @wl12xx_debug_level, align 4
  %and49 = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.do.body80_crit_edge, label %do.body58, !prof !40

do.body48.do.body80_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body80

do.body58:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_set_partition.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_set_partition, %if.then70)) #3
          to label %do.body80 [label %if.then70], !srcloc !41

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #5
  %mem2 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 2
  %start71 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %start71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start71, align 4
  %14 = ptrtoint ptr %mem2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_set_partition.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.6, i32 noundef %13, i32 noundef %15) #3
  br label %do.body80

do.body80:                                        ; preds = %if.then70, %do.body58, %do.body48.do.body80_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %16 = load i32, ptr @wl12xx_debug_level, align 4
  %and81 = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.do.end111_crit_edge, label %do.body90, !prof !40

do.body80.do.end111_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end111

do.body90:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_set_partition.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_set_partition, %if.then102)) #3
          to label %do.end111 [label %if.then102], !srcloc !41

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #5
  %mem3 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 3
  %start103 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %start103 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start103, align 4
  %19 = ptrtoint ptr %mem3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mem3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_set_partition.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.7, i32 noundef %18, i32 noundef %20) #3
  br label %do.end111

do.end111:                                        ; preds = %if.then102, %do.body90, %do.body80.do.end111_crit_edge
  %start113 = getelementptr inbounds %struct.wlcore_partition, ptr %p, i32 0, i32 1
  %21 = ptrtoint ptr %start113 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start113, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #3
  %buffer_32.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %24 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer_32.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %25, align 4
  %27 = load ptr, ptr %buffer_32.i, align 4
  %flags.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i.i, align 4
  %30 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %do.end111.out_crit_edge

do.end111.out_crit_edge:                          ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false.i.i:                                ; preds = %do.end111
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i.i, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool3.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool3.not.i.i, label %if.end25.i.i, label %do.end.i.i, !prof !40

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %out

if.end25.i.i:                                     ; preds = %lor.lhs.false.i.i
  %if_ops.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %34 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %38 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i = tail call i32 %37(ptr noundef %39, i32 noundef 131012, ptr noundef %27, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end25.i.i.if.end116_crit_edge, label %land.lhs.true.i.i

if.end25.i.i.if.end116_crit_edge:                 ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end116

land.lhs.true.i.i:                                ; preds = %if.end25.i.i
  %state.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %40 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp29.not.i.i = icmp eq i32 %41, 0
  br i1 %cmp29.not.i.i, label %land.lhs.true.i.i.wlcore_raw_write32.exit_crit_edge, label %if.then30.i.i

land.lhs.true.i.i.wlcore_raw_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_write32.exit

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #3
  br label %wlcore_raw_write32.exit

wlcore_raw_write32.exit:                          ; preds = %if.then30.i.i, %land.lhs.true.i.i.wlcore_raw_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp = icmp slt i32 %call27.i.i, 0
  br i1 %cmp, label %wlcore_raw_write32.exit.out_crit_edge, label %wlcore_raw_write32.exit.if.end116_crit_edge

wlcore_raw_write32.exit.if.end116_crit_edge:      ; preds = %wlcore_raw_write32.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end116

wlcore_raw_write32.exit.out_crit_edge:            ; preds = %wlcore_raw_write32.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end116:                                        ; preds = %wlcore_raw_write32.exit.if.end116_crit_edge, %if.end25.i.i.if.end116_crit_edge
  %42 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %p, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #3
  %45 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer_32.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %46, align 4
  %48 = load ptr, ptr %buffer_32.i, align 4
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags.i.i, align 4
  %51 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i201 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i201, label %lor.lhs.false.i.i203, label %if.end116.out_crit_edge

if.end116.out_crit_edge:                          ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false.i.i203:                             ; preds = %if.end116
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i.i, align 4
  %54 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool3.not.i.i202 = icmp eq i32 %54, 0
  br i1 %tobool3.not.i.i202, label %if.end25.i.i210, label %do.end.i.i204, !prof !40

do.end.i.i204:                                    ; preds = %lor.lhs.false.i.i203
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %out

if.end25.i.i210:                                  ; preds = %lor.lhs.false.i.i203
  %55 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i206 = getelementptr inbounds %struct.wl1271_if_operations, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write.i.i206 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i.i206, align 4
  %59 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i208 = tail call i32 %58(ptr noundef %60, i32 noundef 131008, ptr noundef %48, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i208)
  %tobool28.not.i.i209 = icmp eq i32 %call27.i.i208, 0
  br i1 %tobool28.not.i.i209, label %if.end25.i.i210.if.end122_crit_edge, label %land.lhs.true.i.i213

if.end25.i.i210.if.end122_crit_edge:              ; preds = %if.end25.i.i210
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end122

land.lhs.true.i.i213:                             ; preds = %if.end25.i.i210
  %state.i.i211 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %61 = ptrtoint ptr %state.i.i211 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state.i.i211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp29.not.i.i212 = icmp eq i32 %62, 0
  br i1 %cmp29.not.i.i212, label %land.lhs.true.i.i213.wlcore_raw_write32.exit216_crit_edge, label %if.then30.i.i214

land.lhs.true.i.i213.wlcore_raw_write32.exit216_crit_edge: ; preds = %land.lhs.true.i.i213
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_write32.exit216

if.then30.i.i214:                                 ; preds = %land.lhs.true.i.i213
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #3
  br label %wlcore_raw_write32.exit216

wlcore_raw_write32.exit216:                       ; preds = %if.then30.i.i214, %land.lhs.true.i.i213.wlcore_raw_write32.exit216_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i208)
  %cmp120 = icmp slt i32 %call27.i.i208, 0
  br i1 %cmp120, label %wlcore_raw_write32.exit216.out_crit_edge, label %wlcore_raw_write32.exit216.if.end122_crit_edge

wlcore_raw_write32.exit216.if.end122_crit_edge:   ; preds = %wlcore_raw_write32.exit216
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end122

wlcore_raw_write32.exit216.out_crit_edge:         ; preds = %wlcore_raw_write32.exit216
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end122:                                        ; preds = %wlcore_raw_write32.exit216.if.end122_crit_edge, %if.end25.i.i210.if.end122_crit_edge
  %start124 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %start124 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %start124, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #3
  %66 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer_32.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %67, align 4
  %69 = load ptr, ptr %buffer_32.i, align 4
  %70 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags.i.i, align 4
  %72 = and i32 %71, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i219 = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i219, label %lor.lhs.false.i.i221, label %if.end122.out_crit_edge

if.end122.out_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false.i.i221:                             ; preds = %if.end122
  %73 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags.i.i, align 4
  %75 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool3.not.i.i220 = icmp eq i32 %75, 0
  br i1 %tobool3.not.i.i220, label %if.end25.i.i228, label %do.end.i.i222, !prof !40

do.end.i.i222:                                    ; preds = %lor.lhs.false.i.i221
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %out

if.end25.i.i228:                                  ; preds = %lor.lhs.false.i.i221
  %76 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i224 = getelementptr inbounds %struct.wl1271_if_operations, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %write.i.i224 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write.i.i224, align 4
  %80 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i226 = tail call i32 %79(ptr noundef %81, i32 noundef 131020, ptr noundef %69, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i226)
  %tobool28.not.i.i227 = icmp eq i32 %call27.i.i226, 0
  br i1 %tobool28.not.i.i227, label %if.end25.i.i228.if.end128_crit_edge, label %land.lhs.true.i.i231

if.end25.i.i228.if.end128_crit_edge:              ; preds = %if.end25.i.i228
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end128

land.lhs.true.i.i231:                             ; preds = %if.end25.i.i228
  %state.i.i229 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %82 = ptrtoint ptr %state.i.i229 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i.i229, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp29.not.i.i230 = icmp eq i32 %83, 0
  br i1 %cmp29.not.i.i230, label %land.lhs.true.i.i231.wlcore_raw_write32.exit234_crit_edge, label %if.then30.i.i232

land.lhs.true.i.i231.wlcore_raw_write32.exit234_crit_edge: ; preds = %land.lhs.true.i.i231
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_write32.exit234

if.then30.i.i232:                                 ; preds = %land.lhs.true.i.i231
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #3
  br label %wlcore_raw_write32.exit234

wlcore_raw_write32.exit234:                       ; preds = %if.then30.i.i232, %land.lhs.true.i.i231.wlcore_raw_write32.exit234_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i226)
  %cmp126 = icmp slt i32 %call27.i.i226, 0
  br i1 %cmp126, label %wlcore_raw_write32.exit234.out_crit_edge, label %wlcore_raw_write32.exit234.if.end128_crit_edge

wlcore_raw_write32.exit234.if.end128_crit_edge:   ; preds = %wlcore_raw_write32.exit234
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end128

wlcore_raw_write32.exit234.out_crit_edge:         ; preds = %wlcore_raw_write32.exit234
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end128:                                        ; preds = %wlcore_raw_write32.exit234.if.end128_crit_edge, %if.end25.i.i228.if.end128_crit_edge
  %reg123 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 1
  %84 = ptrtoint ptr %reg123 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reg123, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #3
  %87 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buffer_32.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %88, align 4
  %90 = load ptr, ptr %buffer_32.i, align 4
  %91 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags.i.i, align 4
  %93 = and i32 %92, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i237 = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i237, label %lor.lhs.false.i.i239, label %if.end128.out_crit_edge

if.end128.out_crit_edge:                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false.i.i239:                             ; preds = %if.end128
  %94 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %flags.i.i, align 4
  %96 = and i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool3.not.i.i238 = icmp eq i32 %96, 0
  br i1 %tobool3.not.i.i238, label %if.end25.i.i246, label %do.end.i.i240, !prof !40

do.end.i.i240:                                    ; preds = %lor.lhs.false.i.i239
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %out

if.end25.i.i246:                                  ; preds = %lor.lhs.false.i.i239
  %97 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i242 = getelementptr inbounds %struct.wl1271_if_operations, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %write.i.i242 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write.i.i242, align 4
  %101 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i244 = tail call i32 %100(ptr noundef %102, i32 noundef 131016, ptr noundef %90, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i244)
  %tobool28.not.i.i245 = icmp eq i32 %call27.i.i244, 0
  br i1 %tobool28.not.i.i245, label %if.end25.i.i246.if.end134_crit_edge, label %land.lhs.true.i.i249

if.end25.i.i246.if.end134_crit_edge:              ; preds = %if.end25.i.i246
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134

land.lhs.true.i.i249:                             ; preds = %if.end25.i.i246
  %state.i.i247 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %103 = ptrtoint ptr %state.i.i247 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %state.i.i247, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp29.not.i.i248 = icmp eq i32 %104, 0
  br i1 %cmp29.not.i.i248, label %land.lhs.true.i.i249.wlcore_raw_write32.exit252_crit_edge, label %if.then30.i.i250

land.lhs.true.i.i249.wlcore_raw_write32.exit252_crit_edge: ; preds = %land.lhs.true.i.i249
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_write32.exit252

if.then30.i.i250:                                 ; preds = %land.lhs.true.i.i249
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #3
  br label %wlcore_raw_write32.exit252

wlcore_raw_write32.exit252:                       ; preds = %if.then30.i.i250, %land.lhs.true.i.i249.wlcore_raw_write32.exit252_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i244)
  %cmp132 = icmp slt i32 %call27.i.i244, 0
  br i1 %cmp132, label %wlcore_raw_write32.exit252.out_crit_edge, label %wlcore_raw_write32.exit252.if.end134_crit_edge

wlcore_raw_write32.exit252.if.end134_crit_edge:   ; preds = %wlcore_raw_write32.exit252
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134

wlcore_raw_write32.exit252.out_crit_edge:         ; preds = %wlcore_raw_write32.exit252
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end134:                                        ; preds = %wlcore_raw_write32.exit252.if.end134_crit_edge, %if.end25.i.i246.if.end134_crit_edge
  %start136 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 2, i32 1
  %105 = ptrtoint ptr %start136 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %start136, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #3
  %108 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %buffer_32.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %107, ptr %109, align 4
  %111 = load ptr, ptr %buffer_32.i, align 4
  %112 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %flags.i.i, align 4
  %114 = and i32 %113, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i255 = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i255, label %lor.lhs.false.i.i257, label %if.end134.out_crit_edge

if.end134.out_crit_edge:                          ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false.i.i257:                             ; preds = %if.end134
  %115 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %flags.i.i, align 4
  %117 = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool3.not.i.i256 = icmp eq i32 %117, 0
  br i1 %tobool3.not.i.i256, label %if.end25.i.i264, label %do.end.i.i258, !prof !40

do.end.i.i258:                                    ; preds = %lor.lhs.false.i.i257
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %out

if.end25.i.i264:                                  ; preds = %lor.lhs.false.i.i257
  %118 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i260 = getelementptr inbounds %struct.wl1271_if_operations, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %write.i.i260 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write.i.i260, align 4
  %122 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i262 = tail call i32 %121(ptr noundef %123, i32 noundef 131028, ptr noundef %111, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i262)
  %tobool28.not.i.i263 = icmp eq i32 %call27.i.i262, 0
  br i1 %tobool28.not.i.i263, label %if.end25.i.i264.if.end140_crit_edge, label %land.lhs.true.i.i267

if.end25.i.i264.if.end140_crit_edge:              ; preds = %if.end25.i.i264
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end140

land.lhs.true.i.i267:                             ; preds = %if.end25.i.i264
  %state.i.i265 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %124 = ptrtoint ptr %state.i.i265 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %state.i.i265, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp29.not.i.i266 = icmp eq i32 %125, 0
  br i1 %cmp29.not.i.i266, label %land.lhs.true.i.i267.wlcore_raw_write32.exit270_crit_edge, label %if.then30.i.i268

land.lhs.true.i.i267.wlcore_raw_write32.exit270_crit_edge: ; preds = %land.lhs.true.i.i267
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_write32.exit270

if.then30.i.i268:                                 ; preds = %land.lhs.true.i.i267
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #3
  br label %wlcore_raw_write32.exit270

wlcore_raw_write32.exit270:                       ; preds = %if.then30.i.i268, %land.lhs.true.i.i267.wlcore_raw_write32.exit270_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i262)
  %cmp138 = icmp slt i32 %call27.i.i262, 0
  br i1 %cmp138, label %wlcore_raw_write32.exit270.out_crit_edge, label %wlcore_raw_write32.exit270.if.end140_crit_edge

wlcore_raw_write32.exit270.if.end140_crit_edge:   ; preds = %wlcore_raw_write32.exit270
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end140

wlcore_raw_write32.exit270.out_crit_edge:         ; preds = %wlcore_raw_write32.exit270
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end140:                                        ; preds = %wlcore_raw_write32.exit270.if.end140_crit_edge, %if.end25.i.i264.if.end140_crit_edge
  %mem2135 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 2
  %126 = ptrtoint ptr %mem2135 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mem2135, align 4
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #3
  %129 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %buffer_32.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %128, ptr %130, align 4
  %132 = load ptr, ptr %buffer_32.i, align 4
  %133 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %flags.i.i, align 4
  %135 = and i32 %134, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i.i273 = icmp eq i32 %135, 0
  br i1 %tobool.not.i.i273, label %lor.lhs.false.i.i275, label %if.end140.out_crit_edge

if.end140.out_crit_edge:                          ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false.i.i275:                             ; preds = %if.end140
  %136 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %flags.i.i, align 4
  %138 = and i32 %137, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool3.not.i.i274 = icmp eq i32 %138, 0
  br i1 %tobool3.not.i.i274, label %if.end25.i.i282, label %do.end.i.i276, !prof !40

do.end.i.i276:                                    ; preds = %lor.lhs.false.i.i275
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %out

if.end25.i.i282:                                  ; preds = %lor.lhs.false.i.i275
  %139 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i278 = getelementptr inbounds %struct.wl1271_if_operations, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %write.i.i278 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write.i.i278, align 4
  %143 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i280 = tail call i32 %142(ptr noundef %144, i32 noundef 131024, ptr noundef %132, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i280)
  %tobool28.not.i.i281 = icmp eq i32 %call27.i.i280, 0
  br i1 %tobool28.not.i.i281, label %if.end25.i.i282.if.end146_crit_edge, label %land.lhs.true.i.i285

if.end25.i.i282.if.end146_crit_edge:              ; preds = %if.end25.i.i282
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

land.lhs.true.i.i285:                             ; preds = %if.end25.i.i282
  %state.i.i283 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %145 = ptrtoint ptr %state.i.i283 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %state.i.i283, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp29.not.i.i284 = icmp eq i32 %146, 0
  br i1 %cmp29.not.i.i284, label %land.lhs.true.i.i285.wlcore_raw_write32.exit288_crit_edge, label %if.then30.i.i286

land.lhs.true.i.i285.wlcore_raw_write32.exit288_crit_edge: ; preds = %land.lhs.true.i.i285
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_write32.exit288

if.then30.i.i286:                                 ; preds = %land.lhs.true.i.i285
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #3
  br label %wlcore_raw_write32.exit288

wlcore_raw_write32.exit288:                       ; preds = %if.then30.i.i286, %land.lhs.true.i.i285.wlcore_raw_write32.exit288_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i280)
  %cmp144 = icmp slt i32 %call27.i.i280, 0
  br i1 %cmp144, label %wlcore_raw_write32.exit288.out_crit_edge, label %wlcore_raw_write32.exit288.if.end146_crit_edge

wlcore_raw_write32.exit288.if.end146_crit_edge:   ; preds = %wlcore_raw_write32.exit288
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

wlcore_raw_write32.exit288.out_crit_edge:         ; preds = %wlcore_raw_write32.exit288
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end146:                                        ; preds = %wlcore_raw_write32.exit288.if.end146_crit_edge, %if.end25.i.i282.if.end146_crit_edge
  %start148 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 3, i32 1
  %147 = ptrtoint ptr %start148 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %start148, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #3
  %150 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %buffer_32.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %149, ptr %151, align 4
  %153 = load ptr, ptr %buffer_32.i, align 4
  %154 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %flags.i.i, align 4
  %156 = and i32 %155, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i.i291 = icmp eq i32 %156, 0
  br i1 %tobool.not.i.i291, label %lor.lhs.false.i.i293, label %if.end146.out_crit_edge

if.end146.out_crit_edge:                          ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false.i.i293:                             ; preds = %if.end146
  %157 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %flags.i.i, align 4
  %159 = and i32 %158, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool3.not.i.i292 = icmp eq i32 %159, 0
  br i1 %tobool3.not.i.i292, label %if.end25.i.i300, label %do.end.i.i294, !prof !40

do.end.i.i294:                                    ; preds = %lor.lhs.false.i.i293
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %out

if.end25.i.i300:                                  ; preds = %lor.lhs.false.i.i293
  %160 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i296 = getelementptr inbounds %struct.wl1271_if_operations, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %write.i.i296 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write.i.i296, align 4
  %164 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i298 = tail call i32 %163(ptr noundef %165, i32 noundef 131036, ptr noundef %153, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i298)
  %tobool28.not.i.i299 = icmp eq i32 %call27.i.i298, 0
  br i1 %tobool28.not.i.i299, label %if.end25.i.i300.if.end152_crit_edge, label %land.lhs.true.i.i303

if.end25.i.i300.if.end152_crit_edge:              ; preds = %if.end25.i.i300
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end152

land.lhs.true.i.i303:                             ; preds = %if.end25.i.i300
  %state.i.i301 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %166 = ptrtoint ptr %state.i.i301 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %state.i.i301, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp29.not.i.i302 = icmp eq i32 %167, 0
  br i1 %cmp29.not.i.i302, label %land.lhs.true.i.i303.wlcore_raw_write32.exit306_crit_edge, label %if.then30.i.i304

land.lhs.true.i.i303.wlcore_raw_write32.exit306_crit_edge: ; preds = %land.lhs.true.i.i303
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_write32.exit306

if.then30.i.i304:                                 ; preds = %land.lhs.true.i.i303
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #3
  br label %wlcore_raw_write32.exit306

wlcore_raw_write32.exit306:                       ; preds = %if.then30.i.i304, %land.lhs.true.i.i303.wlcore_raw_write32.exit306_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i298)
  %cmp150 = icmp slt i32 %call27.i.i298, 0
  br i1 %cmp150, label %wlcore_raw_write32.exit306.out_crit_edge, label %wlcore_raw_write32.exit306.if.end152_crit_edge

wlcore_raw_write32.exit306.if.end152_crit_edge:   ; preds = %wlcore_raw_write32.exit306
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end152

wlcore_raw_write32.exit306.out_crit_edge:         ; preds = %wlcore_raw_write32.exit306
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end152:                                        ; preds = %wlcore_raw_write32.exit306.if.end152_crit_edge, %if.end25.i.i300.if.end152_crit_edge
  %mem3147 = getelementptr inbounds %struct.wlcore_partition_set, ptr %p, i32 0, i32 3
  %168 = ptrtoint ptr %mem3147 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %mem3147, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #3
  %171 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %buffer_32.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %170, ptr %172, align 4
  %174 = load ptr, ptr %buffer_32.i, align 4
  %175 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %flags.i.i, align 4
  %177 = and i32 %176, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.not.i.i309 = icmp eq i32 %177, 0
  br i1 %tobool.not.i.i309, label %lor.lhs.false.i.i311, label %if.end152.out_crit_edge

if.end152.out_crit_edge:                          ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false.i.i311:                             ; preds = %if.end152
  %178 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %flags.i.i, align 4
  %180 = and i32 %179, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool3.not.i.i310 = icmp eq i32 %180, 0
  br i1 %tobool3.not.i.i310, label %if.end25.i.i318, label %do.end.i.i312, !prof !40

do.end.i.i312:                                    ; preds = %lor.lhs.false.i.i311
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %out

if.end25.i.i318:                                  ; preds = %lor.lhs.false.i.i311
  %181 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i314 = getelementptr inbounds %struct.wl1271_if_operations, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %write.i.i314 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write.i.i314, align 4
  %185 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i316 = tail call i32 %184(ptr noundef %186, i32 noundef 131032, ptr noundef %174, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i316)
  %tobool28.not.i.i317 = icmp eq i32 %call27.i.i316, 0
  br i1 %tobool28.not.i.i317, label %if.end25.i.i318.out_crit_edge, label %land.lhs.true.i.i321

if.end25.i.i318.out_crit_edge:                    ; preds = %if.end25.i.i318
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

land.lhs.true.i.i321:                             ; preds = %if.end25.i.i318
  %state.i.i319 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %187 = ptrtoint ptr %state.i.i319 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %state.i.i319, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp29.not.i.i320 = icmp eq i32 %188, 0
  br i1 %cmp29.not.i.i320, label %land.lhs.true.i.i321.out_crit_edge, label %if.then30.i.i322

land.lhs.true.i.i321.out_crit_edge:               ; preds = %land.lhs.true.i.i321
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.then30.i.i322:                                 ; preds = %land.lhs.true.i.i321
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #3
  br label %out

out:                                              ; preds = %if.then30.i.i322, %land.lhs.true.i.i321.out_crit_edge, %if.end25.i.i318.out_crit_edge, %do.end.i.i312, %if.end152.out_crit_edge, %wlcore_raw_write32.exit306.out_crit_edge, %do.end.i.i294, %if.end146.out_crit_edge, %wlcore_raw_write32.exit288.out_crit_edge, %do.end.i.i276, %if.end140.out_crit_edge, %wlcore_raw_write32.exit270.out_crit_edge, %do.end.i.i258, %if.end134.out_crit_edge, %wlcore_raw_write32.exit252.out_crit_edge, %do.end.i.i240, %if.end128.out_crit_edge, %wlcore_raw_write32.exit234.out_crit_edge, %do.end.i.i222, %if.end122.out_crit_edge, %wlcore_raw_write32.exit216.out_crit_edge, %do.end.i.i204, %if.end116.out_crit_edge, %wlcore_raw_write32.exit.out_crit_edge, %do.end.i.i, %do.end111.out_crit_edge
  %ret.0 = phi i32 [ %call27.i.i, %wlcore_raw_write32.exit.out_crit_edge ], [ %call27.i.i208, %wlcore_raw_write32.exit216.out_crit_edge ], [ %call27.i.i226, %wlcore_raw_write32.exit234.out_crit_edge ], [ %call27.i.i244, %wlcore_raw_write32.exit252.out_crit_edge ], [ %call27.i.i262, %wlcore_raw_write32.exit270.out_crit_edge ], [ %call27.i.i280, %wlcore_raw_write32.exit288.out_crit_edge ], [ %call27.i.i298, %wlcore_raw_write32.exit306.out_crit_edge ], [ -5, %do.end.i.i312 ], [ -5, %if.end152.out_crit_edge ], [ %call27.i.i316, %if.then30.i.i322 ], [ %call27.i.i316, %land.lhs.true.i.i321.out_crit_edge ], [ 0, %if.end25.i.i318.out_crit_edge ], [ -5, %do.end.i.i ], [ -5, %do.end111.out_crit_edge ], [ -5, %do.end.i.i204 ], [ -5, %if.end116.out_crit_edge ], [ -5, %do.end.i.i222 ], [ -5, %if.end122.out_crit_edge ], [ -5, %do.end.i.i240 ], [ -5, %if.end128.out_crit_edge ], [ -5, %do.end.i.i258 ], [ -5, %if.end134.out_crit_edge ], [ -5, %do.end.i.i276 ], [ -5, %if.end140.out_crit_edge ], [ -5, %do.end.i.i294 ], [ -5, %if.end146.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_io_reset(ptr nocapture noundef readonly %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %if_ops = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %0 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_ops, align 8
  %reset = getelementptr inbounds %struct.wl1271_if_operations, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void %3(ptr noundef %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_io_init(ptr nocapture noundef readonly %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %if_ops = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %0 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_ops, align 8
  %init = getelementptr inbounds %struct.wl1271_if_operations, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void %3(ptr noundef %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_wlcore_disable_interrupts, !1, !"__ksymtab_wlcore_disable_interrupts", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 35, i32 1}
!2 = !{ptr @__ksymtab_wlcore_disable_interrupts_nosync, !3, !"__ksymtab_wlcore_disable_interrupts_nosync", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 41, i32 1}
!4 = !{ptr @__ksymtab_wlcore_enable_interrupts, !5, !"__ksymtab_wlcore_enable_interrupts", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 47, i32 1}
!6 = !{ptr @__ksymtab_wlcore_synchronize_interrupts, !7, !"__ksymtab_wlcore_synchronize_interrupts", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 53, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 84, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_wlcore_translate_addr, !12, !"__ksymtab_wlcore_translate_addr", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 87, i32 1}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 131, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wlcore_set_partition.__UNIQUE_ID_ddebug352, !14, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 133, i32 2}
!20 = !{ptr @wlcore_set_partition.__UNIQUE_ID_ddebug353, !19, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 135, i32 2}
!23 = !{ptr @wlcore_set_partition.__UNIQUE_ID_ddebug354, !22, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 137, i32 2}
!26 = !{ptr @wlcore_set_partition.__UNIQUE_ID_ddebug355, !25, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!27 = !{ptr @__ksymtab_wlcore_set_partition, !28, !"__ksymtab_wlcore_set_partition", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ti/wlcore/io.c", i32 186, i32 1}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ti/wlcore/io.h", i32 51, i32 6}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2148957347, i64 2148957352, i64 2148957365, i64 2148957409, i64 2148957443, i64 2148957464}
