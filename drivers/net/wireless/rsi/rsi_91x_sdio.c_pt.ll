; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.98 }
%union.anon.98 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsi_host_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rsi_mod_ops = type { ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }
%struct.rsi_91x_sdiodev = type { ptr, ptr, %struct.receive_info, i32, i32, i8, i32, [16 x i8], i16, i8, i8, %struct.rsi_thread, [8192 x i8] }
%struct.receive_info = type { i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon.129 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { [8 x i8] }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.134, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.134 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.125 = type { i64, i64, i8 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }

@__param_str_dev_oper_mode = internal constant [23 x i8] c"rsi_sdio.dev_oper_mode\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@dev_oper_mode = internal global { i16, [30 x i8] } { i16 13, [30 x i8] zeroinitializer }, align 32
@__param_dev_oper_mode = internal constant %struct.kernel_param { ptr @__param_str_dev_oper_mode, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.98 { ptr @dev_oper_mode } }, section "__param", align 4
@__UNIQUE_ID_dev_oper_modetype371 = internal constant [39 x i8] c"rsi_sdio.parmtype=dev_oper_mode:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_oper_mode372 = internal constant [256 x i8] c"rsi_sdio.parm=dev_oper_mode:1[Wi-Fi alone], 4[BT classic alone], 8[BT LE alone], 12[BT classic + BT LE alone], 5[Wi-Fi STA + BT classic], 9[Wi-Fi STA + BT LE], 13[Wi-Fi STA + BT classic + BT LE], 6[Wi-Fi AP + BT classic], 14[Wi-Fi AP + BT classic + BT LE]\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: unable to send ack\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_ack_intr = private unnamed_addr constant [18 x i8] c"rsi_sdio_ack_intr\00", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Stopping card writes\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_write_register_multiple = private unnamed_addr constant [33 x i8] c"rsi_sdio_write_register_multiple\00", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Continue card writes\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Synch Cmd53 write failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Pkt size is zero\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_host_intf_read_pkt = private unnamed_addr constant [28 x i8] c"rsi_sdio_host_intf_read_pkt\00", align 1
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Failed to read frame: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__initcall__kmod_rsi_sdio__373_1566_rsi_module_init6 = internal global ptr @rsi_module_init, section ".initcall6.init", align 4
@__exitcall_rsi_module_exit = internal global ptr @rsi_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author374 = internal constant [36 x i8] c"rsi_sdio.author=Redpine Signals Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description375 = internal constant [55 x i8] c"rsi_sdio.description=Common SDIO layer for RSI drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware376 = internal constant [39 x i8] c"rsi_sdio.firmware=rs9113_wlan_qspi.rps\00", section ".modinfo", align 1
@__UNIQUE_ID_version377 = internal constant [21 x i8] c"rsi_sdio.version=0.1\00", section ".modinfo", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rsi_sdio\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.7, ptr @.str.8 }, section "__modver", align 4
@__UNIQUE_ID_file378 = internal constant [48 x i8] c"rsi_sdio.file=drivers/net/wireless/rsi/rsi_sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license379 = internal constant [30 x i8] c"rsi_sdio.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Synch Cmd53 read failed\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_read_register_multiple = private unnamed_addr constant [32 x i8] c"rsi_sdio_read_register_multiple\00", align 1
@rsi_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.11, ptr @rsi_dev_table, ptr @rsi_probe, ptr @rsi_disconnect, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsi_shutdown, ptr null, ptr null, ptr null, ptr null, ptr @rsi_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Registering driver\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.rsi_module_init = private unnamed_addr constant [16 x i8] c"rsi_module_init\00", align 1
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RSI-SDIO WLAN\00", [18 x i8] zeroinitializer }, align 32
@rsi_dev_table = internal constant { [3 x %struct.sdio_device_id], [60 x i8] } { [3 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 1051, i16 -27856, i32 0 }, %struct.sdio_device_id { i8 -1, i16 1051, i16 -28394, i32 0 }, %struct.sdio_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@rsi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rsi_suspend, ptr null, ptr @rsi_freeze, ptr @rsi_thaw, ptr null, ptr @rsi_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Init function called\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rsi_probe = private unnamed_addr constant [10 x i8] c"rsi_probe\00", align 1
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Failed to init os intf ops\0A\00", [32 x i8] zeroinitializer }, align 32
@sdio_host_intf_ops = internal global { %struct.rsi_host_intf_ops, [56 x i8] } { %struct.rsi_host_intf_ops { ptr @rsi_sdio_host_intf_read_pkt, ptr @rsi_sdio_host_intf_write_pkt, ptr @rsi_sdio_master_access_msword, ptr @rsi_sdio_read_register_multiple, ptr @rsi_sdio_write_register_multiple, ptr @rsi_sdio_master_reg_read, ptr @rsi_sdio_master_reg_write, ptr @rsi_sdio_load_data_master_write, ptr @rsi_sdio_reinit_device, ptr @rsi_sdio_ta_reset }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to init sdio interface\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: 9113 module detected\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: 9116 module detected\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Unsupported RSI device id 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDIO-RX-Thread\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unable to init rx thrd\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Failed to request IRQ\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Registered Interrupt handler\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Failed in device init\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"===> RSI Device Init Done <===\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Unable to set ms word reg\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed in probe...Exiting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Unable to write onto the card: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_host_intf_write_pkt = private unnamed_addr constant [29 x i8] c"rsi_sdio_host_intf_write_pkt\00", align 1
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Successfully written onto card\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Unable to set ms word to common reg\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_master_reg_read = private unnamed_addr constant [25 x i8] c"rsi_sdio_master_reg_read\00", align 1
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: AHB register read failed\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.rsi_sdio_master_reg_write = private unnamed_addr constant [26 x i8] c"rsi_sdio_master_reg_write\00", align 1
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Unable to do AHB reg write\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ins_size: %d, num_blocks: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_load_data_master_write = private unnamed_addr constant [32 x i8] c"rsi_sdio_load_data_master_write\00", align 1
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: failed to write\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: loading block: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Written Last Block in Address 0x%x Successfully\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Reset failed : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rsi_reset_card = private unnamed_addr constant [15 x i8] c"rsi_reset_card\00", align 1
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: CMD0 failed : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: CMD5 failed : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: card in not ready : %d %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: CMD3 failed : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: CMD7 failed : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Set high speed mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: CCCR speed reg read failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: CCR speed regwrite failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Set bus mode failed : %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Unable to set block length\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_setupcard = private unnamed_addr constant [14 x i8] c"rsi_setupcard\00", align 1
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Setting the block length\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.rsi_setblocklength = private unnamed_addr constant [19 x i8] c"rsi_setblocklength\00", align 1
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Operational blk length is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to set ms word to common reg\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Bring TA out of reset\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_ta_reset = private unnamed_addr constant [18 x i8] c"rsi_sdio_ta_reset\00", align 1
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to hold TA threads\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to get TA out of reset\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to Reset TA PC value\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to release TA threads\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"***** TA Reset done *****\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Failed to enable interface\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_init_sdio_interface = private unnamed_addr constant [24 x i8] c"rsi_init_sdio_interface\00", align 1
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Enabled the interface\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Failed to setup card\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Setup card successfully\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to init slave regs\0A\00", [33 x i8] zeroinitializer }, align 32
@rsi_init_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pevent->event_queue\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rsi_bt_ops = external dso_local local_unnamed_addr constant %struct.rsi_mod_ops, align 4
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"##### RSI SDIO device disconnected #####\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Writing disable to wakeup register\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to write SDIO wakeup register\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.rsi_reset_chip = private unnamed_addr constant [15 x i8] c"rsi_reset_chip\00", align 1
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to Read Intr Status Register\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Intr Status Register value = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Unable to hold Thread-Arch processor threads\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write to intr timer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to write to system reset timer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to write to mode and restart\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"***** Watch Dog Reset Successful *****\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDIO Bus shutdown =====>\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to configure WoWLAN\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"###### Device is not ready #######\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Setting power management caps failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"***** RSI module shut down *****\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Waiting for interrupts to be cleared..\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Interrupts cleared\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to read int enable register\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_disable_interrupts = private unnamed_addr constant [28 x i8] c"rsi_sdio_disable_interrupts\00", align 1
@.str.82 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to write to int enable register\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"int enable reg content = %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Set sdio keep pwr flag failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device is not ready\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SDIO Bus freeze ===>\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"##### Device can not wake up through WLAN\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"***** RSI module freezed *****\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SDIO Bus thaw =====>\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"***** RSI module thaw done *****\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_enable_interrupts = private unnamed_addr constant [27 x i8] c"rsi_sdio_enable_interrupts\00", align 1
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDIO Bus restore ======>\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RSI module restored\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Unregistering driver\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rsi_module_exit = private unnamed_addr constant [16 x i8] c"rsi_module_exit\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 37142, i64 37680]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"dev_oper_mode\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 25, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 478, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 535, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 542, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 555, i32 21 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 811, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 821, i32 21 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1573, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 511, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"rsi_driver\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1526, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1550, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1527, i32 16 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"rsi_dev_table\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1520, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant [11 x i8] c"rsi_pm_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1511, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1017, i32 21 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1021, i32 21 }
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"sdio_host_intf_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 988, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1029, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1036, i32 21 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1039, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1043, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1051, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1053, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1059, i32 21 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1065, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1068, i32 21 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1072, i32 21 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1075, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1096, i32 20 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 789, i32 21 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 791, i32 24 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 660, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 679, i32 21 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 747, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 578, i32 21 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 600, i32 22 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 603, i32 22 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 634, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 181, i32 21 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 225, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 231, i32 21 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 251, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 263, i32 21 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 277, i32 21 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 283, i32 21 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 286, i32 22 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 294, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 322, i32 22 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 393, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 364, i32 21 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 371, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 930, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 934, i32 21 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 941, i32 21 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 951, i32 21 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 961, i32 21 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 972, i32 21 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 981, i32 21 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 851, i32 21 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 856, i32 21 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 865, i32 21 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 869, i32 21 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 873, i32 21 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 30, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/rsi/rsi_common.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 66, i32 17 }
@___asan_gen_.301 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 87, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1251, i32 20 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1126, i32 21 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1130, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1137, i32 21 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1141, i32 21 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1157, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1183, i32 22 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1190, i32 5 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1197, i32 5 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1199, i32 21 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1464, i32 20 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1470, i32 22 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1482, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1485, i32 22 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1487, i32 21 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1277, i32 21 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1282, i32 22 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1284, i32 21 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1290, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1299, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1310, i32 21 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1265, i32 21 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1368, i32 21 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1403, i32 21 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1415, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1432, i32 21 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1443, i32 20 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1451, i32 21 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1496, i32 21 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1507, i32 21 }
@___asan_gen_.397 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.398 = private constant [43 x i8] c"../drivers/net/wireless/rsi/rsi_91x_sdio.c\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1563, i32 21 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author374, ptr @__UNIQUE_ID_description375, ptr @__UNIQUE_ID_dev_oper_mode372, ptr @__UNIQUE_ID_dev_oper_modetype371, ptr @__UNIQUE_ID_file378, ptr @__UNIQUE_ID_firmware376, ptr @__UNIQUE_ID_license379, ptr @__UNIQUE_ID_version377, ptr @__exitcall_rsi_module_exit, ptr @__initcall__kmod_rsi_sdio__373_1566_rsi_module_init6, ptr @__modver_attr, ptr @__param_dev_oper_mode, ptr @dev_oper_mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rsi_driver, ptr @.str.10, ptr @.str.11, ptr @rsi_dev_table, ptr @rsi_pm_ops, ptr @.str.12, ptr @.str.13, ptr @sdio_host_intf_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @rsi_init_event.__key, ptr @.str.60, ptr @.str.61, ptr @init_completion.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_oper_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_dev_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_host_intf_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_init_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_sdio_read_register(ptr nocapture noundef readonly %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !267
  %sdio_irq_task = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %sdio_irq_task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdio_irq_task, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %4, %8
  br i1 %cmp.not, label %entry.if.then4_crit_edge, label %if.then, !prof !268

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %10) #8
  br label %if.then4

if.then4:                                         ; preds = %if.then, %entry.if.then4_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call6 = call zeroext i8 @sdio_f0_readb(ptr noundef %12, i32 noundef %addr, ptr noundef nonnull %status) #8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call6, ptr %data, align 1
  %14 = ptrtoint ptr %sdio_irq_task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdio_irq_task, align 4
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %cmp13.not = icmp eq ptr %15, %17
  br i1 %cmp13.not, label %if.then4.if.end23_crit_edge, label %if.then21, !prof !268

