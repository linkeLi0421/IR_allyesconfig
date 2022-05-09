; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_main.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rsi_zone_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_zone_enabled\09\09\09\09"
module asm "\09.long\09__crc_rsi_zone_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_zone_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_zone_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_zone_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rsi_dbg\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_dbg\09\09\09\09"
module asm "\09.long\09__crc_rsi_dbg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_dbg\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rsi_read_pkt\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_read_pkt\09\09\09\09"
module asm "\09.long\09__crc_rsi_read_pkt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_read_pkt:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_read_pkt\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_read_pkt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rsi_91x_init\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_91x_init\09\09\09\09"
module asm "\09.long\09__crc_rsi_91x_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_91x_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_91x_init\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_91x_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rsi_91x_deinit\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_91x_deinit\09\09\09\09"
module asm "\09.long\09__crc_rsi_91x_deinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_91x_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_91x_deinit\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_91x_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsi_mod_ops = type { ptr, ptr, ptr }
%struct.rsi_proto_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon.132 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { [8 x i8] }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rsi_hw = type { ptr, i32, ptr, [3 x ptr], [4 x %struct.ieee80211_tx_queue_params], [6 x %struct.ieee80211_supported_band], ptr, i8, i32, i16, i32, %struct.rsi_ps_info, %struct.spinlock, i32, ptr, i8, ptr, %struct.timer_list, i8, i32, %struct.eepromrw_info, i32, i8, [2 x i8], ptr, ptr, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rsi_ps_info = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16, i32, i16, i32 }>
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rsi_zone_enabled = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__kstrtab_rsi_zone_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_zone_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_zone_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_zone_enabled to i32), ptr @__kstrtab_rsi_zone_enabled, ptr @__kstrtabns_rsi_zone_enabled }, section "___ksymtab_gpl+rsi_zone_enabled", align 4
@rsi_dbg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016rsi_91x: %pV\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rsi_dbg\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/rsi/rsi_91x_main.c\00", [56 x i8] zeroinitializer }, align 32
@rsi_dbg._entry_ptr = internal global ptr @rsi_dbg._entry, section ".printk_index", align 4
@__kstrtab_rsi_dbg = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_dbg = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_dbg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_dbg to i32), ptr @__kstrtab_rsi_dbg, ptr @__kstrtabns_rsi_dbg }, section "___ksymtab_gpl+rsi_dbg", align 4
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"================================================\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"================ RSI Version Info ==============\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FW Version\09: %d.%d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Operating mode\09: %d [%s]\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware file\09: %s\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BT Card ready recvd\0A\00", [43 x i8] zeroinitializer }, align 32
@rsi_bt_ops = external dso_local local_unnamed_addr constant %struct.rsi_mod_ops, align 4
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: pkt from invalid queue: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_read_pkt = private unnamed_addr constant [13 x i8] c"rsi_read_pkt\00", align 1
@__kstrtab_rsi_read_pkt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_read_pkt = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_read_pkt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_read_pkt to i32), ptr @__kstrtab_rsi_read_pkt, ptr @__kstrtabns_rsi_read_pkt }, section "___ksymtab_gpl+rsi_read_pkt", align 4
@g_proto_ops = internal global { %struct.rsi_proto_ops, [20 x i8] } { %struct.rsi_proto_ops { ptr @rsi_coex_send_pkt, ptr @rsi_get_host_intf, ptr @rsi_set_bt_context }, [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to attach BT module\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed in allocation of memory\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.rsi_91x_init = private unnamed_addr constant [13 x i8] c"rsi_91x_init\00", align 1
@rsi_91x_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&common->mutex\00", [17 x i8] zeroinitializer }, align 32
@rsi_91x_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&common->tx_lock\00", [47 x i8] zeroinitializer }, align 32
@rsi_91x_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&common->rx_lock\00", [47 x i8] zeroinitializer }, align 32
@rsi_91x_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&common->tx_bus_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tx-Thread\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unable to init tx thrd\0A\00", [36 x i8] zeroinitializer }, align 32
@rsi_91x_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&adapter->ps_lock\00", [46 x i8] zeroinitializer }, align 32
@rsi_91x_init.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&common->roc_timer)\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: oper_mode = %d, coex_mode = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init coex module\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_rsi_91x_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_91x_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_91x_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_91x_init to i32), ptr @__kstrtab_rsi_91x_init, ptr @__kstrtabns_rsi_91x_init }, section "___ksymtab_gpl+rsi_91x_init", align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Performing deinit os ops\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.rsi_91x_deinit = private unnamed_addr constant [15 x i8] c"rsi_91x_deinit\00", align 1
@__kstrtab_rsi_91x_deinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_91x_deinit = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_91x_deinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_91x_deinit to i32), ptr @__kstrtab_rsi_91x_deinit, ptr @__kstrtabns_rsi_91x_deinit }, section "___ksymtab_gpl+rsi_91x_deinit", align 4
@__initcall__kmod_rsi_91x__353_455_rsi_91x_hal_module_init6 = internal global ptr @rsi_91x_hal_module_init, section ".initcall6.init", align 4
@__exitcall_rsi_91x_hal_module_exit = internal global ptr @rsi_91x_hal_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author354 = internal constant [35 x i8] c"rsi_91x.author=Redpine Signals Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [55 x i8] c"rsi_91x.description=Station driver for RSI 91x devices\00", section ".modinfo", align 1
@__UNIQUE_ID_version356 = internal constant [20 x i8] c"rsi_91x.version=0.1\00", section ".modinfo", align 1
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rsi_91x\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.29, ptr @.str.30 }, section "__modver", align 4
@__UNIQUE_ID_file357 = internal constant [46 x i8] c"rsi_91x.file=drivers/net/wireless/rsi/rsi_91x\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [29 x i8] c"rsi_91x.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Wi-Fi alone\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BT EDR alone\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT LE alone\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BT Dual\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wi-Fi STA + BT EDR\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Wi-Fi STA + BT LE\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Wi-Fi STA + BT DUAL\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Wi-Fi AP + BT EDR\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wi-Fi AP + BT DUAL\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Dummy pkt received\00", [41 x i8] zeroinitializer }, align 32
@__func__.rsi_prepare_skb = private unnamed_addr constant [16 x i8] c"rsi_prepare_skb\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rsi_init_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pevent->event_queue\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/rsi/rsi_common.h\00", [58 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Module init called\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.rsi_91x_hal_module_init = private unnamed_addr constant [24 x i8] c"rsi_91x_hal_module_init\00", align 1
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Module exit called\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.rsi_91x_hal_module_exit = private unnamed_addr constant [24 x i8] c"rsi_91x_hal_module_exit\00", align 1
@switch.table.rsi_print_version = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.31, ptr @.str.40, ptr @.str.40, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.33, ptr @.str.36, ptr @.str.40, ptr @.str.40, ptr @.str.34, ptr @.str.37, ptr @.str.39], [40 x i8] zeroinitializer }, align 32
@switch.table.rsi_91x_init = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01\02\02\02\02\04\02\02\02\02\02\02\02\04", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"rsi_zone_enabled\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 28, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 66, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 99, i32 20 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 100, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 102, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 105, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 107, i32 20 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 217, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 231, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"g_proto_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 41, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 291, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 313, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 326, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 327, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 328, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 329, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 334, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 335, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 341, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 342, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 368, i32 21 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 375, i32 22 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 403, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 459, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 75, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 77, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 79, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 81, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 83, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 85, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 87, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 89, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 91, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 94, i32 9 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 128, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1984, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 30, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 66, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/rsi/rsi_common.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 39, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 87, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 438, i32 21 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [43 x i8] c"../drivers/net/wireless/rsi/rsi_91x_main.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 452, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"switch.table.rsi_print_version\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [26 x i8] c"switch.table.rsi_91x_init\00", align 1
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__UNIQUE_ID_version356, ptr @__exitcall_rsi_91x_hal_module_exit, ptr @__initcall__kmod_rsi_91x__353_455_rsi_91x_hal_module_init6, ptr @__ksymtab_rsi_91x_deinit, ptr @__ksymtab_rsi_91x_init, ptr @__ksymtab_rsi_dbg, ptr @__ksymtab_rsi_read_pkt, ptr @__ksymtab_rsi_zone_enabled, ptr @__modver_attr, ptr @rsi_dbg._entry, ptr @rsi_dbg._entry_ptr, ptr @rsi_zone_enabled, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @g_proto_ops, ptr @.str.10, ptr @.str.11, ptr @rsi_91x_init.__key, ptr @.str.12, ptr @rsi_91x_init.__key.13, ptr @.str.14, ptr @rsi_91x_init.__key.15, ptr @.str.16, ptr @rsi_91x_init.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @rsi_91x_init.__key.21, ptr @.str.22, ptr @rsi_91x_init.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @skb_queue_head_init.__key, ptr @.str.43, ptr @rsi_init_event.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @init_completion.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @switch.table.rsi_print_version, ptr @switch.table.rsi_91x_init], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_zone_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_dbg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_proto_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_91x_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_91x_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_91x_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_91x_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_91x_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_91x_init.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_init_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsi_print_version to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsi_91x_init to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_dbg(i32 noundef %zone, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #12
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !144
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %4 = load i32, ptr @rsi_zone_enabled, align 4
  %and = and i32 %4, %zone
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_print_version(ptr nocapture noundef readonly %common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.3)
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.4)
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.3)
  %lmac_ver = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 4
  %0 = ptrtoint ptr %lmac_ver to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %lmac_ver, align 1
  %conv = zext i16 %1 to i32
  %minor = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %minor, align 1
  %conv2 = zext i16 %3 to i32
  %release_num = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %release_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %release_num, align 1
  %conv4 = zext i8 %5 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4)
  %oper_mode = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 47
  %6 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %oper_mode, align 4
  %switch.tableidx = add i16 %7, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %switch.tableidx)
  %8 = icmp ult i16 %switch.tableidx, 14
  br i1 %8, label %switch.lookup, label %entry.opmode_str.exit_crit_edge

