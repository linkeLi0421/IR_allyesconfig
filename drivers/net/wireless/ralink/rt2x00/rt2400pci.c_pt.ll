; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2400pci.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2400pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00debug = type { ptr, %struct.regcsr, %struct.regeeprom, %struct.regbbp, %struct.regrf, %struct.regrfcsr }
%struct.regcsr = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regeeprom = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regbbp = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regrf = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regrfcsr = type { ptr, ptr, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.data_queue = type { ptr, ptr, i32, i32, %struct.mutex, %struct.spinlock, %struct.spinlock, i32, i16, i16, i16, [3 x i16], i16, i32, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, ptr, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.130, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
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
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.link = type { i32, %struct.link_qual, %struct.link_ant, %struct.ewma_rssi, %struct.delayed_work, %struct.delayed_work, i32, i8, %struct.delayed_work, %struct.delayed_work }
%struct.link_qual = type { i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.link_ant = type { i32, %struct.antenna_setup, i32, %struct.ewma_rssi }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.130 = type { %union.anon.131, [0 x i32] }
%union.anon.131 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.129 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.channel_info = type { i32, i16, i16, i16, i16 }
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
%struct.queue_entry_priv_mmio = type { ptr, i32 }
%struct.txentry_desc = type { i32, i16, i16, %union.anon.133, i32, i16, i32, i16, i16, i16 }
%union.anon.133 = type { %struct.anon.135 }
%struct.anon.135 = type { i16, i8, i8, i8, i32, i32 }
%struct.anon.134 = type { i16, i16, i16, i16, i32 }
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }
%struct.rt2x00intf_conf = type { i32, i32, [2 x i32], [2 x i32] }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.rt2x00lib_conf = type { ptr, %struct.rf_channel, %struct.channel_info }
%struct.txdone_entry_desc = type { i32, i32 }

@__UNIQUE_ID_author600 = internal constant [48 x i8] c"rt2400pci.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version601 = internal constant [24 x i8] c"rt2400pci.version=2.3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rt2400pci\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description602 = internal constant [70 x i8] c"rt2400pci.description=Ralink RT2400 PCI & PCMCIA Wireless LAN driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_file603 = internal constant [60 x i8] c"rt2400pci.file=drivers/net/wireless/ralink/rt2x00/rt2400pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license604 = internal constant [22 x i8] c"rt2400pci.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rt2400pci__605_1841_rt2400pci_driver_init6 = internal global ptr @rt2400pci_driver_init, section ".initcall6.init", align 4
@rt2400pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @rt2400pci_device_table, ptr @rt2400pci_probe, ptr @rt2x00pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rt2400pci_driver_exit = internal global ptr @rt2400pci_driver_exit, section ".exitcall.exit", align 4
@rt2400pci_device_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6164, i32 257, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rt2x00pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@rt2400pci_ops = internal constant { %struct.rt2x00_ops, [52 x i8] } { %struct.rt2x00_ops { ptr @.str.1, i32 0, i32 1, i32 256, i32 12, i32 2, ptr @rt2400pci_queue_init, ptr @rt2400pci_rt2x00_ops, ptr null, ptr @rt2400pci_mac80211_ops, ptr @rt2400pci_rt2x00debug }, [52 x i8] zeroinitializer }, align 32
@rt2400pci_rt2x00_ops = internal constant { %struct.rt2x00lib_ops, [52 x i8] } { %struct.rt2x00lib_ops { ptr @rt2400pci_interrupt, ptr @rt2400pci_txstatus_tasklet, ptr null, ptr @rt2400pci_tbtt_tasklet, ptr @rt2400pci_rxdone_tasklet, ptr null, ptr @rt2400pci_probe_hw, ptr null, ptr null, ptr null, ptr @rt2x00mmio_initialize, ptr @rt2x00mmio_uninitialize, ptr @rt2400pci_get_entry_state, ptr @rt2400pci_clear_entry, ptr @rt2400pci_set_device_state, ptr @rt2400pci_rfkill_poll, ptr @rt2400pci_link_stats, ptr @rt2400pci_reset_tuner, ptr @rt2400pci_link_tuner, ptr null, ptr null, ptr null, ptr @rt2400pci_start_queue, ptr @rt2400pci_kick_queue, ptr @rt2400pci_stop_queue, ptr @rt2x00mmio_flush_queue, ptr null, ptr @rt2400pci_write_tx_desc, ptr null, ptr @rt2400pci_write_beacon, ptr null, ptr null, ptr @rt2400pci_fill_rxdone, ptr null, ptr null, ptr @rt2400pci_config_filter, ptr @rt2400pci_config_intf, ptr @rt2400pci_config_erp, ptr @rt2400pci_config_ant, ptr @rt2400pci_config, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rt2400pci_mac80211_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rt2x00mac_tx, ptr @rt2x00mac_start, ptr @rt2x00mac_stop, ptr null, ptr null, ptr null, ptr @rt2x00mac_add_interface, ptr null, ptr @rt2x00mac_remove_interface, ptr @rt2x00mac_config, ptr @rt2x00mac_bss_info_changed, ptr null, ptr null, ptr null, ptr @rt2x00mac_configure_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_sw_scan_start, ptr @rt2x00mac_sw_scan_complete, ptr @rt2x00mac_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2400pci_conf_tx, ptr @rt2400pci_get_tsf, ptr null, ptr null, ptr null, ptr @rt2400pci_tx_last_beacon, ptr null, ptr null, ptr @rt2x00mac_rfkill_poll, ptr null, ptr null, ptr null, ptr @rt2x00mac_flush, ptr null, ptr @rt2x00mac_set_antenna, ptr @rt2x00mac_get_antenna, ptr null, ptr null, ptr null, ptr @rt2x00mac_get_ringparam, ptr @rt2x00mac_tx_frames_pending, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@rt2400pci_rt2x00debug = internal constant { %struct.rt2x00debug, [36 x i8] } { %struct.rt2x00debug { ptr null, %struct.regcsr { ptr @rt2x00mmio_register_read, ptr @rt2x00mmio_register_write, i32 1, i32 0, i32 4, i32 83 }, %struct.regeeprom { ptr @rt2x00_eeprom_read, ptr @rt2x00_eeprom_write, i32 0, i32 0, i32 2, i32 128 }, %struct.regbbp { ptr @rt2400pci_bbp_read, ptr @rt2400pci_bbp_write, i32 0, i32 0, i32 1, i32 32 }, %struct.regrf { ptr @rt2x00_rf_read, ptr @rt2400pci_rf_write, i32 0, i32 4, i32 4, i32 3 }, %struct.regrfcsr zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@rt2400pci_validate_eeprom._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt2400pci_validate_eeprom = private unnamed_addr constant [26 x i8] c"rt2400pci_validate_eeprom\00", align 1
@rt2400pci_validate_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.rt2400pci_validate_eeprom, ptr @.str.5, i32 1460, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Error - Invalid EEPROM data detected\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2400pci.c\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt2400pci_validate_eeprom._entry_ptr = internal global ptr @rt2400pci_validate_eeprom._entry, section ".printk_index", align 4
@rt2400pci_init_eeprom._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2400pci_init_eeprom = private unnamed_addr constant [22 x i8] c"rt2400pci_init_eeprom\00", align 1
@rt2400pci_init_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.rt2400pci_init_eeprom, ptr @.str.5, i32 1487, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error - Invalid RF chipset detected\0A\00", [55 x i8] zeroinitializer }, align 32
@rt2400pci_init_eeprom._entry_ptr = internal global ptr @rt2400pci_init_eeprom._entry, section ".printk_index", align 4
@rt2x00_set_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 1109, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: Info - Chipset detected - rt: %04x, rf: %04x, rev: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt2x00_set_chip\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt2x00_set_chip._entry_ptr = internal global ptr @rt2x00_set_chip._entry, section ".printk_index", align 4
@rf_vals_b = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 139352, i32 794586, i32 257, i32 0 }, %struct.rf_channel { i32 2, i32 139352, i32 794606, i32 257, i32 0 }, %struct.rf_channel { i32 3, i32 139352, i32 794626, i32 257, i32 0 }, %struct.rf_channel { i32 4, i32 139352, i32 794646, i32 257, i32 0 }, %struct.rf_channel { i32 5, i32 139352, i32 794666, i32 257, i32 0 }, %struct.rf_channel { i32 6, i32 139352, i32 794686, i32 257, i32 0 }, %struct.rf_channel { i32 7, i32 139352, i32 794706, i32 257, i32 0 }, %struct.rf_channel { i32 8, i32 139352, i32 794726, i32 257, i32 0 }, %struct.rf_channel { i32 9, i32 139352, i32 794746, i32 257, i32 0 }, %struct.rf_channel { i32 10, i32 139352, i32 794766, i32 257, i32 0 }, %struct.rf_channel { i32 11, i32 139352, i32 794786, i32 257, i32 0 }, %struct.rf_channel { i32 12, i32 139352, i32 794806, i32 257, i32 0 }, %struct.rf_channel { i32 13, i32 139352, i32 794826, i32 257, i32 0 }, %struct.rf_channel { i32 14, i32 139352, i32 794874, i32 257, i32 0 }], [72 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rt2400pci_set_device_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2400pci_set_device_state = private unnamed_addr constant [27 x i8] c"rt2400pci_set_device_state\00", align 1
@rt2400pci_set_device_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.rt2400pci_set_device_state, ptr @.str.5, i32 1086, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - Device failed to enter state %d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@rt2400pci_set_device_state._entry_ptr = internal global ptr @rt2400pci_set_device_state._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt2400pci_wait_bbp_ready._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2400pci_wait_bbp_ready = private unnamed_addr constant [25 x i8] c"rt2400pci_wait_bbp_ready\00", align 1
@rt2400pci_wait_bbp_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.rt2400pci_wait_bbp_ready, ptr @.str.5, i32 912, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - BBP register access failed, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@rt2400pci_wait_bbp_ready._entry_ptr = internal global ptr @rt2400pci_wait_bbp_ready._entry, section ".printk_index", align 4
@rt2400pci_write_beacon._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2400pci_write_beacon = private unnamed_addr constant [23 x i8] c"rt2400pci_write_beacon\00", align 1
@rt2400pci_write_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.rt2400pci_write_beacon, ptr @.str.5, i32 1180, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Error - Fail to map beacon, aborting\0A\00", [54 x i8] zeroinitializer }, align 32
@rt2400pci_write_beacon._entry_ptr = internal global ptr @rt2400pci_write_beacon._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 17]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1822, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"rt2400pci_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1833, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"rt2400pci_device_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1815, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"rt2400pci_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1798, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"rt2400pci_rt2x00_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1729, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"rt2400pci_mac80211_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1706, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"rt2400pci_rt2x00debug\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 159, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1460, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1487, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [47 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1107, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [10 x i8] c"rf_vals_b\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1543, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1085, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 912, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [50 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1180, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author600, ptr @__UNIQUE_ID_description602, ptr @__UNIQUE_ID_file603, ptr @__UNIQUE_ID_license604, ptr @__UNIQUE_ID_version601, ptr @__exitcall_rt2400pci_driver_exit, ptr @__initcall__kmod_rt2400pci__605_1841_rt2400pci_driver_init6, ptr @__modver_attr, ptr @rt2400pci_driver_exit, ptr @rt2400pci_init_eeprom._entry, ptr @rt2400pci_init_eeprom._entry_ptr, ptr @rt2400pci_set_device_state._entry, ptr @rt2400pci_set_device_state._entry_ptr, ptr @rt2400pci_validate_eeprom._entry, ptr @rt2400pci_validate_eeprom._entry_ptr, ptr @rt2400pci_wait_bbp_ready._entry, ptr @rt2400pci_wait_bbp_ready._entry_ptr, ptr @rt2400pci_write_beacon._entry, ptr @rt2400pci_write_beacon._entry_ptr, ptr @rt2x00_set_chip._entry, ptr @rt2x00_set_chip._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rt2400pci_driver, ptr @rt2400pci_device_table, ptr @rt2400pci_ops, ptr @rt2400pci_rt2x00_ops, ptr @rt2400pci_mac80211_ops, ptr @rt2400pci_rt2x00debug, ptr @rt2400pci_validate_eeprom._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rt2400pci_init_eeprom._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @rf_vals_b, ptr @rt2400pci_set_device_state._rs, ptr @.str.13, ptr @rt2400pci_wait_bbp_ready._rs, ptr @.str.14, ptr @rt2400pci_write_beacon._rs, ptr @.str.15], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_device_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_rt2x00_ops to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_mac80211_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_rt2x00debug to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_validate_eeprom._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_validate_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_init_eeprom._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_init_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00_set_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_b to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_set_device_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_set_device_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_wait_bbp_ready._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_wait_bbp_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_write_beacon._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2400pci_write_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2400pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rt2400pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @rt2400pci_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2400pci_probe(ptr noundef %pci_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rt2x00pci_probe(ptr noundef %pci_dev, ptr noundef nonnull @rt2400pci_ops) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00pci_remove(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00pci_probe(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_queue_init(ptr nocapture noundef %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qid, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 14, label %entry.sw.epilog_crit_edge
    i32 0, label %entry.sw.epilog_crit_edge35
    i32 1, label %entry.sw.epilog_crit_edge36
    i32 2, label %entry.sw.epilog_crit_edge37
    i32 3, label %entry.sw.epilog_crit_edge38
    i32 16, label %sw.bb6
    i32 17, label %sw.bb11
  ]

entry.sw.epilog_crit_edge38:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2400pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #13, !srcloc !80
  unreachable

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb6, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge35, %entry.sw.epilog_crit_edge36, %entry.sw.epilog_crit_edge37, %entry.sw.epilog_crit_edge38
  %.sink34 = phi i16 [ 8, %sw.bb11 ], [ 1, %sw.bb6 ], [ 24, %entry.sw.epilog_crit_edge ], [ 24, %entry.sw.epilog_crit_edge35 ], [ 24, %entry.sw.epilog_crit_edge36 ], [ 24, %entry.sw.epilog_crit_edge37 ], [ 24, %entry.sw.epilog_crit_edge38 ]
  %.sink = phi i16 [ 2432, %sw.bb11 ], [ 256, %sw.bb6 ], [ 2432, %entry.sw.epilog_crit_edge ], [ 2432, %entry.sw.epilog_crit_edge35 ], [ 2432, %entry.sw.epilog_crit_edge36 ], [ 2432, %entry.sw.epilog_crit_edge37 ], [ 2432, %entry.sw.epilog_crit_edge38 ]
  %limit12 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 8
  %3 = ptrtoint ptr %limit12 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %.sink34, ptr %limit12, align 4
  %data_size13 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 18
  %4 = ptrtoint ptr %data_size13 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink, ptr %data_size13, align 4
  %desc_size14 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 19
  %5 = ptrtoint ptr %desc_size14 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %desc_size14, align 2
  %priv_size15 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 21
  %6 = ptrtoint ptr %priv_size15 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8, ptr %priv_size15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2400pci_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i212 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 %2) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 13
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end4.if.end14_crit_edge, label %if.then13

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.end4
  %state.i = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 59, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then13.if.end14_crit_edge

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %tbtt_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 59
  tail call void @__tasklet_hi_schedule(ptr noundef %tbtt_tasklet) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %if.then13.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %9 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool35.not = icmp eq i32 %9, 0
  br i1 %tobool35.not, label %if.end14.if.end37_crit_edge, label %if.then36

if.end14.if.end37_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then36:                                        ; preds = %if.end14
  %state.i213 = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 60, i32 1
  %call.i214 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i213) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool.not.i215 = icmp eq i32 %call.i214, 0
  br i1 %tobool.not.i215, label %if.then.i216, label %if.then36.if.end37_crit_edge

if.then36.if.end37_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then.i216:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %rxdone_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 60
  tail call void @__tasklet_schedule(ptr noundef %rxdone_tasklet) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then.i216, %if.then36.if.end37_crit_edge, %if.end14.if.end37_crit_edge
  %10 = and i32 %3, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end37.if.end180_crit_edge, label %if.then102

if.end37.if.end180_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end180

if.then102:                                       ; preds = %if.end37
  %state.i217 = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 57, i32 1
  %call.i218 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i217) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i219 = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i219, label %if.then.i220, label %if.then102.tasklet_schedule.exit221_crit_edge

if.then102.tasklet_schedule.exit221_crit_edge:    ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %tasklet_schedule.exit221

if.then.i220:                                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  %txstatus_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 57
  tail call void @__tasklet_schedule(ptr noundef %txstatus_tasklet) #13
  br label %tasklet_schedule.exit221

tasklet_schedule.exit221:                         ; preds = %if.then.i220, %if.then102.tasklet_schedule.exit221_crit_edge
  %or179 = or i32 %3, 56
  br label %if.end180

if.end180:                                        ; preds = %tasklet_schedule.exit221, %if.end37.if.end180_crit_edge
  %mask.0 = phi i32 [ %or179, %tasklet_schedule.exit221 ], [ %3, %if.end37.if.end180_crit_edge ]
  %irqmask_lock = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 63
  tail call void @_raw_spin_lock(ptr noundef %irqmask_lock) #13
  %12 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i, align 4
  %add.ptr.i223 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #13, !srcloc !81
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %or182 = or i32 %15, %mask.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %or182) #13
  %17 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %16) #13, !srcloc !84
  tail call void @_raw_spin_unlock(ptr noundef %irqmask_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end180 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_txstatus_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3024
  tail call fastcc void @rt2400pci_txdone(ptr noundef %add.ptr, i32 noundef 17)
  tail call fastcc void @rt2400pci_txdone(ptr noundef %add.ptr, i32 noundef 0)
  tail call fastcc void @rt2400pci_txdone(ptr noundef %add.ptr, i32 noundef 1)
  %flags = getelementptr i8, ptr %t, i32 -1200
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %irqmask_lock = getelementptr i8, ptr %t, i32 124
  tail call void @_raw_spin_lock_irq(ptr noundef %irqmask_lock) #13
  %csr.i = getelementptr i8, ptr %t, i32 -1116
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %6 = and i32 %5, -939524097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %6) #13, !srcloc !84
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_tbtt_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3072
  tail call void @rt2x00lib_beacondone(ptr noundef %add.ptr) #13
  %flags = getelementptr i8, ptr %t, i32 -1248
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %irqmask_lock.i = getelementptr i8, ptr %t, i32 76
  tail call void @_raw_spin_lock_irq(ptr noundef %irqmask_lock.i) #13
  %csr.i.i = getelementptr i8, ptr %t, i32 -1164
  %3 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %6) #13, !srcloc !84
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_rxdone_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3096
  %call = tail call zeroext i1 @rt2x00mmio_rxdone(ptr noundef %add.ptr) #13
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__tasklet_schedule(ptr noundef %t) #13
  br label %if.end3