if.then4.if.end23_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %19) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then4.if.end23_crit_edge
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_sdio_write_register(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %function, i32 noundef %addr, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  %sdio_irq_task = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %sdio_irq_task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdio_irq_task, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %4, %8
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !268

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %function)
  %cmp2 = icmp eq i8 %function, 0
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @sdio_f0_writeb(ptr noundef %12, i8 noundef zeroext %14, i32 noundef %addr, ptr noundef nonnull %status) #8
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @sdio_writeb(ptr noundef %12, i8 noundef zeroext %14, i32 noundef %addr, ptr noundef nonnull %status) #8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %15 = ptrtoint ptr %sdio_irq_task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdio_irq_task, align 4
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %cmp11.not = icmp eq ptr %16, %18
  br i1 %cmp11.not, label %if.end7.if.end21_crit_edge, label %if.then19, !prof !268

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %20) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end7.if.end21_crit_edge
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_f0_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_sdio_ack_intr(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %int_bit) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status.i, align 4
  %sdio_irq_task.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %sdio_irq_task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdio_irq_task.i, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %4, %8
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i, !prof !268

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %10) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void @sdio_writeb(ptr noundef %12, i8 noundef zeroext %int_bit, i32 noundef 65544, ptr noundef nonnull %status.i) #8
  %13 = ptrtoint ptr %sdio_irq_task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdio_irq_task.i, align 4
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %cmp11.not.i = icmp eq ptr %14, %16
  br i1 %cmp11.not.i, label %if.end.i.rsi_sdio_write_register.exit_crit_edge, label %if.then19.i, !prof !268

if.end.i.rsi_sdio_write_register.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_write_register.exit

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %18) #8
  br label %rsi_sdio_write_register.exit

rsi_sdio_write_register.exit:                     ; preds = %if.then19.i, %if.end.i.rsi_sdio_write_register.exit_crit_edge
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %rsi_sdio_write_register.exit.if.end_crit_edge, label %if.then

rsi_sdio_write_register.exit.if.end_crit_edge:    ; preds = %rsi_sdio_write_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %rsi_sdio_write_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rsi_sdio_ack_intr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %rsi_sdio_write_register.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_sdio_write_register_multiple(ptr nocapture noundef readonly %adapter, i32 noundef %addr, ptr noundef %data, i16 noundef zeroext %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %write_fail = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %write_fail to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %write_fail, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp ugt i8 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_sdio_write_register_multiple) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp4 = icmp eq i8 %3, 1
  br i1 %cmp4, label %if.then6, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rsi_sdio_write_register_multiple) #8
  %4 = ptrtoint ptr %write_fail to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %write_fail, align 2
  %inc = add i8 %5, 1
  store i8 %inc, ptr %write_fail, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else.if.end8_crit_edge
  %sdio_irq_task = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %sdio_irq_task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdio_irq_task, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cmp9.not = icmp eq ptr %7, %11
  br i1 %cmp9.not, label %if.end8.if.end13_crit_edge, label %if.then12, !prof !268

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %13) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv15 = zext i16 %count to i32
  %call16 = tail call i32 @sdio_writesb(ptr noundef %15, i32 noundef %addr, ptr noundef %data, i32 noundef %conv15) #8
  %16 = ptrtoint ptr %sdio_irq_task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdio_irq_task, align 4
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %cmp20.not = icmp eq ptr %17, %19
  br i1 %cmp20.not, label %if.end13.if.end30_crit_edge, label %if.then28, !prof !268

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %21) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end13.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool31.not = icmp eq i32 %call16, 0
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rsi_sdio_write_register_multiple, i32 noundef %call16) #8
  %22 = ptrtoint ptr %write_fail to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %write_fail, align 2
  br label %cleanup

if.else34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %prev_desc = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 7
  %23 = call ptr @memcpy(ptr %prev_desc, ptr %data, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %if.then32, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.else34 ], [ %call16, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_sdio_host_intf_read_pkt(ptr nocapture noundef readonly %adapter, ptr noundef %pkt, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rsi_sdio_host_intf_read_pkt) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rsi_dev.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev.i, align 4
  %sdio_irq_task.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sdio_irq_task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdio_irq_task.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %3, %7
  br i1 %cmp.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i, !prof !268

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %9) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %conv.i = and i32 %length, 65535
  %call3.i = tail call i32 @sdio_readsb(ptr noundef %11, ptr noundef %pkt, i32 noundef %length, i32 noundef %conv.i) #8
  %12 = ptrtoint ptr %sdio_irq_task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdio_irq_task.i, align 4
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp7.not.i = icmp eq ptr %13, %15
  br i1 %cmp7.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then15.i, !prof !268

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %17) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp18.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp18.not.i, label %if.end17.i.cleanup_crit_edge, label %if.then2

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rsi_sdio_read_register_multiple) #8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rsi_sdio_host_intf_read_pkt, i32 noundef %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end17.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call3.i, %if.then2 ], [ 0, %if.end17.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_sdio_read_register_multiple(ptr nocapture noundef readonly %adapter, i32 noundef %addr, ptr noundef %data, i16 noundef zeroext %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %sdio_irq_task = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sdio_irq_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdio_irq_task, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %3, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !268

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %conv = zext i16 %count to i32
  %call3 = tail call i32 @sdio_readsb(ptr noundef %11, ptr noundef %data, i32 noundef %addr, i32 noundef %conv) #8
  %12 = ptrtoint ptr %sdio_irq_task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdio_irq_task, align 4
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cmp7.not = icmp eq ptr %13, %15
  br i1 %cmp7.not, label %if.end.if.end17_crit_edge, label %if.then15, !prof !268

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %17) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp18.not = icmp eq i32 %call3, 0
  br i1 %cmp18.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rsi_sdio_read_register_multiple) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_module_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @rsi_driver) #8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.rsi_module_init) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_module_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdio_unregister_driver(ptr noundef nonnull @rsi_driver) #8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.rsi_module_exit) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_probe(ptr noundef %pfunction, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rsi_probe) #8
  %0 = load i16, ptr @dev_oper_mode, align 2
  %call = tail call ptr @rsi_91x_init(i16 noundef zeroext %0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.rsi_probe) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rsi_host_intf = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %rsi_host_intf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rsi_host_intf, align 4
  %host_intf_ops = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 25
  %2 = ptrtoint ptr %host_intf_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sdio_host_intf_ops, ptr %host_intf_ops, align 4
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8400, i32 noundef 3520, i32 noundef 2) #11
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %rsi_dev.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 24
  %3 = ptrtoint ptr %rsi_dev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i.i.i.i, ptr %rsi_dev.i, align 4
  tail call void @sdio_claim_host(ptr noundef %pfunction) #8
  %enable_timeout.i = getelementptr inbounds %struct.sdio_func, ptr %pfunction, i32 0, i32 9
  %4 = ptrtoint ptr %enable_timeout.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %enable_timeout.i, align 8
  %call1.i = tail call i32 @sdio_enable_func(ptr noundef %pfunction) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.rsi_init_sdio_interface) #8
  br label %if.then3.sink.split

if.end4.i:                                        ; preds = %if.end.i
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.rsi_init_sdio_interface) #8
  %5 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pfunction, ptr %call1.i.i.i.i, align 4096
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %pfunction, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev.i, ptr %device.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %pfunction, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call7.i = tail call fastcc i32 @rsi_setupcard(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end4.i.fail.i_crit_edge

if.end4.i.fail.i_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end10.i:                                       ; preds = %if.end4.i
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.rsi_init_sdio_interface) #8
  %call11.i = tail call i32 @rsi_init_sdio_slave_regs(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end4, label %if.end10.i.fail.i_crit_edge

if.end10.i.fail.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

fail.i:                                           ; preds = %if.end10.i.fail.i_crit_edge, %if.end4.i.fail.i_crit_edge
  %.str.59.sink.i = phi ptr [ @.str.57, %if.end4.i.fail.i_crit_edge ], [ @.str.59, %if.end10.i.fail.i_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.59.sink.i, ptr noundef nonnull @__func__.rsi_init_sdio_interface) #8
  %call15.i = tail call i32 @sdio_disable_func(ptr noundef %pfunction) #8
  br label %if.then3.sink.split

if.then3.sink.split:                              ; preds = %fail.i, %if.then3.i
  tail call void @sdio_release_host(ptr noundef %pfunction) #8
  br label %if.then3

if.then3:                                         ; preds = %if.then3.sink.split, %if.end.if.then3_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rsi_probe) #8
  br label %fail_free_adapter

if.end4:                                          ; preds = %if.end10.i
  tail call void @sdio_release_host(ptr noundef %pfunction) #8
  %determine_event_timeout.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 27
  %8 = ptrtoint ptr %determine_event_timeout.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rsi_sdio_determine_event_timeout, ptr %determine_event_timeout.i, align 4
  %check_hw_queue_status.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 26
  %9 = ptrtoint ptr %check_hw_queue_status.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rsi_sdio_check_buffer_status, ptr %check_hw_queue_status.i, align 4
  %num_debugfs_entries.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 15
  %10 = ptrtoint ptr %num_debugfs_entries.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %num_debugfs_entries.i, align 4
  %device = getelementptr inbounds %struct.sdio_func, ptr %pfunction, i32 0, i32 6
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.else13 [
    i16 -27856, label %if.end4.if.end17_crit_edge
    i16 -28394, label %if.then11
  ]

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.else13:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %12 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rsi_probe, i32 noundef %conv) #8
  br label %fail_free_adapter

if.end17:                                         ; preds = %if.then11, %if.end4.if.end17_crit_edge
  %.str.16.sink = phi ptr [ @.str.16, %if.then11 ], [ @.str.15, %if.end4.if.end17_crit_edge ]
  %.sink = phi i32 [ 1, %if.then11 ], [ 0, %if.end4.if.end17_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.16.sink, ptr noundef nonnull @__func__.rsi_probe) #8
  %device_model12 = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %device_model12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %device_model12, align 4
  %15 = ptrtoint ptr %rsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rsi_dev.i, align 4
  %event = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %16, i32 0, i32 11, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #8
  %17 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %event, align 4
  %event_queue.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %16, i32 0, i32 11, i32 3, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %event_queue.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @rsi_init_event.__key) #8
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %completion.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %16, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %16, i32 0, i32 11, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @init_completion.__key) #8
  %thread_done.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %16, i32 0, i32 11, i32 4
  %call.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i, i32 noundef 4) #8
  %21 = ptrtoint ptr %thread_done.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %thread_done.i, align 4
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rsi_sdio_rx_thread, ptr noundef %19, i32 noundef -1, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.18) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rsi_create_kthread.exit, label %rsi_create_kthread.exit.thread

rsi_create_kthread.exit.thread:                   ; preds = %if.end17
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #8
  %22 = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %16, i32 0, i32 11, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %22, align 4
  tail call void @sdio_claim_host(ptr noundef %pfunction) #8
  %call24 = tail call i32 @sdio_claim_irq(ptr noundef %pfunction, ptr noundef nonnull @rsi_handle_interrupt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

rsi_create_kthread.exit:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %24 = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %16, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %24, align 4
  %26 = ptrtoint ptr %call.i to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rsi_probe) #8
  br label %fail_kill_thread

if.then26:                                        ; preds = %rsi_create_kthread.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.rsi_probe) #8
  br label %fail_claim_irq

if.end27:                                         ; preds = %rsi_create_kthread.exit.thread
  tail call void @sdio_release_host(ptr noundef %pfunction) #8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.rsi_probe) #8
  %call28 = tail call i32 @rsi_hal_device_init(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.fail_dev_init_crit_edge

if.end27.fail_dev_init_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_dev_init

if.end31:                                         ; preds = %if.end27
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.23) #8
  %call32 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef nonnull %call, i16 noundef zeroext 16645) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.fail_dev_init_crit_edge

if.end31.fail_dev_init_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_dev_init

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  %hibernate_resume = getelementptr inbounds %struct.rsi_common, ptr %28, i32 0, i32 58
  %29 = ptrtoint ptr %hibernate_resume to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %hibernate_resume, align 4
  %30 = load ptr, ptr %call, align 4
  %reinit_hw = getelementptr inbounds %struct.rsi_common, ptr %30, i32 0, i32 59
  %31 = ptrtoint ptr %reinit_hw to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %reinit_hw, align 1
  br label %cleanup

fail_dev_init:                                    ; preds = %if.end31.fail_dev_init_crit_edge, %if.end27.fail_dev_init_crit_edge
  %.str.24.sink = phi ptr [ @.str.22, %if.end27.fail_dev_init_crit_edge ], [ @.str.24, %if.end31.fail_dev_init_crit_edge ]
  %status.0 = phi i32 [ -22, %if.end27.fail_dev_init_crit_edge ], [ -5, %if.end31.fail_dev_init_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.24.sink, ptr noundef nonnull @__func__.rsi_probe) #8
  tail call void @sdio_claim_host(ptr noundef %pfunction) #8
  %call38 = tail call i32 @sdio_release_irq(ptr noundef %pfunction) #8
  br label %fail_claim_irq

