; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/p54/fwio.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/p54/fwio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+p54_parse_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_p54_parse_firmware\09\09\09\09"
module asm "\09.long\09__crc_p54_parse_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p54_parse_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22p54_parse_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_p54_parse_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.firmware = type { i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bootrec = type { i32, i32, [10 x i32] }
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
%struct.bootrec_desc = type <{ i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [4 x i8], i16 }>
%struct.exp_if = type { i16, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.p54_hdr = type { i16, i16, i32, i16, i8, i8, [0 x i8] }
%struct.anon.134 = type { i16, i16, [0 x i8] }
%struct.anon.135 = type { i32, i16, i8, i8, [4 x i8], [0 x i8] }
%struct.p54_tim = type { i8, [3 x i8], [8 x i16] }
%struct.p54_setup_mac = type { i16, [6 x i8], [6 x i8], i8, i8, %union.anon.136 }
%union.anon.136 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i32, i16, i16 }
%struct.anon.137 = type { i32, [8 x i8], i32, i16, i16, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.p54_scan_head = type { i16, i16, [20 x i8], i16 }
%struct.pda_iq_autocal_entry = type { i16, %struct.p54_iq_autocal_entry }
%struct.p54_iq_autocal_entry = type { [4 x i16] }
%struct.p54_cal_database = type { i32, i32, i32, i32, [0 x i8] }
%struct.p54_scan_body = type { i8, i8, i8, i8, i8, i8, [8 x %struct.p54_pa_curve_data_sample], i8, i8, i8, i8 }
%struct.p54_pa_curve_data_sample = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pda_channel_output_limit = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.p54_scan_body_longbow = type { %struct.p54_channel_output_limit_longbow, [8 x %struct.p54_pa_curve_data_sample_longbow], [6 x i16] }
%struct.p54_channel_output_limit_longbow = type { [12 x i16] }
%struct.p54_pa_curve_data_sample_longbow = type { i16, i16, [3 x %struct.anon.139] }
%struct.anon.139 = type { [4 x i16] }
%struct.pda_pa_curve_data = type { i8, i8, i8, i8, [0 x i8] }
%struct.p54_scan_tail_rate = type { i32, [8 x i8] }
%struct.p54_rssi_db_entry = type { i16, i16, i16, i16, i16 }
%struct.pda_rssi_cal_entry = type { i16, i16 }
%struct.p54_led = type { i16, [2 x i16], [2 x i16] }
%struct.p54_edcf = type { i8, i8, i8, i8, [8 x %struct.p54_edcf_queue_param], [4 x i8], i16, i16 }
%struct.p54_psm = type { i16, i16, [4 x %struct.p54_psm_interval], i8, i8, i8, [1 x i8] }
%struct.p54_psm_interval = type { i16, i16 }
%struct.p54_xbow_synth = type <{ i16, i16, i16, [5 x i32] }>
%struct.p54_keycache = type { i8, i8, [6 x i8], [2 x i8], i8, i8, [24 x i8] }
%struct.p54_group_address_table = type { i16, i16, [4 x [6 x i8]] }

@p54_parse_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"p54 detected a LM%c%c firmware\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"p54_parse_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/intersil/p54/fwio.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p54_parse_firmware._entry_ptr = internal global ptr @p54_parse_firmware._entry, section ".printk_index", align 4
@p54_parse_firmware._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 70, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported firmware\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@p54_parse_firmware._entry_ptr.8 = internal global ptr @p54_parse_firmware._entry.5, section ".printk_index", align 4
@p54_parse_firmware._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016p54: rx_mtu reduced from %d to %d\0A\00", [59 x i8] zeroinitializer }, align 32
@p54_parse_firmware._entry_ptr.11 = internal global ptr @p54_parse_firmware._entry.9, section ".printk_index", align 4
@p54_parse_firmware._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 126, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FW rev %s - Softmac protocol %x.%x\0A\00", [60 x i8] zeroinitializer }, align 32
@p54_parse_firmware._entry_ptr.14 = internal global ptr @p54_parse_firmware._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s - %x.%x\00", [21 x i8] zeroinitializer }, align 32
@p54_parse_firmware._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"you are using an obsolete firmware. visit http://wireless.wiki.kernel.org/en/users/Drivers/p54 and grab one for \22kernel >= 2.6.28\22!\0A\00", [59 x i8] zeroinitializer }, align 32
@p54_parse_firmware._entry_ptr.18 = internal global ptr @p54_parse_firmware._entry.16, section ".printk_index", align 4
@p54_parse_firmware._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cryptographic accelerator WEP:%s, TKIP:%s, CCMP:%s\0A\00", [44 x i8] zeroinitializer }, align 32
@p54_parse_firmware._entry_ptr.21 = internal global ptr @p54_parse_firmware._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YES\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_p54_parse_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_p54_parse_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_p54_parse_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p54_parse_firmware to i32), ptr @__kstrtab_p54_parse_firmware, ptr @__kstrtabns_p54_parse_firmware }, section "___ksymtab_gpl+p54_parse_firmware", align 4
@p54_download_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 254, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"device does not respond or signal received!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"p54_download_eeprom\00", [44 x i8] zeroinitializer }, align 32
@p54_download_eeprom._entry_ptr = internal global ptr @p54_download_eeprom._entry, section ".printk_index", align 4
@p54_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 533, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"frequency change to channel %d failed.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p54_scan\00", [23 x i8] zeroinitializer }, align 32
@p54_scan._entry_ptr = internal global ptr @p54_scan._entry, section ".printk_index", align 4
@p54_upload_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 693, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid cryptographic algorithm: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"p54_upload_key\00", [17 x i8] zeroinitializer }, align 32
@p54_upload_key._entry_ptr = internal global ptr @p54_upload_key._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2147483649, i64 2147483650, i64 2147483652, i64 2147483905, i64 4278190335, i64 4294967295]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1280127536, i64 1280129078, i64 1280129079]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 7]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 62, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 69, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 99, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 124, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 128, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 133, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 155, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 253, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 531, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [44 x i8] c"../drivers/net/wireless/intersil/p54/fwio.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 692, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab_p54_parse_firmware, ptr @p54_download_eeprom._entry, ptr @p54_download_eeprom._entry_ptr, ptr @p54_parse_firmware._entry, ptr @p54_parse_firmware._entry.12, ptr @p54_parse_firmware._entry.16, ptr @p54_parse_firmware._entry.19, ptr @p54_parse_firmware._entry.5, ptr @p54_parse_firmware._entry.9, ptr @p54_parse_firmware._entry_ptr, ptr @p54_parse_firmware._entry_ptr.11, ptr @p54_parse_firmware._entry_ptr.14, ptr @p54_parse_firmware._entry_ptr.18, ptr @p54_parse_firmware._entry_ptr.21, ptr @p54_parse_firmware._entry_ptr.8, ptr @p54_scan._entry, ptr @p54_scan._entry_ptr, ptr @p54_upload_key._entry, ptr @p54_upload_key._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_firmware._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_firmware._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_firmware._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_firmware._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_parse_firmware._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_download_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_upload_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_parse_firmware(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %data2 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw, align 4
  %shr = lshr i32 %5, 2
  %add.ptr = getelementptr i32, ptr %3, i32 %shr
  %rx_start = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %rx_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup205_crit_edge

entry.cleanup205_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup205

while.cond.preheader:                             ; preds = %entry
  %cmp311 = icmp ult ptr %3, %add.ptr
  br i1 %cmp311, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %data.0312 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %3, %while.cond.preheader.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %data.0312 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.0312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i32, ptr %data.0312, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %data.0.lcssa = phi ptr [ %3, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ], [ %data.0312, %land.rhs.while.end_crit_edge ]
  %cmp6314 = icmp ult ptr %data.0.lcssa, %add.ptr
  br i1 %cmp6314, label %while.end.land.rhs7_crit_edge, label %while.end.while.end12_crit_edge

while.end.while.end12_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end12

while.end.land.rhs7_crit_edge:                    ; preds = %while.end
  br label %land.rhs7

land.rhs7:                                        ; preds = %while.body10.land.rhs7_crit_edge, %while.end.land.rhs7_crit_edge
  %data.1315 = phi ptr [ %incdec.ptr11, %while.body10.land.rhs7_crit_edge ], [ %data.0.lcssa, %while.end.land.rhs7_crit_edge ]
  %10 = ptrtoint ptr %data.1315 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.1315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %while.body10, label %land.rhs7.while.end12_crit_edge

land.rhs7.while.end12_crit_edge:                  ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end12

while.body10:                                     ; preds = %land.rhs7
  %incdec.ptr11 = getelementptr i32, ptr %data.1315, i32 1
  %cmp6 = icmp ult ptr %incdec.ptr11, %add.ptr
  br i1 %cmp6, label %while.body10.land.rhs7_crit_edge, label %while.body10.while.end12_crit_edge

