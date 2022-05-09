; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/microchip/wilc1000/wlan.c_pt.bc'
source_filename = "../drivers/net/wireless/microchip/wilc1000/wlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+chip_allow_sleep\22, \22a\22\09"
module asm "\09.weak\09__crc_chip_allow_sleep\09\09\09\09"
module asm "\09.long\09__crc_chip_allow_sleep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chip_allow_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22chip_allow_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_chip_allow_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+chip_wakeup\22, \22a\22\09"
module asm "\09.weak\09__crc_chip_wakeup\09\09\09\09"
module asm "\09.long\09__crc_chip_wakeup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chip_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22chip_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_chip_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+host_wakeup_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_host_wakeup_notify\09\09\09\09"
module asm "\09.long\09__crc_host_wakeup_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host_wakeup_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22host_wakeup_notify\22\09\09\09\09\09"
module asm "__kstrtabns_host_wakeup_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+host_sleep_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_host_sleep_notify\09\09\09\09"
module asm "\09.long\09__crc_host_sleep_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host_sleep_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22host_sleep_notify\22\09\09\09\09\09"
module asm "__kstrtabns_host_sleep_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wilc_handle_isr\22, \22a\22\09"
module asm "\09.weak\09__crc_wilc_handle_isr\09\09\09\09"
module asm "\09.long\09__crc_wilc_handle_isr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wilc_handle_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22wilc_handle_isr\22\09\09\09\09\09"
module asm "__kstrtabns_wilc_handle_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wilc_vif = type { i8, i8, i32, i32, i32, %struct.net_device_stats, ptr, [6 x i8], ptr, ptr, i8, %struct.timer_list, %struct.timer_list, %struct.rf_info, %struct.tcp_ack_filter, i8, %struct.wilc_priv, %struct.list_head, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rf_info = type { i8, i8, i32, i32, i32 }
%struct.tcp_ack_filter = type { [50 x %struct.ack_session_info], [256 x %struct.pending_acks], i32, i32, i32, i8 }
%struct.ack_session_info = type { i32, i32, i16, i16, i16 }
%struct.pending_acks = type { i32, i32, ptr }
%struct.wilc_priv = type { %struct.wireless_dev, ptr, %struct.wilc_wfi_p2p_listen_params, i64, i8, [6 x i8], %struct.sta_info, ptr, ptr, ptr, %struct.wilc_pmkid_attr, [4 x [13 x i8]], [4 x i8], ptr, [9 x ptr], [9 x ptr], i8, %struct.mutex, i8, i32, i64 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.147, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.147 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.148 }
%union.anon.148 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wilc_wfi_p2p_listen_params = type { ptr, i32, i64 }
%struct.sta_info = type { [9 x [6 x i8]] }
%struct.wilc_pmkid_attr = type { i8, [16 x %struct.wilc_pmkid] }
%struct.wilc_pmkid = type { [6 x i8], [16 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wilc = type { ptr, ptr, i32, i8, ptr, i8, i32, i8, i32, i32, i8, %struct.list_head, %struct.mutex, %struct.srcu_struct, i8, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, i32, %struct.mutex, %struct.wilc_cfg_frame, i32, i8, ptr, i32, ptr, [4 x %struct.txq_handle], i32, %struct.wilc_tx_queue_status, %struct.rxq_entry_t, ptr, ptr, i8, ptr, %struct.wilc_cfg, ptr, ptr, %struct.mutex, i8, i8, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [5 x i32] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wilc_cfg_frame = type { %struct.wilc_cfg_cmd_hdr, [1468 x i8] }
%struct.wilc_cfg_cmd_hdr = type { i8, i8, i16, i32 }
%struct.txq_handle = type { %struct.txq_entry_t, i16, %struct.txq_fw_recv_queue_stat }
%struct.txq_entry_t = type { %struct.list_head, i32, i8, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.txq_fw_recv_queue_stat = type { i8, i8 }
%struct.wilc_tx_queue_status = type { [1000 x i8], i16, [4 x i16], i16, i8 }
%struct.rxq_entry_t = type { %struct.list_head, ptr, i32 }
%struct.wilc_cfg = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.tx_complete_data = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.wilc_hif_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wilc_cfg_rsp = type { i8, i8 }
%struct.wid = type { i16, i32, i32, ptr }

@chip_allow_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014FW not responding\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chip_allow_sleep\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/microchip/wilc1000/wlan.c\00", [49 x i8] zeroinitializer }, align 32
@chip_allow_sleep._entry_ptr = internal global ptr @chip_allow_sleep._entry, section ".printk_index", align 4
@__kstrtab_chip_allow_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_chip_allow_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_chip_allow_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chip_allow_sleep to i32), ptr @__kstrtab_chip_allow_sleep, ptr @__kstrtabns_chip_allow_sleep }, section "___ksymtab_gpl+chip_allow_sleep", align 4
@chip_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013Bus error %d %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chip_wakeup\00", [20 x i8] zeroinitializer }, align 32
@chip_wakeup._entry_ptr = internal global ptr @chip_wakeup._entry, section ".printk_index", align 4
@chip_wakeup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Failed to wake-up the chip\0A\00", [34 x i8] zeroinitializer }, align 32
@chip_wakeup._entry_ptr.7 = internal global ptr @chip_wakeup._entry.5, section ".printk_index", align 4
@__kstrtab_chip_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_chip_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_chip_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chip_wakeup to i32), ptr @__kstrtab_chip_wakeup, ptr @__kstrtabns_chip_wakeup }, section "___ksymtab_gpl+chip_wakeup", align 4
@__kstrtab_host_wakeup_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_host_wakeup_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_host_wakeup_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host_wakeup_notify to i32), ptr @__kstrtab_host_wakeup_notify, ptr @__kstrtabns_host_wakeup_notify }, section "___ksymtab_gpl+host_wakeup_notify", align 4
@__kstrtab_host_sleep_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_host_sleep_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_host_sleep_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host_sleep_notify to i32), ptr @__kstrtab_host_sleep_notify, ptr @__kstrtabns_host_sleep_notify }, section "___ksymtab_gpl+host_sleep_notify", align 4
@wilc_wlan_handle_txq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_wilc_handle_isr = external dso_local constant [0 x i8], align 1
@__kstrtabns_wilc_handle_isr = external dso_local constant [0 x i8], align 1
@__ksymtab_wilc_handle_isr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wilc_handle_isr to i32), ptr @__kstrtab_wilc_handle_isr, ptr @__kstrtabns_wilc_handle_isr }, section "___ksymtab_gpl+wilc_handle_isr", align 4
@wilc_wlan_firmware_download.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wilc1000\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wilc_wlan_firmware_download\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Downloading firmware size = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wilc_wlan_firmware_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Failed to reset\0A\00", [41 x i8] zeroinitializer }, align 32
@wilc_wlan_firmware_download._entry_ptr = internal global ptr @wilc_wlan_firmware_download._entry, section ".printk_index", align 4
@wilc_wlan_firmware_download._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013%s Bus error\0A\00", [16 x i8] zeroinitializer }, align 32
@wilc_wlan_firmware_download._entry_ptr.15 = internal global ptr @wilc_wlan_firmware_download._entry.13, section ".printk_index", align 4
@wilc_wlan_firmware_download.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.16, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s Offset = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error while reading reg\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error while writing reg\0A\00", [39 x i8] zeroinitializer }, align 32
@wilc_wlan_cfg_set.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wilc_wlan_cfg_set\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: seqno[%d]\0A\00", [17 x i8] zeroinitializer }, align 32
@wilc_wlan_cfg_set.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 1, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: Timed Out\0A\00", [17 x i8] zeroinitializer }, align 32
@wilc_wlan_cfg_get.__UNIQUE_ID_ddebug591 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.22, ptr @.str.2, ptr @.str.21, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wilc_wlan_cfg_get\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.is_ac_q_limit.factors = private unnamed_addr constant [4 x i8] c"\01\01\01\01", align 1
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@wilc_wlan_txq_add_cfg_pkt.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wilc_wlan_txq_add_cfg_pkt\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adding config packet ...\0A\00", [38 x i8] zeroinitializer }, align 32
@wilc_wlan_txq_add_cfg_pkt.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Return due to clear function\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fail read reg 0x1118\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fail write reg 0x1118\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fail write reg 0xc0000\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.wilc_wlan_txq_add_net_pkt = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\01\00\02\02\01\02\02\00\00\02\00\02\00\02\02\02\02\03\02\02\03\01\02\02\03", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1049248, i64 1049264]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1049248, i64 1049264]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 597, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 664, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 673, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 733, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1096, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1105, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1132, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1135, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1201, i32 25 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1208, i32 25 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1306, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1313, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1351, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 189, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 259, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 261, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1418, i32 20 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1426, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [50 x i8] c"../drivers/net/wireless/microchip/wilc1000/wlan.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1433, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant [39 x i8] c"switch.table.wilc_wlan_txq_add_net_pkt\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab_chip_allow_sleep, ptr @__ksymtab_chip_wakeup, ptr @__ksymtab_host_sleep_notify, ptr @__ksymtab_host_wakeup_notify, ptr @__ksymtab_wilc_handle_isr, ptr @chip_allow_sleep._entry, ptr @chip_allow_sleep._entry_ptr, ptr @chip_wakeup._entry, ptr @chip_wakeup._entry.5, ptr @chip_wakeup._entry_ptr, ptr @chip_wakeup._entry_ptr.7, ptr @wilc_wlan_firmware_download._entry, ptr @wilc_wlan_firmware_download._entry.13, ptr @wilc_wlan_firmware_download._entry_ptr, ptr @wilc_wlan_firmware_download._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @switch.table.wilc_wlan_txq_add_net_pkt], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_allow_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_wakeup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_wlan_firmware_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_wlan_firmware_download._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wilc_wlan_txq_add_net_pkt to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wilc_enable_tcp_ack_filter(ptr nocapture noundef writeonly %vif, i1 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %value to i8
  %enabled = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_txq_add_net_pkt(ptr noundef %dev, ptr noundef %tx_data, ptr noundef %buffer, i32 noundef %buffer_size, ptr noundef %tx_complete_fn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wilc1 = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  %quit = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %quit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %tx_complete_fn(ptr noundef %tx_data, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %initialized = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %initialized, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %tx_complete_fn(ptr noundef %tx_data, i32 noundef 0) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 44) #12
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %tx_complete_fn(ptr noundef %tx_data, i32 noundef 0) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %type = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %type, align 8
  %buffer9 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 4
  %8 = ptrtoint ptr %buffer9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buffer, ptr %buffer9, align 4
  %buffer_size10 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %buffer_size10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buffer_size, ptr %buffer_size10, align 8
  %tx_complete_func = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 9
  %10 = ptrtoint ptr %tx_complete_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx_complete_fn, ptr %tx_complete_func, align 8
  %priv = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 6
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tx_data, ptr %priv, align 4
  %vif11 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 8
  %12 = ptrtoint ptr %vif11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %vif11, align 4
  %skb = getelementptr inbounds %struct.tx_complete_data, ptr %tx_data, i32 0, i32 2
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i, align 8
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %if.end8.ac_classify.exit_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb4.i
  ]

if.end8.ac_classify.exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %ac_classify.exit

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %21 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %conv.i.i.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tos.i.i, align 1
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i1.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i1.i, align 8
  %network_header.i.i2.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i2.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i2.i, align 4
  %conv.i.i3.i = zext i16 %27 to i32
  %add.ptr.i.i4.i = getelementptr i8, ptr %25, i32 %conv.i.i3.i
  %28 = ptrtoint ptr %add.ptr.i.i4.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i4.i, align 2
  %30 = lshr i16 %29, 4
  %conv1.i.i = trunc i16 %30 to i8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i
  %dscp.0.in.i = phi i8 [ %conv1.i.i, %sw.bb4.i ], [ %23, %sw.bb.i ]
  %31 = lshr i8 %dscp.0.in.i, 3
  %dscp.0.i = shl i8 %dscp.0.in.i, 5
  %32 = and i8 %dscp.0.i, -128
  %33 = or i8 %32, %31
  %34 = xor i8 %33, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %34)
  %35 = icmp ult i8 %34, 25
  br i1 %35, label %switch.lookup, label %sw.epilog.i.ac_classify.exit_crit_edge

sw.epilog.i.ac_classify.exit_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ac_classify.exit

switch.lookup:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = sext i8 %34 to i32
  %switch.gep = getelementptr inbounds [25 x i8], ptr @switch.table.wilc_wlan_txq_add_net_pkt, i32 0, i32 %36
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %37)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %ac_classify.exit

ac_classify.exit:                                 ; preds = %switch.lookup, %sw.epilog.i.ac_classify.exit_crit_edge, %if.end8.ac_classify.exit_crit_edge
  %retval.0.i = phi i8 [ 2, %if.end8.ac_classify.exit_crit_edge ], [ 2, %sw.epilog.i.ac_classify.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %q_num13 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 2
  %38 = ptrtoint ptr %q_num13 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %retval.0.i, ptr %q_num13, align 4
  %idxprom.i = zext i8 %retval.0.i to i32
  %fw.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 32, i32 %idxprom.i, i32 2
  %39 = ptrtoint ptr %fw.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.i = icmp eq i8 %40, 0
  br i1 %cmp.i, label %ac_classify.exit.if.end17_crit_edge, label %if.end.i

ac_classify.exit.if.end17_crit_edge:              ; preds = %ac_classify.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end.i:                                         ; preds = %ac_classify.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %retval.0.i)
  %cmp3.i = icmp ult i8 %retval.0.i, 3
  br i1 %cmp3.i, label %do.body.i.1, label %if.end.i.if.then16_crit_edge

if.end.i.if.then16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

do.body.i.1:                                      ; preds = %if.end.i
  %inc.i = add nuw nsw i8 %retval.0.i, 1
  %idxprom.i.1 = zext i8 %inc.i to i32
  %fw.i.1 = getelementptr %struct.wilc, ptr %1, i32 0, i32 32, i32 %idxprom.i.1, i32 2
  %41 = ptrtoint ptr %fw.i.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fw.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.i.1 = icmp eq i8 %42, 0
  br i1 %cmp.i.1, label %do.body.i.1.if.end17_crit_edge, label %if.end.i.1

do.body.i.1.if.end17_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end.i.1:                                       ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %retval.0.i)
  %cmp3.i.1 = icmp ult i8 %retval.0.i, 2
  br i1 %cmp3.i.1, label %do.body.i.2, label %if.end.i.1.if.then16_crit_edge

if.end.i.1.if.then16_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

do.body.i.2:                                      ; preds = %if.end.i.1
  %inc.i.1 = add nuw nsw i8 %retval.0.i, 2
  %idxprom.i.2 = zext i8 %inc.i.1 to i32
  %fw.i.2 = getelementptr %struct.wilc, ptr %1, i32 0, i32 32, i32 %idxprom.i.2, i32 2
  %43 = ptrtoint ptr %fw.i.2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fw.i.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp.i.2 = icmp eq i8 %44, 0
  br i1 %cmp.i.2, label %do.body.i.2.if.end17_crit_edge, label %if.end.i.2

do.body.i.2.if.end17_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end.i.2:                                       ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %cmp3.i.2 = icmp eq i8 %retval.0.i, 0
  br i1 %cmp3.i.2, label %do.body.i.3, label %if.end.i.2.if.then16_crit_edge

if.end.i.2.if.then16_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

do.body.i.3:                                      ; preds = %if.end.i.2
  %inc.i.2 = add nuw nsw i8 %retval.0.i, 3
  %idxprom.i.3 = zext i8 %inc.i.2 to i32
  %fw.i.3 = getelementptr %struct.wilc, ptr %1, i32 0, i32 32, i32 %idxprom.i.3, i32 2
  %45 = ptrtoint ptr %fw.i.3 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fw.i.3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i.3 = icmp eq i8 %46, 0
  br i1 %cmp.i.3, label %do.body.i.3.if.end17_crit_edge, label %do.body.i.3.if.then16_crit_edge

do.body.i.3.if.then16_crit_edge:                  ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

do.body.i.3.if.end17_crit_edge:                   ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %do.body.i.3.if.then16_crit_edge, %if.end.i.2.if.then16_crit_edge, %if.end.i.1.if.then16_crit_edge, %if.end.i.if.then16_crit_edge
  tail call void %tx_complete_fn(ptr noundef %tx_data, i32 noundef 0) #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

if.end17:                                         ; preds = %do.body.i.3.if.end17_crit_edge, %do.body.i.2.if.end17_crit_edge, %do.body.i.1.if.end17_crit_edge, %ac_classify.exit.if.end17_crit_edge
  %q_num.0.lcssa = phi i8 [ %retval.0.i, %ac_classify.exit.if.end17_crit_edge ], [ %inc.i, %do.body.i.1.if.end17_crit_edge ], [ %inc.i.1, %do.body.i.2.if.end17_crit_edge ], [ %inc.i.2, %do.body.i.3.if.end17_crit_edge ]
  %idxprom.i.lcssa = phi i32 [ %idxprom.i, %ac_classify.exit.if.end17_crit_edge ], [ %idxprom.i.1, %do.body.i.1.if.end17_crit_edge ], [ %idxprom.i.2, %do.body.i.2.if.end17_crit_edge ], [ %idxprom.i.3, %do.body.i.3.if.end17_crit_edge ]
  %tx_q_limit.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 34
  %txq_spinlock.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i) #9
  %initialized.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 34, i32 4
  %47 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %initialized.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %if.end17.for.body.i_crit_edge, label %if.end17.if.end.i60_crit_edge

if.end17.if.end.i60_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i60

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

for.cond10.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sum.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 34, i32 3
  %arrayidx20.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 34, i32 2, i32 0
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 250, ptr %arrayidx20.i, align 2
  %50 = ptrtoint ptr %sum.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sum.i, align 2
  %arrayidx20.1.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 34, i32 2, i32 1
  %52 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 250, ptr %arrayidx20.1.i, align 2
  %arrayidx20.2.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 34, i32 2, i32 2
  %53 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 250, ptr %arrayidx20.2.i, align 2
  %arrayidx20.3.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 34, i32 2, i32 3
  %54 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 250, ptr %arrayidx20.3.i, align 2
  %add.3.i = add i16 %51, 1000
  store i16 %add.3.i, ptr %sum.i, align 2
  %end_index30.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 34, i32 1
  %55 = ptrtoint ptr %end_index30.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 999, ptr %end_index30.i, align 2
  %56 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %initialized.i, align 2
  br label %if.end.i60

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end17.for.body.i_crit_edge ]
  %57 = trunc i32 %indvars.iv.i to i8
  %conv9.i = and i8 %57, 3
  %arrayidx.i = getelementptr [1000 x i8], ptr %tx_q_limit.i, i32 0, i32 %indvars.iv.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv9.i, ptr %arrayidx.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 1000
  br i1 %exitcond.not.i, label %for.cond10.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i60:                                       ; preds = %for.cond10.preheader.i, %if.end17.if.end.i60_crit_edge
  %end_index32.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 34, i32 1
  %59 = ptrtoint ptr %end_index32.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %end_index32.i, align 2
  %61 = and i16 %60, 255
  %idxprom35.i = zext i16 %61 to i32
  %arrayidx36.i = getelementptr [1000 x i8], ptr %tx_q_limit.i, i32 0, i32 %idxprom35.i
  %62 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx36.i, align 1
  %idxprom37.i = zext i8 %63 to i32
  %arrayidx38.i = getelementptr [4 x i8], ptr @__const.is_ac_q_limit.factors, i32 0, i32 %idxprom37.i
  %64 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %65 to i16
  %arrayidx45.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 34, i32 2, i32 %idxprom37.i
  %66 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx45.i, align 2
  %sub.i = sub i16 %67, %conv39.i
  store i16 %sub.i, ptr %arrayidx45.i, align 2
  %arrayidx49.i = getelementptr [4 x i8], ptr @__const.is_ac_q_limit.factors, i32 0, i32 %idxprom.i.lcssa
  %68 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx49.i, align 1
  %conv50.i = zext i8 %69 to i16
  %arrayidx53.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 34, i32 2, i32 %idxprom.i.lcssa
  %70 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx53.i, align 2
  %add55.i = add i16 %71, %conv50.i
  store i16 %add55.i, ptr %arrayidx53.i, align 2
  %sub66.i = sub nsw i16 %conv50.i, %conv39.i
  %sum67.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 34, i32 3
  %72 = ptrtoint ptr %sum67.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %sum67.i, align 2
  %add69.i = add i16 %73, %sub66.i
  store i16 %add69.i, ptr %sum67.i, align 2
  store i8 %q_num.0.lcssa, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp75.not.i = icmp eq i16 %61, 0
  %dec.i = add i16 %60, -1
  %spec.select.i = select i1 %cmp75.not.i, i16 999, i16 %dec.i
  %74 = ptrtoint ptr %end_index32.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %spec.select.i, ptr %end_index32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add69.i)
  %tobool82.not.i = icmp eq i16 %add69.i, 0
  br i1 %tobool82.not.i, label %if.end.i60.is_ac_q_limit.exit_crit_edge, label %if.else84.i