entry.opmode_str.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %opmode_str.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x ptr], ptr @switch.table.rsi_print_version, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %opmode_str.exit

opmode_str.exit:                                  ; preds = %switch.lookup, %entry.opmode_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.40, %entry.opmode_str.exit_crit_edge ]
  %conv5 = zext i16 %7 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %conv5, ptr noundef nonnull %retval.0.i)
  %11 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common, align 4
  %fw_file_name = getelementptr inbounds %struct.rsi_hw, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %fw_file_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_file_name, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef %14)
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_read_pkt(ptr noundef %common, ptr noundef %rx_pkt, i32 noundef %rcv_pkt_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_adapter = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 78
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %bt_defer_attach = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 76
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 45
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %entry
  %rcv_pkt_len.addr.0 = phi i32 [ %rcv_pkt_len, %entry ], [ %sub, %sw.epilog.do.body_crit_edge ]
  %extended_desc.0 = phi i8 [ 0, %entry ], [ %extended_desc.1, %sw.epilog.do.body_crit_edge ]
  %index.0 = phi i32 [ 0, %entry ], [ %add56, %sw.epilog.do.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %rx_pkt, i32 %index.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr i8, ptr %arrayidx, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcv_pkt_len.addr.0)
  %tobool.not = icmp eq i32 %rcv_pkt_len.addr.0, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2984, i16 %3)
  %cmp = icmp ugt i16 %3, 2984
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %do.body
  %idxprom.i = zext i16 %3 to i32
  %arrayidx.i = getelementptr i8, ptr %arrayidx, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 7
  %8 = zext i16 %7 to i32
  %9 = and i16 %5, -241
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #12
  %and.i = zext i16 %10 to i32
  %11 = and i32 %8, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch = icmp eq i32 %11, 4
  br i1 %switch, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add nuw nsw i32 %idxprom.i, 4
  %arrayidx.i107 = getelementptr i8, ptr %arrayidx, i32 %add.i
  %12 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i107, align 2
  %14 = lshr i16 %13, 8
  %conv2.i = trunc i16 %14 to i8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %extended_desc.1 = phi i8 [ %conv2.i, %if.then9 ], [ %extended_desc.0, %if.end.if.end11_crit_edge ]
  %15 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb22
    i32 4, label %sw.bb30
    i32 6, label %if.end11.sw.bb34_crit_edge
    i32 7, label %if.end11.sw.bb34_crit_edge119
  ]