while.body10.while.end12_crit_edge:               ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end12

while.body10.land.rhs7_crit_edge:                 ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs7

while.end12:                                      ; preds = %while.body10.while.end12_crit_edge, %land.rhs7.while.end12_crit_edge, %while.end.while.end12_crit_edge
  %data.1.lcssa = phi ptr [ %data.0.lcssa, %while.end.while.end12_crit_edge ], [ %incdec.ptr11, %while.body10.while.end12_crit_edge ], [ %data.1315, %land.rhs7.while.end12_crit_edge ]
  %data14321 = getelementptr inbounds %struct.bootrec, ptr %data.1.lcssa, i32 0, i32 2
  %cmp15.not322 = icmp ugt ptr %data14321, %add.ptr
  br i1 %cmp15.not322, label %while.end12.if.end125_crit_edge, label %land.rhs16.lr.ph

while.end12.if.end125_crit_edge:                  ; preds = %while.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

land.rhs16.lr.ph:                                 ; preds = %while.end12
  %fw_var = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 15
  %rx_end56 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 10
  %headroom57 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 12
  %tailroom58 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 13
  %privacy_caps59 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 57
  %rx_keycache_size60 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 58
  %tx_hdr_len = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 14
  %rx_mtu68 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 11
  %fw_interface = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 16
  br label %land.rhs16

land.rhs16:                                       ; preds = %cleanup.land.rhs16_crit_edge, %land.rhs16.lr.ph
  %data14328 = phi ptr [ %data14321, %land.rhs16.lr.ph ], [ %data14, %cleanup.land.rhs16_crit_edge ]
  %fw_version.0327 = phi ptr [ null, %land.rhs16.lr.ph ], [ %fw_version.1, %cleanup.land.rhs16_crit_edge ]
  %end_data.0326 = phi ptr [ %add.ptr, %land.rhs16.lr.ph ], [ %end_data.1, %cleanup.land.rhs16_crit_edge ]
  %bootrec.0323 = phi ptr [ %data.1.lcssa, %land.rhs16.lr.ph ], [ %arrayidx104, %cleanup.land.rhs16_crit_edge ]
  %len19 = getelementptr inbounds %struct.bootrec, ptr %bootrec.0323, i32 0, i32 1
  %12 = ptrtoint ptr %len19 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %len19, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr20 = getelementptr i32, ptr %data14328, i32 %14
  %cmp21.not = icmp ugt ptr %add.ptr20, %end_data.0326
  br i1 %cmp21.not, label %land.rhs16.while.end105_crit_edge, label %while.body23

land.rhs16.while.end105_crit_edge:                ; preds = %land.rhs16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end105

while.body23:                                     ; preds = %land.rhs16
  %15 = ptrtoint ptr %bootrec.0323 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %bootrec.0323, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %while.body23.cleanup_crit_edge [
    i32 -2147483647, label %sw.bb
    i32 -2147483646, label %sw.bb41
    i32 -2147483391, label %sw.bb51
    i32 -2147483644, label %for.cond.preheader
    i32 -1, label %while.body23.sw.bb100_crit_edge
    i32 -16776961, label %while.body23.sw.bb100_crit_edge336
  ]

while.body23.sw.bb100_crit_edge336:               ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb100

while.body23.sw.bb100_crit_edge:                  ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb100

while.body23.cleanup_crit_edge:                   ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %while.body23
  %mul = mul i32 %14, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul)
  %cmp90318.not = icmp ult i32 %mul, 4
  br i1 %cmp90318.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %div300 = lshr i32 %mul, 2
  br label %for.body

sw.bb:                                            ; preds = %while.body23
  %19 = ptrtoint ptr %data14328 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data14328, align 4
  %21 = ptrtoint ptr %fw_interface to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fw_interface, align 8
  %22 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %20, label %cleanup.thread [
    i32 1280129078, label %sw.bb.sw.bb28_crit_edge
    i32 1280127536, label %sw.bb.sw.bb28_crit_edge337
    i32 1280129079, label %sw.bb.sw.bb28_crit_edge338
  ]

sw.bb.sw.bb28_crit_edge338:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

sw.bb.sw.bb28_crit_edge337:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

sw.bb.sw.bb28_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb.sw.bb28_crit_edge, %sw.bb.sw.bb28_crit_edge337, %sw.bb.sw.bb28_crit_edge338
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy, align 8
  %dev31 = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  %arrayidx = getelementptr i8, ptr %data14328, i32 2
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %28 to i32
  %arrayidx32 = getelementptr i8, ptr %data14328, i32 3
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv33) #10
  br label %cleanup

cleanup.thread:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %wiphy39 = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wiphy39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy39, align 8
  %dev40 = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.6) #10
  br label %cleanup205

sw.bb41:                                          ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 @strnlen(ptr noundef %data14328, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call44)
  %cmp45 = icmp ult i32 %call44, 24
  %spec.select = select i1 %cmp45, ptr %data14328, ptr %fw_version.0327
  br label %cleanup

sw.bb51:                                          ; preds = %while.body23
  %rx_start54 = getelementptr inbounds %struct.bootrec, ptr %bootrec.0323, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %rx_start54 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %rx_start54, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %rx_start to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %rx_start, align 4
  %rx_end = getelementptr inbounds %struct.bootrec, ptr %bootrec.0323, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %rx_end to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %rx_end, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %sub = add i32 %41, -13568
  %42 = ptrtoint ptr %rx_end56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %rx_end56, align 8
  %headroom = getelementptr inbounds %struct.bootrec, ptr %bootrec.0323, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %headroom to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %headroom, align 1
  %45 = ptrtoint ptr %headroom57 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %headroom57, align 2
  %tailroom = getelementptr inbounds %struct.bootrec_desc, ptr %data14328, i32 0, i32 5
  %46 = ptrtoint ptr %tailroom to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tailroom, align 1
  %48 = ptrtoint ptr %tailroom58 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %tailroom58, align 1
  %privacy_caps = getelementptr inbounds %struct.bootrec, ptr %bootrec.0323, i32 0, i32 2, i32 4
  %49 = ptrtoint ptr %privacy_caps to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %privacy_caps, align 1
  %51 = ptrtoint ptr %privacy_caps59 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %privacy_caps59, align 4
  %rx_keycache_size = getelementptr inbounds %struct.bootrec_desc, ptr %data14328, i32 0, i32 9
  %52 = ptrtoint ptr %rx_keycache_size to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rx_keycache_size, align 1
  %54 = ptrtoint ptr %rx_keycache_size60 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %rx_keycache_size60, align 1
  %55 = ptrtoint ptr %len19 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %len19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %56)
  %cmp62 = icmp eq i32 %56, 184549376
  br i1 %cmp62, label %if.then64, label %if.else

if.then64:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  %rx_mtu = getelementptr inbounds %struct.bootrec, ptr %bootrec.0323, i32 1
  %57 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %rx_mtu, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  br label %if.end69

if.else:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %tx_hdr_len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_hdr_len, align 8
  %62 = trunc i32 %61 to i16
  %conv67 = sub i16 1568, %62
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then64
  %storemerge = phi i16 [ %conv67, %if.else ], [ %59, %if.then64 ]
  %63 = ptrtoint ptr %rx_mtu68 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %storemerge, ptr %rx_mtu68, align 4
  %64 = ptrtoint ptr %tx_hdr_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_hdr_len, align 8
  %add72 = add i32 %65, 2376
  %conv74 = zext i16 %storemerge to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %conv74)
  %cmp75 = icmp slt i32 %add72, %conv74
  br i1 %cmp75, label %do.end80, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end80:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv74, i32 noundef %add72) #10
  %conv84 = trunc i32 %add72 to i16
  %66 = ptrtoint ptr %rx_mtu68 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv84, ptr %rx_mtu68, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0319 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %if_id = getelementptr %struct.exp_if, ptr %data14328, i32 %i.0319, i32 1
  %67 = ptrtoint ptr %if_id to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %if_id, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6656, i16 %68)
  %cmp94 = icmp eq i16 %68, 6656
  br i1 %cmp94, label %if.then96, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then96:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %variant = getelementptr %struct.exp_if, ptr %data14328, i32 %i.0319, i32 2
  %69 = ptrtoint ptr %variant to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %variant, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70)
  %conv98 = zext i16 %71 to i32
  %72 = ptrtoint ptr %fw_var to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv98, ptr %fw_var, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then96, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0319, 1
  %exitcond.not = icmp eq i32 %inc, %div300
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb100:                                         ; preds = %while.body23.sw.bb100_crit_edge, %while.body23.sw.bb100_crit_edge336
  br label %cleanup

