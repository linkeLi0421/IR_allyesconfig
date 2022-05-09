; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/main.c_pt.bc'
source_filename = "../drivers/staging/wfx/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.124 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.123, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.123 = type { i64, i64, i8 }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_description363 = internal constant [66 x i8] c"wfx.description=Silicon Labs 802.11 Wireless LAN driver for WF200\00", section ".modinfo", align 1
@__UNIQUE_ID_author364 = internal constant [58 x i8] c"wfx.author=J\C3\A9r\C3\B4me Pouiller <jerome.pouiller@silabs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file365 = internal constant [33 x i8] c"wfx.file=drivers/staging/wfx/wfx\00", section ".modinfo", align 1
@__UNIQUE_ID_license366 = internal constant [16 x i8] c"wfx.license=GPL\00", section ".modinfo", align 1
@wfx_send_pds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"valid PDS start with '{'. Did you forget to compress it?\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wfx_send_pds\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/staging/wfx/main.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_send_pds._entry_ptr = internal global ptr @wfx_send_pds._entry, section ".printk_index", align 4
@wfx_send_pds.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"send PDS '%s}'\0A\00", [16 x i8] zeroinitializer }, align 32
@wfx_send_pds._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"PDS bytes %d to %d: invalid data (unsupported options?)\0A\00", [39 x i8] zeroinitializer }, align 32
@wfx_send_pds._entry_ptr.9 = internal global ptr @wfx_send_pds._entry.7, section ".printk_index", align 4
@wfx_send_pds._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 213, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"PDS bytes %d to %d: chip didn't reply (corrupted file?)\0A\00", [39 x i8] zeroinitializer }, align 32
@wfx_send_pds._entry_ptr.12 = internal global ptr @wfx_send_pds._entry.10, section ".printk_index", align 4
@wfx_send_pds._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"PDS bytes %d to %d: chip returned an unknown error\0A\00", [44 x i8] zeroinitializer }, align 32
@wfx_send_pds._entry_ptr.15 = internal global ptr @wfx_send_pds._entry.13, section ".printk_index", align 4
@wfx_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @wfx_tx, ptr @wfx_start, ptr @wfx_stop, ptr null, ptr null, ptr null, ptr @wfx_add_interface, ptr null, ptr @wfx_remove_interface, ptr @wfx_config, ptr @wfx_bss_info_changed, ptr @wfx_start_ap, ptr @wfx_stop_ap, ptr null, ptr @wfx_configure_filter, ptr null, ptr @wfx_set_tim, ptr @wfx_set_key, ptr null, ptr null, ptr @wfx_set_default_unicast_key, ptr @wfx_hw_scan, ptr @wfx_cancel_hw_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wfx_set_rts_threshold, ptr @wfx_sta_add, ptr @wfx_sta_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wfx_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wfx_ampdu_action, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wfx_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wfx_add_chanctx, ptr @wfx_remove_chanctx, ptr @wfx_change_chanctx, ptr @wfx_assign_vif_chanctx, ptr @wfx_unassign_vif_chanctx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wfx_join_ibss, ptr @wfx_leave_ibss, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@wfx_iface_combinations = internal constant { [1 x %struct.ieee80211_iface_combination], [44 x i8] } { [1 x %struct.ieee80211_iface_combination] [%struct.ieee80211_iface_combination { ptr @wdev_iface_limits, i32 2, i16 2, i8 2, i8 0, i8 0, i8 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config-file\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wfx wakeup\00", [21 x i8] zeroinitializer }, align 32
@wfx_init_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&wdev->conf_mutex\00", [46 x i8] zeroinitializer }, align 32
@wfx_init_common.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&wdev->rx_stats_lock\00", [43 x i8] zeroinitializer }, align 32
@wfx_init_common.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&wdev->tx_power_loop_info_lock\00", [33 x i8] zeroinitializer }, align 32
@wfx_init_common.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&wdev->cooling_timeout_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@wfx_init_common.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&wdev->cooling_timeout_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@wfx_init_common.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&wdev->tx_dequeue\00", [46 x i8] zeroinitializer }, align 32
@wfx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 369, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"timeout while waiting for startup indication\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wfx_probe\00", [22 x i8] zeroinitializer }, align 32
@wfx_probe._entry_ptr = internal global ptr @wfx_probe._entry, section ".printk_index", align 4
@wfx_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 372, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"probe interrupted by user\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wfx_probe._entry_ptr.35 = internal global ptr @wfx_probe._entry.32, section ".printk_index", align 4
@wfx_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.31, ptr @.str.2, i32 382, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"started firmware %d.%d.%d \22%s\22 (API: %d.%d, keyset: %02X, caps: 0x%.8X)\0A\00", [55 x i8] zeroinitializer }, align 32
@wfx_probe._entry_ptr.38 = internal global ptr @wfx_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@wfx_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.31, ptr @.str.2, i32 393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"unsupported firmware API version (expect 1 while firmware returns %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@wfx_probe._entry_ptr.42 = internal global ptr @wfx_probe._entry.40, section ".printk_index", align 4
@wfx_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.31, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"chip require secure_link, but can't negotiate it\0A\00", [46 x i8] zeroinitializer }, align 32
@wfx_probe._entry_ptr.45 = internal global ptr @wfx_probe._entry.43, section ".printk_index", align 4
@wfx_probe.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.31, ptr @.str.2, ptr @.str.46, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sending configuration file %s\0A\00", [33 x i8] zeroinitializer }, align 32
@wfx_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.31, ptr @.str.2, i32 423, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"misconfigured IRQ?\0A\00", [44 x i8] zeroinitializer }, align 32
@wfx_probe._entry_ptr.49 = internal global ptr @wfx_probe._entry.47, section ".printk_index", align 4
@wfx_probe.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.31, ptr @.str.2, ptr @.str.50, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"enable 'quiescent' power mode with wakeup GPIO and PDS file %s\0A\00", [32 x i8] zeroinitializer }, align 32
@wfx_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.31, ptr @.str.2, i32 448, ptr @.str.53, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"using random MAC address\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wfx_probe._entry_ptr.54 = internal global ptr @wfx_probe._entry.51, section ".printk_index", align 4
@wfx_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.31, ptr @.str.2, i32 452, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MAC address %d: %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@wfx_probe._entry_ptr.57 = internal global ptr @wfx_probe._entry.55, section ".printk_index", align 4
@__initcall__kmod_wfx__370_497_wfx_core_init6 = internal global ptr @wfx_core_init, section ".initcall6.init", align 4
@wfx_sdio_driver = external dso_local global %struct.sdio_driver, align 4
@wfx_spi_driver = external dso_local global %struct.spi_driver, align 4
@__exitcall_wfx_core_exit = internal global ptr @wfx_core_exit, section ".exitcall.exit", align 4
@wdev_iface_limits = internal constant { [2 x %struct.ieee80211_iface_limit], [24 x i8] } { [2 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 1, i16 4 }, %struct.ieee80211_iface_limit { i16 1, i16 8 }], [24 x i8] zeroinitializer }, align 32
@wfx_2ghz_chantable = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@wfx_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 1, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 1, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 13, i16 0 }], [48 x i8] zeroinitializer }, align 32
@wfx_band_2ghz = internal constant { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @wfx_2ghz_chantable, ptr @wfx_rates, i32 0, i32 14, i32 12, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 2352, i8 1, i8 1, i8 0, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] } { <{ i8, [9 x i8] }> <{ i8 -1, [9 x i8] zeroinitializer }>, i16 18432, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@wfx_send_pdata_pds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"can't load antenna parameters (PDS file %s). The device may be unstable.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wfx_send_pdata_pds\00", [45 x i8] zeroinitializer }, align 32
@wfx_send_pdata_pds._entry_ptr = internal global ptr @wfx_send_pdata_pds._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 188, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 202, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 207, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 212, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 217, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant [8 x i8] c"wfx_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 124, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"wfx_iface_combinations\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 115, i32 49 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 320, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 322, i32 57 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 327, i32 52 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 329, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 330, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 331, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 333, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 336, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 369, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 372, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 378, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 385, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 391, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 399, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 410, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 423, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 427, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 448, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 451, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"wdev_iface_limits\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 110, i32 43 }
@___asan_gen_.226 = private unnamed_addr constant [19 x i8] c"wfx_2ghz_chantable\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 72, i32 33 }
@___asan_gen_.229 = private unnamed_addr constant [10 x i8] c"wfx_rates\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 48, i32 30 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"wfx_band_2ghz\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 89, i32 46 }
@___asan_gen_.239 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 87, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1984, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [30 x i8] c"../drivers/staging/wfx/main.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 236, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_file365, ptr @__UNIQUE_ID_license366, ptr @__exitcall_wfx_core_exit, ptr @__initcall__kmod_wfx__370_497_wfx_core_init6, ptr @wfx_core_exit, ptr @wfx_probe._entry, ptr @wfx_probe._entry.32, ptr @wfx_probe._entry.36, ptr @wfx_probe._entry.40, ptr @wfx_probe._entry.43, ptr @wfx_probe._entry.47, ptr @wfx_probe._entry.51, ptr @wfx_probe._entry.55, ptr @wfx_probe._entry_ptr, ptr @wfx_probe._entry_ptr.35, ptr @wfx_probe._entry_ptr.38, ptr @wfx_probe._entry_ptr.42, ptr @wfx_probe._entry_ptr.45, ptr @wfx_probe._entry_ptr.49, ptr @wfx_probe._entry_ptr.54, ptr @wfx_probe._entry_ptr.57, ptr @wfx_send_pdata_pds._entry, ptr @wfx_send_pdata_pds._entry_ptr, ptr @wfx_send_pds._entry, ptr @wfx_send_pds._entry.10, ptr @wfx_send_pds._entry.13, ptr @wfx_send_pds._entry.7, ptr @wfx_send_pds._entry_ptr, ptr @wfx_send_pds._entry_ptr.12, ptr @wfx_send_pds._entry_ptr.15, ptr @wfx_send_pds._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @wfx_ops, ptr @wfx_iface_combinations, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @wfx_init_common.__key, ptr @.str.19, ptr @wfx_init_common.__key.20, ptr @.str.21, ptr @wfx_init_common.__key.22, ptr @.str.23, ptr @wfx_init_common.__key.24, ptr @.str.25, ptr @wfx_init_common.__key.26, ptr @.str.27, ptr @wfx_init_common.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @wdev_iface_limits, ptr @wfx_2ghz_chantable, ptr @wfx_rates, ptr @wfx_band_2ghz, ptr @init_completion.__key, ptr @.str.59, ptr @skb_queue_head_init.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_send_pds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_send_pds._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_send_pds._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_send_pds._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_iface_combinations to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_common.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_common.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_common.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_common.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_common.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdev_iface_limits to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_2ghz_chantable to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_band_2ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_send_pdata_pds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wfx_api_older_than(ptr nocapture noundef readonly %wdev, i32 noundef %major, i32 noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %api_version_major = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 10
  %0 = ptrtoint ptr %api_version_major to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %api_version_major, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %major)
  %cmp = icmp slt i32 %conv, %major
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %major)
  %cmp5 = icmp sgt i32 %conv, %major
  br i1 %cmp5, label %if.end.return_crit_edge, label %if.end8

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %api_version_minor = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 9
  %2 = ptrtoint ptr %api_version_minor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %api_version_minor, align 2
  %conv10 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %minor)
  %cmp11 = icmp slt i32 %conv10, %minor
  br label %return