if.else:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %t, i32 -1272
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else.if.end3_crit_edge, label %if.then2

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %irqmask_lock.i = getelementptr i8, ptr %t, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %irqmask_lock.i) #13
  %csr.i.i = getelementptr i8, ptr %t, i32 -1188
  %3 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %6 = and i32 %5, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %6) #13, !srcloc !84
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock.i) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else.if.end3_crit_edge, %if.then.i, %if.then.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2400pci_probe_hw(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  %eeprom.i = alloca %struct.eeprom_93cx6, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eeprom.i) #13
  %0 = getelementptr inbounds i8, ptr %eeprom.i, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -72057594021150721, ptr %0, align 4
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %5 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rt2x00dev, ptr %eeprom.i, align 4
  %register_read.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i, i32 0, i32 1
  %6 = ptrtoint ptr %register_read.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rt2400pci_eepromregister_read, ptr %register_read.i, align 4
  %register_write.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i, i32 0, i32 2
  %7 = ptrtoint ptr %register_write.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rt2400pci_eepromregister_write, ptr %register_write.i, align 4
  %8 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 6
  %width.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i, i32 0, i32 3
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i, ptr %width.i, align 4
  %eeprom8.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %10 = ptrtoint ptr %eeprom8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eeprom8.i, align 8
  call void @eeprom_93cx6_multiread(ptr noundef nonnull %eeprom.i, i8 noundef zeroext 0, ptr noundef %11, i16 noundef zeroext 128) #13
  %12 = ptrtoint ptr %eeprom8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eeprom8.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %13, i32 2
  call void @rt2x00lib_set_mac_address(ptr noundef %rt2x00dev, ptr noundef %arrayidx.i.i) #13
  %14 = ptrtoint ptr %eeprom8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eeprom8.i, align 8
  %arrayidx.i34.i = getelementptr i16, ptr %15, i32 11
  %16 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i34.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp12.i = icmp eq i16 %17, -1
  br i1 %cmp12.i, label %do.body14.i, label %if.end

do.body14.i:                                      ; preds = %entry
  %call15.i = call i32 @___ratelimit(ptr noundef nonnull @rt2400pci_validate_eeprom._rs, ptr noundef nonnull @__func__.rt2400pci_validate_eeprom) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.rt2400pci_validate_eeprom.exit.thread_crit_edge, label %do.end20.i

do.body14.i.rt2400pci_validate_eeprom.exit.thread_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_validate_eeprom.exit.thread

do.end20.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rt2400pci_validate_eeprom) #16
  br label %rt2400pci_validate_eeprom.exit.thread

rt2400pci_validate_eeprom.exit.thread:            ; preds = %do.end20.i, %do.body14.i.rt2400pci_validate_eeprom.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom.i) #13
  %22 = ptrtoint ptr %eeprom8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eeprom8.i, align 8
  %arrayidx.i.i44 = getelementptr i16, ptr %23, i32 11
  %24 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i.i44, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #13
  %conv2.i = zext i16 %26 to i32
  %and.i = lshr i16 %26, 6
  %27 = and i16 %and.i, 1
  %28 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr.i.i, align 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #13, !srcloc !81
  %31 = call i32 @llvm.bswap.i32(i32 %30) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %conv31.i = trunc i32 %31 to i16
  %chip.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17
  %32 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 9312, ptr %chip.i.i, align 8
  %rf3.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %33 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %27, ptr %rf3.i.i, align 2
  %rev5.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 2
  %34 = ptrtoint ptr %rev5.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv31.i, ptr %rev5.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %35 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  %conv10.i.i = zext i16 %27 to i32
  %conv13.i.i = and i32 %31, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 9312, i32 noundef %conv10.i.i, i32 noundef %conv13.i.i) #16
  %39 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rf3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %40)
  %switch.i = icmp ult i16 %40, 2
  br i1 %switch.i, label %if.end42.i, label %do.body34.i

do.body34.i:                                      ; preds = %if.end
  %call35.i = call i32 @___ratelimit(ptr noundef nonnull @rt2400pci_init_eeprom._rs, ptr noundef nonnull @__func__.rt2400pci_init_eeprom) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool.not.i46 = icmp eq i32 %call35.i, 0
  br i1 %tobool.not.i46, label %do.body34.i.cleanup_crit_edge, label %do.end39.i

do.body34.i.cleanup_crit_edge:                    ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end39.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i47 = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wiphy.i47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy.i47, align 8
  %dev.i48 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i48, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rt2400pci_init_eeprom) #16
  br label %cleanup

if.end42.i:                                       ; preds = %if.end
  %and56.i = lshr i32 %conv2.i, 2
  %45 = and i32 %and56.i, 3
  %default_ant.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19
  %tx.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19, i32 1
  %46 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tx.i, align 4
  %and77.i = lshr i32 %conv2.i, 4
  %47 = and i32 %and77.i, 3
  %48 = ptrtoint ptr %default_ant.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %default_ant.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp88.i = icmp eq i32 %45, 0
  br i1 %cmp88.i, label %if.then90.i, label %if.end42.i.if.end93.i_crit_edge

if.end42.i.if.end93.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93.i

if.then90.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %tx.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then90.i, %if.end42.i.if.end93.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp96.i = icmp eq i32 %47, 0
  br i1 %cmp96.i, label %if.then98.i, label %if.end93.i.if.end101.i_crit_edge

if.end93.i.if.end101.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.i

if.then98.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %default_ant.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %default_ant.i, align 8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then98.i, %if.end93.i.if.end101.i_crit_edge
  %and115.i = lshr i16 %26, 7
  %led_radio.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9
  %51 = ptrtoint ptr %led_radio.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %rt2x00dev, ptr %led_radio.i, align 4
  %type2.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 2
  %52 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %type2.i.i, align 4
  %brightness_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 5
  %53 = ptrtoint ptr %brightness_set.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @rt2400pci_brightness_set, ptr %brightness_set.i.i, align 4
  %blink_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 8
  %54 = ptrtoint ptr %blink_set.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @rt2400pci_blink_set, ptr %blink_set.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %55 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %flags.i.i, align 4
  %trunc.i = trunc i16 %and115.i to i2
  %56 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.16)
  switch i2 %trunc.i, label %if.end101.i.if.end135.i_crit_edge [
    i2 1, label %if.end101.i.if.then134.i_crit_edge
    i2 0, label %if.end101.i.if.then134.i_crit_edge65
    i2 -1, label %if.end101.i.if.then134.i_crit_edge66
  ]

if.end101.i.if.then134.i_crit_edge66:             ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then134.i

if.end101.i.if.then134.i_crit_edge65:             ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then134.i

if.end101.i.if.then134.i_crit_edge:               ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then134.i

if.end101.i.if.end135.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135.i

if.then134.i:                                     ; preds = %if.end101.i.if.then134.i_crit_edge, %if.end101.i.if.then134.i_crit_edge65, %if.end101.i.if.then134.i_crit_edge66
  %led_qual.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11
  %57 = ptrtoint ptr %led_qual.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %rt2x00dev, ptr %led_qual.i, align 4
  %type2.i215.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 2
  %58 = ptrtoint ptr %type2.i215.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %type2.i215.i, align 4
  %brightness_set.i216.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %59 = ptrtoint ptr %brightness_set.i216.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @rt2400pci_brightness_set, ptr %brightness_set.i216.i, align 4
  %blink_set.i217.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 8
  %60 = ptrtoint ptr %blink_set.i217.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @rt2400pci_blink_set, ptr %blink_set.i217.i, align 4
  %flags.i218.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %61 = ptrtoint ptr %flags.i218.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %flags.i218.i, align 4
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then134.i, %if.end101.i.if.end135.i_crit_edge
  %62 = and i32 %conv2.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool157.not.i = icmp eq i32 %62, 0
  br i1 %tobool157.not.i, label %if.end135.i.if.end159.i_crit_edge, label %if.then158.i

if.end135.i.if.end159.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end159.i

if.then158.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %63 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cap_flags.i, align 4
  %or.i.i = or i32 %64, 4096
  store i32 %or.i.i, ptr %cap_flags.i, align 4
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then158.i, %if.end135.i.if.end159.i_crit_edge
  %65 = and i32 %conv2.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool181.not.i = icmp eq i32 %65, 0
  br i1 %tobool181.not.i, label %if.end159.i.if.end5_crit_edge, label %if.then182.i

if.end159.i.if.end5_crit_edge:                    ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then182.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags183.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %66 = ptrtoint ptr %cap_flags183.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cap_flags183.i, align 4
  %or.i212.i = or i32 %67, 262144
  store i32 %or.i212.i, ptr %cap_flags183.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then182.i, %if.end159.i.if.end5_crit_edge
  %68 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 288
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %71 = or i32 %70, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %72 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %73, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %71) #13, !srcloc !84
  %spec1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18
  %74 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw.i.i, align 4
  %flags.i.i53 = getelementptr inbounds %struct.ieee80211_hw, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %flags.i.i53 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i.i53, align 4
  %or.i.i.i = or i32 %77, 512
  store i32 %or.i.i.i, ptr %flags.i.i53, align 4
  %78 = load ptr, ptr %hw.i.i, align 4
  %flags.i58.i = getelementptr inbounds %struct.ieee80211_hw, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i58.i, align 4
  %or.i.i59.i = or i32 %80, 256
  store i32 %or.i.i59.i, ptr %flags.i58.i, align 4
  %81 = load ptr, ptr %hw.i.i, align 4
  %flags.i60.i = getelementptr inbounds %struct.ieee80211_hw, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %flags.i60.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i60.i, align 4
  %or.i.i61.i = or i32 %83, 4
  store i32 %or.i.i61.i, ptr %flags.i60.i, align 4
  %84 = load ptr, ptr %hw.i.i, align 4
  %flags.i62.i = getelementptr inbounds %struct.ieee80211_hw, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %flags.i62.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i62.i, align 4
  %or.i.i63.i = or i32 %86, 16
  store i32 %or.i.i63.i, ptr %flags.i62.i, align 4
  %87 = load ptr, ptr %hw.i.i, align 4
  %88 = ptrtoint ptr %rt2x00dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rt2x00dev, align 8
  %wiphy.i.i54 = getelementptr inbounds %struct.ieee80211_hw, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %wiphy.i.i54 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wiphy.i.i54, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %91, i32 0, i32 56, i32 1
  %92 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %parent.i.i.i, align 8
  %93 = load ptr, ptr %hw.i.i, align 4
  %94 = ptrtoint ptr %eeprom8.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %eeprom8.i, align 8
  %arrayidx.i.i56 = getelementptr i16, ptr %95, i32 2
  %wiphy.i64.i = getelementptr inbounds %struct.ieee80211_hw, ptr %93, i32 0, i32 1
  %96 = ptrtoint ptr %wiphy.i64.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wiphy.i64.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %97, i32 0, i32 1
  %98 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %arrayidx.i.i56, i32 6)
  %99 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %spec1.i, align 4
  %supported_rates.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 1
  %100 = ptrtoint ptr %supported_rates.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %supported_rates.i, align 4
  %num_channels.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 2
  %101 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 14, ptr %num_channels.i, align 4
  %channels.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 3
  %102 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @rf_vals_b, ptr %channels.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3520, i32 noundef 168) #17
  %tobool.not.i57 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i57, label %if.end5.cleanup_crit_edge, label %if.end.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %channels_info.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 4
  %104 = ptrtoint ptr %channels_info.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i.i.i.i, ptr %channels_info.i, align 4
  %105 = ptrtoint ptr %eeprom8.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %eeprom8.i, align 8
  %arrayidx.i66.i = getelementptr i16, ptr %106, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.067.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %max_power.i = getelementptr %struct.channel_info, ptr %call7.i.i.i.i, i32 %i.067.i, i32 1
  %107 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 31, ptr %max_power.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %arrayidx.i66.i, i32 %i.067.i
  %108 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx10.i, align 1
  %110 = call i8 @llvm.umax.i8(i8 %109, i8 31) #13
  %111 = call i8 @llvm.umin.i8(i8 %110, i8 62) #13
  %cond27.i = zext i8 %111 to i16
  %add.i = add nsw i16 %cond27.i, -31
  %default_power1.i = getelementptr %struct.channel_info, ptr %call7.i.i.i.i, i32 %i.067.i, i32 2
  %112 = ptrtoint ptr %default_power1.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %add.i, ptr %default_power1.i, align 2
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %if.end23, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end23:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %113 = ptrtoint ptr %cap_flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cap_flags, align 4
  %or.i43 = or i32 %114, 268
  store i32 %or.i43, ptr %cap_flags, align 4
  %rssi_offset = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 37
  %115 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 100, ptr %rssi_offset, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end5.cleanup_crit_edge, %do.end39.i, %do.body34.i.cleanup_crit_edge, %rt2400pci_validate_eeprom.exit.thread
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %rt2400pci_validate_eeprom.exit.thread ], [ -19, %do.end39.i ], [ -19, %do.body34.i.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mmio_initialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mmio_uninitialize(ptr noundef) #0

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt2400pci_get_entry_state(ptr nocapture noundef readonly %entry1) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 5
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp = icmp eq i32 %5, 14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = lshr i32 %9, 24
  %and = and i32 %10, 1
  %11 = and i32 %9, 50331648
  %retval.0.in = select i1 %cmp, i32 %and, i32 %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in)
  %retval.0 = icmp ne i32 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt2400pci_clear_entry(ptr nocapture noundef readonly %entry1) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 5
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp = icmp eq i32 %5, 14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %12 = and i32 %11, 65535
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %and18 = and i32 %15, 65535
  %or = or i32 %13, %and18
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.i.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %arrayidx.i.i159 = getelementptr i32, ptr %19, i32 1
  %skb_dma = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  %20 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %skb_dma, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  %23 = ptrtoint ptr %arrayidx.i.i159 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.i.i159, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = or i32 %27, 16777216
  store i32 %28, ptr %25, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %33 = and i32 %32, -50331649
  store i32 %33, ptr %30, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2400pci_set_device_state(ptr noundef %rt2x00dev, i32 noundef %state) #2 align 64 {
entry:
  %reg.i189.i.i = alloca i32, align 4
  %reg.i180.i.i = alloca i32, align 4
  %reg.i171.i.i = alloca i32, align 4
  %reg.i162.i.i = alloca i32, align 4
  %reg.i153.i.i = alloca i32, align 4
  %reg.i144.i.i = alloca i32, align 4
  %reg.i135.i.i = alloca i32, align 4
  %reg.i126.i.i = alloca i32, align 4
  %reg.i117.i.i = alloca i32, align 4
  %reg.i108.i.i = alloca i32, align 4
  %reg.i99.i.i = alloca i32, align 4
  %reg.i90.i.i = alloca i32, align 4
  %reg.i81.i.i = alloca i32, align 4
  %reg.i72.i.i = alloca i32, align 4
  %reg.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %state, label %entry.do.body_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb2
    i32 6, label %entry.sw.bb3_crit_edge
    i32 7, label %entry.sw.bb3_crit_edge36
    i32 0, label %entry.sw.bb4_crit_edge
    i32 1, label %entry.sw.bb4_crit_edge37
    i32 2, label %entry.sw.bb4_crit_edge38
    i32 3, label %entry.sw.bb4_crit_edge39
  ]

entry.sw.bb4_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb3_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

