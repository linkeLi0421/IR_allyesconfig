; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/p54/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/p54/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+p54_parse_eeprom\22, \22a\22\09"
module asm "\09.weak\09__crc_p54_parse_eeprom\09\09\09\09"
module asm "\09.long\09__crc_p54_parse_eeprom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p54_parse_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22p54_parse_eeprom\22\09\09\09\09\09"
module asm "__kstrtabns_p54_parse_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+p54_read_eeprom\22, \22a\22\09"
module asm "\09.weak\09__crc_p54_read_eeprom\09\09\09\09"
module asm "\09.long\09__crc_p54_read_eeprom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p54_read_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22p54_read_eeprom\22\09\09\09\09\09"
module asm "__kstrtabns_p54_read_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.p54_rssi_db_entry = type { i16, i16, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.p54_common = type { ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, i8, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, %struct.spinlock, [8 x %struct.p54_tx_queue_stats], [8 x %struct.p54_edcf_queue_param], i16, i8, i8, i32, ptr, ptr, ptr, i32, %struct.completion, i8, %struct.anon.132, i32, ptr, i32, ptr, ptr, ptr, [6 x ptr], [6 x i8], [6 x i8], [4 x [6 x i8]], i16, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, %struct.completion, i8, i8, ptr, [4 x %struct.p54_led_dev], %struct.delayed_work, i16, %struct.ieee80211_low_level_stats, %struct.delayed_work, ptr, %struct.completion, %struct.mutex }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p54_tx_queue_stats = type { i32, i32, i32 }
%struct.p54_edcf_queue_param = type { i16, i16, i16, i16 }
%struct.anon.132 = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.p54_led_dev = type { ptr, %struct.led_classdev, [32 x i8], i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.p54_cal_database = type { i32, i32, i32, i32, [0 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.eeprom_pda_wrap = type { i32, i16, i16, i32, [0 x i8] }
%struct.pda_entry = type { i16, i16, [0 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.pda_pa_curve_data_sample_rev0 = type { i8, i8, i8 }
%struct.p54_pa_curve_data_sample = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.exp_if = type { i16, i16, i16, i16, i16 }
%struct.pda_rssi_cal_ext_entry = type { i16, i16, i16 }
%struct.pda_rssi_cal_entry = type { i16, i16 }
%struct.p54_channel_list = type { ptr, i32, i32, [6 x i32] }
%struct.pda_iq_autocal_entry = type { i16, %struct.p54_iq_autocal_entry }
%struct.p54_iq_autocal_entry = type { [4 x i16] }
%struct.p54_channel_entry = type { i16, i16, i32, i32, i32 }
%struct.pda_channel_output_limit_longbow = type { i16, [3 x %struct.pda_channel_output_limit_point_longbow] }
%struct.pda_channel_output_limit_point_longbow = type { i16, i16, i16, i16 }
%struct.pda_channel_output_limit = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }

@p54_rssi_default = internal global { %struct.p54_rssi_db_entry, [22 x i8] } { %struct.p54_rssi_db_entry { i16 0, i16 130, i16 -398, i16 0, i16 0 }, [22 x i8] zeroinitializer }, align 32
@p54_parse_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 785, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown curve data revision %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p54_parse_eeprom\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/intersil/p54/eeprom.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p54_parse_eeprom._entry_ptr = internal global ptr @p54_parse_eeprom._entry, section ".printk_index", align 4
@p54_parse_eeprom._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 867, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"eeprom failed checksum test!\0A\00", [34 x i8] zeroinitializer }, align 32
@p54_parse_eeprom._entry_ptr.7 = internal global ptr @p54_parse_eeprom._entry.5, section ".printk_index", align 4
@p54_parse_eeprom._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 882, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unexpected end of eeprom data.\0A\00", [32 x i8] zeroinitializer }, align 32
@p54_parse_eeprom._entry_ptr.10 = internal global ptr @p54_parse_eeprom._entry.8, section ".printk_index", align 4
@p54_parse_eeprom._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 890, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"not all required entries found in eeprom!\0A\00", [53 x i8] zeroinitializer }, align 32
@p54_parse_eeprom._entry_ptr.13 = internal global ptr @p54_parse_eeprom._entry.11, section ".printk_index", align 4
@p54_parse_eeprom._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 918, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid hwaddr! Using randomly generated MAC addr\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@p54_parse_eeprom._entry_ptr.17 = internal global ptr @p54_parse_eeprom._entry.14, section ".printk_index", align 4
@p54_parse_eeprom._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 927, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hwaddr %pM, MAC:isl38%02x RF:%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@p54_parse_eeprom._entry_ptr.21 = internal global ptr @p54_parse_eeprom._entry.18, section ".printk_index", align 4
@p54_rf_chips = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [32 x i8] zeroinitializer }, align 32
@p54_parse_eeprom._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 943, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"eeprom parse failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@p54_parse_eeprom._entry_ptr.24 = internal global ptr @p54_parse_eeprom._entry.22, section ".printk_index", align 4
@__kstrtab_p54_parse_eeprom = external dso_local constant [0 x i8], align 1
@__kstrtabns_p54_parse_eeprom = external dso_local constant [0 x i8], align 1
@__ksymtab_p54_parse_eeprom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p54_parse_eeprom to i32), ptr @__kstrtab_p54_parse_eeprom, ptr @__kstrtabns_p54_parse_eeprom }, section "___ksymtab_gpl+p54_parse_eeprom", align 4
@__kstrtab_p54_read_eeprom = external dso_local constant [0 x i8], align 1
@__kstrtabns_p54_read_eeprom = external dso_local constant [0 x i8], align 1
@__ksymtab_p54_read_eeprom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p54_read_eeprom to i32), ptr @__kstrtab_p54_read_eeprom, ptr @__kstrtabns_p54_read_eeprom }, section "___ksymtab_gpl+p54_read_eeprom", align 4
@p54_convert_output_limits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 674, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unknown output power db revision:%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"p54_convert_output_limits\00", [38 x i8] zeroinitializer }, align 32
@p54_convert_output_limits._entry_ptr = internal global ptr @p54_convert_output_limits._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@p54_parse_default_country._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 643, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"found possible invalid default country eeprom entry. (entry size: %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"p54_parse_default_country\00", [38 x i8] zeroinitializer }, align 32
@p54_parse_default_country._entry_ptr = internal global ptr @p54_parse_default_country._entry, section ".printk_index", align 4
@p54_parse_default_country.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p54common\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"country:\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@p54_parse_default_country._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 648, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"please report this issue.\0A\00", [37 x i8] zeroinitializer }, align 32
@p54_parse_default_country._entry_ptr.34 = internal global ptr @p54_parse_default_country._entry.32, section ".printk_index", align 4
@p54_parse_rssical._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 528, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rssical size mismatch.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"p54_parse_rssical\00", [46 x i8] zeroinitializer }, align 32
@p54_parse_rssical._entry_ptr = internal global ptr @p54_parse_rssical._entry, section ".printk_index", align 4
@p54_parse_rssical._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 545, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid rssi database.\0A\00", [40 x i8] zeroinitializer }, align 32
@p54_parse_rssical._entry_ptr.39 = internal global ptr @p54_parse_rssical._entry.37, section ".printk_index", align 4
@p54_parse_rssical._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 596, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rssi calibration data packing type:(%x) len:%d.\0A\00", [47 x i8] zeroinitializer }, align 32
@p54_parse_rssical._entry_ptr.42 = internal global ptr @p54_parse_rssical._entry.40, section ".printk_index", align 4
@p54_parse_rssical.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.36, ptr @.str.2, ptr @.str.43, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rssical:\00", [23 x i8] zeroinitializer }, align 32
@p54_parse_rssical._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.36, ptr @.str.2, i32 600, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@p54_parse_rssical._entry_ptr.45 = internal global ptr @p54_parse_rssical._entry.44, section ".printk_index", align 4
@p54_generate_channel_lists._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Unsupported or damaged EEPROM detected. You may not be able to use all channels.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"p54_generate_channel_lists\00", [37 x i8] zeroinitializer }, align 32
@p54_generate_channel_lists._entry_ptr = internal global ptr @p54_generate_channel_lists._entry, section ".printk_index", align 4
@p54_generate_band._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s%s%s is/are missing for channel:%d [%d MHz].\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"p54_generate_band\00", [46 x i8] zeroinitializer }, align 32
@p54_generate_band._entry_ptr = internal global ptr @p54_generate_band._entry, section ".printk_index", align 4
@.str.50 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" [iqauto calibration data]\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" [output power limits]\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" [curve data]\00", [18 x i8] zeroinitializer }, align 32
@p54_generate_band._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.49, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Disabling totally damaged %d GHz band\0A\00", [57 x i8] zeroinitializer }, align 32
@p54_generate_band._entry_ptr.56 = internal global ptr @p54_generate_band._entry.54, section ".printk_index", align 4
@p54_bgrates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 1, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 1, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 0 }], [48 x i8] zeroinitializer }, align 32
@p54_arates = internal global { [8 x %struct.ieee80211_rate], [32 x i8] } { [8 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 0 }], [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INVALID-0\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Duette3\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Duette2\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Frisbee\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Xbow\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Longbow\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INVALID-6\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INVALID-7\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 16, i64 0, i64 257, i64 4097, i64 4098, i64 4104, i64 6402, i64 6403, i64 6404, i64 6405, i64 6406, i64 6408, i64 45149, i64 48879, i64 51967]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"p54_rssi_default\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 55, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 783, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 866, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 882, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 889, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 917, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 925, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"p54_rf_chips\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 514, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 943, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 673, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 641, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 645, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 648, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 528, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 545, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 594, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 598, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 600, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 330, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 180, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 206, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [12 x i8] c"p54_bgrates\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 29, i32 30 }
@___asan_gen_.233 = private unnamed_addr constant [11 x i8] c"p54_arates\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 44, i32 30 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 514, i32 39 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 514, i32 52 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 514, i32 63 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 515, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 515, i32 13 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 515, i32 21 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 515, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [46 x i8] c"../drivers/net/wireless/intersil/p54/eeprom.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 515, i32 45 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__ksymtab_p54_parse_eeprom, ptr @__ksymtab_p54_read_eeprom, ptr @p54_convert_output_limits._entry, ptr @p54_convert_output_limits._entry_ptr, ptr @p54_generate_band._entry, ptr @p54_generate_band._entry.54, ptr @p54_generate_band._entry_ptr, ptr @p54_generate_band._entry_ptr.56, ptr @p54_generate_channel_lists._entry, ptr @p54_generate_channel_lists._entry_ptr, ptr @p54_parse_default_country._entry, ptr @p54_parse_default_country._entry.32, ptr @p54_parse_default_country._entry_ptr, ptr @p54_parse_default_country._entry_ptr.34, ptr @p54_parse_eeprom._entry, ptr @p54_parse_eeprom._entry.11, ptr @p54_parse_eeprom._entry.14, ptr @p54_parse_eeprom._entry.18, ptr @p54_parse_eeprom._entry.22, ptr @p54_parse_eeprom._entry.5, ptr @p54_parse_eeprom._entry.8, ptr @p54_parse_eeprom._entry_ptr, ptr @p54_parse_eeprom._entry_ptr.10, ptr @p54_parse_eeprom._entry_ptr.13, ptr @p54_parse_eeprom._entry_ptr.17, ptr @p54_parse_eeprom._entry_ptr.21, ptr @p54_parse_eeprom._entry_ptr.24, ptr @p54_parse_eeprom._entry_ptr.7, ptr @p54_parse_rssical._entry, ptr @p54_parse_rssical._entry.37, ptr @p54_parse_rssical._entry.40, ptr @p54_parse_rssical._entry.44, ptr @p54_parse_rssical._entry_ptr, ptr @p54_parse_rssical._entry_ptr.39, ptr @p54_parse_rssical._entry_ptr.42, ptr @p54_parse_rssical._entry_ptr.45, ptr @p54_rssi_default, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @p54_rf_chips, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @p54_bgrates, ptr @p54_arates, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_rssi_default to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_eeprom._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_eeprom._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_eeprom._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_eeprom._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_eeprom._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_rf_chips to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_eeprom._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_convert_output_limits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_default_country._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_default_country._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_rssical._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_rssical._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_rssical._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_rssical._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_generate_channel_lists._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_generate_band._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_generate_band._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_bgrates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_arates to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @p54_rssi_find(ptr nocapture noundef readonly %priv, i16 noundef zeroext %freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rssi_db = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 38
  %0 = ptrtoint ptr %rssi_db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rssi_db, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.p54_cal_database, ptr %1, i32 0, i32 4
  %offset = getelementptr inbounds %struct.p54_cal_database, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %3
  %conv = zext i16 %freq to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp64.not = icmp eq i32 %5, 0
  br i1 %cmp64.not, label %if.end.for.end.thread_crit_edge, label %for.body.lr.ph

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end
  %6 = add i16 %freq, -2412
  call void @__sanitizer_cov_trace_const_cmp2(i16 73, i16 %6)
  %7 = icmp ult i16 %6, 73
  %8 = add i16 %freq, -4920
  call void @__sanitizer_cov_trace_const_cmp2(i16 906, i16 %8)
  %9 = icmp ult i16 %8, 906
  %spec.select.i.i = select i1 %9, i32 1, i32 -1
  %retval.0.i.i = select i1 %7, i32 0, i32 %spec.select.i.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %found.067 = phi i32 [ -1, %for.body.lr.ph ], [ %found.1, %for.inc.for.body_crit_edge ]
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.p54_rssi_db_entry, ptr %add.ptr, i32 %i.065
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %12 = add i16 %11, -2412
  call void @__sanitizer_cov_trace_const_cmp2(i16 73, i16 %12)
  %13 = icmp ult i16 %12, 73
  %14 = add i16 %11, -4920
  call void @__sanitizer_cov_trace_const_cmp2(i16 906, i16 %14)
  %15 = icmp ult i16 %14, 906
  %spec.select.i2.i = select i1 %15, i32 1, i32 -1
  %retval.0.i3.i = select i1 %13, i32 0, i32 %spec.select.i2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %retval.0.i3.i)
  %cmp.i.not = icmp eq i32 %retval.0.i.i, %retval.0.i3.i
  br i1 %cmp.i.not, label %if.end8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %found.067)
  %cmp9 = icmp eq i32 %found.067, -1
  br i1 %cmp9, label %if.end8.for.inc_crit_edge, label %if.end11

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %if.end8
  %conv14 = zext i16 %11 to i32
  %sub = sub nsw i32 %conv, %conv14
  %16 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %arrayidx20 = getelementptr %struct.p54_rssi_db_entry, ptr %add.ptr, i32 %found.067
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx20, align 2
  %conv22 = zext i16 %18 to i32
  %sub23 = sub nsw i32 %conv, %conv22
  %19 = tail call i32 @llvm.abs.i32(i32 %sub23, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %19)
  %cmp32 = icmp ult i32 %16, %19
  br i1 %cmp32, label %if.end11.for.inc_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %found.1 = phi i32 [ %found.067, %for.body.for.inc_crit_edge ], [ %i.065, %if.end8.for.inc_crit_edge ], [ %i.065, %if.end11.for.inc_crit_edge ]
  %inc = add nuw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %found.0.lcssa = phi i32 [ %found.1, %for.inc.for.end_crit_edge ], [ %found.067, %if.end11.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0.lcssa)
  %cmp35 = icmp slt i32 %found.0.lcssa, 0
  %arrayidx39 = getelementptr %struct.p54_rssi_db_entry, ptr %add.ptr, i32 %found.0.lcssa
  br i1 %cmp35, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @p54_rssi_default, %entry.cleanup_crit_edge ], [ @p54_rssi_default, %for.end.thread ], [ %arrayidx39, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_parse_eeprom(ptr nocapture noundef readonly %dev, ptr noundef %eeprom, i32 noundef %len) #2 align 64 {
entry:
  %perm_addr243 = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %add.ptr = getelementptr i8, ptr %eeprom, i32 %len
  %data = getelementptr inbounds %struct.eeprom_pda_wrap, ptr %eeprom, i32 0, i32 4
  %len3 = getelementptr inbounds %struct.eeprom_pda_wrap, ptr %eeprom, i32 0, i32 2
  %2 = ptrtoint ptr %len3 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len3, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %add.ptr4 = getelementptr i8, ptr %data, i32 %conv
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 -4
  %cmp.not651 = icmp ugt ptr %add.ptr4, %add.ptr5
  br i1 %cmp.not651, label %entry.do.end177_crit_edge, label %while.body.lr.ph

entry.do.end177_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end177

while.body.lr.ph:                                 ; preds = %entry
  %curve_data139 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 36
  %output_limit123 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 37
  %rssi_db = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 38
  %version = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 17
  %wiphy.i472 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %iq_autocal = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 34
  %iq_autocal_len = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 35
  br label %while.body

while.body:                                       ; preds = %sw.epilog169.while.body_crit_edge, %while.body.lr.ph
  %crc16.0659 = phi i16 [ -1, %while.body.lr.ph ], [ %call170, %sw.epilog169.while.body_crit_edge ]
  %synth.0657 = phi i16 [ 0, %while.body.lr.ph ], [ %synth.3, %sw.epilog169.while.body_crit_edge ]
  %entry2.0652 = phi ptr [ %add.ptr4, %while.body.lr.ph ], [ %add.ptr173, %sw.epilog169.while.body_crit_edge ]
  %5 = ptrtoint ptr %entry2.0652 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %entry2.0652, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv8 = zext i16 %7 to i32
  %sub = shl nuw nsw i32 %conv8, 1
  %shl = add nsw i32 %sub, -2
  %add.ptr9 = getelementptr i8, ptr %entry2.0652, i32 4
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 %shl
  %cmp11 = icmp ugt ptr %add.ptr10, %add.ptr
  br i1 %cmp11, label %while.body.do.end177_crit_edge, label %if.end

while.body.do.end177_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end177

if.end:                                           ; preds = %while.body
  %code = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 0, i32 1
  %8 = ptrtoint ptr %code to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %code, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %if.end.sw.epilog169_crit_edge [
    i16 257, label %sw.bb
    i16 6403, label %sw.bb20
    i16 6404, label %sw.bb28
    i16 6406, label %sw.bb46
    i16 4104, label %sw.bb54
    i16 4097, label %sw.bb57
    i16 4098, label %sw.bb73
    i16 6402, label %if.end.sw.bb81_crit_edge
    i16 6405, label %if.end.sw.bb81_crit_edge753
    i16 6408, label %if.end.sw.bb81_crit_edge754
    i16 -13569, label %sw.bb89
    i16 -16657, label %sw.bb119
    i16 -20387, label %sw.bb135
    i16 0, label %sw.bb151
  ]

if.end.sw.bb81_crit_edge754:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

if.end.sw.bb81_crit_edge753:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

if.end.sw.bb81_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

if.end.sw.epilog169_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shl)
  %cmp14.not = icmp eq i32 %shl, 6
  br i1 %cmp14.not, label %if.end17, label %sw.bb.sw.epilog169_crit_edge