return:                                           ; preds = %if.end8, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %cmp11, %if.end8 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_send_pds(ptr noundef %wdev, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 123, i8 %1)
  %cmp.not = icmp eq i8 %1, 123
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %sub = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp2118 = icmp ugt i32 %sub, 1
  br i1 %cmp2118, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev34 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0121 = phi i32 [ 1, %for.body.lr.ph ], [ %inc68, %for.inc.for.body_crit_edge ]
  %brace_level.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %brace_level.2, %for.inc.for.body_crit_edge ]
  %start.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %start.1, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr i8, ptr %buf, i32 %i.0121
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 123, i8 %5)
  %cmp6 = icmp eq i8 %5, 123
  %inc = zext i1 %cmp6 to i32
  %spec.select = add i32 %brace_level.0120, %inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 125, i8 %5)
  %cmp12 = icmp eq i8 %5, 125
  %dec = sext i1 %cmp12 to i32
  %brace_level.2 = add i32 %spec.select, %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brace_level.2)
  %tobool.not = icmp eq i32 %brace_level.2, 0
  %or.cond = select i1 %cmp12, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then20:                                        ; preds = %for.body
  %inc21 = add nuw i32 %i.0121, 1
  %sub22 = sub i32 %inc21, %start.0119
  %add = add i32 %sub22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %add)
  %cmp23 = icmp sgt i32 %add, 1500
  br i1 %cmp23, label %if.then20.cleanup_crit_edge, label %if.end26

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.then20
  %arrayidx27 = getelementptr i8, ptr %buf, i32 %start.0119
  %6 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 123, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr i8, ptr %buf, i32 %inc21
  %7 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx28, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_send_pds.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_send_pds, %if.then33)) #7
          to label %do.end37 [label %if.then33], !srcloc !133

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_send_pds.__UNIQUE_ID_ddebug367, ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef %arrayidx27) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %if.end26
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 125, ptr %arrayidx28, align 1
  %call42 = tail call i32 @hif_configuration(ptr noundef %wdev, ptr noundef %arrayidx27, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp sgt i32 %call42, 0
  br i1 %cmp43, label %do.end48, label %if.end50

do.end48:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef %start.0119, i32 noundef %inc21) #10
  br label %cleanup