sw.bb:                                            ; preds = %entry
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %1 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 104
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %tx.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 51
  %4 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx.i.i, align 8
  %desc_size.i.i = getelementptr inbounds %struct.data_queue, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %desc_size.i.i, align 2
  %conv2.i.i = zext i8 %7 to i32
  %limit.i.i = getelementptr %struct.data_queue, ptr %5, i32 1, i32 8
  %8 = ptrtoint ptr %limit.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %limit.i.i, align 4
  %conv31.i.i = zext i16 %9 to i32
  %shl38.i.i = shl nuw nsw i32 %conv31.i.i, 8
  %shl38.masked.i.i = and i32 %shl38.i.i, 65280
  %and58.i.i = or i32 %shl38.masked.i.i, %conv2.i.i
  %atim.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 53
  %10 = ptrtoint ptr %atim.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atim.i.i, align 8
  %limit60.i.i = getelementptr inbounds %struct.data_queue, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %limit60.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %limit60.i.i, align 4
  %conv61.i.i = zext i16 %13 to i32
  %shl68.i.i = shl nuw i32 %conv61.i.i, 16
  %shl68.masked.i.i = and i32 %shl68.i.i, 16711680
  %and88.i.i = or i32 %and58.i.i, %shl68.masked.i.i
  %limit92.i.i = getelementptr inbounds %struct.data_queue, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %limit92.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %limit92.i.i, align 4
  %conv93.i.i = zext i16 %15 to i32
  %shl100.i.i = shl i32 %conv93.i.i, 24
  %or108.i.i = or i32 %and88.i.i, %shl100.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %or108.i.i) #13
  %17 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %18, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %16) #13, !srcloc !84
  %19 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx.i.i, align 8
  %entries.i.i = getelementptr %struct.data_queue, ptr %20, i32 1, i32 1
  %21 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %entries.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.queue_entry, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv_data.i.i, align 4
  %25 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %26, i32 108
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %desc_dma.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %desc_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %desc_dma.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  %31 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %32, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %30) #13, !srcloc !84
  %33 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx.i.i, align 8
  %entries143.i.i = getelementptr inbounds %struct.data_queue, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %entries143.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entries143.i.i, align 4
  %priv_data145.i.i = getelementptr inbounds %struct.queue_entry, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %priv_data145.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv_data145.i.i, align 4
  %39 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %40, i32 116
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %desc_dma160.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %desc_dma160.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %desc_dma160.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #13
  %45 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %46, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %44) #13, !srcloc !84
  %47 = ptrtoint ptr %atim.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %atim.i.i, align 8
  %entries177.i.i = getelementptr inbounds %struct.data_queue, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %entries177.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %entries177.i.i, align 4
  %priv_data179.i.i = getelementptr inbounds %struct.queue_entry, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %priv_data179.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv_data179.i.i, align 4
  %53 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %54, i32 112
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %desc_dma194.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %52, i32 0, i32 1
  %56 = ptrtoint ptr %desc_dma194.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %desc_dma194.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #13
  %59 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %60, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %58) #13, !srcloc !84
  %bcn.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 52
  %61 = ptrtoint ptr %bcn.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bcn.i.i, align 4
  %entries210.i.i = getelementptr inbounds %struct.data_queue, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %entries210.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %entries210.i.i, align 4
  %priv_data212.i.i = getelementptr inbounds %struct.queue_entry, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %priv_data212.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv_data212.i.i, align 4
  %67 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %68, i32 120
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %desc_dma227.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %desc_dma227.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %desc_dma227.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #13
  %73 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %74, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %72) #13, !srcloc !84
  %75 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %76, i32 132
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %78 = and i32 %77, 65535
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #13
  %rx.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 50
  %80 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx.i.i, align 4
  %desc_size257.i.i = getelementptr inbounds %struct.data_queue, ptr %81, i32 0, i32 19
  %82 = ptrtoint ptr %desc_size257.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %desc_size257.i.i, align 2
  %conv258.i.i = zext i8 %83 to i32
  %or273.i.i = or i32 %79, %conv258.i.i
  %limit288.i.i = getelementptr inbounds %struct.data_queue, ptr %81, i32 0, i32 8
  %84 = ptrtoint ptr %limit288.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %limit288.i.i, align 4
  %conv289.i.i = zext i16 %85 to i32
  %shl296.i.i = shl nuw nsw i32 %conv289.i.i, 8
  %and303.i.i = and i32 %shl296.i.i, 65280
  %or304.i.i = or i32 %or273.i.i, %and303.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %86 = tail call i32 @llvm.bswap.i32(i32 %or304.i.i) #13
  %87 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %88, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %86) #13, !srcloc !84
  %89 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rx.i.i, align 4
  %entries306.i.i = getelementptr inbounds %struct.data_queue, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %entries306.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %entries306.i.i, align 4
  %priv_data308.i.i = getelementptr inbounds %struct.queue_entry, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %priv_data308.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv_data308.i.i, align 4
  %95 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %96, i32 136
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %desc_dma323.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %94, i32 0, i32 1
  %98 = ptrtoint ptr %desc_dma323.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %desc_dma323.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #13
  %101 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %102, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %100) #13, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %103 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %104, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 33554944) #13, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %105 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i936.i.i = getelementptr i8, ptr %106, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i936.i.i, i32 33554432) #13, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %107 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i938.i.i = getelementptr i8, ptr %108, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i938.i.i, i32 541000192) #13, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %109 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i940.i.i = getelementptr i8, ptr %110, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i940.i.i, i32 33554432) #13, !srcloc !84
  %111 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i942.i.i = getelementptr i8, ptr %112, i32 220
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i942.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %114 = and i32 %113, 63743
  %115 = or i32 %114, 557776896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %116 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i944.i.i = getelementptr i8, ptr %117, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i944.i.i, i32 %115) #13, !srcloc !84
  %118 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i946.i.i = getelementptr i8, ptr %119, i32 36
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i946.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %121 = and i32 %120, 2146500607
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #13
  %123 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rx.i.i, align 4
  %data_size.i.i = getelementptr inbounds %struct.data_queue, ptr %124, i32 0, i32 18
  %125 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %data_size.i.i, align 4
  %127 = and i16 %126, 3968
  %and93.i.i = zext i16 %127 to i32
  %or94.i.i = or i32 %122, %and93.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %128 = tail call i32 @llvm.bswap.i32(i32 %or94.i.i) #13
  %129 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i948.i.i = getelementptr i8, ptr %130, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i948.i.i, i32 %128) #13, !srcloc !84
  %131 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i950.i.i = getelementptr i8, ptr %132, i32 56
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i950.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %and289.i.i = and i32 %133, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %134 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i952.i.i = getelementptr i8, ptr %135, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i952.i.i, i32 %and289.i.i) #13, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %136 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i954.i.i = getelementptr i8, ptr %137, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i954.i.i, i32 2111) #13, !srcloc !84
  %138 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i956.i.i = getelementptr i8, ptr %139, i32 152
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i956.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %141 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i958.i.i = getelementptr i8, ptr %142, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i958.i.i, i32 -2054780793) #13, !srcloc !84
  %143 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i960.i.i = getelementptr i8, ptr %144, i32 144
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i960.i.i) #13, !srcloc !81
  %146 = shl i32 %145, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %or565.i.i = or i32 %146, 10788995
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %147 = tail call i32 @llvm.bswap.i32(i32 %or565.i.i) #13
  %148 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i962.i.i = getelementptr i8, ptr %149, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i962.i.i, i32 %147) #13, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %150 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i964.i.i = getelementptr i8, ptr %151, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i964.i.i, i32 3226431) #13, !srcloc !84
  %ops.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %152 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i.i, align 4
  %lib.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %153, i32 0, i32 7
  %154 = ptrtoint ptr %lib.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %lib.i.i, align 4
  %set_device_state.i.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %155, i32 0, i32 14
  %156 = ptrtoint ptr %set_device_state.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %set_device_state.i.i, align 4
  %call566.i.i = tail call i32 %157(ptr noundef %rt2x00dev, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call566.i.i)
  %tobool.not.i.i = icmp eq i32 %call566.i.i, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.rhs.i:                                        ; preds = %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %158 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i966.i.i = getelementptr i8, ptr %159, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i966.i.i, i32 594682112) #13, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %160 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i968.i.i = getelementptr i8, ptr %161, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i968.i.i, i32 408232704) #13, !srcloc !84
  %162 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i970.i.i = getelementptr i8, ptr %163, i32 308
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i970.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %165 = and i32 %164, 16777215
  %166 = or i32 %165, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %167 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i972.i.i = getelementptr i8, ptr %168, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i972.i.i, i32 %166) #13, !srcloc !84
  %169 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i974.i.i = getelementptr i8, ptr %170, i32 232
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i974.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %172 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i976.i.i = getelementptr i8, ptr %173, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i976.i.i, i32 295305370) #13, !srcloc !84
  %174 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i978.i.i = getelementptr i8, ptr %175, i32 4
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i978.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %177 = and i32 %176, -117440513
  %178 = or i32 %177, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %179 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i980.i.i = getelementptr i8, ptr %180, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i980.i.i, i32 %178) #13, !srcloc !84
  %181 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i982.i.i = getelementptr i8, ptr %182, i32 4
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i982.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %184 = and i32 %183, -83886081
  %185 = or i32 %184, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %186 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i984.i.i = getelementptr i8, ptr %187, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i984.i.i, i32 %185) #13, !srcloc !84
  %188 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i986.i.i = getelementptr i8, ptr %189, i32 160
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i986.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %191 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i988.i.i = getelementptr i8, ptr %192, i32 188
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i988.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %lor.rhs.i
  %i.016.i.i.i = phi i32 [ 0, %lor.rhs.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i.i = tail call zeroext i8 @rt2400pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 0) #13
  %194 = zext i8 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %call.i.i.i, label %if.end.i12.i [
    i8 -1, label %for.body.i.i.i.if.end.i.i.i_crit_edge
    i8 0, label %for.body.i.i.i.if.end.i.i.i_crit_edge40
  ]

for.body.i.i.i.if.end.i.i.i_crit_edge40:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i.if.end.i.i.i_crit_edge, %for.body.i.i.i.if.end.i.i.i_crit_edge40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %195(i32 noundef 21474800) #13
  %inc.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 100
  br i1 %exitcond.not.i.i.i, label %do.body.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  %call6.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @rt2400pci_wait_bbp_ready._rs, ptr noundef nonnull @__func__.rt2400pci_wait_bbp_ready) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.do.body_crit_edge, label %do.end.i.i.i

do.body.i.i.i.do.body_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %196 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hw.i.i.i, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wiphy.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.wiphy, ptr %199, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rt2400pci_wait_bbp_ready) #16
  br label %do.body

if.end.i12.i:                                     ; preds = %for.body.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  %200 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1, ptr %reg.i.i.i, align 4, !annotation !85
  %csr_mutex.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i69.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i.i)
  %tobool.not.i70.i.i = icmp eq i32 %call.i69.i.i, 0
  br i1 %tobool.not.i70.i.i, label %if.end.i12.i.rt2400pci_bbp_write.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i12.i.rt2400pci_bbp_write.exit.i.i_crit_edge: ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  %201 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 98560, ptr %reg.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %202 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %203, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 8454400) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit.i.i

rt2400pci_bbp_write.exit.i.i:                     ; preds = %if.then.i.i.i, %if.end.i12.i.rt2400pci_bbp_write.exit.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i72.i.i) #13
  %204 = ptrtoint ptr %reg.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 -1, ptr %reg.i72.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i74.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i72.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i.i)
  %tobool.not.i75.i.i = icmp eq i32 %call.i74.i.i, 0
  br i1 %tobool.not.i75.i.i, label %rt2400pci_bbp_write.exit.i.i.rt2400pci_bbp_write.exit80.i.i_crit_edge, label %if.then.i78.i.i

rt2400pci_bbp_write.exit.i.i.rt2400pci_bbp_write.exit80.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit80.i.i

if.then.i78.i.i:                                  ; preds = %rt2400pci_bbp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %205 = ptrtoint ptr %reg.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 99111, ptr %reg.i72.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %206 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i77.i.i = getelementptr i8, ptr %207, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77.i.i, i32 662896896) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit80.i.i

rt2400pci_bbp_write.exit80.i.i:                   ; preds = %if.then.i78.i.i, %rt2400pci_bbp_write.exit.i.i.rt2400pci_bbp_write.exit80.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i72.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i81.i.i) #13
  %208 = ptrtoint ptr %reg.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -1, ptr %reg.i81.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i83.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i81.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i.i)
  %tobool.not.i84.i.i = icmp eq i32 %call.i83.i.i, 0
  br i1 %tobool.not.i84.i.i, label %rt2400pci_bbp_write.exit80.i.i.rt2400pci_bbp_write.exit89.i.i_crit_edge, label %if.then.i87.i.i

rt2400pci_bbp_write.exit80.i.i.rt2400pci_bbp_write.exit89.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit89.i.i

if.then.i87.i.i:                                  ; preds = %rt2400pci_bbp_write.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %209 = ptrtoint ptr %reg.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 99336, ptr %reg.i81.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %210 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i86.i.i = getelementptr i8, ptr %211, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86.i.i, i32 142868736) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit89.i.i

rt2400pci_bbp_write.exit89.i.i:                   ; preds = %if.then.i87.i.i, %rt2400pci_bbp_write.exit80.i.i.rt2400pci_bbp_write.exit89.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i81.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i90.i.i) #13
  %212 = ptrtoint ptr %reg.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 -1, ptr %reg.i90.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i92.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i90.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i.i)
  %tobool.not.i93.i.i = icmp eq i32 %call.i92.i.i, 0
  br i1 %tobool.not.i93.i.i, label %rt2400pci_bbp_write.exit89.i.i.rt2400pci_bbp_write.exit98.i.i_crit_edge, label %if.then.i96.i.i

rt2400pci_bbp_write.exit89.i.i.rt2400pci_bbp_write.exit98.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit89.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit98.i.i

if.then.i96.i.i:                                  ; preds = %rt2400pci_bbp_write.exit89.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %213 = ptrtoint ptr %reg.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 100879, ptr %reg.i90.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %214 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i95.i.i = getelementptr i8, ptr %215, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95.i.i, i32 260702464) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit98.i.i

rt2400pci_bbp_write.exit98.i.i:                   ; preds = %if.then.i96.i.i, %rt2400pci_bbp_write.exit89.i.i.rt2400pci_bbp_write.exit98.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i90.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i99.i.i) #13
  %216 = ptrtoint ptr %reg.i99.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -1, ptr %reg.i99.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i101.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i99.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i.i)
  %tobool.not.i102.i.i = icmp eq i32 %call.i101.i.i, 0
  br i1 %tobool.not.i102.i.i, label %rt2400pci_bbp_write.exit98.i.i.rt2400pci_bbp_write.exit107.i.i_crit_edge, label %if.then.i105.i.i

rt2400pci_bbp_write.exit98.i.i.rt2400pci_bbp_write.exit107.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit98.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit107.i.i

if.then.i105.i.i:                                 ; preds = %rt2400pci_bbp_write.exit98.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %217 = ptrtoint ptr %reg.i99.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 102258, ptr %reg.i99.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %218 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i104.i.i = getelementptr i8, ptr %219, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i104.i.i, i32 1921974528) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit107.i.i

rt2400pci_bbp_write.exit107.i.i:                  ; preds = %if.then.i105.i.i, %rt2400pci_bbp_write.exit98.i.i.rt2400pci_bbp_write.exit107.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i99.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i108.i.i) #13
  %220 = ptrtoint ptr %reg.i108.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 -1, ptr %reg.i108.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i110.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i108.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i.i)
  %tobool.not.i111.i.i = icmp eq i32 %call.i110.i.i, 0
  br i1 %tobool.not.i111.i.i, label %rt2400pci_bbp_write.exit107.i.i.rt2400pci_bbp_write.exit116.i.i_crit_edge, label %if.then.i114.i.i

rt2400pci_bbp_write.exit107.i.i.rt2400pci_bbp_write.exit116.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit116.i.i

if.then.i114.i.i:                                 ; preds = %rt2400pci_bbp_write.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %221 = ptrtoint ptr %reg.i108.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 102516, ptr %reg.i108.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %222 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i113.i.i = getelementptr i8, ptr %223, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i113.i.i, i32 1955594496) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit116.i.i

rt2400pci_bbp_write.exit116.i.i:                  ; preds = %if.then.i114.i.i, %rt2400pci_bbp_write.exit107.i.i.rt2400pci_bbp_write.exit116.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i108.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i117.i.i) #13
  %224 = ptrtoint ptr %reg.i117.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %reg.i117.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i119.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i117.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i.i)
  %tobool.not.i120.i.i = icmp eq i32 %call.i119.i.i, 0
  br i1 %tobool.not.i120.i.i, label %rt2400pci_bbp_write.exit116.i.i.rt2400pci_bbp_write.exit125.i.i_crit_edge, label %if.then.i123.i.i

rt2400pci_bbp_write.exit116.i.i.rt2400pci_bbp_write.exit125.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit125.i.i

if.then.i123.i.i:                                 ; preds = %rt2400pci_bbp_write.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %225 = ptrtoint ptr %reg.i117.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 102688, ptr %reg.i117.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %226 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i122.i.i = getelementptr i8, ptr %227, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i122.i.i, i32 546373888) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit125.i.i

rt2400pci_bbp_write.exit125.i.i:                  ; preds = %if.then.i123.i.i, %rt2400pci_bbp_write.exit116.i.i.rt2400pci_bbp_write.exit125.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i117.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i126.i.i) #13
  %228 = ptrtoint ptr %reg.i126.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 -1, ptr %reg.i126.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i128.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i126.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i.i)
  %tobool.not.i129.i.i = icmp eq i32 %call.i128.i.i, 0
  br i1 %tobool.not.i129.i.i, label %rt2400pci_bbp_write.exit125.i.i.rt2400pci_bbp_write.exit134.i.i_crit_edge, label %if.then.i132.i.i

rt2400pci_bbp_write.exit125.i.i.rt2400pci_bbp_write.exit134.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit125.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit134.i.i

if.then.i132.i.i:                                 ; preds = %rt2400pci_bbp_write.exit125.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %229 = ptrtoint ptr %reg.i126.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 103026, ptr %reg.i126.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %230 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i131.i.i = getelementptr i8, ptr %231, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i131.i.i, i32 1922171136) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit134.i.i

rt2400pci_bbp_write.exit134.i.i:                  ; preds = %if.then.i132.i.i, %rt2400pci_bbp_write.exit125.i.i.rt2400pci_bbp_write.exit134.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i126.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i135.i.i) #13
  %232 = ptrtoint ptr %reg.i135.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 -1, ptr %reg.i135.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i137.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i135.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.i.i)
  %tobool.not.i138.i.i = icmp eq i32 %call.i137.i.i, 0
  br i1 %tobool.not.i138.i.i, label %rt2400pci_bbp_write.exit134.i.i.rt2400pci_bbp_write.exit143.i.i_crit_edge, label %if.then.i141.i.i

rt2400pci_bbp_write.exit134.i.i.rt2400pci_bbp_write.exit143.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit134.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit143.i.i

if.then.i141.i.i:                                 ; preds = %rt2400pci_bbp_write.exit134.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %233 = ptrtoint ptr %reg.i135.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 103179, ptr %reg.i135.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %234 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i140.i.i = getelementptr i8, ptr %235, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i140.i.i, i32 194183424) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit143.i.i

rt2400pci_bbp_write.exit143.i.i:                  ; preds = %if.then.i141.i.i, %rt2400pci_bbp_write.exit134.i.i.rt2400pci_bbp_write.exit143.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i135.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i144.i.i) #13
  %236 = ptrtoint ptr %reg.i144.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 -1, ptr %reg.i144.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i146.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i144.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146.i.i)
  %tobool.not.i147.i.i = icmp eq i32 %call.i146.i.i, 0
  br i1 %tobool.not.i147.i.i, label %rt2400pci_bbp_write.exit143.i.i.rt2400pci_bbp_write.exit152.i.i_crit_edge, label %if.then.i150.i.i