fail_claim_irq:                                   ; preds = %fail_dev_init, %if.then26
  %status.1 = phi i32 [ -5, %if.then26 ], [ %status.0, %fail_dev_init ]
  tail call void @sdio_release_host(ptr noundef %pfunction) #8
  %call.i.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %thread_done.i, i32 1, i32 3, i32 1) #8
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_done.i, ptr %thread_done.i, i32 1, ptr elementtype(i32) %thread_done.i) #8, !srcloc !269
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #8
  %33 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %event, align 4
  tail call void @__wake_up(ptr noundef %event_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %22, align 4
  %call.i77 = tail call i32 @kthread_stop(ptr noundef %35) #8
  br label %fail_kill_thread

fail_kill_thread:                                 ; preds = %fail_claim_irq, %rsi_create_kthread.exit
  %status.2 = phi i32 [ %26, %rsi_create_kthread.exit ], [ %status.1, %fail_claim_irq ]
  tail call void @sdio_claim_host(ptr noundef %pfunction) #8
  %call41 = tail call i32 @sdio_disable_func(ptr noundef %pfunction) #8
  tail call void @sdio_release_host(ptr noundef %pfunction) #8
  br label %fail_free_adapter

fail_free_adapter:                                ; preds = %fail_kill_thread, %if.else13, %if.then3
  %status.3 = phi i32 [ -5, %if.then3 ], [ %status.2, %fail_kill_thread ], [ -22, %if.else13 ]
  tail call void @rsi_91x_deinit(ptr noundef nonnull %call) #8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rsi_probe) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_free_adapter, %if.end35, %if.then
  %retval.0 = phi i32 [ %status.3, %fail_free_adapter ], [ 0, %if.end35 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_disconnect(ptr noundef %pfunction) #0 align 64 {
entry:
  %status.i55.i = alloca i32, align 4
  %status.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %pfunction, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsi_dev, align 4
  %thread_done.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 11, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %thread_done.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_done.i, ptr %thread_done.i, i32 1, ptr elementtype(i32) %thread_done.i) #8, !srcloc !269
  %event.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 11, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 11, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %task.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 4
  %call.i = tail call i32 @kthread_stop(ptr noundef %7) #8
  tail call void @sdio_claim_host(ptr noundef %pfunction) #8
  %call3 = tail call i32 @sdio_release_irq(ptr noundef %pfunction) #8
  tail call void @sdio_release_host(ptr noundef %pfunction) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #8
  tail call void @rsi_mac80211_detach(ptr noundef nonnull %1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %29, i32 0, i32 45
  %30 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp = icmp ugt i8 %31, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %bt_adapter = getelementptr inbounds %struct.rsi_common, ptr %29, i32 0, i32 78
  %32 = ptrtoint ptr %bt_adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bt_adapter, align 4
  %tobool13.not = icmp eq ptr %33, null
  br i1 %tobool13.not, label %land.lhs.true.if.end19_crit_edge, label %if.then14

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1), align 4
  tail call void %34(ptr noundef nonnull %33) #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %bt_adapter18 = getelementptr inbounds %struct.rsi_common, ptr %36, i32 0, i32 78
  %37 = ptrtoint ptr %bt_adapter18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %bt_adapter18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 4) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end19.rsi_reset_chip.exit_crit_edge, label %if.end.i

if.end19.rsi_reset_chip.exit_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_reset_chip.exit

if.end.i:                                         ; preds = %if.end19
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.64) #8
  %39 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rsi_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #8
  %41 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %status.i.i, align 4
  %sdio_irq_task.i.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %sdio_irq_task.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdio_irq_task.i.i, align 4
  %44 = tail call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %43, %47
  br i1 %cmp.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i, !prof !268

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %40, align 4
  tail call void @sdio_claim_host(ptr noundef %49) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %40, align 4
  call void @sdio_f0_writeb(ptr noundef %51, i8 noundef zeroext 1, i32 noundef 255, ptr noundef nonnull %status.i.i) #8
  %52 = ptrtoint ptr %sdio_irq_task.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdio_irq_task.i.i, align 4
  %54 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i, align 8
  %cmp11.not.i.i = icmp eq ptr %53, %55
  br i1 %cmp11.not.i.i, label %if.end.i.i.rsi_sdio_write_register.exit.i_crit_edge, label %if.then19.i.i, !prof !268

if.end.i.i.rsi_sdio_write_register.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_write_register.exit.i

if.then19.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %40, align 4
  call void @sdio_release_host(ptr noundef %57) #8
  br label %rsi_sdio_write_register.exit.i

rsi_sdio_write_register.exit.i:                   ; preds = %if.then19.i.i, %if.end.i.i.rsi_sdio_write_register.exit.i_crit_edge
  %58 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i = icmp slt i32 %59, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %rsi_sdio_write_register.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.rsi_reset_chip) #8
  br label %err.i

if.end3.i:                                        ; preds = %rsi_sdio_write_register.exit.i
  call void @msleep(i32 noundef 20) #8
  %60 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rsi_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i55.i) #8
  %62 = ptrtoint ptr %status.i55.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %status.i55.i, align 4, !annotation !267
  %sdio_irq_task.i57.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %sdio_irq_task.i57.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdio_irq_task.i57.i, align 4
  %65 = call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i.i58.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i58.i to ptr
  %task.i59.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i59.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i59.i, align 8
  %cmp.not.i60.i = icmp eq ptr %64, %68
  br i1 %cmp.not.i60.i, label %if.end3.i.if.then4.i.i_crit_edge, label %if.then.i61.i, !prof !268

if.end3.i.if.then4.i.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i.i

if.then.i61.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %61, align 4
  call void @sdio_claim_host(ptr noundef %70) #8
  br label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i61.i, %if.end3.i.if.then4.i.i_crit_edge
  %71 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %61, align 4
  %call6.i.i = call zeroext i8 @sdio_f0_readb(ptr noundef %72, i32 noundef 249, ptr noundef nonnull %status.i55.i) #8
  %73 = ptrtoint ptr %sdio_irq_task.i57.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sdio_irq_task.i57.i, align 4
  %75 = ptrtoint ptr %task.i59.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task.i59.i, align 8
  %cmp13.not.i.i = icmp eq ptr %74, %76
  br i1 %cmp13.not.i.i, label %if.then4.i.i.rsi_sdio_read_register.exit.i_crit_edge, label %if.then21.i.i, !prof !268

if.then4.i.i.rsi_sdio_read_register.exit.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_read_register.exit.i

if.then21.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %61, align 4
  call void @sdio_release_host(ptr noundef %78) #8
  br label %rsi_sdio_read_register.exit.i

rsi_sdio_read_register.exit.i:                    ; preds = %if.then21.i.i, %if.then4.i.i.rsi_sdio_read_register.exit.i_crit_edge
  %79 = ptrtoint ptr %status.i55.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %status.i55.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i55.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp5.i = icmp slt i32 %80, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %rsi_sdio_read_register.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.rsi_reset_chip) #8
  br label %err.i

if.end7.i:                                        ; preds = %rsi_sdio_read_register.exit.i
  %conv.i = zext i8 %call6.i.i to i32
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.rsi_reset_chip, i32 noundef %conv.i) #8
  %call8.i = call i32 @rsi_sdio_master_access_msword(ptr noundef nonnull %1, i16 noundef zeroext 8704) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rsi_reset_chip) #8
  br label %err.i

if.end11.i:                                       ; preds = %if.end7.i
  %81 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 251658240, ptr %call7.i.i.i, align 8
  %call12.i = call i32 @rsi_sdio_write_register_multiple(ptr noundef nonnull %1, i32 noundef 67652, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.rsi_reset_chip) #8
  br label %err.i

if.end15.i:                                       ; preds = %if.end11.i
  call void @msleep(i32 noundef 100) #8
  %device_model.i = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 1
  %82 = ptrtoint ptr %device_model.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %device_model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp16.not.i = icmp eq i32 %83, 1
  br i1 %cmp16.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ulp_read_write(ptr noundef nonnull %1, i16 noundef zeroext 353, i32 noundef 0) #8
  call fastcc void @ulp_read_write(ptr noundef nonnull %1, i16 noundef zeroext 364, i32 noundef 2) #8
  call fastcc void @ulp_read_write(ptr noundef nonnull %1, i16 noundef zeroext 365, i32 noundef 0) #8
  call fastcc void @ulp_read_write(ptr noundef nonnull %1, i16 noundef zeroext 366, i32 noundef 50) #8
  call fastcc void @ulp_read_write(ptr noundef nonnull %1, i16 noundef zeroext 367, i32 noundef 0) #8
  call fastcc void @ulp_read_write(ptr noundef nonnull %1, i16 noundef zeroext 368, i32 noundef 698370) #8
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %84 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i56 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not.i57 = icmp eq ptr %call7.i.i.i56, null
  br i1 %tobool.not.i57, label %if.else.i.if.then22.i_crit_edge, label %if.end.i58

if.else.i.if.then22.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

if.end.i58:                                       ; preds = %if.else.i
  %85 = ptrtoint ptr %call7.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 5, ptr %call7.i.i.i56, align 8
  %call18.i59 = call i32 @rsi_sdio_master_access_msword(ptr noundef nonnull %1, i16 noundef zeroext 16688) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i59)
  %cmp19.i60 = icmp slt i32 %call18.i59, 0
  br i1 %cmp19.i60, label %if.end.i58.rsi_sdio_master_reg_write.exit70.thread73_crit_edge, label %if.end22.i63

if.end.i58.rsi_sdio_master_reg_write.exit70.thread73_crit_edge: ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit70.thread73

if.end22.i63:                                     ; preds = %if.end.i58
  %call25.i61 = call i32 @rsi_sdio_write_register_multiple(ptr noundef nonnull %1, i32 noundef 66304, ptr noundef nonnull %call7.i.i.i56, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i61)
  %cmp26.i62 = icmp slt i32 %call25.i61, 0
  br i1 %cmp26.i62, label %if.end22.i63.rsi_sdio_master_reg_write.exit70.thread73_crit_edge, label %rsi_sdio_master_reg_write.exit70

if.end22.i63.rsi_sdio_master_reg_write.exit70.thread73_crit_edge: ; preds = %if.end22.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit70.thread73

rsi_sdio_master_reg_write.exit70.thread73:        ; preds = %if.end22.i63.rsi_sdio_master_reg_write.exit70.thread73_crit_edge, %if.end.i58.rsi_sdio_master_reg_write.exit70.thread73_crit_edge
  %.str.30.sink.i64 = phi ptr [ @.str.28, %if.end.i58.rsi_sdio_master_reg_write.exit70.thread73_crit_edge ], [ @.str.30, %if.end22.i63.rsi_sdio_master_reg_write.exit70.thread73_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.30.sink.i64, ptr noundef nonnull @__func__.rsi_sdio_master_reg_write) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i56) #8
  br label %if.then22.i

rsi_sdio_master_reg_write.exit70:                 ; preds = %if.end22.i63
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i56) #8
  br label %if.end23.i

if.then22.i:                                      ; preds = %rsi_sdio_master_reg_write.exit70.thread73, %if.else.i.if.then22.i_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.69) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %rsi_sdio_master_reg_write.exit70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i41 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not.i42 = icmp eq ptr %call7.i.i.i41, null
  br i1 %tobool.not.i42, label %if.end23.i.if.then27.i_crit_edge, label %if.end.i43

if.end23.i.if.then27.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

if.end.i43:                                       ; preds = %if.end23.i
  %87 = ptrtoint ptr %call7.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4, ptr %call7.i.i.i41, align 8
  %call18.i44 = call i32 @rsi_sdio_master_access_msword(ptr noundef nonnull %1, i16 noundef zeroext 16688) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i44)
  %cmp19.i45 = icmp slt i32 %call18.i44, 0
  br i1 %cmp19.i45, label %if.end.i43.rsi_sdio_master_reg_write.exit55.thread78_crit_edge, label %if.end22.i48

if.end.i43.rsi_sdio_master_reg_write.exit55.thread78_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit55.thread78

if.end22.i48:                                     ; preds = %if.end.i43
  %call25.i46 = call i32 @rsi_sdio_write_register_multiple(ptr noundef nonnull %1, i32 noundef 66308, ptr noundef nonnull %call7.i.i.i41, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i46)
  %cmp26.i47 = icmp slt i32 %call25.i46, 0
  br i1 %cmp26.i47, label %if.end22.i48.rsi_sdio_master_reg_write.exit55.thread78_crit_edge, label %rsi_sdio_master_reg_write.exit55

if.end22.i48.rsi_sdio_master_reg_write.exit55.thread78_crit_edge: ; preds = %if.end22.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit55.thread78

rsi_sdio_master_reg_write.exit55.thread78:        ; preds = %if.end22.i48.rsi_sdio_master_reg_write.exit55.thread78_crit_edge, %if.end.i43.rsi_sdio_master_reg_write.exit55.thread78_crit_edge
  %.str.30.sink.i49 = phi ptr [ @.str.28, %if.end.i43.rsi_sdio_master_reg_write.exit55.thread78_crit_edge ], [ @.str.30, %if.end22.i48.rsi_sdio_master_reg_write.exit55.thread78_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.30.sink.i49, ptr noundef nonnull @__func__.rsi_sdio_master_reg_write) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i41) #8
  br label %if.then27.i

rsi_sdio_master_reg_write.exit55:                 ; preds = %if.end22.i48
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i41) #8
  br label %if.end28.i

if.then27.i:                                      ; preds = %rsi_sdio_master_reg_write.exit55.thread78, %if.end23.i.if.then27.i_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.70) #8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %rsi_sdio_master_reg_write.exit55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i38 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not.i39 = icmp eq ptr %call7.i.i.i38, null
  br i1 %tobool.not.i39, label %if.end28.i.if.then32.i_crit_edge, label %if.end.i40

if.end28.i.if.then32.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.end.i40:                                       ; preds = %if.end28.i
  %89 = ptrtoint ptr %call7.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 11141121, ptr %call7.i.i.i38, align 8
  %call18.i = call i32 @rsi_sdio_master_access_msword(ptr noundef nonnull %1, i16 noundef zeroext 16688) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end.i40.rsi_sdio_master_reg_write.exit.thread83_crit_edge, label %if.end22.i

