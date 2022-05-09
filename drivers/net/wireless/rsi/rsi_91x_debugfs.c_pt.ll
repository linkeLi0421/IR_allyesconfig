; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rsi_init_dbgfs\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_init_dbgfs\09\09\09\09"
module asm "\09.long\09__crc_rsi_init_dbgfs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_init_dbgfs:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_init_dbgfs\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_init_dbgfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rsi_remove_dbgfs\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_remove_dbgfs\09\09\09\09"
module asm "\09.long\09__crc_rsi_remove_dbgfs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_remove_dbgfs:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_remove_dbgfs\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_remove_dbgfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rsi_dbg_files = type { ptr, i16, %struct.file_operations }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rsi_hw = type { ptr, i32, ptr, [3 x ptr], [4 x %struct.ieee80211_tx_queue_params], [6 x %struct.ieee80211_supported_band], ptr, i8, i32, i16, i32, %struct.rsi_ps_info, %struct.spinlock, i32, ptr, i8, ptr, %struct.timer_list, i8, i32, %struct.eepromrw_info, i32, i8, [2 x i8], ptr, ptr, ptr, ptr }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rsi_ps_info = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16, i32, i16, i32 }>
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.130 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.98, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.98 = type { i64, i64, i8 }
%struct.rsi_debugfs = type { ptr, ptr, [4 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.131, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.132, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.133, ptr, %struct.address_space, %struct.list_head, %union.anon.134, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.131 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.132 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.133 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.134 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { [8 x i8] }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.105, i32, %struct.spinlock }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, ptr }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rsi_91x_sdiodev = type { ptr, ptr, %struct.receive_info, i32, i32, i8, i32, [16 x i8], i16, i8, i8, %struct.rsi_thread, [8192 x i8] }
%struct.receive_info = type { i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@dev_debugfs_files = internal constant { [4 x %struct.rsi_dbg_files], [128 x i8] } { [4 x %struct.rsi_dbg_files] [%struct.rsi_dbg_files { ptr @.str.1, i16 420, %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rsi_version_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.rsi_dbg_files { ptr @.str.2, i16 420, %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rsi_stats_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.rsi_dbg_files { ptr @.str.3, i16 438, %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @rsi_debug_zone_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rsi_debug_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.rsi_dbg_files { ptr @.str.4, i16 420, %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rsi_sdio_stats_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }], [128 x i8] zeroinitializer }, align 32
@__kstrtab_rsi_init_dbgfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_init_dbgfs = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_init_dbgfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_init_dbgfs to i32), ptr @__kstrtab_rsi_init_dbgfs, ptr @__kstrtabns_rsi_init_dbgfs }, section "___ksymtab_gpl+rsi_init_dbgfs", align 4
@__kstrtab_rsi_remove_dbgfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_remove_dbgfs = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_remove_dbgfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_remove_dbgfs to i32), ptr @__kstrtab_rsi_remove_dbgfs, ptr @__kstrtabns_rsi_remove_dbgfs }, section "___ksymtab_gpl+rsi_remove_dbgfs", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debug_zone\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdio_stats\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LMAC   : %d.%d.%d.%d\0A\00", [42 x i8] zeroinitializer }, align 32
@rsi_stats_read.fsm_state = internal constant { [10 x [32 x i8]], [64 x i8] } { [10 x [32 x i8]] [[32 x i8] c"FSM_FW_NOT_LOADED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FSM_CARD_NOT_READY\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FSM_COMMON_DEV_PARAMS_SENT\00\00\00\00\00\00", [32 x i8] c"FSM_BOOT_PARAMS_SENT\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FSM_EEPROM_READ_MAC_ADDR\00\00\00\00\00\00\00\00", [32 x i8] c"FSM_EEPROM_READ_RF_TYPE\00\00\00\00\00\00\00\00\00", [32 x i8] c"FSM_RESET_MAC_SENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FSM_RADIO_CAPS_SENT\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FSM_BB_RF_PROG_SENT\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FSM_MAC_INIT_DONE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [64 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"==> RSI STA DRIVER STATUS <==\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRIVER_FSM_STATE: \00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(%d)\0A\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"total_mgmt_pkt_send : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"total_mgmt_pkt_queued : %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"total_mgmt_pkt_freed  : %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"total_data_vo_pkt_send: %8d\09\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"total_data_vo_pkt_queued:  %8d\09\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"total_vo_pkt_freed: %8d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"total_data_vi_pkt_send: %8d\09\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"total_data_vi_pkt_queued:  %8d\09\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"total_vi_pkt_freed: %8d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"total_data_be_pkt_send: %8d\09\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"total_data_be_pkt_queued:  %8d\09\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"total_be_pkt_freed: %8d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"total_data_bk_pkt_send: %8d\09\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"total_data_bk_pkt_queued:  %8d\09\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"total_bk_pkt_freed: %8d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rsi_zone_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%x: rsi_enabled zone\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"The zones available are %#x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"total_sdio_interrupts: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sdio_msdu_pending_intr_count: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sdio_buff_full_count : %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdio_buf_semi_full_count %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdio_unknown_intr_count: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BUFFER FULL STATUS  : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SEMI BUFFER FULL STATUS  : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MGMT BUFFER FULL STATUS  : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BUFFER FULL COUNTER  : %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BUFFER SEMI FULL COUNTER  : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MGMT BUFFER FULL COUNTER  : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 295, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"dev_debugfs_files\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 268, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 269, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 270, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 271, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 272, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 86, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"fsm_state\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 120, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 132, i32 16 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 133, i32 16 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 140, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 143, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 145, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 147, i32 18 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 151, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 153, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 155, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 157, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 159, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 161, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 163, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 165, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 167, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 169, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 171, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 173, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 176, i32 16 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 203, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 204, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 34, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 36, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 38, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 40, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 42, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 45, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 47, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 49, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 51, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 53, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [46 x i8] c"../drivers/net/wireless/rsi/rsi_91x_debugfs.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 55, i32 18 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab_rsi_init_dbgfs, ptr @__ksymtab_rsi_remove_dbgfs, ptr @.str, ptr @dev_debugfs_files, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rsi_stats_read.fsm_state, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_debugfs_files to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_stats_read.fsm_state to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_init_dbgfs(ptr nocapture noundef %adapter) #0 align 64 {
entry:
  %devdir = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %devdir) #5
  %2 = call ptr @memset(ptr %devdir, i32 255, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dfsentry = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 14
  %4 = ptrtoint ptr %dfsentry to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %dfsentry, align 4
  %hw = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 2
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.wiphy_name.exit_crit_edge

if.end.wiphy_name.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.end.wiphy_name.exit_crit_edge ]
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %devdir, i32 noundef 6, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i)
  %call4 = call ptr @debugfs_create_dir(ptr noundef nonnull %devdir, ptr noundef null) #5
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4, ptr %call7.i.i, align 8
  %num_debugfs_entries = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 15
  %14 = ptrtoint ptr %num_debugfs_entries to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_debugfs_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp26.not = icmp eq i8 %15, 0
  br i1 %cmp26.not, label %wiphy_name.exit.cleanup_crit_edge, label %wiphy_name.exit.for.body_crit_edge