if.end11.sw.bb34_crit_edge119:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb34

if.end11.sw.bb34_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb34

sw.bb:                                            ; preds = %if.end11
  %16 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp13 = icmp ugt i8 %17, 1
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 @rsi_coex_recv_pkt(ptr noundef %common, ptr noundef %arrayidx.i) #12
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 @rsi_mgmt_pkt_recv(ptr noundef %common, ptr noundef %arrayidx.i) #12
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end25.i, !prof !145

do.end.i:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 128, i32 noundef 9, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.rsi_prepare_skb) #12
  br label %cleanup

if.end25.i:                                       ; preds = %sw.bb22
  %conv.i108 = zext i8 %extended_desc.1 to i32
  %sub.i = sub nsw i32 %and.i, %conv.i108
  %add.i109 = add nsw i32 %sub.i, 16
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i109, i32 noundef 2592) #12
  %cmp26.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp26.i, label %if.end25.i.cleanup_crit_edge, label %if.end29

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %add31.i = add i8 %extended_desc.1, 16
  %call33.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.i) #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %conv34.i = zext i8 %add31.i to i32
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i, i32 %conv34.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %22 = call ptr @memcpy(ptr %19, ptr %add.ptr.i, i32 %21)
  tail call void @rsi_indicate_pkt_to_os(ptr noundef %common, ptr noundef nonnull %call.i.i.i) #12
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 @rsi_mgmt_pkt_recv(ptr noundef %common, ptr noundef %arrayidx.i) #12
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end11.sw.bb34_crit_edge, %if.end11.sw.bb34_crit_edge119
  %add = add nuw nsw i32 %idxprom.i, 14
  %arrayidx36 = getelementptr i8, ptr %arrayidx, i32 %add
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %24)
  %cmp38 = icmp eq i8 %24, -119
  br i1 %cmp38, label %if.then40, label %if.else46