rt2400pci_bbp_write.exit143.i.i.rt2400pci_bbp_write.exit152.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit152.i.i

if.then.i150.i.i:                                 ; preds = %rt2400pci_bbp_write.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %237 = ptrtoint ptr %reg.i144.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 103424, ptr %reg.i144.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %238 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i149.i.i = getelementptr i8, ptr %239, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i149.i.i, i32 9699584) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit152.i.i

rt2400pci_bbp_write.exit152.i.i:                  ; preds = %if.then.i150.i.i, %rt2400pci_bbp_write.exit143.i.i.rt2400pci_bbp_write.exit152.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i144.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i153.i.i) #13
  %240 = ptrtoint ptr %reg.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 -1, ptr %reg.i153.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i155.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i153.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.i.i)
  %tobool.not.i156.i.i = icmp eq i32 %call.i155.i.i, 0
  br i1 %tobool.not.i156.i.i, label %rt2400pci_bbp_write.exit152.i.i.rt2400pci_bbp_write.exit161.i.i_crit_edge, label %if.then.i159.i.i

rt2400pci_bbp_write.exit152.i.i.rt2400pci_bbp_write.exit161.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit152.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit161.i.i

if.then.i159.i.i:                                 ; preds = %rt2400pci_bbp_write.exit152.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %241 = ptrtoint ptr %reg.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 105489, ptr %reg.i153.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %242 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i158.i.i = getelementptr i8, ptr %243, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i158.i.i, i32 295436544) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit161.i.i

rt2400pci_bbp_write.exit161.i.i:                  ; preds = %if.then.i159.i.i, %rt2400pci_bbp_write.exit152.i.i.rt2400pci_bbp_write.exit161.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i153.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i162.i.i) #13
  %244 = ptrtoint ptr %reg.i162.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 -1, ptr %reg.i162.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i164.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i162.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164.i.i)
  %tobool.not.i165.i.i = icmp eq i32 %call.i164.i.i, 0
  br i1 %tobool.not.i165.i.i, label %rt2400pci_bbp_write.exit161.i.i.rt2400pci_bbp_write.exit170.i.i_crit_edge, label %if.then.i168.i.i

rt2400pci_bbp_write.exit161.i.i.rt2400pci_bbp_write.exit170.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit161.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit170.i.i

if.then.i168.i.i:                                 ; preds = %rt2400pci_bbp_write.exit161.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %245 = ptrtoint ptr %reg.i162.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 105732, ptr %reg.i162.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %246 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i167.i.i = getelementptr i8, ptr %247, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i167.i.i, i32 77398272) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit170.i.i

rt2400pci_bbp_write.exit170.i.i:                  ; preds = %if.then.i168.i.i, %rt2400pci_bbp_write.exit161.i.i.rt2400pci_bbp_write.exit170.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i162.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i171.i.i) #13
  %248 = ptrtoint ptr %reg.i171.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 -1, ptr %reg.i171.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i173.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i171.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173.i.i)
  %tobool.not.i174.i.i = icmp eq i32 %call.i173.i.i, 0
  br i1 %tobool.not.i174.i.i, label %rt2400pci_bbp_write.exit170.i.i.rt2400pci_bbp_write.exit179.i.i_crit_edge, label %if.then.i177.i.i

rt2400pci_bbp_write.exit170.i.i.rt2400pci_bbp_write.exit179.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit170.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit179.i.i

if.then.i177.i.i:                                 ; preds = %rt2400pci_bbp_write.exit170.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %249 = ptrtoint ptr %reg.i171.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 106017, ptr %reg.i171.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %250 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i176.i.i = getelementptr i8, ptr %251, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i176.i.i, i32 564003072) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit179.i.i

rt2400pci_bbp_write.exit179.i.i:                  ; preds = %if.then.i177.i.i, %rt2400pci_bbp_write.exit170.i.i.rt2400pci_bbp_write.exit179.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i171.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i180.i.i) #13
  %252 = ptrtoint ptr %reg.i180.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 -1, ptr %reg.i180.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i182.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i180.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.i.i)
  %tobool.not.i183.i.i = icmp eq i32 %call.i182.i.i, 0
  br i1 %tobool.not.i183.i.i, label %rt2400pci_bbp_write.exit179.i.i.rt2400pci_bbp_write.exit188.i.i_crit_edge, label %if.then.i186.i.i

rt2400pci_bbp_write.exit179.i.i.rt2400pci_bbp_write.exit188.i.i_crit_edge: ; preds = %rt2400pci_bbp_write.exit179.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit188.i.i

if.then.i186.i.i:                                 ; preds = %rt2400pci_bbp_write.exit179.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %253 = ptrtoint ptr %reg.i180.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 106240, ptr %reg.i180.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %254 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i185.i.i = getelementptr i8, ptr %255, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i185.i.i, i32 10420480) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit188.i.i

rt2400pci_bbp_write.exit188.i.i:                  ; preds = %if.then.i186.i.i, %rt2400pci_bbp_write.exit179.i.i.rt2400pci_bbp_write.exit188.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i180.i.i) #13
  %eeprom.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rt2400pci_bbp_write.exit188.i.i
  %i.0201.i.i = phi i32 [ 0, %rt2400pci_bbp_write.exit188.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.0201.i.i, 12
  %256 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %eeprom.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i16, ptr %257, i32 %add.i.i
  %258 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %arrayidx.i.i.i, align 2
  %260 = call i16 @llvm.bswap.i16(i16 %259) #13
  %261 = zext i16 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %260, label %if.then9.i.i [
    i16 -1, label %for.body.i.i.for.inc.i.i_crit_edge
    i16 0, label %for.body.i.i.for.inc.i.i_crit_edge41
  ]

for.body.i.i.for.inc.i.i_crit_edge41:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i189.i.i) #13
  %262 = ptrtoint ptr %reg.i189.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 -1, ptr %reg.i189.i.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i191.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i189.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191.i.i)
  %tobool.not.i192.i.i = icmp eq i32 %call.i191.i.i, 0
  br i1 %tobool.not.i192.i.i, label %if.then9.i.i.rt2400pci_bbp_write.exit197.i.i_crit_edge, label %if.then.i195.i.i

if.then9.i.i.rt2400pci_bbp_write.exit197.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit197.i.i

if.then.i195.i.i:                                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or48.i.i.i = zext i16 %260 to i32
  %or100.i.i.i = or i32 %or48.i.i.i, 98304
  %263 = ptrtoint ptr %reg.i189.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %or100.i.i.i, ptr %reg.i189.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %264 = call i32 @llvm.bswap.i32(i32 %or100.i.i.i) #13
  %265 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i194.i.i = getelementptr i8, ptr %266, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i194.i.i, i32 %264) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit197.i.i

rt2400pci_bbp_write.exit197.i.i:                  ; preds = %if.then.i195.i.i, %if.then9.i.i.rt2400pci_bbp_write.exit197.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i189.i.i) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %rt2400pci_bbp_write.exit197.i.i, %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge41
  %inc.i.i = add nuw nsw i32 %i.0201.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 7
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end14_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.if.end14_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %267 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %268, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !84
  br label %if.end14

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge36
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %state)
  %cmp.i = icmp eq i32 %state, 7
  %conv.i = zext i1 %cmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %state)
  %cmp1.i = icmp eq i32 %state, 6
  br i1 %cmp1.i, label %if.then.i, label %sw.bb3.do.body3.i_crit_edge

sw.bb3.do.body3.i_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i.i24 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %269 = ptrtoint ptr %csr.i.i24 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %csr.i.i24, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %270, i32 28
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %272 = ptrtoint ptr %csr.i.i24 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %csr.i.i24, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %273, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 %271) #13, !srcloc !84
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %sw.bb3.do.body3.i_crit_edge
  %irqmask_lock.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 63
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqmask_lock.i) #13
  %csr.i177.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %274 = ptrtoint ptr %csr.i177.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %csr.i177.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %275, i32 32
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %277 = and i32 %276, -2030043137
  %278 = tail call i32 @llvm.bswap.i32(i32 %277) #13
  %shl52.i = select i1 %cmp.i, i32 8, i32 0
  %shl80.i = select i1 %cmp.i, i32 16, i32 0
  %shl108.i = select i1 %cmp.i, i32 32, i32 0
  %shl136.i = select i1 %cmp.i, i32 64, i32 0
  %or.i = or i32 %shl52.i, %conv.i
  %or60.i = or i32 %or.i, %shl80.i
  %or88.i = or i32 %or60.i, %shl108.i
  %or116.i = or i32 %or88.i, %shl136.i
  %or144.i = or i32 %or116.i, %278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %279 = tail call i32 @llvm.bswap.i32(i32 %or144.i) #13
  %280 = ptrtoint ptr %csr.i177.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %csr.i177.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %281, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 %279) #13, !srcloc !84
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqmask_lock.i, i32 noundef %call7.i) #13
  br i1 %cmp.i, label %if.then148.i, label %do.body3.i.if.end14_crit_edge

do.body3.i.if.end14_crit_edge:                    ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then148.i:                                     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  %txstatus_tasklet.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 57
  tail call void @tasklet_kill(ptr noundef %txstatus_tasklet.i) #13
  %rxdone_tasklet.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 60
  tail call void @tasklet_kill(ptr noundef %rxdone_tasklet.i) #13
  %tbtt_tasklet.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 59
  tail call void @tasklet_kill(ptr noundef %tbtt_tasklet.i) #13
  br label %if.end14

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge37, %entry.sw.bb4_crit_edge38, %entry.sw.bb4_crit_edge39
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp.not.i = icmp eq i32 %state, 3
  %csr.i.i26 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %282 = ptrtoint ptr %csr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %csr.i.i26, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %283, i32 216
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %285 = and i32 %284, -520224769
  %286 = tail call i32 @llvm.bswap.i32(i32 %285) #13
  %shl.i = shl nuw nsw i32 %state, 1
  %and42.i = and i32 %shl.i, 6
  %shl63.i = shl nuw nsw i32 %state, 3
  %and70.i = and i32 %shl63.i, 24
  %shl92.i = select i1 %cmp.not.i, i32 0, i32 512
  %and28.i = or i32 %and70.i, %and42.i
  %or43.i = or i32 %and28.i, %shl92.i
  %or71.i = or i32 %or43.i, %286
  %or100.i = or i32 %or71.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %287 = tail call i32 @llvm.bswap.i32(i32 %or100.i) #13
  %288 = ptrtoint ptr %csr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %csr.i.i26, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %289, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 %287) #13, !srcloc !84
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.bb4
  %i.0180.i = phi i32 [ 0, %sw.bb4 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %290 = ptrtoint ptr %csr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %csr.i.i26, align 4
  %add.ptr.i177.i = getelementptr i8, ptr %291, i32 216
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177.i) #13, !srcloc !81
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %294 = lshr i32 %293, 5
  %conv123.i = and i32 %294, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv123.i, i32 %state)
  %cmp146.i = icmp eq i32 %conv123.i, %state
  %and136.i = lshr i32 %293, 7
  %conv144.i = and i32 %and136.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv144.i, i32 %state)
  %cmp149.i = icmp eq i32 %conv144.i, %state
  %or.cond.i = select i1 %cmp146.i, i1 %cmp149.i, i1 false
  br i1 %or.cond.i, label %for.body.i.if.end14_crit_edge, label %if.end.i

for.body.i.if.end14_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %295 = ptrtoint ptr %csr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %csr.i.i26, align 4
  %add.ptr.i179.i = getelementptr i8, ptr %296, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 %287) #13, !srcloc !84
  tail call void @msleep(i32 noundef 10) #13
  %inc.i = add nuw nsw i32 %i.0180.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.body_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %do.end.i.i.i, %do.body.i.i.i.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  %retval1.0 = phi i32 [ -524, %entry.do.body_crit_edge ], [ -5, %sw.bb.do.body_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %do.body.i.i.i.do.body_crit_edge ], [ -16, %if.end.i.do.body_crit_edge ]
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2400pci_set_device_state._rs, ptr noundef nonnull @__func__.rt2400pci_set_device_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.if.end14_crit_edge, label %do.end

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %297 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %300, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.rt2400pci_set_device_state, i32 noundef %state, i32 noundef %retval1.0) #16
  br label %if.end14

if.end14:                                         ; preds = %do.end, %do.body.if.end14_crit_edge, %for.body.i.if.end14_crit_edge, %if.then148.i, %do.body3.i.if.end14_crit_edge, %sw.bb2, %for.inc.i.i.if.end14_crit_edge
  %retval1.030 = phi i32 [ %retval1.0, %do.body.if.end14_crit_edge ], [ %retval1.0, %do.end ], [ 0, %sw.bb2 ], [ 0, %do.body3.i.if.end14_crit_edge ], [ 0, %if.then148.i ], [ 0, %for.inc.i.i.if.end14_crit_edge ], [ 0, %for.body.i.if.end14_crit_edge ]
  ret i32 %retval1.030
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2400pci_rfkill_poll(ptr nocapture noundef readonly %rt2x00dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_link_stats(ptr noundef %rt2x00dev, ptr nocapture noundef writeonly %qual) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %rx_failed = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 5
  %5 = ptrtoint ptr %rx_failed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_failed, align 4
  %call8 = tail call zeroext i8 @rt2400pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 39)
  %conv9 = zext i8 %call8 to i32
  %false_cca = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 1
  %6 = ptrtoint ptr %false_cca to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv9, ptr %false_cca, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_reset_tuner(ptr noundef %rt2x00dev, ptr nocapture noundef %qual) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vgc_level_reg.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %0 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vgc_level_reg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 8
  br i1 %cmp.not.i, label %entry.rt2400pci_set_vgc.exit_crit_edge, label %if.then.i

entry.rt2400pci_set_vgc.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_set_vgc.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %2 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !85
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.rt2400pci_bbp_write.exit.i_crit_edge, label %if.then.i.i

if.then.i.rt2400pci_bbp_write.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 101640, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %4 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 143458560) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit.i

rt2400pci_bbp_write.exit.i:                       ; preds = %if.then.i.i, %if.then.i.rt2400pci_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %vgc_level3.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %6 = ptrtoint ptr %vgc_level3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %vgc_level3.i, align 4
  %7 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %vgc_level_reg.i, align 1
  br label %rt2400pci_set_vgc.exit

rt2400pci_set_vgc.exit:                           ; preds = %rt2400pci_bbp_write.exit.i, %entry.rt2400pci_set_vgc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_link_tuner(ptr noundef %rt2x00dev, ptr nocapture noundef %qual, i32 noundef %count) #2 align 64 {
entry:
  %reg.i.i27 = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %count)
  %cmp = icmp ugt i32 %count, 60
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.if.end17_crit_edge, label %if.end

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end:                                           ; preds = %entry
  %false_cca = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 1
  %0 = ptrtoint ptr %false_cca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %false_cca, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp1 = icmp sgt i32 %1, 512
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %vgc_level = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %2 = ptrtoint ptr %vgc_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vgc_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp2 = icmp ult i8 %3, 32
  br i1 %cmp2, label %if.then4, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then4:                                         ; preds = %land.lhs.true
  %inc = add nuw nsw i8 %3, 1
  %4 = ptrtoint ptr %vgc_level to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %inc, ptr %vgc_level, align 4
  %vgc_level_reg.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %5 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vgc_level_reg.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %inc)
  %cmp.not.i = icmp eq i8 %6, %inc
  br i1 %cmp.not.i, label %if.then4.if.end17_crit_edge, label %if.then.i

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then.i:                                        ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !85
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.rt2400pci_bbp_write.exit.i_crit_edge, label %if.then.i.i

if.then.i.rt2400pci_bbp_write.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i = zext i8 %inc to i32
  %or100.i.i = or i32 %conv7.i.i, 101632
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or100.i.i, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %9 = call i32 @llvm.bswap.i32(i32 %or100.i.i) #13
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %10 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %9) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit.i

rt2400pci_bbp_write.exit.i:                       ; preds = %if.then.i.i, %if.then.i.rt2400pci_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %12 = ptrtoint ptr %vgc_level to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %inc, ptr %vgc_level, align 4
  %13 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %inc, ptr %vgc_level_reg.i, align 1
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %1)
  %cmp7 = icmp slt i32 %1, 100
  br i1 %cmp7, label %land.lhs.true9, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true9:                                   ; preds = %if.else
  %vgc_level10 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %14 = ptrtoint ptr %vgc_level10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vgc_level10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %cmp12 = icmp ugt i8 %15, 8
  br i1 %cmp12, label %if.then14, label %land.lhs.true9.if.end17_crit_edge

land.lhs.true9.if.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true9
  %dec = add i8 %15, -1
  %16 = ptrtoint ptr %vgc_level10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %dec, ptr %vgc_level10, align 4
  %vgc_level_reg.i28 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %17 = ptrtoint ptr %vgc_level_reg.i28 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vgc_level_reg.i28, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %dec)
  %cmp.not.i29 = icmp eq i8 %18, %dec
  br i1 %cmp.not.i29, label %if.then14.if.end17_crit_edge, label %if.then.i33

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then.i33:                                      ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i27) #13
  %19 = ptrtoint ptr %reg.i.i27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %reg.i.i27, align 4, !annotation !85
  %csr_mutex.i.i30 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i30, i32 noundef 0) #13
  %call.i.i31 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %call.i.i31, 0
  br i1 %tobool.not.i.i32, label %if.then.i33.rt2400pci_bbp_write.exit.i40_crit_edge, label %if.then.i.i38

if.then.i33.rt2400pci_bbp_write.exit.i40_crit_edge: ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit.i40

if.then.i.i38:                                    ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i34 = zext i8 %dec to i32
  %or100.i.i35 = or i32 %conv7.i.i34, 101632
  %20 = ptrtoint ptr %reg.i.i27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or100.i.i35, ptr %reg.i.i27, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %21 = call i32 @llvm.bswap.i32(i32 %or100.i.i35) #13
  %csr.i.i.i36 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %22 = ptrtoint ptr %csr.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr.i.i.i36, align 4
  %add.ptr.i.i.i37 = getelementptr i8, ptr %23, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i37, i32 %21) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit.i40