sw.bb.sw.epilog169_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

if.end17:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy.i472, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %perm_addr.i, ptr %add.ptr9, i32 6)
  br label %sw.epilog169

sw.bb20:                                          ; preds = %if.end
  %15 = ptrtoint ptr %output_limit123 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %output_limit123, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end22, label %sw.bb20.sw.epilog169_crit_edge

sw.bb20.sw.epilog169_crit_edge:                   ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

if.end22:                                         ; preds = %sw.bb20
  %17 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp.i = icmp eq i32 %shl, 0
  br i1 %cmp.i, label %if.end22.err264_crit_edge, label %if.end.i

if.end22.err264_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err264

if.end.i:                                         ; preds = %if.end22
  %19 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp2.not.i = icmp eq i8 %20, 0
  br i1 %cmp2.not.i, label %if.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy.i472, align 8
  %dev5.i = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.25, i32 noundef %conv.i) #12
  br label %err264

if.end8.i:                                        ; preds = %if.end.i
  %arrayidx9.i = getelementptr i8, ptr %entry2.0652, i32 5
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %24 to i32
  %mul.i = shl nuw nsw i32 %conv10.i, 3
  %add.i = or i32 %mul.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shl)
  %cmp11.i = icmp ugt i32 %add.i, %shl
  br i1 %cmp11.i, label %if.end8.i.err264_crit_edge, label %if.end8.i.i

if.end8.i.err264_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err264

if.end8.i.i:                                      ; preds = %if.end8.i
  %add18.i = add nuw nsw i32 %mul.i, 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add18.i, i32 noundef 3264) #13
  %output_limit.i = getelementptr inbounds %struct.p54_common, ptr %18, i32 0, i32 37
  %25 = ptrtoint ptr %output_limit.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i, ptr %output_limit.i, align 8
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.err264_crit_edge, label %p54_convert_output_limits.exit

if.end8.i.i.err264_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err264

p54_convert_output_limits.exit:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %offset.i = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %offset.i, align 8
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx9.i, align 1
  %conv24.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %output_limit.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %output_limit.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv24.i, ptr %30, align 4
  %32 = load ptr, ptr %output_limit.i, align 8
  %entry_size.i = getelementptr inbounds %struct.p54_cal_database, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %entry_size.i, align 4
  %34 = load ptr, ptr %output_limit.i, align 8
  %entry_size28.i = getelementptr inbounds %struct.p54_cal_database, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %entry_size28.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %entry_size28.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 4
  %mul31.i = mul i32 %38, %36
  %offset33.i = getelementptr inbounds %struct.p54_cal_database, ptr %34, i32 0, i32 2
  %39 = ptrtoint ptr %offset33.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset33.i, align 4
  %add34.i = add i32 %mul31.i, %40
  %len36.i = getelementptr inbounds %struct.p54_cal_database, ptr %34, i32 0, i32 3
  %41 = ptrtoint ptr %len36.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add34.i, ptr %len36.i, align 4
  %42 = load ptr, ptr %output_limit.i, align 8
  %data38.i = getelementptr inbounds %struct.p54_cal_database, ptr %42, i32 0, i32 4
  %arrayidx39.i = getelementptr %struct.pda_entry, ptr %entry2.0652, i32 1, i32 1
  %43 = load i8, ptr %arrayidx9.i, align 1
  %conv41.i = zext i8 %43 to i32
  %mul42.i = shl nuw nsw i32 %conv41.i, 3
  %44 = call ptr @memcpy(ptr %data38.i, ptr %arrayidx39.i, i32 %mul42.i)
  br label %sw.epilog169

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shl)
  %cmp31 = icmp ult i32 %shl, 4
  br i1 %cmp31, label %sw.bb28.err264_crit_edge, label %if.end34

sw.bb28.err264_crit_edge:                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %err264

if.end34:                                         ; preds = %sw.bb28
  %45 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr9, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %46, label %do.end [
    i8 0, label %sw.bb36
    i8 1, label %sw.bb38
  ]

sw.bb36:                                          ; preds = %if.end34
  %48 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv1, align 8
  %points_per_channel.i = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 1, i32 1
  %50 = ptrtoint ptr %points_per_channel.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %points_per_channel.i, align 1
  %conv.i407 = zext i8 %51 to i32
  %mul.i408 = shl nuw nsw i32 %conv.i407, 3
  %add.i409 = or i32 %mul.i408, 2
  %channels.i = getelementptr i8, ptr %entry2.0652, i32 5
  %52 = ptrtoint ptr %channels.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %channels.i, align 1
  %conv2.i = zext i8 %53 to i32
  %mul3.i = mul nuw nsw i32 %add.i409, %conv2.i
  %add5.i = add nuw nsw i32 %mul3.i, 20
  %call9.i.i423 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add5.i, i32 noundef 3264) #13
  %curve_data6.i = getelementptr inbounds %struct.p54_common, ptr %49, i32 0, i32 36
  %54 = ptrtoint ptr %curve_data6.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i.i423, ptr %curve_data6.i, align 4
  %tobool.not.i426 = icmp eq ptr %call9.i.i423, null
  br i1 %tobool.not.i426, label %sw.bb36.err264_crit_edge, label %if.end.i430

sw.bb36.err264_crit_edge:                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %err264

if.end.i430:                                      ; preds = %sw.bb36
  %add4.i = add nuw nsw i32 %mul3.i, 4
  %55 = ptrtoint ptr %channels.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %channels.i, align 1
  %conv9.i = zext i8 %56 to i32
  %57 = ptrtoint ptr %call9.i.i423 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv9.i, ptr %call9.i.i423, align 128
  %58 = ptrtoint ptr %points_per_channel.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %points_per_channel.i, align 1
  %conv12.i = zext i8 %59 to i32
  %mul13.i = shl nuw nsw i32 %conv12.i, 3
  %add14.i = or i32 %mul13.i, 2
  %60 = ptrtoint ptr %curve_data6.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %curve_data6.i, align 4
  %entry_size.i428 = getelementptr inbounds %struct.p54_cal_database, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %entry_size.i428 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add14.i, ptr %entry_size.i428, align 4
  %63 = load ptr, ptr %curve_data6.i, align 4
  %offset.i429 = getelementptr inbounds %struct.p54_cal_database, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %offset.i429 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %offset.i429, align 4
  %65 = load ptr, ptr %curve_data6.i, align 4
  %len.i = getelementptr inbounds %struct.p54_cal_database, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add4.i, ptr %len.i, align 4
  %67 = load ptr, ptr %curve_data6.i, align 4
  %data.i = getelementptr inbounds %struct.p54_cal_database, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %add.ptr9, align 1
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %data.i, align 4
  %71 = load i8, ptr %channels.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp155.not.i = icmp eq i8 %71, 0
  br i1 %cmp155.not.i, label %if.end.i430.sw.epilog169_crit_edge, label %for.body.preheader.i

if.end.i430.sw.epilog169_crit_edge:               ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

for.body.preheader.i:                             ; preds = %if.end.i430
  %72 = ptrtoint ptr %curve_data6.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %curve_data6.i, align 4
  %data24.i = getelementptr inbounds %struct.p54_cal_database, ptr %73, i32 1, i32 1
  %data19.i = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %target.0158.i = phi ptr [ %target.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ %data24.i, %for.body.preheader.i ]
  %source.0157.i = phi ptr [ %source.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ %data19.i, %for.body.preheader.i ]
  %i.0156.i = phi i32 [ %inc96.i, %for.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr.i = getelementptr i8, ptr %source.0157.i, i32 2
  %74 = ptrtoint ptr %source.0157.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %source.0157.i, align 2
  %76 = ptrtoint ptr %target.0158.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %target.0158.i, align 2
  %add.ptr29.i = getelementptr i8, ptr %target.0158.i, i32 2
  %77 = ptrtoint ptr %points_per_channel.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %points_per_channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp33149.not.i = icmp eq i8 %78, 0
  br i1 %cmp33149.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body35.i_crit_edge

for.body.i.for.body35.i_crit_edge:                ; preds = %for.body.i
  br label %for.body35.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body35.i:                                     ; preds = %for.body35.i.for.body35.i_crit_edge, %for.body.i.for.body35.i_crit_edge
  %target.1152.i = phi ptr [ %add.ptr93.i, %for.body35.i.for.body35.i_crit_edge ], [ %add.ptr29.i, %for.body.i.for.body35.i_crit_edge ]
  %source.1151.i = phi ptr [ %add.ptr94.i, %for.body35.i.for.body35.i_crit_edge ], [ %add.ptr.i, %for.body.i.for.body35.i_crit_edge ]
  %j.0150.i = phi i32 [ %inc.i, %for.body35.i.for.body35.i_crit_edge ], [ 0, %for.body.i.for.body35.i_crit_edge ]
  %79 = ptrtoint ptr %source.1151.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %source.1151.i, align 1
  %81 = ptrtoint ptr %target.1152.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %target.1152.i, align 1
  %pa_detector.i = getelementptr inbounds %struct.pda_pa_curve_data_sample_rev0, ptr %source.1151.i, i32 0, i32 1
  %82 = ptrtoint ptr %pa_detector.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pa_detector.i, align 1
  %pa_detector37.i = getelementptr inbounds %struct.p54_pa_curve_data_sample, ptr %target.1152.i, i32 0, i32 1
  %84 = ptrtoint ptr %pa_detector37.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %pa_detector37.i, align 1
  %pcv.i = getelementptr inbounds %struct.pda_pa_curve_data_sample_rev0, ptr %source.1151.i, i32 0, i32 2
  %85 = ptrtoint ptr %pcv.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pcv.i, align 1
  %data_64qam.i = getelementptr inbounds %struct.p54_pa_curve_data_sample, ptr %target.1152.i, i32 0, i32 6
  %87 = ptrtoint ptr %data_64qam.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %data_64qam.i, align 1
  %88 = load i8, ptr %pcv.i, align 1
  %sub.i = add i8 %88, -12
  %data_16qam.i = getelementptr inbounds %struct.p54_pa_curve_data_sample, ptr %target.1152.i, i32 0, i32 5
  %89 = ptrtoint ptr %data_16qam.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %sub.i, ptr %data_16qam.i, align 1
  %sub50.i = add i8 %88, -24
  %data_qpsk.i = getelementptr inbounds %struct.p54_pa_curve_data_sample, ptr %target.1152.i, i32 0, i32 4
  %90 = ptrtoint ptr %data_qpsk.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %sub50.i, ptr %data_qpsk.i, align 1
  %sub65.i = add i8 %88, -36
  %data_bpsk.i = getelementptr inbounds %struct.p54_pa_curve_data_sample, ptr %target.1152.i, i32 0, i32 3
  %91 = ptrtoint ptr %data_bpsk.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %sub65.i, ptr %data_bpsk.i, align 1
  %sub80.i = add i8 %88, -50
  %data_barker.i = getelementptr inbounds %struct.p54_pa_curve_data_sample, ptr %target.1152.i, i32 0, i32 2
  %92 = ptrtoint ptr %data_barker.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %sub80.i, ptr %data_barker.i, align 1
  %add.ptr93.i = getelementptr i8, ptr %target.1152.i, i32 8
  %add.ptr94.i = getelementptr i8, ptr %source.1151.i, i32 3
  %inc.i = add nuw nsw i32 %j.0150.i, 1
  %93 = ptrtoint ptr %points_per_channel.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %points_per_channel.i, align 1
  %conv32.i = zext i8 %94 to i32
  %cmp33.i = icmp ult i32 %inc.i, %conv32.i
  br i1 %cmp33.i, label %for.body35.i.for.body35.i_crit_edge, label %for.body35.i.for.end.i_crit_edge

for.body35.i.for.end.i_crit_edge:                 ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body35.i.for.body35.i_crit_edge:              ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35.i

for.end.i:                                        ; preds = %for.body35.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %source.1.lcssa.i = phi ptr [ %add.ptr.i, %for.body.i.for.end.i_crit_edge ], [ %add.ptr94.i, %for.body35.i.for.end.i_crit_edge ]
  %target.1.lcssa.i = phi ptr [ %add.ptr29.i, %for.body.i.for.end.i_crit_edge ], [ %add.ptr93.i, %for.body35.i.for.end.i_crit_edge ]
  %inc96.i = add nuw nsw i32 %i.0156.i, 1
  %95 = ptrtoint ptr %channels.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %channels.i, align 1
  %conv27.i = zext i8 %96 to i32
  %cmp.i431 = icmp ult i32 %inc96.i, %conv27.i
  br i1 %cmp.i431, label %for.end.i.for.body.i_crit_edge, label %for.end.i.sw.epilog169_crit_edge

for.end.i.sw.epilog169_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sw.bb38:                                          ; preds = %if.end34
  %97 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %priv1, align 8
  %points_per_channel.i434 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 1, i32 1
  %99 = ptrtoint ptr %points_per_channel.i434 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %points_per_channel.i434, align 1
  %conv.i435 = zext i8 %100 to i32
  %mul.i436 = shl nuw nsw i32 %conv.i435, 3
  %add.i437 = or i32 %mul.i436, 2
  %channels.i438 = getelementptr i8, ptr %entry2.0652, i32 5
  %101 = ptrtoint ptr %channels.i438 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %channels.i438, align 1
  %conv2.i439 = zext i8 %102 to i32
  %mul3.i440 = mul nuw nsw i32 %add.i437, %conv2.i439
  %add5.i441 = add nuw nsw i32 %mul3.i440, 20
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add5.i441, i32 noundef 3520) #13
  %curve_data6.i444 = getelementptr inbounds %struct.p54_common, ptr %98, i32 0, i32 36
  %103 = ptrtoint ptr %curve_data6.i444 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call9.i.i.i, ptr %curve_data6.i444, align 4
  %tobool.not.i445 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i445, label %sw.bb38.err264_crit_edge, label %if.end.i455

sw.bb38.err264_crit_edge:                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %err264