if.end50:                                         ; preds = %do.end37
  %13 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call42, label %do.end63 [
    i32 -110, label %do.end56
    i32 0, label %if.end65
  ]

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %start.0119, i32 noundef %inc21) #10
  br label %cleanup

do.end63:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %start.0119, i32 noundef %inc21) #10
  br label %cleanup

if.end65:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 44, ptr %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end65, %for.body.for.inc_crit_edge
  %start.1 = phi i32 [ %inc21, %if.end65 ], [ %start.0119, %for.body.for.inc_crit_edge ]
  %i.1 = phi i32 [ %inc21, %if.end65 ], [ %i.0121, %for.body.for.inc_crit_edge ]
  %inc68 = add i32 %i.1, 1
  %cmp2 = icmp ult i32 %inc68, %sub
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end63, %do.end56, %do.end48, %if.then20.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end48 ], [ -110, %do.end56 ], [ -5, %do.end63 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -27, %if.then20.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_configuration(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wfx_init_common(ptr noundef %dev, ptr nocapture noundef readonly %pdata, ptr noundef %hwbus_ops, ptr noundef %hwbus_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 1500, ptr noundef nonnull @wfx_ops, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent.i.i, align 8
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %or.i.i145 = or i32 %4, 2297232
  store i32 %or.i.i145, ptr %flags.i, align 4
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1436, ptr %vif_data_size, align 4
  %sta_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %sta_data_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %sta_data_size, align 8
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %queues, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %max_rates, align 1
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 16
  %9 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %max_rate_tries, align 1
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 36, ptr %extra_tx_headroom, align 4
  %11 = load ptr, ptr %wiphy.i, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 14, ptr %interface_modes, align 4
  %13 = load ptr, ptr %wiphy.i, align 8
  %probe_resp_offload = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %probe_resp_offload to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 15, ptr %probe_resp_offload, align 4
  %15 = load ptr, ptr %wiphy.i, align 8
  %features = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features, align 8
  %or = or i32 %17, 256
  store i32 %or, ptr %features, align 8
  %18 = load ptr, ptr %wiphy.i, align 8
  %flags = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 32
  %or4 = or i32 %20, 524288
  store i32 %or4, ptr %flags, align 32
  %21 = load ptr, ptr %wiphy.i, align 8
  %flags6 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags6, align 32
  %or7 = or i32 %23, 16384
  store i32 %or7, ptr %flags6, align 32
  %24 = load ptr, ptr %wiphy.i, align 8
  %max_ap_assoc_sta = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 69
  %25 = ptrtoint ptr %max_ap_assoc_sta to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 14, ptr %max_ap_assoc_sta, align 4
  %26 = load ptr, ptr %wiphy.i, align 8
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %max_scan_ssids, align 32
  %28 = load ptr, ptr %wiphy.i, align 8
  %max_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2304, ptr %max_scan_ie_len, align 4
  %30 = load ptr, ptr %wiphy.i, align 8
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %n_iface_combinations, align 4
  %32 = load ptr, ptr %wiphy.i, align 8
  %iface_combinations = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @wfx_iface_combinations, ptr %iface_combinations, align 16
  %call13 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 92, i32 noundef 3264) #7
  %34 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy.i, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 53
  %36 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call13, ptr %bands, align 16
  %37 = load ptr, ptr %wiphy.i, align 8
  %bands16 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 53
  %38 = ptrtoint ptr %bands16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bands16, align 16
  %40 = call ptr @memcpy(ptr %39, ptr @wfx_band_2ghz, i32 92)
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %hw18 = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %hw18 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %hw18, align 4
  %dev19 = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev, ptr %dev19, align 4
  %hwbus_ops20 = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %hwbus_ops20 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %hwbus_ops, ptr %hwbus_ops20, align 4
  %hwbus_priv21 = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 6
  %46 = ptrtoint ptr %hwbus_priv21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %hwbus_priv, ptr %hwbus_priv21, align 4
  %47 = call ptr @memcpy(ptr %42, ptr %pdata, i32 16)
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %file_pds = getelementptr inbounds %struct.wfx_platform_data, ptr %42, i32 0, i32 1
  %call24 = tail call i32 @of_property_read_string(ptr noundef %49, ptr noundef nonnull @.str.16, ptr noundef %file_pds) #7
  %call25 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 3) #7
  %gpio_wakeup = getelementptr inbounds %struct.wfx_platform_data, ptr %42, i32 0, i32 2
  %50 = ptrtoint ptr %gpio_wakeup to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call25, ptr %gpio_wakeup, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %tobool34.not = icmp eq ptr %call25, null
  br i1 %tobool34.not, label %if.end31.do.body_crit_edge, label %if.then35

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call25, ptr noundef nonnull @.str.18) #7
  br label %do.body