if.end.i60.is_ac_q_limit.exit_crit_edge:          ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_ac_q_limit.exit

if.else84.i:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx53.i, align 2
  %conv88.i = zext i16 %76 to i32
  %mul89.i = shl nuw nsw i32 %conv88.i, 8
  %conv91.i = zext i16 %add69.i to i32
  %div92.i = udiv i32 %mul89.i, %conv91.i
  %add93.i = add nuw nsw i32 %div92.i, 1
  %phi.cast.i = and i32 %add93.i, 255
  br label %is_ac_q_limit.exit

is_ac_q_limit.exit:                               ; preds = %if.else84.i, %if.end.i60.is_ac_q_limit.exit_crit_edge
  %q_limit.0.i = phi i32 [ %phi.cast.i, %if.else84.i ], [ 1, %if.end.i60.is_ac_q_limit.exit_crit_edge ]
  %count.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 32, i32 %idxprom.i.lcssa, i32 1
  %77 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %count.i, align 4
  %conv98.i = zext i16 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %q_limit.0.i, i32 %conv98.i)
  %cmp100.not.i.not = icmp ult i32 %q_limit.0.i, %conv98.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i, i32 noundef %call2.i) #9
  br i1 %cmp100.not.i.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %is_ac_q_limit.exit
  %ack_idx = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 3
  %79 = ptrtoint ptr %ack_idx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %ack_idx, align 8
  %enabled = getelementptr i8, ptr %dev, i32 6432
  %80 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %enabled, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool20.not = icmp eq i8 %81, 0
  br i1 %tobool20.not, label %if.then19.if.end22_crit_edge, label %if.then21

if.then19.if.end22_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tcp_process(ptr noundef %dev, ptr noundef nonnull %call7.i)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then19.if.end22_crit_edge
  %82 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wilc1, align 4
  %txq_spinlock.i61 = getelementptr inbounds %struct.wilc, ptr %83, i32 0, i32 16
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i61) #9
  %arrayidx.i63 = getelementptr %struct.wilc, ptr %83, i32 0, i32 32, i32 %idxprom.i.lcssa
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i63, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %85, ptr noundef %arrayidx.i63) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end22.wilc_wlan_txq_add_to_tail.exit_crit_edge

if.end22.wilc_wlan_txq_add_to_tail.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_add_to_tail.exit

if.end.i.i.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i, ptr %prev.i.i, align 4
  %87 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx.i63, ptr %call7.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call7.i, ptr %85, align 4
  br label %wilc_wlan_txq_add_to_tail.exit

wilc_wlan_txq_add_to_tail.exit:                   ; preds = %if.end.i.i.i, %if.end22.wilc_wlan_txq_add_to_tail.exit_crit_edge
  %txq_entries.i = getelementptr inbounds %struct.wilc, ptr %83, i32 0, i32 33
  %90 = ptrtoint ptr %txq_entries.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %txq_entries.i, align 4
  %add.i = add i32 %91, 1
  store i32 %add.i, ptr %txq_entries.i, align 4
  %count.i64 = getelementptr %struct.wilc, ptr %83, i32 0, i32 32, i32 %idxprom.i.lcssa, i32 1
  %92 = ptrtoint ptr %count.i64 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %count.i64, align 4
  %inc.i65 = add i16 %93, 1
  store i16 %inc.i65, ptr %count.i64, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i61, i32 noundef %call4.i) #9
  %txq_event.i = getelementptr inbounds %struct.wilc, ptr %83, i32 0, i32 21
  tail call void @complete(ptr noundef %txq_event.i) #9
  br label %if.end23

if.else:                                          ; preds = %is_ac_q_limit.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %tx_complete_fn(ptr noundef %tx_data, i32 noundef 0) #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %if.end23

if.end23:                                         ; preds = %if.else, %wilc_wlan_txq_add_to_tail.exit
  %txq_entries = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 33
  %94 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %txq_entries, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then16, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then16 ], [ %95, %if.end23 ], [ 0, %if.then7 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_process(ptr nocapture noundef %dev, ptr noundef %tqe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %buffer1 = getelementptr inbounds %struct.txq_entry_t, ptr %tqe, i32 0, i32 4
  %0 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer1, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wilc2 = getelementptr i8, ptr %dev, i32 2412
  %2 = ptrtoint ptr %wilc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wilc2, align 4
  %ack_filter = getelementptr i8, ptr %dev, i32 2548
  %txq_spinlock = getelementptr inbounds %struct.wilc, ptr %3, i32 0, i32 16
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock) #9
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %5)
  %cmp9.not = icmp eq i16 %5, 2048
  br i1 %cmp9.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %protocol = getelementptr i8, ptr %1, i32 23
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp12.not = icmp eq i8 %7, 6
  br i1 %cmp12.not, label %if.end15, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %1, i32 14
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %add.ptr, align 4
  %bf.clear = shl i8 %bf.load, 2
  %9 = and i8 %bf.clear, 60
  %shl = zext i8 %9 to i32
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %shl
  %tot_len = getelementptr i8, ptr %1, i32 16
  %10 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tot_len, align 2
  %conv19 = zext i16 %11 to i32
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr18, i32 0, i32 4
  %12 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load20 = load i16, ptr %doff, align 4
  %13 = lshr i16 %bf.load20, 10
  %14 = and i16 %13, 60
  %shl22 = zext i16 %14 to i32
  %add = add nuw nsw i32 %shl22, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv19)
  %cmp23 = icmp eq i32 %add, %conv19
  br i1 %cmp23, label %if.then25, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then25:                                        ; preds = %if.end15
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr18, i32 0, i32 2
  %15 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq, align 4
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr18, i32 0, i32 3
  %17 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ack_seq, align 4
  %tcp_session = getelementptr i8, ptr %dev, i32 6424
  %19 = ptrtoint ptr %tcp_session to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tcp_session, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2679.not = icmp eq i32 %20, 0
  br i1 %cmp2679.not, label %if.then25.for.end_crit_edge, label %if.then25.for.body_crit_edge

if.then25.for.body_crit_edge:                     ; preds = %if.then25
  br label %for.body

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then25.for.body_crit_edge
  %i.080 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then25.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %i.080)
  %cmp28 = icmp slt i32 %i.080, 50
  br i1 %cmp28, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [50 x %struct.ack_session_info], ptr %ack_filter, i32 0, i32 %i.080
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %16)
  %cmp30 = icmp eq i32 %22, %16
  br i1 %cmp30, label %if.then32, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %i.080)
  %cmp.i = icmp ult i32 %i.080, 50
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then32.cleanup.thread_crit_edge

if.then32.cleanup.thread_crit_edge:               ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

land.lhs.true.i:                                  ; preds = %if.then32
  %bigger_ack_num.i = getelementptr [50 x %struct.ack_session_info], ptr %ack_filter, i32 0, i32 %i.080, i32 1
  %23 = ptrtoint ptr %bigger_ack_num.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bigger_ack_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %18)
  %cmp1.i = icmp ult i32 %24, %18
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.cleanup.thread_crit_edge

land.lhs.true.i.cleanup.thread_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %bigger_ack_num.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %18, ptr %bigger_ack_num.i, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i, %land.lhs.true.i.cleanup.thread_crit_edge, %if.then32.cleanup.thread_crit_edge
  %26 = ptrtoint ptr %tcp_session to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %tcp_session, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread, %if.then25.for.end_crit_edge
  %i.078 = phi i32 [ %i.080, %cleanup.thread ], [ 0, %if.then25.for.end_crit_edge ], [ %20, %for.inc.for.end_crit_edge ]
  %27 = phi i32 [ %.pr, %cleanup.thread ], [ 0, %if.then25.for.end_crit_edge ], [ %20, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.078, i32 %27)
  %cmp35 = icmp eq i32 %i.078, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %27)
  %cmp.i64 = icmp ult i32 %27, 50
  %or.cond = and i1 %cmp35, %cmp.i64
  br i1 %or.cond, label %if.then.i67, label %for.end.if.end38_crit_edge

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then.i67:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [50 x %struct.ack_session_info], ptr %ack_filter, i32 0, i32 %i.078
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %16, ptr %arrayidx.i, align 4
  %bigger_ack_num.i66 = getelementptr [50 x %struct.ack_session_info], ptr %ack_filter, i32 0, i32 %i.078, i32 1
  %29 = ptrtoint ptr %bigger_ack_num.i66 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bigger_ack_num.i66, align 4
  %30 = ptrtoint ptr %tcp_session to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tcp_session, align 4
  %src_port.i = getelementptr [50 x %struct.ack_session_info], ptr %ack_filter, i32 0, i32 %31, i32 2
  %32 = ptrtoint ptr %src_port.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %src_port.i, align 4
  %dst_port.i = getelementptr [50 x %struct.ack_session_info], ptr %ack_filter, i32 0, i32 %31, i32 3
  %33 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %dst_port.i, align 2
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %tcp_session, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then.i67, %for.end.if.end38_crit_edge
  %pending_base.i = getelementptr i8, ptr %dev, i32 6420
  %34 = ptrtoint ptr %pending_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pending_base.i, align 4
  %pending_acks_idx.i = getelementptr i8, ptr %dev, i32 6428
  %36 = ptrtoint ptr %pending_acks_idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pending_acks_idx.i, align 4
  %add.i = add i32 %37, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %cmp.i68 = icmp ult i32 %add.i, 256
  br i1 %cmp.i68, label %if.then.i71, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i71:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i69 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 14, i32 1, i32 %add.i
  %38 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %18, ptr %arrayidx.i69, align 4
  %txqe3.i = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 14, i32 1, i32 %add.i, i32 2
  %39 = ptrtoint ptr %txqe3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tqe, ptr %txqe3.i, align 4
  %session_index6.i = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 14, i32 1, i32 %add.i, i32 1
  %40 = ptrtoint ptr %session_index6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %i.078, ptr %session_index6.i, align 4
  %ack_idx.i = getelementptr inbounds %struct.txq_entry_t, ptr %tqe, i32 0, i32 3
  %41 = ptrtoint ptr %ack_idx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i, ptr %ack_idx.i, align 4
  %42 = ptrtoint ptr %pending_acks_idx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pending_acks_idx.i, align 4
  %inc.i70 = add i32 %43, 1
  store i32 %inc.i70, ptr %pending_acks_idx.i, align 4
  br label %out

out:                                              ; preds = %if.then.i71, %if.end38.out_crit_edge, %if.end15.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock, i32 noundef %call5) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_txq_add_mgmt_pkt(ptr noundef %dev, ptr noundef %priv, ptr noundef %buffer, i32 noundef %buffer_size, ptr noundef %tx_complete_fn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wilc1 = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  %quit = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %quit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %tx_complete_fn(ptr noundef %priv, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %initialized = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %initialized, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %tx_complete_fn(ptr noundef %priv, i32 noundef 0) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 44) #12
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %tx_complete_fn(ptr noundef %priv, i32 noundef 0) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %type = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %type, align 8
  %buffer9 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 4
  %8 = ptrtoint ptr %buffer9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buffer, ptr %buffer9, align 4
  %buffer_size10 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %buffer_size10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buffer_size, ptr %buffer_size10, align 8
  %tx_complete_func = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 9
  %10 = ptrtoint ptr %tx_complete_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx_complete_fn, ptr %tx_complete_func, align 8
  %priv11 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 6
  %11 = ptrtoint ptr %priv11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %priv, ptr %priv11, align 4
  %q_num = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %q_num to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %q_num, align 4
  %ack_idx = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 3
  %13 = ptrtoint ptr %ack_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %ack_idx, align 8
  %vif12 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 8
  %14 = ptrtoint ptr %vif12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %vif12, align 4
  %15 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wilc1, align 4
  %txq_spinlock.i = getelementptr inbounds %struct.wilc, ptr %16, i32 0, i32 16
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i) #9
  %arrayidx.i = getelementptr %struct.wilc, ptr %16, i32 0, i32 32, i32 0
  %prev.i.i = getelementptr %struct.wilc, ptr %16, i32 0, i32 32, i32 0, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %18, ptr noundef %arrayidx.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.wilc_wlan_txq_add_to_tail.exit_crit_edge

if.end8.wilc_wlan_txq_add_to_tail.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_add_to_tail.exit

if.end.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.i, ptr %call7.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i, ptr %18, align 4
  br label %wilc_wlan_txq_add_to_tail.exit

wilc_wlan_txq_add_to_tail.exit:                   ; preds = %if.end.i.i.i, %if.end8.wilc_wlan_txq_add_to_tail.exit_crit_edge
  %txq_entries.i = getelementptr inbounds %struct.wilc, ptr %16, i32 0, i32 33
  %23 = ptrtoint ptr %txq_entries.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %txq_entries.i, align 4
  %add.i = add i32 %24, 1
  store i32 %add.i, ptr %txq_entries.i, align 4
  %count.i = getelementptr %struct.wilc, ptr %16, i32 0, i32 32, i32 0, i32 1
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %count.i, align 4
  %inc.i = add i16 %26, 1
  store i16 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i, i32 noundef %call4.i) #9
  %txq_event.i = getelementptr inbounds %struct.wilc, ptr %16, i32 0, i32 21
  tail call void @complete(ptr noundef %txq_event.i) #9
  br label %cleanup