if.then40:                                        ; preds = %sw.bb34
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.8)
  %25 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fsm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %26)
  %cmp41 = icmp eq i32 %26, 9
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rsi_bt_ops to i32))
  %27 = load ptr, ptr @rsi_bt_ops, align 4
  %call.i = tail call i32 %27(ptr noundef %common, ptr noundef nonnull @g_proto_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i110 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i110, label %if.then43.sw.epilog_crit_edge, label %if.then.i

if.then43.sw.epilog_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #12
  br label %sw.epilog

if.else44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %bt_defer_attach to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %bt_defer_attach, align 1
  br label %sw.epilog

if.else46:                                        ; preds = %sw.bb34
  %29 = ptrtoint ptr %bt_adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bt_adapter, align 4
  %tobool47.not = icmp eq ptr %30, null
  br i1 %tobool47.not, label %if.else46.sw.epilog_crit_edge, label %if.then48

if.else46.sw.epilog_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then48:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 2), align 4
  %call52 = tail call i32 %31(ptr noundef nonnull %30, ptr noundef %arrayidx.i) #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rsi_read_pkt, i32 noundef %8)
  br label %cleanup

sw.epilog:                                        ; preds = %if.then48, %if.else46.sw.epilog_crit_edge, %if.else44, %if.then.i, %if.then43.sw.epilog_crit_edge, %sw.bb30, %if.end29, %if.else, %if.then15
  %conv55 = zext i16 %1 to i32
  %add56 = add i32 %index.0, %conv55
  %sub = sub i32 %rcv_pkt_len.addr.0, %conv55
  %cmp58 = icmp sgt i32 %sub, 0
  br i1 %cmp58, label %sw.epilog.do.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %sw.default, %if.end25.i.cleanup_crit_edge, %do.end.i, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %do.end.i ], [ -22, %if.end25.i.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_coex_recv_pkt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_mgmt_pkt_recv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_indicate_pkt_to_os(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_attach_bt(ptr noundef %common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rsi_bt_ops to i32))
  %0 = load ptr, ptr @rsi_bt_ops, align 4
  %call = tail call i32 %0(ptr noundef %common, ptr noundef nonnull @g_proto_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsi_get_host_intf(ptr nocapture noundef readonly %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rsi_host_intf = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rsi_host_intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsi_host_intf, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rsi_set_bt_context(ptr nocapture noundef writeonly %priv, ptr noundef %bt_context) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_adapter = getelementptr inbounds %struct.rsi_common, ptr %priv, i32 0, i32 78
  %0 = ptrtoint ptr %bt_adapter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bt_context, ptr %bt_adapter, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsi_91x_init(i16 noundef zeroext %oper_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1308) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i97 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 3220) #16
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i97, ptr %call7.i.i, align 8
  %cmp = icmp eq ptr %call7.i.i97, null
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.rsi_91x_init)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i97 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %call7.i.i97, align 8
  %arrayidx = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 0
  %lock.i = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i.i = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i, align 4
  %arrayidx.1 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 1
  %lock.i.1 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.1, ptr noundef nonnull @.str.43, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.i.1 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.1, ptr %prev.i.i.1, align 8
  %qlen.i.i.1 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 1, i32 1
  %9 = ptrtoint ptr %qlen.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i.1, align 4
  %arrayidx.2 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 2
  %lock.i.2 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.2, ptr noundef nonnull @.str.43, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i.i.2 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 2, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.2, ptr %prev.i.i.2, align 8
  %qlen.i.i.2 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 2, i32 1
  %12 = ptrtoint ptr %qlen.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i.2, align 4
  %arrayidx.3 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 3
  %lock.i.3 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.3, ptr noundef nonnull @.str.43, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i.i.3 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 3, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.3, ptr %prev.i.i.3, align 8
  %qlen.i.i.3 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 3, i32 1
  %15 = ptrtoint ptr %qlen.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i.3, align 4
  %arrayidx.4 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 4
  %lock.i.4 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.4, ptr noundef nonnull @.str.43, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i.i.4 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 4, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.4, ptr %prev.i.i.4, align 8
  %qlen.i.i.4 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 4, i32 1
  %18 = ptrtoint ptr %qlen.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qlen.i.i.4, align 4
  %arrayidx.5 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 5
  %lock.i.5 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.5, ptr noundef nonnull @.str.43, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.5, ptr %arrayidx.5, align 4
  %prev.i.i.5 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 5, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.5, ptr %prev.i.i.5, align 8
  %qlen.i.i.5 = getelementptr %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 7, i32 5, i32 1
  %21 = ptrtoint ptr %qlen.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %qlen.i.i.5, align 4
  %event = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 6, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #12
  %22 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %event, align 8
  %event_queue.i = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 6, i32 3, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %event_queue.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @rsi_init_event.__key) #12
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @rsi_91x_init.__key) #12
  %tx_lock = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @rsi_91x_init.__key.13) #12
  %rx_lock = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @rsi_91x_init.__key.15) #12
  %tx_bus_mutex = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 57
  tail call void @__mutex_init(ptr noundef %tx_bus_mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @rsi_91x_init.__key.17) #12
  %completion.i = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 6, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #12
  %thread_done.i = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 6, i32 4
  %call.i.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i, i32 noundef 4) #12
  %24 = ptrtoint ptr %thread_done.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %thread_done.i, align 8
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rsi_tx_scheduler_thread, ptr noundef nonnull %call7.i.i97, i32 noundef -1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.19) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rsi_create_kthread.exit, label %rsi_create_kthread.exit.thread