wiphy_name.exit.for.body_crit_edge:               ; preds = %wiphy_name.exit
  br label %for.body

wiphy_name.exit.cleanup_crit_edge:                ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %wiphy_name.exit.for.body_crit_edge
  %ii.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %wiphy_name.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.rsi_dbg_files], ptr @dev_debugfs_files, i32 0, i32 %ii.027
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %perms = getelementptr [4 x %struct.rsi_dbg_files], ptr @dev_debugfs_files, i32 0, i32 %ii.027, i32 1
  %18 = ptrtoint ptr %perms to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %perms, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %fops = getelementptr [4 x %struct.rsi_dbg_files], ptr @dev_debugfs_files, i32 0, i32 %ii.027, i32 2
  %call7 = call ptr @debugfs_create_file(ptr noundef %17, i16 noundef zeroext %19, ptr noundef %21, ptr noundef %1, ptr noundef %fops) #5
  %arrayidx8 = getelementptr %struct.rsi_debugfs, ptr %call7.i.i, i32 0, i32 2, i32 %ii.027
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %ii.027, 1
  %23 = ptrtoint ptr %num_debugfs_entries to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_debugfs_entries, align 4
  %conv = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %wiphy_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %wiphy_name.exit.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %devdir) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_remove_dbgfs(ptr nocapture noundef readonly %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 14
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @debugfs_remove(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_version_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rsi_version_read, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rsi_stats_read, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_debug_zone_write(ptr nocapture noundef readnone %filp, ptr noundef %buff, i32 noundef %len, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %dbg_zone = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbg_zone) #5
  %0 = ptrtoint ptr %dbg_zone to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dbg_zone, align 4, !annotation !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtoul_from_user(ptr noundef %buff, i32 noundef %len, i32 noundef 16, ptr noundef nonnull %dbg_zone) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %dbg_zone to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dbg_zone, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rsi_zone_enabled to i32))
  store i32 %2, ptr @rsi_zone_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbg_zone) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_debug_read(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rsi_debug_zone_read, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_sdio_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rsi_sdio_stats_read, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_version_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lmac_ver = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lmac_ver to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %lmac_ver, align 1
  %conv = zext i16 %3 to i32
  %minor = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %minor, align 1
  %conv2 = zext i16 %5 to i32
  %release_num = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %release_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %release_num, align 1
  %conv4 = zext i8 %7 to i32
  %patch_num = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %patch_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %patch_num, align 1
  %conv6 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_stats_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.6) #5
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.7) #5
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp ult i32 %3, 10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [10 x [32 x i8]], ptr @rsi_stats_read.fsm_state, i32 0, i32 %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str, ptr noundef %arrayidx) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsm_state, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i32 noundef %5) #5
  %tx_stats = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 22
  %arrayidx3 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 22, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef %7) #5
  %qlen.i = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 4, i32 1
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %9) #5
  %total_tx_pkt_freed = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 22, i32 1
  %arrayidx6 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 22, i32 1, i32 4
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %11) #5
  %arrayidx9 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 22, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef %13) #5
  %qlen.i80 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 3, i32 1
  %14 = ptrtoint ptr %qlen.i80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i80, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i32 noundef %15) #5
  %arrayidx15 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 22, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14, i32 noundef %17) #5
  %arrayidx18 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 22, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, i32 noundef %19) #5
  %qlen.i81 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 2, i32 1
  %20 = ptrtoint ptr %qlen.i81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i81, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.16, i32 noundef %21) #5
  %arrayidx24 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 22, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, i32 noundef %23) #5
  %arrayidx27 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 22, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx27, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.18, i32 noundef %25) #5
  %qlen.i82 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 1, i32 1
  %26 = ptrtoint ptr %qlen.i82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i82, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.19, i32 noundef %27) #5
  %arrayidx33 = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 22, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx33, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.20, i32 noundef %29) #5
  %30 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_stats, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.21, i32 noundef %31) #5
  %qlen.i83 = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 7, i32 0, i32 1
  %32 = ptrtoint ptr %qlen.i83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen.i83, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.22, i32 noundef %33) #5
  %34 = ptrtoint ptr %total_tx_pkt_freed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %total_tx_pkt_freed, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.23, i32 noundef %35) #5
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.24) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_debug_zone_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rsi_zone_enabled to i32))
  %0 = load i32, ptr @rsi_zone_enabled, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.25, i32 noundef %0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rsi_zone_enabled to i32))
  %1 = load i32, ptr @rsi_zone_enabled, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.26, i32 noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_sdio_stats_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsi_dev, align 4
  %rx_info = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 2
  %sdio_int_counter = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %sdio_int_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdio_int_counter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.27, i32 noundef %7) #5
  %total_sdio_msdu_pending_intr = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %total_sdio_msdu_pending_intr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_sdio_msdu_pending_intr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, i32 noundef %9) #5
  %buf_full_counter = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 2, i32 10
  %10 = ptrtoint ptr %buf_full_counter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_full_counter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.29, i32 noundef %11) #5
  %buf_semi_full_counter = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %buf_semi_full_counter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_semi_full_counter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, i32 noundef %13) #5
  %total_sdio_unknown_intr = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 2, i32 9
  %14 = ptrtoint ptr %total_sdio_unknown_intr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_sdio_unknown_intr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.31, i32 noundef %15) #5
  %16 = ptrtoint ptr %rx_info to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rx_info, align 4, !range !94
  %18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.32, i32 noundef %18) #5
  %semi_buffer_full = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %semi_buffer_full to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %semi_buffer_full, align 1, !range !94
  %21 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.33, i32 noundef %21) #5
  %mgmt_buffer_full = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %mgmt_buffer_full to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mgmt_buffer_full, align 2, !range !94
  %24 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.34, i32 noundef %24) #5
  %25 = ptrtoint ptr %buf_full_counter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_full_counter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.35, i32 noundef %26) #5
  %27 = ptrtoint ptr %buf_semi_full_counter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_semi_full_counter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.36, i32 noundef %28) #5
  %mgmt_buf_full_counter = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %mgmt_buf_full_counter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mgmt_buf_full_counter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.37, i32 noundef %30) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 295, i32 35}