cleanup:                                          ; preds = %wilc_wlan_txq_add_to_tail.exit, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %wilc_wlan_txq_add_to_tail.exit ], [ 0, %if.then7 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chip_allow_sleep(ptr noundef %wilc) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %hif_func1 = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %1 = ptrtoint ptr %hif_func1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hif_func1, align 4
  %io_type = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 2
  %3 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %. = select i1 %cmp, i32 240, i32 1
  %.70 = select i1 %cmp, i32 1, i32 2
  %.71 = select i1 %cmp, i32 252, i32 16
  %.72 = select i1 %cmp, i32 250, i32 11
  %hif_read_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %2, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end4.while.cond_crit_edge, %entry
  %trials.0 = phi i32 [ 100, %entry ], [ %dec, %if.end4.while.cond_crit_edge ]
  %dec = add nsw i32 %trials.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.critedge, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hif_read_reg, align 4
  %call = call i32 %6(ptr noundef %wilc, i32 noundef %.71, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %while.body
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 1
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.end4.if.end11_crit_edge, label %if.end4.while.cond_crit_edge

if.end4.while.cond_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end.critedge:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end.critedge, %if.end4.if.end11_crit_edge
  %9 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hif_read_reg, align 4
  %call13 = call i32 %10(ptr noundef %wilc, i32 noundef %., ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %and17 = and i32 %12, %.70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end25_crit_edge, label %if.then19

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then19:                                        ; preds = %if.end16
  %neg = xor i32 %.70, -1
  %and20 = and i32 %12, %neg
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and20, ptr %reg, align 4
  %hif_write_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %2, i32 0, i32 3
  %14 = ptrtoint ptr %hif_write_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hif_write_reg, align 4
  %call21 = call i32 %15(ptr noundef %wilc, i32 noundef %., i32 noundef %and20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.if.end25_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  %16 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hif_read_reg, align 4
  %call27 = call i32 %17(ptr noundef %wilc, i32 noundef %.72, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %and31 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.then33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %and35 = and i32 %19, -2
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and35, ptr %reg, align 4
  %hif_write_reg36 = getelementptr inbounds %struct.wilc_hif_func, ptr %2, i32 0, i32 3
  %21 = ptrtoint ptr %hif_write_reg36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hif_write_reg36, align 4
  %call37 = call i32 %22(ptr noundef %wilc, i32 noundef %.72, i32 noundef %and35) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %while.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chip_wakeup(ptr noundef %wilc) #1 align 64 {
entry:
  %clk_status_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_status_val) #9
  %0 = ptrtoint ptr %clk_status_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %clk_status_val, align 4
  %hif_func1 = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %1 = ptrtoint ptr %hif_func1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hif_func1, align 4
  %io_type = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 2
  %3 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %.56 = select i1 %cmp, i32 241, i32 15
  %.57 = select i1 %cmp, i32 1, i32 4
  %.58 = select i1 %cmp, i32 250, i32 11
  %hif_write_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %hif_write_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hif_write_reg, align 4
  %call = tail call i32 %6(ptr noundef %wilc, i32 noundef %.58, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  %.55 = select i1 %cmp, i32 1, i32 2
  %. = select i1 %cmp, i32 240, i32 1
  %7 = ptrtoint ptr %hif_write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_write_reg, align 4
  %call5 = tail call i32 %8(ptr noundef %wilc, i32 noundef %., i32 noundef %.55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.cond.preheader, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end3
  %hif_read_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %2, i32 0, i32 2
  br label %while.body

while.cond:                                       ; preds = %if.end14
  %inc = add nuw nsw i32 %trials.061, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.end22, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader
  %trials.061 = phi i32 [ 0, %while.cond.preheader ], [ %inc, %while.cond.while.body_crit_edge ]
  %9 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hif_read_reg, align 4
  %call10 = call i32 %10(ptr noundef %wilc, i32 noundef %.56, ptr noundef nonnull %clk_status_val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %11 = ptrtoint ptr %clk_status_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_status_val, align 4
  br i1 %tobool11.not, label %if.end14, label %do.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %call10, i32 noundef %12) #13
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %and = and i32 %12, %.57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %while.cond, label %if.end25

do.end22:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %13 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp27 = icmp eq i32 %14, 1
  br i1 %cmp27, label %if.then28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %hif_func1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hif_func1, align 4
  %hif_reset = getelementptr inbounds %struct.wilc_hif_func, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %hif_reset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hif_reset, align 4
  %call30 = call i32 %18(ptr noundef %wilc) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end25.cleanup_crit_edge, %do.end22, %do.end, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_status_val) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host_wakeup_notify(ptr noundef %wilc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_cs.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs.i, i32 noundef 0) #9
  %hif_func = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %0 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_func, align 4
  %hif_write_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hif_write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_write_reg, align 4
  %call = tail call i32 %3(ptr noundef %wilc, i32 noundef 4272, i32 noundef 1) #9
  tail call void @mutex_unlock(ptr noundef %hif_cs.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acquire_bus(ptr noundef %wilc, i32 noundef %acquire) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %hif_cs = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %acquire)
  %cmp = icmp eq i32 %acquire, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %power_save_mode = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 7
  %0 = ptrtoint ptr %power_save_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_save_mode, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @chip_wakeup(ptr noundef %wilc)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_bus(ptr noundef %wilc, i32 noundef %release) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %release)
  %cmp = icmp eq i32 %release, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %power_save_mode = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 7
  %0 = ptrtoint ptr %power_save_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_save_mode, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @chip_allow_sleep(ptr noundef %wilc)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %hif_cs = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %hif_cs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host_sleep_notify(ptr noundef %wilc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_cs.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs.i, i32 noundef 0) #9
  %hif_func = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %0 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_func, align 4
  %hif_write_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hif_write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_write_reg, align 4
  %call = tail call i32 %3(ptr noundef %wilc, i32 noundef 4268, i32 noundef 1) #9
  tail call void @mutex_unlock(ptr noundef %hif_cs.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_handle_txq(ptr noundef %wilc, ptr nocapture noundef writeonly %txq_count) local_unnamed_addr #1 align 64 {
entry:
  %reg = alloca i32, align 4
  %ac_desired_ratio = alloca [4 x i8], align 4
  %ac_preserve_ratio = alloca [4 x i8], align 4
  %vmm_entries_ac = alloca [64 x i8], align 1
  %tqe_q = alloca [4 x ptr], align 4
  %vmm_table = alloca [64 x i32], align 4
  %ac_pkt_num_to_chip = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac_desired_ratio) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac_preserve_ratio) #9
  %1 = ptrtoint ptr %ac_preserve_ratio to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16843009, ptr %ac_preserve_ratio, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vmm_entries_ac) #9
  %2 = call ptr @memset(ptr %vmm_entries_ac, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tqe_q) #9
  %3 = getelementptr inbounds [4 x ptr], ptr %tqe_q, i32 0, i32 1
  %4 = getelementptr inbounds [4 x ptr], ptr %tqe_q, i32 0, i32 2
  %5 = getelementptr inbounds [4 x ptr], ptr %tqe_q, i32 0, i32 3
  %6 = call ptr @memset(ptr %tqe_q, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %vmm_table) #9
  %7 = call ptr @memset(ptr %vmm_table, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac_pkt_num_to_chip) #9
  %8 = ptrtoint ptr %ac_pkt_num_to_chip to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ac_pkt_num_to_chip, align 4
  %tx_buffer = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 31
  %9 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_buffer, align 4
  %quit = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 24
  %11 = ptrtoint ptr %quit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end3, label %entry.cleanup453_crit_edge

entry.cleanup453_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup453

if.end3:                                          ; preds = %entry
  %count.i = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 1, i32 2, i32 1
  %15 = ptrtoint ptr %count.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %count.1.i, align 1
  %17 = tail call i8 @llvm.umax.i8(i8 %16, i8 %14) #9
  %count.2.i = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 2, i32 2, i32 1
  %18 = ptrtoint ptr %count.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %count.2.i, align 1
  %20 = tail call i8 @llvm.umax.i8(i8 %19, i8 %17) #9
  %count.3.i = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 3, i32 2, i32 1
  %21 = ptrtoint ptr %count.3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %count.3.i, align 1
  %23 = tail call i8 @llvm.umax.i8(i8 %22, i8 %20) #9
  %sub.i = sub i8 %23, %14
  %24 = ptrtoint ptr %ac_desired_ratio to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %sub.i, ptr %ac_desired_ratio, align 4
  %sub.1.i = sub i8 %23, %16
  %arrayidx27.1.i = getelementptr inbounds i8, ptr %ac_desired_ratio, i32 1
  %25 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %sub.1.i, ptr %arrayidx27.1.i, align 1
  %sub.2.i = sub i8 %23, %19
  %arrayidx27.2.i = getelementptr inbounds i8, ptr %ac_desired_ratio, i32 2
  %26 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %sub.2.i, ptr %arrayidx27.2.i, align 2
  %sub.3.i = sub i8 %23, %22
  %arrayidx27.3.i = getelementptr inbounds i8, ptr %ac_desired_ratio, i32 3
  %27 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %sub.3.i, ptr %arrayidx27.3.i, align 1
  %txq_add_to_head_cs = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %txq_add_to_head_cs, i32 noundef 0) #9
  %srcu = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 13
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #9
  %dep_map.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 13, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #9
  %call5 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end3.do.end_crit_edge

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %if.end3
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b625 = load i1, ptr @wilc_wlan_handle_txq.__warned, align 1
  br i1 %.b625, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @wilc_wlan_handle_txq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 733, ptr noundef nonnull @.str.8) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end3.do.end_crit_edge
  %vif_list = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 11
  %28 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn705 = load volatile ptr, ptr %vif_list, align 4
  %cmp.not706 = icmp eq ptr %.pn705, %vif_list
  br i1 %cmp.not706, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %wilc_wlan_txq_filter_dup_tcp_ack.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn707 = phi ptr [ %.pn, %wilc_wlan_txq_filter_dup_tcp_ack.exit.for.body_crit_edge ], [ %.pn705, %do.end.for.body_crit_edge ]
  %ndev = getelementptr i8, ptr %.pn707, i32 -5684
  %29 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 2304
  %wilc1.i = getelementptr i8, ptr %30, i32 2412
  %31 = ptrtoint ptr %wilc1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wilc1.i, align 4
  %ack_filter.i = getelementptr i8, ptr %30, i32 2548
  %txq_spinlock.i = getelementptr inbounds %struct.wilc, ptr %32, i32 0, i32 16
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i) #9
  %pending_base.i = getelementptr i8, ptr %30, i32 6420
  %33 = ptrtoint ptr %pending_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pending_base.i, align 4
  %pending_acks_idx.i = getelementptr i8, ptr %30, i32 6428
  %35 = ptrtoint ptr %pending_acks_idx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pending_acks_idx.i, align 4
  %add85.i = add i32 %36, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add85.i)
  %cmp886.i = icmp uge i32 %34, %add85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %34)
  %cmp1087.i = icmp ugt i32 %34, 255
  %or.cond88.i = or i1 %cmp1087.i, %cmp886.i
  br i1 %or.cond88.i, label %for.body.for.end.i_crit_edge, label %if.end.lr.ph.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.lr.ph.i:                                   ; preds = %for.body
  %txq_entries.i.i = getelementptr inbounds %struct.wilc, ptr %32, i32 0, i32 33
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %dropped.091.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %dropped.3.ph.i, %for.inc.i.if.end.i_crit_edge ]
  %i.089.i = phi i32 [ %34, %if.end.lr.ph.i ], [ %inc34.i, %for.inc.i.if.end.i_crit_edge ]
  %session_index.i = getelementptr %struct.wilc_vif, ptr %add.ptr.i.i, i32 0, i32 14, i32 1, i32 %i.089.i, i32 1
  %37 = ptrtoint ptr %session_index.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %session_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %38)
  %cmp12.i = icmp ugt i32 %38, 49
  br i1 %cmp12.i, label %if.end.i.for.end.i_crit_edge, label %if.end15.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end15.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.wilc_vif, ptr %add.ptr.i.i, i32 0, i32 14, i32 1, i32 %i.089.i
  %bigger_ack_num17.i = getelementptr [50 x %struct.ack_session_info], ptr %ack_filter.i, i32 0, i32 %38, i32 1
  %39 = ptrtoint ptr %bigger_ack_num17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bigger_ack_num17.i, align 4
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp20.i = icmp ult i32 %42, %40
  br i1 %cmp20.i, label %if.then22.i, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.end15.i
  %txqe.i = getelementptr %struct.wilc_vif, ptr %add.ptr.i.i, i32 0, i32 14, i32 1, i32 %i.089.i, i32 2
  %43 = ptrtoint ptr %txqe.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txqe.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.then22.i.for.inc.i_crit_edge, label %if.then25.i

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.then22.i
  %q_num.i = getelementptr inbounds %struct.txq_entry_t, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %q_num.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %44) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then25.i.wilc_wlan_txq_remove.exit.i_crit_edge

if.then25.i.wilc_wlan_txq_remove.exit.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_remove.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i.i, align 4
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %wilc_wlan_txq_remove.exit.i

wilc_wlan_txq_remove.exit.i:                      ; preds = %if.end.i.i.i.i, %if.then25.i.wilc_wlan_txq_remove.exit.i_crit_edge
  %53 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %txq_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %txq_entries.i.i, align 4
  %sub.i.i = add i32 %56, -1
  store i32 %sub.i.i, ptr %txq_entries.i.i, align 4
  %idxprom.i.i = zext i8 %46 to i32
  %count.i.i = getelementptr %struct.wilc, ptr %32, i32 0, i32 32, i32 %idxprom.i.i, i32 1
  %57 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %count.i.i, align 4
  %dec.i.i = add i16 %58, -1
  store i16 %dec.i.i, ptr %count.i.i, align 4
  %status.i = getelementptr inbounds %struct.txq_entry_t, ptr %44, i32 0, i32 7
  %59 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %status.i, align 4
  %tx_complete_func.i = getelementptr inbounds %struct.txq_entry_t, ptr %44, i32 0, i32 9
  %60 = ptrtoint ptr %tx_complete_func.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_complete_func.i, align 4
  %tobool26.not.i = icmp eq ptr %61, null
  br i1 %tobool26.not.i, label %wilc_wlan_txq_remove.exit.i.if.end30.i_crit_edge, label %if.then27.i

wilc_wlan_txq_remove.exit.i.if.end30.i_crit_edge: ; preds = %wilc_wlan_txq_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then27.i:                                      ; preds = %wilc_wlan_txq_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.txq_entry_t, ptr %44, i32 0, i32 6
  %62 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv.i, align 4
  tail call void %61(ptr noundef %63, i32 noundef 1) #9
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %wilc_wlan_txq_remove.exit.i.if.end30.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %44) #9
  %inc.i = add i32 %dropped.091.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end30.i, %if.then22.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge
  %dropped.3.ph.i = phi i32 [ %dropped.091.i, %if.then22.i.for.inc.i_crit_edge ], [ %inc.i, %if.end30.i ], [ %dropped.091.i, %if.end15.i.for.inc.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %i.089.i, 1
  %64 = ptrtoint ptr %pending_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pending_base.i, align 4
  %66 = ptrtoint ptr %pending_acks_idx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pending_acks_idx.i, align 4
  %add.i = add i32 %67, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %inc34.i, i32 %add.i)
  %cmp8.i = icmp uge i32 %inc34.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %i.089.i)
  %cmp10.i = icmp ugt i32 %i.089.i, 254
  %or.cond.i = or i1 %cmp10.i, %cmp8.i
  br i1 %or.cond.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.if.end.i_crit_edge

for.inc.i.if.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  %dropped.0.lcssa.i = phi i32 [ 0, %for.body.for.end.i_crit_edge ], [ %dropped.3.ph.i, %for.inc.i.for.end.i_crit_edge ], [ %dropped.091.i, %if.end.i.for.end.i_crit_edge ]
  %68 = ptrtoint ptr %pending_acks_idx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %pending_acks_idx.i, align 4
  %tcp_session.i = getelementptr i8, ptr %30, i32 6424
  %69 = ptrtoint ptr %tcp_session.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tcp_session.i, align 4
  %70 = ptrtoint ptr %pending_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pending_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp37.i = icmp eq i32 %71, 0
  %..i = select i1 %cmp37.i, i32 25, i32 0
  %72 = ptrtoint ptr %pending_base.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %..i, ptr %pending_base.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i, i32 noundef %call4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dropped.0.lcssa.i)
  %cmp44.not95.i = icmp eq i32 %dropped.0.lcssa.i, 0
  br i1 %cmp44.not95.i, label %for.end.i.wilc_wlan_txq_filter_dup_tcp_ack.exit_crit_edge, label %while.body.lr.ph.i

for.end.i.wilc_wlan_txq_filter_dup_tcp_ack.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_filter_dup_tcp_ack.exit

while.body.lr.ph.i:                               ; preds = %for.end.i
  %txq_event.i = getelementptr inbounds %struct.wilc, ptr %32, i32 0, i32 21
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dropped.596.i = phi i32 [ %dropped.0.lcssa.i, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %call47.i = tail call i32 @wait_for_completion_timeout(ptr noundef %txq_event.i, i32 noundef 1) #9
  %dec.i = add i32 %dropped.596.i, -1
  %cmp44.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp44.not.i, label %while.body.i.wilc_wlan_txq_filter_dup_tcp_ack.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.wilc_wlan_txq_filter_dup_tcp_ack.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_filter_dup_tcp_ack.exit

wilc_wlan_txq_filter_dup_tcp_ack.exit:            ; preds = %while.body.i.wilc_wlan_txq_filter_dup_tcp_ack.exit_crit_edge, %for.end.i.wilc_wlan_txq_filter_dup_tcp_ack.exit_crit_edge
  %73 = ptrtoint ptr %.pn707 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn = load volatile ptr, ptr %.pn707, align 4
  %cmp.not = icmp eq ptr %.pn, %vif_list
  br i1 %cmp.not, label %wilc_wlan_txq_filter_dup_tcp_ack.exit.for.end_crit_edge, label %wilc_wlan_txq_filter_dup_tcp_ack.exit.for.body_crit_edge

wilc_wlan_txq_filter_dup_tcp_ack.exit.for.body_crit_edge: ; preds = %wilc_wlan_txq_filter_dup_tcp_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

wilc_wlan_txq_filter_dup_tcp_ack.exit.for.end_crit_edge: ; preds = %wilc_wlan_txq_filter_dup_tcp_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %wilc_wlan_txq_filter_dup_tcp_ack.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i633 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i633, label %for.end.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

for.end.srcu_read_unlock.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %for.end
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !85

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 189, i32 noundef 9, ptr noundef null) #9
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %for.end.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #9
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #9
  %txq_spinlock.i635 = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i635) #9
  %arrayidx.i636 = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 0
  %74 = ptrtoint ptr %arrayidx.i636 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %arrayidx.i636, align 4
  %cmp.i.not.i = icmp eq ptr %75, %arrayidx.i636
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i635, i32 noundef %call2.i) #9
  %76 = ptrtoint ptr %tqe_q to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %spec.select.i, ptr %tqe_q, align 4
  %call2.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i635) #9
  %arrayidx.i636.1 = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 1
  %77 = ptrtoint ptr %arrayidx.i636.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %arrayidx.i636.1, align 4
  %cmp.i.not.i.1 = icmp eq ptr %78, %arrayidx.i636.1
  %spec.select.i.1 = select i1 %cmp.i.not.i.1, ptr null, ptr %78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i635, i32 noundef %call2.i.1) #9
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %spec.select.i.1, ptr %3, align 4
  %call2.i.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i635) #9
  %arrayidx.i636.2 = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 2
  %80 = ptrtoint ptr %arrayidx.i636.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %arrayidx.i636.2, align 4
  %cmp.i.not.i.2 = icmp eq ptr %81, %arrayidx.i636.2
  %spec.select.i.2 = select i1 %cmp.i.not.i.2, ptr null, ptr %81
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i635, i32 noundef %call2.i.2) #9
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %spec.select.i.2, ptr %4, align 4
  %call2.i.3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i635) #9
  %arrayidx.i636.3 = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 3
  %83 = ptrtoint ptr %arrayidx.i636.3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %arrayidx.i636.3, align 4
  %cmp.i.not.i.3 = icmp eq ptr %84, %arrayidx.i636.3
  %spec.select.i.3 = select i1 %cmp.i.not.i.3, ptr null, ptr %84
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i635, i32 noundef %call2.i.3) #9
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %spec.select.i.3, ptr %5, align 4
  br label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.end112.for.body42.preheader_crit_edge, %srcu_read_unlock.exit
  %num_pkts_to_add.0 = phi ptr [ %ac_preserve_ratio, %for.end112.for.body42.preheader_crit_edge ], [ %ac_desired_ratio, %srcu_read_unlock.exit ]
  %sum.0 = phi i32 [ %sum.3, %for.end112.for.body42.preheader_crit_edge ], [ 0, %srcu_read_unlock.exit ]
  %i.0 = phi i32 [ %i.3, %for.end112.for.body42.preheader_crit_edge ], [ 0, %srcu_read_unlock.exit ]
  br label %for.body42

for.body42:                                       ; preds = %for.inc110.for.body42_crit_edge, %for.body42.preheader
  %indvars.iv = phi i32 [ 0, %for.body42.preheader ], [ %indvars.iv.next, %for.inc110.for.body42_crit_edge ]
  %i.1734 = phi i32 [ %i.0, %for.body42.preheader ], [ %i.3, %for.inc110.for.body42_crit_edge ]
  %sum.1730 = phi i32 [ %sum.0, %for.body42.preheader ], [ %sum.3, %for.inc110.for.body42_crit_edge ]
  %ac_exist.0.off0728 = phi i1 [ false, %for.body42.preheader ], [ %ac_exist.1.off0, %for.inc110.for.body42_crit_edge ]
  %arrayidx44 = getelementptr [4 x ptr], ptr %tqe_q, i32 0, i32 %indvars.iv
  %86 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %87, null
  br i1 %tobool45.not, label %for.body42.for.inc110_crit_edge, label %for.cond48.preheader

for.body42.for.inc110_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110

for.cond48.preheader:                             ; preds = %for.body42
  %arrayidx51 = getelementptr i8, ptr %num_pkts_to_add.0, i32 %indvars.iv
  %88 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp53709.not = icmp eq i8 %89, 0
  br i1 %cmp53709.not, label %for.cond48.preheader.for.inc110_crit_edge, label %land.lhs.true55.lr.ph

for.cond48.preheader.for.inc110_crit_edge:        ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110

land.lhs.true55.lr.ph:                            ; preds = %for.cond48.preheader
  %arrayidx.i640 = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 %indvars.iv
  %smax = call i32 @llvm.smax.i32(i32 %i.1734, i32 63)
  %90 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr = load ptr, ptr %arrayidx44, align 4
  %91 = trunc i32 %indvars.iv to i8
  br label %land.rhs57

land.rhs57:                                       ; preds = %if.end97.land.rhs57_crit_edge, %land.lhs.true55.lr.ph
  %92 = phi ptr [ %spec.select.i642, %if.end97.land.rhs57_crit_edge ], [ %.pr, %land.lhs.true55.lr.ph ]
  %i.2712 = phi i32 [ %inc100, %if.end97.land.rhs57_crit_edge ], [ %i.1734, %land.lhs.true55.lr.ph ]
  %k.0711 = phi i8 [ %inc108, %if.end97.land.rhs57_crit_edge ], [ 0, %land.lhs.true55.lr.ph ]
  %sum.2710 = phi i32 [ %add84, %if.end97.land.rhs57_crit_edge ], [ %sum.1730, %land.lhs.true55.lr.ph ]
  %tobool60.not = icmp eq ptr %92, null
  br i1 %tobool60.not, label %land.rhs57.for.inc110_crit_edge, label %for.body62

land.rhs57.for.inc110_crit_edge:                  ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110

for.body62:                                       ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2712, i32 %smax)
  %exitcond = icmp eq i32 %i.2712, %smax
  br i1 %exitcond, label %for.body62.if.end124_crit_edge, label %if.end66

