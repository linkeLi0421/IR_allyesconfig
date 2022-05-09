; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/core.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath6kl_core_tx_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_core_tx_complete\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_core_tx_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_core_tx_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_core_tx_complete\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_core_tx_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath6kl_core_rx_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_core_rx_complete\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_core_rx_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_core_rx_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_core_rx_complete\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_core_rx_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath6kl_core_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_core_init\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_core_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_core_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_core_init\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_core_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath6kl_core_create\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_core_create\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_core_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_core_create:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_core_create\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_core_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath6kl_core_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_core_cleanup\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_core_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_core_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_core_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_core_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath6kl_core_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_core_destroy\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_core_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_core_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_core_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_core_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.131, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.132 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.131 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.128, ptr, ptr, ptr }
%union.anon.128 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.132 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.133, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.133 = type { i32 }
%struct.ath6kl_htc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath6kl_bmi_target_info = type { i32, i32, i32 }
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.125, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.125 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.126 }
%union.anon.126 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.htc_target = type { [9 x %struct.htc_endpoint], %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], %struct.anon.130 }
%struct.htc_endpoint = type { i32, i16, %struct.list_head, %struct.list_head, %struct.htc_endpoint_credit_dist, %struct.htc_ep_callbacks, i32, i32, i32, i32, ptr, i8, i32, %struct.htc_endpoint_stats, i16, %struct.anon.129 }
%struct.htc_endpoint_credit_dist = type { %struct.list_head, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.htc_endpoint_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.129 = type { i8, i8, %struct.list_head, i8 }
%struct.anon.130 = type { ptr, [256 x i8], i32, i8, [9 x %struct.htc_pipe_txcredit_alloc] }
%struct.htc_pipe_txcredit_alloc = type { i16, i8 }
%struct.ath6kl_device = type { %struct.spinlock, %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_enable_reg, ptr, ptr }
%struct.ath6kl_irq_proc_registers = type { i8, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i32] }
%struct.ath6kl_irq_enable_reg = type { i8, i8, i8, i8 }