cleanup:                                          ; preds = %sw.bb100, %for.inc.cleanup_crit_edge, %do.end80, %if.end69.cleanup_crit_edge, %sw.bb41, %sw.bb28, %for.cond.preheader.cleanup_crit_edge, %while.body23.cleanup_crit_edge
  %end_data.1 = phi ptr [ %end_data.0326, %while.body23.cleanup_crit_edge ], [ null, %sw.bb100 ], [ %end_data.0326, %sw.bb28 ], [ %end_data.0326, %sw.bb41 ], [ %end_data.0326, %do.end80 ], [ %end_data.0326, %if.end69.cleanup_crit_edge ], [ %end_data.0326, %for.cond.preheader.cleanup_crit_edge ], [ %end_data.0326, %for.inc.cleanup_crit_edge ]
  %fw_version.1 = phi ptr [ %fw_version.0327, %while.body23.cleanup_crit_edge ], [ %fw_version.0327, %sw.bb100 ], [ %fw_version.0327, %sw.bb28 ], [ %spec.select, %sw.bb41 ], [ %fw_version.0327, %do.end80 ], [ %fw_version.0327, %if.end69.cleanup_crit_edge ], [ %fw_version.0327, %for.cond.preheader.cleanup_crit_edge ], [ %fw_version.0327, %for.inc.cleanup_crit_edge ]
  %arrayidx104 = getelementptr %struct.bootrec, ptr %bootrec.0323, i32 0, i32 2, i32 %14
  %data14 = getelementptr inbounds %struct.bootrec, ptr %arrayidx104, i32 0, i32 2
  %cmp15.not = icmp ugt ptr %data14, %end_data.1
  br i1 %cmp15.not, label %cleanup.while.end105_crit_edge, label %cleanup.land.rhs16_crit_edge

cleanup.land.rhs16_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs16

cleanup.while.end105_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end105

while.end105:                                     ; preds = %cleanup.while.end105_crit_edge, %land.rhs16.while.end105_crit_edge
  %fw_version.0.lcssa = phi ptr [ %fw_version.0327, %land.rhs16.while.end105_crit_edge ], [ %fw_version.1, %cleanup.while.end105_crit_edge ]
  %tobool106.not = icmp eq ptr %fw_version.0.lcssa, null
  br i1 %tobool106.not, label %while.end105.if.end125_crit_edge, label %do.end110

while.end105.if.end125_crit_edge:                 ; preds = %while.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

do.end110:                                        ; preds = %while.end105
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  %wiphy112 = getelementptr inbounds %struct.ieee80211_hw, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %wiphy112 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wiphy112, align 8
  %dev113 = getelementptr inbounds %struct.wiphy, ptr %76, i32 0, i32 56
  %fw_var114 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 15
  %77 = ptrtoint ptr %fw_var114 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fw_var114, align 4
  %shr115 = lshr i32 %78, 8
  %and = and i32 %78, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev113, ptr noundef nonnull @.str.13, ptr noundef nonnull %fw_version.0.lcssa, i32 noundef %shr115, i32 noundef %and) #10
  %wiphy117 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %79 = ptrtoint ptr %wiphy117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wiphy117, align 8
  %fw_version118 = getelementptr inbounds %struct.wiphy, ptr %80, i32 0, i32 38
  %81 = ptrtoint ptr %fw_var114 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fw_var114, align 4
  %shr121 = lshr i32 %82, 8
  %and123 = and i32 %82, 255
  %call124 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version118, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef nonnull %fw_version.0.lcssa, i32 noundef %shr121, i32 noundef %and123)
  br label %if.end125

if.end125:                                        ; preds = %do.end110, %while.end105.if.end125_crit_edge, %while.end12.if.end125_crit_edge
  %fw_var126 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 15
  %83 = ptrtoint ptr %fw_var126 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fw_var126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %84)
  %cmp127 = icmp ult i32 %84, 1280
  br i1 %cmp127, label %if.end136, label %if.end125.if.end168_crit_edge

if.end125.if.end168_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.end136:                                        ; preds = %if.end125
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %wiphy134 = getelementptr inbounds %struct.ieee80211_hw, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %wiphy134 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wiphy134, align 8
  %dev135 = getelementptr inbounds %struct.wiphy, ptr %88, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev135, ptr noundef nonnull @.str.17) #10
  %89 = ptrtoint ptr %fw_var126 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pr = load i32, ptr %fw_var126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %.pr)
  %cmp138 = icmp ugt i32 %.pr, 767
  br i1 %cmp138, label %if.then140, label %if.end136.do.end173_crit_edge

if.end136.do.end173_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end173

if.then140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %.pr)
  %cmp142 = icmp ugt i32 %.pr, 1279
  br i1 %cmp142, label %if.then140.if.end168_crit_edge, label %if.else155

if.then140.if.end168_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.else155:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.end168:                                        ; preds = %if.else155, %if.then140.if.end168_crit_edge, %if.end125.if.end168_crit_edge
  %.sink335 = phi i32 [ 3, %if.else155 ], [ 16, %if.end125.if.end168_crit_edge ], [ 16, %if.then140.if.end168_crit_edge ]
  %.sink334 = phi i32 [ 4, %if.else155 ], [ 16, %if.end125.if.end168_crit_edge ], [ 16, %if.then140.if.end168_crit_edge ]
  %.sink = phi i32 [ 2, %if.else155 ], [ 16, %if.end125.if.end168_crit_edge ], [ 16, %if.then140.if.end168_crit_edge ]
  %limit158 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 4, i32 1
  %90 = ptrtoint ptr %limit158 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.sink335, ptr %limit158, align 4
  %limit161 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 5, i32 1
  %91 = ptrtoint ptr %limit161 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.sink334, ptr %limit161, align 4
  %limit164 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 6, i32 1
  %92 = ptrtoint ptr %limit164 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink335, ptr %limit164, align 4
  %limit167 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 7, i32 1
  %93 = ptrtoint ptr %limit167 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %.sink, ptr %limit167, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 8
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 4, ptr %queues, align 4
  br label %do.end173

do.end173:                                        ; preds = %if.end168, %if.end136.do.end173_crit_edge
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  %wiphy175 = getelementptr inbounds %struct.ieee80211_hw, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %wiphy175 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wiphy175, align 8
  %dev176 = getelementptr inbounds %struct.wiphy, ptr %100, i32 0, i32 56
  %privacy_caps177 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 57
  %101 = ptrtoint ptr %privacy_caps177 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %privacy_caps177, align 4
  %conv178 = zext i8 %102 to i32
  %and179 = and i32 %conv178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  %cond = select i1 %tobool180.not, ptr @.str.23, ptr @.str.22
  %and183 = and i32 %conv178, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  %cond185 = select i1 %tobool184.not, ptr @.str.23, ptr @.str.22
  %and188 = and i32 %conv178, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  %cond190 = select i1 %tobool189.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev176, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, ptr noundef nonnull %cond185, ptr noundef nonnull %cond190) #10
  %rx_keycache_size191 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 58
  %103 = ptrtoint ptr %rx_keycache_size191 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %rx_keycache_size191, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool192.not = icmp eq i8 %104, 0
  br i1 %tobool192.not, label %do.end173.if.end204_crit_edge, label %if.end7.i.i

do.end173.if.end204_crit_edge:                    ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

if.end7.i.i:                                      ; preds = %do.end173
  %conv195 = zext i8 %104 to i32
  %sub197 = add nuw nsw i32 %conv195, 31
  %105 = lshr i32 %sub197, 3
  %106 = and i32 %105, 60
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %106, i32 noundef 3520) #12
  %used_rxkeys = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 59
  %107 = ptrtoint ptr %used_rxkeys to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call8.i.i, ptr %used_rxkeys, align 8
  %tobool201.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool201.not, label %if.end7.i.i.cleanup205_crit_edge, label %if.end7.i.i.if.end204_crit_edge

if.end7.i.i.if.end204_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

if.end7.i.i.cleanup205_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup205

if.end204:                                        ; preds = %if.end7.i.i.if.end204_crit_edge, %do.end173.if.end204_crit_edge
  br label %cleanup205