if.end.i40.rsi_sdio_master_reg_write.exit.thread83_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit.thread83

if.end22.i:                                       ; preds = %if.end.i40
  %call25.i = call i32 @rsi_sdio_write_register_multiple(ptr noundef nonnull %1, i32 noundef 66320, ptr noundef nonnull %call7.i.i.i38, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end22.i.rsi_sdio_master_reg_write.exit.thread83_crit_edge, label %rsi_sdio_master_reg_write.exit

if.end22.i.rsi_sdio_master_reg_write.exit.thread83_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit.thread83

rsi_sdio_master_reg_write.exit.thread83:          ; preds = %if.end22.i.rsi_sdio_master_reg_write.exit.thread83_crit_edge, %if.end.i40.rsi_sdio_master_reg_write.exit.thread83_crit_edge
  %.str.30.sink.i = phi ptr [ @.str.28, %if.end.i40.rsi_sdio_master_reg_write.exit.thread83_crit_edge ], [ @.str.30, %if.end22.i.rsi_sdio_master_reg_write.exit.thread83_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.30.sink.i, ptr noundef nonnull @__func__.rsi_sdio_master_reg_write) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i38) #8
  br label %if.then32.i

rsi_sdio_master_reg_write.exit:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i38) #8
  br label %if.end33.i

if.then32.i:                                      ; preds = %rsi_sdio_master_reg_write.exit.thread83, %if.end28.i.if.then32.i_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.71) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %rsi_sdio_master_reg_write.exit
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.72) #8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end33.i, %if.then18.i
  call void @msleep(i32 noundef 500) #8
  br label %err.i

err.i:                                            ; preds = %if.end34.i, %if.then14.i, %if.then10.i, %if.then6.i, %if.then2.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %rsi_reset_chip.exit

rsi_reset_chip.exit:                              ; preds = %err.i, %if.end19.rsi_reset_chip.exit_crit_edge
  call void @sdio_claim_host(ptr noundef %pfunction) #8
  call fastcc void @rsi_reset_card(ptr noundef %pfunction)
  %call20 = call i32 @sdio_disable_func(ptr noundef %pfunction) #8
  call void @sdio_release_host(ptr noundef %pfunction) #8
  %write_fail = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 9
  %90 = ptrtoint ptr %write_fail to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 2, ptr %write_fail, align 2
  call void @rsi_91x_deinit(ptr noundef nonnull %1) #8
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.63) #8
  br label %cleanup

cleanup:                                          ; preds = %rsi_reset_chip.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_shutdown(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsi_dev, align 4
  %hw2 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw2, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.73) #8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %wowlan_config = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %wowlan_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wowlan_config, align 4
  %call3 = tail call i32 @rsi_config_wowlan(ptr noundef %1, ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.74) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %11, i32 0, i32 45
  %12 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp ugt i8 %13, 1
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end6
  %bt_adapter = getelementptr inbounds %struct.rsi_common, ptr %11, i32 0, i32 78
  %14 = ptrtoint ptr %bt_adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bt_adapter, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %land.lhs.true.if.end15_crit_edge, label %if.then10

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1), align 4
  tail call void %16(ptr noundef nonnull %15) #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %bt_adapter14 = getelementptr inbounds %struct.rsi_common, ptr %18, i32 0, i32 78
  %19 = ptrtoint ptr %bt_adapter14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bt_adapter14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %land.lhs.true.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  tail call fastcc void @rsi_sdio_disable_interrupts(ptr noundef %21)
  %write_fail = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %write_fail to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_fail, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool18.not = icmp eq i8 %23, 0
  br i1 %tobool18.not, label %if.end15.if.end20_crit_edge, label %if.then19

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.75) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  %24 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rsi_dev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call.i = tail call i32 @sdio_set_host_pm_flags(ptr noundef %27, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.84, i32 noundef %call.i) #8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.76) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.77) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsi_91x_init(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_sdio_rx_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_handle_interrupt(ptr nocapture noundef readonly %function) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %function, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsi_dev, align 4
  %event = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %7, i32 0, i32 11, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #8
  %8 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %event, align 4
  %event_queue.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %7, i32 0, i32 11, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_hal_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_sdio_master_access_msword(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_91x_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_sdio_host_intf_write_pkt(ptr nocapture noundef readonly %adapter, ptr noundef %pkt, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %tx_blk_size = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %tx_blk_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_blk_size, align 4
  %conv = zext i16 %3 to i32
  %arrayidx = getelementptr i8, ptr %pkt, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = lshr i8 %5, 4
  %7 = and i8 %5, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %7)
  %8 = icmp eq i8 %7, 96
  %narrow = select i1 %8, i8 2, i8 %6
  %queueno.0 = zext i8 %narrow to i32
  %conv.frozen = freeze i32 %conv
  %div = udiv i32 %len, %conv.frozen
  %9 = mul i32 %div, %conv.frozen
  %rem.decomposed = sub i32 %len, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp ne i32 %rem.decomposed, 0
  %inc = zext i1 %tobool.not to i32
  %num_blocks.0 = add i32 %div, %inc
  %mul = mul i32 %num_blocks.0, %conv
  %shl = shl nuw nsw i32 %queueno.0, 12
  %or = or i32 %mul, %shl
  %conv8 = trunc i32 %mul to i16
  %call = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef %or, ptr noundef %pkt, i16 noundef zeroext %conv8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %entry.if.end11_crit_edge, label %if.then10

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.rsi_sdio_host_intf_write_pkt, i32 noundef %call) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %entry.if.end11_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.rsi_sdio_host_intf_write_pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_sdio_master_reg_read(ptr noundef %adapter, i32 noundef %addr, ptr nocapture noundef %read_buf, i16 noundef zeroext %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %addr, 16
  %conv = trunc i32 %shr to i16
  %call1 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rsi_sdio_master_reg_read) #8
  br label %err

if.end12:                                         ; preds = %if.end
  %and11 = and i32 %addr, 65532
  %or = or i32 %and11, 65536
  %rsi_dev.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %1 = ptrtoint ptr %rsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rsi_dev.i, align 4
  %sdio_irq_task.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %sdio_irq_task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdio_irq_task.i, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %4, %8
  br i1 %cmp.not.i, label %if.end12.if.end.i_crit_edge, label %if.then.i, !prof !268

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  tail call void @sdio_claim_host(ptr noundef %10) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end12.if.end.i_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %call3.i = tail call i32 @sdio_readsb(ptr noundef %12, ptr noundef nonnull %call7.i.i, i32 noundef %or, i32 noundef 4) #8
  %13 = ptrtoint ptr %sdio_irq_task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdio_irq_task.i, align 4
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %cmp7.not.i = icmp eq ptr %14, %16
  br i1 %cmp7.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then15.i, !prof !268

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  tail call void @sdio_release_host(ptr noundef %18) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp18.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp18.not.i, label %if.end17.i.if.end17_crit_edge, label %rsi_sdio_read_register_multiple.exit

if.end17.i.if.end17_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

rsi_sdio_read_register_multiple.exit:             ; preds = %if.end17.i
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rsi_sdio_read_register_multiple) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp14 = icmp slt i32 %call3.i, 0
  br i1 %cmp14, label %if.then16, label %rsi_sdio_read_register_multiple.exit.if.end17_crit_edge

rsi_sdio_read_register_multiple.exit.if.end17_crit_edge: ; preds = %rsi_sdio_read_register_multiple.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %rsi_sdio_read_register_multiple.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.rsi_sdio_master_reg_read) #8
  br label %err

if.end17:                                         ; preds = %rsi_sdio_read_register_multiple.exit.if.end17_crit_edge, %if.end17.i.if.end17_crit_edge
  %19 = zext i16 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %size, label %if.else57 [
    i16 2, label %if.then21
    i16 1, label %if.then34
  ]

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %and22 = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call7.i.i, align 8
  %shr27 = lshr i32 %21, 16
  %storemerge = select i1 %cmp23, i32 %21, i32 %shr27
  %and29 = and i32 %storemerge, 65535
  %22 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and29, ptr %read_buf, align 4
  br label %err

if.then34:                                        ; preds = %if.end17
  %and35 = and i32 %addr, 3
  %23 = zext i32 %and35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %and35, label %if.else51 [
    i32 0, label %if.then38
    i32 1, label %if.then43
    i32 2, label %if.then49
  ]

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call7.i.i, align 8
  br label %if.end55

if.then43:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call7.i.i, align 8
  %shr44 = lshr i32 %27, 8
  br label %if.end55

if.then49:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call7.i.i, align 8
  %shr50 = lshr i32 %29, 16
  br label %if.end55

if.else51:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i.i, align 8
  %shr52 = lshr i32 %31, 24
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then49, %if.then43, %if.then38
  %shr44.sink = phi i32 [ %shr44, %if.then43 ], [ %shr52, %if.else51 ], [ %shr50, %if.then49 ], [ %25, %if.then38 ]
  %and56 = and i32 %shr44.sink, 255
  %32 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and56, ptr %read_buf, align 4
  br label %err

if.else57:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call7.i.i, align 8
  %35 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %read_buf, align 4
  br label %err

err:                                              ; preds = %if.else57, %if.end55, %if.then21, %if.then16, %if.then3
  %status.0 = phi i32 [ %call1, %if.then3 ], [ %call3.i, %if.then16 ], [ %call3.i, %if.then21 ], [ %call3.i, %if.end55 ], [ %call3.i, %if.else57 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_sdio_master_reg_write(ptr noundef %adapter, i32 noundef %addr, i32 noundef %data, i16 noundef zeroext %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i16 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %size, label %if.end.if.end16_crit_edge [
    i16 2, label %if.then2
    i16 1, label %if.then6
  ]

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %data, 16
  %and = and i32 %data, 65535
  %or = or i32 %shl, %and
  br label %if.end16

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and7 = and i32 %data, 255
  %shl8 = shl i32 %data, 24
  %shl9 = shl nuw nsw i32 %and7, 16
  %or10 = or i32 %shl9, %shl8
  %shl11 = shl nuw nsw i32 %and7, 8
  %or12 = or i32 %or10, %shl11
  %or13 = or i32 %or12, %and7
  br label %if.end16

if.end16:                                         ; preds = %if.then6, %if.then2, %if.end.if.end16_crit_edge
  %or13.sink = phi i32 [ %or13, %if.then6 ], [ %or, %if.then2 ], [ %data, %if.end.if.end16_crit_edge ]
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or13.sink, ptr %call7.i.i, align 8
  %shr = lshr i32 %addr, 16
  %conv17 = trunc i32 %shr to i16
  %call18 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext %conv17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup.sink.split.sink.split_crit_edge, label %if.end22

if.end16.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.end22:                                         ; preds = %if.end16
  %and23 = and i32 %addr, 65535
  %or24 = or i32 %and23, 65536
  %call25 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef %or24, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end22.cleanup.sink.split.sink.split_crit_edge, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end22.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end22.cleanup.sink.split.sink.split_crit_edge, %if.end16.cleanup.sink.split.sink.split_crit_edge
  %.str.30.sink = phi ptr [ @.str.28, %if.end16.cleanup.sink.split.sink.split_crit_edge ], [ @.str.30, %if.end22.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ -5, %if.end16.cleanup.sink.split.sink.split_crit_edge ], [ %call25, %if.end22.cleanup.sink.split.sink.split_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.30.sink, ptr noundef nonnull @__func__.rsi_sdio_master_reg_write) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end22.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call25, %if.end22.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_sdio_load_data_master_write(ptr noundef %adapter, i32 noundef %base_address, i32 noundef %instructions_sz, i16 noundef zeroext %block_size, ptr nocapture noundef readonly %ta_firmware) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %block_size to i32
  %div = udiv i32 %instructions_sz, %conv
  %shr = lshr i32 %base_address, 16
  %conv1 = trunc i32 %shr to i16
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %instructions_sz, i32 noundef %div) #8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext %conv1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %instructions_sz)
  %cmp7109.not = icmp ugt i32 %conv, %instructions_sz
  br i1 %cmp7109.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rsi_sdio_load_data_master_write) #8
  br label %out_free

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %msb_address.0113 = phi i16 [ %msb_address.1, %for.inc.for.body_crit_edge ], [ %conv1, %for.body.preheader ]
  %i.0112 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %offset.0111 = phi i32 [ %add33, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %base_address.addr.0110 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ %base_address, %for.body.preheader ]
  %add.ptr = getelementptr i8, ptr %ta_firmware, i32 %offset.0111
  %0 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr, i32 %conv)
  %conv11 = and i32 %base_address.addr.0110, 65535
  %or = or i32 %conv11, 65536
  %call12 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef %or, ptr noundef nonnull %call9.i, i16 noundef zeroext %block_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.rsi_sdio_load_data_master_write) #8
  br label %out_free