rsi_create_kthread.exit.thread:                   ; preds = %if.else
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #12
  %25 = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %25, align 4
  tail call void @rsi_default_ps_params(ptr noundef nonnull %call7.i.i) #12
  tail call void @init_bgscan_params(ptr noundef nonnull %call7.i.i97) #12
  %ps_lock = getelementptr inbounds %struct.rsi_hw, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %ps_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @rsi_91x_init.__key.21, i16 noundef signext 3) #12
  %roc_timer = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 73
  tail call void @init_timer_key(ptr noundef %roc_timer, ptr noundef nonnull @rsi_roc_timeout, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @rsi_91x_init.__key.23) #12
  %wlan_init_completion = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 8
  %27 = ptrtoint ptr %wlan_init_completion to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %wlan_init_completion, align 4
  %wait.i = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #12
  %device_model = getelementptr inbounds %struct.rsi_hw, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %device_model to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %device_model, align 4
  %oper_mode31 = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 47
  %29 = ptrtoint ptr %oper_mode31 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %oper_mode, ptr %oper_mode31, align 4
  %switch.tableidx = add i16 %oper_mode, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %switch.tableidx)
  %30 = icmp ult i16 %switch.tableidx, 14
  br i1 %30, label %switch.hole_check, label %rsi_create_kthread.exit.thread.sw.default_crit_edge

rsi_create_kthread.exit.thread.sw.default_crit_edge: ; preds = %rsi_create_kthread.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

rsi_create_kthread.exit:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %31 = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %31, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.rsi_91x_init)
  br label %err

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %rsi_create_kthread.exit.thread.sw.default_crit_edge
  %33 = ptrtoint ptr %oper_mode31 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %oper_mode31, align 4
  br label %sw.epilog