!2 = !{ptr @__ksymtab_rsi_init_dbgfs, !3, !"__ksymtab_rsi_init_dbgfs", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 311, i32 1}
!4 = !{ptr @__ksymtab_rsi_remove_dbgfs, !5, !"__ksymtab_rsi_remove_dbgfs", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 329, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 269, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 270, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 271, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 272, i32 3}
!14 = !{ptr @dev_debugfs_files, !15, !"dev_debugfs_files", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 268, i32 35}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 86, i32 18}
!18 = !{ptr @rsi_stats_read.fsm_state, !19, !"fsm_state", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 120, i32 29}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 132, i32 16}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 133, i32 16}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 140, i32 18}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 143, i32 18}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 145, i32 18}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 147, i32 18}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 151, i32 18}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 153, i32 18}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 155, i32 18}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 157, i32 18}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 159, i32 18}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 161, i32 18}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 163, i32 19}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 165, i32 18}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 167, i32 18}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 169, i32 18}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 171, i32 18}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 173, i32 18}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 176, i32 16}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 203, i32 20}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 204, i32 18}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 34, i32 18}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 36, i32 18}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 38, i32 18}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 40, i32 18}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 42, i32 18}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 45, i32 18}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 47, i32 18}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 49, i32 18}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 51, i32 18}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 53, i32 18}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/rsi/rsi_91x_debugfs.c", i32 55, i32 18}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i8 0, i8 2}