cleanup205:                                       ; preds = %if.end204, %if.end7.i.i.cleanup205_crit_edge, %cleanup.thread, %entry.cleanup205_crit_edge
  %retval.2 = phi i32 [ 0, %if.end204 ], [ 0, %entry.cleanup205_crit_edge ], [ -12, %if.end7.i.i.cleanup205_crit_edge ], [ -19, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_download_eeprom(ptr noundef %priv, ptr noundef %buf, i16 noundef zeroext %offset, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_var = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %fw_var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1288, i32 %1)
  %cmp = icmp ugt i32 %1, 1288
  %. = select i1 %cmp, i32 12, i32 4
  %conv = zext i16 %len to i32
  %add = add nuw nsw i32 %., %conv
  %conv1 = trunc i32 %add to i16
  %conv.i = and i32 %add, 65535
  %add.i = add nuw nsw i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 4084, i16 %conv1)
  %cmp.i = icmp ugt i16 %conv1, 4084
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp2.i = icmp ugt i32 %3, 64
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i, !prof !61

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %add.i, %5
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 3264) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end6

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end6.i
  %6 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 %7
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %12 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 128, ptr %call13.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv1) #7
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %15 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 3072, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %16 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %17 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tries.i, align 1
  %eeprom_mutex = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 67
  tail call void @mutex_lock_nested(ptr noundef %eeprom_mutex, i32 noundef 0) #7
  %eeprom = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 65
  %18 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf, ptr %eeprom, align 8
  %call9 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add) #7
  %19 = ptrtoint ptr %fw_var to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1289, i32 %20)
  %cmp11 = icmp ult i32 %20, 1289
  br i1 %cmp11, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %21 = tail call i16 @llvm.bswap.i16(i16 %offset)
  %22 = ptrtoint ptr %call9 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %call9, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %len)
  %len15 = getelementptr inbounds %struct.anon.134, ptr %call9, i32 0, i32 1
  %24 = ptrtoint ptr %len15 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %len15, align 1
  br label %if.end20

if.else16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %conv17 = zext i16 %offset to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv17)
  %26 = ptrtoint ptr %call9 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %call9, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %len)
  %len19 = getelementptr inbounds %struct.anon.135, ptr %call9, i32 0, i32 1
  %28 = ptrtoint ptr %len19 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %len19, align 1
  %magic2 = getelementptr inbounds %struct.anon.135, ptr %call9, i32 0, i32 2
  %29 = ptrtoint ptr %magic2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 15, ptr %magic2, align 1
  %magic = getelementptr inbounds %struct.anon.135, ptr %call9, i32 0, i32 4
  %30 = ptrtoint ptr %magic to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 1280262987, ptr %magic, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then13
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  %eeprom_comp = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 66
  %call21 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %eeprom_comp, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %do.end, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end20.if.end25_crit_edge
  %ret.0 = phi i32 [ -16, %do.end ], [ 0, %if.end20.if.end25_crit_edge ]
  %35 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %eeprom, align 8
  tail call void @mutex_unlock(ptr noundef %eeprom_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_tx(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_update_beacon_tim(ptr noundef %priv, i16 noundef zeroext %aid, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 64
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end6.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %3, 32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 2592) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %10 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 5120, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %12 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 1280, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %13 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %14 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tries.i, align 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #7
  %15 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %call4, align 1
  %or = or i16 %aid, -32768
  %cond = select i1 %set, i16 %or, i16 %aid
  %16 = tail call i16 @llvm.bswap.i16(i16 %cond)
  %entry8 = getelementptr inbounds %struct.p54_tim, ptr %call4, i32 0, i32 2
  %17 = ptrtoint ptr %entry8 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %entry8, align 1
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_sta_unlock(ptr noundef %priv, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 64
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end6.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %3, 20
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 2592) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %10 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 2048, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %12 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 5376, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %13 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %14 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tries.i, align 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #7
  %15 = call ptr @memcpy(ptr %call4, ptr %addr, i32 6)
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_tx_cancel(ptr noundef %priv, i32 noundef %req_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %req_id)
  %rx_start = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 9
  %1 = ptrtoint ptr %rx_start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rx_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %rx_end = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 10
  %3 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_end, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %4)
  %cmp1 = icmp ugt i32 %0, %4
  br i1 %cmp1, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !61

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp2.i = icmp ugt i32 %6, 64
  br i1 %cmp2.i, label %if.end.cleanup_crit_edge, label %if.end6.i, !prof !61

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %7 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %8, 16
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 2592) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end13

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %10
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %14, i32 %10
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %15 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 1024, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %17 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 1792, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %18 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %19 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %tries.i, align 1
  %call14 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #7
  %20 = ptrtoint ptr %call14 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %req_id, ptr %call14, align 1
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end6.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %lor.rhs.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_setup_mac(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 64
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end6.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %3, 56
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 2592) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %10 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 11264, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %12 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %type14.i, align 1
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 44) #7
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then3:                                         ; preds = %if.end
  %mode4 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 46
  %17 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode4, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %18, label %sw.default [
    i32 2, label %if.then3.sw.epilog_crit_edge
    i32 3, label %sw.bb5
    i32 1, label %if.then3.sw.bb6_crit_edge
    i32 7, label %if.then3.sw.bb6_crit_edge97
    i32 6, label %sw.bb7
  ]

if.then3.sw.bb6_crit_edge97:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.then3.sw.bb6_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.then3.sw.epilog_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then3.sw.bb6_crit_edge, %if.then3.sw.bb6_crit_edge97
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %if.then3.sw.epilog_crit_edge
  %cmp.not = phi i1 [ false, %sw.default ], [ true, %sw.bb7 ], [ false, %sw.bb6 ], [ false, %sw.bb5 ], [ false, %if.then3.sw.epilog_crit_edge ]
  %mode.0 = phi i16 [ 32, %sw.default ], [ 16, %sw.bb7 ], [ 2, %sw.bb6 ], [ 4, %sw.bb5 ], [ 1, %if.then3.sw.epilog_crit_edge ]
  %filter_flags = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 44
  %20 = ptrtoint ptr %filter_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %filter_flags, align 8
  %and8 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %sw.epilog.if.end15_crit_edge, label %land.lhs.true

sw.epilog.if.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %22 = or i16 %mode.0, 8
  %spec.select = select i1 %cmp.not, i16 %mode.0, i16 %22
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %sw.epilog.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %mode.1 = phi i16 [ %mode.0, %sw.epilog.if.end15_crit_edge ], [ %spec.select, %land.lhs.true ], [ 32, %if.end.if.end15_crit_edge ]
  %23 = tail call i16 @llvm.bswap.i16(i16 %mode.1)
  %24 = ptrtoint ptr %call1 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %call1, align 1
  %mac_addr = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 1
  %mac_addr16 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 40
  %25 = call ptr @memcpy(ptr %mac_addr, ptr %mac_addr16, i32 6)
  %bssid = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 2
  %bssid19 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 41
  %26 = call ptr @memcpy(ptr %bssid, ptr %bssid19, i32 6)
  %rx_diversity_mask = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 23
  %27 = ptrtoint ptr %rx_diversity_mask to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rx_diversity_mask, align 2
  %29 = and i8 %28, 2
  %rx_antenna = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 3
  %30 = ptrtoint ptr %rx_antenna to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %rx_antenna, align 1
  %rx_align = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 4
  %31 = ptrtoint ptr %rx_align to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %rx_align, align 1
  %fw_var = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 15
  %32 = ptrtoint ptr %fw_var to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %33)
  %cmp24 = icmp ult i32 %33, 1280
  br i1 %cmp24, label %if.then26, label %if.else31

if.then26:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %basic_rate_mask = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 49
  %34 = ptrtoint ptr %basic_rate_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %basic_rate_mask, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %36, ptr %37, align 1
  %rts_rates = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %rts_rates to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 0, ptr %rts_rates, align 1
  %rx_end = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 10
  %40 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_end, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %rx_addr = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 5
  %43 = ptrtoint ptr %rx_addr to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %rx_addr, align 1
  %rx_mtu = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 11
  %44 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rx_mtu, align 4
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %max_rx = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 6
  %47 = ptrtoint ptr %max_rx to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %max_rx, align 1
  %rxhw = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 22
  %48 = ptrtoint ptr %rxhw to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rxhw, align 4
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %rxhw29 = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 8
  %51 = ptrtoint ptr %rxhw29 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %rxhw29, align 1
  %wakeup_timer = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 43
  %52 = ptrtoint ptr %wakeup_timer to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %wakeup_timer, align 4
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %wakeup_timer30 = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 10
  %55 = ptrtoint ptr %wakeup_timer30 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %wakeup_timer30, align 1
  %unalloc0 = getelementptr inbounds %struct.anon.137, ptr %37, i32 0, i32 6
  %56 = ptrtoint ptr %unalloc0 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 0, ptr %unalloc0, align 1
  br label %if.end41