for.body62.if.end124_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.end66:                                         ; preds = %for.body62
  %type = getelementptr inbounds %struct.txq_entry_t, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %switch.selectcmp = icmp eq i32 %94, 0
  %switch.select = select i1 %switch.selectcmp, i32 34, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %switch.selectcmp631 = icmp eq i32 %94, 1
  %switch.select632 = select i1 %switch.selectcmp631, i32 76, i32 %switch.select
  %buffer_size = getelementptr inbounds %struct.txq_entry_t, ptr %92, i32 0, i32 5
  %95 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %buffer_size, align 4
  %add = add i32 %96, 3
  %add83 = add i32 %add, %switch.select632
  %and = and i32 %add83, -4
  %add84 = add i32 %and, %sum.2710
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add84)
  %cmp85 = icmp ugt i32 %add84, 65536
  br i1 %cmp85, label %if.end66.do.end120_crit_edge, label %if.end88

if.end66.do.end120_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end120

if.end88:                                         ; preds = %if.end66
  %div = sdiv i32 %and, 4
  %arrayidx89 = getelementptr [64 x i32], ptr %vmm_table, i32 0, i32 %i.2712
  %97 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %div, ptr %arrayidx89, align 4
  %98 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp93 = icmp eq i32 %99, 1
  br i1 %cmp93, label %if.then95, label %if.end88.if.end97_crit_edge

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then95:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %div, 1024
  %100 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or, ptr %arrayidx89, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end88.if.end97_crit_edge
  %101 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx89, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #9
  %104 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx89, align 4
  %arrayidx99 = getelementptr [64 x i8], ptr %vmm_entries_ac, i32 0, i32 %i.2712
  %105 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %91, ptr %arrayidx99, align 1
  %inc100 = add i32 %i.2712, 1
  %call2.i638 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i635) #9
  %106 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %92, align 4
  %cmp.i.not.i641 = icmp eq ptr %107, %arrayidx.i640
  %spec.select.i642 = select i1 %cmp.i.not.i641, ptr null, ptr %107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i635, i32 noundef %call2.i638) #9
  %108 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %spec.select.i642, ptr %arrayidx44, align 4
  %inc108 = add nuw i8 %k.0711, 1
  %109 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx51, align 1
  %cmp53 = icmp ult i8 %inc108, %110
  br i1 %cmp53, label %if.end97.land.rhs57_crit_edge, label %if.end97.for.inc110_crit_edge

if.end97.for.inc110_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110

if.end97.land.rhs57_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs57

for.inc110:                                       ; preds = %if.end97.for.inc110_crit_edge, %land.rhs57.for.inc110_crit_edge, %for.cond48.preheader.for.inc110_crit_edge, %for.body42.for.inc110_crit_edge
  %ac_exist.1.off0 = phi i1 [ %ac_exist.0.off0728, %for.body42.for.inc110_crit_edge ], [ true, %for.cond48.preheader.for.inc110_crit_edge ], [ true, %land.rhs57.for.inc110_crit_edge ], [ true, %if.end97.for.inc110_crit_edge ]
  %sum.3 = phi i32 [ %sum.1730, %for.body42.for.inc110_crit_edge ], [ %sum.1730, %for.cond48.preheader.for.inc110_crit_edge ], [ %add84, %if.end97.for.inc110_crit_edge ], [ %sum.2710, %land.rhs57.for.inc110_crit_edge ]
  %i.3 = phi i32 [ %i.1734, %for.body42.for.inc110_crit_edge ], [ %i.1734, %for.cond48.preheader.for.inc110_crit_edge ], [ %inc100, %if.end97.for.inc110_crit_edge ], [ %i.2712, %land.rhs57.for.inc110_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %cmp39 = icmp ugt i32 %indvars.iv, 2
  br i1 %cmp39, label %for.end112, label %for.inc110.for.body42_crit_edge

for.inc110.for.body42_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42

for.end112:                                       ; preds = %for.inc110
  br i1 %ac_exist.1.off0, label %for.end112.for.body42.preheader_crit_edge, label %for.end112.do.end120_crit_edge

for.end112.do.end120_crit_edge:                   ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end120

for.end112.for.body42.preheader_crit_edge:        ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42.preheader

do.end120:                                        ; preds = %for.end112.do.end120_crit_edge, %if.end66.do.end120_crit_edge
  %i.3766773 = phi i32 [ %i.2712, %if.end66.do.end120_crit_edge ], [ %i.3, %for.end112.do.end120_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3766773)
  %cmp121 = icmp eq i32 %i.3766773, 0
  br i1 %cmp121, label %do.end120.out_unlock_crit_edge, label %do.end120.if.end124_crit_edge

do.end120.if.end124_crit_edge:                    ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

do.end120.out_unlock_crit_edge:                   ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end124:                                        ; preds = %do.end120.if.end124_crit_edge, %for.body62.if.end124_crit_edge
  %i.3766773789 = phi i32 [ %i.3766773, %do.end120.if.end124_crit_edge ], [ %smax, %for.body62.if.end124_crit_edge ]
  %arrayidx125 = getelementptr [64 x i32], ptr %vmm_table, i32 0, i32 %i.3766773789
  %111 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %arrayidx125, align 4
  %hif_cs.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs.i, i32 noundef 0) #9
  %power_save_mode.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 7
  %112 = ptrtoint ptr %power_save_mode.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %power_save_mode.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i643 = icmp eq i8 %113, 0
  br i1 %tobool.not.i643, label %if.end124.acquire_bus.exit_crit_edge, label %if.then.i644

if.end124.acquire_bus.exit_crit_edge:             ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_bus.exit

if.then.i644:                                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @chip_wakeup(ptr noundef %wilc) #9
  br label %acquire_bus.exit

acquire_bus.exit:                                 ; preds = %if.then.i644, %if.end124.acquire_bus.exit_crit_edge
  %hif_func = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %114 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hif_func, align 4
  %hif_read_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %115, i32 0, i32 2
  br label %do.body126

do.body126:                                       ; preds = %do.cond142.do.body126_crit_edge, %acquire_bus.exit
  %counter.0 = phi i32 [ 0, %acquire_bus.exit ], [ %inc136, %do.cond142.do.body126_crit_edge ]
  %116 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hif_read_reg, align 4
  %call127 = call i32 %117(ptr noundef %wilc, i32 noundef 4204, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %do.body126.out_release_bus_crit_edge

do.body126.out_release_bus_crit_edge:             ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_bus

if.end130:                                        ; preds = %do.body126
  %118 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %reg, align 4
  %and131 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %cmp132 = icmp eq i32 %and131, 0
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %120 = trunc i32 %119 to i8
  %121 = lshr i8 %120, 3
  %fw.i = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 3, i32 2
  %122 = ptrtoint ptr %count.3.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %count.3.i, align 1
  %and20.i = lshr i32 %119, 9
  %123 = trunc i32 %and20.i to i8
  %conv22.i = and i8 %123, 127
  %fw25.i = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 2, i32 2
  %124 = ptrtoint ptr %count.2.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv22.i, ptr %count.2.i, align 1
  %and38.i = lshr i32 %119, 17
  %125 = trunc i32 %and38.i to i8
  %conv40.i = and i8 %125, 127
  %fw43.i = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 1, i32 2
  %126 = ptrtoint ptr %count.1.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv40.i, ptr %count.1.i, align 1
  %shr57.i = lshr i32 %119, 25
  %conv58.i = trunc i32 %shr57.i to i8
  %fw61.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 32, i32 0, i32 2
  %127 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv58.i, ptr %count.i, align 1
  %128 = lshr i8 %120, 1
  %conv76.i = and i8 %128, 1
  %129 = ptrtoint ptr %fw.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv76.i, ptr %fw.i, align 2
  %and91.i = lshr i32 %119, 8
  %130 = trunc i32 %and91.i to i8
  %conv93.i = and i8 %130, 1
  %131 = ptrtoint ptr %fw25.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv93.i, ptr %fw25.i, align 2
  %and109.i = lshr i32 %119, 16
  %132 = trunc i32 %and109.i to i8
  %conv111.i = and i8 %132, 1
  %133 = ptrtoint ptr %fw43.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv111.i, ptr %fw43.i, align 2
  %and127.i = lshr i32 %119, 24
  %134 = trunc i32 %and127.i to i8
  %conv129.i = and i8 %134, 1
  %135 = ptrtoint ptr %fw61.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv129.i, ptr %fw61.i, align 2
  br label %if.end149

if.end135:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %counter.0)
  %exitcond754 = icmp eq i32 %counter.0, 200
  br i1 %exitcond754, label %do.end146, label %do.cond142

do.cond142:                                       ; preds = %if.end135
  %inc136 = add nuw nsw i32 %counter.0, 1
  %136 = ptrtoint ptr %quit to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %quit, align 4
  %tobool144.not = icmp eq i32 %137, 0
  br i1 %tobool144.not, label %do.cond142.do.body126_crit_edge, label %do.cond142.if.end149_crit_edge

do.cond142.if.end149_crit_edge:                   ; preds = %do.cond142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

do.cond142.do.body126_crit_edge:                  ; preds = %do.cond142
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body126

do.end146:                                        ; preds = %if.end135
  %hif_write_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %115, i32 0, i32 3
  %138 = ptrtoint ptr %hif_write_reg to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hif_write_reg, align 4
  %call140 = call i32 %139(ptr noundef %wilc, i32 noundef 4204, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool147.not = icmp eq i32 %call140, 0
  br i1 %tobool147.not, label %do.end146.if.end149_crit_edge, label %do.end146.out_release_bus_crit_edge

do.end146.out_release_bus_crit_edge:              ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_bus

do.end146.if.end149_crit_edge:                    ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.end149:                                        ; preds = %do.end146.if.end149_crit_edge, %do.cond142.if.end149_crit_edge, %if.then134
  %hif_block_tx = getelementptr inbounds %struct.wilc_hif_func, ptr %115, i32 0, i32 5
  %140 = ptrtoint ptr %hif_block_tx to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hif_block_tx, align 4
  %add152 = shl i32 %i.3766773789, 2
  %mul = add i32 %add152, 4
  %call153 = call i32 %141(ptr noundef %wilc, i32 noundef 851968, ptr noundef nonnull %vmm_table, i32 noundef %mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %if.end149.out_release_bus_crit_edge

if.end149.out_release_bus_crit_edge:              ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_bus

if.end156:                                        ; preds = %if.end149
  %hif_write_reg157 = getelementptr inbounds %struct.wilc_hif_func, ptr %115, i32 0, i32 3
  %142 = ptrtoint ptr %hif_write_reg157 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hif_write_reg157, align 4
  %call158 = call i32 %143(ptr noundef %wilc, i32 noundef 4216, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end156.do.body162_crit_edge, label %if.end156.out_release_bus_crit_edge

if.end156.out_release_bus_crit_edge:              ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_bus

if.end156.do.body162_crit_edge:                   ; preds = %if.end156
  br label %do.body162

do.body162:                                       ; preds = %do.cond206.do.body162_crit_edge, %if.end156.do.body162_crit_edge
  %timeout.0 = phi i32 [ %dec, %do.cond206.do.body162_crit_edge ], [ 200, %if.end156.do.body162_crit_edge ]
  %144 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hif_read_reg, align 4
  %call164 = call i32 %145(ptr noundef %wilc, i32 noundef 4216, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %do.end182, label %do.end208.thread673

do.end182:                                        ; preds = %do.body162
  %146 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %reg, align 4
  %148 = and i32 %147, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool185.not = icmp eq i32 %148, 0
  br i1 %tobool185.not, label %do.cond206, label %do.end208

do.cond206:                                       ; preds = %do.end182
  %dec = add nsw i32 %timeout.0, -1
  %tobool207.not = icmp eq i32 %dec, 0
  br i1 %tobool207.not, label %do.cond206.do.end231_crit_edge, label %do.cond206.do.body162_crit_edge

do.cond206.do.body162_crit_edge:                  ; preds = %do.cond206
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body162

do.cond206.do.end231_crit_edge:                   ; preds = %do.cond206
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end231

do.end208:                                        ; preds = %do.end182
  %and203 = lshr i32 %147, 3
  %shr204 = and i32 %and203, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout.0)
  %cmp209 = icmp slt i32 %timeout.0, 1
  br i1 %cmp209, label %do.end208.do.end231_crit_edge, label %if.end217

do.end208.do.end231_crit_edge:                    ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end231

do.end208.thread673:                              ; preds = %do.body162
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout.0)
  %cmp209676 = icmp slt i32 %timeout.0, 1
  br i1 %cmp209676, label %do.end208.thread673.do.end231_crit_edge, label %do.end208.thread673.out_release_bus_crit_edge

do.end208.thread673.out_release_bus_crit_edge:    ; preds = %do.end208.thread673
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_bus

do.end208.thread673.do.end231_crit_edge:          ; preds = %do.end208.thread673
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end231

if.end217:                                        ; preds = %do.end208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr204)
  %cmp218 = icmp eq i32 %shr204, 0
  br i1 %cmp218, label %if.then220, label %if.end217.if.end238_crit_edge

if.end217.if.end238_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then220:                                       ; preds = %if.end217
  %149 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hif_read_reg, align 4
  %call222 = call i32 %150(ptr noundef %wilc, i32 noundef 4204, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %do.end231.thread, label %if.then220.out_release_bus_crit_edge

if.then220.out_release_bus_crit_edge:             ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_bus

do.end231:                                        ; preds = %do.end208.thread673.do.end231_crit_edge, %do.end208.do.end231_crit_edge, %do.cond206.do.end231_crit_edge
  %entries.0672 = phi i32 [ %shr204, %do.end208.do.end231_crit_edge ], [ 0, %do.end208.thread673.do.end231_crit_edge ], [ 0, %do.cond206.do.end231_crit_edge ]
  %151 = ptrtoint ptr %hif_write_reg157 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hif_write_reg157, align 4
  %call213 = call i32 %152(ptr noundef %wilc, i32 noundef 4216, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool232.not = icmp eq i32 %call213, 0
  br i1 %tobool232.not, label %if.end234, label %do.end231.out_release_bus_crit_edge

do.end231.out_release_bus_crit_edge:              ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_bus

do.end231.thread:                                 ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %reg, align 4
  %and226 = and i32 %154, -2
  store i32 %and226, ptr %reg, align 4
  %155 = ptrtoint ptr %hif_write_reg157 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hif_write_reg157, align 4
  %call228 = call i32 %156(ptr noundef %wilc, i32 noundef 4204, i32 noundef %and226) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool232.not776 = icmp eq i32 %call228, 0
  %spec.select = select i1 %tobool232.not776, i32 1, i32 %call228
  br label %out_release_bus

if.end234:                                        ; preds = %do.end231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries.0672)
  %cmp235 = icmp eq i32 %entries.0672, 0
  br i1 %cmp235, label %if.end234.out_release_bus_crit_edge, label %if.end234.if.end238_crit_edge

if.end234.if.end238_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.end234.out_release_bus_crit_edge:              ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_bus

if.end238:                                        ; preds = %if.end234.if.end238_crit_edge, %if.end217.if.end238_crit_edge
  %entries.1686689 = phi i32 [ %entries.0672, %if.end234.if.end238_crit_edge ], [ %shr204, %if.end217.if.end238_crit_edge ]
  call fastcc void @release_bus(ptr noundef %wilc, i32 noundef 1)
  %txq_entries.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 33
  br label %do.body239

do.body239:                                       ; preds = %cleanup.do.body239_crit_edge, %if.end238
  %offset.0 = phi i32 [ 0, %if.end238 ], [ %add409, %cleanup.do.body239_crit_edge ]
  %entries.2 = phi i32 [ %entries.1686689, %if.end238 ], [ %dec431, %cleanup.do.body239_crit_edge ]
  %i.4 = phi i32 [ 0, %if.end238 ], [ %inc410, %cleanup.do.body239_crit_edge ]
  %arrayidx240 = getelementptr [64 x i8], ptr %vmm_entries_ac, i32 0, i32 %i.4
  %157 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx240, align 1
  %call2.i648 = call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i635) #9
  %idxprom.i649 = zext i8 %158 to i32
  %arrayidx.i650 = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 %idxprom.i649
  %159 = ptrtoint ptr %arrayidx.i650 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile ptr, ptr %arrayidx.i650, align 4
  %cmp.i.not.i651 = icmp eq ptr %160, %arrayidx.i650
  br i1 %cmp.i.not.i651, label %do.body239.wilc_wlan_txq_remove_from_head.exit_crit_edge, label %if.then.i652

do.body239.wilc_wlan_txq_remove_from_head.exit_crit_edge: ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_remove_from_head.exit

if.then.i652:                                     ; preds = %do.body239
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %160) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i652.list_del.exit.i_crit_edge

if.then.i652.list_del.exit.i_crit_edge:           ; preds = %if.then.i652
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i652
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i653 = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %prev.i.i.i653 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %prev.i.i.i653, align 4
  %163 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %160, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %162, ptr %prev1.i.i.i.i, align 4
  %166 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %164, ptr %162, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i652.list_del.exit.i_crit_edge
  %167 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr inttoptr (i32 256 to ptr), ptr %160, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  %168 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %169 = ptrtoint ptr %txq_entries.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %txq_entries.i, align 4
  %sub.i654 = add i32 %170, -1
  store i32 %sub.i654, ptr %txq_entries.i, align 4
  %count.i655 = getelementptr %struct.wilc, ptr %wilc, i32 0, i32 32, i32 %idxprom.i649, i32 1
  %171 = ptrtoint ptr %count.i655 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %count.i655, align 4
  %dec.i656 = add i16 %172, -1
  store i16 %dec.i656, ptr %count.i655, align 4
  br label %wilc_wlan_txq_remove_from_head.exit

wilc_wlan_txq_remove_from_head.exit:              ; preds = %list_del.exit.i, %do.body239.wilc_wlan_txq_remove_from_head.exit_crit_edge
  %tqe.0.i = phi ptr [ null, %do.body239.wilc_wlan_txq_remove_from_head.exit_crit_edge ], [ %160, %list_del.exit.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i635, i32 noundef %call2.i648) #9
  %arrayidx244 = getelementptr [4 x i8], ptr %ac_pkt_num_to_chip, i32 0, i32 %idxprom.i649
  %173 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx244, align 1
  %inc245 = add i8 %174, 1
  store i8 %inc245, ptr %arrayidx244, align 1
  %tobool246.not = icmp eq ptr %tqe.0.i, null
  br i1 %tobool246.not, label %wilc_wlan_txq_remove_from_head.exit.for.cond434.preheader_crit_edge, label %if.end248

wilc_wlan_txq_remove_from_head.exit.for.cond434.preheader_crit_edge: ; preds = %wilc_wlan_txq_remove_from_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond434.preheader

if.end248:                                        ; preds = %wilc_wlan_txq_remove_from_head.exit
  %vif249 = getelementptr inbounds %struct.txq_entry_t, ptr %tqe.0.i, i32 0, i32 8
  %175 = ptrtoint ptr %vif249 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %vif249, align 4
  %arrayidx250 = getelementptr [64 x i32], ptr %vmm_table, i32 0, i32 %i.4
  %177 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp251 = icmp eq i32 %178, 0
  br i1 %cmp251, label %if.end248.for.cond434.preheader_crit_edge, label %if.end254

if.end248.for.cond434.preheader_crit_edge:        ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond434.preheader