rt2400pci_bbp_write.exit.i40:                     ; preds = %if.then.i.i38, %if.then.i33.rt2400pci_bbp_write.exit.i40_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i30) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i27) #13
  %24 = ptrtoint ptr %vgc_level10 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %dec, ptr %vgc_level10, align 4
  %25 = ptrtoint ptr %vgc_level_reg.i28 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %dec, ptr %vgc_level_reg.i28, align 1
  br label %if.end17

if.end17:                                         ; preds = %rt2400pci_bbp_write.exit.i40, %if.then14.if.end17_crit_edge, %land.lhs.true9.if.end17_crit_edge, %if.else.if.end17_crit_edge, %rt2400pci_bbp_write.exit.i, %if.then4.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_start_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 14, label %sw.bb
    i32 16, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 128
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %8 = and i32 %7, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %8) #13, !srcloc !84
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i110 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i110 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %12, i32 56
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %14 = or i32 %13, 1224736768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %csr.i110 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i110, align 4
  %add.ptr.i113 = getelementptr i8, ptr %16, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %14) #13, !srcloc !84
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_kick_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 17, label %sw.bb43
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 96
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %8 = or i32 %7, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %8) #13, !srcloc !84
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i87 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i87 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %12, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %14 = or i32 %13, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %csr.i87 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i87, align 4
  %add.ptr.i90 = getelementptr i8, ptr %16, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %14) #13, !srcloc !84
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i91 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %csr.i91 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %18, i32 96
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %20 = or i32 %19, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %csr.i91 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i91, align 4
  %add.ptr.i94 = getelementptr i8, ptr %22, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %20) #13, !srcloc !84
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_stop_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge152
    i32 17, label %entry.sw.bb_crit_edge153
    i32 14, label %sw.bb15
    i32 16, label %sw.bb43
  ]

entry.sw.bb_crit_edge153:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge152:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge152, %entry.sw.bb_crit_edge153
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 96
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %8 = or i32 %7, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %8) #13, !srcloc !84
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i144 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i144 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %12, i32 128
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %14 = or i32 %13, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %csr.i144 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i144, align 4
  %add.ptr.i147 = getelementptr i8, ptr %16, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %14) #13, !srcloc !84
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i148 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %csr.i148 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %18, i32 56
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %20 = and i32 %19, -1224736769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %csr.i148 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i148, align 4
  %add.ptr.i151 = getelementptr i8, ptr %22, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %20) #13, !srcloc !84
  %tbtt_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 59
  tail call void @tasklet_kill(ptr noundef %tbtt_tasklet) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mmio_flush_queue(ptr noundef, i1 noundef zeroext) #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt2400pci_write_tx_desc(ptr nocapture noundef readonly %entry1, ptr noundef %txdesc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %priv_data = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 1
  %skb_dma = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skb_dma, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i720 = getelementptr i32, ptr %5, i32 2
  %length = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length, align 4
  %conv31 = zext i16 %11 to i32
  %shl68 = shl nuw i32 %conv31, 16
  %or76 = or i32 %shl68, %conv31
  %12 = tail call i32 @llvm.bswap.i32(i32 %or76) #13
  %13 = ptrtoint ptr %arrayidx.i.i720 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx.i.i720, align 4
  %arrayidx.i.i722 = getelementptr i32, ptr %5, i32 3
  %u = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3
  %signal = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 3
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %signal, align 4
  %16 = and i16 %15, 255
  %and105 = zext i16 %16 to i32
  %service = getelementptr inbounds %struct.anon.134, ptr %u, i32 0, i32 3
  %17 = ptrtoint ptr %service to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %service, align 2
  %conv173 = zext i16 %18 to i32
  %shl180 = shl nuw i32 %conv173, 16
  %and187 = and i32 %shl180, 16711680
  %or158 = or i32 %and187, %and105
  %or240 = or i32 %or158, -2046786304
  %19 = tail call i32 @llvm.bswap.i32(i32 %or240) #13
  %20 = ptrtoint ptr %arrayidx.i.i722 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i.i722, align 4
  %arrayidx.i.i724 = getelementptr i32, ptr %5, i32 4
  %length_low = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %length_low to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %length_low, align 2
  %23 = and i16 %22, 255
  %and270 = zext i16 %23 to i32
  %24 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %u, align 4
  %conv338 = zext i16 %25 to i32
  %shl345 = shl nuw i32 %conv338, 16
  %and352 = and i32 %shl345, 16711680
  %or323 = or i32 %and352, %and270
  %or405 = or i32 %or323, -2030008320
  %26 = tail call i32 @llvm.bswap.i32(i32 %or405) #13
  %27 = ptrtoint ptr %arrayidx.i.i724 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.i.i724, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  %30 = and i32 %29, -65994753
  %31 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %txdesc, align 4
  %33 = shl i32 %32, 4
  %shl479 = and i32 %33, 256
  %34 = load volatile i32, ptr %txdesc, align 4
  %35 = shl i32 %34, 2
  %shl509 = and i32 %35, 512
  %36 = load volatile i32, ptr %txdesc, align 4
  %37 = shl i32 %36, 5
  %shl539 = and i32 %37, 1024
  %38 = load volatile i32, ptr %txdesc, align 4
  %and1.i716 = shl i32 %38, 11
  %shl569 = and i32 %and1.i716, 2048
  %ifs = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 4
  %39 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ifs, align 4
  %shl598 = shl i32 %40, 13
  %and605 = and i32 %shl598, 24576
  %41 = load volatile i32, ptr %txdesc, align 4
  %42 = shl i32 %41, 7
  %shl628 = and i32 %42, 32768
  %43 = or i32 %30, 50331648
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %or487 = or i32 %44, %shl479
  %or517 = or i32 %or487, %shl509
  %or547 = or i32 %or517, %shl539
  %or606 = or i32 %or547, %shl569
  %and618 = or i32 %or606, %and605
  %or636 = or i32 %and618, %shl628
  %45 = tail call i32 @llvm.bswap.i32(i32 %or636) #13
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %5, align 4
  %desc637 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %47 = ptrtoint ptr %desc637 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %5, ptr %desc637, align 4
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %48 = ptrtoint ptr %desc_len to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 32, ptr %desc_len, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_write_beacon(ptr noundef %entry1, ptr noundef %txdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 56
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %and = and i32 %7, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %8) #13, !srcloc !84
  %call16 = tail call i32 @rt2x00queue_map_txskb(ptr noundef %entry1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end26, label %do.body17

do.body17:                                        ; preds = %entry
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2400pci_write_beacon._rs, ptr noundef nonnull @__func__.rt2400pci_write_beacon) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body17.out_crit_edge, label %do.end23

do.body17.out_crit_edge:                          ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rt2400pci_write_beacon) #16
  br label %out

if.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or52 = or i32 %7, 64
  %skb.i = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %15 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb.i, align 4
  %priv_data.i = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 5
  %17 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv_data.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %20, i32 1
  %skb_dma.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 24
  %21 = ptrtoint ptr %skb_dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %skb_dma.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i720.i = getelementptr i32, ptr %20, i32 2
  %length.i = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 1
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %length.i, align 4
  %conv31.i = zext i16 %26 to i32
  %shl68.i = shl nuw i32 %conv31.i, 16
  %or76.i = or i32 %shl68.i, %conv31.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %or76.i) #13
  %28 = ptrtoint ptr %arrayidx.i.i720.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i.i720.i, align 4
  %arrayidx.i.i722.i = getelementptr i32, ptr %20, i32 3
  %u.i = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3
  %signal.i = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 3
  %29 = ptrtoint ptr %signal.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %signal.i, align 4
  %31 = and i16 %30, 255
  %and105.i = zext i16 %31 to i32
  %service.i = getelementptr inbounds %struct.anon.134, ptr %u.i, i32 0, i32 3
  %32 = ptrtoint ptr %service.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %service.i, align 2
  %conv173.i = zext i16 %33 to i32
  %shl180.i = shl nuw i32 %conv173.i, 16
  %and187.i = and i32 %shl180.i, 16711680
  %or158.i = or i32 %and187.i, %and105.i
  %or240.i = or i32 %or158.i, -2046786304
  %34 = tail call i32 @llvm.bswap.i32(i32 %or240.i) #13
  %35 = ptrtoint ptr %arrayidx.i.i722.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx.i.i722.i, align 4
  %arrayidx.i.i724.i = getelementptr i32, ptr %20, i32 4
  %length_low.i = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 1
  %36 = ptrtoint ptr %length_low.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %length_low.i, align 2
  %38 = and i16 %37, 255
  %and270.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %u.i, align 4
  %conv338.i = zext i16 %40 to i32
  %shl345.i = shl nuw i32 %conv338.i, 16
  %and352.i = and i32 %shl345.i, 16711680
  %or323.i = or i32 %and352.i, %and270.i
  %or405.i = or i32 %or323.i, -2030008320
  %41 = tail call i32 @llvm.bswap.i32(i32 %or405.i) #13
  %42 = ptrtoint ptr %arrayidx.i.i724.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx.i.i724.i, align 4
  %43 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %20, align 4
  %45 = and i32 %44, -65994753
  %46 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %txdesc, align 4
  %48 = shl i32 %47, 4
  %shl479.i = and i32 %48, 256
  %49 = load volatile i32, ptr %txdesc, align 4
  %50 = shl i32 %49, 2
  %shl509.i = and i32 %50, 512
  %51 = load volatile i32, ptr %txdesc, align 4
  %52 = shl i32 %51, 5
  %shl539.i = and i32 %52, 1024
  %53 = load volatile i32, ptr %txdesc, align 4
  %and1.i716.i = shl i32 %53, 11
  %shl569.i = and i32 %and1.i716.i, 2048
  %ifs.i = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 4
  %54 = ptrtoint ptr %ifs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ifs.i, align 4
  %shl598.i = shl i32 %55, 13
  %and605.i = and i32 %shl598.i, 24576
  %56 = load volatile i32, ptr %txdesc, align 4
  %57 = shl i32 %56, 7
  %shl628.i = and i32 %57, 32768
  %58 = or i32 %45, 50331648
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #13
  %or487.i = or i32 %59, %shl479.i
  %or517.i = or i32 %or487.i, %shl509.i
  %or547.i = or i32 %or517.i, %shl539.i
  %or606.i = or i32 %or547.i, %shl569.i
  %and618.i = or i32 %or606.i, %and605.i
  %or636.i = or i32 %and618.i, %shl628.i
  %60 = tail call i32 @llvm.bswap.i32(i32 %or636.i) #13
  %61 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %20, align 4
  %desc637.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  %62 = ptrtoint ptr %desc637.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %20, ptr %desc637.i, align 4
  %desc_len.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 9
  %63 = ptrtoint ptr %desc_len.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 32, ptr %desc_len.i, align 1
  tail call void @rt2x00debug_dump_frame(ptr noundef %3, i32 noundef 4, ptr noundef %entry1) #13
  br label %out

out:                                              ; preds = %if.end26, %do.end23, %do.body17.out_crit_edge
  %reg.0 = phi i32 [ %and, %do.end23 ], [ %and, %do.body17.out_crit_edge ], [ %or52, %if.end26 ]
  %or78 = or i32 %reg.0, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %64 = tail call i32 @llvm.bswap.i32(i32 %or78) #13
  %65 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %csr.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %66, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %64) #13, !srcloc !84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_fill_rxdone(ptr nocapture noundef readonly %entry1, ptr nocapture noundef %rxdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %priv_data = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 5
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i183 = getelementptr i32, ptr %7, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i183 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i183, align 4
  %arrayidx.i.i184 = getelementptr i32, ptr %7, i32 4
  %15 = ptrtoint ptr %arrayidx.i.i184 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i184, align 4
  %17 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or = or i32 %19, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool36.not = icmp eq i32 %20, 0
  br i1 %tobool36.not, label %if.end.if.end40_crit_edge, label %if.then37

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %flags38 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %21 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags38, align 4
  %or39 = or i32 %22, 64
  store i32 %or39, ptr %flags38, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end.if.end40_crit_edge
  %23 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %24 = lshr i32 %14, 24
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %hw = getelementptr inbounds %struct.rt2x00_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %get_tsf = getelementptr inbounds %struct.ieee80211_ops, ptr %28, i32 0, i32 42
  %29 = ptrtoint ptr %get_tsf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_tsf, align 4
  %hw41 = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %hw41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw41, align 4
  %call42 = tail call i64 %30(ptr noundef %32, ptr noundef null) #13
  %shr63 = lshr i64 %call42, 32
  %conv65 = trunc i64 %shr63 to i32
  %conv66 = trunc i64 %call42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv66)
  %cmp67.not = icmp uge i32 %23, %conv66
  %dec = sext i1 %cmp67.not to i32
  %spec.select = add i32 %dec, %conv65
  %conv71 = zext i32 %spec.select to i64
  %shl = shl nuw i64 %conv71, 32
  %conv72 = zext i32 %23 to i64
  %or73 = or i64 %shl, %conv72
  %33 = ptrtoint ptr %rxdesc to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %or73, ptr %rxdesc, align 8
  %and94 = and i32 %12, 247
  %signal = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 1
  %34 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and94, ptr %signal, align 8
  %35 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %rssi_offset = getelementptr inbounds %struct.rt2x00_dev, ptr %38, i32 0, i32 37
  %39 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rssi_offset, align 2
  %conv117 = zext i8 %40 to i32
  %sub = sub nsw i32 %24, %conv117
  %rssi = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 2
  %41 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %rssi, align 4
  %shr137 = lshr i32 %10, 16
  %size = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 3
  %42 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr137, ptr %size, align 8
  %dev_flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %43 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dev_flags, align 8
  %45 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool159.not = icmp eq i32 %45, 0
  %spec.select185.v = select i1 %tobool159.not, i32 1, i32 9
  %spec.select185 = or i32 %44, %spec.select185.v
  %46 = ptrtoint ptr %dev_flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select185, ptr %dev_flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_config_filter(ptr noundef %rt2x00dev, i32 noundef %filter_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool127.not = icmp eq i32 %6, 0
  br i1 %tobool127.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %intf_ap_count = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 24
  %7 = ptrtoint ptr %intf_ap_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intf_ap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool128.not = icmp eq i32 %8, 0
  %phi.bo = select i1 %tobool128.not, i32 32, i32 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %9 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.bo, %land.rhs ]
  %10 = lshr i32 %filter_flags, 2
  %11 = and i32 %10, 8
  %12 = lshr i32 %filter_flags, 1
  %13 = and i32 %2, -2113929217
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = lshr i32 %4, 7
  %16 = and i32 %15, 16
  %17 = and i32 %12, 6
  %18 = or i32 %17, %11
  %19 = or i32 %18, %14
  %20 = or i32 %19, %16
  %21 = or i32 %20, %9
  %or171 = xor i32 %21, 94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %22 = tail call i32 @llvm.bswap.i32(i32 %or171) #13
  %23 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i, align 4
  %add.ptr.i193 = getelementptr i8, ptr %24, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 %22) #13, !srcloc !84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_config_intf(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef readnone %intf, ptr noundef %conf, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 304
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %3 = and i32 %2, 65535
  %4 = or i32 %3, -268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %6, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %4) #13, !srcloc !84
  %7 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %8, i32 56
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %10 = and i32 %9, -100663297
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %sync = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 1
  %12 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sync, align 4
  %shl36 = shl i32 %13, 1
  %and43 = and i32 %shl36, 6
  %or44 = or i32 %and43, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or44) #13
  %15 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %16, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %14) #13, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and45 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end.if.end48_crit_edge, label %if.then47

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mac = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 2
  %csr.i74 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %17 = ptrtoint ptr %csr.i74 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i74, align 4
  %add.ptr.i75 = getelementptr i8, ptr %18, i32 12
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i75, ptr noundef %mac, i32 noundef 2) #13
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end.if.end48_crit_edge
  %and49 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end53_crit_edge, label %if.then51

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %bssid = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 3
  %csr.i76 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %19 = ptrtoint ptr %csr.i76 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr.i76, align 4
  %add.ptr.i77 = getelementptr i8, ptr %20, i32 20
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i77, ptr noundef %bssid, i32 noundef 2) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48.if.end53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_config_erp(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef readonly %erp, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %erp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %erp, align 4
  %shl = shl i32 %1, 3
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 100
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  %5 = shl i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %or92 = or i32 %5, 23229951
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %or92) #13
  %7 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i, align 4
  %add.ptr.i728 = getelementptr i8, ptr %8, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i728, i32 %6) #13, !srcloc !84
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i730 = getelementptr i8, ptr %10, i32 316
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i730) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i, align 4
  %add.ptr.i732 = getelementptr i8, ptr %13, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i732, i32 290816) #13, !srcloc !84
  %14 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i, align 4
  %add.ptr.i734 = getelementptr i8, ptr %15, i32 320
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i734) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %or186 = and i32 %shl, 248
  %or253 = or i32 %or186, 3671041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %or253) #13
  %18 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i, align 4
  %add.ptr.i736 = getelementptr i8, ptr %19, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i736, i32 %17) #13, !srcloc !84
  %20 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csr.i, align 4
  %add.ptr.i738 = getelementptr i8, ptr %21, i32 324
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i738) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %or335 = or i32 %or186, 1311746
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %or335) #13
  %24 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr.i, align 4
  %add.ptr.i740 = getelementptr i8, ptr %25, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i740, i32 %23) #13, !srcloc !84
  %26 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csr.i, align 4
  %add.ptr.i742 = getelementptr i8, ptr %27, i32 328
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i742) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %or417 = or i32 %or186, 689155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %29 = tail call i32 @llvm.bswap.i32(i32 %or417) #13
  %30 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csr.i, align 4
  %add.ptr.i744 = getelementptr i8, ptr %31, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i744, i32 %29) #13, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and418 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and418)
  %tobool419.not = icmp eq i32 %and418, 0
  br i1 %tobool419.not, label %if.end.if.end421_crit_edge, label %if.then420