switch.hole_check:                                ; preds = %rsi_create_kthread.exit.thread
  %switch.shifted = lshr i16 14777, %switch.tableidx
  %34 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %switch.lobit.not = icmp eq i16 %34, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %35 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x i8], ptr @switch.table.rsi_91x_init, i32 0, i32 %35
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %36)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %.sink = phi i8 [ 1, %sw.default ], [ %switch.load, %switch.lookup ]
  %coex_mode39 = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 45
  %37 = ptrtoint ptr %coex_mode39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.sink, ptr %coex_mode39, align 2
  %38 = ptrtoint ptr %oper_mode31 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %oper_mode31, align 4
  %conv41 = zext i16 %39 to i32
  %coex_mode42 = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 45
  %conv43 = zext i8 %.sink to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rsi_91x_init, i32 noundef %conv41, i32 noundef %conv43)
  %40 = ptrtoint ptr %device_model to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %device_model, align 4
  %41 = ptrtoint ptr %coex_mode42 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %coex_mode42, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp47 = icmp ugt i8 %42, 1
  br i1 %cmp47, label %if.then49, label %sw.epilog.if.end56_crit_edge

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then49:                                        ; preds = %sw.epilog
  %call50 = tail call i32 @rsi_coex_attach(ptr noundef nonnull %call7.i.i97) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.if.end56_crit_edge, label %if.then52

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.26)
  %call.i.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %thread_done.i, i32 1, i32 3, i32 1) #12
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_done.i, ptr %thread_done.i, i32 1, ptr elementtype(i32) %thread_done.i) #12, !srcloc !146
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #12
  %44 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %event, align 8
  tail call void @__wake_up(ptr noundef %event_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %45 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %25, align 4
  %call.i101 = tail call i32 @kthread_stop(ptr noundef %46) #12
  br label %err

if.end56:                                         ; preds = %if.then49.if.end56_crit_edge, %sw.epilog.if.end56_crit_edge
  %init_done = getelementptr inbounds %struct.rsi_common, ptr %call7.i.i97, i32 0, i32 29
  %47 = ptrtoint ptr %init_done to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %init_done, align 8
  br label %cleanup

err:                                              ; preds = %if.then52, %rsi_create_kthread.exit
  tail call void @kfree(ptr noundef nonnull %call7.i.i97) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end56, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %err ], [ %call7.i.i, %if.end56 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_tx_scheduler_thread(ptr noundef %common) #7 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry36.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %determine_event_timeout = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 27
  %event = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %event_queue40.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  %init_done = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 29
  %thread_done = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 0, %entry ], [ %timeout.1, %do.cond.do.body_crit_edge ]
  %2 = ptrtoint ptr %determine_event_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %determine_event_timeout, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 %3(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %timeout.1 = phi i32 [ %call, %if.then ], [ %timeout.0, %do.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %tobool.not.i = icmp eq i32 %timeout.1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 40) #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #12
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i.rsi_wait_event.exit_crit_edge, label %if.then4.i

if.then.i.rsi_wait_event.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rsi_wait_event.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %6 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %call623.i = call i32 @prepare_to_wait_event(ptr noundef %event_queue40.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %call.i.i124.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #12
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp925.i = icmp eq i32 %8, 0
  br i1 %cmp925.i, label %if.then4.i.for.end.i_crit_edge, label %if.then4.i.if.end.i_crit_edge

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  br label %if.end.i

if.then4.i.for.end.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then4.i.if.end.i_crit_edge
  %call626.i = phi i32 [ %call6.i, %cleanup.i.if.end.i_crit_edge ], [ %call623.i, %if.then4.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call626.i)
  %tobool11.not.i = icmp eq i32 %call626.i, 0
  br i1 %tobool11.not.i, label %cleanup.i, label %if.end.i.__out.i_crit_edge

if.end.i.__out.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #12
  %call6.i = call i32 @prepare_to_wait_event(ptr noundef %event_queue40.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %call.i.i1.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #12
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %event, align 4
  %cmp9.i = icmp eq i32 %10, 0
  br i1 %cmp9.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then4.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %event_queue40.i, ptr noundef nonnull %__wq_entry.i) #12
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %rsi_wait_event.exit

if.else.i:                                        ; preds = %if.end
  call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 44) #12
  %call.i.i2.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #12
  %11 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp26.i = icmp eq i32 %12, 0
  br i1 %cmp26.i, label %if.else.i.rsi_wait_event.exit_crit_edge, label %if.then35.i

if.else.i.rsi_wait_event.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rsi_wait_event.exit

if.then35.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry36.i) #12
  %13 = call ptr @memset(ptr %__wq_entry36.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry36.i, i32 noundef 0) #12
  %call4116.i = call i32 @prepare_to_wait_event(ptr noundef %event_queue40.i, ptr noundef nonnull %__wq_entry36.i, i32 noundef 1) #12
  %call.i.i317.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #12
  %14 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4518.i = icmp eq i32 %15, 0
  br i1 %cmp4518.i, label %if.then35.i.for.end69.i_crit_edge, label %if.then35.i.if.end61.i_crit_edge

if.then35.i.if.end61.i_crit_edge:                 ; preds = %if.then35.i
  br label %if.end61.i

if.then35.i.for.end69.i_crit_edge:                ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end69.i

if.end61.i:                                       ; preds = %cleanup66.i.if.end61.i_crit_edge, %if.then35.i.if.end61.i_crit_edge
  %__ret37.122.i = phi i32 [ %__ret37.1.i, %cleanup66.i.if.end61.i_crit_edge ], [ %timeout.1, %if.then35.i.if.end61.i_crit_edge ]
  %call4121.i = phi i32 [ %call41.i, %cleanup66.i.if.end61.i_crit_edge ], [ %call4116.i, %if.then35.i.if.end61.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4121.i)
  %tobool62.not.i = icmp eq i32 %call4121.i, 0
  br i1 %tobool62.not.i, label %cleanup66.i, label %if.end61.i.__out71.i_crit_edge