if.else31:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %rx_end32 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 10
  %57 = ptrtoint ptr %rx_end32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_end32, align 8
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %59, ptr %60, align 1
  %rx_mtu34 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 11
  %62 = ptrtoint ptr %rx_mtu34 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %rx_mtu34, align 4
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %max_rx35 = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 1
  %65 = ptrtoint ptr %max_rx35 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %64, ptr %max_rx35, align 1
  %rxhw36 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 22
  %66 = ptrtoint ptr %rxhw36 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %rxhw36, align 4
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %rxhw37 = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 2
  %69 = ptrtoint ptr %rxhw37 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %68, ptr %rxhw37, align 1
  %wakeup_timer38 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 43
  %70 = ptrtoint ptr %wakeup_timer38 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %wakeup_timer38, align 4
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %timer = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 3
  %73 = ptrtoint ptr %timer to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %timer, align 1
  %truncate = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 4
  %74 = ptrtoint ptr %truncate to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 191, ptr %truncate, align 1
  %basic_rate_mask39 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 49
  %75 = ptrtoint ptr %basic_rate_mask39 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %basic_rate_mask39, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %basic_rate_mask40 = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 5
  %78 = ptrtoint ptr %basic_rate_mask40 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %basic_rate_mask40, align 1
  %sbss_offset = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 6
  %ref_clock = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 10
  %79 = ptrtoint ptr %sbss_offset to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 0, ptr %sbss_offset, align 1
  %80 = ptrtoint ptr %ref_clock to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 1717986854, ptr %ref_clock, align 1
  %lpf_bandwidth = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 11
  %81 = ptrtoint ptr %lpf_bandwidth to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 -1, ptr %lpf_bandwidth, align 1
  %osc_start_delay = getelementptr inbounds %struct.p54_setup_mac, ptr %call1, i32 0, i32 5, i32 0, i32 12
  %82 = ptrtoint ptr %osc_start_delay to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 -1, ptr %osc_start_delay, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else31, %if.then26
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %mode.1)
  %cmp43 = icmp eq i16 %mode.1, 32
  %phy_idle = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 52
  %frombool = zext i1 %cmp43 to i8
  %83 = ptrtoint ptr %phy_idle to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %frombool, ptr %phy_idle, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_scan(ptr noundef %priv, i16 noundef zeroext %mode, i16 noundef zeroext %dwell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %center_freq, align 4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp2.i = icmp ugt i32 %8, 64
  br i1 %cmp2.i, label %entry.cleanup189_crit_edge, label %if.end6.i, !prof !61

entry.cleanup189_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %9 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %10, 328
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 2592) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup189_crit_edge, label %if.end

if.end6.i.cleanup189_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end:                                           ; preds = %if.end6.i
  %11 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %12
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %16, i32 %12
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %17 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 15361, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %19 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 256, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %20 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %21 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %tries.i, align 1
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 26) #7
  %scan_params = getelementptr inbounds %struct.p54_scan_head, ptr %call2, i32 0, i32 2
  %22 = call ptr @memset(ptr %scan_params, i32 0, i32 20)
  %23 = tail call i16 @llvm.bswap.i16(i16 %mode)
  %24 = ptrtoint ptr %call2 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %call2, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %dwell)
  %dwell4 = getelementptr inbounds %struct.p54_scan_head, ptr %call2, i32 0, i32 1
  %26 = ptrtoint ptr %dwell4 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %dwell4, align 1
  %freq5 = getelementptr inbounds %struct.p54_scan_head, ptr %call2, i32 0, i32 3
  %27 = ptrtoint ptr %freq5 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %6, ptr %freq5, align 1
  %rxhw = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 22
  %28 = ptrtoint ptr %rxhw to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rxhw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %29)
  %cmp = icmp eq i16 %29, 5
  br i1 %cmp, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #7
  %30 = ptrtoint ptr %call9 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 3072, ptr %call9, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #7
  %iq_autocal_len = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 35
  %31 = ptrtoint ptr %iq_autocal_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iq_autocal_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp12329.not = icmp eq i32 %32, 0
  br i1 %cmp12329.not, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %iq_autocal14 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 34
  %33 = ptrtoint ptr %iq_autocal14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iq_autocal14, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0330 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pda_iq_autocal_entry, ptr %34, i32 %i.0330
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %6)
  %cmp18.not = icmp eq i16 %36, %6
  br i1 %cmp18.not, label %if.end21, label %for.inc

if.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %params = getelementptr %struct.pda_iq_autocal_entry, ptr %34, i32 %i.0330, i32 1
  %37 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %params, align 1
  %39 = ptrtoint ptr %call11 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %call11, align 1
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0330, 1
  %exitcond.not = icmp eq i32 %inc, %32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21, %if.end10.for.end_crit_edge
  %i.0326 = phi i32 [ %i.0330, %if.end21 ], [ 0, %if.end10.for.end_crit_edge ], [ %32, %for.inc.for.end_crit_edge ]
  %40 = ptrtoint ptr %iq_autocal_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iq_autocal_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0326, i32 %41)
  %cmp25 = icmp eq i32 %i.0326, %41
  br i1 %cmp25, label %for.end.do.end_crit_edge, label %if.end28

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end28:                                         ; preds = %for.end
  %42 = ptrtoint ptr %rxhw to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rxhw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %43)
  %cmp31 = icmp eq i16 %43, 5
  %. = select i1 %cmp31, i32 260, i32 74
  %call35 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %.) #7
  %output_limit = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 37
  %44 = ptrtoint ptr %output_limit to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %output_limit, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp38332.not = icmp eq i32 %47, 0
  br i1 %cmp38332.not, label %if.end28.for.end66_crit_edge, label %for.body40.lr.ph

if.end28.for.end66_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end66

for.body40.lr.ph:                                 ; preds = %if.end28
  %data = getelementptr inbounds %struct.p54_cal_database, ptr %45, i32 0, i32 4
  %entry_size = getelementptr inbounds %struct.p54_cal_database, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %entry_size, align 4
  br label %for.body40

for.body40:                                       ; preds = %for.inc64.for.body40_crit_edge, %for.body40.lr.ph
  %i.1333 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc65, %for.inc64.for.body40_crit_edge ]
  %mul = mul i32 %49, %i.1333
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %6)
  %cmp46.not = icmp eq i16 %51, %6
  br i1 %cmp46.not, label %if.end49, label %for.inc64

if.end49:                                         ; preds = %for.body40
  %add.ptr.le = getelementptr i8, ptr %data, i32 %mul
  %52 = ptrtoint ptr %rxhw to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rxhw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %53)
  %cmp52 = icmp eq i16 %53, 5
  br i1 %cmp52, label %if.then54, label %if.else58

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr55 = getelementptr i8, ptr %add.ptr.le, i32 2
  %54 = call ptr @memcpy(ptr %call35, ptr %add.ptr55, i32 %49)
  br label %for.end66

if.else58:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %val_barker = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 1
  %55 = ptrtoint ptr %val_barker to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 56, ptr %val_barker, align 1
  %val_bpsk = getelementptr inbounds %struct.pda_channel_output_limit, ptr %add.ptr.le, i32 0, i32 1
  %56 = ptrtoint ptr %val_bpsk to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %val_bpsk, align 1
  %dup_bpsk = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 7
  %58 = ptrtoint ptr %dup_bpsk to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %dup_bpsk, align 1
  %val_bpsk59 = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 2
  %59 = ptrtoint ptr %val_bpsk59 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %57, ptr %val_bpsk59, align 1
  %val_qpsk = getelementptr inbounds %struct.pda_channel_output_limit, ptr %add.ptr.le, i32 0, i32 2
  %60 = ptrtoint ptr %val_qpsk to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %val_qpsk, align 1
  %dup_qpsk = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 8
  %62 = ptrtoint ptr %dup_qpsk to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %dup_qpsk, align 1
  %val_qpsk60 = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 3
  %63 = ptrtoint ptr %val_qpsk60 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %61, ptr %val_qpsk60, align 1
  %val_16qam = getelementptr inbounds %struct.pda_channel_output_limit, ptr %add.ptr.le, i32 0, i32 3
  %64 = ptrtoint ptr %val_16qam to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %val_16qam, align 1
  %dup_16qam = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 9
  %66 = ptrtoint ptr %dup_16qam to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %dup_16qam, align 1
  %val_16qam61 = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 4
  %67 = ptrtoint ptr %val_16qam61 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %65, ptr %val_16qam61, align 1
  %val_64qam = getelementptr inbounds %struct.pda_channel_output_limit, ptr %add.ptr.le, i32 0, i32 4
  %68 = ptrtoint ptr %val_64qam to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %val_64qam, align 1
  %dup_64qam = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 10
  %70 = ptrtoint ptr %dup_64qam to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %dup_64qam, align 1
  %val_64qam62 = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 5
  %71 = ptrtoint ptr %val_64qam62 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %69, ptr %val_64qam62, align 1
  br label %for.end66

for.inc64:                                        ; preds = %for.body40
  %inc65 = add nuw i32 %i.1333, 1
  %exitcond346.not = icmp eq i32 %inc65, %47
  br i1 %exitcond346.not, label %for.inc64.for.end66_crit_edge, label %for.inc64.for.body40_crit_edge

for.inc64.for.body40_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40

for.inc64.for.end66_crit_edge:                    ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end66