do.body:                                          ; preds = %if.then35, %if.end31.do.body_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %conf_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @wfx_init_common.__key) #7
  %rx_stats_lock = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %rx_stats_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @wfx_init_common.__key.20) #7
  %tx_power_loop_info_lock = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %tx_power_loop_info_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @wfx_init_common.__key.22) #7
  %firmware_ready = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 8
  %51 = ptrtoint ptr %firmware_ready to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %firmware_ready, align 4
  %wait.i = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @init_completion.__key) #7
  %cooling_timeout_work = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 11
  tail call void @__init_work(ptr noundef %cooling_timeout_work, i32 noundef 0) #7
  %52 = ptrtoint ptr %cooling_timeout_work to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -64, ptr %cooling_timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.25, ptr noundef nonnull @wfx_init_common.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry54 = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 11, i32 0, i32 1
  %53 = ptrtoint ptr %entry54 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry54, ptr %entry54, align 4
  %prev.i = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 11, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry54, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 11, i32 0, i32 2
  %55 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @wfx_cooling_timeout_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.27, ptr noundef nonnull @wfx_init_common.__key.26) #7
  %tx_pending = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 16
  %lock.i = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 16, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %56 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %tx_pending, ptr %tx_pending, align 4
  %prev.i.i = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 16, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tx_pending, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 16, i32 1
  %58 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_dequeue = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %tx_dequeue, ptr noundef nonnull @.str.29, ptr noundef nonnull @wfx_init_common.__key.28) #7
  %hif_cmd = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 15
  tail call void @wfx_init_hif_cmd(ptr noundef %hif_cmd) #7
  %force_ps_timeout = getelementptr inbounds %struct.wfx_dev, ptr %42, i32 0, i32 25
  %59 = ptrtoint ptr %force_ps_timeout to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %force_ps_timeout, align 4
  %call.i146 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @wfx_free_common, ptr noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i, label %do.body.cleanup_crit_edge, label %if.then.i

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_destroy(ptr noundef %tx_power_loop_info_lock) #7
  tail call void @mutex_destroy(ptr noundef %rx_stats_lock) #7
  tail call void @mutex_destroy(ptr noundef %conf_mutex) #7
  %60 = ptrtoint ptr %hw18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw18, align 4
  tail call void @ieee80211_free_hw(ptr noundef %61) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %42, %do.body.cleanup_crit_edge ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_cooling_timeout_work(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_init_hif_cmd(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wfx_free_common(ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_power_loop_info_lock = getelementptr inbounds %struct.wfx_dev, ptr %data, i32 0, i32 24
  tail call void @mutex_destroy(ptr noundef %tx_power_loop_info_lock) #7
  %rx_stats_lock = getelementptr inbounds %struct.wfx_dev, ptr %data, i32 0, i32 22
  tail call void @mutex_destroy(ptr noundef %rx_stats_lock) #7
  %conf_mutex = getelementptr inbounds %struct.wfx_dev, ptr %data, i32 0, i32 14
  tail call void @mutex_destroy(ptr noundef %conf_mutex) #7
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_free_hw(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_probe(ptr noundef %wdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_wakeup = getelementptr inbounds %struct.wfx_platform_data, ptr %wdev, i32 0, i32 2
  %0 = ptrtoint ptr %gpio_wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_wakeup, align 4
  store ptr null, ptr %gpio_wakeup, align 4
  %poll_irq = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 12
  %2 = ptrtoint ptr %poll_irq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %poll_irq, align 4
  tail call void @wfx_bh_register(ptr noundef %wdev) #7
  %call = tail call i32 @wfx_init_device(ptr noundef %wdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err0_crit_edge

entry.err0_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end:                                           ; preds = %entry
  tail call void @wfx_bh_poll_irq(ptr noundef %wdev) #7
  %firmware_ready = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 8
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %firmware_ready, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %if.then4, label %do.end18

if.then4:                                         ; preds = %if.end
  %3 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call3, label %if.then4.err0_crit_edge [
    i32 0, label %do.end
    i32 -512, label %do.end11
  ]

if.then4.err0_crit_edge:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30) #10
  br label %err0

do.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %dev12 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.33) #10
  br label %err0

do.end18:                                         ; preds = %if.end
  %dev19 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %8 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev19, align 4
  %firmware_major = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 17
  %10 = ptrtoint ptr %firmware_major to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %firmware_major, align 2
  %conv = zext i8 %11 to i32
  %firmware_minor = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 16
  %12 = ptrtoint ptr %firmware_minor to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %firmware_minor, align 1
  %conv21 = zext i8 %13 to i32
  %firmware_build = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 15
  %14 = ptrtoint ptr %firmware_build to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %firmware_build, align 4
  %conv23 = zext i8 %15 to i32
  %firmware_label = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 22
  %api_version_major = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 10
  %16 = ptrtoint ptr %api_version_major to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %api_version_major, align 1
  %conv26 = zext i8 %17 to i32
  %api_version_minor = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 9
  %18 = ptrtoint ptr %api_version_minor to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %api_version_minor, align 2
  %conv28 = zext i8 %19 to i32
  %keyset = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 7
  %20 = ptrtoint ptr %keyset to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %keyset, align 4
  %conv29 = zext i8 %21 to i32
  %link_mode = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 11
  %22 = ptrtoint ptr %link_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %link_mode, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv31 = zext i8 %bf.lshr to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %conv21, i32 noundef %conv23, ptr noundef %firmware_label, i32 noundef %conv26, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %conv31) #10
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 2
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy, align 8
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 38
  %27 = ptrtoint ptr %firmware_major to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %firmware_major, align 2
  %conv35 = zext i8 %28 to i32
  %29 = ptrtoint ptr %firmware_minor to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %firmware_minor, align 1
  %conv38 = zext i8 %30 to i32
  %31 = ptrtoint ptr %firmware_build to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %firmware_build, align 4
  %conv41 = zext i8 %32 to i32
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41)
  %33 = ptrtoint ptr %api_version_major to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %api_version_major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cond = icmp eq i8 %34, 0
  br i1 %cond, label %do.end47, label %if.end52

do.end47:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.41, i32 noundef 0) #10
  br label %err0

if.end52:                                         ; preds = %do.end18
  %37 = ptrtoint ptr %link_mode to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load55 = load i8, ptr %link_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load55)
  %cmp58 = icmp ugt i8 %bf.load55, -65
  br i1 %cmp58, label %do.end63, label %if.end65