if.end61.i.__out71.i_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out71.i

cleanup66.i:                                      ; preds = %if.end61.i
  %call65.i = call i32 @schedule_timeout(i32 noundef %__ret37.122.i) #12
  %call41.i = call i32 @prepare_to_wait_event(ptr noundef %event_queue40.i, ptr noundef nonnull %__wq_entry36.i, i32 noundef 1) #12
  %call.i.i3.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #12
  %16 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp45.i = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool49.not.i = icmp eq i32 %call65.i, 0
  %18 = select i1 %cmp45.i, i1 %tobool49.not.i, i1 false
  %__ret37.1.i = select i1 %18, i32 1, i32 %call65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.1.i)
  %tobool55.not.i = icmp eq i32 %__ret37.1.i, 0
  %19 = select i1 %cmp45.i, i1 true, i1 %tobool55.not.i
  br i1 %19, label %cleanup66.i.for.end69.i_crit_edge, label %cleanup66.i.if.end61.i_crit_edge

cleanup66.i.if.end61.i_crit_edge:                 ; preds = %cleanup66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i

cleanup66.i.for.end69.i_crit_edge:                ; preds = %cleanup66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end69.i

for.end69.i:                                      ; preds = %cleanup66.i.for.end69.i_crit_edge, %if.then35.i.for.end69.i_crit_edge
  call void @finish_wait(ptr noundef %event_queue40.i, ptr noundef nonnull %__wq_entry36.i) #12
  br label %__out71.i

__out71.i:                                        ; preds = %for.end69.i, %if.end61.i.__out71.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry36.i) #12
  br label %rsi_wait_event.exit

rsi_wait_event.exit:                              ; preds = %__out71.i, %if.else.i.rsi_wait_event.exit_crit_edge, %__out.i, %if.then.i.rsi_wait_event.exit_crit_edge
  %call.i.i.i19 = call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #12
  %20 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %event, align 4
  %21 = ptrtoint ptr %init_done to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %init_done, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not = icmp eq i8 %22, 0
  br i1 %tobool5.not, label %rsi_wait_event.exit.do.cond_crit_edge, label %if.then6

rsi_wait_event.exit.do.cond_crit_edge:            ; preds = %rsi_wait_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

if.then6:                                         ; preds = %rsi_wait_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @rsi_core_qos_processor(ptr noundef %common) #12
  br label %do.cond