if.end16:                                         ; preds = %for.body
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.rsi_sdio_load_data_master_write, i32 noundef %i.0112) #8
  %add = add i32 %base_address.addr.0110, %conv
  %shr18 = lshr i32 %add, 16
  %conv19 = zext i16 %msb_address.0113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr18, i32 %conv19)
  %cmp20.not = icmp eq i32 %shr18, %conv19
  br i1 %cmp20.not, label %if.end16.for.inc_crit_edge, label %if.then22

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then22:                                        ; preds = %if.end16
  %add24 = add i16 %msb_address.0113, 1
  %call26 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext %add24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.then22.for.inc_crit_edge

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then29:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rsi_sdio_load_data_master_write) #8
  br label %out_free

for.inc:                                          ; preds = %if.then22.for.inc_crit_edge, %if.end16.for.inc_crit_edge
  %msb_address.1 = phi i16 [ %add24, %if.then22.for.inc_crit_edge ], [ %msb_address.0113, %if.end16.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0112, 1
  %add33 = add i32 %offset.0111, %conv
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %base_address.addr.0.lcssa = phi i32 [ %base_address, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  %offset.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add33, %for.inc.for.end_crit_edge ]
  %1 = mul i32 %div, %conv
  %rem.decomposed = sub i32 %instructions_sz, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool35.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool35.not, label %for.end.out_free_crit_edge, label %if.then36

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then36:                                        ; preds = %for.end
  %2 = call ptr @memset(ptr %call9.i, i32 0, i32 %conv)
  %add.ptr38 = getelementptr i8, ptr %ta_firmware, i32 %offset.0.lcssa
  %3 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr38, i32 %rem.decomposed)
  %conv42 = and i32 %base_address.addr.0.lcssa, 65535
  %or43 = or i32 %conv42, 65536
  %conv46 = trunc i32 %rem.decomposed to i16
  %call47 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef %or43, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then36.out_free_crit_edge, label %if.end51

if.then36.out_free_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end51:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %or52 = or i32 %offset.0.lcssa, 65536
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %or52) #8
  br label %out_free

out_free:                                         ; preds = %if.end51, %if.then36.out_free_crit_edge, %for.end.out_free_crit_edge, %if.then29, %if.then15, %if.then5
  %status.0 = phi i32 [ %call3, %if.then5 ], [ %call12, %if.then15 ], [ %call26, %if.then29 ], [ %call47, %if.then36.out_free_crit_edge ], [ 0, %if.end51 ], [ 0, %for.end.out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_sdio_reinit_device(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  %arrayidx = getelementptr %struct.rsi_common, ptr %5, i32 0, i32 7, i32 0
  tail call void @skb_queue_purge(ptr noundef %arrayidx) #8
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  %arrayidx.1 = getelementptr %struct.rsi_common, ptr %7, i32 0, i32 7, i32 1
  tail call void @skb_queue_purge(ptr noundef %arrayidx.1) #8
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 4
  %arrayidx.2 = getelementptr %struct.rsi_common, ptr %9, i32 0, i32 7, i32 2
  tail call void @skb_queue_purge(ptr noundef %arrayidx.2) #8
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  %arrayidx.3 = getelementptr %struct.rsi_common, ptr %11, i32 0, i32 7, i32 3
  tail call void @skb_queue_purge(ptr noundef %arrayidx.3) #8
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 4
  %arrayidx.4 = getelementptr %struct.rsi_common, ptr %13, i32 0, i32 7, i32 4
  tail call void @skb_queue_purge(ptr noundef %arrayidx.4) #8
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 4
  %arrayidx.5 = getelementptr %struct.rsi_common, ptr %15, i32 0, i32 7, i32 5
  tail call void @skb_queue_purge(ptr noundef %arrayidx.5) #8
  tail call void @sdio_claim_host(ptr noundef %3) #8
  %call = tail call i32 @sdio_release_irq(ptr noundef %3) #8
  tail call fastcc void @rsi_reset_card(ptr noundef %3)
  %call2 = tail call i32 @sdio_enable_func(ptr noundef %3) #8
  %call3 = tail call fastcc i32 @rsi_setupcard(ptr noundef %adapter)
  %call4 = tail call i32 @rsi_init_sdio_slave_regs(ptr noundef %adapter) #8
  %call5 = tail call i32 @sdio_claim_irq(ptr noundef %3, ptr noundef nonnull @rsi_handle_interrupt) #8
  %call6 = tail call i32 @rsi_hal_device_init(ptr noundef %adapter) #8
  tail call void @sdio_release_host(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_sdio_ta_reset(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext 8704) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.48) #8
  br label %err

if.end3:                                          ; preds = %if.end
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.rsi_sdio_ta_reset) #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 251658240, ptr %call7.i.i, align 8
  %call4 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef 67652, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.50) #8
  br label %err

if.end7:                                          ; preds = %if.end3
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %call7.i.i, align 8
  %call8 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef 65540, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.51) #8
  br label %err

if.end11:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %call7.i.i, align 8
  %call12 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef 66560, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.52) #8
  br label %err

if.end15:                                         ; preds = %if.end11
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 251658240, ptr %call7.i.i, align 8
  %call16 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef 67656, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.53) #8
  br label %err

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext 16645) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.48) #8
  br label %err

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.54) #8
  br label %err

err:                                              ; preds = %if.end23, %if.then22, %if.then18, %if.then14, %if.then10, %if.then6, %if.then2
  %status.0 = phi i32 [ %call1, %if.then2 ], [ %call4, %if.then6 ], [ %call8, %if.then10 ], [ -22, %if.then14 ], [ %call16, %if.then18 ], [ %call20, %if.then22 ], [ %call20, %if.end23 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsi_reset_card(ptr nocapture noundef readonly %pfunction) unnamed_addr #0 align 64 {
entry:
  %io_cmd.i227 = alloca %struct.mmc_command, align 4
  %io_cmd.i221 = alloca %struct.mmc_command, align 4
  %cmd.i216 = alloca %struct.mmc_command, align 4
  %cmd.i208 = alloca %struct.mmc_command, align 4
  %cmd.i200 = alloca %struct.mmc_command, align 4
  %cmd.i195 = alloca %struct.mmc_command, align 4
  %cmd.i = alloca %struct.mmc_command, align 4
  %io_cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfunction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfunction, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i) #8
  %4 = getelementptr inbounds i8, ptr %io_cmd.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %io_cmd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 52, ptr %io_cmd.i, align 4
  %arg1.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 1
  %7 = ptrtoint ptr %arg1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2080371448, ptr %arg1.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 21, ptr %flags.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call2.i = call i32 @mmc_wait_for_cmd(ptr noundef %10, ptr noundef nonnull %io_cmd.i, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call2.i)
  %cmp.not = icmp eq i32 %call2.i, -110
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %call2.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @msleep(i32 noundef 20) #8
  %ios = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28
  %chip_select = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 4
  %11 = ptrtoint ptr %chip_select to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %chip_select, align 1
  %bus_mode = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 3
  %12 = ptrtoint ptr %bus_mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bus_mode, align 4
  %power_mode = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 5
  %13 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %power_mode, align 2
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 6
  %14 = ptrtoint ptr %bus_width to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bus_width, align 1
  %timing = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 7
  %15 = ptrtoint ptr %timing to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %timing, align 4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %set_ios = getelementptr inbounds %struct.mmc_host_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %set_ios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_ios, align 4
  call void %19(ptr noundef %3, ptr noundef %ios) #8
  call void @msleep(i32 noundef 20) #8
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_min, align 4
  %22 = ptrtoint ptr %ios to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ios, align 4
  %23 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %power_mode, align 2
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %set_ios14 = getelementptr inbounds %struct.mmc_host_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %set_ios14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_ios14, align 4
  call void %27(ptr noundef %3, ptr noundef %ios) #8
  call void @msleep(i32 noundef 20) #8
  %28 = ptrtoint ptr %chip_select to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %chip_select, align 1
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %set_ios19 = getelementptr inbounds %struct.mmc_host_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %set_ios19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_ios19, align 4
  call void %32(ptr noundef %3, ptr noundef %ios) #8
  call void @msleep(i32 noundef 20) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #8
  %33 = ptrtoint ptr %pfunction to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pfunction, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %flags4.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %37 = call ptr @memset(ptr %cmd.i, i32 0, i32 48)
  %38 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 64, ptr %flags4.i, align 4
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %36, ptr noundef nonnull %cmd.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #8
  %39 = ptrtoint ptr %chip_select to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %chip_select, align 1
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %set_ios25 = getelementptr inbounds %struct.mmc_host_ops, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %set_ios25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_ios25, align 4
  call void %43(ptr noundef %3, ptr noundef %ios) #8
  call void @msleep(i32 noundef 20) #8
  %use_spi_crc = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 29
  %44 = ptrtoint ptr %use_spi_crc to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load = load i16, ptr %use_spi_crc, align 8
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %use_spi_crc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.if.end28_crit_edge, label %if.then27

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %call.i) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end.if.end28_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i195) #8
  %45 = ptrtoint ptr %pfunction to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pfunction, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %49 = getelementptr inbounds i8, ptr %cmd.i195, i32 8
  %50 = call ptr @memset(ptr %49, i32 0, i32 40)
  %51 = ptrtoint ptr %cmd.i195 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 5, ptr %cmd.i195, align 4
  %arg3.i196 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i195, i32 0, i32 1
  %52 = ptrtoint ptr %arg3.i196 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arg3.i196, align 4
  %flags4.i197 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i195, i32 0, i32 3
  %53 = ptrtoint ptr %flags4.i197 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 97, ptr %flags4.i197, align 4
  %call.i198 = call i32 @mmc_wait_for_cmd(ptr noundef %48, ptr noundef nonnull %cmd.i195, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool.not.i199.not = icmp eq i32 %call.i198, 0
  br i1 %tobool.not.i199.not, label %rsi_issue_sdiocommand.exit.thread, label %if.then31

rsi_issue_sdiocommand.exit.thread:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %49, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i195) #8
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i195) #8
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %call.i198) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %rsi_issue_sdiocommand.exit.thread
  %resp.0235 = phi i32 [ %55, %rsi_issue_sdiocommand.exit.thread ], [ -1, %if.then31 ]
  %ocr = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %ocr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %resp.0235, ptr %ocr, align 8
  %57 = getelementptr inbounds i8, ptr %cmd.i200, i32 8
  %arg3.i201 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i200, i32 0, i32 1
  %flags4.i202 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i200, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %if.end32
  %i.0253 = phi i32 [ 0, %if.end32 ], [ %inc, %if.end41.for.body_crit_edge ]
  %58 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ocr, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i200) #8
  %60 = ptrtoint ptr %pfunction to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pfunction, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %64 = call ptr @memset(ptr %57, i32 0, i32 40)
  %65 = ptrtoint ptr %cmd.i200 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 5, ptr %cmd.i200, align 4
  %66 = ptrtoint ptr %arg3.i201 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %59, ptr %arg3.i201, align 4
  %67 = ptrtoint ptr %flags4.i202 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 97, ptr %flags4.i202, align 4
  %call.i203 = call i32 @mmc_wait_for_cmd(ptr noundef %63, ptr noundef nonnull %cmd.i200, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool.not.i204.not = icmp eq i32 %call.i203, 0
  br i1 %tobool.not.i204.not, label %if.end38, label %for.end.thread

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i200) #8
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %call.i203) #8
  br label %if.then44

if.end38:                                         ; preds = %for.body
  %68 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %tobool39.not = icmp sgt i32 %69, -1
  br i1 %tobool39.not, label %if.end41, label %for.end

if.end41:                                         ; preds = %if.end38
  call void @msleep(i32 noundef 20) #8
  %inc = add nuw nsw i32 %i.0253, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end41.if.then44_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end41.if.then44_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

for.end:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0253)
  %cmp42.not = icmp eq i32 %i.0253, 100
  br i1 %cmp42.not, label %for.end.if.then44_crit_edge, label %if.end45

for.end.if.then44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.then44:                                        ; preds = %for.end.if.then44_crit_edge, %if.end41.if.then44_crit_edge, %for.end.thread
  %i.0252 = phi i32 [ %i.0253, %for.end.thread ], [ 100, %for.end.if.then44_crit_edge ], [ 100, %if.end41.if.then44_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %i.0252, i32 noundef %call.i203) #8
  br label %cleanup

if.end45:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i208) #8
  %70 = ptrtoint ptr %pfunction to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pfunction, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %74 = getelementptr inbounds i8, ptr %cmd.i208, i32 8
  %75 = call ptr @memset(ptr %74, i32 0, i32 40)
  %76 = ptrtoint ptr %cmd.i208 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3, ptr %cmd.i208, align 4
  %arg3.i209 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i208, i32 0, i32 1
  %77 = ptrtoint ptr %arg3.i209 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %arg3.i209, align 4
  %flags4.i210 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i208, i32 0, i32 3
  %78 = ptrtoint ptr %flags4.i210 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 117, ptr %flags4.i210, align 4
  %call.i211 = call i32 @mmc_wait_for_cmd(ptr noundef %73, ptr noundef nonnull %cmd.i208, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool.not.i212.not = icmp eq i32 %call.i211, 0
  br i1 %tobool.not.i212.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i208) #8
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %call.i211) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %79 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %74, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i208) #8
  %shr = and i32 %80, -65536
  %81 = ptrtoint ptr %bus_mode to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %bus_mode, align 4
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops, align 4
  %set_ios53 = getelementptr inbounds %struct.mmc_host_ops, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %set_ios53 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_ios53, align 4
  call void %85(ptr noundef %3, ptr noundef %ios) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i216) #8
  %86 = ptrtoint ptr %pfunction to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pfunction, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %90 = getelementptr inbounds i8, ptr %cmd.i216, i32 8
  %91 = call ptr @memset(ptr %90, i32 0, i32 40)
  %92 = ptrtoint ptr %cmd.i216 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 7, ptr %cmd.i216, align 4
  %arg3.i217 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i216, i32 0, i32 1
  %93 = ptrtoint ptr %arg3.i217 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shr, ptr %arg3.i217, align 4
  %flags4.i218 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i216, i32 0, i32 3
  %94 = ptrtoint ptr %flags4.i218 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 21, ptr %flags4.i218, align 4
  %call.i219 = call i32 @mmc_wait_for_cmd(ptr noundef %89, ptr noundef nonnull %cmd.i216, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool57.not = icmp eq i32 %call.i219, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %call.i219) #8
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %96, i32 0, i32 16
  %97 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %caps, align 32
  %and61 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end79_crit_edge, label %if.then63