for.end66:                                        ; preds = %for.inc64.for.end66_crit_edge, %if.else58, %if.then54, %if.end28.for.end66_crit_edge
  %i.1322 = phi i32 [ %i.1333, %if.then54 ], [ %i.1333, %if.else58 ], [ 0, %if.end28.for.end66_crit_edge ], [ %47, %for.inc64.for.end66_crit_edge ]
  %72 = ptrtoint ptr %output_limit to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %output_limit, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1322, i32 %75)
  %cmp69 = icmp eq i32 %i.1322, %75
  br i1 %cmp69, label %for.end66.do.end_crit_edge, label %if.end72

for.end66.do.end_crit_edge:                       ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end72:                                         ; preds = %for.end66
  %curve_data = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 36
  %76 = ptrtoint ptr %curve_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %curve_data, align 4
  %data73 = getelementptr inbounds %struct.p54_cal_database, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp80335.not = icmp eq i32 %79, 0
  br i1 %cmp80335.not, label %if.end72.for.end122_crit_edge, label %for.body82.lr.ph

if.end72.for.end122_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end122

for.body82.lr.ph:                                 ; preds = %if.end72
  %offset = getelementptr inbounds %struct.p54_cal_database, ptr %77, i32 0, i32 2
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset, align 4
  %add.ptr76 = getelementptr i8, ptr %data73, i32 %81
  %entry_size89 = getelementptr inbounds %struct.p54_cal_database, ptr %77, i32 0, i32 1
  br label %for.body82

for.body82:                                       ; preds = %if.then87.for.body82_crit_edge, %for.body82.lr.ph
  %entry1.0337 = phi ptr [ %add.ptr76, %for.body82.lr.ph ], [ %add.ptr90, %if.then87.for.body82_crit_edge ]
  %i.2336 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc121, %if.then87.for.body82_crit_edge ]
  %82 = ptrtoint ptr %entry1.0337 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %entry1.0337, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %6)
  %cmp85.not = icmp eq i16 %83, %6
  br i1 %cmp85.not, label %if.end91, label %if.then87

if.then87:                                        ; preds = %for.body82
  %84 = ptrtoint ptr %entry_size89 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %entry_size89, align 4
  %add.ptr90 = getelementptr i8, ptr %entry1.0337, i32 %85
  %inc121 = add nuw i32 %i.2336, 1
  %exitcond347.not = icmp eq i32 %inc121, %79
  br i1 %exitcond347.not, label %if.then87.for.end122_crit_edge, label %if.then87.for.body82_crit_edge

if.then87.for.body82_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body82

if.then87.for.end122_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end122

if.end91:                                         ; preds = %for.body82
  %86 = ptrtoint ptr %rxhw to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %rxhw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %87)
  %cmp94 = icmp eq i16 %87, 5
  br i1 %cmp94, label %if.then96, label %if.else101

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %curve_data97 = getelementptr inbounds %struct.p54_scan_body_longbow, ptr %call35, i32 0, i32 1
  %add.ptr98 = getelementptr i8, ptr %entry1.0337, i32 2
  %88 = ptrtoint ptr %entry_size89 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %entry_size89, align 4
  %90 = call ptr @memcpy(ptr %curve_data97, ptr %add.ptr98, i32 %89)
  br label %for.end122

if.else101:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr107 = getelementptr i8, ptr %entry1.0337, i32 2
  %91 = ptrtoint ptr %call35 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 8, ptr %call35, align 1
  %curve_data108 = getelementptr inbounds %struct.p54_scan_body, ptr %call35, i32 0, i32 6
  %92 = call ptr @memset(ptr %curve_data108, i32 0, i32 64)
  %points_per_channel = getelementptr inbounds %struct.pda_pa_curve_data, ptr %data73, i32 0, i32 2
  %93 = ptrtoint ptr %points_per_channel to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %points_per_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %94)
  %cmp114 = icmp ugt i8 %94, 8
  %conv113 = zext i8 %94 to i32
  %phi.bo = shl nuw nsw i32 %conv113, 3
  %cond = select i1 %cmp114, i32 64, i32 %phi.bo
  %95 = call ptr @memcpy(ptr %curve_data108, ptr %add.ptr107, i32 %cond)
  br label %for.end122

for.end122:                                       ; preds = %if.else101, %if.then96, %if.then87.for.end122_crit_edge, %if.end72.for.end122_crit_edge
  %i.2318 = phi i32 [ %i.2336, %if.then96 ], [ %i.2336, %if.else101 ], [ 0, %if.end72.for.end122_crit_edge ], [ %79, %if.then87.for.end122_crit_edge ]
  %96 = ptrtoint ptr %curve_data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %curve_data, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2318, i32 %99)
  %cmp125 = icmp eq i32 %i.2318, %99
  br i1 %cmp125, label %for.end122.do.end_crit_edge, label %if.end128

for.end122.do.end_crit_edge:                      ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end128:                                        ; preds = %for.end122
  %fw_var = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 15
  %100 = ptrtoint ptr %fw_var to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fw_var, align 4
  %102 = add i32 %101, -1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %102)
  %103 = icmp ult i32 %102, 9
  br i1 %103, label %if.then134, label %if.end128.if.end146_crit_edge

if.end128.if.end146_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then134:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %call135 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %basic_rate_mask = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 49
  %104 = ptrtoint ptr %basic_rate_mask to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %basic_rate_mask, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %107 = ptrtoint ptr %call135 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %106, ptr %call135, align 1
  %arrayidx142 = getelementptr %struct.p54_scan_tail_rate, ptr %call135, i32 0, i32 1, i32 0
  %108 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %arrayidx142, align 1
  %arrayidx142.1 = getelementptr %struct.p54_scan_tail_rate, ptr %call135, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %arrayidx142.1 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %arrayidx142.1, align 1
  %arrayidx142.2 = getelementptr %struct.p54_scan_tail_rate, ptr %call135, i32 0, i32 1, i32 2
  %110 = ptrtoint ptr %arrayidx142.2 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 2, ptr %arrayidx142.2, align 1
  %arrayidx142.3 = getelementptr %struct.p54_scan_tail_rate, ptr %call135, i32 0, i32 1, i32 3
  %111 = ptrtoint ptr %arrayidx142.3 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 3, ptr %arrayidx142.3, align 1
  %arrayidx142.4 = getelementptr %struct.p54_scan_tail_rate, ptr %call135, i32 0, i32 1, i32 4
  %112 = ptrtoint ptr %arrayidx142.4 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 4, ptr %arrayidx142.4, align 1
  %arrayidx142.5 = getelementptr %struct.p54_scan_tail_rate, ptr %call135, i32 0, i32 1, i32 5
  %113 = ptrtoint ptr %arrayidx142.5 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 5, ptr %arrayidx142.5, align 1
  %arrayidx142.6 = getelementptr %struct.p54_scan_tail_rate, ptr %call135, i32 0, i32 1, i32 6
  %114 = ptrtoint ptr %arrayidx142.6 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 6, ptr %arrayidx142.6, align 1
  %arrayidx142.7 = getelementptr %struct.p54_scan_tail_rate, ptr %call135, i32 0, i32 1, i32 7
  %115 = ptrtoint ptr %arrayidx142.7 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 7, ptr %arrayidx142.7, align 1
  br label %if.end146

if.end146:                                        ; preds = %if.then134, %if.end128.if.end146_crit_edge
  %call147 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #7
  %call148 = tail call ptr @p54_rssi_find(ptr noundef %priv, i16 noundef zeroext %conv) #7
  %mul149 = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %call148, i32 0, i32 1
  %116 = ptrtoint ptr %mul149 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %mul149, align 2
  %118 = tail call i16 @llvm.bswap.i16(i16 %117)
  %119 = ptrtoint ptr %call147 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 %118, ptr %call147, align 1
  %add = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %call148, i32 0, i32 2
  %120 = ptrtoint ptr %add to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add, align 2
  %122 = tail call i16 @llvm.bswap.i16(i16 %121)
  %add151 = getelementptr inbounds %struct.pda_rssi_cal_entry, ptr %call147, i32 0, i32 1
  %123 = ptrtoint ptr %add151 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 %122, ptr %add151, align 1
  %124 = ptrtoint ptr %rxhw to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %rxhw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %125)
  %cmp154 = icmp eq i16 %125, 5
  br i1 %cmp154, label %if.then156, label %if.end146.if.end160_crit_edge

if.end146.if.end160_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.then156:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  %call157 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #7
  %longbow_unkn = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %call148, i32 0, i32 3
  %126 = ptrtoint ptr %longbow_unkn to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %longbow_unkn, align 2
  %128 = tail call i16 @llvm.bswap.i16(i16 %127)
  %129 = ptrtoint ptr %call157 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 2)
  store i16 %128, ptr %call157, align 1
  %longbow_unk2 = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %call148, i32 0, i32 4
  %130 = ptrtoint ptr %longbow_unk2 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %longbow_unk2, align 2
  %132 = tail call i16 @llvm.bswap.i16(i16 %131)
  %add159 = getelementptr inbounds %struct.pda_rssi_cal_entry, ptr %call157, i32 0, i32 1
  %133 = ptrtoint ptr %add159 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %132, ptr %add159, align 1
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %if.end146.if.end160_crit_edge
  %134 = ptrtoint ptr %fw_var to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fw_var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1288, i32 %135)
  %cmp162 = icmp ugt i32 %135, 1288
  br i1 %cmp162, label %if.then164, label %if.end160.if.end178_crit_edge