@__param_str_debug_mask = internal constant [23 x i8] c"ath6kl_core.debug_mask\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug_mask = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @debug_mask } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype370 = internal constant [37 x i8] c"ath6kl_core.parmtype=debug_mask:uint\00", section ".modinfo", align 1
@__param_str_suspend_mode = internal constant [25 x i8] c"ath6kl_core.suspend_mode\00", align 1
@suspend_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_suspend_mode = internal constant %struct.kernel_param { ptr @__param_str_suspend_mode, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @suspend_mode } }, section "__param", align 4
@__UNIQUE_ID_suspend_modetype371 = internal constant [39 x i8] c"ath6kl_core.parmtype=suspend_mode:uint\00", section ".modinfo", align 1
@__param_str_wow_mode = internal constant [21 x i8] c"ath6kl_core.wow_mode\00", align 1
@wow_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_wow_mode = internal constant %struct.kernel_param { ptr @__param_str_wow_mode, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @wow_mode } }, section "__param", align 4
@__UNIQUE_ID_wow_modetype372 = internal constant [35 x i8] c"ath6kl_core.parmtype=wow_mode:uint\00", section ".modinfo", align 1
@__param_str_uart_debug = internal constant [23 x i8] c"ath6kl_core.uart_debug\00", align 1
@uart_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_uart_debug = internal constant %struct.kernel_param { ptr @__param_str_uart_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @uart_debug } }, section "__param", align 4
@__UNIQUE_ID_uart_debugtype373 = internal constant [37 x i8] c"ath6kl_core.parmtype=uart_debug:uint\00", section ".modinfo", align 1
@__param_str_uart_rate = internal constant [22 x i8] c"ath6kl_core.uart_rate\00", align 1
@uart_rate = internal global { i32, [28 x i8] } { i32 115200, [28 x i8] zeroinitializer }, align 32
@__param_uart_rate = internal constant %struct.kernel_param { ptr @__param_str_uart_rate, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @uart_rate } }, section "__param", align 4
@__UNIQUE_ID_uart_ratetype374 = internal constant [36 x i8] c"ath6kl_core.parmtype=uart_rate:uint\00", section ".modinfo", align 1
@__param_str_ath6kl_p2p = internal constant [23 x i8] c"ath6kl_core.ath6kl_p2p\00", align 1
@ath6kl_p2p = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ath6kl_p2p = internal constant %struct.kernel_param { ptr @__param_str_ath6kl_p2p, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @ath6kl_p2p } }, section "__param", align 4
@__UNIQUE_ID_ath6kl_p2ptype375 = internal constant [37 x i8] c"ath6kl_core.parmtype=ath6kl_p2p:uint\00", section ".modinfo", align 1
@__param_str_testmode = internal constant [21 x i8] c"ath6kl_core.testmode\00", align 1
@testmode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_testmode = internal constant %struct.kernel_param { ptr @__param_str_testmode, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @testmode } }, section "__param", align 4
@__UNIQUE_ID_testmodetype376 = internal constant [35 x i8] c"ath6kl_core.parmtype=testmode:uint\00", section ".modinfo", align 1
@__param_str_recovery_enable = internal constant [28 x i8] c"ath6kl_core.recovery_enable\00", align 1
@recovery_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_recovery_enable = internal constant %struct.kernel_param { ptr @__param_str_recovery_enable, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @recovery_enable } }, section "__param", align 4
@__UNIQUE_ID_recovery_enabletype377 = internal constant [42 x i8] c"ath6kl_core.parmtype=recovery_enable:uint\00", section ".modinfo", align 1
@__param_str_heart_beat_poll = internal constant [28 x i8] c"ath6kl_core.heart_beat_poll\00", align 1
@heart_beat_poll = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_heart_beat_poll = internal constant %struct.kernel_param { ptr @__param_str_heart_beat_poll, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @heart_beat_poll } }, section "__param", align 4
@__UNIQUE_ID_heart_beat_polltype378 = internal constant [42 x i8] c"ath6kl_core.parmtype=heart_beat_poll:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_recovery_enable379 = internal constant [69 x i8] c"ath6kl_core.parm=recovery_enable:Enable recovery from firmware error\00", section ".modinfo", align 1
@__UNIQUE_ID_heart_beat_poll380 = internal constant [137 x i8] c"ath6kl_core.parm=heart_beat_poll:Enable fw error detection periodic polling in msecs - Also set recovery_enable for this to be effective\00", section ".modinfo", align 1
@__kstrtab_ath6kl_core_tx_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_core_tx_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_core_tx_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_core_tx_complete to i32), ptr @__kstrtab_ath6kl_core_tx_complete, ptr @__kstrtabns_ath6kl_core_tx_complete }, section "___ksymtab+ath6kl_core_tx_complete", align 4
@__kstrtab_ath6kl_core_rx_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_core_rx_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_core_rx_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_core_rx_complete to i32), ptr @__kstrtab_ath6kl_core_rx_complete, ptr @__kstrtabns_ath6kl_core_rx_complete }, section "___ksymtab+ath6kl_core_rx_complete", align 4
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath6kl/core.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ath6kl\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialize wmi\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: got wmi @ 0x%p.\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.ath6kl_core_init = private unnamed_addr constant [17 x i8] c"ath6kl_core_init\00", align 1
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to start hardware: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to instantiate a network device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: name=%s dev=0x%p, ar=0x%p\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_ath6kl_core_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_core_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_core_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_core_init to i32), ptr @__kstrtab_ath6kl_core_init, ptr @__kstrtabns_ath6kl_core_init }, section "___ksymtab+ath6kl_core_init", align 4
@ath6kl_core_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ar->lock\00", [22 x i8] zeroinitializer }, align 32
@ath6kl_core_create.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ar->mcastpsq_lock\00", [45 x i8] zeroinitializer }, align 32
@ath6kl_core_create.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ar->list_lock\00", [17 x i8] zeroinitializer }, align 32
@ath6kl_core_create.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ar->event_wq\00", [18 x i8] zeroinitializer }, align 32
@ath6kl_core_create.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&ar->sta_list[ctr].psq_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to allocate memory for sta aggregation information\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"US \00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_ath6kl_core_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_core_create = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_core_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_core_create to i32), ptr @__kstrtab_ath6kl_core_create, ptr @__kstrtabns_ath6kl_core_create }, section "___ksymtab+ath6kl_core_create", align 4
@__kstrtab_ath6kl_core_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_core_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_core_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_core_cleanup to i32), ptr @__kstrtab_ath6kl_core_cleanup, ptr @__kstrtabns_ath6kl_core_cleanup }, section "___ksymtab+ath6kl_core_cleanup", align 4
@__kstrtab_ath6kl_core_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_core_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_core_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_core_destroy to i32), ptr @__kstrtab_ath6kl_core_destroy, ptr @__kstrtabns_ath6kl_core_destroy }, section "___ksymtab+ath6kl_core_destroy", align 4
@__UNIQUE_ID_author381 = internal constant [36 x i8] c"ath6kl_core.author=Qualcomm Atheros\00", section ".modinfo", align 1
@__UNIQUE_ID_description382 = internal constant [69 x i8] c"ath6kl_core.description=Core module for AR600x SDIO and USB devices.\00", section ".modinfo", align 1
@__UNIQUE_ID_file383 = internal constant [61 x i8] c"ath6kl_core.file=drivers/net/wireless/ath/ath6kl/ath6kl_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license384 = internal constant [33 x i8] c"ath6kl_core.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hif power on\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hif power off\0A\00", [17 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"debug_mask\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 30, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"suspend_mode\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 31, i32 21 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"wow_mode\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 32, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"uart_debug\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 33, i32 21 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"uart_rate\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 34, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"ath6kl_p2p\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 35, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"testmode\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 36, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"recovery_enable\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 37, i32 21 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"heart_beat_poll\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 38, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 80, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 84, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 148, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 153, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 193, i32 14 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 218, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 225, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 231, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 283, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 284, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 285, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 287, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 308, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 316, i32 15 }
@___asan_gen_.113 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath6kl/core.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 324, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 134, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/ath6kl/hif-ops.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 141, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 33, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 34, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 35, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1984, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_ath6kl_p2ptype375, ptr @__UNIQUE_ID_author381, ptr @__UNIQUE_ID_debug_masktype370, ptr @__UNIQUE_ID_description382, ptr @__UNIQUE_ID_file383, ptr @__UNIQUE_ID_heart_beat_poll380, ptr @__UNIQUE_ID_heart_beat_polltype378, ptr @__UNIQUE_ID_license384, ptr @__UNIQUE_ID_recovery_enable379, ptr @__UNIQUE_ID_recovery_enabletype377, ptr @__UNIQUE_ID_suspend_modetype371, ptr @__UNIQUE_ID_testmodetype376, ptr @__UNIQUE_ID_uart_debugtype373, ptr @__UNIQUE_ID_uart_ratetype374, ptr @__UNIQUE_ID_wow_modetype372, ptr @__ksymtab_ath6kl_core_cleanup, ptr @__ksymtab_ath6kl_core_create, ptr @__ksymtab_ath6kl_core_destroy, ptr @__ksymtab_ath6kl_core_init, ptr @__ksymtab_ath6kl_core_rx_complete, ptr @__ksymtab_ath6kl_core_tx_complete, ptr @__param_ath6kl_p2p, ptr @__param_debug_mask, ptr @__param_heart_beat_poll, ptr @__param_recovery_enable, ptr @__param_suspend_mode, ptr @__param_testmode, ptr @__param_uart_debug, ptr @__param_uart_rate, ptr @__param_wow_mode, ptr @debug_mask, ptr @suspend_mode, ptr @wow_mode, ptr @uart_debug, ptr @uart_rate, ptr @ath6kl_p2p, ptr @testmode, ptr @recovery_enable, ptr @heart_beat_poll, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ath6kl_core_create.__key, ptr @.str.9, ptr @ath6kl_core_create.__key.10, ptr @.str.11, ptr @ath6kl_core_create.__key.12, ptr @.str.13, ptr @ath6kl_core_create.__key.14, ptr @.str.15, ptr @ath6kl_core_create.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @sema_init.__key, ptr @.str.22, ptr @.str.23, ptr @skb_queue_head_init.__key, ptr @.str.24], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wow_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_p2p to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recovery_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heart_beat_poll to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_core_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_core_create.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_core_create.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_core_create.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_core_create.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_core_tx_complete(ptr noundef %ar, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 6
  %0 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc_ops.i, align 4
  %tx_complete.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tx_complete.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_complete.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ar, ptr noundef %skb) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_core_rx_complete(ptr noundef %ar, ptr noundef %skb, i8 noundef zeroext %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 6
  %0 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc_ops.i, align 4
  %rx_complete.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rx_complete.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_complete.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ar, ptr noundef %skb, i8 noundef zeroext %pipe) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_core_init(ptr noundef %ar, i32 noundef %htc_type) #0 align 64 {