do.end63:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.44) #10
  br label %err0

if.end65:                                         ; preds = %if.end52
  %region_sel_mode = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 20
  %40 = ptrtoint ptr %region_sel_mode to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load67 = load i16, ptr %region_sel_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %bf.load67)
  %tobool69.not = icmp ult i16 %bf.load67, 4096
  br i1 %tobool69.not, label %if.end65.do.body91_crit_edge, label %if.then70

if.end65.do.body91_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body91

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %wiphy72 = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wiphy72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy72, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 53
  %45 = ptrtoint ptr %bands to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bands, align 16
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %48, i32 11, i32 4
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %or = or i32 %50, 2
  store i32 %or, ptr %flags, align 4
  %51 = load ptr, ptr %hw, align 4
  %wiphy75 = getelementptr inbounds %struct.ieee80211_hw, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %wiphy75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wiphy75, align 8
  %bands76 = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 53
  %54 = ptrtoint ptr %bands76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bands76, align 16
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %flags80 = getelementptr %struct.ieee80211_channel, ptr %57, i32 12, i32 4
  %58 = ptrtoint ptr %flags80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags80, align 4
  %or81 = or i32 %59, 2
  store i32 %or81, ptr %flags80, align 4
  %60 = load ptr, ptr %hw, align 4
  %wiphy83 = getelementptr inbounds %struct.ieee80211_hw, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wiphy83 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wiphy83, align 8
  %bands84 = getelementptr inbounds %struct.wiphy, ptr %62, i32 0, i32 53
  %63 = ptrtoint ptr %bands84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bands84, align 16
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %flags88 = getelementptr %struct.ieee80211_channel, ptr %66, i32 13, i32 4
  %67 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags88, align 4
  %or89 = or i32 %68, 1
  store i32 %or89, ptr %flags88, align 4
  br label %do.body91

do.body91:                                        ; preds = %if.then70, %if.end65.do.body91_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_probe.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_probe, %if.then96)) #7
          to label %do.end101 [label %if.then96], !srcloc !133

if.then96:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev19, align 4
  %file_pds = getelementptr inbounds %struct.wfx_platform_data, ptr %wdev, i32 0, i32 1
  %71 = ptrtoint ptr %file_pds to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %file_pds, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_probe.__UNIQUE_ID_ddebug368, ptr noundef %70, ptr noundef nonnull @.str.46, ptr noundef %72) #7
  br label %do.end101

do.end101:                                        ; preds = %if.then96, %do.body91
  %call102 = tail call fastcc i32 @wfx_send_pdata_pds(ptr noundef %wdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call102)
  %cmp103 = icmp sgt i32 %call102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call102)
  %cmp105.not = icmp eq i32 %call102, -2
  %or.cond = or i1 %cmp103, %cmp105.not
  br i1 %or.cond, label %if.end108, label %do.end101.err0_crit_edge

do.end101.err0_crit_edge:                         ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end108:                                        ; preds = %do.end101
  %73 = ptrtoint ptr %poll_irq to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %poll_irq, align 4
  %hwbus_ops = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %74 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hwbus_ops, align 4
  %irq_subscribe = getelementptr inbounds %struct.hwbus_ops, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %irq_subscribe to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %irq_subscribe, align 4
  %hwbus_priv = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %78 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hwbus_priv, align 4
  %call110 = tail call i32 %77(ptr noundef %79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end108.err0_crit_edge

if.end108.err0_crit_edge:                         ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end113:                                        ; preds = %if.end108
  %call114 = tail call i32 @hif_use_multi_tx_conf(ptr noundef %wdev, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end113.if.end121_crit_edge, label %do.end119

if.end113.if.end121_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

do.end119:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.48) #10
  br label %if.end121

if.end121:                                        ; preds = %do.end119, %if.end113.if.end121_crit_edge
  %82 = ptrtoint ptr %gpio_wakeup to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %1, ptr %gpio_wakeup, align 4
  %tobool126.not = icmp eq ptr %1, null
  br i1 %tobool126.not, label %if.end121.if.end153_crit_edge, label %do.body128

if.end121.if.end153_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

do.body128:                                       ; preds = %if.end121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_probe.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_probe, %if.then140)) #7
          to label %do.end146 [label %if.then140], !srcloc !133

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev19, align 4
  %file_pds143 = getelementptr inbounds %struct.wfx_platform_data, ptr %wdev, i32 0, i32 1
  %85 = ptrtoint ptr %file_pds143 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %file_pds143, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_probe.__UNIQUE_ID_ddebug369, ptr noundef %84, ptr noundef nonnull @.str.50, ptr noundef %86) #7
  br label %do.end146

do.end146:                                        ; preds = %if.then140, %do.body128
  %87 = ptrtoint ptr %gpio_wakeup to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %gpio_wakeup, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %88, i32 noundef 1) #7
  %call149 = tail call i32 @control_reg_write(ptr noundef %wdev, i32 noundef 0) #7
  br label %if.end153

if.end153:                                        ; preds = %do.end146, %if.end121.if.end153_crit_edge
  %.sink = phi i32 [ 2, %do.end146 ], [ 1, %if.end121.if.end153_crit_edge ]
  %call152 = tail call i32 @hif_set_operational_mode(ptr noundef %wdev, i32 noundef %.sink) #7
  %arrayidx156 = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 4, i32 0
  %89 = call ptr @memset(ptr %arrayidx156, i32 0, i32 6)
  %90 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev19, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 27
  %92 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node, align 8
  %call163 = tail call i32 @of_get_mac_address(ptr noundef %93, ptr noundef %arrayidx156) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end153.if.end180_crit_edge, label %if.else172