if.end.if.end421_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end421

if.then420:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %basic_rates = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 2
  %32 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %basic_rates, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #13
  %csr.i745 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %35 = ptrtoint ptr %csr.i745 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csr.i745, align 4
  %add.ptr.i746 = getelementptr i8, ptr %36, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i746, i32 %34) #13, !srcloc !84
  br label %if.end421

if.end421:                                        ; preds = %if.then420, %if.end.if.end421_crit_edge
  %and422 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and422)
  %tobool423.not = icmp eq i32 %and422, 0
  br i1 %tobool423.not, label %if.end421.if.end572_crit_edge, label %if.then424

if.end421.if.end572_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end572

if.then424:                                       ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i747 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %37 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i748 = getelementptr i8, ptr %38, i32 44
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i748) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %40 = and i32 %39, -2031617
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %slot_time = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 3
  %42 = ptrtoint ptr %slot_time to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slot_time, align 4
  %shl445 = shl i32 %43, 8
  %and452 = and i32 %shl445, 7936
  %or453 = or i32 %and452, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %44 = tail call i32 @llvm.bswap.i32(i32 %or453) #13
  %45 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i750 = getelementptr i8, ptr %46, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i750, i32 %44) #13, !srcloc !84
  %47 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i752 = getelementptr i8, ptr %48, i32 72
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i752) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %sifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 4
  %50 = ptrtoint ptr %sifs to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sifs, align 4
  %conv468723 = zext i16 %51 to i32
  %pifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 5
  %52 = ptrtoint ptr %pifs to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %pifs, align 2
  %conv497724 = zext i16 %53 to i32
  %shl504 = shl nuw i32 %conv497724, 16
  %or512 = or i32 %shl504, %conv468723
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %54 = tail call i32 @llvm.bswap.i32(i32 %or512) #13
  %55 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i754 = getelementptr i8, ptr %56, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i754, i32 %54) #13, !srcloc !84
  %57 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i756 = getelementptr i8, ptr %58, i32 76
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i756) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %difs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 6
  %60 = ptrtoint ptr %difs to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %difs, align 4
  %conv527725 = zext i16 %61 to i32
  %eifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 7
  %62 = ptrtoint ptr %eifs to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %eifs, align 2
  %conv556726 = zext i16 %63 to i32
  %shl563 = shl nuw i32 %conv556726, 16
  %or571 = or i32 %shl563, %conv527725
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %64 = tail call i32 @llvm.bswap.i32(i32 %or571) #13
  %65 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i758 = getelementptr i8, ptr %66, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i758, i32 %64) #13, !srcloc !84
  br label %if.end572

if.end572:                                        ; preds = %if.then424, %if.end421.if.end572_crit_edge
  %and573 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and573)
  %tobool574.not = icmp eq i32 %and573, 0
  br i1 %tobool574.not, label %if.end572.if.end637_crit_edge, label %if.then575

if.end572.if.end637_crit_edge:                    ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end637

if.then575:                                       ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i759 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %67 = ptrtoint ptr %csr.i759 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %csr.i759, align 4
  %add.ptr.i760 = getelementptr i8, ptr %68, i32 48
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i760) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %beacon_int = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 8
  %70 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %beacon_int, align 4
  %conv590 = zext i16 %71 to i32
  %mul = shl nuw nsw i32 %conv590, 4
  %and604 = and i32 %mul, 65520
  %mul621 = shl i32 %conv590, 20
  %or636 = or i32 %and604, %mul621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %72 = tail call i32 @llvm.bswap.i32(i32 %or636) #13
  %73 = ptrtoint ptr %csr.i759 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %csr.i759, align 4
  %add.ptr.i762 = getelementptr i8, ptr %74, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i762, i32 %72) #13, !srcloc !84
  br label %if.end637

if.end637:                                        ; preds = %if.then575, %if.end572.if.end637_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_config_ant(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %ant) #2 align 64 {
entry:
  %reg.i208 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !86

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

lor.rhs:                                          ; preds = %entry
  %tx = getelementptr inbounds %struct.antenna_setup, ptr %ant, i32 0, i32 1
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end8, !prof !86

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2400pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 401, 0\0A.popsection", ""() #13, !srcloc !87
  unreachable

do.end8:                                          ; preds = %lor.rhs
  %call = tail call zeroext i8 @rt2400pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 4)
  %call9 = tail call zeroext i8 @rt2400pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 1)
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %5, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb32
  ]

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %7 = and i8 %call9, -4
  %8 = or i8 %7, 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %9 = and i8 %call9, -4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %10 = and i8 %call9, -4
  %11 = or i8 %10, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb32, %sw.bb
  %r1.0 = phi i8 [ %11, %sw.default ], [ %9, %sw.bb32 ], [ %8, %sw.bb ]
  %12 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ant, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %13, label %sw.default158 [
    i32 3, label %sw.bb95
    i32 1, label %sw.bb126
  ]

sw.bb95:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %15 = and i8 %call, -7
  %16 = or i8 %15, 2
  br label %sw.epilog189

sw.bb126:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %17 = and i8 %call, -7
  br label %sw.epilog189

sw.default158:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %18 = and i8 %call, -7
  %19 = or i8 %18, 4
  br label %sw.epilog189

sw.epilog189:                                     ; preds = %sw.default158, %sw.bb126, %sw.bb95
  %r4.0 = phi i8 [ %19, %sw.default158 ], [ %17, %sw.bb126 ], [ %16, %sw.bb95 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %reg.i, align 4, !annotation !85
  %csr_mutex.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.epilog189.rt2400pci_bbp_write.exit_crit_edge, label %if.then.i

sw.epilog189.rt2400pci_bbp_write.exit_crit_edge:  ; preds = %sw.epilog189
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit

if.then.i:                                        ; preds = %sw.epilog189
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i = zext i8 %r4.0 to i32
  %or100.i = or i32 %conv7.i, 99328
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or100.i, ptr %reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %22 = call i32 @llvm.bswap.i32(i32 %or100.i) #13
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %23 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit

rt2400pci_bbp_write.exit:                         ; preds = %if.then.i, %sw.epilog189.rt2400pci_bbp_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i208) #13
  %25 = ptrtoint ptr %reg.i208 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %reg.i208, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i210 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i208) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool.not.i211 = icmp eq i32 %call.i210, 0
  br i1 %tobool.not.i211, label %rt2400pci_bbp_write.exit.rt2400pci_bbp_write.exit218_crit_edge, label %if.then.i217

rt2400pci_bbp_write.exit.rt2400pci_bbp_write.exit218_crit_edge: ; preds = %rt2400pci_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_bbp_write.exit218

if.then.i217:                                     ; preds = %rt2400pci_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i212 = zext i8 %r1.0 to i32
  %or100.i214 = or i32 %conv7.i212, 98560
  %26 = ptrtoint ptr %reg.i208 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or100.i214, ptr %reg.i208, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %27 = call i32 @llvm.bswap.i32(i32 %or100.i214) #13
  %csr.i.i215 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %28 = ptrtoint ptr %csr.i.i215 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr.i.i215, align 4
  %add.ptr.i.i216 = getelementptr i8, ptr %29, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i216, i32 %27) #13, !srcloc !84
  br label %rt2400pci_bbp_write.exit218

rt2400pci_bbp_write.exit218:                      ; preds = %if.then.i217, %rt2400pci_bbp_write.exit.rt2400pci_bbp_write.exit218_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i208) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_config(ptr noundef %rt2x00dev, ptr nocapture noundef %libconf, i32 noundef %flags) #2 align 64 {
entry:
  %reg.i.i22 = alloca i32, align 4
  %reg.i284.i = alloca i32, align 4
  %reg.i267.i = alloca i32, align 4
  %reg.i249.i = alloca i32, align 4
  %reg.i231.i = alloca i32, align 4
  %reg.i214.i = alloca i32, align 4
  %reg.i196.i = alloca i32, align 4
  %reg.i180.i = alloca i32, align 4
  %reg.i163.i = alloca i32, align 4
  %reg.i145.i = alloca i32, align 4
  %reg.i128.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %rf1.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf1.i, align 4
  %or.i = or i32 %1, 131072
  store i32 %or.i, ptr %rf1.i, align 4
  %rf3.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rf3.i, align 4
  %or36.i = or i32 %3, 256
  store i32 %or36.i, ptr %rf3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !85
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.rt2400pci_rf_write.exit.i_crit_edge, label %if.then.i.i

if.then.rt2400pci_rf_write.exit.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit.i

if.then.i.i:                                      ; preds = %if.then
  %and19.i.i = and i32 %or.i, 16777215
  %or97.i.i = or i32 %and19.i.i, -1811939328
  %5 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or97.i.i, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %6 = call i32 @llvm.bswap.i32(i32 %or97.i.i) #13
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %7 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %6) #13, !srcloc !84
  %ops.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i.i, align 4
  %rf_size.i.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %rf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rf_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp1.i.i.i = icmp ult i32 %12, 4
  br i1 %cmp1.i.i.i, label %do.body3.i.i.i, label %rt2x00_rf_write.exit.i.i, !prof !86

do.body3.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i.i:                         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %13 = ptrtoint ptr %rf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rf.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %14, align 4
  br label %rt2400pci_rf_write.exit.i

rt2400pci_rf_write.exit.i:                        ; preds = %rt2x00_rf_write.exit.i.i, %if.then.rt2400pci_rf_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %rf2.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %rf2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rf2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i128.i) #13
  %18 = ptrtoint ptr %reg.i128.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %reg.i128.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i130.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i128.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i)
  %tobool.not.i131.i = icmp eq i32 %call.i130.i, 0
  br i1 %tobool.not.i131.i, label %rt2400pci_rf_write.exit.i.rt2400pci_rf_write.exit144.i_crit_edge, label %if.then.i136.i

rt2400pci_rf_write.exit.i.rt2400pci_rf_write.exit144.i_crit_edge: ; preds = %rt2400pci_rf_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit144.i

if.then.i136.i:                                   ; preds = %rt2400pci_rf_write.exit.i
  %and19.i132.i = and i32 %17, 16777215
  %or97.i133.i = or i32 %and19.i132.i, -1811939328
  %19 = ptrtoint ptr %reg.i128.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or97.i133.i, ptr %reg.i128.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %20 = call i32 @llvm.bswap.i32(i32 %or97.i133.i) #13
  %csr.i.i134.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %21 = ptrtoint ptr %csr.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i.i134.i, align 4
  %add.ptr.i.i135.i = getelementptr i8, ptr %22, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i135.i, i32 %20) #13, !srcloc !84
  %ops.i.i137.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i137.i, align 4
  %rf_size.i.i138.i = getelementptr inbounds %struct.rt2x00_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %rf_size.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rf_size.i.i138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %cmp1.i.i140.i = icmp ult i32 %26, 8
  br i1 %cmp1.i.i140.i, label %do.body3.i.i141.i, label %rt2x00_rf_write.exit.i143.i, !prof !86

do.body3.i.i141.i:                                ; preds = %if.then.i136.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i143.i:                      ; preds = %if.then.i136.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i142.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %27 = ptrtoint ptr %rf.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rf.i.i142.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %17, ptr %arrayidx.i.i.i, align 4
  br label %rt2400pci_rf_write.exit144.i

rt2400pci_rf_write.exit144.i:                     ; preds = %rt2x00_rf_write.exit.i143.i, %rt2400pci_rf_write.exit.i.rt2400pci_rf_write.exit144.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i128.i) #13
  %30 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rf3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i145.i) #13
  %32 = ptrtoint ptr %reg.i145.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %reg.i145.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i147.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i145.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %tobool.not.i148.i = icmp eq i32 %call.i147.i, 0
  br i1 %tobool.not.i148.i, label %rt2400pci_rf_write.exit144.i.rt2400pci_rf_write.exit162.i_crit_edge, label %if.then.i153.i

rt2400pci_rf_write.exit144.i.rt2400pci_rf_write.exit162.i_crit_edge: ; preds = %rt2400pci_rf_write.exit144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit162.i

if.then.i153.i:                                   ; preds = %rt2400pci_rf_write.exit144.i
  %and19.i149.i = and i32 %31, 16777215
  %or97.i150.i = or i32 %and19.i149.i, -1811939328
  %33 = ptrtoint ptr %reg.i145.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or97.i150.i, ptr %reg.i145.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %34 = call i32 @llvm.bswap.i32(i32 %or97.i150.i) #13
  %csr.i.i151.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %35 = ptrtoint ptr %csr.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csr.i.i151.i, align 4
  %add.ptr.i.i152.i = getelementptr i8, ptr %36, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i152.i, i32 %34) #13, !srcloc !84
  %ops.i.i154.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %37 = ptrtoint ptr %ops.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i154.i, align 4
  %rf_size.i.i155.i = getelementptr inbounds %struct.rt2x00_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %rf_size.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rf_size.i.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %40)
  %cmp1.i.i157.i = icmp ult i32 %40, 12
  br i1 %cmp1.i.i157.i, label %do.body3.i.i158.i, label %rt2x00_rf_write.exit.i161.i, !prof !86

do.body3.i.i158.i:                                ; preds = %if.then.i153.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i161.i:                      ; preds = %if.then.i153.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i159.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %41 = ptrtoint ptr %rf.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rf.i.i159.i, align 4
  %arrayidx.i.i160.i = getelementptr i32, ptr %42, i32 2
  %43 = ptrtoint ptr %arrayidx.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %31, ptr %arrayidx.i.i160.i, align 4
  br label %rt2400pci_rf_write.exit162.i

rt2400pci_rf_write.exit162.i:                     ; preds = %rt2x00_rf_write.exit.i161.i, %rt2400pci_rf_write.exit144.i.rt2400pci_rf_write.exit162.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i145.i) #13
  %rf1.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %44 = ptrtoint ptr %rf1.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rf1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp.i.i = icmp eq i16 %45, 0
  br i1 %cmp.i.i, label %rt2400pci_rf_write.exit162.i.if.end_crit_edge, label %if.end.i

rt2400pci_rf_write.exit162.i.if.end_crit_edge:    ; preds = %rt2400pci_rf_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %rt2400pci_rf_write.exit162.i
  %46 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rf1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i163.i) #13
  %48 = ptrtoint ptr %reg.i163.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %reg.i163.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i165.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i163.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165.i)
  %tobool.not.i166.i = icmp eq i32 %call.i165.i, 0
  br i1 %tobool.not.i166.i, label %if.end.i.rt2400pci_rf_write.exit179.i_crit_edge, label %if.then.i171.i

if.end.i.rt2400pci_rf_write.exit179.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit179.i

if.then.i171.i:                                   ; preds = %if.end.i
  %and19.i167.i = and i32 %47, 16777215
  %or97.i168.i = or i32 %and19.i167.i, -1811939328
  %49 = ptrtoint ptr %reg.i163.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or97.i168.i, ptr %reg.i163.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %50 = call i32 @llvm.bswap.i32(i32 %or97.i168.i) #13
  %csr.i.i169.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %51 = ptrtoint ptr %csr.i.i169.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %csr.i.i169.i, align 4
  %add.ptr.i.i170.i = getelementptr i8, ptr %52, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i170.i, i32 %50) #13, !srcloc !84
  %ops.i.i172.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %53 = ptrtoint ptr %ops.i.i172.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i172.i, align 4
  %rf_size.i.i173.i = getelementptr inbounds %struct.rt2x00_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %rf_size.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rf_size.i.i173.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp1.i.i175.i = icmp ult i32 %56, 4
  br i1 %cmp1.i.i175.i, label %do.body3.i.i176.i, label %rt2x00_rf_write.exit.i178.i, !prof !86

do.body3.i.i176.i:                                ; preds = %if.then.i171.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i178.i:                      ; preds = %if.then.i171.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i177.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %57 = ptrtoint ptr %rf.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rf.i.i177.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %47, ptr %58, align 4
  br label %rt2400pci_rf_write.exit179.i

rt2400pci_rf_write.exit179.i:                     ; preds = %rt2x00_rf_write.exit.i178.i, %if.end.i.rt2400pci_rf_write.exit179.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i163.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i180.i) #13
  %60 = ptrtoint ptr %reg.i180.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %reg.i180.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i182.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i180.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.i)
  %tobool.not.i183.i = icmp eq i32 %call.i182.i, 0
  br i1 %tobool.not.i183.i, label %rt2400pci_rf_write.exit179.i.rt2400pci_rf_write.exit195.i_crit_edge, label %if.then.i186.i

rt2400pci_rf_write.exit179.i.rt2400pci_rf_write.exit195.i_crit_edge: ; preds = %rt2400pci_rf_write.exit179.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit195.i

if.then.i186.i:                                   ; preds = %rt2400pci_rf_write.exit179.i
  %61 = ptrtoint ptr %reg.i180.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1811142094, ptr %reg.i180.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %csr.i.i184.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %62 = ptrtoint ptr %csr.i.i184.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %csr.i.i184.i, align 4
  %add.ptr.i.i185.i = getelementptr i8, ptr %63, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i185.i, i32 841616532) #13, !srcloc !84
  %ops.i.i187.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %64 = ptrtoint ptr %ops.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i.i187.i, align 4
  %rf_size.i.i188.i = getelementptr inbounds %struct.rt2x00_ops, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %rf_size.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rf_size.i.i188.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %67)
  %cmp1.i.i190.i = icmp ult i32 %67, 8
  br i1 %cmp1.i.i190.i, label %do.body3.i.i191.i, label %rt2x00_rf_write.exit.i194.i, !prof !86

do.body3.i.i191.i:                                ; preds = %if.then.i186.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i194.i:                      ; preds = %if.then.i186.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i192.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %68 = ptrtoint ptr %rf.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rf.i.i192.i, align 4
  %arrayidx.i.i193.i = getelementptr i32, ptr %69, i32 1
  %70 = ptrtoint ptr %arrayidx.i.i193.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 797234, ptr %arrayidx.i.i193.i, align 4
  br label %rt2400pci_rf_write.exit195.i