if.end.i455:                                      ; preds = %sw.bb38
  %add4.i446 = add nuw nsw i32 %mul3.i440, 4
  %104 = ptrtoint ptr %channels.i438 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %channels.i438, align 1
  %conv9.i447 = zext i8 %105 to i32
  %106 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv9.i447, ptr %call9.i.i.i, align 128
  %107 = ptrtoint ptr %points_per_channel.i434 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %points_per_channel.i434, align 1
  %conv12.i448 = zext i8 %108 to i32
  %mul13.i449 = shl nuw nsw i32 %conv12.i448, 3
  %add14.i450 = or i32 %mul13.i449, 2
  %109 = ptrtoint ptr %curve_data6.i444 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %curve_data6.i444, align 4
  %entry_size.i451 = getelementptr inbounds %struct.p54_cal_database, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %entry_size.i451 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add14.i450, ptr %entry_size.i451, align 4
  %112 = load ptr, ptr %curve_data6.i444, align 4
  %offset.i452 = getelementptr inbounds %struct.p54_cal_database, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %offset.i452 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 4, ptr %offset.i452, align 4
  %114 = load ptr, ptr %curve_data6.i444, align 4
  %len.i453 = getelementptr inbounds %struct.p54_cal_database, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %len.i453 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add4.i446, ptr %len.i453, align 4
  %116 = load ptr, ptr %curve_data6.i444, align 4
  %data.i454 = getelementptr inbounds %struct.p54_cal_database, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %add.ptr9, align 1
  %119 = ptrtoint ptr %data.i454 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %data.i454, align 4
  %120 = load i8, ptr %channels.i438, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp79.not.i = icmp eq i8 %120, 0
  br i1 %cmp79.not.i, label %if.end.i455.sw.epilog169_crit_edge, label %for.body.preheader.i458

if.end.i455.sw.epilog169_crit_edge:               ; preds = %if.end.i455
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

for.body.preheader.i458:                          ; preds = %if.end.i455
  %121 = ptrtoint ptr %curve_data6.i444 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %curve_data6.i444, align 4
  %data24.i456 = getelementptr inbounds %struct.p54_cal_database, ptr %122, i32 1, i32 1
  %data19.i457 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 2
  br label %for.body.i461

for.body.i461:                                    ; preds = %for.end.i470.for.body.i461_crit_edge, %for.body.preheader.i458
  %target.082.i = phi ptr [ %target.1.lcssa.i467, %for.end.i470.for.body.i461_crit_edge ], [ %data24.i456, %for.body.preheader.i458 ]
  %source.081.i = phi ptr [ %incdec.ptr.i, %for.end.i470.for.body.i461_crit_edge ], [ %data19.i457, %for.body.preheader.i458 ]
  %i.080.i = phi i32 [ %inc39.i, %for.end.i470.for.body.i461_crit_edge ], [ 0, %for.body.preheader.i458 ]
  %add.ptr.i459 = getelementptr i8, ptr %source.081.i, i32 2
  %123 = ptrtoint ptr %source.081.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %source.081.i, align 2
  %125 = ptrtoint ptr %target.082.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %target.082.i, align 2
  %add.ptr29.i460 = getelementptr i8, ptr %target.082.i, i32 2
  %126 = ptrtoint ptr %points_per_channel.i434 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %points_per_channel.i434, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp3373.not.i = icmp eq i8 %127, 0
  br i1 %cmp3373.not.i, label %for.body.i461.for.end.i470_crit_edge, label %for.body.i461.for.body35.i465_crit_edge

for.body.i461.for.body35.i465_crit_edge:          ; preds = %for.body.i461
  br label %for.body35.i465

for.body.i461.for.end.i470_crit_edge:             ; preds = %for.body.i461
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i470

for.body35.i465:                                  ; preds = %for.body35.i465.for.body35.i465_crit_edge, %for.body.i461.for.body35.i465_crit_edge
  %target.176.i = phi ptr [ %add.ptr36.i, %for.body35.i465.for.body35.i465_crit_edge ], [ %add.ptr29.i460, %for.body.i461.for.body35.i465_crit_edge ]
  %source.175.i = phi ptr [ %add.ptr37.i, %for.body35.i465.for.body35.i465_crit_edge ], [ %add.ptr.i459, %for.body.i461.for.body35.i465_crit_edge ]
  %j.074.i = phi i32 [ %inc.i462, %for.body35.i465.for.body35.i465_crit_edge ], [ 0, %for.body.i461.for.body35.i465_crit_edge ]
  %128 = call ptr @memcpy(ptr %target.176.i, ptr %source.175.i, i32 7)
  %add.ptr36.i = getelementptr i8, ptr %target.176.i, i32 8
  %add.ptr37.i = getelementptr i8, ptr %source.175.i, i32 7
  %inc.i462 = add nuw nsw i32 %j.074.i, 1
  %129 = ptrtoint ptr %points_per_channel.i434 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %points_per_channel.i434, align 1
  %conv32.i463 = zext i8 %130 to i32
  %cmp33.i464 = icmp ult i32 %inc.i462, %conv32.i463
  br i1 %cmp33.i464, label %for.body35.i465.for.body35.i465_crit_edge, label %for.body35.i465.for.end.i470_crit_edge

for.body35.i465.for.end.i470_crit_edge:           ; preds = %for.body35.i465
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i470

for.body35.i465.for.body35.i465_crit_edge:        ; preds = %for.body35.i465
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35.i465

for.end.i470:                                     ; preds = %for.body35.i465.for.end.i470_crit_edge, %for.body.i461.for.end.i470_crit_edge
  %source.1.lcssa.i466 = phi ptr [ %add.ptr.i459, %for.body.i461.for.end.i470_crit_edge ], [ %add.ptr37.i, %for.body35.i465.for.end.i470_crit_edge ]
  %target.1.lcssa.i467 = phi ptr [ %add.ptr29.i460, %for.body.i461.for.end.i470_crit_edge ], [ %add.ptr36.i, %for.body35.i465.for.end.i470_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %source.1.lcssa.i466, i32 1
  %inc39.i = add nuw nsw i32 %i.080.i, 1
  %131 = ptrtoint ptr %channels.i438 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %channels.i438, align 1
  %conv27.i468 = zext i8 %132 to i32
  %cmp.i469 = icmp ult i32 %inc39.i, %conv27.i468
  br i1 %cmp.i469, label %for.end.i470.for.body.i461_crit_edge, label %for.end.i470.sw.epilog169_crit_edge

for.end.i470.sw.epilog169_crit_edge:              ; preds = %for.end.i470
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

for.end.i470.for.body.i461_crit_edge:             ; preds = %for.end.i470
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i461

do.end:                                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %conv35 = zext i8 %46 to i32
  %133 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wiphy.i472, align 8
  %dev40 = getelementptr inbounds %struct.wiphy, ptr %134, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str, i32 noundef %conv35) #12
  br label %err264

sw.bb46:                                          ; preds = %if.end
  %call49 = tail call ptr @kmemdup(ptr noundef %add.ptr9, i32 noundef %shl, i32 noundef 3264) #9
  %135 = ptrtoint ptr %iq_autocal to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call49, ptr %iq_autocal, align 4
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %sw.bb46.err264_crit_edge, label %if.end53

sw.bb46.err264_crit_edge:                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %err264

if.end53:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %shl, 10
  %136 = ptrtoint ptr %iq_autocal_len to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %div, ptr %iq_autocal_len, align 8
  br label %sw.epilog169

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shl)
  %cmp.not.i = icmp eq i32 %shl, 4
  br i1 %cmp.not.i, label %if.end13.i, label %do.end.i473

do.end.i473:                                      ; preds = %sw.bb54
  %137 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wiphy.i472, align 8
  %dev1.i = getelementptr inbounds %struct.wiphy, ptr %138, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.27, i32 noundef %shl) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p54_parse_default_country.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p54_parse_eeprom, %if.then5.i)) #9
          to label %do.end10.i [label %if.then5.i], !srcloc !127

if.then5.i:                                       ; preds = %do.end.i473
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr9, i32 noundef %shl, i1 noundef zeroext true) #9
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then5.i, %do.end.i473
  %139 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %wiphy.i472, align 8
  %dev12.i = getelementptr inbounds %struct.wiphy, ptr %140, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.33) #12
  br label %sw.epilog169

if.end13.i:                                       ; preds = %sw.bb54
  %flags.i = getelementptr i8, ptr %entry2.0652, i32 7
  %141 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %142)
  %cmp14.i = icmp eq i8 %142, -128
  br i1 %cmp14.i, label %if.then16.i, label %if.end13.i.sw.epilog169_crit_edge

if.end13.i.sw.epilog169_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %wiphy.i472, align 8
  %alpha2.i = getelementptr i8, ptr %entry2.0652, i32 5
  %call18.i = tail call i32 @regulatory_hint(ptr noundef %144, ptr noundef %alpha2.i) #9
  br label %sw.epilog169

sw.bb57:                                          ; preds = %if.end
  %cmp64647 = icmp ult ptr %add.ptr9, %add.ptr10
  br i1 %cmp64647, label %sw.bb57.while.body66_crit_edge, label %sw.bb57.sw.epilog169_crit_edge

sw.bb57.sw.epilog169_crit_edge:                   ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

sw.bb57.while.body66_crit_edge:                   ; preds = %sw.bb57
  br label %while.body66

while.body66:                                     ; preds = %if.end71.while.body66_crit_edge, %sw.bb57.while.body66_crit_edge
  %synth.1650 = phi i16 [ %synth.2, %if.end71.while.body66_crit_edge ], [ %synth.0657, %sw.bb57.while.body66_crit_edge ]
  %tmp.0648 = phi ptr [ %add.ptr72, %if.end71.while.body66_crit_edge ], [ %add.ptr9, %sw.bb57.while.body66_crit_edge ]
  %if_id = getelementptr inbounds %struct.exp_if, ptr %tmp.0648, i32 0, i32 1
  %145 = ptrtoint ptr %if_id to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %if_id, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %146)
  %cmp68 = icmp eq i16 %146, 3840
  br i1 %cmp68, label %if.then70, label %while.body66.if.end71_crit_edge

while.body66.if.end71_crit_edge:                  ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then70:                                        ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #11
  %variant = getelementptr inbounds %struct.exp_if, ptr %tmp.0648, i32 0, i32 2
  %147 = ptrtoint ptr %variant to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %variant, align 1
  %149 = tail call i16 @llvm.bswap.i16(i16 %148)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %while.body66.if.end71_crit_edge
  %synth.2 = phi i16 [ %149, %if.then70 ], [ %synth.1650, %while.body66.if.end71_crit_edge ]
  %add.ptr72 = getelementptr i8, ptr %tmp.0648, i32 10
  %cmp64 = icmp ult ptr %add.ptr72, %add.ptr10
  br i1 %cmp64, label %if.end71.while.body66_crit_edge, label %if.end71.sw.epilog169_crit_edge

if.end71.sw.epilog169_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

if.end71.while.body66_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body66

sw.bb73:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp74 = icmp eq i32 %shl, 0
  br i1 %cmp74, label %sw.bb73.sw.epilog169_crit_edge, label %if.end77

sw.bb73.sw.epilog169_crit_edge:                   ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

if.end77:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr80 = getelementptr i8, ptr %entry2.0652, i32 5
  %150 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %add.ptr80, align 1
  %152 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %version, align 4
  br label %sw.epilog169

sw.bb81:                                          ; preds = %if.end.sw.bb81_crit_edge, %if.end.sw.bb81_crit_edge753, %if.end.sw.bb81_crit_edge754
  %call85 = tail call fastcc i32 @p54_parse_rssical(ptr noundef %dev, ptr noundef %add.ptr9, i32 noundef %shl, i16 noundef zeroext %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %sw.bb81.sw.epilog169_crit_edge, label %sw.bb81.err264_crit_edge

sw.bb81.err264_crit_edge:                         ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #11
  br label %err264

sw.bb81.sw.epilog169_crit_edge:                   ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

sw.bb89:                                          ; preds = %if.end
  %153 = ptrtoint ptr %rssi_db to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rssi_db, align 4
  %tobool92.not = icmp ne ptr %154, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shl)
  %cmp93 = icmp ult i32 %shl, 8
  %or.cond = select i1 %tobool92.not, i1 true, i1 %cmp93
  br i1 %or.cond, label %sw.bb89.sw.epilog169_crit_edge, label %if.end96

sw.bb89.sw.epilog169_crit_edge:                   ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

if.end96:                                         ; preds = %sw.bb89
  %len.i474 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 2, i32 1
  %155 = ptrtoint ptr %len.i474 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %len.i474, align 1
  %157 = tail call i16 @llvm.bswap.i16(i16 %156) #9
  %conv.i475 = zext i16 %157 to i32
  %158 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %add.ptr9, align 1
  %160 = tail call i16 @llvm.bswap.i16(i16 %159) #9
  %conv2.i476 = zext i16 %160 to i32
  %entry_size3.i = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 1, i32 1
  %161 = ptrtoint ptr %entry_size3.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %entry_size3.i, align 1
  %163 = tail call i16 @llvm.bswap.i16(i16 %162) #9
  %conv4.i = zext i16 %163 to i32
  %offset5.i = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 2
  %164 = ptrtoint ptr %offset5.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %offset5.i, align 1
  %166 = tail call i16 @llvm.bswap.i16(i16 %165) #9
  %conv6.i = zext i16 %166 to i32
  %mul.i477 = mul nuw i32 %conv4.i, %conv2.i476
  %add.i478 = add nuw i32 %mul.i477, %conv6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i478, i32 %conv.i475)
  %cmp.not.i479 = icmp eq i32 %add.i478, %conv.i475
  %167 = add nsw i32 %sub, -10
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %conv.i475)
  %cmp9.not.i = icmp eq i32 %167, %conv.i475
  %or.cond.i = select i1 %cmp.not.i479, i1 %cmp9.not.i, i1 false
  br i1 %or.cond.i, label %if.end8.i.i505, label %if.end96.p54_convert_db.exit.thread_crit_edge

if.end96.p54_convert_db.exit.thread_crit_edge:    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_convert_db.exit.thread

if.end8.i.i505:                                   ; preds = %if.end96
  %add11.i = add nuw nsw i32 %sub, 6
  %call9.i.i504 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add11.i, i32 noundef 3264) #13
  %tobool.not.i507 = icmp eq ptr %call9.i.i504, null
  br i1 %tobool.not.i507, label %if.end8.i.i505.p54_convert_db.exit.thread_crit_edge, label %if.end102

if.end8.i.i505.p54_convert_db.exit.thread_crit_edge: ; preds = %if.end8.i.i505
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_convert_db.exit.thread

p54_convert_db.exit.thread:                       ; preds = %if.end8.i.i505.p54_convert_db.exit.thread_crit_edge, %if.end96.p54_convert_db.exit.thread_crit_edge
  %168 = ptrtoint ptr %rssi_db to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %rssi_db, align 4
  br label %sw.epilog169

if.end102:                                        ; preds = %if.end8.i.i505
  %169 = ptrtoint ptr %call9.i.i504 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %conv2.i476, ptr %call9.i.i504, align 128
  %entry_size15.i = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i504, i32 0, i32 1
  %170 = ptrtoint ptr %entry_size15.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv4.i, ptr %entry_size15.i, align 4
  %offset16.i = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i504, i32 0, i32 2
  %171 = ptrtoint ptr %offset16.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv6.i, ptr %offset16.i, align 8
  %len17.i = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i504, i32 0, i32 3
  %172 = ptrtoint ptr %len17.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %167, ptr %len17.i, align 4
  %data.i509 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i504, i32 0, i32 4
  %data18.i = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 3
  %173 = call ptr @memcpy(ptr %data.i509, ptr %data18.i, i32 %167)
  %174 = ptrtoint ptr %rssi_db to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call9.i.i504, ptr %rssi_db, align 4
  %175 = load i32, ptr %call9.i.i504, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp110643.not = icmp eq i32 %175, 0
  br i1 %cmp110643.not, label %if.end102.sw.epilog169_crit_edge, label %if.end102.for.body_crit_edge

if.end102.for.body_crit_edge:                     ; preds = %if.end102
  br label %for.body

if.end102.sw.epilog169_crit_edge:                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end102.for.body_crit_edge
  %i.0646 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end102.for.body_crit_edge ]
  %dst.0645 = phi ptr [ %incdec.ptr112, %for.body.for.body_crit_edge ], [ %data.i509, %if.end102.for.body_crit_edge ]
  %incdec.ptr112 = getelementptr i16, ptr %dst.0645, i32 1
  %176 = ptrtoint ptr %dst.0645 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %dst.0645, align 2
  %178 = tail call i16 @llvm.bswap.i16(i16 %177)
  %179 = ptrtoint ptr %dst.0645 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %dst.0645, align 2
  %inc = add nuw i32 %i.0646, 1
  %180 = ptrtoint ptr %rssi_db to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rssi_db, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %181, align 4
  %cmp110 = icmp ult i32 %inc, %183
  br i1 %cmp110, label %for.body.for.body_crit_edge, label %for.body.sw.epilog169_crit_edge

for.body.sw.epilog169_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

sw.bb119:                                         ; preds = %if.end
  %184 = ptrtoint ptr %output_limit123 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %output_limit123, align 8
  %tobool124.not = icmp ne ptr %185, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shl)
  %cmp126 = icmp ult i32 %shl, 8
  %or.cond403 = select i1 %tobool124.not, i1 true, i1 %cmp126
  br i1 %or.cond403, label %sw.bb119.sw.epilog169_crit_edge, label %if.end129

sw.bb119.sw.epilog169_crit_edge:                  ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