if.end153.if.end180_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

if.else172:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx178 = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 8, i32 0
  %94 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx178, align 4
  %96 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx156, align 4
  %add.ptr.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 8, i32 0, i32 4
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 4, i32 0, i32 0, i32 4
  %99 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %add.ptr1.i, align 2
  br label %if.end180

if.end180:                                        ; preds = %if.else172, %if.end153.if.end180_crit_edge
  %100 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx156, align 4
  %102 = and i32 %101, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.i.not.i = icmp eq i32 %102, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end180.do.end189_crit_edge

if.end180.do.end189_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end189

is_valid_ether_addr.exit:                         ; preds = %if.end180
  %add.ptr.i.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 4, i32 0, i32 0, i32 4
  %103 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %104 to i32
  %or.i.i = or i32 %101, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end189_crit_edge, label %is_valid_ether_addr.exit.do.end198_crit_edge

is_valid_ether_addr.exit.do.end198_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end198

is_valid_ether_addr.exit.do.end189_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end189

do.end189:                                        ; preds = %is_valid_ether_addr.exit.do.end189_crit_edge, %if.end180.do.end189_crit_edge
  %105 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.52) #10
  tail call void @get_random_bytes(ptr noundef %arrayidx156, i32 noundef 6) #7
  %107 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx156, align 1
  %109 = and i8 %108, -4
  %110 = or i8 %109, 2
  store i8 %110, ptr %arrayidx156, align 1
  br label %do.end198

do.end198:                                        ; preds = %do.end189, %is_valid_ether_addr.exit.do.end198_crit_edge
  %111 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %112, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef %arrayidx156) #10
  %arrayidx156.1 = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 4, i32 1
  %113 = call ptr @memset(ptr %arrayidx156.1, i32 0, i32 6)
  %114 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev19, align 4
  %of_node.1 = getelementptr inbounds %struct.device, ptr %115, i32 0, i32 27
  %116 = ptrtoint ptr %of_node.1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %of_node.1, align 8
  %call163.1 = tail call i32 @of_get_mac_address(ptr noundef %117, ptr noundef %arrayidx156.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163.1)
  %tobool164.not.1 = icmp eq i32 %call163.1, 0
  br i1 %tobool164.not.1, label %if.then165.1, label %if.else172.1

if.else172.1:                                     ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx178.1 = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 8, i32 1
  %118 = ptrtoint ptr %arrayidx178.1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx178.1, align 4
  %120 = ptrtoint ptr %arrayidx156.1 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx156.1, align 4
  %add.ptr.i.1 = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 8, i32 1, i32 4
  %121 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr.i.1, align 2
  %add.ptr1.i.1 = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 4, i32 1, i32 0, i32 4
  %123 = ptrtoint ptr %add.ptr1.i.1 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %add.ptr1.i.1, align 2
  br label %if.end180.1

if.then165.1:                                     ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx169.1 = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 4, i32 1, i32 0, i32 5
  %124 = ptrtoint ptr %arrayidx169.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx169.1, align 1
  %conv171.1 = add i8 %125, 1
  store i8 %conv171.1, ptr %arrayidx169.1, align 1
  br label %if.end180.1

if.end180.1:                                      ; preds = %if.then165.1, %if.else172.1
  %126 = ptrtoint ptr %arrayidx156.1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx156.1, align 4
  %128 = and i32 %127, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.i.not.i.1 = icmp eq i32 %128, 0
  br i1 %tobool.i.not.i.1, label %is_valid_ether_addr.exit.1, label %if.end180.1.do.end189.1_crit_edge

if.end180.1.do.end189.1_crit_edge:                ; preds = %if.end180.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end189.1

is_valid_ether_addr.exit.1:                       ; preds = %if.end180.1
  %add.ptr.i.i.1 = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 4, i32 1, i32 0, i32 4
  %129 = ptrtoint ptr %add.ptr.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %add.ptr.i.i.1, align 2
  %conv.i.i.1 = zext i16 %130 to i32
  %or.i.i.1 = or i32 %127, %conv.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.1)
  %cmp.i.i.not.1 = icmp eq i32 %or.i.i.1, 0
  br i1 %cmp.i.i.not.1, label %is_valid_ether_addr.exit.1.do.end189.1_crit_edge, label %is_valid_ether_addr.exit.1.do.end198.1_crit_edge

is_valid_ether_addr.exit.1.do.end198.1_crit_edge: ; preds = %is_valid_ether_addr.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end198.1

is_valid_ether_addr.exit.1.do.end189.1_crit_edge: ; preds = %is_valid_ether_addr.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end189.1

do.end189.1:                                      ; preds = %is_valid_ether_addr.exit.1.do.end189.1_crit_edge, %if.end180.1.do.end189.1_crit_edge
  %131 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.52) #10
  tail call void @get_random_bytes(ptr noundef %arrayidx156.1, i32 noundef 6) #7
  %133 = ptrtoint ptr %arrayidx156.1 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx156.1, align 1
  %135 = and i8 %134, -4
  %136 = or i8 %135, 2
  store i8 %136, ptr %arrayidx156.1, align 1
  br label %do.end198.1

do.end198.1:                                      ; preds = %do.end189.1, %is_valid_ether_addr.exit.1.do.end198.1_crit_edge
  %137 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %138, ptr noundef nonnull @.str.56, i32 noundef 1, ptr noundef %arrayidx156.1) #10
  %139 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw, align 4
  %wiphy205 = getelementptr inbounds %struct.ieee80211_hw, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %wiphy205 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %wiphy205, align 8
  %n_addresses = getelementptr inbounds %struct.wiphy, ptr %142, i32 0, i32 8
  %143 = ptrtoint ptr %n_addresses to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 2, ptr %n_addresses, align 2
  %144 = load ptr, ptr %hw, align 4
  %wiphy209 = getelementptr inbounds %struct.ieee80211_hw, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %wiphy209 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wiphy209, align 8
  %addresses210 = getelementptr inbounds %struct.wiphy, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %addresses210 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %arrayidx156, ptr %addresses210, align 8
  %148 = ptrtoint ptr %api_version_major to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %api_version_major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %149)
  %cmp.i329 = icmp ult i8 %149, 3
  br i1 %cmp.i329, label %do.end198.1.if.end217_crit_edge, label %if.end.i331