if.end254:                                        ; preds = %if.end248
  %179 = call i32 @llvm.bswap.i32(i32 %178) #9
  %180 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx250, align 4
  %and273 = shl i32 %179, 2
  %mul275 = and i32 %and273, 4092
  %type276 = getelementptr inbounds %struct.txq_entry_t, ptr %tqe.0.i, i32 0, i32 1
  %181 = ptrtoint ptr %type276 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %type276, align 4
  %buffer_size339 = getelementptr inbounds %struct.txq_entry_t, ptr %tqe.0.i, i32 0, i32 5
  %183 = ptrtoint ptr %buffer_size339 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %buffer_size339, align 4
  %shl = shl i32 %182, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %182)
  %cmp277 = icmp eq i32 %182, 2
  %shl329 = select i1 %cmp277, i32 1073741824, i32 0
  %or331 = or i32 %shl329, %shl
  %shl357 = shl i32 %184, 15
  %and358 = and i32 %shl357, 1073709056
  %or359 = or i32 %and358, %or331
  %or384 = or i32 %or359, %mul275
  %185 = call i32 @llvm.bswap.i32(i32 %or384) #9
  %arrayidx385 = getelementptr i8, ptr %10, i32 %offset.0
  %186 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_storeN_noabort(i32 %186, i32 4)
  store i32 %185, ptr %arrayidx385, align 1
  %187 = ptrtoint ptr %type276 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %type276, align 4
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %188, label %if.else403 [
    i32 1, label %if.end254.if.end405_crit_edge
    i32 0, label %if.then394
  ]

if.end254.if.end405_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end405

if.then394:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  %q_num = getelementptr inbounds %struct.txq_entry_t, ptr %tqe.0.i, i32 0, i32 2
  %190 = ptrtoint ptr %q_num to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %q_num, align 4
  %conv395 = zext i8 %191 to i32
  %192 = ptrtoint ptr %vif249 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %vif249, align 4
  %bssid397 = getelementptr inbounds %struct.wilc_vif, ptr %193, i32 0, i32 7
  %add399 = add i32 %offset.0, 4
  %arrayidx400 = getelementptr i8, ptr %10, i32 %add399
  %194 = ptrtoint ptr %arrayidx400 to i32
  call void @__asan_storeN_noabort(i32 %194, i32 4)
  store i32 %conv395, ptr %arrayidx400, align 1
  %add401 = add i32 %offset.0, 8
  %arrayidx402 = getelementptr i8, ptr %10, i32 %add401
  %195 = call ptr @memcpy(ptr %arrayidx402, ptr %bssid397, i32 6)
  br label %if.end405

if.else403:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end405

if.end405:                                        ; preds = %if.else403, %if.then394, %if.end254.if.end405_crit_edge
  %buffer_offset.0 = phi i32 [ 34, %if.then394 ], [ 4, %if.else403 ], [ 76, %if.end254.if.end405_crit_edge ]
  %add406 = add i32 %buffer_offset.0, %offset.0
  %arrayidx407 = getelementptr i8, ptr %10, i32 %add406
  %buffer = getelementptr inbounds %struct.txq_entry_t, ptr %tqe.0.i, i32 0, i32 4
  %196 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %buffer, align 4
  %198 = ptrtoint ptr %buffer_size339 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %buffer_size339, align 4
  %200 = call ptr @memcpy(ptr %arrayidx407, ptr %197, i32 %199)
  %add409 = add i32 %mul275, %offset.0
  %inc410 = add i32 %i.4, 1
  %status = getelementptr inbounds %struct.txq_entry_t, ptr %tqe.0.i, i32 0, i32 7
  %201 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 1, ptr %status, align 4
  %tx_complete_func = getelementptr inbounds %struct.txq_entry_t, ptr %tqe.0.i, i32 0, i32 9
  %202 = ptrtoint ptr %tx_complete_func to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %tx_complete_func, align 4
  %tobool411.not = icmp eq ptr %203, null
  br i1 %tobool411.not, label %if.end405.if.end415_crit_edge, label %if.then412

if.end405.if.end415_crit_edge:                    ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end415

if.then412:                                       ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.txq_entry_t, ptr %tqe.0.i, i32 0, i32 6
  %204 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %priv, align 4
  call void %203(ptr noundef %205, i32 noundef 1) #9
  br label %if.end415

if.end415:                                        ; preds = %if.then412, %if.end405.if.end415_crit_edge
  %ack_idx = getelementptr inbounds %struct.txq_entry_t, ptr %tqe.0.i, i32 0, i32 3
  %206 = ptrtoint ptr %ack_idx to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %ack_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %207)
  %cmp416.not = icmp ne i32 %207, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %207)
  %cmp420 = icmp slt i32 %207, 256
  %or.cond629 = and i1 %cmp416.not, %cmp420
  br i1 %or.cond629, label %if.then422, label %if.end415.cleanup_crit_edge

if.end415.cleanup_crit_edge:                      ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then422:                                       ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #11
  %txqe = getelementptr %struct.wilc_vif, ptr %176, i32 0, i32 14, i32 1, i32 %207, i32 2
  %208 = ptrtoint ptr %txqe to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %txqe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then422, %if.end415.cleanup_crit_edge
  call void @kfree(ptr noundef nonnull %tqe.0.i) #9
  %dec431 = add i32 %entries.2, -1
  %tobool432.not = icmp eq i32 %dec431, 0
  br i1 %tobool432.not, label %cleanup.for.cond434.preheader_crit_edge, label %cleanup.do.body239_crit_edge

cleanup.do.body239_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body239

cleanup.for.cond434.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond434.preheader

for.cond434.preheader:                            ; preds = %cleanup.for.cond434.preheader_crit_edge, %if.end248.for.cond434.preheader_crit_edge, %wilc_wlan_txq_remove_from_head.exit.for.cond434.preheader_crit_edge
  %offset.1786 = phi i32 [ %add409, %cleanup.for.cond434.preheader_crit_edge ], [ %offset.0, %if.end248.for.cond434.preheader_crit_edge ], [ %offset.0, %wilc_wlan_txq_remove_from_head.exit.for.cond434.preheader_crit_edge ]
  %209 = ptrtoint ptr %ac_pkt_num_to_chip to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %ac_pkt_num_to_chip, align 4
  %211 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %count.i, align 1
  %add442 = add i8 %212, %210
  store i8 %add442, ptr %count.i, align 1
  %arrayidx438.1 = getelementptr inbounds [4 x i8], ptr %ac_pkt_num_to_chip, i32 0, i32 1
  %213 = ptrtoint ptr %arrayidx438.1 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx438.1, align 1
  %215 = ptrtoint ptr %count.1.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %count.1.i, align 1
  %add442.1 = add i8 %216, %214
  store i8 %add442.1, ptr %count.1.i, align 1
  %arrayidx438.2 = getelementptr inbounds [4 x i8], ptr %ac_pkt_num_to_chip, i32 0, i32 2
  %217 = ptrtoint ptr %arrayidx438.2 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx438.2, align 2
  %219 = ptrtoint ptr %count.2.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %count.2.i, align 1
  %add442.2 = add i8 %220, %218
  store i8 %add442.2, ptr %count.2.i, align 1
  %arrayidx438.3 = getelementptr inbounds [4 x i8], ptr %ac_pkt_num_to_chip, i32 0, i32 3
  %221 = ptrtoint ptr %arrayidx438.3 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx438.3, align 1
  %223 = ptrtoint ptr %count.3.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %count.3.i, align 1
  %add442.3 = add i8 %224, %222
  store i8 %add442.3, ptr %count.3.i, align 1
  call fastcc void @acquire_bus(ptr noundef %wilc, i32 noundef 1)
  %hif_clear_int_ext = getelementptr inbounds %struct.wilc_hif_func, ptr %115, i32 0, i32 7
  %225 = ptrtoint ptr %hif_clear_int_ext to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hif_clear_int_ext, align 4
  %call447 = call i32 %226(ptr noundef %wilc, i32 noundef 320) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447)
  %tobool448.not = icmp eq i32 %call447, 0
  br i1 %tobool448.not, label %if.end450, label %for.cond434.preheader.out_release_bus_crit_edge

for.cond434.preheader.out_release_bus_crit_edge:  ; preds = %for.cond434.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_bus

if.end450:                                        ; preds = %for.cond434.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %hif_block_tx_ext = getelementptr inbounds %struct.wilc_hif_func, ptr %115, i32 0, i32 9
  %227 = ptrtoint ptr %hif_block_tx_ext to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hif_block_tx_ext, align 4
  %call451 = call i32 %228(ptr noundef %wilc, i32 noundef 0, ptr noundef %10, i32 noundef %offset.1786) #9
  br label %out_release_bus

out_release_bus:                                  ; preds = %if.end450, %for.cond434.preheader.out_release_bus_crit_edge, %if.end234.out_release_bus_crit_edge, %do.end231.thread, %do.end231.out_release_bus_crit_edge, %if.then220.out_release_bus_crit_edge, %do.end208.thread673.out_release_bus_crit_edge, %if.end156.out_release_bus_crit_edge, %if.end149.out_release_bus_crit_edge, %do.end146.out_release_bus_crit_edge, %do.body126.out_release_bus_crit_edge
  %ret.2 = phi i32 [ %call140, %do.end146.out_release_bus_crit_edge ], [ %call213, %do.end231.out_release_bus_crit_edge ], [ %call447, %for.cond434.preheader.out_release_bus_crit_edge ], [ %call451, %if.end450 ], [ 1, %if.end234.out_release_bus_crit_edge ], [ %call222, %if.then220.out_release_bus_crit_edge ], [ %call158, %if.end156.out_release_bus_crit_edge ], [ %call153, %if.end149.out_release_bus_crit_edge ], [ %call164, %do.end208.thread673.out_release_bus_crit_edge ], [ %spec.select, %do.end231.thread ], [ %call127, %do.body126.out_release_bus_crit_edge ]
  %229 = ptrtoint ptr %power_save_mode.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %power_save_mode.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool.not.i659 = icmp eq i8 %230, 0
  br i1 %tobool.not.i659, label %out_release_bus.release_bus.exit_crit_edge, label %if.then.i660

out_release_bus.release_bus.exit_crit_edge:       ; preds = %out_release_bus
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_bus.exit

if.then.i660:                                     ; preds = %out_release_bus
  call void @__sanitizer_cov_trace_pc() #11
  call void @chip_allow_sleep(ptr noundef %wilc) #9
  br label %release_bus.exit

release_bus.exit:                                 ; preds = %if.then.i660, %out_release_bus.release_bus.exit_crit_edge
  call void @mutex_unlock(ptr noundef %hif_cs.i) #9
  br label %out_unlock

out_unlock:                                       ; preds = %release_bus.exit, %do.end120.out_unlock_crit_edge
  %ret.3 = phi i32 [ 0, %do.end120.out_unlock_crit_edge ], [ %ret.2, %release_bus.exit ]
  call void @mutex_unlock(ptr noundef %txq_add_to_head_cs) #9
  br label %cleanup453

cleanup453:                                       ; preds = %out_unlock, %entry.cleanup453_crit_edge
  %ret.4 = phi i32 [ 0, %entry.cleanup453_crit_edge ], [ %ret.3, %out_unlock ]
  %txq_entries = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 33
  %231 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %txq_entries, align 4
  %233 = ptrtoint ptr %txq_count to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %txq_count, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac_pkt_num_to_chip) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %vmm_table) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tqe_q) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vmm_entries_ac) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac_preserve_ratio) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac_desired_ratio) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %ret.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_handle_isr(ptr noundef %wilc) #1 align 64 {
entry:
  %rsp.i.i.i = alloca %struct.wilc_cfg_rsp, align 1
  %size.i = alloca i32, align 4
  %int_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_status) #9
  %0 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %int_status, align 4, !annotation !84
  %hif_cs.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs.i, i32 noundef 0) #9
  %power_save_mode.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 7
  %1 = ptrtoint ptr %power_save_mode.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %power_save_mode.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.acquire_bus.exit_crit_edge, label %if.then.i

entry.acquire_bus.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_bus.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @chip_wakeup(ptr noundef %wilc) #9
  br label %acquire_bus.exit

acquire_bus.exit:                                 ; preds = %if.then.i, %entry.acquire_bus.exit_crit_edge
  %hif_func = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %3 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hif_func, align 4
  %hif_read_int = getelementptr inbounds %struct.wilc_hif_func, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %hif_read_int to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hif_read_int, align 4
  %call = call i32 %6(ptr noundef %wilc, ptr noundef nonnull %int_status) #9
  %7 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_status, align 4
  %and = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %acquire_bus.exit.if.end_crit_edge, label %if.then

acquire_bus.exit.if.end_crit_edge:                ; preds = %acquire_bus.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %acquire_bus.exit
  %rx_buffer_offset.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 30
  %9 = ptrtoint ptr %rx_buffer_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_buffer_offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #9
  %and.i = shl i32 %8, 2
  %shl.i = and i32 %and.i, 131068
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl.i, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool.not76.i = icmp eq i32 %shl.i, 0
  br i1 %tobool.not76.i, label %if.then.while.body.i_crit_edge, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %retries.077.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.then.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hif_func, align 4
  %hif_read_size.i = getelementptr inbounds %struct.wilc_hif_func, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %hif_read_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hif_read_size.i, align 4
  %call.i = call i32 %15(ptr noundef %wilc, ptr noundef nonnull %size.i) #9
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %and29.i = shl i32 %17, 2
  %shl31.i = and i32 %and29.i, 131068
  store i32 %shl31.i, ptr %size.i, align 4
  %inc.i = add nuw nsw i32 %retries.077.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl31.i)
  %tobool.not.i10 = icmp eq i32 %shl31.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %retries.077.i)
  %cmp.i = icmp ult i32 %retries.077.i, 9
  %or.cond.i = select i1 %tobool.not.i10, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  br i1 %tobool.not.i10, label %while.end.i.wilc_wlan_handle_isr_ext.exit_crit_edge, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.end.i.wilc_wlan_handle_isr_ext.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_handle_isr_ext.exit

if.end.i:                                         ; preds = %while.end.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %.lcssa82.i = phi i32 [ %shl31.i, %while.end.i.if.end.i_crit_edge ], [ %shl.i, %if.then.if.end.i_crit_edge ]
  %sub.i = sub i32 98304, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %.lcssa82.i)
  %cmp33.i = icmp ult i32 %sub.i, %.lcssa82.i
  %spec.store.select.i = select i1 %cmp33.i, i32 0, i32 %10
  %rx_buffer.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 29
  %18 = ptrtoint ptr %rx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_buffer.i, align 4
  %arrayidx.i = getelementptr i8, ptr %19, i32 %spec.store.select.i
  %20 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hif_func, align 4
  %hif_clear_int_ext.i = getelementptr inbounds %struct.wilc_hif_func, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %hif_clear_int_ext.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hif_clear_int_ext.i, align 4
  %call37.i = call i32 %23(ptr noundef %wilc, i32 noundef 385) #9
  %24 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hif_func, align 4
  %hif_block_rx_ext.i = getelementptr inbounds %struct.wilc_hif_func, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %hif_block_rx_ext.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hif_block_rx_ext.i, align 4
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  %call39.i = call i32 %27(ptr noundef %wilc, i32 noundef 0, ptr noundef %arrayidx.i, i32 noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end.i.wilc_wlan_handle_isr_ext.exit_crit_edge

if.end.i.wilc_wlan_handle_isr_ext.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_handle_isr_ext.exit

if.end42.i:                                       ; preds = %if.end.i
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 4
  %add.i = add i32 %31, %spec.store.select.i
  %32 = ptrtoint ptr %rx_buffer_offset.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i, ptr %rx_buffer_offset.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 16) #12
  %tobool45.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not.i, label %if.end42.i.wilc_wlan_handle_isr_ext.exit_crit_edge, label %if.end47.i

if.end42.i.wilc_wlan_handle_isr_ext.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_handle_isr_ext.exit

if.end47.i:                                       ; preds = %if.end42.i
  %buffer48.i = getelementptr inbounds %struct.rxq_entry_t, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %buffer48.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx.i, ptr %buffer48.i, align 8
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.rxq_entry_t, ptr %call7.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %buffer_size.i, align 4
  %quit.i.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 24
  %38 = ptrtoint ptr %quit.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %quit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end47.i.if.then5.i.i_crit_edge

if.end47.i.if.then5.i.i_crit_edge:                ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

if.end.i.i:                                       ; preds = %if.end47.i
  %rxq_cs.i.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %rxq_cs.i.i, i32 noundef 0) #9
  %rxq_head.i.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 35
  %prev.i.i.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 35, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %41, ptr noundef %rxq_head.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.wilc_wlan_rxq_add.exit.i_crit_edge

if.end.i.i.wilc_wlan_rxq_add.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_rxq_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %rxq_head.i.i, ptr %call7.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call7.i.i, ptr %41, align 4
  br label %wilc_wlan_rxq_add.exit.i

wilc_wlan_rxq_add.exit.i:                         ; preds = %if.end.i.i.i.i, %if.end.i.i.wilc_wlan_rxq_add.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %rxq_cs.i.i) #9
  %46 = ptrtoint ptr %quit.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i = load i32, ptr %quit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not22.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not22.i.i, label %while.body.lr.ph.i.i, label %wilc_wlan_rxq_add.exit.i.if.then5.i.i_crit_edge

wilc_wlan_rxq_add.exit.i.if.then5.i.i_crit_edge:  ; preds = %wilc_wlan_rxq_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

while.body.lr.ph.i.i:                             ; preds = %wilc_wlan_rxq_add.exit.i
  %47 = getelementptr inbounds %struct.wilc_cfg_rsp, ptr %rsp.i.i.i, i32 0, i32 1
  %cfg_seq_no.i.i.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 28
  %cfg_event.i.i.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 19
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %wilc_wlan_handle_rx_buff.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  call void @mutex_lock_nested(ptr noundef %rxq_cs.i.i, i32 noundef 0) #9
  %48 = ptrtoint ptr %rxq_head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %rxq_head.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %49, %rxq_head.i.i
  br i1 %cmp.i.not.i.i.i, label %wilc_wlan_rxq_remove.exit.thread.i.i, label %if.then.i.i.i

wilc_wlan_rxq_remove.exit.thread.i.i:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %rxq_cs.i.i) #9
  br label %while.end.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %49) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.wilc_wlan_rxq_remove.exit.i.i_crit_edge

if.then.i.i.i.wilc_wlan_rxq_remove.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_rxq_remove.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %wilc_wlan_rxq_remove.exit.i.i

wilc_wlan_rxq_remove.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.wilc_wlan_rxq_remove.exit.i.i_crit_edge
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %rxq_cs.i.i) #9
  %tobool1.not.i.i = icmp eq ptr %49, null
  br i1 %tobool1.not.i.i, label %wilc_wlan_rxq_remove.exit.i.i.while.end.i.i_crit_edge, label %if.end.i73.i

wilc_wlan_rxq_remove.exit.i.i.while.end.i.i_crit_edge: ; preds = %wilc_wlan_rxq_remove.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

if.end.i73.i:                                     ; preds = %wilc_wlan_rxq_remove.exit.i.i
  %buffer2.i.i = getelementptr inbounds %struct.rxq_entry_t, ptr %49, i32 0, i32 1
  %58 = ptrtoint ptr %buffer2.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer2.i.i, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.rxq_entry_t, ptr %49, i32 0, i32 2
  %60 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buffer_size.i.i, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end94.i.i.i.do.body.i.i.i_crit_edge, %if.end.i73.i
  %offset.0.i.i.i = phi i32 [ 0, %if.end.i73.i ], [ %add.i.i.i, %if.end94.i.i.i.do.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 %offset.0.i.i.i
  %62 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %add.ptr.i.i.i, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %63) #9
  %and30.i.i.i = lshr i32 %64, 22
  %shr31.i.i.i = and i32 %and30.i.i.i, 511
  %and48.i.i.i = lshr i32 %64, 11
  %shr49.i.i.i = and i32 %and48.i.i.i, 2047
  %and66.i.i.i = and i32 %64, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and66.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr49.i.i.i)
  %cmp68.i.i.i = icmp eq i32 %shr49.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 true, i1 %cmp68.i.i.i
  br i1 %or.cond.i.i.i, label %do.body.i.i.i.wilc_wlan_handle_rx_buff.exit.i.i_crit_edge, label %if.end.i.i.i