entry:
  %targ_info = alloca %struct.ath6kl_bmi_target_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %targ_info) #5
  %0 = ptrtoint ptr %targ_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %targ_info, align 4, !annotation !137
  %1 = getelementptr inbounds %struct.ath6kl_bmi_target_info, ptr %targ_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !137
  %3 = getelementptr inbounds %struct.ath6kl_bmi_target_info, ptr %targ_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !137
  %5 = zext i32 %htc_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %htc_type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath6kl_htc_mbox_attach(ptr noundef %ar) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath6kl_htc_pipe_attach(ptr noundef %ar) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.2) #5
  %ath6kl_wq = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 88
  %6 = ptrtoint ptr %ath6kl_wq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %ath6kl_wq, align 4
  %tobool17.not = icmp eq ptr %call, null
  br i1 %tobool17.not, label %sw.epilog.cleanup_crit_edge, label %if.end19

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  %call20 = tail call i32 @ath6kl_bmi_init(ptr noundef %ar) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.err_wq_crit_edge

if.end19.err_wq_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_wq

if.end23:                                         ; preds = %if.end19
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.20) #5
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %7 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_ops.i, align 4
  %power_on.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %power_on.i, align 4
  %call.i = tail call i32 %10(ptr noundef %ar) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.err_bmi_cleanup_crit_edge

if.end23.err_bmi_cleanup_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_bmi_cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = call i32 @ath6kl_bmi_get_target_info(ptr noundef %ar, ptr noundef nonnull %targ_info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.err_power_off_crit_edge

if.end27.err_power_off_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_power_off

if.end31:                                         ; preds = %if.end27
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %version32 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 25
  %14 = ptrtoint ptr %version32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %version32, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %target_type = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %18 = ptrtoint ptr %target_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %target_type, align 4
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy, align 4
  %hw_version = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 39
  %21 = ptrtoint ptr %hw_version to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %hw_version, align 4
  %call34 = call i32 @ath6kl_init_hw_params(ptr noundef %ar) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.err_power_off_crit_edge

if.end31.err_power_off_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_power_off

if.end37:                                         ; preds = %if.end31
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 6
  %22 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %htc_ops.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i247 = call ptr %25(ptr noundef %ar) #5
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %26 = ptrtoint ptr %htc_target to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i247, ptr %htc_target, align 4
  %tobool40.not = icmp eq ptr %call.i247, null
  br i1 %tobool40.not, label %if.end37.err_power_off_crit_edge, label %if.end42

if.end37.err_power_off_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_power_off

if.end42:                                         ; preds = %if.end37
  %27 = load i32, ptr @testmode, align 4
  %testmode = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 3
  %28 = ptrtoint ptr %testmode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %testmode, align 4
  %call43 = call i32 @ath6kl_init_fetch_firmwares(ptr noundef %ar) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.err_htc_cleanup_crit_edge

if.end42.err_htc_cleanup_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_htc_cleanup

if.end46:                                         ; preds = %if.end42
  %29 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %target_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %cmp = icmp eq i32 %30, 5
  br i1 %cmp, label %land.lhs.true, label %if.end46.if.end57_crit_edge

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end46
  %fw_api = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 86
  %31 = ptrtoint ptr %fw_api to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw_api, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp48 = icmp ult i32 %32, 5
  br i1 %cmp48, label %if.then49, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then49:                                        ; preds = %land.lhs.true
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  %33 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_capabilities, align 4
  %or.i245 = or i32 %34, 49152
  store i32 %or.i245, ptr %fw_capabilities, align 4
  %hw = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 835192970, i32 %36)
  %cmp52 = icmp eq i32 %36, 835192970
  br i1 %cmp52, label %if.then53, label %if.then49.if.end57_crit_edge