if.end59.if.end79_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then63:                                        ; preds = %if.end59
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.rsi_reset_card) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i221) #8
  %99 = getelementptr inbounds i8, ptr %io_cmd.i221, i32 8
  %100 = call ptr @memset(ptr %99, i32 0, i32 40)
  %101 = ptrtoint ptr %io_cmd.i221 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 52, ptr %io_cmd.i221, align 4
  %arg1.i222 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i221, i32 0, i32 1
  %102 = ptrtoint ptr %arg1.i222 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 67118848, ptr %arg1.i222, align 4
  %flags.i223 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i221, i32 0, i32 3
  %103 = ptrtoint ptr %flags.i223 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 21, ptr %flags.i223, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 8
  %call2.i224 = call i32 @mmc_wait_for_cmd(ptr noundef %105, ptr noundef nonnull %io_cmd.i221, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i224)
  %tobool.not.i225.not = icmp eq i32 %call2.i224, 0
  br i1 %tobool.not.i225.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i221) #8
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %call2.i224) #8
  br label %if.end79

if.else:                                          ; preds = %if.then63
  %106 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %99, align 4
  %conv.i = trunc i32 %107 to i8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i221) #8
  %108 = or i8 %conv.i, 2
  %call69 = call fastcc i32 @rsi_cmd52writebyte(ptr noundef %1, i32 noundef 19, i8 noundef zeroext %108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %call69) #8
  br label %cleanup

if.end72:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %timing to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 2, ptr %timing, align 4
  %110 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops, align 4
  %set_ios76 = getelementptr inbounds %struct.mmc_host_ops, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %set_ios76 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %set_ios76, align 4
  call void %113(ptr noundef %3, ptr noundef %ios) #8
  br label %if.end79

if.end79:                                         ; preds = %if.end72, %if.then66, %if.end59.if.end79_crit_edge
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 8
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %115, i32 0, i32 28, i32 7
  %116 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %timing.i, align 4
  %118 = add i8 %117, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %118)
  %119 = icmp ult i8 %118, -2
  br i1 %119, label %if.else83, label %if.end79.if.end84_crit_edge

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.else83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %max_dtr = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 30, i32 3
  %120 = ptrtoint ptr %max_dtr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_dtr, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.end79.if.end84_crit_edge
  %clock.0 = phi i32 [ %121, %if.else83 ], [ 50000000, %if.end79.if.end84_crit_edge ]
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 6
  %122 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %f_max, align 8
  %124 = call i32 @llvm.umin.i32(i32 %clock.0, i32 %123)
  %125 = ptrtoint ptr %ios to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %ios, align 4
  %126 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops, align 4
  %set_ios93 = getelementptr inbounds %struct.mmc_host_ops, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %set_ios93 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %set_ios93, align 4
  call void %129(ptr noundef %3, ptr noundef %ios) #8
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 8
  %caps96 = getelementptr inbounds %struct.mmc_host, ptr %131, i32 0, i32 16
  %132 = ptrtoint ptr %caps96 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %caps96, align 32
  %and97 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end84.cleanup_crit_edge, label %if.then99

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then99:                                        ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i227) #8
  %134 = getelementptr inbounds i8, ptr %io_cmd.i227, i32 8
  %135 = call ptr @memset(ptr %134, i32 0, i32 40)
  %136 = ptrtoint ptr %io_cmd.i227 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 52, ptr %io_cmd.i227, align 4
  %arg1.i228 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i227, i32 0, i32 1
  %137 = ptrtoint ptr %arg1.i228 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -2080370814, ptr %arg1.i228, align 4
  %flags.i229 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i227, i32 0, i32 3
  %138 = ptrtoint ptr %flags.i229 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 21, ptr %flags.i229, align 4
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %1, align 8
  %call2.i230 = call i32 @mmc_wait_for_cmd(ptr noundef %140, ptr noundef nonnull %io_cmd.i227, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i227) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i230)
  %tobool101.not = icmp eq i32 %call2.i230, 0
  br i1 %tobool101.not, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.rsi_reset_card, i32 noundef %call2.i230) #8
  br label %cleanup

if.end103:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %bus_width to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 2, ptr %bus_width, align 1
  %142 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops, align 4
  %set_ios107 = getelementptr inbounds %struct.mmc_host_ops, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %set_ios107 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %set_ios107, align 4
  call void %145(ptr noundef %3, ptr noundef %ios) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then102, %if.end84.cleanup_crit_edge, %if.then71, %if.then58, %if.then48, %if.then44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_setupcard(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %f_max.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %f_max.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_max.i, align 8
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 50000000) #8
  %ios.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 28
  %11 = ptrtoint ptr %ios.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ios.i, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_ios.i, align 4
  tail call void %15(ptr noundef %7, ptr noundef %ios.i) #8
  %tx_blk_size = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %tx_blk_size to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 256, ptr %tx_blk_size, align 4
  %17 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rsi_dev, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.rsi_setblocklength) #8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i = tail call i32 @sdio_set_block_size(ptr noundef %20, i32 noundef 256) #8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %max_blksize.i = getelementptr inbounds %struct.sdio_func, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %max_blksize.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %max_blksize.i, align 8
  %24 = load ptr, ptr %18, align 4
  %max_blksize3.i = getelementptr inbounds %struct.sdio_func, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %max_blksize3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_blksize3.i, align 8
  %conv.i = trunc i32 %26 to i16
  %block_size.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 9
  %27 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %block_size.i, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.rsi_setblocklength, i32 noundef 256) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.rsi_setupcard) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_init_sdio_slave_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_cmd52writebyte(ptr nocapture noundef readonly %card, i32 noundef %address, i8 noundef zeroext %byte) unnamed_addr #0 align 64 {
entry:
  %io_cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd) #8
  %0 = getelementptr inbounds i8, ptr %io_cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %and9.i = shl i32 %address, 9
  %shl10.i = and i32 %and9.i, 67108352
  %conv13.i = zext i8 %byte to i32
  %or12.i = or i32 %shl10.i, %conv13.i
  %or15.i = or i32 %or12.i, -2080374528
  %2 = ptrtoint ptr %io_cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 52, ptr %io_cmd, align 4
  %arg1 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd, i32 0, i32 1
  %3 = ptrtoint ptr %arg1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or15.i, ptr %arg1, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %io_cmd, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 21, ptr %flags, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 8
  %call2 = call i32 @mmc_wait_for_cmd(ptr noundef %6, ptr noundef nonnull %io_cmd, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_sdio_determine_event_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_sdio_check_buffer_status(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_mac80211_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ulp_read_write(ptr noundef %adapter, i16 noundef zeroext %addr, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.rsi_sdio_master_reg_write.exit_crit_edge, label %if.end.i

entry.rsi_sdio_master_reg_write.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i16 %addr to i32
  %shl = shl nuw nsw i32 %conv, 6
  %shr = lshr i32 %data, 16
  %or = or i32 %shl, %shr
  %shl.i = shl i32 %or, 16
  %and.i = and i32 %or, 65535
  %or.i = or i32 %shl.i, %and.i
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %call18.i = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext 16392) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end22.i

if.end.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i

if.end22.i:                                       ; preds = %if.end.i
  %call25.i = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef 65542, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end22.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end22.i.cleanup.sink.split.i_crit_edge

if.end22.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end22.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %if.end22.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.sink.split.i_crit_edge
  %.str.30.sink.i = phi ptr [ @.str.28, %if.end.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.30, %if.end22.i.cleanup.sink.split.sink.split.i_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.30.sink.i, ptr noundef nonnull @__func__.rsi_sdio_master_reg_write) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.end22.i.cleanup.sink.split.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %rsi_sdio_master_reg_write.exit

rsi_sdio_master_reg_write.exit:                   ; preds = %cleanup.sink.split.i, %entry.rsi_sdio_master_reg_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not.i2 = icmp eq ptr %call7.i.i.i1, null
  br i1 %tobool.not.i2, label %rsi_sdio_master_reg_write.exit.rsi_sdio_master_reg_write.exit17_crit_edge, label %if.end.i3

rsi_sdio_master_reg_write.exit.rsi_sdio_master_reg_write.exit17_crit_edge: ; preds = %rsi_sdio_master_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit17

if.end.i3:                                        ; preds = %rsi_sdio_master_reg_write.exit
  %and1 = and i32 %data, 65535
  %or.i5 = mul nuw i32 %and1, 65537
  %3 = ptrtoint ptr %call7.i.i.i1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i5, ptr %call7.i.i.i1, align 8
  %call18.i6 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext 16392) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i6)
  %cmp19.i7 = icmp slt i32 %call18.i6, 0
  br i1 %cmp19.i7, label %if.end.i3.cleanup.sink.split.sink.split.i13_crit_edge, label %if.end22.i10

if.end.i3.cleanup.sink.split.sink.split.i13_crit_edge: ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i13

if.end22.i10:                                     ; preds = %if.end.i3
  %call25.i8 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef 65540, ptr noundef nonnull %call7.i.i.i1, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i8)
  %cmp26.i9 = icmp slt i32 %call25.i8, 0
  br i1 %cmp26.i9, label %if.end22.i10.cleanup.sink.split.sink.split.i13_crit_edge, label %if.end22.i10.cleanup.sink.split.i15_crit_edge

if.end22.i10.cleanup.sink.split.i15_crit_edge:    ; preds = %if.end22.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i15

if.end22.i10.cleanup.sink.split.sink.split.i13_crit_edge: ; preds = %if.end22.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i13

cleanup.sink.split.sink.split.i13:                ; preds = %if.end22.i10.cleanup.sink.split.sink.split.i13_crit_edge, %if.end.i3.cleanup.sink.split.sink.split.i13_crit_edge
  %.str.30.sink.i11 = phi ptr [ @.str.28, %if.end.i3.cleanup.sink.split.sink.split.i13_crit_edge ], [ @.str.30, %if.end22.i10.cleanup.sink.split.sink.split.i13_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.30.sink.i11, ptr noundef nonnull @__func__.rsi_sdio_master_reg_write) #8
  br label %cleanup.sink.split.i15

cleanup.sink.split.i15:                           ; preds = %cleanup.sink.split.sink.split.i13, %if.end22.i10.cleanup.sink.split.i15_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i1) #8
  br label %rsi_sdio_master_reg_write.exit17

rsi_sdio_master_reg_write.exit17:                 ; preds = %cleanup.sink.split.i15, %rsi_sdio_master_reg_write.exit.rsi_sdio_master_reg_write.exit17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not.i19 = icmp eq ptr %call7.i.i.i18, null
  br i1 %tobool.not.i19, label %rsi_sdio_master_reg_write.exit17.rsi_sdio_master_reg_write.exit32_crit_edge, label %if.end.i20

rsi_sdio_master_reg_write.exit17.rsi_sdio_master_reg_write.exit32_crit_edge: ; preds = %rsi_sdio_master_reg_write.exit17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit32

if.end.i20:                                       ; preds = %rsi_sdio_master_reg_write.exit17
  %5 = ptrtoint ptr %call7.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 54526784, ptr %call7.i.i.i18, align 8
  %call18.i21 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext 16392) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i21)
  %cmp19.i22 = icmp slt i32 %call18.i21, 0
  br i1 %cmp19.i22, label %if.end.i20.cleanup.sink.split.sink.split.i28_crit_edge, label %if.end22.i25

if.end.i20.cleanup.sink.split.sink.split.i28_crit_edge: ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i28

if.end22.i25:                                     ; preds = %if.end.i20
  %call25.i23 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef 65536, ptr noundef nonnull %call7.i.i.i18, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i23)
  %cmp26.i24 = icmp slt i32 %call25.i23, 0
  br i1 %cmp26.i24, label %if.end22.i25.cleanup.sink.split.sink.split.i28_crit_edge, label %if.end22.i25.cleanup.sink.split.i30_crit_edge

if.end22.i25.cleanup.sink.split.i30_crit_edge:    ; preds = %if.end22.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i30

if.end22.i25.cleanup.sink.split.sink.split.i28_crit_edge: ; preds = %if.end22.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i28