do.body.i.i.i.wilc_wlan_handle_rx_buff.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_handle_rx_buff.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %65 = and i32 %64, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then70.i.i.i

if.then70.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr71.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  call void @wilc_wfi_mgmt_rx(ptr noundef %wilc, ptr noundef %add.ptr71.i.i.i, i32 noundef %and66.i.i.i) #9
  br label %if.end94.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %tobool72.not.i.i.i = icmp sgt i32 %64, -1
  br i1 %tobool72.not.i.i.i, label %if.then73.i.i.i, label %if.else74.i.i.i

if.then73.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @wilc_frmw_to_host(ptr noundef %wilc, ptr noundef %add.ptr.i.i.i, i32 noundef %and66.i.i.i, i32 noundef %shr31.i.i.i) #9
  br label %if.end94.i.i.i

if.else74.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rsp.i.i.i) #9
  %66 = ptrtoint ptr %rsp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %rsp.i.i.i, align 1, !annotation !84
  %67 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %47, align 1, !annotation !84
  %add.ptr75.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %shr31.i.i.i
  call void @wilc_wlan_cfg_indicate_rx(ptr noundef %wilc, ptr noundef %add.ptr75.i.i.i, i32 noundef %and66.i.i.i, ptr noundef nonnull %rsp.i.i.i) #9
  %68 = ptrtoint ptr %rsp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rsp.i.i.i, align 1
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %69, label %if.else74.i.i.i.if.end92.i.i.i_crit_edge [
    i8 1, label %if.then78.i.i.i
    i8 2, label %if.then90.i.i.i
  ]

if.else74.i.i.i.if.end92.i.i.i_crit_edge:         ; preds = %if.else74.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i.i.i

if.then78.i.i.i:                                  ; preds = %if.else74.i.i.i
  %71 = ptrtoint ptr %cfg_seq_no.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cfg_seq_no.i.i.i, align 4
  %73 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %47, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %74)
  %cmp81.i.i.i = icmp eq i8 %72, %74
  br i1 %cmp81.i.i.i, label %if.then83.i.i.i, label %if.then78.i.i.i.if.end92.i.i.i_crit_edge

if.then78.i.i.i.if.end92.i.i.i_crit_edge:         ; preds = %if.then78.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i.i.i

if.then83.i.i.i:                                  ; preds = %if.then78.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @complete(ptr noundef %cfg_event.i.i.i) #9
  br label %if.end92.i.i.i

if.then90.i.i.i:                                  ; preds = %if.else74.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @wilc_mac_indicate(ptr noundef %wilc) #9
  br label %if.end92.i.i.i

if.end92.i.i.i:                                   ; preds = %if.then90.i.i.i, %if.then83.i.i.i, %if.then78.i.i.i.if.end92.i.i.i_crit_edge, %if.else74.i.i.i.if.end92.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rsp.i.i.i) #9
  br label %if.end94.i.i.i

if.end94.i.i.i:                                   ; preds = %if.end92.i.i.i, %if.then73.i.i.i, %if.then70.i.i.i
  %add.i.i.i = add i32 %shr49.i.i.i, %offset.0.i.i.i
  %cmp96.i.i.i = icmp slt i32 %add.i.i.i, %61
  br i1 %cmp96.i.i.i, label %if.end94.i.i.i.do.body.i.i.i_crit_edge, label %if.end94.i.i.i.wilc_wlan_handle_rx_buff.exit.i.i_crit_edge

if.end94.i.i.i.wilc_wlan_handle_rx_buff.exit.i.i_crit_edge: ; preds = %if.end94.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_handle_rx_buff.exit.i.i

if.end94.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %if.end94.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

wilc_wlan_handle_rx_buff.exit.i.i:                ; preds = %if.end94.i.i.i.wilc_wlan_handle_rx_buff.exit.i.i_crit_edge, %do.body.i.i.i.wilc_wlan_handle_rx_buff.exit.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %49) #9
  %75 = ptrtoint ptr %quit.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %quit.i.i, align 4
  %tobool.not.i74.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i74.i, label %wilc_wlan_handle_rx_buff.exit.i.i.while.body.i.i_crit_edge, label %wilc_wlan_handle_rx_buff.exit.i.i.if.then5.i.i_crit_edge

wilc_wlan_handle_rx_buff.exit.i.i.if.then5.i.i_crit_edge: ; preds = %wilc_wlan_handle_rx_buff.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

wilc_wlan_handle_rx_buff.exit.i.i.while.body.i.i_crit_edge: ; preds = %wilc_wlan_handle_rx_buff.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %wilc_wlan_rxq_remove.exit.i.i.while.end.i.i_crit_edge, %wilc_wlan_rxq_remove.exit.thread.i.i
  %77 = ptrtoint ptr %quit.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr.i.i = load i32, ptr %quit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool4.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool4.not.i.i, label %while.end.i.i.wilc_wlan_handle_isr_ext.exit_crit_edge, label %while.end.i.i.if.then5.i.i_crit_edge

while.end.i.i.if.then5.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

while.end.i.i.wilc_wlan_handle_isr_ext.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_handle_isr_ext.exit

if.then5.i.i:                                     ; preds = %while.end.i.i.if.then5.i.i_crit_edge, %wilc_wlan_handle_rx_buff.exit.i.i.if.then5.i.i_crit_edge, %wilc_wlan_rxq_add.exit.i.if.then5.i.i_crit_edge, %if.end47.i.if.then5.i.i_crit_edge
  %cfg_event.i.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 19
  call void @complete(ptr noundef %cfg_event.i.i) #9
  br label %wilc_wlan_handle_isr_ext.exit

wilc_wlan_handle_isr_ext.exit:                    ; preds = %if.then5.i.i, %while.end.i.i.wilc_wlan_handle_isr_ext.exit_crit_edge, %if.end42.i.wilc_wlan_handle_isr_ext.exit_crit_edge, %if.end.i.wilc_wlan_handle_isr_ext.exit_crit_edge, %while.end.i.wilc_wlan_handle_isr_ext.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #9
  br label %if.end

if.end:                                           ; preds = %wilc_wlan_handle_isr_ext.exit, %acquire_bus.exit.if.end_crit_edge
  %78 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %int_status, align 4
  %and1 = and i32 %79, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hif_func, align 4
  %hif_clear_int_ext.i12 = getelementptr inbounds %struct.wilc_hif_func, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %hif_clear_int_ext.i12 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hif_clear_int_ext.i12, align 4
  %call.i13 = call i32 %83(ptr noundef %wilc, i32 noundef 0) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %84 = ptrtoint ptr %power_save_mode.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %power_save_mode.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i15 = icmp eq i8 %85, 0
  br i1 %tobool.not.i15, label %if.end4.release_bus.exit_crit_edge, label %if.then.i16

if.end4.release_bus.exit_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_bus.exit

if.then.i16:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  call void @chip_allow_sleep(ptr noundef %wilc) #9
  br label %release_bus.exit

release_bus.exit:                                 ; preds = %if.then.i16, %if.end4.release_bus.exit_crit_edge
  call void @mutex_unlock(ptr noundef %hif_cs.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_status) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_firmware_download(ptr noundef %wilc, ptr nocapture noundef readonly %buffer, i32 noundef %buffer_size) local_unnamed_addr #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4096) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_firmware_download.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_firmware_download, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !86

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wilc_wlan_firmware_download.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %buffer_size) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %hif_cs.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs.i, i32 noundef 0) #9
  %power_save_mode.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 7
  %2 = ptrtoint ptr %power_save_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_save_mode.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.end.acquire_bus.exit_crit_edge, label %if.then.i

do.end.acquire_bus.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_bus.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @chip_wakeup(ptr noundef %wilc) #9
  br label %acquire_bus.exit

acquire_bus.exit:                                 ; preds = %if.then.i, %do.end.acquire_bus.exit_crit_edge
  %hif_func = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %4 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_func, align 4
  %hif_read_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hif_read_reg, align 4
  %call7 = call i32 %7(ptr noundef %wilc, i32 noundef 5120, ptr noundef nonnull %reg) #9
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %and = and i32 %9, -1025
  store i32 %and, ptr %reg, align 4
  %10 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hif_func, align 4
  %hif_write_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %hif_write_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hif_write_reg, align 4
  %call9 = call i32 %13(ptr noundef %wilc, i32 noundef 5120, i32 noundef %and) #9
  %14 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hif_func, align 4
  %hif_read_reg11 = getelementptr inbounds %struct.wilc_hif_func, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %hif_read_reg11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hif_read_reg11, align 4
  %call12 = call i32 %17(ptr noundef %wilc, i32 noundef 5120, ptr noundef nonnull %reg) #9
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %and13 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %acquire_bus.exit.if.end21_crit_edge, label %do.end18

acquire_bus.exit.if.end21_crit_edge:              ; preds = %acquire_bus.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end18:                                         ; preds = %acquire_bus.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %acquire_bus.exit.if.end21_crit_edge
  call void @mutex_unlock(ptr noundef %hif_cs.i) #9
  br label %do.body22

do.body22:                                        ; preds = %do.cond63.do.body22_crit_edge, %if.end21
  %ret.0 = phi i32 [ %call9, %if.end21 ], [ 0, %do.cond63.do.body22_crit_edge ]
  %offset.0 = phi i32 [ 0, %if.end21 ], [ %offset.1.lcssa, %do.cond63.do.body22_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buffer, i32 %offset.0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  %add = add i32 %offset.0, 4
  %arrayidx24 = getelementptr i8, ptr %buffer, i32 %add
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx24, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24) #9
  call void @mutex_lock_nested(ptr noundef %hif_cs.i, i32 noundef 0) #9
  %26 = ptrtoint ptr %power_save_mode.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %power_save_mode.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i116 = icmp eq i8 %27, 0
  br i1 %tobool.not.i116, label %do.body22.acquire_bus.exit118_crit_edge, label %if.then.i117

do.body22.acquire_bus.exit118_crit_edge:          ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_bus.exit118

if.then.i117:                                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  call void @chip_wakeup(ptr noundef %wilc) #9
  br label %acquire_bus.exit118

acquire_bus.exit118:                              ; preds = %if.then.i117, %do.body22.acquire_bus.exit118_crit_edge
  %add26 = add i32 %offset.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool27.not127 = icmp ne i32 %24, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %buffer_size)
  %cmp128 = icmp ult i32 %add26, %buffer_size
  %or.cond129 = select i1 %tobool27.not127, i1 %cmp128, i1 false
  br i1 %or.cond129, label %acquire_bus.exit118.while.body_crit_edge, label %acquire_bus.exit118.while.end_crit_edge

acquire_bus.exit118.while.end_crit_edge:          ; preds = %acquire_bus.exit118
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

acquire_bus.exit118.while.body_crit_edge:         ; preds = %acquire_bus.exit118
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %acquire_bus.exit118.while.body_crit_edge
  %offset.1132 = phi i32 [ %add38, %if.end36.while.body_crit_edge ], [ %add26, %acquire_bus.exit118.while.body_crit_edge ]
  %addr.0131 = phi i32 [ %add37, %if.end36.while.body_crit_edge ], [ %22, %acquire_bus.exit118.while.body_crit_edge ]
  %size.0130 = phi i32 [ %sub, %if.end36.while.body_crit_edge ], [ %25, %acquire_bus.exit118.while.body_crit_edge ]
  %28 = call i32 @llvm.umin.i32(i32 %size.0130, i32 4096)
  %arrayidx31 = getelementptr i8, ptr %buffer, i32 %offset.1132
  %29 = call ptr @memcpy(ptr %call7.i, ptr %arrayidx31, i32 %28)
  %30 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hif_func, align 4
  %hif_block_tx = getelementptr inbounds %struct.wilc_hif_func, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %hif_block_tx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hif_block_tx, align 4
  %call33 = call i32 %33(ptr noundef %wilc, i32 noundef %addr.0131, ptr noundef nonnull %call7.i, i32 noundef %28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end36:                                         ; preds = %while.body
  %add37 = add i32 %addr.0131, %28
  %add38 = add i32 %offset.1132, %28
  %sub = sub i32 %size.0130, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool27.not = icmp ne i32 %sub, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %buffer_size)
  %cmp = icmp ult i32 %add38, %buffer_size
  %or.cond = select i1 %tobool27.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end36.while.body_crit_edge, label %if.end36.while.end_crit_edge

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end36.while.end_crit_edge, %while.body.while.end_crit_edge, %acquire_bus.exit118.while.end_crit_edge
  %offset.1.lcssa = phi i32 [ %add26, %acquire_bus.exit118.while.end_crit_edge ], [ %add38, %if.end36.while.end_crit_edge ], [ %offset.1132, %while.body.while.end_crit_edge ]
  %cmp.lcssa = phi i1 [ %cmp128, %acquire_bus.exit118.while.end_crit_edge ], [ %cmp, %if.end36.while.end_crit_edge ], [ true, %while.body.while.end_crit_edge ]
  %ret.2 = phi i32 [ %ret.0, %acquire_bus.exit118.while.end_crit_edge ], [ 0, %if.end36.while.end_crit_edge ], [ %call33, %while.body.while.end_crit_edge ]
  %34 = ptrtoint ptr %power_save_mode.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %power_save_mode.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i120 = icmp eq i8 %35, 0
  br i1 %tobool.not.i120, label %while.end.release_bus.exit_crit_edge, label %if.then.i121

while.end.release_bus.exit_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_bus.exit

if.then.i121:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @chip_allow_sleep(ptr noundef %wilc) #9
  br label %release_bus.exit

release_bus.exit:                                 ; preds = %if.then.i121, %while.end.release_bus.exit_crit_edge
  call void @mutex_unlock(ptr noundef %hif_cs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool39.not = icmp eq i32 %ret.2, 0
  br i1 %tobool39.not, label %do.body47, label %do.end43

do.end43:                                         ; preds = %release_bus.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #13
  br label %fail

do.body47:                                        ; preds = %release_bus.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_firmware_download.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_firmware_download, %if.then59)) #9
          to label %do.cond63 [label %if.then59], !srcloc !86

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wilc_wlan_firmware_download.__UNIQUE_ID_ddebug588, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef %offset.1.lcssa) #9
  br label %do.cond63

do.cond63:                                        ; preds = %if.then59, %do.body47
  br i1 %cmp.lcssa, label %do.cond63.do.body22_crit_edge, label %do.cond63.fail_crit_edge

do.cond63.fail_crit_edge:                         ; preds = %do.cond63
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

do.cond63.do.body22_crit_edge:                    ; preds = %do.cond63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