if.end160.if.end178_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

if.then164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  %call165 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %basic_rate_mask166 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 49
  %136 = ptrtoint ptr %basic_rate_mask166 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %basic_rate_mask166, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %139 = ptrtoint ptr %call165 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %138, ptr %call165, align 1
  %arrayidx174 = getelementptr %struct.p54_scan_tail_rate, ptr %call165, i32 0, i32 1, i32 0
  %140 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %arrayidx174, align 1
  %arrayidx174.1 = getelementptr %struct.p54_scan_tail_rate, ptr %call165, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %arrayidx174.1 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %arrayidx174.1, align 1
  %arrayidx174.2 = getelementptr %struct.p54_scan_tail_rate, ptr %call165, i32 0, i32 1, i32 2
  %142 = ptrtoint ptr %arrayidx174.2 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 2, ptr %arrayidx174.2, align 1
  %arrayidx174.3 = getelementptr %struct.p54_scan_tail_rate, ptr %call165, i32 0, i32 1, i32 3
  %143 = ptrtoint ptr %arrayidx174.3 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 3, ptr %arrayidx174.3, align 1
  %arrayidx174.4 = getelementptr %struct.p54_scan_tail_rate, ptr %call165, i32 0, i32 1, i32 4
  %144 = ptrtoint ptr %arrayidx174.4 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 4, ptr %arrayidx174.4, align 1
  %arrayidx174.5 = getelementptr %struct.p54_scan_tail_rate, ptr %call165, i32 0, i32 1, i32 5
  %145 = ptrtoint ptr %arrayidx174.5 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 5, ptr %arrayidx174.5, align 1
  %arrayidx174.6 = getelementptr %struct.p54_scan_tail_rate, ptr %call165, i32 0, i32 1, i32 6
  %146 = ptrtoint ptr %arrayidx174.6 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 6, ptr %arrayidx174.6, align 1
  %arrayidx174.7 = getelementptr %struct.p54_scan_tail_rate, ptr %call165, i32 0, i32 1, i32 7
  %147 = ptrtoint ptr %arrayidx174.7 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 7, ptr %arrayidx174.7, align 1
  br label %if.end178

if.end178:                                        ; preds = %if.then164, %if.end160.if.end178_crit_edge
  %148 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %150 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len, align 4
  %152 = trunc i32 %151 to i16
  %conv180 = add i16 %152, -12
  %153 = tail call i16 @llvm.bswap.i16(i16 %conv180)
  %len181 = getelementptr inbounds %struct.p54_hdr, ptr %149, i32 0, i32 1
  %154 = ptrtoint ptr %len181 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %153, ptr %len181, align 1
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  %cur_rssi = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 26
  %155 = ptrtoint ptr %cur_rssi to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call148, ptr %cur_rssi, align 4
  br label %cleanup189

do.end:                                           ; preds = %for.end122.do.end_crit_edge, %for.end66.do.end_crit_edge, %for.end.do.end_crit_edge
  %156 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %priv, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %159, i32 0, i32 56
  %chandef185 = getelementptr inbounds %struct.ieee80211_conf, ptr %157, i32 0, i32 7
  %160 = ptrtoint ptr %chandef185 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %chandef185, align 4
  %center_freq187 = getelementptr inbounds %struct.ieee80211_channel, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %center_freq187 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %center_freq187, align 4
  %mul.i = mul i32 %163, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call.i) #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  br label %cleanup189

cleanup189:                                       ; preds = %do.end, %if.end178, %if.end6.i.cleanup189_crit_edge, %entry.cleanup189_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end178 ], [ -12, %entry.cleanup189_crit_edge ], [ -12, %if.end6.i.cleanup189_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p54_rssi_find(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_set_leds(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 64
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end6.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %3, 22
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 2592) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %10 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 2560, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %12 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 3328, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %13 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %14 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tries.i, align 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 10) #7
  %15 = ptrtoint ptr %call4 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 768, ptr %call4, align 1
  %softled_state = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 62
  %16 = ptrtoint ptr %softled_state to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %softled_state, align 8
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %mask = getelementptr inbounds %struct.p54_led, ptr %call4, i32 0, i32 1
  %arrayidx = getelementptr %struct.p54_led, ptr %call4, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %arrayidx, align 1
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %18, ptr %mask, align 1
  %delay = getelementptr inbounds %struct.p54_led, ptr %call4, i32 0, i32 2
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 256, ptr %delay, align 1
  %arrayidx9 = getelementptr %struct.p54_led, ptr %call4, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 0, ptr %arrayidx9, align 1
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_set_edcf(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 64
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end6.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %3, 88
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 2592) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %10 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 19456, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %12 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 768, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %13 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %14 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tries.i, align 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 76) #7
  %use_short_slot = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 18
  %15 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_short_slot, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not = icmp eq i8 %16, 0
  %.sink42 = select i1 %tobool5.not, i8 20, i8 9
  %.sink41 = select i1 %tobool5.not, i8 10, i8 16
  %.sink = select i1 %tobool5.not, i8 6, i8 0
  %17 = getelementptr inbounds %struct.p54_edcf, ptr %call4, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink42, ptr %17, align 1
  %19 = getelementptr inbounds %struct.p54_edcf, ptr %call4, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink41, ptr %19, align 1
  %21 = getelementptr inbounds %struct.p54_edcf, ptr %call4, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %21, align 1
  %coverage_class = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 51
  %23 = ptrtoint ptr %coverage_class to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %coverage_class, align 2
  %mul = mul i8 %24, 3
  %add = add i8 %.sink42, %mul
  store i8 %add, ptr %17, align 1
  %conv16 = zext i8 %mul to i16
  %25 = shl nuw i16 %conv16, 8
  %round_trip_delay = getelementptr inbounds %struct.p54_edcf, ptr %call4, i32 0, i32 7
  %26 = ptrtoint ptr %round_trip_delay to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %round_trip_delay, align 1
  %frameburst = getelementptr inbounds %struct.p54_edcf, ptr %call4, i32 0, i32 6
  %27 = ptrtoint ptr %frameburst to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 0, ptr %frameburst, align 1
  %28 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %call4, align 1
  %mapping = getelementptr inbounds %struct.p54_edcf, ptr %call4, i32 0, i32 5
  %29 = ptrtoint ptr %mapping to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %mapping, align 1
  %queue = getelementptr inbounds %struct.p54_edcf, ptr %call4, i32 0, i32 4
  %qos_params = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 21
  %30 = call ptr @memcpy(ptr %queue, ptr %qos_params, i32 64)
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_set_ps(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %powersave_override = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 54
  %4 = ptrtoint ptr %powersave_override to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %powersave_override, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %cmp13 = phi i1 [ false, %if.else ], [ true, %land.lhs.true.if.end_crit_edge ]
  %mode.0 = phi i16 [ 0, %if.else ], [ 12032, %land.lhs.true.if.end_crit_edge ]
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp2.i = icmp ugt i32 %7, 64
  br i1 %cmp2.i, label %if.end.cleanup_crit_edge, label %if.end6.i, !prof !61

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %8 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %9, 36
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 2592) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end4

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %11
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %15, i32 %11
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %16 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 6144, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %18 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 1536, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %19 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %20 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %tries.i, align 1
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #7
  %21 = ptrtoint ptr %call5 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %mode.0, ptr %call5, align 1
  %aid = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 50
  %22 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %aid, align 8
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %aid7 = getelementptr inbounds %struct.p54_psm, ptr %call5, i32 0, i32 1
  %25 = ptrtoint ptr %aid7 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %aid7, align 1
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %listen_interval, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %arrayidx = getelementptr %struct.p54_psm, ptr %call5, i32 0, i32 2, i32 0
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %arrayidx, align 1
  %periods = getelementptr %struct.p54_psm, ptr %call5, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %periods to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 256, ptr %periods, align 1
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %listen_interval.1 = getelementptr inbounds %struct.ieee80211_conf, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %listen_interval.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %listen_interval.1, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %arrayidx.1 = getelementptr %struct.p54_psm, ptr %call5, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %arrayidx.1, align 1
  %periods.1 = getelementptr %struct.p54_psm, ptr %call5, i32 0, i32 2, i32 1, i32 1
  %39 = ptrtoint ptr %periods.1 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 256, ptr %periods.1, align 1
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %listen_interval.2 = getelementptr inbounds %struct.ieee80211_conf, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %listen_interval.2 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %listen_interval.2, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %arrayidx.2 = getelementptr %struct.p54_psm, ptr %call5, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %arrayidx.2, align 1
  %periods.2 = getelementptr %struct.p54_psm, ptr %call5, i32 0, i32 2, i32 2, i32 1
  %46 = ptrtoint ptr %periods.2 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 256, ptr %periods.2, align 1
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %listen_interval.3 = getelementptr inbounds %struct.ieee80211_conf, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %listen_interval.3 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %listen_interval.3, align 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %arrayidx.3 = getelementptr %struct.p54_psm, ptr %call5, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %arrayidx.3, align 1
  %periods.3 = getelementptr %struct.p54_psm, ptr %call5, i32 0, i32 2, i32 3, i32 1
  %53 = ptrtoint ptr %periods.3 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 256, ptr %periods.3, align 1
  %beacon_rssi_skip_max = getelementptr inbounds %struct.p54_psm, ptr %call5, i32 0, i32 3
  %54 = ptrtoint ptr %beacon_rssi_skip_max to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -56, ptr %beacon_rssi_skip_max, align 1
  %rssi_delta_threshold = getelementptr inbounds %struct.p54_psm, ptr %call5, i32 0, i32 4
  %55 = ptrtoint ptr %rssi_delta_threshold to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %rssi_delta_threshold, align 1
  %nr = getelementptr inbounds %struct.p54_psm, ptr %call5, i32 0, i32 5
  %56 = ptrtoint ptr %nr to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %nr, align 1
  %exclude = getelementptr inbounds %struct.p54_psm, ptr %call5, i32 0, i32 6
  %57 = ptrtoint ptr %exclude to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 5, ptr %exclude, align 1
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  %phy_ps = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 53
  %frombool = zext i1 %cmp13 to i8
  %58 = ptrtoint ptr %phy_ps to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %frombool, ptr %phy_ps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end6.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_init_xbow_synth(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 64
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end6.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %3, 38
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 3264) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %10 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 6656, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %12 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 4864, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %13 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %14 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tries.i, align 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 26) #7
  %15 = ptrtoint ptr %call4 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 256, ptr %call4, align 1
  %magic2 = getelementptr inbounds %struct.p54_xbow_synth, ptr %call4, i32 0, i32 1
  %16 = ptrtoint ptr %magic2 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 512, ptr %magic2, align 1
  %freq = getelementptr inbounds %struct.p54_xbow_synth, ptr %call4, i32 0, i32 2
  %17 = ptrtoint ptr %freq to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 3605, ptr %freq, align 1
  %padding = getelementptr inbounds %struct.p54_xbow_synth, ptr %call4, i32 0, i32 3
  %18 = call ptr @memset(ptr %padding, i32 0, i32 20)
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_upload_key(ptr noundef %priv, i8 noundef zeroext %algo, i32 noundef %slot, i8 noundef zeroext %idx, i8 noundef zeroext %len, ptr noundef readonly %addr, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 64
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end6.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %3, 48
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 3264) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %10 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 9216, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %12 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 1024, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %13 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %14 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tries.i, align 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 36) #7
  %conv = trunc i32 %slot to i8
  %15 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %call4, align 1
  %key_id = getelementptr inbounds %struct.p54_keycache, ptr %call4, i32 0, i32 1
  %16 = ptrtoint ptr %key_id to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %idx, ptr %key_id, align 1
  %key_type = getelementptr inbounds %struct.p54_keycache, ptr %call4, i32 0, i32 4
  %17 = ptrtoint ptr %key_type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %algo, ptr %key_type, align 1
  %tobool6.not = icmp eq ptr %addr, null
  %mac8 = getelementptr inbounds %struct.p54_keycache, ptr %call4, i32 0, i32 2
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call ptr @memcpy(ptr %mac8, ptr %addr, i32 6)
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = call ptr @memset(ptr %mac8, i32 255, i32 6)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %20 = zext i8 %algo to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %algo, label %do.end [
    i8 1, label %if.end10.sw.bb_crit_edge
    i8 7, label %if.end10.sw.bb_crit_edge60
    i8 3, label %sw.bb22
    i8 0, label %sw.bb28
  ]