if.then49.if.end57_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %or.i246 = or i32 %34, 114688
  %37 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i246, ptr %fw_capabilities, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.then49.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.end46.if.end57_crit_edge
  %flag = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  call void @_set_bit(i32 noundef 0, ptr noundef %flag) #5
  %call58 = call ptr @ath6kl_wmi_init(ptr noundef %ar) #5
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %38 = ptrtoint ptr %wmi to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call58, ptr %wmi, align 4
  %tobool60.not = icmp eq ptr %call58, null
  br i1 %tobool60.not, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.3) #5
  br label %err_htc_cleanup

if.end62:                                         ; preds = %if.end57
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ath6kl_core_init, ptr noundef nonnull %call58) #5
  %ac_stream_pri_map = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 38
  %arrayidx = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 38, i32 1
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx, align 1
  %40 = ptrtoint ptr %ac_stream_pri_map to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %ac_stream_pri_map, align 4
  %arrayidx67 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 38, i32 2
  %41 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %arrayidx67, align 2
  %arrayidx69 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 38, i32 3
  %42 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %arrayidx69, align 1
  call void @ath6kl_refill_amsdu_rxbufs(ptr noundef %ar, i32 noundef 4) #5
  call void @ath6kl_cookie_init(ptr noundef %ar) #5
  %conf_flags = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 68
  %43 = ptrtoint ptr %conf_flags to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 13, ptr %conf_flags, align 4
  %44 = load i32, ptr @suspend_mode, align 4
  %45 = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %46 = icmp ult i32 %45, 3
  br i1 %46, label %if.end77, label %if.end77.thread

if.end77.thread:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %suspend_mode76 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 69
  %47 = ptrtoint ptr %suspend_mode76 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %suspend_mode76, align 2
  br label %if.end89

if.end77:                                         ; preds = %if.end62
  %conv = trunc i32 %44 to i16
  %suspend_mode = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 69
  %48 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv, ptr %suspend_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp78 = icmp eq i32 %44, 3
  br i1 %cmp78, label %land.lhs.true80, label %if.end77.if.end89_crit_edge

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

land.lhs.true80:                                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %49 = load i32, ptr @wow_mode, align 4
  %.off = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %conv86 = trunc i32 %49 to i16
  %spec.select = select i1 %switch, i16 %conv86, i16 0
  br label %if.end89

if.end89:                                         ; preds = %land.lhs.true80, %if.end77.if.end89_crit_edge, %if.end77.thread
  %.sink = phi i16 [ 0, %if.end77.thread ], [ 0, %if.end77.if.end89_crit_edge ], [ %spec.select, %land.lhs.true80 ]
  %wow_suspend_mode88 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 70
  %50 = ptrtoint ptr %wow_suspend_mode88 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %.sink, ptr %wow_suspend_mode88, align 4
  %51 = load i32, ptr @uart_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool90.not = icmp eq i32 %51, 0
  br i1 %tobool90.not, label %if.end89.if.end95_crit_edge, label %if.then91

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %conf_flags to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 29, ptr %conf_flags, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end89.if.end95_crit_edge
  %53 = load i32, ptr @uart_rate, align 4
  %uarttx_rate = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 10
  %54 = ptrtoint ptr %uarttx_rate to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %uarttx_rate, align 4
  call void @_set_bit(i32 noundef 7, ptr noundef %flag) #5
  call void @ath6kl_debug_init(ptr noundef %ar) #5
  %call98 = call i32 @ath6kl_init_hw_start(ptr noundef %ar) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.5, i32 noundef %call98) #5
  br label %err_rxbuf_cleanup

if.end101:                                        ; preds = %if.end95
  %55 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %htc_target, align 4
  %ctrl_ep = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 42
  %57 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctrl_ep, align 4
  call void @ath6kl_rx_refill(ptr noundef %56, i32 noundef %58) #5
  %59 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %htc_target, align 4
  %ac2ep_map = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 36
  %61 = ptrtoint ptr %ac2ep_map to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ac2ep_map, align 4
  call void @ath6kl_rx_refill(ptr noundef %60, i32 noundef %62) #5
  %call105 = call i32 @ath6kl_cfg80211_init(ptr noundef %ar) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end101.err_rxbuf_cleanup_crit_edge

if.end101.err_rxbuf_cleanup_crit_edge:            ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_rxbuf_cleanup

if.end108:                                        ; preds = %if.end101
  %call109 = call i32 @ath6kl_debug_init_fs(ptr noundef %ar) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %for.cond.preheader, label %if.then111