if.end129:                                        ; preds = %sw.bb119
  %len.i512 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 2, i32 1
  %186 = ptrtoint ptr %len.i512 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 2)
  %187 = load i16, ptr %len.i512, align 1
  %188 = tail call i16 @llvm.bswap.i16(i16 %187) #9
  %conv.i513 = zext i16 %188 to i32
  %189 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %add.ptr9, align 1
  %191 = tail call i16 @llvm.bswap.i16(i16 %190) #9
  %conv2.i514 = zext i16 %191 to i32
  %entry_size3.i515 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 1, i32 1
  %192 = ptrtoint ptr %entry_size3.i515 to i32
  call void @__asan_loadN_noabort(i32 %192, i32 2)
  %193 = load i16, ptr %entry_size3.i515, align 1
  %194 = tail call i16 @llvm.bswap.i16(i16 %193) #9
  %conv4.i516 = zext i16 %194 to i32
  %offset5.i517 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 2
  %195 = ptrtoint ptr %offset5.i517 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 2)
  %196 = load i16, ptr %offset5.i517, align 1
  %197 = tail call i16 @llvm.bswap.i16(i16 %196) #9
  %conv6.i518 = zext i16 %197 to i32
  %mul.i519 = mul nuw i32 %conv4.i516, %conv2.i514
  %add.i520 = add nuw i32 %mul.i519, %conv6.i518
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i520, i32 %conv.i513)
  %cmp.not.i521 = icmp eq i32 %add.i520, %conv.i513
  %198 = add nsw i32 %sub, -10
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %conv.i513)
  %cmp9.not.i523 = icmp eq i32 %198, %conv.i513
  %or.cond.i524 = select i1 %cmp.not.i521, i1 %cmp9.not.i523, i1 false
  br i1 %or.cond.i524, label %if.end8.i.i551, label %if.end129.p54_convert_db.exit562_crit_edge

if.end129.p54_convert_db.exit562_crit_edge:       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_convert_db.exit562

if.end8.i.i551:                                   ; preds = %if.end129
  %add11.i525 = add nuw nsw i32 %sub, 6
  %call9.i.i550 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add11.i525, i32 noundef 3264) #13
  %tobool.not.i553 = icmp eq ptr %call9.i.i550, null
  br i1 %tobool.not.i553, label %if.end8.i.i551.p54_convert_db.exit562_crit_edge, label %if.end13.i560

if.end8.i.i551.p54_convert_db.exit562_crit_edge:  ; preds = %if.end8.i.i551
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_convert_db.exit562

if.end13.i560:                                    ; preds = %if.end8.i.i551
  call void @__sanitizer_cov_trace_pc() #11
  %199 = ptrtoint ptr %call9.i.i550 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %conv2.i514, ptr %call9.i.i550, align 128
  %entry_size15.i555 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i550, i32 0, i32 1
  %200 = ptrtoint ptr %entry_size15.i555 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %conv4.i516, ptr %entry_size15.i555, align 4
  %offset16.i556 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i550, i32 0, i32 2
  %201 = ptrtoint ptr %offset16.i556 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %conv6.i518, ptr %offset16.i556, align 8
  %len17.i557 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i550, i32 0, i32 3
  %202 = ptrtoint ptr %len17.i557 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %198, ptr %len17.i557, align 4
  %data.i558 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i550, i32 0, i32 4
  %data18.i559 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 3
  %203 = call ptr @memcpy(ptr %data.i558, ptr %data18.i559, i32 %198)
  br label %p54_convert_db.exit562

p54_convert_db.exit562:                           ; preds = %if.end13.i560, %if.end8.i.i551.p54_convert_db.exit562_crit_edge, %if.end129.p54_convert_db.exit562_crit_edge
  %retval.0.i561 = phi ptr [ %call9.i.i550, %if.end13.i560 ], [ null, %if.end129.p54_convert_db.exit562_crit_edge ], [ null, %if.end8.i.i551.p54_convert_db.exit562_crit_edge ]
  %204 = ptrtoint ptr %output_limit123 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %retval.0.i561, ptr %output_limit123, align 8
  br label %sw.epilog169

sw.bb135:                                         ; preds = %if.end
  %205 = ptrtoint ptr %curve_data139 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %curve_data139, align 4
  %tobool140.not = icmp ne ptr %206, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shl)
  %cmp142 = icmp ult i32 %shl, 8
  %or.cond404 = select i1 %tobool140.not, i1 true, i1 %cmp142
  br i1 %or.cond404, label %sw.bb135.sw.epilog169_crit_edge, label %if.end145

sw.bb135.sw.epilog169_crit_edge:                  ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169

if.end145:                                        ; preds = %sw.bb135
  %len.i563 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 2, i32 1
  %207 = ptrtoint ptr %len.i563 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 2)
  %208 = load i16, ptr %len.i563, align 1
  %209 = tail call i16 @llvm.bswap.i16(i16 %208) #9
  %conv.i564 = zext i16 %209 to i32
  %210 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %211 = load i16, ptr %add.ptr9, align 1
  %212 = tail call i16 @llvm.bswap.i16(i16 %211) #9
  %conv2.i565 = zext i16 %212 to i32
  %entry_size3.i566 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 1, i32 1
  %213 = ptrtoint ptr %entry_size3.i566 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 2)
  %214 = load i16, ptr %entry_size3.i566, align 1
  %215 = tail call i16 @llvm.bswap.i16(i16 %214) #9
  %conv4.i567 = zext i16 %215 to i32
  %offset5.i568 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 2
  %216 = ptrtoint ptr %offset5.i568 to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %217 = load i16, ptr %offset5.i568, align 1
  %218 = tail call i16 @llvm.bswap.i16(i16 %217) #9
  %conv6.i569 = zext i16 %218 to i32
  %mul.i570 = mul nuw i32 %conv4.i567, %conv2.i565
  %add.i571 = add nuw i32 %mul.i570, %conv6.i569
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i571, i32 %conv.i564)
  %cmp.not.i572 = icmp eq i32 %add.i571, %conv.i564
  %219 = add nsw i32 %sub, -10
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %conv.i564)
  %cmp9.not.i574 = icmp eq i32 %219, %conv.i564
  %or.cond.i575 = select i1 %cmp.not.i572, i1 %cmp9.not.i574, i1 false
  br i1 %or.cond.i575, label %if.end8.i.i602, label %if.end145.p54_convert_db.exit613_crit_edge

if.end145.p54_convert_db.exit613_crit_edge:       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_convert_db.exit613

if.end8.i.i602:                                   ; preds = %if.end145
  %add11.i576 = add nuw nsw i32 %conv.i564, 16
  %call9.i.i601 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add11.i576, i32 noundef 3264) #13
  %tobool.not.i604 = icmp eq ptr %call9.i.i601, null
  br i1 %tobool.not.i604, label %if.end8.i.i602.p54_convert_db.exit613_crit_edge, label %if.end13.i611

if.end8.i.i602.p54_convert_db.exit613_crit_edge:  ; preds = %if.end8.i.i602
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_convert_db.exit613

if.end13.i611:                                    ; preds = %if.end8.i.i602
  call void @__sanitizer_cov_trace_pc() #11
  %220 = ptrtoint ptr %call9.i.i601 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %conv2.i565, ptr %call9.i.i601, align 128
  %entry_size15.i606 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i601, i32 0, i32 1
  %221 = ptrtoint ptr %entry_size15.i606 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %conv4.i567, ptr %entry_size15.i606, align 4
  %offset16.i607 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i601, i32 0, i32 2
  %222 = ptrtoint ptr %offset16.i607 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %conv6.i569, ptr %offset16.i607, align 8
  %len17.i608 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i601, i32 0, i32 3
  %223 = ptrtoint ptr %len17.i608 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %conv.i564, ptr %len17.i608, align 4
  %data.i609 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i601, i32 0, i32 4
  %data18.i610 = getelementptr inbounds %struct.pda_entry, ptr %entry2.0652, i32 3
  %224 = call ptr @memcpy(ptr %data.i609, ptr %data18.i610, i32 %conv.i564)
  br label %p54_convert_db.exit613

p54_convert_db.exit613:                           ; preds = %if.end13.i611, %if.end8.i.i602.p54_convert_db.exit613_crit_edge, %if.end145.p54_convert_db.exit613_crit_edge
  %retval.0.i612 = phi ptr [ %call9.i.i601, %if.end13.i611 ], [ null, %if.end145.p54_convert_db.exit613_crit_edge ], [ null, %if.end8.i.i602.p54_convert_db.exit613_crit_edge ]
  %225 = ptrtoint ptr %curve_data139 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %retval.0.i612, ptr %curve_data139, align 4
  br label %sw.epilog169

sw.bb151:                                         ; preds = %if.end
  %call152 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc16.0659, ptr noundef %entry2.0652, i32 noundef 4) #9
  %neg = xor i16 %call152, -1
  %226 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %add.ptr9, align 2
  %228 = tail call i16 @llvm.bswap.i16(i16 %227) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %228, i16 %neg)
  %cmp160.not = icmp eq i16 %228, %neg
  br i1 %cmp160.not, label %good_eeprom, label %do.end165

do.end165:                                        ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #11
  %229 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %wiphy.i472, align 8
  %dev167 = getelementptr inbounds %struct.wiphy, ptr %230, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev167, ptr noundef nonnull @.str.6) #12
  br label %err264

sw.epilog169:                                     ; preds = %p54_convert_db.exit613, %sw.bb135.sw.epilog169_crit_edge, %p54_convert_db.exit562, %sw.bb119.sw.epilog169_crit_edge, %for.body.sw.epilog169_crit_edge, %if.end102.sw.epilog169_crit_edge, %p54_convert_db.exit.thread, %sw.bb89.sw.epilog169_crit_edge, %sw.bb81.sw.epilog169_crit_edge, %if.end77, %sw.bb73.sw.epilog169_crit_edge, %if.end71.sw.epilog169_crit_edge, %sw.bb57.sw.epilog169_crit_edge, %if.then16.i, %if.end13.i.sw.epilog169_crit_edge, %do.end10.i, %if.end53, %for.end.i470.sw.epilog169_crit_edge, %if.end.i455.sw.epilog169_crit_edge, %for.end.i.sw.epilog169_crit_edge, %if.end.i430.sw.epilog169_crit_edge, %p54_convert_output_limits.exit, %sw.bb20.sw.epilog169_crit_edge, %if.end17, %sw.bb.sw.epilog169_crit_edge, %if.end.sw.epilog169_crit_edge
  %synth.3 = phi i16 [ %synth.0657, %if.end.sw.epilog169_crit_edge ], [ %synth.0657, %sw.bb81.sw.epilog169_crit_edge ], [ %synth.0657, %sw.bb73.sw.epilog169_crit_edge ], [ %synth.0657, %if.end77 ], [ %synth.0657, %if.end53 ], [ %synth.0657, %sw.bb20.sw.epilog169_crit_edge ], [ %synth.0657, %p54_convert_output_limits.exit ], [ %synth.0657, %sw.bb.sw.epilog169_crit_edge ], [ %synth.0657, %if.end17 ], [ %synth.0657, %sw.bb89.sw.epilog169_crit_edge ], [ %synth.0657, %sw.bb119.sw.epilog169_crit_edge ], [ %synth.0657, %p54_convert_db.exit562 ], [ %synth.0657, %sw.bb135.sw.epilog169_crit_edge ], [ %synth.0657, %p54_convert_db.exit613 ], [ %synth.0657, %do.end10.i ], [ %synth.0657, %if.end13.i.sw.epilog169_crit_edge ], [ %synth.0657, %if.then16.i ], [ %synth.0657, %p54_convert_db.exit.thread ], [ %synth.0657, %if.end.i430.sw.epilog169_crit_edge ], [ %synth.0657, %if.end.i455.sw.epilog169_crit_edge ], [ %synth.0657, %sw.bb57.sw.epilog169_crit_edge ], [ %synth.0657, %if.end102.sw.epilog169_crit_edge ], [ %synth.0657, %for.end.i.sw.epilog169_crit_edge ], [ %synth.0657, %for.end.i470.sw.epilog169_crit_edge ], [ %synth.2, %if.end71.sw.epilog169_crit_edge ], [ %synth.0657, %for.body.sw.epilog169_crit_edge ]
  %mul = add nuw nsw i32 %sub, 2
  %call170 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc16.0659, ptr noundef %entry2.0652, i32 noundef %mul) #9
  %add.ptr173 = getelementptr i8, ptr %entry2.0652, i32 %mul
  %cmp.not = icmp ugt ptr %add.ptr173, %add.ptr5
  br i1 %cmp.not, label %sw.epilog169.do.end177_crit_edge, label %sw.epilog169.while.body_crit_edge

sw.epilog169.while.body_crit_edge:                ; preds = %sw.epilog169
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

sw.epilog169.do.end177_crit_edge:                 ; preds = %sw.epilog169
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end177

do.end177:                                        ; preds = %sw.epilog169.do.end177_crit_edge, %while.body.do.end177_crit_edge, %entry.do.end177_crit_edge
  %wiphy178 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %231 = ptrtoint ptr %wiphy178 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %wiphy178, align 8
  %dev179 = getelementptr inbounds %struct.wiphy, ptr %232, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev179, ptr noundef nonnull @.str.9) #12
  br label %err264

good_eeprom:                                      ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %synth.0657)
  %tobool180.not = icmp eq i16 %synth.0657, 0
  br i1 %tobool180.not, label %good_eeprom.do.end193_crit_edge, label %lor.lhs.false181

good_eeprom.do.end193_crit_edge:                  ; preds = %good_eeprom
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end193

lor.lhs.false181:                                 ; preds = %good_eeprom
  %233 = ptrtoint ptr %iq_autocal to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %iq_autocal, align 4
  %tobool183.not = icmp eq ptr %234, null
  br i1 %tobool183.not, label %lor.lhs.false181.do.end193_crit_edge, label %lor.lhs.false184

lor.lhs.false181.do.end193_crit_edge:             ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end193

lor.lhs.false184:                                 ; preds = %lor.lhs.false181
  %235 = ptrtoint ptr %output_limit123 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %output_limit123, align 8
  %tobool186.not = icmp eq ptr %236, null
  br i1 %tobool186.not, label %lor.lhs.false184.do.end193_crit_edge, label %lor.lhs.false187

lor.lhs.false184.do.end193_crit_edge:             ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end193

lor.lhs.false187:                                 ; preds = %lor.lhs.false184
  %237 = ptrtoint ptr %curve_data139 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %curve_data139, align 4
  %tobool189.not = icmp eq ptr %238, null
  br i1 %tobool189.not, label %lor.lhs.false187.do.end193_crit_edge, label %if.end196

lor.lhs.false187.do.end193_crit_edge:             ; preds = %lor.lhs.false187
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end193

do.end193:                                        ; preds = %lor.lhs.false187.do.end193_crit_edge, %lor.lhs.false184.do.end193_crit_edge, %lor.lhs.false181.do.end193_crit_edge, %good_eeprom.do.end193_crit_edge
  %239 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %wiphy.i472, align 8
  %dev195 = getelementptr inbounds %struct.wiphy, ptr %240, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev195, ptr noundef nonnull @.str.12) #12
  br label %err264

if.end196:                                        ; preds = %lor.lhs.false187
  %conv197 = zext i16 %synth.0657 to i32
  %and = and i16 %synth.0657, 7
  %rxhw = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 22
  %241 = ptrtoint ptr %rxhw to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %and, ptr %rxhw, align 4
  %call199 = tail call fastcc i32 @p54_generate_channel_lists(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end196.err264_crit_edge

if.end196.err264_crit_edge:                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %err264

if.end202:                                        ; preds = %if.end196
  %242 = ptrtoint ptr %rxhw to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %rxhw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %243)
  %cmp205 = icmp eq i16 %243, 4
  br i1 %cmp205, label %if.then207, label %if.end202.if.end209_crit_edge

if.end202.if.end209_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then207:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  %call208 = tail call i32 @p54_init_xbow_synth(ptr noundef %1) #9
  br label %if.end209

if.end209:                                        ; preds = %if.then207, %if.end202.if.end209_crit_edge
  %and211 = and i32 %conv197, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.then213, label %if.end209.if.end216_crit_edge

if.end209.if.end216_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end216

if.then213:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  %band_table = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 39
  %244 = ptrtoint ptr %band_table to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %band_table, align 8
  %246 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wiphy.i472, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %247, i32 0, i32 53
  %248 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %245, ptr %bands, align 16
  br label %if.end216

if.end216:                                        ; preds = %if.then213, %if.end209.if.end216_crit_edge
  %and218 = and i32 %conv197, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %if.then220, label %if.end216.if.end226_crit_edge

if.end216.if.end226_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

if.then220:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx222 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 39, i32 1
  %249 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %arrayidx222, align 4
  %251 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %wiphy.i472, align 8
  %arrayidx225 = getelementptr %struct.wiphy, ptr %252, i32 0, i32 53, i32 1
  %253 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %250, ptr %arrayidx225, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then220, %if.end216.if.end226_crit_edge
  %and228 = and i32 %conv197, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %cmp229.not = icmp eq i32 %and228, 0
  br i1 %cmp229.not, label %if.end226.if.end232_crit_edge, label %if.then231