rt2400pci_rf_write.exit195.i:                     ; preds = %rt2x00_rf_write.exit.i194.i, %rt2400pci_rf_write.exit179.i.rt2400pci_rf_write.exit195.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i180.i) #13
  %71 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rf3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i196.i) #13
  %73 = ptrtoint ptr %reg.i196.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %reg.i196.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i198.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i196.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198.i)
  %tobool.not.i199.i = icmp eq i32 %call.i198.i, 0
  br i1 %tobool.not.i199.i, label %rt2400pci_rf_write.exit195.i.rt2400pci_rf_write.exit213.i_crit_edge, label %if.then.i204.i

rt2400pci_rf_write.exit195.i.rt2400pci_rf_write.exit213.i_crit_edge: ; preds = %rt2400pci_rf_write.exit195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit213.i

if.then.i204.i:                                   ; preds = %rt2400pci_rf_write.exit195.i
  %and19.i200.i = and i32 %72, 16777215
  %or97.i201.i = or i32 %and19.i200.i, -1811939328
  %74 = ptrtoint ptr %reg.i196.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or97.i201.i, ptr %reg.i196.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %75 = call i32 @llvm.bswap.i32(i32 %or97.i201.i) #13
  %csr.i.i202.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %76 = ptrtoint ptr %csr.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %csr.i.i202.i, align 4
  %add.ptr.i.i203.i = getelementptr i8, ptr %77, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i203.i, i32 %75) #13, !srcloc !84
  %ops.i.i205.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %78 = ptrtoint ptr %ops.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i.i205.i, align 4
  %rf_size.i.i206.i = getelementptr inbounds %struct.rt2x00_ops, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %rf_size.i.i206.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rf_size.i.i206.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %81)
  %cmp1.i.i208.i = icmp ult i32 %81, 12
  br i1 %cmp1.i.i208.i, label %do.body3.i.i209.i, label %rt2x00_rf_write.exit.i212.i, !prof !86

do.body3.i.i209.i:                                ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i212.i:                      ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i210.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %82 = ptrtoint ptr %rf.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rf.i.i210.i, align 4
  %arrayidx.i.i211.i = getelementptr i32, ptr %83, i32 2
  %84 = ptrtoint ptr %arrayidx.i.i211.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %72, ptr %arrayidx.i.i211.i, align 4
  br label %rt2400pci_rf_write.exit213.i

rt2400pci_rf_write.exit213.i:                     ; preds = %rt2x00_rf_write.exit.i212.i, %rt2400pci_rf_write.exit195.i.rt2400pci_rf_write.exit213.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i196.i) #13
  call void @msleep(i32 noundef 1) #13
  %85 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rf1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i214.i) #13
  %87 = ptrtoint ptr %reg.i214.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %reg.i214.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i216.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i214.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216.i)
  %tobool.not.i217.i = icmp eq i32 %call.i216.i, 0
  br i1 %tobool.not.i217.i, label %rt2400pci_rf_write.exit213.i.rt2400pci_rf_write.exit230.i_crit_edge, label %if.then.i222.i

rt2400pci_rf_write.exit213.i.rt2400pci_rf_write.exit230.i_crit_edge: ; preds = %rt2400pci_rf_write.exit213.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit230.i

if.then.i222.i:                                   ; preds = %rt2400pci_rf_write.exit213.i
  %and19.i218.i = and i32 %86, 16777215
  %or97.i219.i = or i32 %and19.i218.i, -1811939328
  %88 = ptrtoint ptr %reg.i214.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or97.i219.i, ptr %reg.i214.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %89 = call i32 @llvm.bswap.i32(i32 %or97.i219.i) #13
  %csr.i.i220.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %90 = ptrtoint ptr %csr.i.i220.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %csr.i.i220.i, align 4
  %add.ptr.i.i221.i = getelementptr i8, ptr %91, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i221.i, i32 %89) #13, !srcloc !84
  %ops.i.i223.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %92 = ptrtoint ptr %ops.i.i223.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i.i223.i, align 4
  %rf_size.i.i224.i = getelementptr inbounds %struct.rt2x00_ops, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %rf_size.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rf_size.i.i224.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp1.i.i226.i = icmp ult i32 %95, 4
  br i1 %cmp1.i.i226.i, label %do.body3.i.i227.i, label %rt2x00_rf_write.exit.i229.i, !prof !86

do.body3.i.i227.i:                                ; preds = %if.then.i222.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i229.i:                      ; preds = %if.then.i222.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i228.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %96 = ptrtoint ptr %rf.i.i228.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rf.i.i228.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %86, ptr %97, align 4
  br label %rt2400pci_rf_write.exit230.i

rt2400pci_rf_write.exit230.i:                     ; preds = %rt2x00_rf_write.exit.i229.i, %rt2400pci_rf_write.exit213.i.rt2400pci_rf_write.exit230.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i214.i) #13
  %99 = ptrtoint ptr %rf2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rf2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i231.i) #13
  %101 = ptrtoint ptr %reg.i231.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %reg.i231.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i233.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i231.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233.i)
  %tobool.not.i234.i = icmp eq i32 %call.i233.i, 0
  br i1 %tobool.not.i234.i, label %rt2400pci_rf_write.exit230.i.rt2400pci_rf_write.exit248.i_crit_edge, label %if.then.i239.i

rt2400pci_rf_write.exit230.i.rt2400pci_rf_write.exit248.i_crit_edge: ; preds = %rt2400pci_rf_write.exit230.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit248.i

if.then.i239.i:                                   ; preds = %rt2400pci_rf_write.exit230.i
  %and19.i235.i = and i32 %100, 16777215
  %or97.i236.i = or i32 %and19.i235.i, -1811939328
  %102 = ptrtoint ptr %reg.i231.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or97.i236.i, ptr %reg.i231.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %103 = call i32 @llvm.bswap.i32(i32 %or97.i236.i) #13
  %csr.i.i237.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %104 = ptrtoint ptr %csr.i.i237.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %csr.i.i237.i, align 4
  %add.ptr.i.i238.i = getelementptr i8, ptr %105, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i238.i, i32 %103) #13, !srcloc !84
  %ops.i.i240.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %106 = ptrtoint ptr %ops.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i.i240.i, align 4
  %rf_size.i.i241.i = getelementptr inbounds %struct.rt2x00_ops, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %rf_size.i.i241.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rf_size.i.i241.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %109)
  %cmp1.i.i243.i = icmp ult i32 %109, 8
  br i1 %cmp1.i.i243.i, label %do.body3.i.i244.i, label %rt2x00_rf_write.exit.i247.i, !prof !86

do.body3.i.i244.i:                                ; preds = %if.then.i239.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i247.i:                      ; preds = %if.then.i239.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i245.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %110 = ptrtoint ptr %rf.i.i245.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rf.i.i245.i, align 4
  %arrayidx.i.i246.i = getelementptr i32, ptr %111, i32 1
  %112 = ptrtoint ptr %arrayidx.i.i246.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %100, ptr %arrayidx.i.i246.i, align 4
  br label %rt2400pci_rf_write.exit248.i

rt2400pci_rf_write.exit248.i:                     ; preds = %rt2x00_rf_write.exit.i247.i, %rt2400pci_rf_write.exit230.i.rt2400pci_rf_write.exit248.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i231.i) #13
  %113 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rf3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i249.i) #13
  %115 = ptrtoint ptr %reg.i249.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %reg.i249.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i251.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i249.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.i)
  %tobool.not.i252.i = icmp eq i32 %call.i251.i, 0
  br i1 %tobool.not.i252.i, label %rt2400pci_rf_write.exit248.i.rt2400pci_rf_write.exit266.i_crit_edge, label %if.then.i257.i

rt2400pci_rf_write.exit248.i.rt2400pci_rf_write.exit266.i_crit_edge: ; preds = %rt2400pci_rf_write.exit248.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit266.i

if.then.i257.i:                                   ; preds = %rt2400pci_rf_write.exit248.i
  %and19.i253.i = and i32 %114, 16777215
  %or97.i254.i = or i32 %and19.i253.i, -1811939328
  %116 = ptrtoint ptr %reg.i249.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or97.i254.i, ptr %reg.i249.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %117 = call i32 @llvm.bswap.i32(i32 %or97.i254.i) #13
  %csr.i.i255.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %118 = ptrtoint ptr %csr.i.i255.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %csr.i.i255.i, align 4
  %add.ptr.i.i256.i = getelementptr i8, ptr %119, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i256.i, i32 %117) #13, !srcloc !84
  %ops.i.i258.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %120 = ptrtoint ptr %ops.i.i258.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i.i258.i, align 4
  %rf_size.i.i259.i = getelementptr inbounds %struct.rt2x00_ops, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %rf_size.i.i259.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rf_size.i.i259.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %123)
  %cmp1.i.i261.i = icmp ult i32 %123, 12
  br i1 %cmp1.i.i261.i, label %do.body3.i.i262.i, label %rt2x00_rf_write.exit.i265.i, !prof !86

do.body3.i.i262.i:                                ; preds = %if.then.i257.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i265.i:                      ; preds = %if.then.i257.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i263.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %124 = ptrtoint ptr %rf.i.i263.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rf.i.i263.i, align 4
  %arrayidx.i.i264.i = getelementptr i32, ptr %125, i32 2
  %126 = ptrtoint ptr %arrayidx.i.i264.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %114, ptr %arrayidx.i.i264.i, align 4
  br label %rt2400pci_rf_write.exit266.i

rt2400pci_rf_write.exit266.i:                     ; preds = %rt2x00_rf_write.exit.i265.i, %rt2400pci_rf_write.exit248.i.rt2400pci_rf_write.exit266.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i249.i) #13
  call void @msleep(i32 noundef 1) #13
  %127 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rf1.i, align 4
  %and55.i = and i32 %128, -131073
  store i32 %and55.i, ptr %rf1.i, align 4
  %129 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rf3.i, align 4
  %and80.i = and i32 %130, -257
  store i32 %and80.i, ptr %rf3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i267.i) #13
  %131 = ptrtoint ptr %reg.i267.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %reg.i267.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i269.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i267.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269.i)
  %tobool.not.i270.i = icmp eq i32 %call.i269.i, 0
  br i1 %tobool.not.i270.i, label %rt2400pci_rf_write.exit266.i.rt2400pci_rf_write.exit283.i_crit_edge, label %if.then.i275.i

rt2400pci_rf_write.exit266.i.rt2400pci_rf_write.exit283.i_crit_edge: ; preds = %rt2400pci_rf_write.exit266.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit283.i

if.then.i275.i:                                   ; preds = %rt2400pci_rf_write.exit266.i
  %and19.i271.i = and i32 %128, 16646143
  %or97.i272.i = or i32 %and19.i271.i, -1811939328
  %132 = ptrtoint ptr %reg.i267.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or97.i272.i, ptr %reg.i267.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %133 = call i32 @llvm.bswap.i32(i32 %or97.i272.i) #13
  %csr.i.i273.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %134 = ptrtoint ptr %csr.i.i273.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %csr.i.i273.i, align 4
  %add.ptr.i.i274.i = getelementptr i8, ptr %135, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i274.i, i32 %133) #13, !srcloc !84
  %ops.i.i276.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %136 = ptrtoint ptr %ops.i.i276.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i.i276.i, align 4
  %rf_size.i.i277.i = getelementptr inbounds %struct.rt2x00_ops, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %rf_size.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rf_size.i.i277.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %139)
  %cmp1.i.i279.i = icmp ult i32 %139, 4
  br i1 %cmp1.i.i279.i, label %do.body3.i.i280.i, label %rt2x00_rf_write.exit.i282.i, !prof !86

do.body3.i.i280.i:                                ; preds = %if.then.i275.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i282.i:                      ; preds = %if.then.i275.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i281.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %140 = ptrtoint ptr %rf.i.i281.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rf.i.i281.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %and55.i, ptr %141, align 4
  br label %rt2400pci_rf_write.exit283.i

rt2400pci_rf_write.exit283.i:                     ; preds = %rt2x00_rf_write.exit.i282.i, %rt2400pci_rf_write.exit266.i.rt2400pci_rf_write.exit283.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i267.i) #13
  %143 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rf3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i284.i) #13
  %145 = ptrtoint ptr %reg.i284.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %reg.i284.i, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i286.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i284.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286.i)
  %tobool.not.i287.i = icmp eq i32 %call.i286.i, 0
  br i1 %tobool.not.i287.i, label %rt2400pci_rf_write.exit283.i.rt2400pci_rf_write.exit301.i_crit_edge, label %if.then.i292.i

rt2400pci_rf_write.exit283.i.rt2400pci_rf_write.exit301.i_crit_edge: ; preds = %rt2400pci_rf_write.exit283.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_rf_write.exit301.i

if.then.i292.i:                                   ; preds = %rt2400pci_rf_write.exit283.i
  %and19.i288.i = and i32 %144, 16777215
  %or97.i289.i = or i32 %and19.i288.i, -1811939328
  %146 = ptrtoint ptr %reg.i284.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or97.i289.i, ptr %reg.i284.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %147 = call i32 @llvm.bswap.i32(i32 %or97.i289.i) #13
  %csr.i.i290.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %148 = ptrtoint ptr %csr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %csr.i.i290.i, align 4
  %add.ptr.i.i291.i = getelementptr i8, ptr %149, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i291.i, i32 %147) #13, !srcloc !84
  %ops.i.i293.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %150 = ptrtoint ptr %ops.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ops.i.i293.i, align 4
  %rf_size.i.i294.i = getelementptr inbounds %struct.rt2x00_ops, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %rf_size.i.i294.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rf_size.i.i294.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %153)
  %cmp1.i.i296.i = icmp ult i32 %153, 12
  br i1 %cmp1.i.i296.i, label %do.body3.i.i297.i, label %rt2x00_rf_write.exit.i300.i, !prof !86

do.body3.i.i297.i:                                ; preds = %if.then.i292.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit.i300.i:                      ; preds = %if.then.i292.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i298.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %154 = ptrtoint ptr %rf.i.i298.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rf.i.i298.i, align 4
  %arrayidx.i.i299.i = getelementptr i32, ptr %155, i32 2
  %156 = ptrtoint ptr %arrayidx.i.i299.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %144, ptr %arrayidx.i.i299.i, align 4
  br label %rt2400pci_rf_write.exit301.i

rt2400pci_rf_write.exit301.i:                     ; preds = %rt2x00_rf_write.exit.i300.i, %rt2400pci_rf_write.exit283.i.rt2400pci_rf_write.exit301.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i284.i) #13
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %157 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %158, i32 160
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !81
  %160 = call i32 @llvm.bswap.i32(i32 %159) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %161 = ptrtoint ptr %rf1.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %rf1.i, align 4
  br label %if.end

if.end:                                           ; preds = %rt2400pci_rf_write.exit301.i, %rt2400pci_rf_write.exit162.i.if.end_crit_edge, %entry.if.end_crit_edge
  %and1 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %162 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %libconf, align 4
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %power_level, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i22) #13
  %166 = ptrtoint ptr %reg.i.i22 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -1, ptr %reg.i.i22, align 4, !annotation !85
  %csr_mutex.i.i23 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i23, i32 noundef 0) #13
  %call.i.i24 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %call.i.i24, 0
  br i1 %tobool.not.i.i25, label %if.then3.rt2400pci_config_txpower.exit_crit_edge, label %if.then.i.i28

if.then3.rt2400pci_config_txpower.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2400pci_config_txpower.exit

if.then.i.i28:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast24.i = and i32 %165, 255
  %167 = call i32 @llvm.umin.i32(i32 %phi.cast24.i, i32 62) #13
  %conv1.i = and i32 %165, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %conv1.i, 0
  %.op.op.op.i = sub nuw nsw i32 99165, %167
  %or100.i.i = select i1 %cmp.not.i, i32 99134, i32 %.op.op.op.i
  %168 = ptrtoint ptr %reg.i.i22 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or100.i.i, ptr %reg.i.i22, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %169 = call i32 @llvm.bswap.i32(i32 %or100.i.i) #13
  %csr.i.i.i26 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %170 = ptrtoint ptr %csr.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %csr.i.i.i26, align 4
  %add.ptr.i.i.i27 = getelementptr i8, ptr %171, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i27, i32 %169) #13, !srcloc !84
  br label %rt2400pci_config_txpower.exit

rt2400pci_config_txpower.exit:                    ; preds = %if.then.i.i28, %if.then3.rt2400pci_config_txpower.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i23) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i22) #13
  br label %if.end4