fail:                                             ; preds = %do.cond63.fail_crit_edge, %do.end43
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %fail ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_start(ptr noundef %wilc) local_unnamed_addr #1 align 64 {
entry:
  %reg = alloca i32, align 4
  %chipid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid) #9
  %1 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %chipid, align 4, !annotation !84
  %io_type = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 2
  %2 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %entry.if.end4_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %reg, align 4
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %reg, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then, %entry.if.end4_crit_edge
  %hif_cs.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs.i, i32 noundef 0) #9
  %hif_func = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %7 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_func, align 4
  %hif_write_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hif_write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hif_write_reg, align 4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %call = tail call i32 %10(ptr noundef %wilc, i32 noundef 1376276, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.end4.release_crit_edge

if.end4.release_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %release

if.end6:                                          ; preds = %if.end4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %reg, align 4
  %14 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8 = icmp eq i32 %15, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %dev_irq_num = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 8
  %16 = ptrtoint ptr %dev_irq_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_irq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %reg, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %19 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hif_func, align 4
  %hif_write_reg14 = getelementptr inbounds %struct.wilc_hif_func, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %hif_write_reg14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hif_write_reg14, align 4
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %call15 = tail call i32 %22(ptr noundef %wilc, i32 noundef 5280, i32 noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.release_crit_edge

if.end12.release_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %release

if.end18:                                         ; preds = %if.end12
  %25 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hif_func, align 4
  %hif_sync_ext = getelementptr inbounds %struct.wilc_hif_func, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %hif_sync_ext to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hif_sync_ext, align 4
  %call20 = tail call i32 %28(ptr noundef %wilc, i32 noundef 1) #9
  %29 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hif_func, align 4
  %hif_read_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hif_read_reg, align 4
  %call22 = call i32 %32(ptr noundef %wilc, i32 noundef 4096, ptr noundef nonnull %chipid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end18.release_crit_edge

if.end18.release_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %release

if.end25:                                         ; preds = %if.end18
  %33 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hif_func, align 4
  %hif_read_reg27 = getelementptr inbounds %struct.wilc_hif_func, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %hif_read_reg27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hif_read_reg27, align 4
  %call28 = call i32 %36(ptr noundef %wilc, i32 noundef 5120, ptr noundef nonnull %reg) #9
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg, align 4
  %and = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp29.not = icmp eq i32 %and, 0
  br i1 %cmp29.not, label %if.end25.if.end38_crit_edge, label %if.then30

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %and31 = and i32 %38, -1025
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and31, ptr %reg, align 4
  %40 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hif_func, align 4
  %hif_write_reg33 = getelementptr inbounds %struct.wilc_hif_func, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %hif_write_reg33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hif_write_reg33, align 4
  %call34 = call i32 %43(ptr noundef %wilc, i32 noundef 5120, i32 noundef %and31) #9
  %44 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hif_func, align 4
  %hif_read_reg36 = getelementptr inbounds %struct.wilc_hif_func, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %hif_read_reg36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hif_read_reg36, align 4
  %call37 = call i32 %47(ptr noundef %wilc, i32 noundef 5120, ptr noundef nonnull %reg) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.end25.if.end38_crit_edge
  %48 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg, align 4
  %or39 = or i32 %49, 1024
  store i32 %or39, ptr %reg, align 4
  %50 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hif_func, align 4
  %hif_write_reg41 = getelementptr inbounds %struct.wilc_hif_func, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %hif_write_reg41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hif_write_reg41, align 4
  %call42 = call i32 %53(ptr noundef %wilc, i32 noundef 5120, i32 noundef %or39) #9
  %54 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hif_func, align 4
  %hif_read_reg44 = getelementptr inbounds %struct.wilc_hif_func, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %hif_read_reg44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hif_read_reg44, align 4
  %call45 = call i32 %57(ptr noundef %wilc, i32 noundef 5120, ptr noundef nonnull %reg) #9
  br label %release

release:                                          ; preds = %if.end38, %if.end18.release_crit_edge, %if.end12.release_crit_edge, %if.end4.release_crit_edge
  %ret.0 = phi i32 [ %call, %if.end4.release_crit_edge ], [ %call15, %if.end12.release_crit_edge ], [ %call22, %if.end18.release_crit_edge ], [ %call42, %if.end38 ]
  call void @mutex_unlock(ptr noundef %hif_cs.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_stop(ptr noundef %wilc, ptr nocapture noundef readonly %vif) local_unnamed_addr #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %hif_cs.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs.i, i32 noundef 0) #9
  %power_save_mode.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 7
  %1 = ptrtoint ptr %power_save_mode.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %power_save_mode.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.acquire_bus.exit_crit_edge, label %if.then.i

entry.acquire_bus.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_bus.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @chip_wakeup(ptr noundef %wilc) #9
  br label %acquire_bus.exit

acquire_bus.exit:                                 ; preds = %if.then.i, %entry.acquire_bus.exit_crit_edge
  %hif_func = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %3 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hif_func, align 4
  %hif_read_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hif_read_reg, align 4
  %call = call i32 %6(ptr noundef %wilc, i32 noundef 5276, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %acquire_bus.exit.release.sink.split_crit_edge

acquire_bus.exit.release.sink.split_crit_edge:    ; preds = %acquire_bus.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %release.sink.split

if.end:                                           ; preds = %acquire_bus.exit
  %7 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_func, align 4
  %hif_write_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hif_write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hif_write_reg, align 4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %or = or i32 %12, -2147483648
  %call2 = call i32 %10(ptr noundef %wilc, i32 noundef 5276, i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.release.sink.split_crit_edge

if.end.release.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %release.sink.split

if.end6:                                          ; preds = %if.end
  %13 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hif_func, align 4
  %hif_read_reg8 = getelementptr inbounds %struct.wilc_hif_func, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %hif_read_reg8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hif_read_reg8, align 4
  %call9 = call i32 %16(ptr noundef %wilc, i32 noundef 5056, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.end6.release.sink.split_crit_edge

if.end6.release.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %release.sink.split

if.end13:                                         ; preds = %if.end6
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %reg, align 4
  %18 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hif_func, align 4
  %hif_write_reg15 = getelementptr inbounds %struct.wilc_hif_func, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %hif_write_reg15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hif_write_reg15, align 4
  %call16 = call i32 %21(ptr noundef %wilc, i32 noundef 5056, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end13.release_crit_edge, label %if.end13.release.sink.split_crit_edge

if.end13.release.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %release.sink.split

if.end13.release_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %release

release.sink.split:                               ; preds = %if.end13.release.sink.split_crit_edge, %if.end6.release.sink.split_crit_edge, %if.end.release.sink.split_crit_edge, %acquire_bus.exit.release.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.17, %acquire_bus.exit.release.sink.split_crit_edge ], [ @.str.18, %if.end.release.sink.split_crit_edge ], [ @.str.17, %if.end6.release.sink.split_crit_edge ], [ @.str.18, %if.end13.release.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call, %acquire_bus.exit.release.sink.split_crit_edge ], [ %call2, %if.end.release.sink.split_crit_edge ], [ %call9, %if.end6.release.sink.split_crit_edge ], [ %call16, %if.end13.release.sink.split_crit_edge ]
  %ndev19 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %22 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev19, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull %.str.18.sink) #13
  br label %release

release:                                          ; preds = %release.sink.split, %if.end13.release_crit_edge
  %ret.0 = phi i32 [ 0, %if.end13.release_crit_edge ], [ %ret.0.ph, %release.sink.split ]
  call void @mutex_unlock(ptr noundef %hif_cs.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_wlan_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc1 = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  %quit = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %quit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %quit, align 4
  %txq_spinlock.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 16
  %txq_entries.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 33
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.while.cond.preheader_crit_edge ]
  %call2.i43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i) #9
  %arrayidx.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 32, i32 %indvars.iv
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i44 = icmp eq ptr %4, %arrayidx.i
  br i1 %cmp.i.not.i44, label %while.cond.preheader.wilc_wlan_txq_remove_from_head.exit.thread_crit_edge, label %if.then.i.lr.ph

while.cond.preheader.wilc_wlan_txq_remove_from_head.exit.thread_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_remove_from_head.exit.thread

if.then.i.lr.ph:                                  ; preds = %while.cond.preheader
  %count.i = getelementptr %struct.wilc, ptr %1, i32 0, i32 32, i32 %indvars.iv, i32 1
  br label %if.then.i

while.cond6.preheader:                            ; preds = %for.inc
  %rxq_cs.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %rxq_cs.i, i32 noundef 0) #9
  %rxq_head.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 35
  %5 = ptrtoint ptr %rxq_head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rxq_head.i, align 4
  %cmp.i.not.i2748 = icmp eq ptr %6, %rxq_head.i
  br i1 %cmp.i.not.i2748, label %while.cond6.preheader.wilc_wlan_rxq_remove.exit.thread_crit_edge, label %while.cond6.preheader.if.then.i29_crit_edge

while.cond6.preheader.if.then.i29_crit_edge:      ; preds = %while.cond6.preheader
  br label %if.then.i29

while.cond6.preheader.wilc_wlan_rxq_remove.exit.thread_crit_edge: ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_rxq_remove.exit.thread

wilc_wlan_txq_remove_from_head.exit.thread:       ; preds = %if.end.wilc_wlan_txq_remove_from_head.exit.thread_crit_edge, %while.cond.preheader.wilc_wlan_txq_remove_from_head.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i43, %while.cond.preheader.wilc_wlan_txq_remove_from_head.exit.thread_crit_edge ], [ %call2.i, %if.end.wilc_wlan_txq_remove_from_head.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i, i32 noundef %call2.i.lcssa) #9
  br label %for.inc

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.then.i.lr.ph
  %7 = phi ptr [ %4, %if.then.i.lr.ph ], [ %25, %if.end.if.then.i_crit_edge ]
  %call2.i45 = phi i32 [ %call2.i43, %if.then.i.lr.ph ], [ %call2.i, %if.end.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.wilc_wlan_txq_remove_from_head.exit_crit_edge

if.then.i.wilc_wlan_txq_remove_from_head.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_remove_from_head.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %wilc_wlan_txq_remove_from_head.exit

wilc_wlan_txq_remove_from_head.exit:              ; preds = %if.end.i.i.i, %if.then.i.wilc_wlan_txq_remove_from_head.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %txq_entries.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txq_entries.i, align 4
  %sub.i = add i32 %17, -1
  store i32 %sub.i, ptr %txq_entries.i, align 4
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count.i, align 4
  %dec.i = add i16 %19, -1
  store i16 %dec.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i, i32 noundef %call2.i45) #9
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %wilc_wlan_txq_remove_from_head.exit.for.inc_crit_edge, label %while.body

wilc_wlan_txq_remove_from_head.exit.for.inc_crit_edge: ; preds = %wilc_wlan_txq_remove_from_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body:                                       ; preds = %wilc_wlan_txq_remove_from_head.exit
  %tx_complete_func = getelementptr inbounds %struct.txq_entry_t, ptr %7, i32 0, i32 9
  %20 = ptrtoint ptr %tx_complete_func to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_complete_func, align 4
  %tobool4.not = icmp eq ptr %21, null
  br i1 %tobool4.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.txq_entry_t, ptr %7, i32 0, i32 6
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  tail call void %21(ptr noundef %23, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %7) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i) #9
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %arrayidx.i
  br i1 %cmp.i.not.i, label %if.end.wilc_wlan_txq_remove_from_head.exit.thread_crit_edge, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.wilc_wlan_txq_remove_from_head.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_remove_from_head.exit.thread

for.inc:                                          ; preds = %wilc_wlan_txq_remove_from_head.exit.for.inc_crit_edge, %wilc_wlan_txq_remove_from_head.exit.thread
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %while.cond6.preheader, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

wilc_wlan_rxq_remove.exit.thread:                 ; preds = %while.body9.wilc_wlan_rxq_remove.exit.thread_crit_edge, %while.cond6.preheader.wilc_wlan_rxq_remove.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %rxq_cs.i) #9
  br label %while.end10

if.then.i29:                                      ; preds = %while.body9.if.then.i29_crit_edge, %while.cond6.preheader.if.then.i29_crit_edge
  %26 = phi ptr [ %36, %while.body9.if.then.i29_crit_edge ], [ %6, %while.cond6.preheader.if.then.i29_crit_edge ]
  %call.i.i.i28 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #9
  br i1 %call.i.i.i28, label %if.end.i.i.i32, label %if.then.i29.wilc_wlan_rxq_remove.exit_crit_edge

if.then.i29.wilc_wlan_rxq_remove.exit_crit_edge:  ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_rxq_remove.exit

if.end.i.i.i32:                                   ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i30 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i30, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i31, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %wilc_wlan_rxq_remove.exit

wilc_wlan_rxq_remove.exit:                        ; preds = %if.end.i.i.i32, %if.then.i29.wilc_wlan_rxq_remove.exit_crit_edge
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i.i33 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i33, align 4
  tail call void @mutex_unlock(ptr noundef %rxq_cs.i) #9
  %tobool8.not = icmp eq ptr %26, null
  br i1 %tobool8.not, label %wilc_wlan_rxq_remove.exit.while.end10_crit_edge, label %while.body9

wilc_wlan_rxq_remove.exit.while.end10_crit_edge:  ; preds = %wilc_wlan_rxq_remove.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end10

while.body9:                                      ; preds = %wilc_wlan_rxq_remove.exit
  tail call void @kfree(ptr noundef nonnull %26) #9
  tail call void @mutex_lock_nested(ptr noundef %rxq_cs.i, i32 noundef 0) #9
  %35 = ptrtoint ptr %rxq_head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %rxq_head.i, align 4
  %cmp.i.not.i27 = icmp eq ptr %36, %rxq_head.i
  br i1 %cmp.i.not.i27, label %while.body9.wilc_wlan_rxq_remove.exit.thread_crit_edge, label %while.body9.if.then.i29_crit_edge

while.body9.if.then.i29_crit_edge:                ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i29

while.body9.wilc_wlan_rxq_remove.exit.thread_crit_edge: ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_rxq_remove.exit.thread

while.end10:                                      ; preds = %wilc_wlan_rxq_remove.exit.while.end10_crit_edge, %wilc_wlan_rxq_remove.exit.thread
  %rx_buffer = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 29
  %37 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_buffer, align 4
  tail call void @kfree(ptr noundef %38) #9
  %39 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rx_buffer, align 4
  %tx_buffer = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 31
  %40 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_buffer, align 4
  tail call void @kfree(ptr noundef %41) #9
  %42 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %tx_buffer, align 4
  %hif_func = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hif_func, align 4
  %hif_deinit = getelementptr inbounds %struct.wilc_hif_func, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %hif_deinit to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hif_deinit, align 4
  %call13 = tail call i32 %46(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef %start, i16 noundef zeroext %wid, ptr noundef %buffer, i32 noundef %buffer_size, i32 noundef %commit, i32 noundef %drv_handler) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 6
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  %cfg_cmd_lock = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %cfg_cmd_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool.not = icmp eq i32 %start, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cfg_frame_offset = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %cfg_frame_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cfg_frame_offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cfg_frame_offset2 = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %cfg_frame_offset2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg_frame_offset2, align 4
  %frame = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 26, i32 1
  %call = tail call i32 @wilc_wlan_cfg_set_wid(ptr noundef %frame, i32 noundef %4, i16 noundef zeroext %wid, ptr noundef %buffer, i32 noundef %buffer_size) #9
  %add = add i32 %call, %4
  %5 = ptrtoint ptr %cfg_frame_offset2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %cfg_frame_offset2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %commit)
  %tobool4.not = icmp eq i32 %commit, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_cfg_set.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_cfg_set, %if.then13)) #9
          to label %do.end16 [label %if.then13], !srcloc !86

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %cfg_seq_no = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %cfg_seq_no to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cfg_seq_no, align 4
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wlan_cfg_set.__UNIQUE_ID_ddebug589, ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %conv) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body8
  %10 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wilc1, align 4
  %cfg_frame.i = getelementptr inbounds %struct.wilc, ptr %11, i32 0, i32 26
  %cfg_frame_offset.i = getelementptr inbounds %struct.wilc, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %cfg_frame_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_frame_offset.i, align 4
  %add.i = add i32 %13, 8
  %14 = ptrtoint ptr %cfg_frame.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 87, ptr %cfg_frame.i, align 4
  %cfg_seq_no.i = getelementptr inbounds %struct.wilc, ptr %11, i32 0, i32 28
  %15 = ptrtoint ptr %cfg_seq_no.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cfg_seq_no.i, align 4
  %seq_no.i = getelementptr inbounds %struct.wilc, ptr %11, i32 0, i32 26, i32 0, i32 1
  %17 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %seq_no.i, align 1
  %conv6.i = trunc i32 %add.i to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #9
  %total_len.i = getelementptr inbounds %struct.wilc, ptr %11, i32 0, i32 26, i32 0, i32 2
  %19 = ptrtoint ptr %total_len.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %total_len.i, align 2
  %20 = tail call i32 @llvm.bswap.i32(i32 %drv_handler) #9
  %driver_handler.i = getelementptr inbounds %struct.wilc, ptr %11, i32 0, i32 26, i32 0, i32 3
  %21 = ptrtoint ptr %driver_handler.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %driver_handler.i, align 4
  %call.i = tail call fastcc i32 @wilc_wlan_txq_add_cfg_pkt(ptr noundef %vif, ptr noundef %cfg_frame.i, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not.i.not, i32 0, i32 %call
  %cfg_event = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 19
  %call22 = tail call i32 @wait_for_completion_timeout(ptr noundef %cfg_event, i32 noundef 300) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body26, label %do.end16.if.end45_crit_edge

do.end16.if.end45_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.body26:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_cfg_set.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_cfg_set, %if.then38)) #9
          to label %if.end45 [label %if.then38], !srcloc !86

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %ndev39 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %22 = ptrtoint ptr %ndev39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev39, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wlan_cfg_set.__UNIQUE_ID_ddebug590, ptr noundef %23, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %do.body26, %do.end16.if.end45_crit_edge
  %ret_size.1 = phi i32 [ %spec.select, %do.end16.if.end45_crit_edge ], [ 0, %if.then38 ], [ 0, %do.body26 ]
  %24 = ptrtoint ptr %cfg_frame_offset2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cfg_frame_offset2, align 4
  %cfg_seq_no47 = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 28
  %25 = ptrtoint ptr %cfg_seq_no47 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cfg_seq_no47, align 4
  %add49 = add i8 %26, 1
  store i8 %add49, ptr %cfg_seq_no47, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_size.1, %if.end45 ], [ %call, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cfg_cmd_lock) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_cfg_set_wid(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_cfg_get(ptr noundef %vif, i32 noundef %start, i16 noundef zeroext %wid, i32 noundef %commit, i32 noundef %drv_handler) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 6
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  %cfg_cmd_lock = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %cfg_cmd_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool.not = icmp eq i32 %start, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cfg_frame_offset = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %cfg_frame_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cfg_frame_offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cfg_frame_offset2 = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %cfg_frame_offset2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg_frame_offset2, align 4
  %frame = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 26, i32 1
  %call = tail call i32 @wilc_wlan_cfg_get_wid(ptr noundef %frame, i32 noundef %4, i16 noundef zeroext %wid) #9
  %add = add i32 %call, %4
  %5 = ptrtoint ptr %cfg_frame_offset2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %cfg_frame_offset2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %commit)
  %tobool4.not = icmp eq i32 %commit, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wilc1, align 4
  %cfg_frame.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 26
  %cfg_frame_offset.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %cfg_frame_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg_frame_offset.i, align 4
  %add.i = add i32 %9, 8
  %10 = ptrtoint ptr %cfg_frame.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 81, ptr %cfg_frame.i, align 4
  %cfg_seq_no.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 28
  %11 = ptrtoint ptr %cfg_seq_no.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cfg_seq_no.i, align 4
  %seq_no.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 26, i32 0, i32 1
  %13 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %seq_no.i, align 1
  %conv6.i = trunc i32 %add.i to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #9
  %total_len.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 26, i32 0, i32 2
  %15 = ptrtoint ptr %total_len.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %total_len.i, align 2
  %16 = tail call i32 @llvm.bswap.i32(i32 %drv_handler) #9
  %driver_handler.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 26, i32 0, i32 3
  %17 = ptrtoint ptr %driver_handler.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %driver_handler.i, align 4
  %call.i = tail call fastcc i32 @wilc_wlan_txq_add_cfg_pkt(ptr noundef %vif, ptr noundef %cfg_frame.i, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not.i.not, i32 0, i32 %call
  %cfg_event = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 19
  %call13 = tail call i32 @wait_for_completion_timeout(ptr noundef %cfg_event, i32 noundef 300) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body16, label %if.end7.if.end25_crit_edge

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_cfg_get.__UNIQUE_ID_ddebug591, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_cfg_get, %if.then21)) #9
          to label %if.end25 [label %if.then21], !srcloc !86

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %18 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wlan_cfg_get.__UNIQUE_ID_ddebug591, ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %do.body16, %if.end7.if.end25_crit_edge
  %ret_size.1 = phi i32 [ %spec.select, %if.end7.if.end25_crit_edge ], [ 0, %if.then21 ], [ 0, %do.body16 ]
  %20 = ptrtoint ptr %cfg_frame_offset2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cfg_frame_offset2, align 4
  %cfg_seq_no = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 28
  %21 = ptrtoint ptr %cfg_seq_no to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cfg_seq_no, align 4
  %add27 = add i8 %22, 1
  store i8 %add27, ptr %cfg_seq_no, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_size.1, %if.end25 ], [ %call, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cfg_cmd_lock) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_cfg_get_wid(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext %mode, ptr nocapture noundef %wids, i32 noundef %count) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wilc_get_vif_idx(ptr noundef %vif) #9
  %0 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %mode, label %entry.if.end51_crit_edge [
    i8 1, label %for.cond.preheader
    i8 0, label %for.cond27.preheader
  ]

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

for.cond27.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2886.not = icmp eq i32 %count, 0
  br i1 %cmp2886.not, label %for.cond27.preheader.if.end51_crit_edge, label %for.body30.lr.ph

for.cond27.preheader.if.end51_crit_edge:          ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %sub40 = add i32 %count, -1
  br label %for.body30

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp289.not = icmp eq i32 %count, 0
  br i1 %cmp289.not, label %for.cond.preheader.if.end51_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end51_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add i32 %count, -1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.090, 1
  %exitcond96.not = icmp eq i32 %inc, %count
  br i1 %exitcond96.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.090)
  %tobool.not = icmp eq i32 %i.090, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %arrayidx = getelementptr %struct.wid, ptr %wids, i32 %i.090
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.090, i32 %sub)
  %cmp4 = icmp eq i32 %i.090, %sub
  %conv5 = zext i1 %cmp4 to i32
  %call6 = tail call i32 @wilc_wlan_cfg_get(ptr noundef %vif, i32 noundef %lnot.ext, i16 noundef zeroext %2, i32 noundef %conv5, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %for.cond.for.end_crit_edge ], [ -110, %for.body.for.end_crit_edge ]
  br i1 %cmp289.not, label %for.end.if.end51_crit_edge, label %for.body12.lr.ph

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

for.body12.lr.ph:                                 ; preds = %for.end
  %wilc = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 6
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %i.194 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc21, %for.body12.for.body12_crit_edge ]
  %3 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wilc, align 4
  %arrayidx13 = getelementptr %struct.wid, ptr %wids, i32 %i.194
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx13, align 4
  %val = getelementptr %struct.wid, ptr %wids, i32 %i.194, i32 3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %val, align 4
  %size = getelementptr %struct.wid, ptr %wids, i32 %i.194, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %call17 = tail call i32 @wilc_wlan_cfg_get_val(ptr noundef %4, i16 noundef zeroext %6, ptr noundef %8, i32 noundef %10) #9
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call17, ptr %size, align 4
  %inc21 = add nuw i32 %i.194, 1
  %exitcond97.not = icmp eq i32 %inc21, %count
  br i1 %exitcond97.not, label %for.body12.if.end51_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.body12.if.end51_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