if.end226.if.end232_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232

if.then231:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  %rx_diversity_mask = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 23
  %254 = ptrtoint ptr %rx_diversity_mask to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 3, ptr %rx_diversity_mask, align 2
  br label %if.end232

if.end232:                                        ; preds = %if.then231, %if.end226.if.end232_crit_edge
  %and234 = and i32 %conv197, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %cmp235.not = icmp eq i32 %and234, 0
  br i1 %cmp235.not, label %if.end232.if.end238_crit_edge, label %if.then237

if.end232.if.end238_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then237:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  %tx_diversity_mask = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 24
  %255 = ptrtoint ptr %tx_diversity_mask to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 3, ptr %tx_diversity_mask, align 1
  br label %if.end238

if.end238:                                        ; preds = %if.then237, %if.end232.if.end238_crit_edge
  %256 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %wiphy.i472, align 8
  %perm_addr = getelementptr inbounds %struct.wiphy, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %perm_addr, align 4
  %260 = and i32 %259, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.i.not.i = icmp eq i32 %260, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end238.if.then242_crit_edge

if.end238.if.then242_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then242

is_valid_ether_addr.exit:                         ; preds = %if.end238
  %add.ptr.i.i = getelementptr %struct.wiphy, ptr %257, i32 0, i32 1, i32 4
  %261 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %262 to i32
  %or.i.i = or i32 %259, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i614.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i614.not, label %is_valid_ether_addr.exit.if.then242_crit_edge, label %is_valid_ether_addr.exit.if.end251_crit_edge

is_valid_ether_addr.exit.if.end251_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end251

is_valid_ether_addr.exit.if.then242_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then242

if.then242:                                       ; preds = %is_valid_ether_addr.exit.if.then242_crit_edge, %if.end238.if.then242_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %perm_addr243) #9
  %dev248 = getelementptr inbounds %struct.wiphy, ptr %257, i32 0, i32 56
  %263 = call ptr @memset(ptr %perm_addr243, i32 255, i32 6)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev248, ptr noundef nonnull @.str.15) #12
  call void @get_random_bytes(ptr noundef nonnull %perm_addr243, i32 noundef 6) #9
  %264 = ptrtoint ptr %perm_addr243 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %perm_addr243, align 1
  %266 = and i8 %265, -4
  %267 = or i8 %266, 2
  store i8 %267, ptr %perm_addr243, align 1
  %268 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %wiphy.i472, align 8
  %perm_addr.i616 = getelementptr inbounds %struct.wiphy, ptr %269, i32 0, i32 1
  %270 = call ptr @memcpy(ptr %perm_addr.i616, ptr %perm_addr243, i32 6)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %perm_addr243) #9
  br label %if.end251

if.end251:                                        ; preds = %if.then242, %is_valid_ether_addr.exit.if.end251_crit_edge
  %cur_rssi = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 26
  %271 = ptrtoint ptr %cur_rssi to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr @p54_rssi_default, ptr %cur_rssi, align 4
  %272 = ptrtoint ptr %wiphy.i472 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %wiphy.i472, align 8
  %dev256 = getelementptr inbounds %struct.wiphy, ptr %273, i32 0, i32 56
  %perm_addr258 = getelementptr inbounds %struct.wiphy, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %version, align 4
  %conv261 = zext i8 %275 to i32
  %276 = ptrtoint ptr %rxhw to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %rxhw, align 4
  %idxprom = zext i16 %277 to i32
  %arrayidx263 = getelementptr [8 x ptr], ptr @p54_rf_chips, i32 0, i32 %idxprom
  %278 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %arrayidx263, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev256, ptr noundef nonnull @.str.19, ptr noundef %perm_addr258, i32 noundef %conv261, ptr noundef %279) #12
  br label %cleanup279

err264:                                           ; preds = %if.end196.err264_crit_edge, %do.end193, %do.end177, %do.end165, %sw.bb81.err264_crit_edge, %sw.bb46.err264_crit_edge, %do.end, %sw.bb38.err264_crit_edge, %sw.bb36.err264_crit_edge, %sw.bb28.err264_crit_edge, %if.end8.i.i.err264_crit_edge, %if.end8.i.err264_crit_edge, %do.end.i, %if.end22.err264_crit_edge
  %err.2 = phi i32 [ -61, %do.end177 ], [ -42, %do.end165 ], [ %call199, %if.end196.err264_crit_edge ], [ -22, %do.end193 ], [ -19, %do.end ], [ -22, %do.end.i ], [ -22, %if.end22.err264_crit_edge ], [ -22, %if.end8.i.err264_crit_edge ], [ -12, %if.end8.i.i.err264_crit_edge ], [ -12, %sw.bb38.err264_crit_edge ], [ -12, %sw.bb36.err264_crit_edge ], [ -22, %sw.bb28.err264_crit_edge ], [ -12, %sw.bb46.err264_crit_edge ], [ %call85, %sw.bb81.err264_crit_edge ]
  %iq_autocal265 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 34
  %280 = ptrtoint ptr %iq_autocal265 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %iq_autocal265, align 4
  tail call void @kfree(ptr noundef %281) #9
  %output_limit266 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 37
  %282 = ptrtoint ptr %output_limit266 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %output_limit266, align 8
  tail call void @kfree(ptr noundef %283) #9
  %curve_data267 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 36
  %284 = ptrtoint ptr %curve_data267 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %curve_data267, align 4
  tail call void @kfree(ptr noundef %285) #9
  %rssi_db268 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 38
  %286 = ptrtoint ptr %rssi_db268 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %rssi_db268, align 4
  tail call void @kfree(ptr noundef %287) #9
  %survey = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 28
  %288 = ptrtoint ptr %survey to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %survey, align 4
  tail call void @kfree(ptr noundef %289) #9
  %290 = ptrtoint ptr %iq_autocal265 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %iq_autocal265, align 4
  %291 = ptrtoint ptr %output_limit266 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr null, ptr %output_limit266, align 8
  %292 = ptrtoint ptr %curve_data267 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr null, ptr %curve_data267, align 4
  %293 = ptrtoint ptr %rssi_db268 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr null, ptr %rssi_db268, align 4
  %294 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr null, ptr %survey, align 4
  %wiphy277 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %295 = ptrtoint ptr %wiphy277 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %wiphy277, align 8
  %dev278 = getelementptr inbounds %struct.wiphy, ptr %296, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev278, ptr noundef nonnull @.str.23) #12
  br label %cleanup279

cleanup279:                                       ; preds = %err264, %if.end251
  %retval.0 = phi i32 [ %err.2, %err264 ], [ 0, %if.end251 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p54_parse_rssical(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %len, i16 noundef zeroext %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conv = zext i16 %type to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 6408, i16 %type)
  %cmp.not = icmp eq i16 %type, 6408
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 6402, i16 %type)
  %cmp5 = icmp eq i16 %type, 6402
  %cond = select i1 %cmp5, i32 1, i32 2
  %mul = shl nuw nsw i32 %cond, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %len)
  %cmp7.not = icmp eq i32 %mul, %len
  br i1 %cmp7.not, label %if.then.if.end29_crit_edge, label %if.then.do.end91_crit_edge

if.then.do.end91_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp12 = icmp eq i16 %3, 0
  %spec.select = select i1 %cmp12, i32 2, i32 0
  %sub = sub i32 %len, %spec.select
  %sub.frozen = freeze i32 %sub
  %div = udiv i32 %sub.frozen, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %len)
  %cmp16 = icmp sgt i32 %spec.select, %len
  %4 = mul i32 %div, 6
  %rem.decomposed = sub i32 %sub.frozen, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp ne i32 %rem.decomposed, 0
  %or.cond = select i1 %cmp16, i1 true, i1 %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %5 = icmp ult i32 %sub, 6
  %or.cond173 = or i1 %5, %or.cond
  br i1 %or.cond173, label %if.else.do.end91_crit_edge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.else.do.end91_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %if.then.if.end29_crit_edge
  %entries.0 = phi i32 [ %cond, %if.then.if.end29_crit_edge ], [ %div, %if.else.if.end29_crit_edge ]
  %offset.1 = phi i32 [ 0, %if.then.if.end29_crit_edge ], [ %spec.select, %if.else.if.end29_crit_edge ]
  %mul30 = mul i32 %entries.0, 10
  %add31 = add i32 %mul30, 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add31, i32 noundef 3520) #13
  %rssi_db = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %rssi_db to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %rssi_db, align 4
  %tobool33.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %offset37 = getelementptr inbounds %struct.p54_cal_database, ptr %call9.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %offset37 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %offset37, align 8
  %8 = ptrtoint ptr %rssi_db to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rssi_db, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %entries.0, ptr %9, align 4
  %11 = load ptr, ptr %rssi_db, align 4
  %entry_size = getelementptr inbounds %struct.p54_cal_database, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %entry_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %entry_size, align 4
  %13 = load ptr, ptr %rssi_db, align 4
  %len42 = getelementptr inbounds %struct.p54_cal_database, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %len42 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul30, ptr %len42, align 4
  %15 = load ptr, ptr %rssi_db, align 4
  %data44 = getelementptr inbounds %struct.p54_cal_database, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %data44 to i32
  %offset46 = getelementptr inbounds %struct.p54_cal_database, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %offset46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset46, align 4
  %add47 = add i32 %18, %16
  %19 = inttoptr i32 %add47 to ptr
  %arrayidx52 = getelementptr i8, ptr %data, i32 %offset.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries.0)
  %cmp53185.not = icmp eq i32 %entries.0, 0
  br i1 %cmp.not, label %if.then51, label %if.else66

if.then51:                                        ; preds = %if.end35
  br i1 %cmp53185.not, label %if.then51.if.end88_crit_edge, label %if.then51.for.body_crit_edge

if.then51.for.body_crit_edge:                     ; preds = %if.then51
  br label %for.body

if.then51.if.end88_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then51.for.body_crit_edge
  %i.0186 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then51.for.body_crit_edge ]
  %arrayidx55 = getelementptr %struct.pda_rssi_cal_ext_entry, ptr %arrayidx52, i32 %i.0186
  %20 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %arrayidx55, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %arrayidx56 = getelementptr %struct.p54_rssi_db_entry, ptr %19, i32 %i.0186
  %23 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx56, align 2
  %mul59 = getelementptr inbounds %struct.pda_rssi_cal_ext_entry, ptr %arrayidx55, i32 0, i32 1
  %24 = ptrtoint ptr %mul59 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %mul59, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %mul61 = getelementptr %struct.p54_rssi_db_entry, ptr %19, i32 %i.0186, i32 1
  %27 = ptrtoint ptr %mul61 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %mul61, align 2
  %add63 = getelementptr inbounds %struct.pda_rssi_cal_ext_entry, ptr %arrayidx55, i32 0, i32 2
  %28 = ptrtoint ptr %add63 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add63, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %add65 = getelementptr %struct.p54_rssi_db_entry, ptr %19, i32 %i.0186, i32 2
  %31 = ptrtoint ptr %add65 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %add65, align 2
  %inc = add nuw nsw i32 %i.0186, 1
  %exitcond188.not = icmp eq i32 %inc, %entries.0
  br i1 %exitcond188.not, label %for.body.if.end88_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.else66:                                        ; preds = %if.end35
  br i1 %cmp53185.not, label %if.else66.if.end88_crit_edge, label %if.else66.for.body72_crit_edge

if.else66.for.body72_crit_edge:                   ; preds = %if.else66
  br label %for.body72

if.else66.if.end88_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %if.else66.for.body72_crit_edge
  %i.1184 = phi i32 [ %inc86, %for.body72.for.body72_crit_edge ], [ 0, %if.else66.for.body72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1184)
  %switch.selectcmp = icmp eq i32 %i.1184, 1
  %switch.select = select i1 %switch.selectcmp, i16 5240, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1184)
  %switch.selectcmp174 = icmp eq i32 %i.1184, 0
  %switch.select175 = select i1 %switch.selectcmp174, i16 2437, i16 %switch.select
  %arrayidx75 = getelementptr %struct.p54_rssi_db_entry, ptr %19, i32 %i.1184
  %32 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %switch.select175, ptr %arrayidx75, align 2
  %arrayidx77 = getelementptr %struct.pda_rssi_cal_entry, ptr %arrayidx52, i32 %i.1184
  %33 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %arrayidx77, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %mul80 = getelementptr %struct.p54_rssi_db_entry, ptr %19, i32 %i.1184, i32 1
  %36 = ptrtoint ptr %mul80 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %mul80, align 2
  %add82 = getelementptr inbounds %struct.pda_rssi_cal_entry, ptr %arrayidx77, i32 0, i32 1
  %37 = ptrtoint ptr %add82 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %add82, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %add84 = getelementptr %struct.p54_rssi_db_entry, ptr %19, i32 %i.1184, i32 2
  %40 = ptrtoint ptr %add84 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add84, align 2
  %inc86 = add nuw nsw i32 %i.1184, 1
  %exitcond.not = icmp eq i32 %inc86, %entries.0
  br i1 %exitcond.not, label %for.body72.if.end88_crit_edge, label %for.body72.for.body72_crit_edge

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body72

for.body72.if.end88_crit_edge:                    ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.end88:                                         ; preds = %for.body72.if.end88_crit_edge, %if.else66.if.end88_crit_edge, %for.body.if.end88_crit_edge, %if.then51.if.end88_crit_edge
  tail call void @sort(ptr noundef %19, i32 noundef %entries.0, i32 noundef 10, ptr noundef nonnull @p54_compare_rssichan, ptr noundef null) #9
  br label %cleanup

do.end91:                                         ; preds = %if.else.do.end91_crit_edge, %if.then.do.end91_crit_edge
  %.str.35.sink = phi ptr [ @.str.35, %if.then.do.end91_crit_edge ], [ @.str.38, %if.else.do.end91_crit_edge ]
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %41 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy, align 8
  %dev10 = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull %.str.35.sink) #12
  %wiphy92 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %43 = ptrtoint ptr %wiphy92 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy92, align 8
  %dev93 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %len) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p54_parse_rssical.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p54_parse_rssical, %if.then100)) #9
          to label %do.end106 [label %if.then100], !srcloc !127

if.then100:                                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true) #9
  br label %do.end106

do.end106:                                        ; preds = %if.then100, %do.end91
  %45 = ptrtoint ptr %wiphy92 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wiphy92, align 8
  %dev108 = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.33) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.end88, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end106 ], [ 0, %if.end88 ], [ -12, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p54_generate_channel_lists(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %iq_autocal_len = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %iq_autocal_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iq_autocal_len, align 8
  %curve_data = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %curve_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curve_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp eq i32 %3, %7
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %output_limit = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 37
  %8 = ptrtoint ptr %output_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %output_limit, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp4.not = icmp eq i32 %3, %11
  br i1 %cmp4.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %dev5 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.46) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge
  %output_limit6 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 37
  %14 = ptrtoint ptr %output_limit6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output_limit6, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %iq_autocal_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iq_autocal_len, align 8
  %20 = tail call i32 @llvm.umax.i32(i32 %17, i32 %19)
  %21 = ptrtoint ptr %curve_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %curve_data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %20, i32 %24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 36) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.if.then91_crit_edge, label %if.end19

if.end.if.then91_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.end19:                                         ; preds = %if.end
  %chan_num = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 29
  %27 = ptrtoint ptr %chan_num to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %chan_num, align 8
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 72) #9
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %kcalloc.exit.thread, label %kcalloc.exit.thread346, !prof !128

kcalloc.exit.thread:                              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %survey290 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 28
  %30 = ptrtoint ptr %survey290 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %survey290, align 4
  br label %if.then87

kcalloc.exit.thread346:                           ; preds = %if.end19
  %31 = extractvalue { i32, i1 } %28, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #13
  %survey348 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 28
  %32 = ptrtoint ptr %survey348 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i.i, ptr %survey348, align 4
  %tobool22.not349 = icmp eq ptr %call8.i.i, null
  br i1 %tobool22.not349, label %kcalloc.exit.thread346.if.then87_crit_edge, label %if.end24.thread350

kcalloc.exit.thread346.if.then87_crit_edge:       ; preds = %kcalloc.exit.thread346
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

if.end24.thread350:                               ; preds = %kcalloc.exit.thread346
  %max_entries351 = getelementptr inbounds %struct.p54_channel_list, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %max_entries351 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %25, ptr %max_entries351, align 8
  %34 = shl nuw nsw i32 %25, 4
  %call8.i.i190 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #13
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call8.i.i190, ptr %call7.i.i, align 8
  %tobool27.not = icmp eq ptr %call8.i.i190, null
  br i1 %tobool27.not, label %if.end24.thread350.if.then87_crit_edge, label %for.cond.preheader