if.end4:                                          ; preds = %rt2400pci_config_txpower.exit, %if.end.if.end4_crit_edge
  %and5 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i.i29 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %172 = ptrtoint ptr %csr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %csr.i.i29, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %173, i32 44
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #13, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %175 = and i32 %174, -65536
  %176 = call i32 @llvm.bswap.i32(i32 %175) #13
  %177 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %libconf, align 4
  %long_frame_max_tx_count.i = getelementptr inbounds %struct.ieee80211_conf, ptr %178, i32 0, i32 5
  %179 = ptrtoint ptr %long_frame_max_tx_count.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %long_frame_max_tx_count.i, align 1
  %conv2.i = zext i8 %180 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 16
  %or.i31 = or i32 %shl.i, %176
  %short_frame_max_tx_count.i = getelementptr inbounds %struct.ieee80211_conf, ptr %178, i32 0, i32 6
  %181 = ptrtoint ptr %short_frame_max_tx_count.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %short_frame_max_tx_count.i, align 4
  %conv30.i = zext i8 %182 to i32
  %shl37.i = shl nuw i32 %conv30.i, 24
  %or45.i = or i32 %or.i31, %shl37.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %183 = call i32 @llvm.bswap.i32(i32 %or45.i) #13
  %184 = ptrtoint ptr %csr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %csr.i.i29, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %185, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %183) #13, !srcloc !84
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %and9 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %186 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %libconf, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %and.i = and i32 %189, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %csr.i154.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %190 = ptrtoint ptr %csr.i154.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %csr.i154.i, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %191, i32 80
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155.i) #13
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %193 = shl i32 %192, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %and2.i = and i32 %193, -33554432
  %beacon_int.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 40
  %194 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %beacon_int.i, align 2
  %conv4.i = zext i16 %195 to i32
  %sub.i = shl nuw nsw i32 %conv4.i, 4
  %mul.i = add nuw nsw i32 %sub.i, 65216
  %mul.masked.i = and i32 %mul.i, 65520
  %and29.i = or i32 %mul.masked.i, %and2.i
  %196 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %libconf, align 4
  %listen_interval.i = getelementptr inbounds %struct.ieee80211_conf, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %listen_interval.i, align 4
  %conv32.i = zext i16 %199 to i32
  %sub33.i = shl nuw i32 %conv32.i, 16
  %shl40.i = add i32 %sub33.i, 16711680
  %and47.i = and i32 %shl40.i, 16711680
  %or48.i = or i32 %and29.i, %and47.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %200 = call i32 @llvm.bswap.i32(i32 %or48.i) #13
  %201 = ptrtoint ptr %csr.i154.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %csr.i154.i, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %202, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 %200) #13, !srcloc !84
  %or100.i = or i32 %or48.i, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %203 = call i32 @llvm.bswap.i32(i32 %or100.i) #13
  %204 = ptrtoint ptr %csr.i154.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %csr.i154.i, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %205, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i, i32 %203) #13, !srcloc !84
  br label %rt2400pci_config_ps.exit

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %206 = and i32 %192, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %207 = ptrtoint ptr %csr.i154.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %csr.i154.i, align 4
  %add.ptr.i157.i = getelementptr i8, ptr %208, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i, i32 %206) #13, !srcloc !84
  br label %rt2400pci_config_ps.exit

rt2400pci_config_ps.exit:                         ; preds = %if.else.i, %if.then.i
  %209 = xor i32 %and.i, 3
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %210 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ops.i, align 4
  %lib.i = getelementptr inbounds %struct.rt2x00_ops, ptr %211, i32 0, i32 7
  %212 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %lib.i, align 4
  %set_device_state.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %213, i32 0, i32 14
  %214 = ptrtoint ptr %set_device_state.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %set_device_state.i, align 4
  %call128.i = call i32 %215(ptr noundef %rt2x00dev, i32 noundef %209) #13
  br label %if.end12

if.end12:                                         ; preds = %rt2400pci_config_ps.exit, %if.end8.if.end12_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00mmio_register_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %offset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %csr = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00mmio_register_write(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %offset, i32 noundef %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %csr = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %1 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #13, !srcloc !84
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt2400pci_txdone(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %queue_idx) unnamed_addr #2 align 64 {
entry:
  %txdesc = alloca %struct.txdone_entry_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %tx_queues.i = getelementptr inbounds %struct.rt2x00_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %queue_idx)
  %cmp.i = icmp ugt i32 %3, %queue_idx
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %tx.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 51
  %4 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.data_queue, ptr %5, i32 %queue_idx
  br label %rt2x00queue_get_tx_queue.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %queue_idx)
  %cmp2.i = icmp eq i32 %queue_idx, 17
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.rt2x00queue_get_tx_queue.exit_crit_edge

if.end.i.rt2x00queue_get_tx_queue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2x00queue_get_tx_queue.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %atim.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 53
  %6 = ptrtoint ptr %atim.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atim.i, align 8
  br label %rt2x00queue_get_tx_queue.exit

rt2x00queue_get_tx_queue.exit:                    ; preds = %if.then3.i, %if.end.i.rt2x00queue_get_tx_queue.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %7, %if.then3.i ], [ null, %if.end.i.rt2x00queue_get_tx_queue.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %txdesc) #13
  %8 = ptrtoint ptr %txdesc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %txdesc, align 4, !annotation !85
  %9 = getelementptr inbounds %struct.txdone_entry_desc, ptr %txdesc, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !85
  %length.i = getelementptr inbounds %struct.data_queue, ptr %retval.0.i, i32 0, i32 10
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i85.not86 = icmp eq i16 %12, 0
  br i1 %cmp.i85.not86, label %rt2x00queue_get_tx_queue.exit.while.end_crit_edge, label %rt2x00queue_get_tx_queue.exit.while.body_crit_edge

rt2x00queue_get_tx_queue.exit.while.body_crit_edge: ; preds = %rt2x00queue_get_tx_queue.exit
  br label %while.body

rt2x00queue_get_tx_queue.exit.while.end_crit_edge: ; preds = %rt2x00queue_get_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %rt2x00queue_get_tx_queue.exit.while.body_crit_edge
  %call3 = call ptr @rt2x00queue_get_entry(ptr noundef %retval.0.i, i32 noundef 2) #13
  %priv_data = getelementptr inbounds %struct.queue_entry, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #13
  %20 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %.not = icmp eq i32 %20, 2
  br i1 %.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  %21 = ptrtoint ptr %txdesc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %txdesc, align 4
  %and46 = lshr i32 %19, 2
  %shr53 = and i32 %and46, 7
  %22 = zext i32 %shr53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr53, label %if.end.sw.default_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %if.end.sw.epilog_crit_edge87
    i32 2, label %sw.bb55
  ]

if.end.sw.epilog_crit_edge87:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

sw.bb55:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %txdesc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %txdesc, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb55, %if.end.sw.default_crit_edge
  %24 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %txdesc, align 4
  %or.i84 = or i32 %25, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge87
  %storemerge = phi i32 [ %or.i84, %sw.default ], [ 2, %if.end.sw.epilog_crit_edge ], [ 2, %if.end.sw.epilog_crit_edge87 ]
  %26 = ptrtoint ptr %txdesc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %txdesc, align 4
  %and70 = lshr i32 %19, 5
  %shr77 = and i32 %and70, 7
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr77, ptr %9, align 4
  call void @rt2x00lib_txdone(ptr noundef %call3, ptr noundef nonnull %txdesc) #13
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %length.i, align 4
  %cmp.i85.not = icmp eq i16 %29, 0
  br i1 %cmp.i85.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %while.body.while.end_crit_edge, %rt2x00queue_get_tx_queue.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %txdesc) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt2x00queue_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_txdone(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_beacondone(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2x00mmio_rxdone(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_eepromregister_read(ptr nocapture noundef %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 3
  %8 = and i8 %7, 1
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %9 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %reg_data_in, align 1
  %10 = lshr i8 %6, 4
  %11 = and i8 %10, 1
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %12 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %reg_data_out, align 2
  %13 = lshr i8 %6, 1
  %14 = and i8 %13, 1
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %15 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %reg_data_clock, align 1
  %16 = lshr i8 %6, 2
  %17 = and i8 %16, 1
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %18 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %reg_chip_select, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_eepromregister_write(ptr nocapture noundef readonly %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %2 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_data_in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %shl = select i1 %tobool.not, i32 0, i32 134217728
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %4 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_data_out, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool29.not = icmp eq i8 %5, 0
  %shl40 = select i1 %tobool29.not, i32 0, i32 268435456
  %or48 = or i32 %shl40, %shl
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %6 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_data_clock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool62.not = icmp eq i8 %7, 0
  %shl73 = select i1 %tobool62.not, i32 0, i32 33554432
  %or81 = or i32 %or48, %shl73
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %8 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool95.not = icmp eq i8 %9, 0
  %shl106 = select i1 %tobool95.not, i32 0, i32 67108864
  %or114 = or i32 %or81, %shl106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or114) #13, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multiread(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_set_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @rt2x00_eeprom_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %eeprom = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 8
  %arrayidx = getelementptr i16, ptr %1, i32 %word
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  ret i16 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp.not = icmp eq i32 %brightness, 0
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 248
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %type = getelementptr i8, ptr %led_cdev, i32 400
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %7, label %entry.if.end55_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then_crit_edge68
    i32 2, label %if.then26
  ]

entry.if.then_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge68
  %and = and i32 %5, -65537
  %shl = select i1 %cmp.not, i32 0, i32 65536
  %or = or i32 %and, %shl
  br label %if.end55

if.then26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and38 = and i32 %5, -131073
  %shl46 = select i1 %cmp.not, i32 0, i32 131072
  %or54 = or i32 %and38, %shl46
  br label %if.end55

if.end55:                                         ; preds = %if.then26, %if.then, %entry.if.end55_crit_edge
  %reg.0 = phi i32 [ %or, %if.then ], [ %or54, %if.then26 ], [ %5, %entry.if.end55_crit_edge ]
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #13
  %csr.i66 = getelementptr inbounds %struct.rt2x00_dev, ptr %10, i32 0, i32 20
  %12 = ptrtoint ptr %csr.i66 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i66, align 4
  %add.ptr.i67 = getelementptr i8, ptr %13, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %11) #13, !srcloc !84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2400pci_blink_set(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 248
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %5 = and i32 %4, 65535
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay_on, align 4
  %and15 = and i32 %8, 255
  %or = or i32 %and15, %6
  %9 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay_off, align 4
  %shl35 = shl i32 %10, 8
  %and42 = and i32 %shl35, 65280
  %or43 = or i32 %or, %and42
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %13 = tail call i32 @llvm.bswap.i32(i32 %or43) #13
  %csr.i50 = getelementptr inbounds %struct.rt2x00_dev, ptr %12, i32 0, i32 20
  %14 = ptrtoint ptr %csr.i50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i50, align 4
  %add.ptr.i51 = getelementptr i8, ptr %15, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %13) #13, !srcloc !84
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_bbp_write(ptr noundef %rt2x00dev, i32 noundef %word, i8 noundef zeroext %value) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #13
  %call = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv7 = zext i8 %value to i32
  %shl40 = shl i32 %word, 8
  %and47 = and i32 %shl40, 32512
  %or48 = or i32 %and47, %conv7
  %or100 = or i32 %or48, 98304
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or100, ptr %reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %2 = call i32 @llvm.bswap.i32(i32 %or100) #13
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #13, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rt2400pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef %word) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #13
  %call = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shl = shl i32 %word, 8
  %and19 = and i32 %shl, 32512
  %or45 = or i32 %and19, 32768
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or45, ptr %reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %2 = shl nuw nsw i32 %or45, 8
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #13, !srcloc !84
  %call78 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %conv98 = trunc i32 %6 to i8
  call void @mutex_unlock(ptr noundef %csr_mutex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret i8 %conv98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mmio_regbusy_read(ptr noundef, i32 noundef, [2 x i32], ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00queue_map_txskb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00debug_dump_frame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2400pci_rf_write(ptr noundef %rt2x00dev, i32 noundef %word, i32 noundef %value) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #13
  %call = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %and19 = and i32 %value, 16777215
  %or97 = or i32 %and19, -1811939328
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or97, ptr %reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void @arm_heavy_mb() #13
  %2 = call i32 @llvm.bswap.i32(i32 %or97) #13
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word)
  %cmp.i = icmp eq i32 %word, 0
  br i1 %cmp.i, label %if.then.do.body3.i_crit_edge, label %lor.rhs.i, !prof !86

if.then.do.body3.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

lor.rhs.i:                                        ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %rf_size.i = getelementptr inbounds %struct.rt2x00_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %rf_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rf_size.i, align 4
  %div10.i = lshr i32 %8, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i, i32 %word)
  %cmp1.i = icmp ult i32 %div10.i, %word
  br i1 %cmp1.i, label %lor.rhs.i.do.body3.i_crit_edge, label %rt2x00_rf_write.exit, !prof !86

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %if.then.do.body3.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

rt2x00_rf_write.exit:                             ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %9 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rf.i, align 4
  %sub.i = add i32 %word, -1
  %arrayidx.i = getelementptr i32, ptr %10, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %value, ptr %arrayidx.i, align 4
  br label %if.end

if.end:                                           ; preds = %rt2x00_rf_write.exit, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_tx(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_start(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_stop(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_add_interface(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_remove_interface(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_config(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_bss_info_changed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_configure_filter(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_start(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_complete(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_get_stats(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2400pci_conf_tx(ptr noundef %hw, ptr noundef %vif, i16 noundef zeroext %queue, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %queue)
  %cmp.not = icmp eq i16 %queue, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rt2x00mac_conf_tx(ptr noundef %hw, ptr noundef %vif, i16 noundef zeroext 0, ptr noundef %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %tx = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx, align 8
  %cw_min = getelementptr inbounds %struct.data_queue, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cw_min, align 4
  %cw_max = getelementptr inbounds %struct.data_queue, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cw_max, align 2
  %conv6 = zext i16 %7 to i32
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %11 = and i32 %10, 16777215
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %13 = and i16 %5, 15
  %and14.i = zext i16 %13 to i32
  %shl34.i = shl nuw nsw i32 %conv6, 4
  %and41.i = and i32 %shl34.i, 240
  %or.i = or i32 %and41.i, %and14.i
  %or42.i = or i32 %or.i, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or42.i) #13
  %15 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %14) #13, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @rt2400pci_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 68
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %6, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #13, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %8 = zext i32 %4 to i64
  %9 = zext i32 %7 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  ret i64 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2400pci_tx_last_beacon(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !81
  %5 = lshr i32 %4, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !82
  %shr = and i32 %5, 1
  ret i32 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_rfkill_poll(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_flush(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_set_antenna(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_get_antenna(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_get_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2x00mac_tx_frames_pending(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt2x00_eeprom_write(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word, i16 noundef zeroext %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i16 @llvm.bswap.i16(i16 %data)
  %eeprom = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %1 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eeprom, align 8
  %arrayidx = getelementptr i16, ptr %2, i32 %word
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %0, ptr %arrayidx, align 2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00_rf_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word)
  %cmp = icmp eq i32 %word, 0
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !86

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

lor.rhs:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %rf_size = getelementptr inbounds %struct.rt2x00_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rf_size, align 4
  %div10 = lshr i32 %3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div10, i32 %word)
  %cmp1 = icmp ult i32 %div10, %word
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end6, !prof !86

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #13, !srcloc !89
  unreachable

do.end6:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %rf = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %4 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rf, align 4
  %sub = add i32 %word, -1
  %arrayidx = getelementptr i32, ptr %5, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__UNIQUE_ID_author600, !1, !"__UNIQUE_ID_author600", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1821, i32 1}
!2 = !{ptr @__UNIQUE_ID_version601, !3, !"__UNIQUE_ID_version601", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1822, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description602, !9, !"__UNIQUE_ID_description602", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1823, i32 1}
!10 = !{ptr @__UNIQUE_ID_file603, !11, !"__UNIQUE_ID_file603", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1825, i32 1}
!12 = !{ptr @__UNIQUE_ID_license604, !11, !"__UNIQUE_ID_license604", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_rt2400pci__605_1841_rt2400pci_driver_init6, !14, !"__initcall__kmod_rt2400pci__605_1841_rt2400pci_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1841, i32 1}
!15 = !{ptr @__exitcall_rt2400pci_driver_exit, !14, !"__exitcall_rt2400pci_driver_exit", i1 false, i1 false}
!16 = !{ptr @rt2400pci_driver, !17, !"rt2400pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1833, i32 26}
!18 = !{ptr @rt2400pci_device_table, !19, !"rt2400pci_device_table", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1815, i32 35}
!20 = !{ptr @rt2400pci_ops, !21, !"rt2400pci_ops", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1798, i32 32}
!22 = !{ptr @rt2400pci_rt2x00_ops, !23, !"rt2400pci_rt2x00_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1729, i32 35}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1460, i32 3}
!26 = !{ptr @rt2400pci_validate_eeprom._rs, !25, !"_rs", i1 false, i1 false}
!27 = !{ptr @__func__.rt2400pci_validate_eeprom, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rt2400pci_validate_eeprom._entry, !25, !"_entry", i1 false, i1 false}
!33 = !{ptr @rt2400pci_validate_eeprom._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @rt2400pci_init_eeprom._rs, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1487, i32 3}
!36 = !{ptr @__func__.rt2400pci_init_eeprom, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rt2400pci_init_eeprom._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @rt2400pci_init_eeprom._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00.h", i32 1107, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rt2x00_set_chip._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @rt2x00_set_chip._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @rf_vals_b, !48, !"rf_vals_b", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1543, i32 32}
!49 = !{ptr @rt2400pci_set_device_state._rs, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1085, i32 3}
!51 = !{ptr @__func__.rt2400pci_set_device_state, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rt2400pci_set_device_state._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @rt2400pci_set_device_state._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @rt2400pci_wait_bbp_ready._rs, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 912, i32 2}
!57 = !{ptr @__func__.rt2400pci_wait_bbp_ready, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rt2400pci_wait_bbp_ready._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @rt2400pci_wait_bbp_ready._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @rt2400pci_write_beacon._rs, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1180, i32 3}
!63 = !{ptr @__func__.rt2400pci_write_beacon, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rt2400pci_write_beacon._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @rt2400pci_write_beacon._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @rt2400pci_mac80211_ops, !68, !"rt2400pci_mac80211_ops", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 1706, i32 35}
!69 = !{ptr @rt2400pci_rt2x00debug, !70, !"rt2400pci_rt2x00debug", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2400pci.c", i32 159, i32 33}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2163744136, i64 2163744648, i64 2163744173, i64 2163744229, i64 2163744263, i64 2163744287, i64 2163744328, i64 2163744349, i64 2163744377, i64 2163744411}
!81 = !{i64 6102850}
!82 = !{i64 2158072443}
!83 = !{i64 2158073079}
!84 = !{i64 6102432}
!85 = !{!"auto-init"}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 2159663756, i64 2159664267, i64 2159663793, i64 2159663849, i64 2159663883, i64 2159663907, i64 2159663948, i64 2159663969, i64 2159663997, i64 2159664031}
!88 = !{i64 2158054420, i64 2158054929, i64 2158054457, i64 2158054513, i64 2158054547, i64 2158054571, i64 2158054612, i64 2158054633, i64 2158054661, i64 2158054695}
!89 = !{i64 2158052508, i64 2158053017, i64 2158052545, i64 2158052601, i64 2158052635, i64 2158052659, i64 2158052700, i64 2158052721, i64 2158052749, i64 2158052783}