do.end198.1.if.end217_crit_edge:                  ; preds = %do.end198.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217

if.end.i331:                                      ; preds = %do.end198.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %149)
  %cmp5.i330.not = icmp eq i8 %149, 3
  br i1 %cmp5.i330.not, label %wfx_api_older_than.exit336, label %if.end.i331.if.then212_crit_edge

if.end.i331.if.then212_crit_edge:                 ; preds = %if.end.i331
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then212

wfx_api_older_than.exit336:                       ; preds = %if.end.i331
  %150 = ptrtoint ptr %api_version_minor to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %api_version_minor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %151)
  %cmp11.i = icmp ult i8 %151, 8
  br i1 %cmp11.i, label %wfx_api_older_than.exit336.if.end217_crit_edge, label %wfx_api_older_than.exit336.if.then212_crit_edge

wfx_api_older_than.exit336.if.then212_crit_edge:  ; preds = %wfx_api_older_than.exit336
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then212

wfx_api_older_than.exit336.if.end217_crit_edge:   ; preds = %wfx_api_older_than.exit336
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217

if.then212:                                       ; preds = %wfx_api_older_than.exit336.if.then212_crit_edge, %if.end.i331.if.then212_crit_edge
  %152 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw, align 4
  %wiphy214 = getelementptr inbounds %struct.ieee80211_hw, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %wiphy214 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wiphy214, align 8
  %flags215 = getelementptr inbounds %struct.wiphy, ptr %155, i32 0, i32 11
  %156 = ptrtoint ptr %flags215 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags215, align 32
  %or216 = or i32 %157, 32768
  store i32 %or216, ptr %flags215, align 32
  br label %if.end217

if.end217:                                        ; preds = %if.then212, %wfx_api_older_than.exit336.if.end217_crit_edge, %do.end198.1.if.end217_crit_edge
  %158 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw, align 4
  %call219 = tail call i32 @ieee80211_register_hw(ptr noundef %159) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.end217.err1_crit_edge

if.end217.err1_crit_edge:                         ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

if.end222:                                        ; preds = %if.end217
  %call223 = tail call i32 @wfx_debug_init(ptr noundef %wdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.end222.cleanup_crit_edge, label %err2

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err2:                                             ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %161) #7
  br label %err1

err1:                                             ; preds = %err2, %if.end217.err1_crit_edge
  %err.0 = phi i32 [ %call219, %if.end217.err1_crit_edge ], [ %call223, %err2 ]
  %162 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hwbus_ops, align 4
  %irq_unsubscribe = getelementptr inbounds %struct.hwbus_ops, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %irq_unsubscribe to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %irq_unsubscribe, align 4
  %166 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hwbus_priv, align 4
  %call230 = tail call i32 %165(ptr noundef %167) #7
  br label %err0

err0:                                             ; preds = %err1, %if.end108.err0_crit_edge, %do.end101.err0_crit_edge, %do.end63, %do.end47, %do.end11, %do.end, %if.then4.err0_crit_edge, %entry.err0_crit_edge
  %err.1 = phi i32 [ %call, %entry.err0_crit_edge ], [ -110, %do.end ], [ -512, %do.end11 ], [ -524, %do.end47 ], [ %call3, %do.end63 ], [ %call110, %if.end108.err0_crit_edge ], [ %err.0, %err1 ], [ %call3, %if.then4.err0_crit_edge ], [ %call102, %do.end101.err0_crit_edge ]
  tail call void @wfx_bh_unregister(ptr noundef %wdev) #7
  br label %cleanup

cleanup:                                          ; preds = %err0, %if.end222.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err0 ], [ 0, %if.end222.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bh_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_init_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bh_poll_irq(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wfx_send_pdata_pds(ptr noundef %wdev) unnamed_addr #1 align 64 {
entry:
  %pds = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pds) #7
  %0 = ptrtoint ptr %pds to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pds, align 4, !annotation !134
  %file_pds = getelementptr inbounds %struct.wfx_platform_data, ptr %wdev, i32 0, i32 1
  %1 = ptrtoint ptr %file_pds to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %file_pds, align 4
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call = call i32 @request_firmware(ptr noundef nonnull %pds, ptr noundef %2, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %file_pds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file_pds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.61, ptr noundef %8) #10
  br label %err1

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %pds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pds, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %call4 = call ptr @kmemdup(ptr noundef %12, i32 noundef %14, i32 noundef 3264) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.err2_crit_edge, label %if.end7

if.end.err2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err2

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pds to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pds, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %call9 = call i32 @wfx_send_pds(ptr noundef %wdev, ptr noundef nonnull %call4, i32 noundef %18)
  call void @kfree(ptr noundef nonnull %call4) #7
  br label %err2

err2:                                             ; preds = %if.end7, %if.end.err2_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end7 ], [ -12, %if.end.err2_crit_edge ]
  %19 = ptrtoint ptr %pds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pds, align 4
  call void @release_firmware(ptr noundef %20) #7
  br label %err1