if.end24.thread350.if.then87_crit_edge:           ; preds = %if.end24.thread350
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

for.cond.preheader:                               ; preds = %if.end24.thread350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp30328.not = icmp eq i32 %25, 0
  br i1 %cmp30328.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %iq_autocal = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 34
  %entries.i = getelementptr inbounds %struct.p54_channel_list, ptr %call7.i.i, i32 0, i32 1
  %rxhw.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0329 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %36 = ptrtoint ptr %iq_autocal_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iq_autocal_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0329, i32 %37)
  %cmp32 = icmp ult i32 %i.0329, %37
  br i1 %cmp32, label %if.then33, label %for.body.if.end36_crit_edge

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %for.body
  %38 = ptrtoint ptr %iq_autocal to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iq_autocal, align 4
  %arrayidx = getelementptr %struct.pda_iq_autocal_entry, ptr %39, i32 %i.0329
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %arrayidx, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp66.i = icmp sgt i32 %44, -1
  br i1 %cmp66.i, label %for.body.lr.ph.i, label %if.then33.land.lhs.true.i_crit_edge

if.then33.land.lhs.true.i_crit_edge:              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.body.lr.ph.i:                                 ; preds = %if.then33
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %dec.i = add nsw i32 %i.067.i, -1
  %cmp.i = icmp sgt i32 %i.067.i, 0
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.land.lhs.true.i_crit_edge

for.cond.i.land.lhs.true.i_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.067.i = phi i32 [ %44, %for.body.lr.ph.i ], [ %dec.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.p54_channel_entry, ptr %46, i32 %i.067.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %42)
  %cmp4.i = icmp eq i16 %48, %42
  br i1 %cmp4.i, label %for.body.i.if.end28.i_crit_edge, label %for.cond.i

for.body.i.if.end28.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %for.cond.i.land.lhs.true.i_crit_edge, %if.then33.land.lhs.true.i_crit_edge
  %49 = ptrtoint ptr %max_entries351 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_entries351, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %50)
  %cmp11.i = icmp ult i32 %44, %50
  br i1 %cmp11.i, label %if.then13.i, label %land.lhs.true.i.if.end36_crit_edge

land.lhs.true.i.if.end36_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then13.i:                                      ; preds = %land.lhs.true.i
  %51 = add i16 %42, -2412
  call void @__sanitizer_cov_trace_const_cmp2(i16 73, i16 %51)
  %52 = icmp ult i16 %51, 73
  %53 = add i16 %42, -4920
  call void @__sanitizer_cov_trace_const_cmp2(i16 906, i16 %53)
  %54 = icmp ult i16 %53, 906
  %spec.select.i.i = select i1 %54, i32 1, i32 -1
  %retval.0.i.i194 = select i1 %52, i32 0, i32 %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i194)
  %cmp14.i = icmp sgt i32 %retval.0.i.i194, -1
  br i1 %cmp14.i, label %if.then16.i, label %if.then13.i.if.end36_crit_edge

if.then13.i.if.end36_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw i32 %44, 1
  %55 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc.i, ptr %entries.i, align 4
  %arrayidx18.i = getelementptr %struct.p54_channel_list, ptr %call7.i.i, i32 0, i32 3, i32 %retval.0.i.i194
  %56 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx18.i, align 4
  %inc19.i = add i32 %57, 1
  store i32 %inc19.i, ptr %arrayidx18.i, align 4
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call7.i.i, align 8
  %arrayidx21.i = getelementptr %struct.p54_channel_entry, ptr %59, i32 %44
  %60 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %42, ptr %arrayidx21.i, align 4
  %band23.i = getelementptr %struct.p54_channel_entry, ptr %59, i32 %44, i32 4
  %61 = ptrtoint ptr %band23.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i194, ptr %band23.i, align 4
  %conv24.i = zext i16 %42 to i32
  %mul.i.i = mul nuw nsw i32 %conv24.i, 1000
  %call.i.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #9
  %index.i = getelementptr %struct.p54_channel_entry, ptr %59, i32 %44, i32 2
  %62 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call.i.i, ptr %index.i, align 4
  %max_power.i = getelementptr %struct.p54_channel_entry, ptr %59, i32 %44, i32 3
  %63 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %max_power.i, align 4
  %data26.i = getelementptr %struct.p54_channel_entry, ptr %59, i32 %44, i32 1
  %64 = ptrtoint ptr %data26.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %data26.i, align 2
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then16.i, %for.body.i.if.end28.i_crit_edge
  %entry1.2.i = phi ptr [ %arrayidx21.i, %if.then16.i ], [ %arrayidx.i, %for.body.i.if.end28.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %entry1.2.i, null
  br i1 %tobool.not.i, label %if.end28.i.if.end36_crit_edge, label %if.then29.i

if.end28.i.if.end36_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then29.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %data31.i = getelementptr inbounds %struct.p54_channel_entry, ptr %entry1.2.i, i32 0, i32 1
  %65 = ptrtoint ptr %data31.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %data31.i, align 2
  %or59.i = or i16 %66, 1
  store i16 %or59.i, ptr %data31.i, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then29.i, %if.end28.i.if.end36_crit_edge, %if.then13.i.if.end36_crit_edge, %land.lhs.true.i.if.end36_crit_edge, %for.body.if.end36_crit_edge
  %67 = ptrtoint ptr %output_limit6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %output_limit6, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0329, i32 %70)
  %cmp39 = icmp ult i32 %i.0329, %70
  br i1 %cmp39, label %if.then40, label %if.end36.if.end52_crit_edge

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then40:                                        ; preds = %if.end36
  %entry_size = getelementptr inbounds %struct.p54_cal_database, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %entry_size, align 4
  %mul = mul i32 %72, %i.0329
  %offset = getelementptr inbounds %struct.p54_cal_database, ptr %68, i32 0, i32 2
  %73 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset, align 4
  %add = add i32 %mul, %74
  %data45 = getelementptr inbounds %struct.p54_cal_database, ptr %68, i32 0, i32 4
  %add.ptr = getelementptr i8, ptr %data45, i32 %add
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #9
  %78 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp66.i196 = icmp sgt i32 %79, -1
  br i1 %cmp66.i196, label %for.body.lr.ph.i197, label %if.then40.land.lhs.true.i207_crit_edge

if.then40.land.lhs.true.i207_crit_edge:           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i207

for.body.lr.ph.i197:                              ; preds = %if.then40
  %80 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call7.i.i, align 8
  br label %for.body.i204

for.cond.i200:                                    ; preds = %for.body.i204
  %dec.i198 = add nsw i32 %i.067.i201, -1
  %cmp.i199 = icmp sgt i32 %i.067.i201, 0
  br i1 %cmp.i199, label %for.cond.i200.for.body.i204_crit_edge, label %for.cond.i200.land.lhs.true.i207_crit_edge

for.cond.i200.land.lhs.true.i207_crit_edge:       ; preds = %for.cond.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i207

for.cond.i200.for.body.i204_crit_edge:            ; preds = %for.cond.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i204

for.body.i204:                                    ; preds = %for.cond.i200.for.body.i204_crit_edge, %for.body.lr.ph.i197
  %i.067.i201 = phi i32 [ %79, %for.body.lr.ph.i197 ], [ %dec.i198, %for.cond.i200.for.body.i204_crit_edge ]
  %arrayidx.i202 = getelementptr %struct.p54_channel_entry, ptr %81, i32 %i.067.i201
  %82 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.i202, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %77)
  %cmp4.i203 = icmp eq i16 %83, %77
  br i1 %cmp4.i203, label %for.body.i204.if.end28.i226_crit_edge, label %for.cond.i200

for.body.i204.if.end28.i226_crit_edge:            ; preds = %for.body.i204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i226

land.lhs.true.i207:                               ; preds = %for.cond.i200.land.lhs.true.i207_crit_edge, %if.then40.land.lhs.true.i207_crit_edge
  %84 = ptrtoint ptr %max_entries351 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_entries351, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %85)
  %cmp11.i206 = icmp ult i32 %79, %85
  br i1 %cmp11.i206, label %if.then13.i211, label %land.lhs.true.i207.if.end52_crit_edge

land.lhs.true.i207.if.end52_crit_edge:            ; preds = %land.lhs.true.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then13.i211:                                   ; preds = %land.lhs.true.i207
  %86 = add i16 %77, -2412
  call void @__sanitizer_cov_trace_const_cmp2(i16 73, i16 %86)
  %87 = icmp ult i16 %86, 73
  %88 = add i16 %77, -4920
  call void @__sanitizer_cov_trace_const_cmp2(i16 906, i16 %88)
  %89 = icmp ult i16 %88, 906
  %spec.select.i.i208 = select i1 %89, i32 1, i32 -1
  %retval.0.i.i209 = select i1 %87, i32 0, i32 %spec.select.i.i208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i209)
  %cmp14.i210 = icmp sgt i32 %retval.0.i.i209, -1
  br i1 %cmp14.i210, label %if.then16.i223, label %if.then13.i211.if.end52_crit_edge

if.then13.i211.if.end52_crit_edge:                ; preds = %if.then13.i211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then16.i223:                                   ; preds = %if.then13.i211
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i212 = add nuw i32 %79, 1
  %90 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %inc.i212, ptr %entries.i, align 4
  %arrayidx18.i213 = getelementptr %struct.p54_channel_list, ptr %call7.i.i, i32 0, i32 3, i32 %retval.0.i.i209
  %91 = ptrtoint ptr %arrayidx18.i213 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx18.i213, align 4
  %inc19.i214 = add i32 %92, 1
  store i32 %inc19.i214, ptr %arrayidx18.i213, align 4
  %93 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call7.i.i, align 8
  %arrayidx21.i215 = getelementptr %struct.p54_channel_entry, ptr %94, i32 %79
  %95 = ptrtoint ptr %arrayidx21.i215 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %77, ptr %arrayidx21.i215, align 4
  %band23.i216 = getelementptr %struct.p54_channel_entry, ptr %94, i32 %79, i32 4
  %96 = ptrtoint ptr %band23.i216 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %retval.0.i.i209, ptr %band23.i216, align 4
  %conv24.i217 = zext i16 %77 to i32
  %mul.i.i218 = mul nuw nsw i32 %conv24.i217, 1000
  %call.i.i219 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i218) #9
  %index.i220 = getelementptr %struct.p54_channel_entry, ptr %94, i32 %79, i32 2
  %97 = ptrtoint ptr %index.i220 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call.i.i219, ptr %index.i220, align 4
  %max_power.i221 = getelementptr %struct.p54_channel_entry, ptr %94, i32 %79, i32 3
  %98 = ptrtoint ptr %max_power.i221 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %max_power.i221, align 4
  %data26.i222 = getelementptr %struct.p54_channel_entry, ptr %94, i32 %79, i32 1
  %99 = ptrtoint ptr %data26.i222 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %data26.i222, align 2
  br label %if.end28.i226

if.end28.i226:                                    ; preds = %if.then16.i223, %for.body.i204.if.end28.i226_crit_edge
  %entry1.2.i224 = phi ptr [ %arrayidx21.i215, %if.then16.i223 ], [ %arrayidx.i202, %for.body.i204.if.end28.i226_crit_edge ]
  %tobool.not.i225 = icmp eq ptr %entry1.2.i224, null
  br i1 %tobool.not.i225, label %if.end28.i226.if.end52_crit_edge, label %if.then49

if.end28.i226.if.end52_crit_edge:                 ; preds = %if.end28.i226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then49:                                        ; preds = %if.end28.i226
  %data31.i227 = getelementptr inbounds %struct.p54_channel_entry, ptr %entry1.2.i224, i32 0, i32 1
  %100 = ptrtoint ptr %data31.i227 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %data31.i227, align 2
  %or59.i228 = or i16 %101, 2
  store i16 %or59.i228, ptr %data31.i227, align 2
  %102 = ptrtoint ptr %rxhw.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %rxhw.i, align 4
  %104 = and i16 %103, 7
  %and.i = zext i16 %104 to i32
  %105 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and.i, label %if.then49.p54_get_maxpower.exit_crit_edge [
    i32 5, label %for.body.preheader.i
    i32 1, label %if.then49.sw.bb47.i_crit_edge
    i32 2, label %if.then49.sw.bb47.i_crit_edge371
    i32 3, label %if.then49.sw.bb47.i_crit_edge372
    i32 4, label %if.then49.sw.bb47.i_crit_edge373
  ]

if.then49.sw.bb47.i_crit_edge373:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i

if.then49.sw.bb47.i_crit_edge372:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i

if.then49.sw.bb47.i_crit_edge371:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i

if.then49.sw.bb47.i_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i

if.then49.p54_get_maxpower.exit_crit_edge:        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_get_maxpower.exit

for.body.preheader.i:                             ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i232 = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 0
  %val_qpsk.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 0, i32 1
  %106 = ptrtoint ptr %val_qpsk.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %val_qpsk.i, align 1
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #9
  %109 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %arrayidx.i232, align 1
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #9
  %112 = tail call i16 @llvm.umax.i16(i16 %108, i16 %111) #9
  %val_16qam.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 0, i32 2
  %113 = ptrtoint ptr %val_16qam.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %val_16qam.i, align 1
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #9
  %116 = tail call i16 @llvm.umax.i16(i16 %112, i16 %115) #9
  %val_64qam.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 0, i32 3
  %117 = ptrtoint ptr %val_64qam.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %val_64qam.i, align 1
  %119 = tail call i16 @llvm.bswap.i16(i16 %118) #9
  %120 = tail call i16 @llvm.umax.i16(i16 %116, i16 %119) #9
  %121 = zext i16 %120 to i32
  %arrayidx.1.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 1
  %val_qpsk.1.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 1, i32 1
  %122 = ptrtoint ptr %val_qpsk.1.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %val_qpsk.1.i, align 1
  %124 = tail call i16 @llvm.bswap.i16(i16 %123) #9
  %conv4.1.i = zext i16 %124 to i32
  %125 = tail call i32 @llvm.smax.i32(i32 %121, i32 %conv4.1.i) #9
  %126 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %arrayidx.1.i, align 1
  %128 = tail call i16 @llvm.bswap.i16(i16 %127) #9
  %conv12.1.i = zext i16 %128 to i32
  %129 = tail call i32 @llvm.umax.i32(i32 %125, i32 %conv12.1.i) #9
  %val_16qam.1.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 1, i32 2
  %130 = ptrtoint ptr %val_16qam.1.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %val_16qam.1.i, align 1
  %132 = tail call i16 @llvm.bswap.i16(i16 %131) #9
  %conv24.1.i = zext i16 %132 to i32
  %133 = tail call i32 @llvm.umax.i32(i32 %129, i32 %conv24.1.i) #9
  %val_64qam.1.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 1, i32 3
  %134 = ptrtoint ptr %val_64qam.1.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %val_64qam.1.i, align 1
  %136 = tail call i16 @llvm.bswap.i16(i16 %135) #9
  %conv36.1.i = zext i16 %136 to i32
  %137 = tail call i32 @llvm.umax.i32(i32 %133, i32 %conv36.1.i) #9
  %arrayidx.2.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 2
  %val_qpsk.2.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 2, i32 1
  %138 = ptrtoint ptr %val_qpsk.2.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %val_qpsk.2.i, align 1
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #9
  %conv4.2.i = zext i16 %140 to i32
  %141 = tail call i32 @llvm.smax.i32(i32 %137, i32 %conv4.2.i) #9
  %142 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %arrayidx.2.i, align 1
  %144 = tail call i16 @llvm.bswap.i16(i16 %143) #9
  %conv12.2.i = zext i16 %144 to i32
  %145 = tail call i32 @llvm.umax.i32(i32 %141, i32 %conv12.2.i) #9
  %val_16qam.2.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 2, i32 2
  %146 = ptrtoint ptr %val_16qam.2.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %val_16qam.2.i, align 1
  %148 = tail call i16 @llvm.bswap.i16(i16 %147) #9
  %conv24.2.i = zext i16 %148 to i32
  %149 = tail call i32 @llvm.umax.i32(i32 %145, i32 %conv24.2.i) #9
  %val_64qam.2.i = getelementptr %struct.pda_channel_output_limit_longbow, ptr %add.ptr, i32 0, i32 1, i32 2, i32 3
  %150 = ptrtoint ptr %val_64qam.2.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %val_64qam.2.i, align 1
  %152 = tail call i16 @llvm.bswap.i16(i16 %151) #9
  %conv36.2.i = zext i16 %152 to i32
  %153 = tail call i32 @llvm.umax.i32(i32 %149, i32 %conv36.2.i) #9
  %div138139140.i = lshr i32 %153, 4
  br label %p54_get_maxpower.exit