if.end10.sw.bb_crit_edge60:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge60
  %21 = tail call i8 @llvm.umin.i8(i8 %len, i8 16)
  %key_len = getelementptr inbounds %struct.p54_keycache, ptr %call4, i32 0, i32 5
  %22 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %key_len, align 1
  %key18 = getelementptr inbounds %struct.p54_keycache, ptr %call4, i32 0, i32 6
  %conv21 = zext i8 %21 to i32
  %23 = call ptr @memcpy(ptr %key18, ptr %key, i32 %conv21)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %key_len23 = getelementptr inbounds %struct.p54_keycache, ptr %call4, i32 0, i32 5
  %24 = ptrtoint ptr %key_len23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 24, ptr %key_len23, align 1
  %key24 = getelementptr inbounds %struct.p54_keycache, ptr %call4, i32 0, i32 6
  %25 = call ptr @memcpy(ptr %key24, ptr %key, i32 16)
  %arrayidx = getelementptr %struct.p54_keycache, ptr %call4, i32 0, i32 6, i32 16
  %arrayidx27 = getelementptr i8, ptr %key, i32 24
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %arrayidx27, align 1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %arrayidx, align 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %key_len29 = getelementptr inbounds %struct.p54_keycache, ptr %call4, i32 0, i32 5
  %29 = call ptr @memset(ptr %key_len29, i32 0, i32 25)
  br label %sw.epilog

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = zext i8 %algo to i32
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv11) #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb22, %sw.bb
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_fetch_statistics(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 64
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end6.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %3, 88
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 3264) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %10 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 128, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 19456, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %12 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 2560, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %13 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %14 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tries.i, align 1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 76, ptr %15, align 4
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_set_groupfilter(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 64
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end6.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %tx_hdr_len.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hdr_len.i, align 8
  %add7.i = add i32 %3, 40
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add7.i, i32 noundef 3264) #7
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  %4 = ptrtoint ptr %tx_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_hdr_len.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #7
  %10 = ptrtoint ptr %call13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 384, ptr %call13.i, align 1
  %len.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 7168, ptr %len.i, align 1
  %type14.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 3
  %12 = ptrtoint ptr %type14.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 7680, ptr %type14.i, align 1
  %rts_tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 4
  %13 = ptrtoint ptr %rts_tries.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rts_tries.i, align 1
  %tries.i = getelementptr inbounds %struct.p54_hdr, ptr %call13.i, i32 0, i32 5
  %14 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tries.i, align 1
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 28) #7
  %filter_flags = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 44
  %15 = ptrtoint ptr %filter_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %filter_flags, align 8
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.rhs:                                         ; preds = %if.end
  %mc_maclist_num = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 45
  %17 = ptrtoint ptr %mc_maclist_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mc_maclist_num, align 4
  %19 = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %if.then8, label %land.rhs.if.else_crit_edge

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call1 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 256, ptr %call1, align 1
  %22 = ptrtoint ptr %mc_maclist_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mc_maclist_num, align 4
  %conv = trunc i32 %23 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %num_address = getelementptr inbounds %struct.p54_group_address_table, ptr %call1, i32 0, i32 1
  %25 = ptrtoint ptr %num_address to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %num_address, align 1
  %mac_list = getelementptr inbounds %struct.p54_group_address_table, ptr %call1, i32 0, i32 2
  %mc_maclist = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 42
  %26 = call ptr @memcpy(ptr %mac_list, ptr %mc_maclist, i32 24)
  br label %if.end15

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %if.end.if.else_crit_edge
  %27 = call ptr @memset(ptr %call1, i32 0, i32 28)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
  tail call void @p54_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 62, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @p54_parse_firmware._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @p54_parse_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 69, i32 5}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @p54_parse_firmware._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @p54_parse_firmware._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 99, i32 5}
!15 = !{ptr @p54_parse_firmware._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @p54_parse_firmware._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 124, i32 3}
!19 = !{ptr @p54_parse_firmware._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @p54_parse_firmware._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 128, i32 5}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 133, i32 3}
!25 = !{ptr @p54_parse_firmware._entry.16, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @p54_parse_firmware._entry_ptr.18, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 155, i32 2}
!29 = !{ptr @p54_parse_firmware._entry.19, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @p54_parse_firmware._entry_ptr.21, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.22, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.23, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__ksymtab_p54_parse_firmware, !34, !"__ksymtab_p54_parse_firmware", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 186, i32 1}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 245, i32 46}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 253, i32 3}
!39 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @p54_download_eeprom._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @p54_download_eeprom._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 531, i32 2}
!44 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @p54_scan._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @p54_scan._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intersil/p54/fwio.c", i32 692, i32 3}
!49 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @p54_upload_key._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @p54_upload_key._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i8 0, i8 2}