err1:                                             ; preds = %err2, %do.end
  %ret.1 = phi i32 [ %call, %do.end ], [ %ret.0, %err2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pds) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_use_multi_tx_conf(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @control_reg_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_operational_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_debug_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bh_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_release(ptr noundef %wdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #7
  %call = tail call i32 @hif_shutdown(ptr noundef %wdev) #7
  %hwbus_ops = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %2 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwbus_ops, align 4
  %irq_unsubscribe = getelementptr inbounds %struct.hwbus_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %irq_unsubscribe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_unsubscribe, align 4
  %hwbus_priv = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %6 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwbus_priv, align 4
  %call1 = tail call i32 %5(ptr noundef %7) #7
  tail call void @wfx_bh_unregister(ptr noundef %wdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_shutdown(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_core_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @wfx_spi_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @sdio_register_driver(ptr noundef nonnull @wfx_sdio_driver) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wfx_core_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sdio_unregister_driver(ptr noundef nonnull @wfx_sdio_driver) #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @wfx_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_start(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_stop(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_add_interface(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_remove_interface(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_config(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bss_info_changed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_start_ap(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_stop_ap(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_configure_filter(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_set_tim(ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_set_default_unicast_key(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_hw_scan(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_cancel_hw_scan(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_set_rts_threshold(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_sta_add(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_sta_remove(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_ampdu_action(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_flush(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_add_chanctx(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_remove_chanctx(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_change_chanctx(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_assign_vif_chanctx(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_unassign_vif_chanctx(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_join_ibss(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_leave_ibss(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !118, !119, !121, !122, !123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__UNIQUE_ID_description363, !1, !"__UNIQUE_ID_description363", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/main.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_author364, !3, !"__UNIQUE_ID_author364", i1 false, i1 false}
!3 = !{!"../drivers/staging/wfx/main.c", i32 39, i32 1}
!4 = !{ptr @__UNIQUE_ID_file365, !5, !"__UNIQUE_ID_file365", i1 false, i1 false}
!5 = !{!"../drivers/staging/wfx/main.c", i32 40, i32 1}
!6 = !{ptr @__UNIQUE_ID_license366, !5, !"__UNIQUE_ID_license366", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/wfx/main.c", i32 188, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wfx_send_pds._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @wfx_send_pds._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/wfx/main.c", i32 202, i32 4}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wfx_send_pds.__UNIQUE_ID_ddebug367, !16, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/wfx/main.c", i32 207, i32 5}
!21 = !{ptr @wfx_send_pds._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @wfx_send_pds._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/wfx/main.c", i32 212, i32 5}
!25 = !{ptr @wfx_send_pds._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @wfx_send_pds._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/wfx/main.c", i32 217, i32 5}
!29 = !{ptr @wfx_send_pds._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @wfx_send_pds._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/wfx/main.c", i32 320, i32 40}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/wfx/main.c", i32 322, i32 57}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/wfx/main.c", i32 327, i32 52}
!37 = !{ptr @wfx_init_common.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/staging/wfx/main.c", i32 329, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @wfx_init_common.__key.20, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/staging/wfx/main.c", i32 330, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @wfx_init_common.__key.22, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/staging/wfx/main.c", i32 331, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @wfx_init_common.__key.24, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/staging/wfx/main.c", i32 333, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @wfx_init_common.__key.26, !47, !"__key", i1 false, i1 false}
!50 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @wfx_init_common.__key.28, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/staging/wfx/main.c", i32 336, i32 2}
!53 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/wfx/main.c", i32 369, i32 4}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @wfx_probe._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @wfx_probe._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/wfx/main.c", i32 372, i32 4}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @wfx_probe._entry.32, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @wfx_probe._entry_ptr.35, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/wfx/main.c", i32 378, i32 2}
!66 = !{ptr @wfx_probe._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @wfx_probe._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/wfx/main.c", i32 385, i32 4}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/wfx/main.c", i32 391, i32 3}
!72 = !{ptr @wfx_probe._entry.40, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @wfx_probe._entry_ptr.42, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/wfx/main.c", i32 399, i32 3}
!76 = !{ptr @wfx_probe._entry.43, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @wfx_probe._entry_ptr.45, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/wfx/main.c", i32 410, i32 2}
!80 = !{ptr @wfx_probe.__UNIQUE_ID_ddebug368, !79, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/wfx/main.c", i32 423, i32 3}
!83 = !{ptr @wfx_probe._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wfx_probe._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/wfx/main.c", i32 427, i32 3}
!87 = !{ptr @wfx_probe.__UNIQUE_ID_ddebug369, !86, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/wfx/main.c", i32 448, i32 4}
!90 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @wfx_probe._entry.51, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @wfx_probe._entry_ptr.54, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/wfx/main.c", i32 451, i32 3}
!95 = !{ptr @wfx_probe._entry.55, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @wfx_probe._entry_ptr.57, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @__initcall__kmod_wfx__370_497_wfx_core_init6, !98, !"__initcall__kmod_wfx__370_497_wfx_core_init6", i1 false, i1 false}
!98 = !{!"../drivers/staging/wfx/main.c", i32 497, i32 1}
!99 = !{ptr @__exitcall_wfx_core_exit, !100, !"__exitcall_wfx_core_exit", i1 false, i1 false}
!100 = !{!"../drivers/staging/wfx/main.c", i32 506, i32 1}
!101 = !{ptr @wfx_ops, !102, !"wfx_ops", i1 false, i1 false}
!102 = !{!"../drivers/staging/wfx/main.c", i32 124, i32 35}
!103 = !{ptr @wfx_iface_combinations, !104, !"wfx_iface_combinations", i1 false, i1 false}
!104 = !{!"../drivers/staging/wfx/main.c", i32 115, i32 49}
!105 = !{ptr @wdev_iface_limits, !106, !"wdev_iface_limits", i1 false, i1 false}
!106 = !{!"../drivers/staging/wfx/main.c", i32 110, i32 43}
!107 = !{ptr @wfx_band_2ghz, !108, !"wfx_band_2ghz", i1 false, i1 false}
!108 = !{!"../drivers/staging/wfx/main.c", i32 89, i32 46}
!109 = !{ptr @wfx_2ghz_chantable, !110, !"wfx_2ghz_chantable", i1 false, i1 false}
!110 = !{!"../drivers/staging/wfx/main.c", i32 72, i32 33}
!111 = !{ptr @wfx_rates, !112, !"wfx_rates", i1 false, i1 false}
!112 = !{!"../drivers/staging/wfx/main.c", i32 48, i32 30}
!113 = !{ptr @init_completion.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../include/linux/completion.h", i32 87, i32 2}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @skb_queue_head_init.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!118 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/wfx/main.c", i32 236, i32 3}
!121 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @wfx_send_pdata_pds._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @wfx_send_pdata_pds._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2148966041, i64 2148966046, i64 2148966059, i64 2148966103, i64 2148966137, i64 2148966158}
!134 = !{!"auto-init"}