sw.bb47.i:                                        ; preds = %if.then49.sw.bb47.i_crit_edge, %if.then49.sw.bb47.i_crit_edge371, %if.then49.sw.bb47.i_crit_edge372, %if.then49.sw.bb47.i_crit_edge373
  %val_qpsk50.i = getelementptr inbounds %struct.pda_channel_output_limit, ptr %add.ptr, i32 0, i32 2
  %154 = ptrtoint ptr %val_qpsk50.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %val_qpsk50.i, align 1
  %val_bpsk63.i = getelementptr inbounds %struct.pda_channel_output_limit, ptr %add.ptr, i32 0, i32 1
  %156 = ptrtoint ptr %val_bpsk63.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %val_bpsk63.i, align 1
  %158 = tail call i8 @llvm.umax.i8(i8 %155, i8 %157) #9
  %val_16qam76.i = getelementptr inbounds %struct.pda_channel_output_limit, ptr %add.ptr, i32 0, i32 3
  %159 = ptrtoint ptr %val_16qam76.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %val_16qam76.i, align 1
  %161 = tail call i8 @llvm.umax.i8(i8 %158, i8 %160) #9
  %val_64qam89.i = getelementptr inbounds %struct.pda_channel_output_limit, ptr %add.ptr, i32 0, i32 4
  %162 = ptrtoint ptr %val_64qam89.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %val_64qam89.i, align 1
  %164 = tail call i8 @llvm.umax.i8(i8 %161, i8 %163) #9
  %165 = lshr i8 %164, 2
  %div103.i = zext i8 %165 to i32
  br label %p54_get_maxpower.exit

p54_get_maxpower.exit:                            ; preds = %sw.bb47.i, %for.body.preheader.i, %if.then49.p54_get_maxpower.exit_crit_edge
  %retval.0.i = phi i32 [ %div103.i, %sw.bb47.i ], [ %div138139140.i, %for.body.preheader.i ], [ 20, %if.then49.p54_get_maxpower.exit_crit_edge ]
  %max_power = getelementptr inbounds %struct.p54_channel_entry, ptr %entry1.2.i224, i32 0, i32 3
  %166 = ptrtoint ptr %max_power to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %retval.0.i, ptr %max_power, align 4
  br label %if.end52

if.end52:                                         ; preds = %p54_get_maxpower.exit, %if.end28.i226.if.end52_crit_edge, %if.then13.i211.if.end52_crit_edge, %land.lhs.true.i207.if.end52_crit_edge, %if.end36.if.end52_crit_edge
  %167 = ptrtoint ptr %curve_data to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %curve_data, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0329, i32 %170)
  %cmp55 = icmp ult i32 %i.0329, %170
  br i1 %cmp55, label %if.then56, label %if.end52.for.inc_crit_edge

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then56:                                        ; preds = %if.end52
  %entry_size58 = getelementptr inbounds %struct.p54_cal_database, ptr %168, i32 0, i32 1
  %171 = ptrtoint ptr %entry_size58 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %entry_size58, align 4
  %mul59 = mul i32 %172, %i.0329
  %offset61 = getelementptr inbounds %struct.p54_cal_database, ptr %168, i32 0, i32 2
  %173 = ptrtoint ptr %offset61 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %offset61, align 4
  %add62 = add i32 %mul59, %174
  %data64 = getelementptr inbounds %struct.p54_cal_database, ptr %168, i32 0, i32 4
  %add.ptr66 = getelementptr i8, ptr %data64, i32 %add62
  %175 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %add.ptr66, align 2
  %177 = tail call i16 @llvm.bswap.i16(i16 %176) #9
  %178 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %179)
  %cmp66.i234 = icmp sgt i32 %179, -1
  br i1 %cmp66.i234, label %for.body.lr.ph.i235, label %if.then56.land.lhs.true.i245_crit_edge

if.then56.land.lhs.true.i245_crit_edge:           ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i245

for.body.lr.ph.i235:                              ; preds = %if.then56
  %180 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %call7.i.i, align 8
  br label %for.body.i242

for.cond.i238:                                    ; preds = %for.body.i242
  %dec.i236 = add nsw i32 %i.067.i239, -1
  %cmp.i237 = icmp sgt i32 %i.067.i239, 0
  br i1 %cmp.i237, label %for.cond.i238.for.body.i242_crit_edge, label %for.cond.i238.land.lhs.true.i245_crit_edge

for.cond.i238.land.lhs.true.i245_crit_edge:       ; preds = %for.cond.i238
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i245

for.cond.i238.for.body.i242_crit_edge:            ; preds = %for.cond.i238
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.cond.i238.for.body.i242_crit_edge, %for.body.lr.ph.i235
  %i.067.i239 = phi i32 [ %179, %for.body.lr.ph.i235 ], [ %dec.i236, %for.cond.i238.for.body.i242_crit_edge ]
  %arrayidx.i240 = getelementptr %struct.p54_channel_entry, ptr %181, i32 %i.067.i239
  %182 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %arrayidx.i240, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %183, i16 %177)
  %cmp4.i241 = icmp eq i16 %183, %177
  br i1 %cmp4.i241, label %for.body.i242.if.end28.i264_crit_edge, label %for.cond.i238

for.body.i242.if.end28.i264_crit_edge:            ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i264

land.lhs.true.i245:                               ; preds = %for.cond.i238.land.lhs.true.i245_crit_edge, %if.then56.land.lhs.true.i245_crit_edge
  %184 = ptrtoint ptr %max_entries351 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %max_entries351, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %185)
  %cmp11.i244 = icmp ult i32 %179, %185
  br i1 %cmp11.i244, label %if.then13.i249, label %land.lhs.true.i245.for.inc_crit_edge

land.lhs.true.i245.for.inc_crit_edge:             ; preds = %land.lhs.true.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then13.i249:                                   ; preds = %land.lhs.true.i245
  %186 = add i16 %177, -2412
  call void @__sanitizer_cov_trace_const_cmp2(i16 73, i16 %186)
  %187 = icmp ult i16 %186, 73
  %188 = add i16 %177, -4920
  call void @__sanitizer_cov_trace_const_cmp2(i16 906, i16 %188)
  %189 = icmp ult i16 %188, 906
  %spec.select.i.i246 = select i1 %189, i32 1, i32 -1
  %retval.0.i.i247 = select i1 %187, i32 0, i32 %spec.select.i.i246
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i247)
  %cmp14.i248 = icmp sgt i32 %retval.0.i.i247, -1
  br i1 %cmp14.i248, label %if.then16.i261, label %if.then13.i249.for.inc_crit_edge

if.then13.i249.for.inc_crit_edge:                 ; preds = %if.then13.i249
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then16.i261:                                   ; preds = %if.then13.i249
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i250 = add nuw i32 %179, 1
  %190 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %inc.i250, ptr %entries.i, align 4
  %arrayidx18.i251 = getelementptr %struct.p54_channel_list, ptr %call7.i.i, i32 0, i32 3, i32 %retval.0.i.i247
  %191 = ptrtoint ptr %arrayidx18.i251 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx18.i251, align 4
  %inc19.i252 = add i32 %192, 1
  store i32 %inc19.i252, ptr %arrayidx18.i251, align 4
  %193 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %call7.i.i, align 8
  %arrayidx21.i253 = getelementptr %struct.p54_channel_entry, ptr %194, i32 %179
  %195 = ptrtoint ptr %arrayidx21.i253 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %177, ptr %arrayidx21.i253, align 4
  %band23.i254 = getelementptr %struct.p54_channel_entry, ptr %194, i32 %179, i32 4
  %196 = ptrtoint ptr %band23.i254 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %retval.0.i.i247, ptr %band23.i254, align 4
  %conv24.i255 = zext i16 %177 to i32
  %mul.i.i256 = mul nuw nsw i32 %conv24.i255, 1000
  %call.i.i257 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i256) #9
  %index.i258 = getelementptr %struct.p54_channel_entry, ptr %194, i32 %179, i32 2
  %197 = ptrtoint ptr %index.i258 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call.i.i257, ptr %index.i258, align 4
  %max_power.i259 = getelementptr %struct.p54_channel_entry, ptr %194, i32 %179, i32 3
  %198 = ptrtoint ptr %max_power.i259 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %max_power.i259, align 4
  %data26.i260 = getelementptr %struct.p54_channel_entry, ptr %194, i32 %179, i32 1
  %199 = ptrtoint ptr %data26.i260 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %data26.i260, align 2
  br label %if.end28.i264

if.end28.i264:                                    ; preds = %if.then16.i261, %for.body.i242.if.end28.i264_crit_edge
  %entry1.2.i262 = phi ptr [ %arrayidx21.i253, %if.then16.i261 ], [ %arrayidx.i240, %for.body.i242.if.end28.i264_crit_edge ]
  %tobool.not.i263 = icmp eq ptr %entry1.2.i262, null
  br i1 %tobool.not.i263, label %if.end28.i264.for.inc_crit_edge, label %if.then29.i267

if.end28.i264.for.inc_crit_edge:                  ; preds = %if.end28.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then29.i267:                                   ; preds = %if.end28.i264
  call void @__sanitizer_cov_trace_pc() #11
  %data31.i265 = getelementptr inbounds %struct.p54_channel_entry, ptr %entry1.2.i262, i32 0, i32 1
  %200 = ptrtoint ptr %data31.i265 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %data31.i265, align 2
  %or59.i266 = or i16 %201, 4
  store i16 %or59.i266, ptr %data31.i265, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then29.i267, %if.end28.i264.for.inc_crit_edge, %if.then13.i249.for.inc_crit_edge, %land.lhs.true.i245.for.inc_crit_edge, %if.end52.for.inc_crit_edge
  %inc = add nuw i32 %i.0329, 1
  %exitcond.not = icmp eq i32 %inc, %25
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %202 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %call7.i.i, align 8
  %entries71 = getelementptr inbounds %struct.p54_channel_list, ptr %call7.i.i, i32 0, i32 1
  %204 = ptrtoint ptr %entries71 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %entries71, align 4
  tail call void @sort(ptr noundef %203, i32 noundef %205, i32 noundef 16, ptr noundef nonnull @p54_compare_channels, ptr noundef null) #9
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  br label %for.body74

for.body74:                                       ; preds = %p54_generate_band.exit.thread.for.body74_crit_edge, %for.end
  %j.0338 = phi i32 [ 0, %for.end ], [ %264, %p54_generate_band.exit.thread.for.body74_crit_edge ]
  %i.1332 = phi i32 [ 0, %for.end ], [ %inc81, %p54_generate_band.exit.thread.for.body74_crit_edge ]
  %k.0331 = phi i32 [ 0, %for.end ], [ %k.7304, %p54_generate_band.exit.thread.for.body74_crit_edge ]
  %206 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %priv1, align 8
  %208 = ptrtoint ptr %entries71 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %entries71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool.not.i271 = icmp eq i32 %209, 0
  br i1 %tobool.not.i271, label %for.body74.p54_generate_band.exit.thread_crit_edge, label %lor.lhs.false.i

for.body74.p54_generate_band.exit.thread_crit_edge: ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_generate_band.exit.thread

lor.lhs.false.i:                                  ; preds = %for.body74
  %arrayidx.i272 = getelementptr %struct.p54_channel_list, ptr %call7.i.i, i32 0, i32 3, i32 %i.1332
  %210 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.i272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool2.not.i = icmp eq i32 %211, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.p54_generate_band.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.p54_generate_band.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_generate_band.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %212 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i273 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %212, i32 noundef 3520, i32 noundef 92) #14
  %tobool3.not.i = icmp eq ptr %call7.i.i.i273, null
  br i1 %tobool3.not.i, label %if.end.i.p54_generate_band.exit.thread_crit_edge, label %if.end5.i

if.end.i.p54_generate_band.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_generate_band.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %213 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i272, align 4
  %215 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %214, i32 56) #9
  %216 = extractvalue { i32, i1 } %215, 1
  br i1 %216, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !128

kcalloc.exit.thread.i:                            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %call7.i.i.i273 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %call7.i.i.i273, align 8
  br label %p54_generate_band.exit

if.end7.i.i.i:                                    ; preds = %if.end5.i
  %218 = extractvalue { i32, i1 } %215, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %218, i32 noundef 3520) #13
  %219 = ptrtoint ptr %call7.i.i.i273 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call8.i.i.i, ptr %call7.i.i.i273, align 8
  %tobool10.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool10.not.i, label %if.end7.i.i.i.p54_generate_band.exit_crit_edge, label %if.end12.i

if.end7.i.i.i.p54_generate_band.exit_crit_edge:   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_generate_band.exit

if.end12.i:                                       ; preds = %if.end7.i.i.i
  %220 = zext i32 %i.1332 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %i.1332, label %if.end12.i.p54_generate_band.exit_crit_edge [
    i32 0, label %if.end12.i.p54_fill_band_bitrates.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
  ]

if.end12.i.p54_fill_band_bitrates.exit.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_fill_band_bitrates.exit.i

if.end12.i.p54_generate_band.exit_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_generate_band.exit

sw.bb1.i.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_fill_band_bitrates.exit.i

p54_fill_band_bitrates.exit.i:                    ; preds = %sw.bb1.i.i, %if.end12.i.p54_fill_band_bitrates.exit.i_crit_edge
  %p54_bgrates.sink.i.i = phi ptr [ @p54_arates, %sw.bb1.i.i ], [ @p54_bgrates, %if.end12.i.p54_fill_band_bitrates.exit.i_crit_edge ]
  %.sink.i.i = phi i32 [ 8, %sw.bb1.i.i ], [ 12, %if.end12.i.p54_fill_band_bitrates.exit.i_crit_edge ]
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call7.i.i.i273, i32 0, i32 1
  %221 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %p54_bgrates.sink.i.i, ptr %bitrates.i.i, align 4
  %n_bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call7.i.i.i273, i32 0, i32 4
  %222 = ptrtoint ptr %n_bitrates.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %.sink.i.i, ptr %n_bitrates.i.i, align 8
  %223 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx.i272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp156.not.i = icmp eq i32 %224, 0
  br i1 %cmp156.not.i, label %p54_fill_band_bitrates.exit.i.err_out.i_crit_edge, label %land.rhs.lr.ph.i

p54_fill_band_bitrates.exit.i.err_out.i_crit_edge: ; preds = %p54_fill_band_bitrates.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.i

land.rhs.lr.ph.i:                                 ; preds = %p54_fill_band_bitrates.exit.i
  %survey.i = getelementptr inbounds %struct.p54_common, ptr %207, i32 0, i32 28
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %k.1 = phi i32 [ %k.0331, %land.rhs.lr.ph.i ], [ %k.2, %cleanup.i.land.rhs.i_crit_edge ]
  %j.0159.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %j.1.i, %cleanup.i.land.rhs.i_crit_edge ]
  %i.0157.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc61.i, %cleanup.i.land.rhs.i_crit_edge ]
  %225 = ptrtoint ptr %entries71 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %entries71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0157.i, i32 %226)
  %cmp20.i = icmp ult i32 %i.0157.i, %226
  br i1 %cmp20.i, label %for.body.i278, label %land.rhs.i.for.end.i_crit_edge

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i278:                                    ; preds = %land.rhs.i
  %227 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %call7.i.i, align 8
  %arrayidx22.i = getelementptr %struct.p54_channel_entry, ptr %228, i32 %i.0157.i
  %229 = ptrtoint ptr %call7.i.i.i273 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %call7.i.i.i273, align 8
  %arrayidx24.i = getelementptr %struct.ieee80211_channel, ptr %230, i32 %j.0159.i
  %band25.i = getelementptr %struct.p54_channel_entry, ptr %228, i32 %i.0157.i, i32 4
  %231 = ptrtoint ptr %band25.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %band25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %i.1332)
  %cmp26.not.i = icmp eq i32 %232, %i.1332
  br i1 %cmp26.not.i, label %if.end28.i279, label %for.body.i278.cleanup.i_crit_edge

for.body.i278.cleanup.i_crit_edge:                ; preds = %for.body.i278
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end28.i279:                                    ; preds = %for.body.i278
  %data.i = getelementptr %struct.p54_channel_entry, ptr %228, i32 %i.0157.i, i32 1
  %233 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %234)
  %cmp29.not.i = icmp eq i16 %234, 7
  br i1 %cmp29.not.i, label %if.end47.i, label %do.end.i

do.end.i:                                         ; preds = %if.end28.i279
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %234 to i32
  %235 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %wiphy.i, align 8
  %dev32.i = getelementptr inbounds %struct.wiphy, ptr %236, i32 0, i32 56
  %and.i280 = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i280)
  %tobool35.not.i = icmp eq i32 %and.i280, 0
  %cond.i = select i1 %tobool35.not.i, ptr @.str.51, ptr @.str.50
  %and38.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %cond40.i = select i1 %tobool39.not.i, ptr @.str.52, ptr @.str.50
  %and43.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %cond45.i = select i1 %tobool44.not.i, ptr @.str.53, ptr @.str.50
  %index.i281 = getelementptr %struct.p54_channel_entry, ptr %228, i32 %i.0157.i, i32 2
  %237 = ptrtoint ptr %index.i281 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %index.i281, align 4
  %239 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %arrayidx22.i, align 4
  %conv46.i = zext i16 %240 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond40.i, ptr noundef nonnull %cond45.i, i32 noundef %238, i32 noundef %conv46.i) #12
  br label %cleanup.i