for.cond.preheader:                               ; preds = %if.end108
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 17
  %63 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vif_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp114255.not = icmp eq i32 %64, 0
  br i1 %cmp114255.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %avail_idx_map = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 19
  %65 = ptrtoint ptr %avail_idx_map to i32
  call void @__asan_load1_noabort(i32 %65)
  %avail_idx_map.promoted = load i8, ptr %avail_idx_map, align 1
  br label %for.body

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wiphy, align 4
  call void @wiphy_unregister(ptr noundef %67) #5
  br label %err_rxbuf_cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv118257 = phi i8 [ %avail_idx_map.promoted, %for.body.lr.ph ], [ %conv118, %for.body.for.body_crit_edge ]
  %i.0256 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0256
  %68 = trunc i32 %shl to i8
  %conv118 = or i8 %conv118257, %68
  %inc = add nuw i32 %i.0256, 1
  %exitcond.not = icmp eq i32 %inc, %64
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %avail_idx_map to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv118, ptr %avail_idx_map, align 1
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @rtnl_lock() #5
  %70 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wiphy, align 4
  call void @mutex_lock_nested(ptr noundef %71, i32 noundef 0) #5
  %call120 = call ptr @ath6kl_interface_add(ptr noundef %ar, ptr noundef nonnull @.str.6, i8 noundef zeroext 1, i32 noundef 2, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %72 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wiphy, align 4
  call void @mutex_unlock(ptr noundef %73) #5
  call void @rtnl_unlock() #5
  %tobool122.not = icmp eq ptr %call120, null
  br i1 %tobool122.not, label %if.then123, label %if.end125

if.then123:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.7) #5
  %74 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wiphy, align 4
  call void @wiphy_unregister(ptr noundef %75) #5
  br label %err_rxbuf_cleanup

if.end125:                                        ; preds = %for.end
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %call120, i32 0, i32 3
  %76 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %netdev, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ath6kl_core_init, ptr noundef %77, ptr noundef %77, ptr noundef %ar) #5
  %78 = load i32, ptr @recovery_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool128 = icmp ne i32 %78, 0
  %enable = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 7
  %frombool = zext i1 %tobool128 to i8
  %79 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool, ptr %enable, align 2
  br i1 %tobool128, label %if.end137, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end137:                                        ; preds = %if.end125
  %80 = load i32, ptr @heart_beat_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool138.not = icmp eq i32 %80, 0
  br i1 %tobool138.not, label %if.end137.if.end146_crit_edge, label %land.lhs.true139

if.end137.if.end146_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

land.lhs.true139:                                 ; preds = %if.end137
  %fw_capabilities140 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  %81 = ptrtoint ptr %fw_capabilities140 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %fw_capabilities140, align 4
  %83 = and i32 %82, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool143.not = icmp eq i32 %83, 0
  br i1 %tobool143.not, label %land.lhs.true139.if.end146_crit_edge, label %if.then144

land.lhs.true139.if.end146_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

if.then144:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #7
  %hb_poll = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 2
  %84 = ptrtoint ptr %hb_poll to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %80, ptr %hb_poll, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %land.lhs.true139.if.end146_crit_edge, %if.end137.if.end146_crit_edge
  call void @ath6kl_recovery_init(ptr noundef %ar) #5
  br label %cleanup

err_rxbuf_cleanup:                                ; preds = %if.then123, %if.then111, %if.end101.err_rxbuf_cleanup_crit_edge, %if.then100
  %ret.0 = phi i32 [ %call98, %if.then100 ], [ %call105, %if.end101.err_rxbuf_cleanup_crit_edge ], [ %call109, %if.then111 ], [ -12, %if.then123 ]
  call void @ath6kl_debug_cleanup(ptr noundef %ar) #5
  %85 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %htc_target, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %86, i32 0, i32 10
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ar.i, align 4
  %htc_ops.i248 = getelementptr inbounds %struct.ath6kl, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %htc_ops.i248 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %htc_ops.i248, align 4
  %flush_rx_buf.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %flush_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %flush_rx_buf.i, align 4
  call void %94(ptr noundef %86) #5
  call void @ath6kl_cleanup_amsdu_rxbufs(ptr noundef %ar) #5
  %95 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wmi, align 4
  call void @ath6kl_wmi_shutdown(ptr noundef %96) #5
  call void @_clear_bit(i32 noundef 0, ptr noundef %flag) #5
  %97 = ptrtoint ptr %wmi to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %wmi, align 4
  br label %err_htc_cleanup

err_htc_cleanup:                                  ; preds = %err_rxbuf_cleanup, %if.then61, %if.end42.err_htc_cleanup_crit_edge
  %ret.1 = phi i32 [ %call43, %if.end42.err_htc_cleanup_crit_edge ], [ %ret.0, %err_rxbuf_cleanup ], [ -5, %if.then61 ]
  %98 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %htc_target, align 4
  %dev.i249 = getelementptr inbounds %struct.htc_target, ptr %99, i32 0, i32 10
  %100 = ptrtoint ptr %dev.i249 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i249, align 4
  %ar.i250 = getelementptr inbounds %struct.ath6kl_device, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %ar.i250 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ar.i250, align 4
  %htc_ops.i251 = getelementptr inbounds %struct.ath6kl, ptr %103, i32 0, i32 6
  %104 = ptrtoint ptr %htc_ops.i251 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %htc_ops.i251, align 4
  %cleanup.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cleanup.i, align 4
  call void %107(ptr noundef %99) #5
  br label %err_power_off