for.cond27:                                       ; preds = %for.body30
  %inc48 = add nuw i32 %i.287, 1
  %exitcond.not = icmp eq i32 %inc48, %count
  br i1 %exitcond.not, label %for.cond27.if.end51_crit_edge, label %for.cond27.for.body30_crit_edge

for.cond27.for.body30_crit_edge:                  ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

for.cond27.if.end51_crit_edge:                    ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

for.body30:                                       ; preds = %for.cond27.for.body30_crit_edge, %for.body30.lr.ph
  %i.287 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc48, %for.cond27.for.body30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.287)
  %tobool31.not = icmp eq i32 %i.287, 0
  %lnot.ext33 = zext i1 %tobool31.not to i32
  %arrayidx34 = getelementptr %struct.wid, ptr %wids, i32 %i.287
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx34, align 4
  %val37 = getelementptr %struct.wid, ptr %wids, i32 %i.287, i32 3
  %14 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %val37, align 4
  %size39 = getelementptr %struct.wid, ptr %wids, i32 %i.287, i32 2
  %16 = ptrtoint ptr %size39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.287, i32 %sub40)
  %cmp41 = icmp eq i32 %i.287, %sub40
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef %lnot.ext33, i16 noundef zeroext %13, ptr noundef %15, i32 noundef %17, i32 noundef %conv42, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.body30.if.end51_crit_edge, label %for.cond27

for.body30.if.end51_crit_edge:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end51:                                         ; preds = %for.body30.if.end51_crit_edge, %for.cond27.if.end51_crit_edge, %for.body12.if.end51_crit_edge, %for.end.if.end51_crit_edge, %for.cond.preheader.if.end51_crit_edge, %for.cond27.preheader.if.end51_crit_edge, %entry.if.end51_crit_edge
  %ret.1 = phi i32 [ 0, %entry.if.end51_crit_edge ], [ %ret.0, %for.end.if.end51_crit_edge ], [ 0, %for.cond27.preheader.if.end51_crit_edge ], [ 0, %for.cond.preheader.if.end51_crit_edge ], [ %ret.0, %for.body12.if.end51_crit_edge ], [ 0, %for.cond27.if.end51_crit_edge ], [ -110, %for.body30.if.end51_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_get_vif_idx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_cfg_get_val(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_get_chipid(ptr noundef %wilc, i1 noundef zeroext %update) local_unnamed_addr #1 align 64 {
entry:
  %chipid = alloca i32, align 4
  %rfrevid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid) #9
  %0 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %chipid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfrevid) #9
  %1 = ptrtoint ptr %rfrevid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rfrevid, align 4
  %chipid1 = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 6
  %2 = ptrtoint ptr %chipid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipid1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %brmerge = or i1 %cmp, %update
  br i1 %brmerge, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then:                                          ; preds = %entry
  %hif_func = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 1
  %4 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_func, align 4
  %hif_read_reg = getelementptr inbounds %struct.wilc_hif_func, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hif_read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hif_read_reg, align 4
  %call = call i32 %7(ptr noundef %wilc, i32 noundef 4096, ptr noundef nonnull %chipid) #9
  %8 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hif_func, align 4
  %hif_read_reg3 = getelementptr inbounds %struct.wilc_hif_func, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %hif_read_reg3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hif_read_reg3, align 4
  %call4 = call i32 %11(ptr noundef %wilc, i32 noundef 5108, ptr noundef nonnull %rfrevid) #9
  %12 = ptrtoint ptr %chipid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chipid, align 4
  %and.i = and i32 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1048576
  br i1 %cmp.i, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %chipid1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %chipid1, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %13, label %if.end.if.end24_crit_edge [
    i32 1049248, label %if.then10
    i32 1049264, label %if.then15
  ]

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then10:                                        ; preds = %if.end
  %16 = ptrtoint ptr %rfrevid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rfrevid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp11.not = icmp eq i32 %17, 1
  br i1 %cmp11.not, label %if.then10.if.end24_crit_edge, label %if.then12

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1049249, ptr %chipid, align 4
  br label %if.end24

if.then15:                                        ; preds = %if.end
  %19 = ptrtoint ptr %rfrevid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rfrevid, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %20, label %if.then20 [
    i32 4, label %if.then17
    i32 3, label %if.then15.if.end24_crit_edge
  ]

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1049265, ptr %chipid, align 4
  br label %if.end24

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1049266, ptr %chipid, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then17, %if.then15.if.end24_crit_edge, %if.then12, %if.then10.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %24 = ptrtoint ptr %chipid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chipid, align 4
  %26 = ptrtoint ptr %chipid1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %chipid1, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %entry.if.end26_crit_edge
  %27 = ptrtoint ptr %chipid1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chipid1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then6
  %retval.0 = phi i32 [ %28, %if.end26 ], [ 0, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfrevid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_init(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %chipid.i.i = alloca i32, align 4
  %rfrevid.i.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc1 = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  %quit = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %quit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %quit, align 4
  %hif_func = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hif_func, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call2 = tail call i32 %6(ptr noundef %1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %entry
  %tx_buffer = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_buffer, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end7:                                          ; preds = %if.end
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #14
  %9 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i.i, ptr %tx_buffer, align 4
  %tobool9.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool9.not, label %if.end7.fail_crit_edge, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %rx_buffer = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_buffer, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end16, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end16:                                         ; preds = %if.end11
  %call1.i.i44 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 98304, i32 noundef 3264, i32 noundef 5) #14
  %12 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i.i44, ptr %rx_buffer, align 4
  %tobool18.not = icmp eq ptr %call1.i.i44, null
  br i1 %tobool18.not, label %if.end16.fail_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end16.fail_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #9
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg.i, align 4, !annotation !84
  %14 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wilc1, align 4
  %hif_cs.i.i = getelementptr inbounds %struct.wilc, ptr %15, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs.i.i, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid.i.i) #9
  %16 = ptrtoint ptr %chipid.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %chipid.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfrevid.i.i) #9
  %17 = ptrtoint ptr %rfrevid.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rfrevid.i.i, align 4
  %chipid1.i.i = getelementptr inbounds %struct.wilc, ptr %15, i32 0, i32 6
  %hif_func.i.i = getelementptr inbounds %struct.wilc, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %hif_func.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hif_func.i.i, align 4
  %hif_read_reg.i.i = getelementptr inbounds %struct.wilc_hif_func, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %hif_read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hif_read_reg.i.i, align 4
  %call.i.i = call i32 %21(ptr noundef %15, i32 noundef 4096, ptr noundef nonnull %chipid.i.i) #9
  %22 = ptrtoint ptr %hif_func.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hif_func.i.i, align 4
  %hif_read_reg3.i.i = getelementptr inbounds %struct.wilc_hif_func, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %hif_read_reg3.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hif_read_reg3.i.i, align 4
  %call4.i.i = call i32 %25(ptr noundef %15, i32 noundef 5108, ptr noundef nonnull %rfrevid.i.i) #9
  %26 = ptrtoint ptr %chipid.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chipid.i.i, align 4
  %and.i.i.i = and i32 %27, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 1048576
  br i1 %cmp.i.i.i, label %if.end.i.i, label %wilc_get_chipid.exit.thread.i

wilc_get_chipid.exit.thread.i:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %chipid1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %chipid1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfrevid.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid.i.i) #9
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end20
  %29 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %27, label %if.end.i.i.wilc_get_chipid.exit.i_crit_edge [
    i32 1049248, label %if.then10.i.i
    i32 1049264, label %if.then15.i.i
  ]

if.end.i.i.wilc_get_chipid.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_get_chipid.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  %30 = ptrtoint ptr %rfrevid.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rfrevid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp11.not.i.i = icmp eq i32 %31, 1
  br i1 %cmp11.not.i.i, label %if.then10.i.i.wilc_get_chipid.exit.i_crit_edge, label %if.then12.i.i

if.then10.i.i.wilc_get_chipid.exit.i_crit_edge:   ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_get_chipid.exit.i

if.then12.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %chipid.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1049249, ptr %chipid.i.i, align 4
  br label %wilc_get_chipid.exit.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  %33 = ptrtoint ptr %rfrevid.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rfrevid.i.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %34, label %if.then20.i.i [
    i32 4, label %if.then17.i.i
    i32 3, label %if.then15.i.i.wilc_get_chipid.exit.i_crit_edge
  ]

if.then15.i.i.wilc_get_chipid.exit.i_crit_edge:   ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_get_chipid.exit.i

if.then17.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %chipid.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1049265, ptr %chipid.i.i, align 4
  br label %wilc_get_chipid.exit.i

if.then20.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %chipid.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1049266, ptr %chipid.i.i, align 4
  br label %wilc_get_chipid.exit.i

wilc_get_chipid.exit.i:                           ; preds = %if.then20.i.i, %if.then17.i.i, %if.then15.i.i.wilc_get_chipid.exit.i_crit_edge, %if.then12.i.i, %if.then10.i.i.wilc_get_chipid.exit.i_crit_edge, %if.end.i.i.wilc_get_chipid.exit.i_crit_edge
  %38 = ptrtoint ptr %chipid.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chipid.i.i, align 4
  %40 = ptrtoint ptr %chipid1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %chipid1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfrevid.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid.i.i) #9
  %and.i = and i32 %39, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 160
  br i1 %cmp.not.i, label %wilc_get_chipid.exit.i.init_chip.exit.thread_crit_edge, label %wilc_get_chipid.exit.i.if.then.i_crit_edge

wilc_get_chipid.exit.i.if.then.i_crit_edge:       ; preds = %wilc_get_chipid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

wilc_get_chipid.exit.i.init_chip.exit.thread_crit_edge: ; preds = %wilc_get_chipid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_chip.exit.thread

if.then.i:                                        ; preds = %wilc_get_chipid.exit.i.if.then.i_crit_edge, %wilc_get_chipid.exit.thread.i
  %41 = ptrtoint ptr %hif_func.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hif_func.i.i, align 4
  %hif_read_reg.i = getelementptr inbounds %struct.wilc_hif_func, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %hif_read_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hif_read_reg.i, align 4
  %call3.i = call i32 %44(ptr noundef %15, i32 noundef 4376, ptr noundef nonnull %reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.init_chip.exit_crit_edge

if.then.i.init_chip.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_chip.exit

if.end.i:                                         ; preds = %if.then.i
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %46, 1
  store i32 %or.i, ptr %reg.i, align 4
  %47 = ptrtoint ptr %hif_func.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hif_func.i.i, align 4
  %hif_write_reg.i = getelementptr inbounds %struct.wilc_hif_func, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %hif_write_reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hif_write_reg.i, align 4
  %call6.i = call i32 %50(ptr noundef %15, i32 noundef 4376, i32 noundef %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.init_chip.exit_crit_edge

if.end.i.init_chip.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_chip.exit

if.end9.i:                                        ; preds = %if.end.i
  %51 = ptrtoint ptr %hif_func.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hif_func.i.i, align 4
  %hif_write_reg11.i = getelementptr inbounds %struct.wilc_hif_func, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %hif_write_reg11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hif_write_reg11.i, align 4
  %call12.i = call i32 %54(ptr noundef %15, i32 noundef 786432, i32 noundef 113) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end9.i.init_chip.exit.thread_crit_edge, label %if.end9.i.init_chip.exit_crit_edge

if.end9.i.init_chip.exit_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_chip.exit

if.end9.i.init_chip.exit.thread_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_chip.exit.thread

init_chip.exit.thread:                            ; preds = %if.end9.i.init_chip.exit.thread_crit_edge, %wilc_get_chipid.exit.i.init_chip.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %hif_cs.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  br label %cleanup

init_chip.exit:                                   ; preds = %if.end9.i.init_chip.exit_crit_edge, %if.end.i.init_chip.exit_crit_edge, %if.then.i.init_chip.exit_crit_edge
  %.str.29.sink.i = phi ptr [ @.str.27, %if.then.i.init_chip.exit_crit_edge ], [ @.str.28, %if.end.i.init_chip.exit_crit_edge ], [ @.str.29, %if.end9.i.init_chip.exit_crit_edge ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull %.str.29.sink.i) #13
  call void @mutex_unlock(ptr noundef %hif_cs.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  br label %fail

fail:                                             ; preds = %init_chip.exit, %if.end16.fail_crit_edge, %if.end7.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ -5, %entry.fail_crit_edge ], [ -105, %if.end7.fail_crit_edge ], [ -105, %if.end16.fail_crit_edge ], [ -5, %init_chip.exit ]
  %rx_buffer25 = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 29
  %55 = ptrtoint ptr %rx_buffer25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buffer25, align 4
  call void @kfree(ptr noundef %56) #9
  %57 = ptrtoint ptr %rx_buffer25 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rx_buffer25, align 4
  %tx_buffer27 = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 31
  %58 = ptrtoint ptr %tx_buffer27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_buffer27, align 4
  call void @kfree(ptr noundef %59) #9
  %60 = ptrtoint ptr %tx_buffer27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %tx_buffer27, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %init_chip.exit.thread
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %init_chip.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wfi_mgmt_rx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_frmw_to_host(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wlan_cfg_indicate_rx(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_mac_indicate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_wlan_txq_add_cfg_pkt(ptr noundef %vif, ptr noundef %buffer, i32 noundef %buffer_size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 6
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_txq_add_cfg_pkt.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_txq_add_cfg_pkt, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wlan_txq_add_cfg_pkt.__UNIQUE_ID_ddebug478, ptr noundef %3, ptr noundef nonnull @.str.25) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %quit = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %quit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end29, label %do.body10

do.body10:                                        ; preds = %do.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_txq_add_cfg_pkt.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_txq_add_cfg_pkt, %if.then22)) #9
          to label %do.end28 [label %if.then22], !srcloc !86

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %ndev23 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %6 = ptrtoint ptr %ndev23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wlan_txq_add_cfg_pkt.__UNIQUE_ID_ddebug479, ptr noundef %7, ptr noundef nonnull @.str.26) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then22, %do.body10
  %cfg_event = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 19
  br label %cleanup

if.end29:                                         ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2592, i32 noundef 44) #12
  %tobool31.not = icmp eq ptr %call7.i, null
  br i1 %tobool31.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %cfg_event33 = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 19
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %type = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 8
  %buffer35 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %buffer35 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buffer, ptr %buffer35, align 4
  %buffer_size36 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 5
  %11 = ptrtoint ptr %buffer_size36 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %buffer_size, ptr %buffer_size36, align 8
  %tx_complete_func = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 9
  %12 = ptrtoint ptr %tx_complete_func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tx_complete_func, align 8
  %priv = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 6
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %priv, align 4
  %q_num = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %q_num to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %q_num, align 4
  %ack_idx = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 3
  %15 = ptrtoint ptr %ack_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %ack_idx, align 8
  %vif37 = getelementptr inbounds %struct.txq_entry_t, ptr %call7.i, i32 0, i32 8
  %16 = ptrtoint ptr %vif37 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vif, ptr %vif37, align 4
  %17 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wilc1, align 4
  %txq_add_to_head_cs.i = getelementptr inbounds %struct.wilc, ptr %18, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %txq_add_to_head_cs.i, i32 noundef 0) #9
  %txq_spinlock.i = getelementptr inbounds %struct.wilc, ptr %18, i32 0, i32 16
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txq_spinlock.i) #9
  %txq.i = getelementptr inbounds %struct.wilc, ptr %18, i32 0, i32 32
  %19 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txq.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %txq.i, ptr noundef %20) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end34.wilc_wlan_txq_add_to_head.exit_crit_edge

if.end34.wilc_wlan_txq_add_to_head.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %wilc_wlan_txq_add_to_head.exit

if.end.i.i.i:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %call7.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %txq.i, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %txq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i, ptr %txq.i, align 4
  br label %wilc_wlan_txq_add_to_head.exit

wilc_wlan_txq_add_to_head.exit:                   ; preds = %if.end.i.i.i, %if.end34.wilc_wlan_txq_add_to_head.exit_crit_edge
  %txq_entries.i = getelementptr inbounds %struct.wilc, ptr %18, i32 0, i32 33
  %25 = ptrtoint ptr %txq_entries.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %txq_entries.i, align 4
  %add.i = add i32 %26, 1
  store i32 %add.i, ptr %txq_entries.i, align 4
  %count.i = getelementptr inbounds %struct.wilc, ptr %18, i32 0, i32 32, i32 0, i32 1
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %count.i, align 4
  %inc.i = add i16 %28, 1
  store i16 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txq_spinlock.i, i32 noundef %call3.i) #9
  tail call void @mutex_unlock(ptr noundef %txq_add_to_head_cs.i) #9
  %txq_event.i = getelementptr inbounds %struct.wilc, ptr %18, i32 0, i32 21
  br label %cleanup

cleanup:                                          ; preds = %wilc_wlan_txq_add_to_head.exit, %if.then32, %do.end28
  %txq_event.i.sink = phi ptr [ %txq_event.i, %wilc_wlan_txq_add_to_head.exit ], [ %cfg_event33, %if.then32 ], [ %cfg_event, %do.end28 ]
  %retval.0 = phi i32 [ 1, %wilc_wlan_txq_add_to_head.exit ], [ 0, %if.then32 ], [ 0, %do.end28 ]
  tail call void @complete(ptr noundef %txq_event.i.sink) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 597, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @chip_allow_sleep._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @chip_allow_sleep._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_chip_allow_sleep, !7, !"__ksymtab_chip_allow_sleep", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 621, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 664, i32 4}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @chip_wakeup._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @chip_wakeup._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 673, i32 3}
!15 = !{ptr @chip_wakeup._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @chip_wakeup._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_chip_wakeup, !18, !"__ksymtab_chip_wakeup", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 682, i32 1}
!19 = !{ptr @__ksymtab_host_wakeup_notify, !20, !"__ksymtab_host_wakeup_notify", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 690, i32 1}
!21 = !{ptr @__ksymtab_host_sleep_notify, !22, !"__ksymtab_host_sleep_notify", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 698, i32 1}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 733, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__ksymtab_wilc_handle_isr, !27, !"__ksymtab_wilc_handle_isr", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1078, i32 1}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1096, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @wilc_wlan_firmware_download.__UNIQUE_ID_ddebug587, !29, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1105, i32 3}
!35 = !{ptr @wilc_wlan_firmware_download._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @wilc_wlan_firmware_download._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1132, i32 4}
!39 = !{ptr @wilc_wlan_firmware_download._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wilc_wlan_firmware_download._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1135, i32 3}
!43 = !{ptr @wilc_wlan_firmware_download.__UNIQUE_ID_ddebug588, !42, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1201, i32 25}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1208, i32 25}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1306, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @wilc_wlan_cfg_set.__UNIQUE_ID_ddebug589, !49, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1313, i32 3}
!54 = !{ptr @wilc_wlan_cfg_set.__UNIQUE_ID_ddebug590, !53, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1351, i32 3}
!57 = !{ptr @wilc_wlan_cfg_get.__UNIQUE_ID_ddebug591, !56, !"__UNIQUE_ID_ddebug591", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 259, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @wilc_wlan_txq_add_cfg_pkt.__UNIQUE_ID_ddebug478, !62, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 261, i32 3}
!67 = !{ptr @wilc_wlan_txq_add_cfg_pkt.__UNIQUE_ID_ddebug479, !66, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1418, i32 20}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1426, i32 20}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan.c", i32 1433, i32 20}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
!84 = !{!"auto-init"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2148864706, i64 2148864711, i64 2148864724, i64 2148864768, i64 2148864802, i64 2148864823}