if.end47.i:                                       ; preds = %if.end28.i279
  call void @__sanitizer_cov_trace_pc() #11
  %241 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %i.1332, ptr %arrayidx24.i, align 4
  %242 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %arrayidx22.i, align 4
  %conv51.i = zext i16 %243 to i32
  %center_freq.i = getelementptr %struct.ieee80211_channel, ptr %230, i32 %j.0159.i, i32 1
  %244 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %conv51.i, ptr %center_freq.i, align 4
  %max_power.i282 = getelementptr %struct.p54_channel_entry, ptr %228, i32 %i.0157.i, i32 3
  %245 = ptrtoint ptr %max_power.i282 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %max_power.i282, align 4
  %max_power52.i = getelementptr %struct.ieee80211_channel, ptr %230, i32 %j.0159.i, i32 6
  %247 = ptrtoint ptr %max_power52.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %max_power52.i, align 4
  %248 = ptrtoint ptr %call7.i.i.i273 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %call7.i.i.i273, align 8
  %arrayidx54.i = getelementptr %struct.ieee80211_channel, ptr %249, i32 %j.0159.i
  %250 = ptrtoint ptr %survey.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %survey.i, align 4
  %arrayidx55.i = getelementptr %struct.survey_info, ptr %251, i32 %k.1
  %252 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %arrayidx54.i, ptr %arrayidx55.i, align 8
  %253 = load ptr, ptr %survey.i, align 4
  %filled.i = getelementptr %struct.survey_info, ptr %253, i32 %k.1, i32 8
  %254 = ptrtoint ptr %filled.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 77, ptr %filled.i, align 8
  %conv58.i = trunc i32 %k.1 to i16
  %hw_value.i = getelementptr %struct.ieee80211_channel, ptr %230, i32 %j.0159.i, i32 3
  %255 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv58.i, ptr %hw_value.i, align 2
  %inc.i283 = add nuw i32 %j.0159.i, 1
  %inc59.i = add i32 %k.1, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end47.i, %do.end.i, %for.body.i278.cleanup.i_crit_edge
  %k.2 = phi i32 [ %inc59.i, %if.end47.i ], [ %k.1, %do.end.i ], [ %k.1, %for.body.i278.cleanup.i_crit_edge ]
  %j.1.i = phi i32 [ %inc.i283, %if.end47.i ], [ %j.0159.i, %do.end.i ], [ %j.0159.i, %for.body.i278.cleanup.i_crit_edge ]
  %inc61.i = add nuw i32 %i.0157.i, 1
  %256 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx.i272, align 4
  %cmp.i284 = icmp ult i32 %j.1.i, %257
  br i1 %cmp.i284, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %k.3 = phi i32 [ %k.2, %cleanup.i.for.end.i_crit_edge ], [ %k.1, %land.rhs.i.for.end.i_crit_edge ]
  %j.0.lcssa.i = phi i32 [ %j.1.i, %cleanup.i.for.end.i_crit_edge ], [ %j.0159.i, %land.rhs.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.lcssa.i)
  %cmp62.i = icmp eq i32 %j.0.lcssa.i, 0
  br i1 %cmp62.i, label %for.end.i.err_out.i_crit_edge, label %if.end73.i

for.end.i.err_out.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.i

if.end73.i:                                       ; preds = %for.end.i
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call7.i.i.i273, i32 0, i32 3
  %258 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %j.0.lcssa.i, ptr %n_channels.i, align 4
  %arrayidx74.i = getelementptr %struct.p54_common, ptr %207, i32 0, i32 39, i32 %i.1332
  %259 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx74.i, align 4
  store ptr %call7.i.i.i273, ptr %arrayidx74.i, align 4
  %tobool77.not.i = icmp eq ptr %260, null
  br i1 %tobool77.not.i, label %if.end73.i.p54_generate_band.exit.thread305_crit_edge, label %if.end73.i.p54_generate_band.exit_crit_edge

if.end73.i.p54_generate_band.exit_crit_edge:      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_generate_band.exit

if.end73.i.p54_generate_band.exit.thread305_crit_edge: ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_generate_band.exit.thread305

err_out.i:                                        ; preds = %for.end.i.err_out.i_crit_edge, %p54_fill_band_bitrates.exit.i.err_out.i_crit_edge
  %k.4 = phi i32 [ %k.0331, %p54_fill_band_bitrates.exit.i.err_out.i_crit_edge ], [ %k.3, %for.end.i.err_out.i_crit_edge ]
  %261 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %wiphy.i, align 8
  %dev69.i = getelementptr inbounds %struct.wiphy, ptr %262, i32 0, i32 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1332)
  %cmp70.i = icmp eq i32 %i.1332, 0
  %cond72.i = select i1 %cmp70.i, i32 2, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69.i, ptr noundef nonnull @.str.55, i32 noundef %cond72.i) #12
  br label %p54_generate_band.exit

p54_generate_band.exit:                           ; preds = %err_out.i, %if.end73.i.p54_generate_band.exit_crit_edge, %if.end12.i.p54_generate_band.exit_crit_edge, %if.end7.i.i.i.p54_generate_band.exit_crit_edge, %kcalloc.exit.thread.i
  %k.6 = phi i32 [ %k.3, %if.end73.i.p54_generate_band.exit_crit_edge ], [ %k.0331, %kcalloc.exit.thread.i ], [ %k.0331, %if.end7.i.i.i.p54_generate_band.exit_crit_edge ], [ %k.0331, %if.end12.i.p54_generate_band.exit_crit_edge ], [ %k.4, %err_out.i ]
  %call7.i.i.sink.i = phi ptr [ %260, %if.end73.i.p54_generate_band.exit_crit_edge ], [ %call7.i.i.i273, %kcalloc.exit.thread.i ], [ %call7.i.i.i273, %if.end7.i.i.i.p54_generate_band.exit_crit_edge ], [ %call7.i.i.i273, %if.end12.i.p54_generate_band.exit_crit_edge ], [ %call7.i.i.i273, %err_out.i ]
  %cmp76 = phi i1 [ true, %if.end73.i.p54_generate_band.exit_crit_edge ], [ false, %kcalloc.exit.thread.i ], [ false, %if.end7.i.i.i.p54_generate_band.exit_crit_edge ], [ false, %if.end12.i.p54_generate_band.exit_crit_edge ], [ false, %err_out.i ]
  %263 = ptrtoint ptr %call7.i.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %.sink.i = load ptr, ptr %call7.i.i.sink.i, align 4
  tail call void @kfree(ptr noundef %.sink.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.sink.i) #9
  br i1 %cmp76, label %p54_generate_band.exit.p54_generate_band.exit.thread305_crit_edge, label %p54_generate_band.exit.p54_generate_band.exit.thread_crit_edge

p54_generate_band.exit.p54_generate_band.exit.thread_crit_edge: ; preds = %p54_generate_band.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_generate_band.exit.thread

p54_generate_band.exit.p54_generate_band.exit.thread305_crit_edge: ; preds = %p54_generate_band.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %p54_generate_band.exit.thread305

p54_generate_band.exit.thread305:                 ; preds = %p54_generate_band.exit.p54_generate_band.exit.thread305_crit_edge, %if.end73.i.p54_generate_band.exit.thread305_crit_edge
  %k.7310 = phi i32 [ %k.6, %p54_generate_band.exit.p54_generate_band.exit.thread305_crit_edge ], [ %k.3, %if.end73.i.p54_generate_band.exit.thread305_crit_edge ]
  %inc78311 = add i32 %j.0338, 1
  br label %p54_generate_band.exit.thread

p54_generate_band.exit.thread:                    ; preds = %p54_generate_band.exit.thread305, %p54_generate_band.exit.p54_generate_band.exit.thread_crit_edge, %if.end.i.p54_generate_band.exit.thread_crit_edge, %lor.lhs.false.i.p54_generate_band.exit.thread_crit_edge, %for.body74.p54_generate_band.exit.thread_crit_edge
  %k.7304 = phi i32 [ %k.7310, %p54_generate_band.exit.thread305 ], [ %k.6, %p54_generate_band.exit.p54_generate_band.exit.thread_crit_edge ], [ %k.0331, %lor.lhs.false.i.p54_generate_band.exit.thread_crit_edge ], [ %k.0331, %for.body74.p54_generate_band.exit.thread_crit_edge ], [ %k.0331, %if.end.i.p54_generate_band.exit.thread_crit_edge ]
  %264 = phi i32 [ %inc78311, %p54_generate_band.exit.thread305 ], [ %j.0338, %p54_generate_band.exit.p54_generate_band.exit.thread_crit_edge ], [ %j.0338, %lor.lhs.false.i.p54_generate_band.exit.thread_crit_edge ], [ %j.0338, %for.body74.p54_generate_band.exit.thread_crit_edge ], [ %j.0338, %if.end.i.p54_generate_band.exit.thread_crit_edge ]
  %inc81 = add nuw nsw i32 %i.1332, 1
  %exitcond342.not = icmp eq i32 %inc81, 6
  br i1 %exitcond342.not, label %free, label %p54_generate_band.exit.thread.for.body74_crit_edge

p54_generate_band.exit.thread.for.body74_crit_edge: ; preds = %p54_generate_band.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

free:                                             ; preds = %p54_generate_band.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp83 = icmp eq i32 %264, 0
  %not.cmp83 = xor i1 %cmp83, true
  %spec.select160 = select i1 %cmp83, i32 -22, i32 0
  br label %if.then87

if.then87:                                        ; preds = %free, %if.end24.thread350.if.then87_crit_edge, %kcalloc.exit.thread346.if.then87_crit_edge, %kcalloc.exit.thread
  %ret.0316 = phi i32 [ %spec.select160, %free ], [ -12, %kcalloc.exit.thread ], [ -12, %if.end24.thread350.if.then87_crit_edge ], [ -12, %kcalloc.exit.thread346.if.then87_crit_edge ]
  %tobool90.not314 = phi i1 [ %not.cmp83, %free ], [ false, %kcalloc.exit.thread ], [ false, %if.end24.thread350.if.then87_crit_edge ], [ false, %kcalloc.exit.thread346.if.then87_crit_edge ]
  %265 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %266) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br i1 %tobool90.not314, label %if.then87.if.end94_crit_edge, label %if.then87.if.then91_crit_edge

if.then87.if.then91_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.then87.if.end94_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then91:                                        ; preds = %if.then87.if.then91_crit_edge, %if.end.if.then91_crit_edge
  %ret.0317323 = phi i32 [ %ret.0316, %if.then87.if.then91_crit_edge ], [ -12, %if.end.if.then91_crit_edge ]
  %survey92 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 28
  %267 = ptrtoint ptr %survey92 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %survey92, align 4
  tail call void @kfree(ptr noundef %268) #9
  %269 = ptrtoint ptr %survey92 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr null, ptr %survey92, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.then87.if.end94_crit_edge
  %ret.0317324 = phi i32 [ %ret.0317323, %if.then91 ], [ %ret.0316, %if.then87.if.end94_crit_edge ]
  ret i32 %ret.0317324
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_init_xbow_synth(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_read_eeprom(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %fw_var = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fw_var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1288, i32 %3)
  %cmp = icmp ugt i32 %3, 1288
  %. = select i1 %cmp, i32 1008, i32 1016
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8224, i32 noundef 3520, i32 noundef 2) #13
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.free_crit_edge, label %entry.while.body_crit_edge, !prof !128

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.free_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %entry.while.body_crit_edge
  %offset.043 = phi i32 [ %add, %if.end20.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %eeprom_size.042 = phi i32 [ %sub21, %if.end20.while.body_crit_edge ], [ 8224, %entry.while.body_crit_edge ]
  %4 = tail call i32 @llvm.umin.i32(i32 %eeprom_size.042, i32 %.)
  %add.ptr = getelementptr i8, ptr %call1.i.i.i, i32 %offset.043
  %conv = trunc i32 %offset.043 to i16
  %conv10 = trunc i32 %4 to i16
  %call11 = tail call i32 @p54_download_eeprom(ptr noundef %1, ptr noundef %add.ptr, i16 noundef zeroext %conv, i16 noundef zeroext %conv10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end20, label %while.body.free_crit_edge, !prof !129

while.body.free_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end20:                                         ; preds = %while.body
  %add = add i32 %offset.043, %4
  %sub21 = sub i32 %eeprom_size.042, %4
  %tobool8.not = icmp eq i32 %sub21, 0
  br i1 %tobool8.not, label %while.end, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 @p54_parse_eeprom(ptr noundef %dev, ptr noundef nonnull %call1.i.i.i, i32 noundef %add)
  br label %free

free:                                             ; preds = %while.end, %while.body.free_crit_edge, %entry.free_crit_edge
  %ret.0 = phi i32 [ -12, %entry.free_crit_edge ], [ %call22, %while.end ], [ %call11, %while.body.free_crit_edge ]
  tail call void @kfree(ptr noundef %call1.i.i.i) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_download_eeprom(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @p54_compare_rssichan(ptr nocapture noundef readonly %_a, ptr nocapture noundef readonly %_b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_a to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %_a, align 2
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %_b to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %_b, align 2
  %conv2 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  ret i32 %sub
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @p54_compare_channels(ptr nocapture noundef readonly %_a, ptr nocapture noundef readonly %_b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_a to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %_a, align 4
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %_b to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %_b, align 4
  %conv2 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  ret i32 %sub
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 783, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @p54_parse_eeprom._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @p54_parse_eeprom._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 866, i32 5}
!10 = !{ptr @p54_parse_eeprom._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @p54_parse_eeprom._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 882, i32 2}
!14 = !{ptr @p54_parse_eeprom._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @p54_parse_eeprom._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 889, i32 3}
!18 = !{ptr @p54_parse_eeprom._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @p54_parse_eeprom._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 917, i32 3}
!22 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @p54_parse_eeprom._entry.14, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @p54_parse_eeprom._entry_ptr.17, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 925, i32 2}
!27 = !{ptr @.str.20, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @p54_parse_eeprom._entry.18, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @p54_parse_eeprom._entry_ptr.21, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.23, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 943, i32 2}
!32 = !{ptr @p54_parse_eeprom._entry.22, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @p54_parse_eeprom._entry_ptr.24, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_p54_parse_eeprom, !35, !"__ksymtab_p54_parse_eeprom", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 946, i32 1}
!36 = !{ptr @__ksymtab_p54_read_eeprom, !37, !"__ksymtab_p54_read_eeprom", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 981, i32 1}
!38 = !{ptr @p54_rssi_default, !39, !"p54_rssi_default", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 55, i32 33}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 673, i32 3}
!42 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @p54_convert_output_limits._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @p54_convert_output_limits._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 641, i32 3}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @p54_parse_default_country._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @p54_parse_default_country._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 645, i32 3}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @p54_parse_default_country.__UNIQUE_ID_ddebug369, !51, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!54 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 648, i32 3}
!57 = !{ptr @p54_parse_default_country._entry.32, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @p54_parse_default_country._entry_ptr.34, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 528, i32 4}
!61 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @p54_parse_rssical._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @p54_parse_rssical._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 545, i32 4}
!66 = !{ptr @p54_parse_rssical._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @p54_parse_rssical._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 594, i32 2}
!70 = !{ptr @p54_parse_rssical._entry.40, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @p54_parse_rssical._entry_ptr.42, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 598, i32 2}
!74 = !{ptr @p54_parse_rssical.__UNIQUE_ID_ddebug368, !73, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!75 = !{ptr @p54_parse_rssical._entry.44, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 600, i32 2}
!77 = !{ptr @p54_parse_rssical._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 330, i32 3}
!80 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @p54_generate_channel_lists._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @p54_generate_channel_lists._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 180, i32 4}
!85 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @p54_generate_band._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @p54_generate_band._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.52, !84, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.53, !84, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 206, i32 3}
!94 = !{ptr @p54_generate_band._entry.54, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @p54_generate_band._entry_ptr.56, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @p54_bgrates, !97, !"p54_bgrates", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 29, i32 30}
!98 = !{ptr @p54_arates, !99, !"p54_arates", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 44, i32 30}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 514, i32 39}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 514, i32 52}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 514, i32 63}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 515, i32 2}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 515, i32 13}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 515, i32 21}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 515, i32 32}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 515, i32 45}
!116 = !{ptr @p54_rf_chips, !117, !"p54_rf_chips", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intersil/p54/eeprom.c", i32 514, i32 20}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2148203616, i64 2148203621, i64 2148203634, i64 2148203678, i64 2148203712, i64 2148203733}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{!"branch_weights", i32 2000, i32 1}