err_power_off:                                    ; preds = %err_htc_cleanup, %if.end37.err_power_off_crit_edge, %if.end31.err_power_off_crit_edge, %if.end27.err_power_off_crit_edge
  %ret.2 = phi i32 [ %call28, %if.end27.err_power_off_crit_edge ], [ %call34, %if.end31.err_power_off_crit_edge ], [ %ret.1, %err_htc_cleanup ], [ -12, %if.end37.err_power_off_crit_edge ]
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.21) #5
  %108 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hif_ops.i, align 4
  %power_off.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %109, i32 0, i32 16
  %110 = ptrtoint ptr %power_off.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %power_off.i, align 4
  %call.i253 = call i32 %111(ptr noundef %ar) #5
  br label %err_bmi_cleanup

err_bmi_cleanup:                                  ; preds = %err_power_off, %if.end23.err_bmi_cleanup_crit_edge
  %ret.3 = phi i32 [ %call.i, %if.end23.err_bmi_cleanup_crit_edge ], [ %ret.2, %err_power_off ]
  call void @ath6kl_bmi_cleanup(ptr noundef %ar) #5
  br label %err_wq

err_wq:                                           ; preds = %err_bmi_cleanup, %if.end19.err_wq_crit_edge
  %ret.4 = phi i32 [ %call20, %if.end19.err_wq_crit_edge ], [ %ret.3, %err_bmi_cleanup ]
  %112 = ptrtoint ptr %ath6kl_wq to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ath6kl_wq, align 4
  call void @destroy_workqueue(ptr noundef %113) #5
  br label %cleanup

cleanup:                                          ; preds = %err_wq, %if.end146, %if.end125.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.4, %err_wq ], [ 0, %if.end146 ], [ -12, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end125.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %targ_info) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_htc_mbox_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_htc_pipe_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_get_target_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_init_hw_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_init_fetch_firmwares(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_wmi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_refill_amsdu_rxbufs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cookie_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_debug_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_init_hw_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_rx_refill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_cfg80211_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_debug_init_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_interface_add(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_recovery_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_debug_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cleanup_amsdu_rxbufs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_wmi_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_bmi_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_core_create(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ath6kl_cfg80211_create() #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @ath6kl_p2p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1 = icmp ne i32 %0, 0
  %p2p = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 90
  %frombool = zext i1 %tobool1 to i8
  %1 = ptrtoint ptr %p2p to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %p2p, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call, align 4
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 17
  %3 = ptrtoint ptr %vif_max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %vif_max, align 4
  %max_norm_iface = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 18
  %4 = ptrtoint ptr %max_norm_iface to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %max_norm_iface, align 4
  %lock = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ath6kl_core_create.__key, i16 noundef signext 3) #5
  %mcastpsq_lock = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 56
  tail call void @__raw_spin_lock_init(ptr noundef %mcastpsq_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ath6kl_core_create.__key.10, i16 noundef signext 3) #5
  %list_lock = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ath6kl_core_create.__key.12, i16 noundef signext 3) #5
  %event_wq = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 72
  tail call void @__init_waitqueue_head(ptr noundef %event_wq, ptr noundef nonnull @.str.15, ptr noundef nonnull @ath6kl_core_create.__key.14) #5
  %sem = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22
  %wait_list1.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 2
  %5 = ptrtoint ptr %sem to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 0, i32 1
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 0, i32 2
  %7 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 0, i32 3
  %8 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 0, i32 4
  %9 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.22, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 0, i32 4, i32 5
  %13 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %15 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 22, i32 2, i32 1
  %16 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %amsdu_rx_buffer_queue = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 60
  %17 = ptrtoint ptr %amsdu_rx_buffer_queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %amsdu_rx_buffer_queue, ptr %amsdu_rx_buffer_queue, align 4
  %prev.i = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 60, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %amsdu_rx_buffer_queue, ptr %prev.i, align 4
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 13
  %19 = ptrtoint ptr %vif_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %vif_list, ptr %vif_list, align 4
  %prev.i87 = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %vif_list, ptr %prev.i87, align 4
  %flag = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 75
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flag) #5
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flag) #5
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flag) #5
  %tx_pwr = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 27
  %21 = ptrtoint ptr %tx_pwr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %tx_pwr, align 4
  %intra_bss = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 57
  %22 = ptrtoint ptr %intra_bss to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %intra_bss, align 4
  %lrssi_roam_threshold = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 23
  %23 = ptrtoint ptr %lrssi_roam_threshold to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 20, ptr %lrssi_roam_threshold, align 4
  %state = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 2
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %state, align 4
  %sta_list = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 48
  %25 = call ptr @memset(ptr %sta_list, i32 0, i32 4440)
  br label %do.body19

for.cond:                                         ; preds = %do.body19
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.cond.do.body19_crit_edge

for.cond.do.body19_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