do.cond:                                          ; preds = %if.then6, %rsi_wait_event.exit.do.cond_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %thread_done, i32 noundef 4) #12
  %23 = ptrtoint ptr %thread_done to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %thread_done, align 4
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  %completion = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 1
  call void @__asan_handle_no_return()
  call void @kthread_complete_and_exit(ptr noundef %completion, i32 noundef 0) #17
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_default_ps_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_bgscan_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_roc_timeout(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_coex_attach(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_91x_deinit(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.rsi_91x_deinit)
  %thread_done.i = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 6, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %thread_done.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_done.i, ptr %thread_done.i, i32 1, ptr elementtype(i32) %thread_done.i) #12, !srcloc !146
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #12
  %3 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %task.i = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 4
  %call.i = tail call i32 @kthread_stop(ptr noundef %5) #12
  %arrayidx = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 0
  tail call void @skb_queue_purge(ptr noundef %arrayidx) #12
  %arrayidx.1 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 1
  tail call void @skb_queue_purge(ptr noundef %arrayidx.1) #12
  %arrayidx.2 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 2
  tail call void @skb_queue_purge(ptr noundef %arrayidx.2) #12
  %arrayidx.3 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 3
  tail call void @skb_queue_purge(ptr noundef %arrayidx.3) #12
  %arrayidx.4 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 4
  tail call void @skb_queue_purge(ptr noundef %arrayidx.4) #12
  %arrayidx.5 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 5
  tail call void @skb_queue_purge(ptr noundef %arrayidx.5) #12
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp3 = icmp ugt i8 %7, 1
  br i1 %cmp3, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %bt_adapter = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 78
  %8 = ptrtoint ptr %bt_adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bt_adapter, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1), align 4
  tail call void %10(ptr noundef nonnull %9) #12
  %11 = ptrtoint ptr %bt_adapter to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bt_adapter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  tail call void @rsi_coex_detach(ptr noundef %1) #12
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %init_done = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 29
  %12 = ptrtoint ptr %init_done to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %init_done, align 4
  tail call void @kfree(ptr noundef %1) #12
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %13 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rsi_dev, align 4
  tail call void @kfree(ptr noundef %14) #12
  tail call void @kfree(ptr noundef %adapter) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_coex_detach(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_91x_hal_module_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.rsi_91x_hal_module_init)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_91x_hal_module_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.rsi_91x_hal_module_exit)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_coex_send_pkt(ptr noundef, ptr noundef, i8 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_core_qos_processor(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kthread_complete_and_exit(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !54, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !84, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !114, !116, !117, !119, !120, !122, !124, !126, !127, !129, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @rsi_zone_enabled, !1, !"rsi_zone_enabled", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 28, i32 5}
!2 = !{ptr @__ksymtab_rsi_zone_enabled, !3, !"__ksymtab_rsi_zone_enabled", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 38, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 66, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rsi_dbg._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rsi_dbg._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_rsi_dbg, !11, !"__ksymtab_rsi_dbg", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 69, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 99, i32 20}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 100, i32 20}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 102, i32 20}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 105, i32 20}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 107, i32 20}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 217, i32 24}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 231, i32 22}
!26 = !{ptr @__func__.rsi_read_pkt, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 232, i32 5}
!28 = !{ptr @__ksymtab_rsi_read_pkt, !29, !"__ksymtab_rsi_read_pkt", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 244, i32 1}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 291, i32 4}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 313, i32 21}
!34 = !{ptr @__func__.rsi_91x_init, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 314, i32 4}
!36 = !{ptr @rsi_91x_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 326, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rsi_91x_init.__key.13, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 327, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rsi_91x_init.__key.15, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 328, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rsi_91x_init.__key.17, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 329, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 334, i32 11}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 335, i32 21}
!52 = !{ptr @rsi_91x_init.__key.21, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 341, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rsi_91x_init.__key.23, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 342, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 368, i32 21}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 375, i32 22}
!62 = !{ptr @__ksymtab_rsi_91x_init, !63, !"__ksymtab_rsi_91x_init", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 390, i32 1}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 403, i32 21}
!66 = !{ptr @__func__.rsi_91x_deinit, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 403, i32 55}
!68 = !{ptr @__ksymtab_rsi_91x_deinit, !69, !"__ksymtab_rsi_91x_deinit", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 426, i32 1}
!70 = !{ptr @__initcall__kmod_rsi_91x__353_455_rsi_91x_hal_module_init6, !71, !"__initcall__kmod_rsi_91x__353_455_rsi_91x_hal_module_init6", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 455, i32 1}
!72 = !{ptr @__exitcall_rsi_91x_hal_module_exit, !73, !"__exitcall_rsi_91x_hal_module_exit", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 456, i32 1}
!74 = !{ptr @__UNIQUE_ID_author354, !75, !"__UNIQUE_ID_author354", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 457, i32 1}
!76 = !{ptr @__UNIQUE_ID_description355, !77, !"__UNIQUE_ID_description355", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 458, i32 1}
!78 = !{ptr @__UNIQUE_ID_version356, !79, !"__UNIQUE_ID_version356", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 459, i32 1}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @__modver_attr, !79, !"__modver_attr", i1 false, i1 false}
!84 = !{ptr @__UNIQUE_ID_file357, !85, !"__UNIQUE_ID_file357", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 460, i32 1}
!86 = !{ptr @__UNIQUE_ID_license358, !85, !"__UNIQUE_ID_license358", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 75, i32 10}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 77, i32 10}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 79, i32 10}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 81, i32 10}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 83, i32 10}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 85, i32 10}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 87, i32 10}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 89, i32 10}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 91, i32 10}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 94, i32 9}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 128, i32 6}
!109 = !{ptr @__func__.rsi_prepare_skb, !108, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 132, i32 21}
!112 = !{ptr @g_proto_ops, !113, !"g_proto_ops", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 41, i32 29}
!114 = !{ptr @skb_queue_head_init.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!116 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @rsi_init_event.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 30, i32 2}
!119 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 66, i32 17}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 39, i32 12}
!124 = !{ptr @init_completion.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../include/linux/completion.h", i32 87, i32 2}
!126 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 438, i32 21}
!129 = !{ptr @__func__.rsi_91x_hal_module_init, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 438, i32 49}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 452, i32 21}
!133 = !{ptr @__func__.rsi_91x_hal_module_exit, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/rsi/rsi_91x_main.c", i32 452, i32 49}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
!145 = !{!"branch_weights", i32 1, i32 2000}
!146 = !{i64 2148349735, i64 2148349761, i64 2148349790, i64 2148349824, i64 2148349855, i64 2148349878}
!147 = !{i8 0, i8 2}