cleanup.sink.split.sink.split.i28:                ; preds = %if.end22.i25.cleanup.sink.split.sink.split.i28_crit_edge, %if.end.i20.cleanup.sink.split.sink.split.i28_crit_edge
  %.str.30.sink.i26 = phi ptr [ @.str.28, %if.end.i20.cleanup.sink.split.sink.split.i28_crit_edge ], [ @.str.30, %if.end22.i25.cleanup.sink.split.sink.split.i28_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.30.sink.i26, ptr noundef nonnull @__func__.rsi_sdio_master_reg_write) #8
  br label %cleanup.sink.split.i30

cleanup.sink.split.i30:                           ; preds = %cleanup.sink.split.sink.split.i28, %if.end22.i25.cleanup.sink.split.i30_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i18) #8
  br label %rsi_sdio_master_reg_write.exit32

rsi_sdio_master_reg_write.exit32:                 ; preds = %cleanup.sink.split.i30, %rsi_sdio_master_reg_write.exit17.rsi_sdio_master_reg_write.exit32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not.i34 = icmp eq ptr %call7.i.i.i33, null
  br i1 %tobool.not.i34, label %rsi_sdio_master_reg_write.exit32.rsi_sdio_master_reg_write.exit47_crit_edge, label %if.end.i35

rsi_sdio_master_reg_write.exit32.rsi_sdio_master_reg_write.exit47_crit_edge: ; preds = %rsi_sdio_master_reg_write.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_master_reg_write.exit47

if.end.i35:                                       ; preds = %rsi_sdio_master_reg_write.exit32
  %7 = ptrtoint ptr %call7.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10420383, ptr %call7.i.i.i33, align 8
  %call18.i36 = tail call i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext 16392) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i36)
  %cmp19.i37 = icmp slt i32 %call18.i36, 0
  br i1 %cmp19.i37, label %if.end.i35.cleanup.sink.split.sink.split.i43_crit_edge, label %if.end22.i40

if.end.i35.cleanup.sink.split.sink.split.i43_crit_edge: ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i43

if.end22.i40:                                     ; preds = %if.end.i35
  %call25.i38 = tail call i32 @rsi_sdio_write_register_multiple(ptr noundef %adapter, i32 noundef 65538, ptr noundef nonnull %call7.i.i.i33, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i38)
  %cmp26.i39 = icmp slt i32 %call25.i38, 0
  br i1 %cmp26.i39, label %if.end22.i40.cleanup.sink.split.sink.split.i43_crit_edge, label %if.end22.i40.cleanup.sink.split.i45_crit_edge

if.end22.i40.cleanup.sink.split.i45_crit_edge:    ; preds = %if.end22.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i45

if.end22.i40.cleanup.sink.split.sink.split.i43_crit_edge: ; preds = %if.end22.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i43

cleanup.sink.split.sink.split.i43:                ; preds = %if.end22.i40.cleanup.sink.split.sink.split.i43_crit_edge, %if.end.i35.cleanup.sink.split.sink.split.i43_crit_edge
  %.str.30.sink.i41 = phi ptr [ @.str.28, %if.end.i35.cleanup.sink.split.sink.split.i43_crit_edge ], [ @.str.30, %if.end22.i40.cleanup.sink.split.sink.split.i43_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.30.sink.i41, ptr noundef nonnull @__func__.rsi_sdio_master_reg_write) #8
  br label %cleanup.sink.split.i45

cleanup.sink.split.i45:                           ; preds = %cleanup.sink.split.sink.split.i43, %if.end22.i40.cleanup.sink.split.i45_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i33) #8
  br label %rsi_sdio_master_reg_write.exit47

rsi_sdio_master_reg_write.exit47:                 ; preds = %cleanup.sink.split.i45, %rsi_sdio_master_reg_write.exit32.rsi_sdio_master_reg_write.exit47_crit_edge
  tail call void @msleep(i32 noundef 20) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_config_wowlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsi_sdio_disable_interrupts(ptr noundef %pfunc) unnamed_addr #0 align 64 {
entry:
  %io_cmd.i6 = alloca %struct.mmc_command, align 4
  %io_cmd.i2 = alloca %struct.mmc_command, align 4
  %io_cmd.i = alloca %struct.mmc_command, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %pfunc, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.78) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %rsi_dev.i = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 24
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %rsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsi_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %status.i, align 4, !annotation !267
  %sdio_irq_task.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %sdio_irq_task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdio_irq_task.i, align 4
  %8 = call i32 @llvm.read_register.i32(metadata !257) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %7, %11
  br i1 %cmp.not.i, label %do.body.if.then4.i_crit_edge, label %if.then.i, !prof !268

do.body.if.then4.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  call void @sdio_claim_host(ptr noundef %13) #8
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i, %do.body.if.then4.i_crit_edge
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 4
  %call6.i = call zeroext i8 @sdio_f0_readb(ptr noundef %15, i32 noundef 249, ptr noundef nonnull %status.i) #8
  %16 = ptrtoint ptr %sdio_irq_task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdio_irq_task.i, align 4
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %cmp13.not.i = icmp eq ptr %17, %19
  br i1 %cmp13.not.i, label %if.then4.i.rsi_sdio_read_register.exit_crit_edge, label %if.then21.i, !prof !268

if.then4.i.rsi_sdio_read_register.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsi_sdio_read_register.exit

if.then21.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 4
  call void @sdio_release_host(ptr noundef %21) #8
  br label %rsi_sdio_read_register.exit

rsi_sdio_read_register.exit:                      ; preds = %if.then21.i, %if.then4.i.rsi_sdio_read_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.79) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call6.i)
  %tobool.not = icmp eq i8 %call6.i, 0
  br i1 %tobool.not, label %rsi_sdio_read_register.exit.do.end_crit_edge, label %land.rhs

rsi_sdio_read_register.exit.do.end_crit_edge:     ; preds = %rsi_sdio_read_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs:                                         ; preds = %rsi_sdio_read_register.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %22, %2
  %call2 = call i32 @jiffies_to_msecs(i32 noundef %sub) #8
  %cmp = icmp ult i32 %call2, 20
  br i1 %cmp, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %rsi_sdio_read_register.exit.do.end_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.80) #8
  call void @sdio_claim_host(ptr noundef %pfunc) #8
  %23 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pfunc, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i) #8
  %25 = getelementptr inbounds i8, ptr %io_cmd.i, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %io_cmd.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 52, ptr %io_cmd.i, align 4
  %arg1.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 1
  %28 = ptrtoint ptr %arg1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 67111168, ptr %arg1.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 21, ptr %flags.i, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %24, align 8
  %call2.i = call i32 @mmc_wait_for_cmd(ptr noundef %31, ptr noundef nonnull %io_cmd.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i.not, label %rsi_cmd52readbyte.exit.thread, label %rsi_cmd52readbyte.exit

rsi_cmd52readbyte.exit.thread:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i) #8
  %phi.bo = and i32 %33, 252
  br label %if.end

rsi_cmd52readbyte.exit:                           ; preds = %do.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp5 = icmp slt i32 %call2.i, 0
  br i1 %cmp5, label %if.then, label %rsi_cmd52readbyte.exit.if.end_crit_edge

rsi_cmd52readbyte.exit.if.end_crit_edge:          ; preds = %rsi_cmd52readbyte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %rsi_cmd52readbyte.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.rsi_sdio_disable_interrupts) #8
  br label %done

if.end:                                           ; preds = %rsi_cmd52readbyte.exit.if.end_crit_edge, %rsi_cmd52readbyte.exit.thread
  %data.018 = phi i32 [ %phi.bo, %rsi_cmd52readbyte.exit.thread ], [ 0, %rsi_cmd52readbyte.exit.if.end_crit_edge ]
  %34 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pfunc, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i2) #8
  %36 = getelementptr inbounds i8, ptr %io_cmd.i2, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 40)
  %or15.i.i = or i32 %data.018, -2080372480
  %38 = ptrtoint ptr %io_cmd.i2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 52, ptr %io_cmd.i2, align 4
  %arg1.i3 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i2, i32 0, i32 1
  %39 = ptrtoint ptr %arg1.i3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or15.i.i, ptr %arg1.i3, align 4
  %flags.i4 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i2, i32 0, i32 3
  %40 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 21, ptr %flags.i4, align 4
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %35, align 8
  %call2.i5 = call i32 @mmc_wait_for_cmd(ptr noundef %42, ptr noundef nonnull %io_cmd.i2, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i5)
  %cmp11 = icmp slt i32 %call2.i5, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.rsi_sdio_disable_interrupts) #8
  br label %done

if.end14:                                         ; preds = %if.end
  %43 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pfunc, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i6) #8
  %45 = getelementptr inbounds i8, ptr %io_cmd.i6, i32 8
  %46 = call ptr @memset(ptr %45, i32 0, i32 40)
  %47 = ptrtoint ptr %io_cmd.i6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 52, ptr %io_cmd.i6, align 4
  %arg1.i7 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i6, i32 0, i32 1
  %48 = ptrtoint ptr %arg1.i7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 67111168, ptr %arg1.i7, align 4
  %flags.i8 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i6, i32 0, i32 3
  %49 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 21, ptr %flags.i8, align 4
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %44, align 8
  %call2.i9 = call i32 @mmc_wait_for_cmd(ptr noundef %51, ptr noundef nonnull %io_cmd.i6, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i9)
  %tobool.not.i10.not = icmp eq i32 %call2.i9, 0
  br i1 %tobool.not.i10.not, label %rsi_cmd52readbyte.exit14.thread, label %rsi_cmd52readbyte.exit14

rsi_cmd52readbyte.exit14.thread:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %45, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i6) #8
  %.pre = and i32 %53, 255
  br label %if.end20

rsi_cmd52readbyte.exit14:                         ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i9)
  %cmp17 = icmp slt i32 %call2.i9, 0
  br i1 %cmp17, label %if.then19, label %rsi_cmd52readbyte.exit14.if.end20_crit_edge

rsi_cmd52readbyte.exit14.if.end20_crit_edge:      ; preds = %rsi_cmd52readbyte.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %rsi_cmd52readbyte.exit14
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.rsi_sdio_disable_interrupts) #8
  br label %done

if.end20:                                         ; preds = %rsi_cmd52readbyte.exit14.if.end20_crit_edge, %rsi_cmd52readbyte.exit14.thread
  %conv21.pre-phi = phi i32 [ %.pre, %rsi_cmd52readbyte.exit14.thread ], [ %data.018, %rsi_cmd52readbyte.exit14.if.end20_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef %conv21.pre-phi) #8
  br label %done

done:                                             ; preds = %if.end20, %if.then19, %if.then13, %if.then
  call void @sdio_release_host(ptr noundef %pfunc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.85) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @rsi_sdio_disable_interrupts(ptr noundef %add.ptr)
  %rsi_dev.i = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %rsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsi_dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @sdio_set_host_pm_flags(ptr noundef %7, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.84, i32 noundef %call.i) #8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.76) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 28
  %8 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %fsm_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_freeze(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.86) #8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.85) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsi_dev, align 4
  %wow_flags = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 60
  %6 = ptrtoint ptr %wow_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wow_flags, align 2
  %8 = and i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %.not = icmp eq i8 %8, 3
  br i1 %.not, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.87) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 45
  %9 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp ugt i8 %10, 1
  br i1 %cmp, label %land.lhs.true11, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true11:                                  ; preds = %if.end8
  %bt_adapter = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 78
  %11 = ptrtoint ptr %bt_adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bt_adapter, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end16_crit_edge, label %if.then13

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1), align 4
  tail call void %13(ptr noundef nonnull %12) #8
  %14 = ptrtoint ptr %bt_adapter to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bt_adapter, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true11.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  tail call fastcc void @rsi_sdio_disable_interrupts(ptr noundef %add.ptr)
  %write_fail = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %5, i32 0, i32 9
  %15 = ptrtoint ptr %write_fail to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_fail, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not = icmp eq i8 %16, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.75) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %17 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rsi_dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i = tail call i32 @sdio_set_host_pm_flags(ptr noundef %20, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.84, i32 noundef %call.i) #8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.76) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.88) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_thaw(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.89) #8
  %hibernate_resume = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %hibernate_resume to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hibernate_resume, align 4
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 28
  %5 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %fsm_state, align 4
  %iface_down = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %iface_down to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %iface_down, align 2
  tail call fastcc void @rsi_sdio_enable_interrupts(ptr noundef %add.ptr)
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.90) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_restore(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.91) #8
  %hibernate_resume = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %hibernate_resume to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hibernate_resume, align 4
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 28
  %5 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fsm_state, align 4
  %iface_down = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 31
  %sc_nvifs = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %sc_nvifs to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %sc_nvifs, align 4
  %ps_state = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ps_state, align 4
  %wow_flags = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 60
  %8 = ptrtoint ptr %wow_flags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %wow_flags, align 2
  %9 = ptrtoint ptr %iface_down to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %iface_down, align 2
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.92) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %fsm_state, align 4
  tail call fastcc void @rsi_sdio_enable_interrupts(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsi_sdio_enable_interrupts(ptr noundef %pfunc) unnamed_addr #0 align 64 {
entry:
  %io_cmd.i5 = alloca %struct.mmc_command, align 4
  %io_cmd.i1 = alloca %struct.mmc_command, align 4
  %io_cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %pfunc, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %pfunc) #8
  %4 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfunc, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i) #8
  %6 = getelementptr inbounds i8, ptr %io_cmd.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %io_cmd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 52, ptr %io_cmd.i, align 4
  %arg1.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 1
  %9 = ptrtoint ptr %arg1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 67111168, ptr %arg1.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 21, ptr %flags.i, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  %call2.i = call i32 @mmc_wait_for_cmd(ptr noundef %12, ptr noundef nonnull %io_cmd.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i.not, label %rsi_cmd52readbyte.exit.thread, label %rsi_cmd52readbyte.exit

rsi_cmd52readbyte.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i) #8
  %phi.bo = and i32 %14, 252
  %phi.cast = or i32 %phi.bo, 3
  br label %if.end