do.body19:                                        ; preds = %for.cond.do.body19_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %for.cond.do.body19_crit_edge ]
  %psq_lock = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %psq_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @ath6kl_core_create.__key.16, i16 noundef signext 3) #5
  %psq = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 7
  %lock.i = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %26 = ptrtoint ptr %psq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %psq, ptr %psq, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %psq, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %psq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 7, i32 1
  %28 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qlen.i.i, align 4
  %apsdq = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 12
  %lock.i88 = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i88, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %29 = ptrtoint ptr %apsdq to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %apsdq, ptr %apsdq, align 4
  %prev.i.i89 = getelementptr inbounds %struct.anon.65, ptr %apsdq, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i89 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %apsdq, ptr %prev.i.i89, align 4
  %qlen.i.i90 = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 12, i32 1
  %31 = ptrtoint ptr %qlen.i.i90 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %qlen.i.i90, align 4
  %mgmt_psq_len = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 10
  %32 = ptrtoint ptr %mgmt_psq_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %mgmt_psq_len, align 4
  %mgmt_psq = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 9
  %33 = ptrtoint ptr %mgmt_psq to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %mgmt_psq, ptr %mgmt_psq, align 4
  %prev.i91 = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 9, i32 1
  %34 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %mgmt_psq, ptr %prev.i91, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 1276) #8
  %aggr_conn = getelementptr %struct.ath6kl, ptr %call, i32 0, i32 48, i32 %indvars.iv, i32 13
  %36 = ptrtoint ptr %aggr_conn to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %aggr_conn, align 4
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %if.then45, label %for.cond