rsi_cmd52readbyte.exit:                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.then, label %rsi_cmd52readbyte.exit.if.end_crit_edge

rsi_cmd52readbyte.exit.if.end_crit_edge:          ; preds = %rsi_cmd52readbyte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %rsi_cmd52readbyte.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.rsi_sdio_enable_interrupts) #8
  br label %done

if.end:                                           ; preds = %rsi_cmd52readbyte.exit.if.end_crit_edge, %rsi_cmd52readbyte.exit.thread
  %data.017 = phi i32 [ %phi.cast, %rsi_cmd52readbyte.exit.thread ], [ 255, %rsi_cmd52readbyte.exit.if.end_crit_edge ]
  %15 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pfunc, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i1) #8
  %17 = getelementptr inbounds i8, ptr %io_cmd.i1, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %or15.i.i = or i32 %data.017, -2080372480
  %19 = ptrtoint ptr %io_cmd.i1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 52, ptr %io_cmd.i1, align 4
  %arg1.i2 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i1, i32 0, i32 1
  %20 = ptrtoint ptr %arg1.i2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or15.i.i, ptr %arg1.i2, align 4
  %flags.i3 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i1, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 21, ptr %flags.i3, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %16, align 8
  %call2.i4 = call i32 @mmc_wait_for_cmd(ptr noundef %23, ptr noundef nonnull %io_cmd.i1, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i4)
  %cmp5 = icmp slt i32 %call2.i4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.rsi_sdio_enable_interrupts) #8
  br label %done

if.end8:                                          ; preds = %if.end
  %wow_flags = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 60
  %24 = ptrtoint ptr %wow_flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wow_flags, align 2
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %.not = icmp eq i8 %26, 3
  br i1 %.not, label %if.then14, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.87) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end8.if.end15_crit_edge
  %27 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pfunc, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i5) #8
  %29 = getelementptr inbounds i8, ptr %io_cmd.i5, i32 8
  %30 = call ptr @memset(ptr %29, i32 0, i32 40)
  %31 = ptrtoint ptr %io_cmd.i5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 52, ptr %io_cmd.i5, align 4
  %arg1.i6 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i5, i32 0, i32 1
  %32 = ptrtoint ptr %arg1.i6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 67111168, ptr %arg1.i6, align 4
  %flags.i7 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i5, i32 0, i32 3
  %33 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 21, ptr %flags.i7, align 4
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %28, align 8
  %call2.i8 = call i32 @mmc_wait_for_cmd(ptr noundef %35, ptr noundef nonnull %io_cmd.i5, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i8)
  %tobool.not.i9.not = icmp eq i32 %call2.i8, 0
  br i1 %tobool.not.i9.not, label %rsi_cmd52readbyte.exit13.thread, label %rsi_cmd52readbyte.exit13

rsi_cmd52readbyte.exit13.thread:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i5) #8
  %.pre = and i32 %37, 255
  br label %if.end21

rsi_cmd52readbyte.exit13:                         ; preds = %if.end15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i8)
  %cmp18 = icmp slt i32 %call2.i8, 0
  br i1 %cmp18, label %if.then20, label %rsi_cmd52readbyte.exit13.if.end21_crit_edge

rsi_cmd52readbyte.exit13.if.end21_crit_edge:      ; preds = %rsi_cmd52readbyte.exit13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %rsi_cmd52readbyte.exit13
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.rsi_sdio_enable_interrupts) #8
  br label %done

if.end21:                                         ; preds = %rsi_cmd52readbyte.exit13.if.end21_crit_edge, %rsi_cmd52readbyte.exit13.thread
  %conv22.pre-phi = phi i32 [ %.pre, %rsi_cmd52readbyte.exit13.thread ], [ %data.017, %rsi_cmd52readbyte.exit13.if.end21_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef %conv22.pre-phi) #8
  br label %done

done:                                             ; preds = %if.end21, %if.then20, %if.then7, %if.then
  call void @sdio_release_host(ptr noundef %pfunc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !182, !184, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255}
!llvm.named.register.sp = !{!257}
!llvm.module.flags = !{!258, !259, !260, !261, !262, !263, !264, !265}
!llvm.ident = !{!266}

!0 = !{ptr @__param_dev_oper_mode, !1, !"__param_dev_oper_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_dev_oper_modetype371, !1, !"__UNIQUE_ID_dev_oper_modetype371", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev_oper_mode372, !4, !"__UNIQUE_ID_dev_oper_mode372", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 27, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 478, i32 21}
!7 = !{ptr @__func__.rsi_sdio_ack_intr, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 478, i32 49}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 535, i32 21}
!11 = !{ptr @__func__.rsi_sdio_write_register_multiple, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 535, i32 51}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 542, i32 21}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 555, i32 21}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 811, i32 21}
!19 = !{ptr @__func__.rsi_sdio_host_intf_read_pkt, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 811, i32 47}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 821, i32 21}
!23 = !{ptr @__initcall__kmod_rsi_sdio__373_1566_rsi_module_init6, !24, !"__initcall__kmod_rsi_sdio__373_1566_rsi_module_init6", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1566, i32 1}
!25 = !{ptr @__exitcall_rsi_module_exit, !26, !"__exitcall_rsi_module_exit", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1567, i32 1}
!27 = !{ptr @__UNIQUE_ID_author374, !28, !"__UNIQUE_ID_author374", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1569, i32 1}
!29 = !{ptr @__UNIQUE_ID_description375, !30, !"__UNIQUE_ID_description375", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1570, i32 1}
!31 = !{ptr @__UNIQUE_ID_firmware376, !32, !"__UNIQUE_ID_firmware376", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1572, i32 1}
!33 = !{ptr @__UNIQUE_ID_version377, !34, !"__UNIQUE_ID_version377", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1573, i32 1}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__modver_attr, !34, !"__modver_attr", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_file378, !40, !"__UNIQUE_ID_file378", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1574, i32 1}
!41 = !{ptr @__UNIQUE_ID_license379, !40, !"__UNIQUE_ID_license379", i1 false, i1 false}
!42 = !{ptr @__param_str_dev_oper_mode, !1, !"__param_str_dev_oper_mode", i1 false, i1 false}
!43 = !{ptr @dev_oper_mode, !44, !"dev_oper_mode", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 25, i32 12}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 511, i32 21}
!47 = !{ptr @__func__.rsi_sdio_read_register_multiple, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 511, i32 54}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1550, i32 21}
!51 = !{ptr @__func__.rsi_module_init, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1550, i32 49}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1527, i32 16}
!55 = !{ptr @rsi_driver, !56, !"rsi_driver", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1526, i32 27}
!57 = !{ptr @rsi_dev_table, !58, !"rsi_dev_table", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1520, i32 36}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1017, i32 21}
!61 = !{ptr @__func__.rsi_probe, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1017, i32 51}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1021, i32 21}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1029, i32 21}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1036, i32 21}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1039, i32 21}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1043, i32 4}
!73 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1051, i32 29}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1053, i32 21}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1059, i32 21}
!79 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1065, i32 21}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1068, i32 21}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1072, i32 21}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1075, i32 21}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1096, i32 20}
!89 = !{ptr @sdio_host_intf_ops, !90, !"sdio_host_intf_ops", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 988, i32 33}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 789, i32 21}
!93 = !{ptr @__func__.rsi_sdio_host_intf_write_pkt, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 790, i32 4}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 791, i32 24}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 660, i32 4}
!99 = !{ptr @__func__.rsi_sdio_master_reg_read, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 661, i32 4}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 679, i32 21}
!103 = !{ptr @__func__.rsi_sdio_master_reg_write, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 734, i32 4}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 747, i32 4}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 578, i32 21}
!109 = !{ptr @__func__.rsi_sdio_load_data_master_write, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 588, i32 56}
!111 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 600, i32 22}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 603, i32 22}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 634, i32 4}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 181, i32 21}
!119 = !{ptr @__func__.rsi_reset_card, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 181, i32 48}
!121 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 225, i32 21}
!123 = !{ptr @.str.37, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 231, i32 21}
!125 = !{ptr @.str.38, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 251, i32 21}
!127 = !{ptr @.str.39, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 263, i32 21}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 277, i32 21}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 283, i32 21}
!133 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 286, i32 22}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 294, i32 6}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 322, i32 22}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 393, i32 4}
!141 = !{ptr @__func__.rsi_setupcard, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 393, i32 40}
!143 = !{ptr @.str.46, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 364, i32 21}
!145 = !{ptr @__func__.rsi_setblocklength, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 364, i32 55}
!147 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 371, i32 3}
!149 = !{ptr @.str.48, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 930, i32 4}
!151 = !{ptr @.str.49, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 934, i32 21}
!153 = !{ptr @__func__.rsi_sdio_ta_reset, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 934, i32 52}
!155 = !{ptr @.str.50, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 941, i32 21}
!157 = !{ptr @.str.51, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 951, i32 21}
!159 = !{ptr @.str.52, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 961, i32 21}
!161 = !{ptr @.str.53, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 972, i32 21}
!163 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 981, i32 21}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 851, i32 21}
!167 = !{ptr @__func__.rsi_init_sdio_interface, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 851, i32 57}
!169 = !{ptr @.str.56, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 856, i32 21}
!171 = !{ptr @.str.57, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 865, i32 21}
!173 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 869, i32 21}
!175 = !{ptr @.str.59, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 873, i32 21}
!177 = !{ptr @rsi_init_event.__key, !178, !"__key", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 30, i32 2}
!179 = !{ptr @.str.60, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.61, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 66, i32 17}
!182 = !{ptr @init_completion.__key, !183, !"__key", i1 false, i1 false}
!183 = !{!"../include/linux/completion.h", i32 87, i32 2}
!184 = !{ptr @.str.62, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.63, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1251, i32 20}
!187 = !{ptr @.str.64, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1126, i32 21}
!189 = !{ptr @.str.65, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1130, i32 4}
!191 = !{ptr @__func__.rsi_reset_chip, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1130, i32 50}
!193 = !{ptr @.str.66, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1137, i32 21}
!195 = !{ptr @.str.67, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1141, i32 21}
!197 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1157, i32 4}
!199 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1183, i32 22}
!201 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1190, i32 5}
!203 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1197, i32 5}
!205 = !{ptr @.str.72, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1199, i32 21}
!207 = !{ptr @.str.73, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1464, i32 20}
!209 = !{ptr @.str.74, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1470, i32 22}
!211 = !{ptr @.str.75, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1482, i32 22}
!213 = !{ptr @.str.76, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1485, i32 22}
!215 = !{ptr @.str.77, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1487, i32 21}
!217 = !{ptr @.str.78, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1277, i32 21}
!219 = !{ptr @.str.79, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1282, i32 22}
!221 = !{ptr @.str.80, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1284, i32 21}
!223 = !{ptr @.str.81, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1290, i32 4}
!225 = !{ptr @__func__.rsi_sdio_disable_interrupts, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1291, i32 4}
!227 = !{ptr @.str.82, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1299, i32 4}
!229 = !{ptr @.str.83, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1310, i32 21}
!231 = !{ptr @.str.84, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1265, i32 21}
!233 = !{ptr @rsi_pm_ops, !234, !"rsi_pm_ops", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1511, i32 32}
!235 = !{ptr @.str.85, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1368, i32 21}
!237 = !{ptr @.str.86, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1403, i32 21}
!239 = !{ptr @.str.87, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1415, i32 4}
!241 = !{ptr @.str.88, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1432, i32 21}
!243 = !{ptr @.str.89, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1443, i32 20}
!245 = !{ptr @.str.90, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1451, i32 21}
!247 = !{ptr @__func__.rsi_sdio_enable_interrupts, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1328, i32 48}
!249 = !{ptr @.str.91, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1496, i32 21}
!251 = !{ptr @.str.92, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1507, i32 21}
!253 = !{ptr @.str.93, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1563, i32 21}
!255 = !{ptr @__func__.rsi_module_exit, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio.c", i32 1563, i32 51}
!257 = !{!"sp"}
!258 = !{i32 1, !"wchar_size", i32 2}
!259 = !{i32 1, !"min_enum_size", i32 4}
!260 = !{i32 8, !"branch-target-enforcement", i32 0}
!261 = !{i32 8, !"sign-return-address", i32 0}
!262 = !{i32 8, !"sign-return-address-all", i32 0}
!263 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!264 = !{i32 7, !"uwtable", i32 1}
!265 = !{i32 7, !"frame-pointer", i32 2}
!266 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!267 = !{!"auto-init"}
!268 = !{!"branch_weights", i32 1, i32 2000}
!269 = !{i64 2148378968, i64 2148378994, i64 2148379023, i64 2148379057, i64 2148379088, i64 2148379111}