if.then45:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.18) #5
  tail call void @ath6kl_cfg80211_destroy(ptr noundef %call) #5
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %mcastpsq = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 52
  %lock.i92 = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 52, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i92, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %37 = ptrtoint ptr %mcastpsq to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mcastpsq, ptr %mcastpsq, align 4
  %prev.i.i93 = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 52, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mcastpsq, ptr %prev.i.i93, align 4
  %qlen.i.i94 = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 52, i32 1
  %39 = ptrtoint ptr %qlen.i.i94 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %qlen.i.i94, align 4
  %ap_country_code = getelementptr inbounds %struct.ath6kl, ptr %call, i32 0, i32 59
  %40 = call ptr @memcpy(ptr %ap_country_code, ptr @.str.19, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then45, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then45 ], [ %call, %for.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_cfg80211_create() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_core_destroy(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ath6kl_cfg80211_destroy(ptr noundef %ar) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_core_cleanup(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.21) #5
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %0 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_ops.i, align 4
  %power_off.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %power_off.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_off.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ar) #5
  tail call void @ath6kl_recovery_cleanup(ptr noundef %ar) #5
  %ath6kl_wq = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 88
  %4 = ptrtoint ptr %ath6kl_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ath6kl_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #5
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %6 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %htc_target, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar.i, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %htc_ops.i, align 4
  %cleanup.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cleanup.i, align 4
  tail call void %15(ptr noundef nonnull %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ath6kl_cookie_cleanup(ptr noundef %ar) #5
  tail call void @ath6kl_cleanup_amsdu_rxbufs(ptr noundef %ar) #5
  tail call void @ath6kl_bmi_cleanup(ptr noundef %ar) #5
  tail call void @ath6kl_debug_cleanup(ptr noundef %ar) #5
  %fw_board = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 76
  %16 = ptrtoint ptr %fw_board to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_board, align 4
  tail call void @kfree(ptr noundef %17) #5
  %fw_otp = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 78
  %18 = ptrtoint ptr %fw_otp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw_otp, align 4
  tail call void @kfree(ptr noundef %19) #5
  %fw = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 80
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  tail call void @vfree(ptr noundef %21) #5
  %fw_patch = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 82
  %22 = ptrtoint ptr %fw_patch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw_patch, align 4
  tail call void @kfree(ptr noundef %23) #5
  %fw_testscript = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 84
  %24 = ptrtoint ptr %fw_testscript to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw_testscript, align 4
  tail call void @kfree(ptr noundef %25) #5
  tail call void @ath6kl_cfg80211_cleanup(ptr noundef %ar) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_recovery_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cookie_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !108, !109, !111, !112, !113, !114, !115, !117, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__param_debug_mask, !1, !"__param_debug_mask", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_masktype370, !1, !"__UNIQUE_ID_debug_masktype370", i1 false, i1 false}
!3 = !{ptr @__param_suspend_mode, !4, !"__param_suspend_mode", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 41, i32 1}
!5 = !{ptr @__UNIQUE_ID_suspend_modetype371, !4, !"__UNIQUE_ID_suspend_modetype371", i1 false, i1 false}
!6 = !{ptr @__param_wow_mode, !7, !"__param_wow_mode", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 42, i32 1}
!8 = !{ptr @__UNIQUE_ID_wow_modetype372, !7, !"__UNIQUE_ID_wow_modetype372", i1 false, i1 false}
!9 = !{ptr @__param_uart_debug, !10, !"__param_uart_debug", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 43, i32 1}
!11 = !{ptr @__UNIQUE_ID_uart_debugtype373, !10, !"__UNIQUE_ID_uart_debugtype373", i1 false, i1 false}
!12 = !{ptr @__param_uart_rate, !13, !"__param_uart_rate", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 44, i32 1}
!14 = !{ptr @__UNIQUE_ID_uart_ratetype374, !13, !"__UNIQUE_ID_uart_ratetype374", i1 false, i1 false}
!15 = !{ptr @__param_ath6kl_p2p, !16, !"__param_ath6kl_p2p", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 45, i32 1}
!17 = !{ptr @__UNIQUE_ID_ath6kl_p2ptype375, !16, !"__UNIQUE_ID_ath6kl_p2ptype375", i1 false, i1 false}
!18 = !{ptr @__param_testmode, !19, !"__param_testmode", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 46, i32 1}
!20 = !{ptr @__UNIQUE_ID_testmodetype376, !19, !"__UNIQUE_ID_testmodetype376", i1 false, i1 false}
!21 = !{ptr @__param_recovery_enable, !22, !"__param_recovery_enable", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 47, i32 1}
!23 = !{ptr @__UNIQUE_ID_recovery_enabletype377, !22, !"__UNIQUE_ID_recovery_enabletype377", i1 false, i1 false}
!24 = !{ptr @__param_heart_beat_poll, !25, !"__param_heart_beat_poll", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 48, i32 1}
!26 = !{ptr @__UNIQUE_ID_heart_beat_polltype378, !25, !"__UNIQUE_ID_heart_beat_polltype378", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_recovery_enable379, !28, !"__UNIQUE_ID_recovery_enable379", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 49, i32 1}
!29 = !{ptr @__UNIQUE_ID_heart_beat_poll380, !30, !"__UNIQUE_ID_heart_beat_poll380", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 50, i32 1}
!31 = !{ptr @__ksymtab_ath6kl_core_tx_complete, !32, !"__ksymtab_ath6kl_core_tx_complete", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 58, i32 1}
!33 = !{ptr @__ksymtab_ath6kl_core_rx_complete, !34, !"__ksymtab_ath6kl_core_rx_complete", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 64, i32 1}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 80, i32 3}
!37 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 84, i32 18}
!39 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 148, i32 14}
!42 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 153, i32 29}
!44 = !{ptr @__func__.ath6kl_core_init, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 153, i32 54}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 193, i32 14}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 218, i32 34}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 225, i32 14}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 231, i32 29}
!54 = !{ptr @__ksymtab_ath6kl_core_init, !55, !"__ksymtab_ath6kl_core_init", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 265, i32 1}
!56 = !{ptr @ath6kl_core_create.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 283, i32 2}
!58 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ath6kl_core_create.__key.10, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 284, i32 2}
!61 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ath6kl_core_create.__key.12, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 285, i32 2}
!64 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ath6kl_core_create.__key.14, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 287, i32 2}
!67 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ath6kl_core_create.__key.16, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 308, i32 3}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 316, i32 15}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 324, i32 30}
!75 = !{ptr @__ksymtab_ath6kl_core_create, !76, !"__ksymtab_ath6kl_core_create", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 328, i32 1}
!77 = !{ptr @__ksymtab_ath6kl_core_cleanup, !78, !"__ksymtab_ath6kl_core_cleanup", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 357, i32 1}
!79 = !{ptr @__ksymtab_ath6kl_core_destroy, !80, !"__ksymtab_ath6kl_core_destroy", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 363, i32 1}
!81 = !{ptr @__UNIQUE_ID_author381, !82, !"__UNIQUE_ID_author381", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 365, i32 1}
!83 = !{ptr @__UNIQUE_ID_description382, !84, !"__UNIQUE_ID_description382", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 366, i32 1}
!85 = !{ptr @__UNIQUE_ID_file383, !86, !"__UNIQUE_ID_file383", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 367, i32 1}
!87 = !{ptr @__UNIQUE_ID_license384, !86, !"__UNIQUE_ID_license384", i1 false, i1 false}
!88 = !{ptr @debug_mask, !89, !"debug_mask", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 30, i32 14}
!90 = !{ptr @suspend_mode, !91, !"suspend_mode", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 31, i32 21}
!92 = !{ptr @wow_mode, !93, !"wow_mode", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 32, i32 21}
!94 = !{ptr @uart_debug, !95, !"uart_debug", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 33, i32 21}
!96 = !{ptr @ath6kl_p2p, !97, !"ath6kl_p2p", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 35, i32 21}
!98 = !{ptr @testmode, !99, !"testmode", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 36, i32 21}
!100 = !{ptr @recovery_enable, !101, !"recovery_enable", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 37, i32 21}
!102 = !{ptr @heart_beat_poll, !103, !"heart_beat_poll", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 38, i32 21}
!104 = !{ptr @__param_str_debug_mask, !1, !"__param_str_debug_mask", i1 false, i1 false}
!105 = !{ptr @__param_str_suspend_mode, !4, !"__param_str_suspend_mode", i1 false, i1 false}
!106 = !{ptr @__param_str_wow_mode, !7, !"__param_str_wow_mode", i1 false, i1 false}
!107 = !{ptr @__param_str_uart_debug, !10, !"__param_str_uart_debug", i1 false, i1 false}
!108 = !{ptr @__param_str_uart_rate, !13, !"__param_str_uart_rate", i1 false, i1 false}
!109 = !{ptr @uart_rate, !110, !"uart_rate", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath6kl/core.c", i32 34, i32 21}
!111 = !{ptr @__param_str_ath6kl_p2p, !16, !"__param_str_ath6kl_p2p", i1 false, i1 false}
!112 = !{ptr @__param_str_testmode, !19, !"__param_str_testmode", i1 false, i1 false}
!113 = !{ptr @__param_str_recovery_enable, !22, !"__param_str_recovery_enable", i1 false, i1 false}
!114 = !{ptr @__param_str_heart_beat_poll, !25, !"__param_str_heart_beat_poll", i1 false, i1 false}
!115 = !{ptr @.str.20, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 134, i32 29}
!117 = !{ptr @.str.21, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 141, i32 29}
!119 = !{ptr @sema_init.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!121 = !{ptr @.str.22, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!123 = !{ptr @.str.23, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!125 = !{ptr @skb_queue_head_init.__key, !126, !"__key", i1 false, i1 false}
!126 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!127 = !{ptr @.str.24, !126, !"<string literal>", i1 false, i1 false}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
