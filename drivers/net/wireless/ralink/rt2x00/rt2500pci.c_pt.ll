; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2500pci.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2500pci.c"
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
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.data_queue = type { ptr, ptr, i32, i32, %struct.mutex, %struct.spinlock, %struct.spinlock, i32, i16, i16, i16, [3 x i16], i16, i32, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_author648 = internal constant [48 x i8] c"rt2500pci.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version649 = internal constant [24 x i8] c"rt2500pci.version=2.3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rt2500pci\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description650 = internal constant [70 x i8] c"rt2500pci.description=Ralink RT2500 PCI & PCMCIA Wireless LAN driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_file651 = internal constant [60 x i8] c"rt2500pci.file=drivers/net/wireless/ralink/rt2x00/rt2500pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license652 = internal constant [22 x i8] c"rt2500pci.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rt2500pci__653_2139_rt2500pci_driver_init6 = internal global ptr @rt2500pci_driver_init, section ".initcall6.init", align 4
@rt2500pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @rt2500pci_device_table, ptr @rt2500pci_probe, ptr @rt2x00pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rt2500pci_driver_exit = internal global ptr @rt2500pci_driver_exit, section ".exitcall.exit", align 4
@rt2500pci_device_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6164, i32 513, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rt2x00pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@rt2500pci_ops = internal constant { %struct.rt2x00_ops, [52 x i8] } { %struct.rt2x00_ops { ptr @.str.1, i32 0, i32 1, i32 512, i32 16, i32 2, ptr @rt2500pci_queue_init, ptr @rt2500pci_rt2x00_ops, ptr null, ptr @rt2500pci_mac80211_ops, ptr @rt2500pci_rt2x00debug }, [52 x i8] zeroinitializer }, align 32
@rt2500pci_rt2x00_ops = internal constant { %struct.rt2x00lib_ops, [52 x i8] } { %struct.rt2x00lib_ops { ptr @rt2500pci_interrupt, ptr @rt2500pci_txstatus_tasklet, ptr null, ptr @rt2500pci_tbtt_tasklet, ptr @rt2500pci_rxdone_tasklet, ptr null, ptr @rt2500pci_probe_hw, ptr null, ptr null, ptr null, ptr @rt2x00mmio_initialize, ptr @rt2x00mmio_uninitialize, ptr @rt2500pci_get_entry_state, ptr @rt2500pci_clear_entry, ptr @rt2500pci_set_device_state, ptr @rt2500pci_rfkill_poll, ptr @rt2500pci_link_stats, ptr @rt2500pci_reset_tuner, ptr @rt2500pci_link_tuner, ptr null, ptr null, ptr null, ptr @rt2500pci_start_queue, ptr @rt2500pci_kick_queue, ptr @rt2500pci_stop_queue, ptr @rt2x00mmio_flush_queue, ptr null, ptr @rt2500pci_write_tx_desc, ptr null, ptr @rt2500pci_write_beacon, ptr null, ptr null, ptr @rt2500pci_fill_rxdone, ptr null, ptr null, ptr @rt2500pci_config_filter, ptr @rt2500pci_config_intf, ptr @rt2500pci_config_erp, ptr @rt2500pci_config_ant, ptr @rt2500pci_config, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rt2500pci_mac80211_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rt2x00mac_tx, ptr @rt2x00mac_start, ptr @rt2x00mac_stop, ptr null, ptr null, ptr null, ptr @rt2x00mac_add_interface, ptr null, ptr @rt2x00mac_remove_interface, ptr @rt2x00mac_config, ptr @rt2x00mac_bss_info_changed, ptr null, ptr null, ptr null, ptr @rt2x00mac_configure_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_sw_scan_start, ptr @rt2x00mac_sw_scan_complete, ptr @rt2x00mac_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_conf_tx, ptr @rt2500pci_get_tsf, ptr null, ptr null, ptr null, ptr @rt2500pci_tx_last_beacon, ptr null, ptr null, ptr @rt2x00mac_rfkill_poll, ptr null, ptr null, ptr null, ptr @rt2x00mac_flush, ptr null, ptr @rt2x00mac_set_antenna, ptr @rt2x00mac_get_antenna, ptr null, ptr null, ptr null, ptr @rt2x00mac_get_ringparam, ptr @rt2x00mac_tx_frames_pending, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@rt2500pci_rt2x00debug = internal constant { %struct.rt2x00debug, [36 x i8] } { %struct.rt2x00debug { ptr null, %struct.regcsr { ptr @rt2x00mmio_register_read, ptr @rt2x00mmio_register_write, i32 1, i32 0, i32 4, i32 93 }, %struct.regeeprom { ptr @rt2x00_eeprom_read, ptr @rt2x00_eeprom_write, i32 0, i32 0, i32 2, i32 256 }, %struct.regbbp { ptr @rt2500pci_bbp_read, ptr @rt2500pci_bbp_write, i32 0, i32 0, i32 1, i32 64 }, %struct.regrf { ptr @rt2x00_rf_read, ptr @rt2500pci_rf_write, i32 0, i32 4, i32 4, i32 4 }, %struct.regrfcsr zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt2500pci_validate_eeprom\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2500pci.c\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: EEPROM recovery - Antenna: 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: EEPROM recovery - NIC: 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 1, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: EEPROM recovery - Calibrate offset: 0x%04x\0A\00", [48 x i8] zeroinitializer }, align 32
@rt2500pci_init_eeprom._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt2500pci_init_eeprom = private unnamed_addr constant [22 x i8] c"rt2500pci_init_eeprom\00", align 1
@rt2500pci_init_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.rt2500pci_init_eeprom, ptr @.str.4, i32 1646, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error - Invalid RF chipset detected\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt2500pci_init_eeprom._entry_ptr = internal global ptr @rt2500pci_init_eeprom._entry, section ".printk_index", align 4
@rt2x00_set_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 1109, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: Info - Chipset detected - rt: %04x, rf: %04x, rev: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt2x00_set_chip\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt2x00_set_chip._entry_ptr = internal global ptr @rt2x00_set_chip._entry, section ".printk_index", align 4
@rf_vals_bg_2522 = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 8272, i32 794586, i32 257, i32 0 }, %struct.rf_channel { i32 2, i32 8272, i32 794606, i32 257, i32 0 }, %struct.rf_channel { i32 3, i32 8272, i32 794626, i32 257, i32 0 }, %struct.rf_channel { i32 4, i32 8272, i32 794646, i32 257, i32 0 }, %struct.rf_channel { i32 5, i32 8272, i32 794666, i32 257, i32 0 }, %struct.rf_channel { i32 6, i32 8272, i32 794686, i32 257, i32 0 }, %struct.rf_channel { i32 7, i32 8272, i32 794706, i32 257, i32 0 }, %struct.rf_channel { i32 8, i32 8272, i32 794726, i32 257, i32 0 }, %struct.rf_channel { i32 9, i32 8272, i32 794746, i32 257, i32 0 }, %struct.rf_channel { i32 10, i32 8272, i32 794766, i32 257, i32 0 }, %struct.rf_channel { i32 11, i32 8272, i32 794786, i32 257, i32 0 }, %struct.rf_channel { i32 12, i32 8272, i32 794806, i32 257, i32 0 }, %struct.rf_channel { i32 13, i32 8272, i32 794826, i32 257, i32 0 }, %struct.rf_channel { i32 14, i32 8272, i32 794874, i32 257, i32 0 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_bg_2523 = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 139280, i32 3230, i32 917777, i32 2587 }, %struct.rf_channel { i32 2, i32 139280, i32 3234, i32 917777, i32 2587 }, %struct.rf_channel { i32 3, i32 139280, i32 3238, i32 917777, i32 2587 }, %struct.rf_channel { i32 4, i32 139280, i32 3242, i32 917777, i32 2587 }, %struct.rf_channel { i32 5, i32 139280, i32 3246, i32 917777, i32 2587 }, %struct.rf_channel { i32 6, i32 139280, i32 3250, i32 917777, i32 2587 }, %struct.rf_channel { i32 7, i32 139280, i32 3254, i32 917777, i32 2587 }, %struct.rf_channel { i32 8, i32 139280, i32 3258, i32 917777, i32 2587 }, %struct.rf_channel { i32 9, i32 139280, i32 3262, i32 917777, i32 2587 }, %struct.rf_channel { i32 10, i32 139280, i32 3330, i32 917777, i32 2587 }, %struct.rf_channel { i32 11, i32 139280, i32 3334, i32 917777, i32 2587 }, %struct.rf_channel { i32 12, i32 139280, i32 3338, i32 917777, i32 2587 }, %struct.rf_channel { i32 13, i32 139280, i32 3342, i32 917777, i32 2587 }, %struct.rf_channel { i32 14, i32 139280, i32 3354, i32 917777, i32 2563 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_bg_2524 = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 204832, i32 3230, i32 257, i32 2587 }, %struct.rf_channel { i32 2, i32 204832, i32 3234, i32 257, i32 2587 }, %struct.rf_channel { i32 3, i32 204832, i32 3238, i32 257, i32 2587 }, %struct.rf_channel { i32 4, i32 204832, i32 3242, i32 257, i32 2587 }, %struct.rf_channel { i32 5, i32 204832, i32 3246, i32 257, i32 2587 }, %struct.rf_channel { i32 6, i32 204832, i32 3250, i32 257, i32 2587 }, %struct.rf_channel { i32 7, i32 204832, i32 3254, i32 257, i32 2587 }, %struct.rf_channel { i32 8, i32 204832, i32 3258, i32 257, i32 2587 }, %struct.rf_channel { i32 9, i32 204832, i32 3262, i32 257, i32 2587 }, %struct.rf_channel { i32 10, i32 204832, i32 3330, i32 257, i32 2587 }, %struct.rf_channel { i32 11, i32 204832, i32 3334, i32 257, i32 2587 }, %struct.rf_channel { i32 12, i32 204832, i32 3338, i32 257, i32 2587 }, %struct.rf_channel { i32 13, i32 204832, i32 3342, i32 257, i32 2587 }, %struct.rf_channel { i32 14, i32 204832, i32 3354, i32 257, i32 2563 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_bg_2525 = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 139296, i32 527518, i32 393489, i32 2587 }, %struct.rf_channel { i32 2, i32 139296, i32 527522, i32 393489, i32 2587 }, %struct.rf_channel { i32 3, i32 139296, i32 527526, i32 393489, i32 2587 }, %struct.rf_channel { i32 4, i32 139296, i32 527530, i32 393489, i32 2587 }, %struct.rf_channel { i32 5, i32 139296, i32 527534, i32 393489, i32 2587 }, %struct.rf_channel { i32 6, i32 139296, i32 527538, i32 393489, i32 2587 }, %struct.rf_channel { i32 7, i32 139296, i32 527542, i32 393489, i32 2587 }, %struct.rf_channel { i32 8, i32 139296, i32 527546, i32 393489, i32 2587 }, %struct.rf_channel { i32 9, i32 139296, i32 527550, i32 393489, i32 2587 }, %struct.rf_channel { i32 10, i32 139296, i32 527618, i32 393489, i32 2587 }, %struct.rf_channel { i32 11, i32 139296, i32 527622, i32 393489, i32 2587 }, %struct.rf_channel { i32 12, i32 139296, i32 527626, i32 393489, i32 2587 }, %struct.rf_channel { i32 13, i32 139296, i32 527630, i32 393489, i32 2587 }, %struct.rf_channel { i32 14, i32 139296, i32 527642, i32 393489, i32 2563 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_bg_2525e = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 139296, i32 528694, i32 393489, i32 2571 }, %struct.rf_channel { i32 2, i32 139296, i32 528698, i32 393489, i32 2571 }, %struct.rf_channel { i32 3, i32 139296, i32 528702, i32 393489, i32 2571 }, %struct.rf_channel { i32 4, i32 139296, i32 528770, i32 393489, i32 2571 }, %struct.rf_channel { i32 5, i32 139296, i32 528774, i32 393489, i32 2571 }, %struct.rf_channel { i32 6, i32 139296, i32 528778, i32 393489, i32 2571 }, %struct.rf_channel { i32 7, i32 139296, i32 528782, i32 393489, i32 2571 }, %struct.rf_channel { i32 8, i32 139296, i32 528786, i32 393489, i32 2571 }, %struct.rf_channel { i32 9, i32 139296, i32 528790, i32 393489, i32 2571 }, %struct.rf_channel { i32 10, i32 139296, i32 528794, i32 393489, i32 2571 }, %struct.rf_channel { i32 11, i32 139296, i32 528798, i32 393489, i32 2571 }, %struct.rf_channel { i32 12, i32 139296, i32 528802, i32 393489, i32 2571 }, %struct.rf_channel { i32 13, i32 139296, i32 528806, i32 393489, i32 2571 }, %struct.rf_channel { i32 14, i32 139296, i32 528814, i32 393489, i32 2587 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_5222 = internal constant { [37 x %struct.rf_channel], [188 x i8] } { [37 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 139296, i32 4406, i32 257, i32 2571 }, %struct.rf_channel { i32 2, i32 139296, i32 4410, i32 257, i32 2571 }, %struct.rf_channel { i32 3, i32 139296, i32 4414, i32 257, i32 2571 }, %struct.rf_channel { i32 4, i32 139296, i32 4482, i32 257, i32 2571 }, %struct.rf_channel { i32 5, i32 139296, i32 4486, i32 257, i32 2571 }, %struct.rf_channel { i32 6, i32 139296, i32 4490, i32 257, i32 2571 }, %struct.rf_channel { i32 7, i32 139296, i32 4494, i32 257, i32 2571 }, %struct.rf_channel { i32 8, i32 139296, i32 4498, i32 257, i32 2571 }, %struct.rf_channel { i32 9, i32 139296, i32 4502, i32 257, i32 2571 }, %struct.rf_channel { i32 10, i32 139296, i32 4506, i32 257, i32 2571 }, %struct.rf_channel { i32 11, i32 139296, i32 4510, i32 257, i32 2571 }, %struct.rf_channel { i32 12, i32 139296, i32 4514, i32 257, i32 2571 }, %struct.rf_channel { i32 13, i32 139296, i32 4518, i32 257, i32 2571 }, %struct.rf_channel { i32 14, i32 139296, i32 4526, i32 257, i32 2587 }, %struct.rf_channel { i32 36, i32 139280, i32 100502, i32 257, i32 2591 }, %struct.rf_channel { i32 40, i32 139280, i32 100506, i32 257, i32 2591 }, %struct.rf_channel { i32 44, i32 139280, i32 100510, i32 257, i32 2591 }, %struct.rf_channel { i32 48, i32 139280, i32 100514, i32 257, i32 2591 }, %struct.rf_channel { i32 52, i32 139280, i32 100518, i32 257, i32 2591 }, %struct.rf_channel { i32 66, i32 139280, i32 100522, i32 257, i32 2591 }, %struct.rf_channel { i32 60, i32 139280, i32 100526, i32 257, i32 2591 }, %struct.rf_channel { i32 64, i32 139280, i32 100530, i32 257, i32 2591 }, %struct.rf_channel { i32 100, i32 139280, i32 34818, i32 257, i32 2575 }, %struct.rf_channel { i32 104, i32 139280, i32 34822, i32 257, i32 2575 }, %struct.rf_channel { i32 108, i32 139280, i32 34826, i32 257, i32 2575 }, %struct.rf_channel { i32 112, i32 139280, i32 34830, i32 257, i32 2575 }, %struct.rf_channel { i32 116, i32 139280, i32 34834, i32 257, i32 2575 }, %struct.rf_channel { i32 120, i32 139280, i32 34838, i32 257, i32 2575 }, %struct.rf_channel { i32 124, i32 139280, i32 34842, i32 257, i32 2575 }, %struct.rf_channel { i32 128, i32 139280, i32 34846, i32 257, i32 2575 }, %struct.rf_channel { i32 132, i32 139280, i32 34850, i32 257, i32 2575 }, %struct.rf_channel { i32 136, i32 139280, i32 34854, i32 257, i32 2575 }, %struct.rf_channel { i32 140, i32 139280, i32 34858, i32 257, i32 2575 }, %struct.rf_channel { i32 149, i32 139296, i32 37030, i32 257, i32 2567 }, %struct.rf_channel { i32 153, i32 139296, i32 37038, i32 257, i32 2567 }, %struct.rf_channel { i32 157, i32 139296, i32 37046, i32 257, i32 2567 }, %struct.rf_channel { i32 161, i32 139296, i32 37054, i32 257, i32 2567 }], [188 x i8] zeroinitializer }, align 32
@rt2500pci_set_device_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2500pci_set_device_state = private unnamed_addr constant [27 x i8] c"rt2500pci_set_device_state\00", align 1
@rt2500pci_set_device_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.rt2500pci_set_device_state, ptr @.str.4, i32 1239, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - Device failed to enter state %d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@rt2500pci_set_device_state._entry_ptr = internal global ptr @rt2500pci_set_device_state._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt2500pci_wait_bbp_ready._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2500pci_wait_bbp_ready = private unnamed_addr constant [25 x i8] c"rt2500pci_wait_bbp_ready\00", align 1
@rt2500pci_wait_bbp_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.rt2500pci_wait_bbp_ready, ptr @.str.4, i32 1050, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - BBP register access failed, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@rt2500pci_wait_bbp_ready._entry_ptr = internal global ptr @rt2500pci_wait_bbp_ready._entry, section ".printk_index", align 4
@rt2500pci_write_beacon._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2500pci_write_beacon = private unnamed_addr constant [23 x i8] c"rt2500pci_write_beacon\00", align 1
@rt2500pci_write_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.rt2500pci_write_beacon, ptr @.str.4, i32 1332, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Error - Fail to map beacon, aborting\0A\00", [54 x i8] zeroinitializer }, align 32
@rt2500pci_write_beacon._entry_ptr = internal global ptr @rt2500pci_write_beacon._entry, section ".printk_index", align 4
@rt2500pci_config_channel.vals = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 527550, i32 527618, i32 527622, i32 527626, i32 527630, i32 527634, i32 527638, i32 527642, i32 527646, i32 527650, i32 527654, i32 527658, i32 527662, i32 527674], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 16]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 3, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 16]
@__sancov_gen_cov_switch_values.22 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 17]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 16]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2120, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"rt2500pci_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2131, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"rt2500pci_device_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2114, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"rt2500pci_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2097, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"rt2500pci_rt2x00_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2028, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"rt2500pci_mac80211_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2005, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"rt2500pci_rt2x00debug\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 159, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1597, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1606, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1614, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1646, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [47 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1107, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"rf_vals_bg_2522\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1704, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"rf_vals_bg_2523\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1725, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"rf_vals_bg_2524\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1746, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"rf_vals_bg_2525\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1767, i32 32 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"rf_vals_bg_2525e\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1788, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"rf_vals_5222\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1809, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1238, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1050, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1332, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [5 x i8] c"vals\00", align 1
@___asan_gen_.152 = private constant [50 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 489, i32 20 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author648, ptr @__UNIQUE_ID_description650, ptr @__UNIQUE_ID_file651, ptr @__UNIQUE_ID_license652, ptr @__UNIQUE_ID_version649, ptr @__exitcall_rt2500pci_driver_exit, ptr @__initcall__kmod_rt2500pci__653_2139_rt2500pci_driver_init6, ptr @__modver_attr, ptr @rt2500pci_driver_exit, ptr @rt2500pci_init_eeprom._entry, ptr @rt2500pci_init_eeprom._entry_ptr, ptr @rt2500pci_set_device_state._entry, ptr @rt2500pci_set_device_state._entry_ptr, ptr @rt2500pci_wait_bbp_ready._entry, ptr @rt2500pci_wait_bbp_ready._entry_ptr, ptr @rt2500pci_write_beacon._entry, ptr @rt2500pci_write_beacon._entry_ptr, ptr @rt2x00_set_chip._entry, ptr @rt2x00_set_chip._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rt2500pci_driver, ptr @rt2500pci_device_table, ptr @rt2500pci_ops, ptr @rt2500pci_rt2x00_ops, ptr @rt2500pci_mac80211_ops, ptr @rt2500pci_rt2x00debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rt2500pci_init_eeprom._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rf_vals_bg_2522, ptr @rf_vals_bg_2523, ptr @rf_vals_bg_2524, ptr @rf_vals_bg_2525, ptr @rf_vals_bg_2525e, ptr @rf_vals_5222, ptr @rt2500pci_set_device_state._rs, ptr @.str.16, ptr @rt2500pci_wait_bbp_ready._rs, ptr @.str.17, ptr @rt2500pci_write_beacon._rs, ptr @.str.18, ptr @rt2500pci_config_channel.vals], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_device_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_rt2x00_ops to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_mac80211_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_rt2x00debug to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_init_eeprom._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_init_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00_set_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2522 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2523 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2524 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2525 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2525e to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_5222 to i32), i32 740, i32 928, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_set_device_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_set_device_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_wait_bbp_ready._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_wait_bbp_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_write_beacon._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_write_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500pci_config_channel.vals to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rt2500pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @rt2500pci_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500pci_probe(ptr noundef %pci_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rt2x00pci_probe(ptr noundef %pci_dev, ptr noundef nonnull @rt2500pci_ops) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00pci_remove(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00pci_probe(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_queue_init(ptr nocapture noundef %queue) #2 align 64 {
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
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2500pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2092, 0\0A.popsection", ""() #13, !srcloc !96
  unreachable

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb6, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge35, %entry.sw.epilog_crit_edge36, %entry.sw.epilog_crit_edge37, %entry.sw.epilog_crit_edge38
  %.sink34 = phi i16 [ 8, %sw.bb11 ], [ 1, %sw.bb6 ], [ 32, %entry.sw.epilog_crit_edge ], [ 32, %entry.sw.epilog_crit_edge35 ], [ 32, %entry.sw.epilog_crit_edge36 ], [ 32, %entry.sw.epilog_crit_edge37 ], [ 32, %entry.sw.epilog_crit_edge38 ]
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
  store i8 44, ptr %desc_size14, align 2
  %priv_size15 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 21
  %6 = ptrtoint ptr %priv_size15 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8, ptr %priv_size15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500pci_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i212 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 %2) #13, !srcloc !100
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
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #13, !srcloc !97
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %or182 = or i32 %15, %mask.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %or182) #13
  %17 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %16) #13, !srcloc !100
  tail call void @_raw_spin_unlock(ptr noundef %irqmask_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end180 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_txstatus_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3024
  tail call fastcc void @rt2500pci_txdone(ptr noundef %add.ptr, i32 noundef 17)
  tail call fastcc void @rt2500pci_txdone(ptr noundef %add.ptr, i32 noundef 0)
  tail call fastcc void @rt2500pci_txdone(ptr noundef %add.ptr, i32 noundef 1)
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
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %6 = and i32 %5, -939524097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %6) #13, !srcloc !100
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_tbtt_tasklet(ptr noundef %t) #2 align 64 {
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
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %6) #13, !srcloc !100
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_rxdone_tasklet(ptr noundef %t) #2 align 64 {
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
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %6 = and i32 %5, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %6) #13, !srcloc !100
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock.i) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else.if.end3_crit_edge, %if.then.i, %if.then.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500pci_probe_hw(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rt2500pci_validate_eeprom(ptr noundef %rt2x00dev)
  %eeprom.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %0 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %1, i32 16
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #13
  %conv2.i = zext i16 %4 to i32
  %5 = lshr i16 %4, 11
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %6 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #13, !srcloc !97
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %conv31.i = trunc i32 %9 to i16
  %chip.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17
  %10 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 9568, ptr %chip.i.i, align 8
  %rf3.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %5, ptr %rf3.i.i, align 2
  %rev5.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %rev5.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv31.i, ptr %rev5.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %13 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  %conv10.i.i = zext i16 %5 to i32
  %conv13.i.i = and i32 %9, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 9568, i32 noundef %conv10.i.i, i32 noundef %conv13.i.i) #16
  %17 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rf3.i.i, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %18, label %do.body42.i [
    i16 0, label %entry.if.end50.i_crit_edge
    i16 1, label %entry.if.end50.i_crit_edge57
    i16 2, label %entry.if.end50.i_crit_edge58
    i16 3, label %entry.if.end50.i_crit_edge59
    i16 4, label %entry.if.end50.i_crit_edge60
    i16 16, label %entry.if.end50.i_crit_edge61
  ]

entry.if.end50.i_crit_edge61:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

entry.if.end50.i_crit_edge60:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

entry.if.end50.i_crit_edge59:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

entry.if.end50.i_crit_edge58:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

entry.if.end50.i_crit_edge57:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

entry.if.end50.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

do.body42.i:                                      ; preds = %entry
  %call43.i = tail call i32 @___ratelimit(ptr noundef nonnull @rt2500pci_init_eeprom._rs, ptr noundef nonnull @__func__.rt2500pci_init_eeprom) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool.not.i, label %do.body42.i.cleanup_crit_edge, label %do.end47.i

do.body42.i.cleanup_crit_edge:                    ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end47.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rt2500pci_init_eeprom) #16
  br label %cleanup

if.end50.i:                                       ; preds = %entry.if.end50.i_crit_edge, %entry.if.end50.i_crit_edge57, %entry.if.end50.i_crit_edge58, %entry.if.end50.i_crit_edge59, %entry.if.end50.i_crit_edge60, %entry.if.end50.i_crit_edge61
  %and64.i = lshr i32 %conv2.i, 2
  %24 = and i32 %and64.i, 3
  %default_ant.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19
  %tx.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19, i32 1
  %25 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tx.i, align 4
  %and85.i = lshr i32 %conv2.i, 4
  %26 = and i32 %and85.i, 3
  %27 = ptrtoint ptr %default_ant.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %default_ant.i, align 8
  %and107.i = lshr i16 %4, 6
  %led_radio.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9
  %28 = ptrtoint ptr %led_radio.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rt2x00dev, ptr %led_radio.i, align 4
  %type2.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %type2.i.i, align 4
  %brightness_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 5
  %30 = ptrtoint ptr %brightness_set.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @rt2500pci_brightness_set, ptr %brightness_set.i.i, align 4
  %blink_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 8
  %31 = ptrtoint ptr %blink_set.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @rt2500pci_blink_set, ptr %blink_set.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %flags.i.i, align 4
  %trunc.i = trunc i16 %and107.i to i3
  %33 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.20)
  switch i3 %trunc.i, label %if.end50.i.if.end127.i_crit_edge [
    i3 1, label %if.end50.i.if.then126.i_crit_edge
    i3 0, label %if.end50.i.if.then126.i_crit_edge62
    i3 3, label %if.end50.i.if.then126.i_crit_edge63
  ]

if.end50.i.if.then126.i_crit_edge63:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126.i

if.end50.i.if.then126.i_crit_edge62:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126.i

if.end50.i.if.then126.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126.i

if.end50.i.if.end127.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i

if.then126.i:                                     ; preds = %if.end50.i.if.then126.i_crit_edge, %if.end50.i.if.then126.i_crit_edge62, %if.end50.i.if.then126.i_crit_edge63
  %led_qual.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11
  %34 = ptrtoint ptr %led_qual.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rt2x00dev, ptr %led_qual.i, align 4
  %type2.i246.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %type2.i246.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %type2.i246.i, align 4
  %brightness_set.i247.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %36 = ptrtoint ptr %brightness_set.i247.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @rt2500pci_brightness_set, ptr %brightness_set.i247.i, align 4
  %blink_set.i248.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 8
  %37 = ptrtoint ptr %blink_set.i248.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @rt2500pci_blink_set, ptr %blink_set.i248.i, align 4
  %flags.i249.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %38 = ptrtoint ptr %flags.i249.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %flags.i249.i, align 4
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then126.i, %if.end50.i.if.end127.i_crit_edge
  %39 = and i32 %conv2.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool149.not.i = icmp eq i32 %39, 0
  br i1 %tobool149.not.i, label %if.end127.i.if.end152.i_crit_edge, label %if.then150.i

if.end127.i.if.end152.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i

if.then150.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %40 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cap_flags.i, align 4
  %or.i234.i = or i32 %41, 6144
  store i32 %or.i234.i, ptr %cap_flags.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then150.i, %if.end127.i.if.end152.i_crit_edge
  %42 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i251.i = getelementptr i16, ptr %43, i32 17
  %44 = ptrtoint ptr %arrayidx.i251.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i251.i, align 2
  %46 = and i16 %45, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool175.not.i = icmp eq i16 %46, 0
  br i1 %tobool175.not.i, label %if.then176.i, label %if.end152.i.if.end5_crit_edge

if.end152.i.if.end5_crit_edge:                    ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then176.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags177.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %47 = ptrtoint ptr %cap_flags177.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cap_flags177.i, align 4
  %or.i235.i = or i32 %48, 262144
  store i32 %or.i235.i, ptr %cap_flags177.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then176.i, %if.end152.i.if.end5_crit_edge
  %arrayidx.i253.i = getelementptr i16, ptr %43, i32 62
  %49 = ptrtoint ptr %arrayidx.i253.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i253.i, align 2
  %51 = lshr i16 %50, 8
  %conv201.i = trunc i16 %51 to i8
  %rssi_offset.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 37
  %52 = ptrtoint ptr %rssi_offset.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv201.i, ptr %rssi_offset.i, align 2
  %53 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 288
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %56 = or i32 %55, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %58, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %56) #13, !srcloc !100
  %spec1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18
  %59 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw.i.i, align 4
  %flags.i.i46 = getelementptr inbounds %struct.ieee80211_hw, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %flags.i.i46 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i.i46, align 4
  %or.i.i.i = or i32 %62, 512
  store i32 %or.i.i.i, ptr %flags.i.i46, align 4
  %63 = load ptr, ptr %hw.i.i, align 4
  %flags.i120.i = getelementptr inbounds %struct.ieee80211_hw, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %flags.i120.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i120.i, align 4
  %or.i.i121.i = or i32 %65, 256
  store i32 %or.i.i121.i, ptr %flags.i120.i, align 4
  %66 = load ptr, ptr %hw.i.i, align 4
  %flags.i122.i = getelementptr inbounds %struct.ieee80211_hw, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %flags.i122.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i122.i, align 4
  %or.i.i123.i = or i32 %68, 4
  store i32 %or.i.i123.i, ptr %flags.i122.i, align 4
  %69 = load ptr, ptr %hw.i.i, align 4
  %flags.i124.i = getelementptr inbounds %struct.ieee80211_hw, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %flags.i124.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i124.i, align 4
  %or.i.i125.i = or i32 %71, 16
  store i32 %or.i.i125.i, ptr %flags.i124.i, align 4
  %72 = load ptr, ptr %hw.i.i, align 4
  %73 = ptrtoint ptr %rt2x00dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rt2x00dev, align 8
  %wiphy.i.i47 = getelementptr inbounds %struct.ieee80211_hw, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %wiphy.i.i47 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wiphy.i.i47, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %76, i32 0, i32 56, i32 1
  %77 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %parent.i.i.i, align 8
  %78 = load ptr, ptr %hw.i.i, align 4
  %79 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i.i49 = getelementptr i16, ptr %80, i32 2
  %wiphy.i126.i = getelementptr inbounds %struct.ieee80211_hw, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %wiphy.i126.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wiphy.i126.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %82, i32 0, i32 1
  %83 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %arrayidx.i.i49, i32 6)
  %84 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i50 = getelementptr inbounds %struct.ieee80211_hw, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %wiphy.i50 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wiphy.i50, align 8
  %flags.i = getelementptr inbounds %struct.wiphy, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %88, -17
  store i32 %and.i, ptr %flags.i, align 32
  %89 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %spec1.i, align 4
  %supported_rates.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 1
  %90 = ptrtoint ptr %supported_rates.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %supported_rates.i, align 4
  %91 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %rf3.i.i, align 2
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %92, label %if.end5.if.end38.i_crit_edge [
    i16 0, label %if.end5.if.end38.sink.split.i_crit_edge
    i16 1, label %if.then10.i
    i16 2, label %if.then15.i
    i16 3, label %if.then20.i
    i16 4, label %if.then25.i
    i16 16, label %if.then30.i
  ]

if.end5.if.end38.sink.split.i_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.sink.split.i

if.end5.if.end38.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then10.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.sink.split.i

if.then15.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.sink.split.i

if.then20.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.sink.split.i

if.then25.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.sink.split.i

if.then30.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 3, ptr %spec1.i, align 4
  br label %if.end38.sink.split.i

if.end38.sink.split.i:                            ; preds = %if.then30.i, %if.then25.i, %if.then20.i, %if.then15.i, %if.then10.i, %if.end5.if.end38.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 14, %if.then10.i ], [ 14, %if.then20.i ], [ 37, %if.then30.i ], [ 14, %if.then25.i ], [ 14, %if.then15.i ], [ 14, %if.end5.if.end38.sink.split.i_crit_edge ]
  %rf_vals_bg_2523.sink.i = phi ptr [ @rf_vals_bg_2523, %if.then10.i ], [ @rf_vals_bg_2525, %if.then20.i ], [ @rf_vals_5222, %if.then30.i ], [ @rf_vals_bg_2525e, %if.then25.i ], [ @rf_vals_bg_2524, %if.then15.i ], [ @rf_vals_bg_2522, %if.end5.if.end38.sink.split.i_crit_edge ]
  %num_channels11.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 2
  %95 = ptrtoint ptr %num_channels11.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.sink.i, ptr %num_channels11.i, align 4
  %channels12.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 3
  %96 = ptrtoint ptr %channels12.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %rf_vals_bg_2523.sink.i, ptr %channels12.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end38.sink.split.i, %if.end5.if.end38.i_crit_edge
  %num_channels39.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 2
  %97 = ptrtoint ptr %num_channels39.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_channels39.i, align 4
  %99 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 12) #13
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %if.end38.i.cleanup_crit_edge, label %if.end7.i.i.i, !prof !101

if.end38.i.cleanup_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end38.i
  %101 = extractvalue { i32, i1 } %99, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %101, i32 noundef 3520) #17
  %tobool.not.i51 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i51, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end42.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end42.i:                                       ; preds = %if.end7.i.i.i
  %channels_info.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 4
  %102 = ptrtoint ptr %channels_info.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call8.i.i.i, ptr %channels_info.i, align 4
  %103 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i138.i = getelementptr i16, ptr %104, i32 35
  %max_power.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 31, ptr %max_power.i, align 4
  %106 = ptrtoint ptr %arrayidx.i138.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i138.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %107)
  %cmp45.i = icmp ugt i8 %107, 31
  %narrow.i = select i1 %cmp45.i, i8 24, i8 %107
  %spec.select.i = zext i8 %narrow.i to i16
  %default_power1.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %default_power1.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %spec.select.i, ptr %default_power1.i, align 2
  %max_power.1.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 1, i32 1
  %109 = ptrtoint ptr %max_power.1.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 31, ptr %max_power.1.i, align 16
  %arrayidx44.1.i = getelementptr i8, ptr %arrayidx.i138.i, i32 1
  %110 = ptrtoint ptr %arrayidx44.1.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx44.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %111)
  %cmp45.1.i = icmp ugt i8 %111, 31
  %narrow.1.i = select i1 %cmp45.1.i, i8 24, i8 %111
  %spec.select.1.i = zext i8 %narrow.1.i to i16
  %default_power1.1.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 1, i32 2
  %112 = ptrtoint ptr %default_power1.1.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %spec.select.1.i, ptr %default_power1.1.i, align 2
  %max_power.2.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 2, i32 1
  %113 = ptrtoint ptr %max_power.2.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 31, ptr %max_power.2.i, align 4
  %arrayidx44.2.i = getelementptr i16, ptr %104, i32 36
  %114 = ptrtoint ptr %arrayidx44.2.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx44.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %115)
  %cmp45.2.i = icmp ugt i8 %115, 31
  %narrow.2.i = select i1 %cmp45.2.i, i8 24, i8 %115
  %spec.select.2.i = zext i8 %narrow.2.i to i16
  %default_power1.2.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 2, i32 2
  %116 = ptrtoint ptr %default_power1.2.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %spec.select.2.i, ptr %default_power1.2.i, align 2
  %max_power.3.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 3, i32 1
  %117 = ptrtoint ptr %max_power.3.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 31, ptr %max_power.3.i, align 8
  %arrayidx44.3.i = getelementptr i8, ptr %arrayidx.i138.i, i32 3
  %118 = ptrtoint ptr %arrayidx44.3.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx44.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %119)
  %cmp45.3.i = icmp ugt i8 %119, 31
  %narrow.3.i = select i1 %cmp45.3.i, i8 24, i8 %119
  %spec.select.3.i = zext i8 %narrow.3.i to i16
  %default_power1.3.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 3, i32 2
  %120 = ptrtoint ptr %default_power1.3.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %spec.select.3.i, ptr %default_power1.3.i, align 2
  %max_power.4.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 4, i32 1
  %121 = ptrtoint ptr %max_power.4.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 31, ptr %max_power.4.i, align 4
  %arrayidx44.4.i = getelementptr i16, ptr %104, i32 37
  %122 = ptrtoint ptr %arrayidx44.4.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx44.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %123)
  %cmp45.4.i = icmp ugt i8 %123, 31
  %narrow.4.i = select i1 %cmp45.4.i, i8 24, i8 %123
  %spec.select.4.i = zext i8 %narrow.4.i to i16
  %default_power1.4.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 4, i32 2
  %124 = ptrtoint ptr %default_power1.4.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %spec.select.4.i, ptr %default_power1.4.i, align 2
  %max_power.5.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 5, i32 1
  %125 = ptrtoint ptr %max_power.5.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 31, ptr %max_power.5.i, align 64
  %arrayidx44.5.i = getelementptr i8, ptr %arrayidx.i138.i, i32 5
  %126 = ptrtoint ptr %arrayidx44.5.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx44.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %127)
  %cmp45.5.i = icmp ugt i8 %127, 31
  %narrow.5.i = select i1 %cmp45.5.i, i8 24, i8 %127
  %spec.select.5.i = zext i8 %narrow.5.i to i16
  %default_power1.5.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 5, i32 2
  %128 = ptrtoint ptr %default_power1.5.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %spec.select.5.i, ptr %default_power1.5.i, align 2
  %max_power.6.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 6, i32 1
  %129 = ptrtoint ptr %max_power.6.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 31, ptr %max_power.6.i, align 4
  %arrayidx44.6.i = getelementptr i16, ptr %104, i32 38
  %130 = ptrtoint ptr %arrayidx44.6.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx44.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %131)
  %cmp45.6.i = icmp ugt i8 %131, 31
  %narrow.6.i = select i1 %cmp45.6.i, i8 24, i8 %131
  %spec.select.6.i = zext i8 %narrow.6.i to i16
  %default_power1.6.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 6, i32 2
  %132 = ptrtoint ptr %default_power1.6.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %spec.select.6.i, ptr %default_power1.6.i, align 2
  %max_power.7.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 7, i32 1
  %133 = ptrtoint ptr %max_power.7.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 31, ptr %max_power.7.i, align 8
  %arrayidx44.7.i = getelementptr i8, ptr %arrayidx.i138.i, i32 7
  %134 = ptrtoint ptr %arrayidx44.7.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx44.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %135)
  %cmp45.7.i = icmp ugt i8 %135, 31
  %narrow.7.i = select i1 %cmp45.7.i, i8 24, i8 %135
  %spec.select.7.i = zext i8 %narrow.7.i to i16
  %default_power1.7.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 7, i32 2
  %136 = ptrtoint ptr %default_power1.7.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %spec.select.7.i, ptr %default_power1.7.i, align 2
  %max_power.8.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 8, i32 1
  %137 = ptrtoint ptr %max_power.8.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 31, ptr %max_power.8.i, align 4
  %arrayidx44.8.i = getelementptr i16, ptr %104, i32 39
  %138 = ptrtoint ptr %arrayidx44.8.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx44.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %139)
  %cmp45.8.i = icmp ugt i8 %139, 31
  %narrow.8.i = select i1 %cmp45.8.i, i8 24, i8 %139
  %spec.select.8.i = zext i8 %narrow.8.i to i16
  %default_power1.8.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 8, i32 2
  %140 = ptrtoint ptr %default_power1.8.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %spec.select.8.i, ptr %default_power1.8.i, align 2
  %max_power.9.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 9, i32 1
  %141 = ptrtoint ptr %max_power.9.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 31, ptr %max_power.9.i, align 16
  %arrayidx44.9.i = getelementptr i8, ptr %arrayidx.i138.i, i32 9
  %142 = ptrtoint ptr %arrayidx44.9.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx44.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %143)
  %cmp45.9.i = icmp ugt i8 %143, 31
  %narrow.9.i = select i1 %cmp45.9.i, i8 24, i8 %143
  %spec.select.9.i = zext i8 %narrow.9.i to i16
  %default_power1.9.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 9, i32 2
  %144 = ptrtoint ptr %default_power1.9.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %spec.select.9.i, ptr %default_power1.9.i, align 2
  %max_power.10.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 10, i32 1
  %145 = ptrtoint ptr %max_power.10.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 31, ptr %max_power.10.i, align 4
  %arrayidx44.10.i = getelementptr i16, ptr %104, i32 40
  %146 = ptrtoint ptr %arrayidx44.10.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx44.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %147)
  %cmp45.10.i = icmp ugt i8 %147, 31
  %narrow.10.i = select i1 %cmp45.10.i, i8 24, i8 %147
  %spec.select.10.i = zext i8 %narrow.10.i to i16
  %default_power1.10.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 10, i32 2
  %148 = ptrtoint ptr %default_power1.10.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %spec.select.10.i, ptr %default_power1.10.i, align 2
  %max_power.11.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 11, i32 1
  %149 = ptrtoint ptr %max_power.11.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 31, ptr %max_power.11.i, align 8
  %arrayidx44.11.i = getelementptr i8, ptr %arrayidx.i138.i, i32 11
  %150 = ptrtoint ptr %arrayidx44.11.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx44.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %151)
  %cmp45.11.i = icmp ugt i8 %151, 31
  %narrow.11.i = select i1 %cmp45.11.i, i8 24, i8 %151
  %spec.select.11.i = zext i8 %narrow.11.i to i16
  %default_power1.11.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 11, i32 2
  %152 = ptrtoint ptr %default_power1.11.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %spec.select.11.i, ptr %default_power1.11.i, align 2
  %max_power.12.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 12, i32 1
  %153 = ptrtoint ptr %max_power.12.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 31, ptr %max_power.12.i, align 4
  %arrayidx44.12.i = getelementptr i16, ptr %104, i32 41
  %154 = ptrtoint ptr %arrayidx44.12.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx44.12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %155)
  %cmp45.12.i = icmp ugt i8 %155, 31
  %narrow.12.i = select i1 %cmp45.12.i, i8 24, i8 %155
  %spec.select.12.i = zext i8 %narrow.12.i to i16
  %default_power1.12.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 12, i32 2
  %156 = ptrtoint ptr %default_power1.12.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %spec.select.12.i, ptr %default_power1.12.i, align 2
  %max_power.13.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 13, i32 1
  %157 = ptrtoint ptr %max_power.13.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 31, ptr %max_power.13.i, align 32
  %arrayidx44.13.i = getelementptr i8, ptr %arrayidx.i138.i, i32 13
  %158 = ptrtoint ptr %arrayidx44.13.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx44.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %159)
  %cmp45.13.i = icmp ugt i8 %159, 31
  %narrow.13.i = select i1 %cmp45.13.i, i8 24, i8 %159
  %spec.select.13.i = zext i8 %narrow.13.i to i16
  %default_power1.13.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 13, i32 2
  %160 = ptrtoint ptr %default_power1.13.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %spec.select.13.i, ptr %default_power1.13.i, align 2
  %161 = ptrtoint ptr %num_channels39.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %num_channels39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %162)
  %cmp52.i = icmp ugt i32 %162, 14
  br i1 %cmp52.i, label %for.body59.i.preheader, label %if.end42.i.if.end23_crit_edge

if.end42.i.if.end23_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.body59.i.preheader:                           ; preds = %if.end42.i
  %163 = ptrtoint ptr %num_channels39.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_channels39.i, align 4
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.body59.i.for.body59.i_crit_edge, %for.body59.i.preheader
  %i.1147.i = phi i32 [ %inc65.i, %for.body59.i.for.body59.i_crit_edge ], [ 14, %for.body59.i.preheader ]
  %max_power61.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 %i.1147.i, i32 1
  %165 = ptrtoint ptr %max_power61.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 31, ptr %max_power61.i, align 4
  %default_power163.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 %i.1147.i, i32 2
  %166 = ptrtoint ptr %default_power163.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 24, ptr %default_power163.i, align 2
  %inc65.i = add nuw i32 %i.1147.i, 1
  %cmp57.i = icmp ult i32 %inc65.i, %164
  br i1 %cmp57.i, label %for.body59.i.for.body59.i_crit_edge, label %for.body59.i.if.end23_crit_edge

for.body59.i.if.end23_crit_edge:                  ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.body59.i.for.body59.i_crit_edge:              ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body59.i

if.end23:                                         ; preds = %for.body59.i.if.end23_crit_edge, %if.end42.i.if.end23_crit_edge
  %cap_flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %167 = ptrtoint ptr %cap_flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cap_flags, align 4
  %or.i43 = or i32 %168, 268
  store i32 %or.i43, ptr %cap_flags, align 4
  %169 = ptrtoint ptr %rssi_offset.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 121, ptr %rssi_offset.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end7.i.i.i.cleanup_crit_edge, %if.end38.i.cleanup_crit_edge, %do.end47.i, %do.body42.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %if.end38.i.cleanup_crit_edge ], [ -19, %do.end47.i ], [ -19, %do.body42.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mmio_initialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mmio_uninitialize(ptr noundef) #0

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt2500pci_get_entry_state(ptr nocapture noundef readonly %entry1) #3 align 64 {
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
define internal void @rt2500pci_clear_entry(ptr nocapture noundef readonly %entry1) #4 align 64 {
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
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 1
  %skb_dma = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skb_dma, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx.i.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = or i32 %17, 16777216
  store i32 %18, ptr %15, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = and i32 %22, -50331649
  store i32 %23, ptr %20, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500pci_set_device_state(ptr noundef %rt2x00dev, i32 noundef %state) #2 align 64 {
entry:
  %reg.i349.i.i = alloca i32, align 4
  %reg.i340.i.i = alloca i32, align 4
  %reg.i331.i.i = alloca i32, align 4
  %reg.i322.i.i = alloca i32, align 4
  %reg.i313.i.i = alloca i32, align 4
  %reg.i304.i.i = alloca i32, align 4
  %reg.i295.i.i = alloca i32, align 4
  %reg.i286.i.i = alloca i32, align 4
  %reg.i277.i.i = alloca i32, align 4
  %reg.i268.i.i = alloca i32, align 4
  %reg.i259.i.i = alloca i32, align 4
  %reg.i250.i.i = alloca i32, align 4
  %reg.i241.i.i = alloca i32, align 4
  %reg.i232.i.i = alloca i32, align 4
  %reg.i223.i.i = alloca i32, align 4
  %reg.i214.i.i = alloca i32, align 4
  %reg.i205.i.i = alloca i32, align 4
  %reg.i196.i.i = alloca i32, align 4
  %reg.i187.i.i = alloca i32, align 4
  %reg.i178.i.i = alloca i32, align 4
  %reg.i169.i.i = alloca i32, align 4
  %reg.i160.i.i = alloca i32, align 4
  %reg.i151.i.i = alloca i32, align 4
  %reg.i142.i.i = alloca i32, align 4
  %reg.i133.i.i = alloca i32, align 4
  %reg.i124.i.i = alloca i32, align 4
  %reg.i115.i.i = alloca i32, align 4
  %reg.i106.i.i = alloca i32, align 4
  %reg.i97.i.i = alloca i32, align 4
  %reg.i88.i.i = alloca i32, align 4
  %reg.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
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
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %or108.i.i) #13
  %17 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %18, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %16) #13, !srcloc !100
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
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %desc_dma.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %desc_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %desc_dma.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  %31 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %32, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %30) #13, !srcloc !100
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
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %desc_dma160.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %desc_dma160.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %desc_dma160.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #13
  %45 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %46, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %44) #13, !srcloc !100
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
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %desc_dma194.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %52, i32 0, i32 1
  %56 = ptrtoint ptr %desc_dma194.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %desc_dma194.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #13
  %59 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %60, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %58) #13, !srcloc !100
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
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %desc_dma227.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %desc_dma227.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %desc_dma227.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #13
  %73 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %74, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %72) #13, !srcloc !100
  %75 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %76, i32 132
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %86 = tail call i32 @llvm.bswap.i32(i32 %or304.i.i) #13
  %87 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %88, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %86) #13, !srcloc !100
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
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %desc_dma323.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %94, i32 0, i32 1
  %98 = ptrtoint ptr %desc_dma323.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %desc_dma323.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #13
  %101 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %102, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %100) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %103 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %104, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 33554944) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %105 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1744.i.i = getelementptr i8, ptr %106, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1744.i.i, i32 33554432) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %107 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1746.i.i = getelementptr i8, ptr %108, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1746.i.i, i32 33554944) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %109 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1748.i.i = getelementptr i8, ptr %110, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1748.i.i, i32 33554432) #13, !srcloc !100
  %111 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1750.i.i = getelementptr i8, ptr %112, i32 220
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1750.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %114 = and i32 %113, 63743
  %115 = or i32 %114, 557776896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %116 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1752.i.i = getelementptr i8, ptr %117, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1752.i.i, i32 %115) #13, !srcloc !100
  %118 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1754.i.i = getelementptr i8, ptr %119, i32 36
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1754.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %128 = tail call i32 @llvm.bswap.i32(i32 %or94.i.i) #13
  %129 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1756.i.i = getelementptr i8, ptr %130, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1756.i.i, i32 %128) #13, !srcloc !100
  %131 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1758.i.i = getelementptr i8, ptr %132, i32 44
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1758.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %134 = and i32 %133, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %135 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1760.i.i = getelementptr i8, ptr %136, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1760.i.i, i32 %134) #13, !srcloc !100
  %137 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1762.i.i = getelementptr i8, ptr %138, i32 56
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1762.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %and316.i.i = and i32 %139, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %140 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1764.i.i = getelementptr i8, ptr %141, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1764.i.i, i32 %and316.i.i) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %142 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1766.i.i = getelementptr i8, ptr %143, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1766.i.i, i32 0) #13, !srcloc !100
  %144 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1768.i.i = getelementptr i8, ptr %145, i32 152
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1768.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %147 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1770.i.i = getelementptr i8, ptr %148, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1770.i.i, i32 -1970565748) #13, !srcloc !100
  %149 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1772.i.i = getelementptr i8, ptr %150, i32 332
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1772.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %152 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1774.i.i = getelementptr i8, ptr %153, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1774.i.i, i32 169097328) #13, !srcloc !100
  %154 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1776.i.i = getelementptr i8, ptr %155, i32 336
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1776.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %157 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1778.i.i = getelementptr i8, ptr %158, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1778.i.i, i32 757408029) #13, !srcloc !100
  %159 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1780.i.i = getelementptr i8, ptr %160, i32 340
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1780.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %162 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1782.i.i = getelementptr i8, ptr %163, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1782.i.i, i32 488184089) #13, !srcloc !100
  %164 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1784.i.i = getelementptr i8, ptr %165, i32 144
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1784.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %167 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1786.i.i = getelementptr i8, ptr %168, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1786.i.i, i32 -1347179853) #13, !srcloc !100
  %169 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1788.i.i = getelementptr i8, ptr %170, i32 140
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1788.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %172 = and i32 %171, 16580607
  %173 = or i32 %172, -1207762944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %174 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1790.i.i = getelementptr i8, ptr %175, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1790.i.i, i32 %173) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %176 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1792.i.i = getelementptr i8, ptr %177, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1792.i.i, i32 3226431) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %178 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1794.i.i = getelementptr i8, ptr %179, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1794.i.i, i32 16711680) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %180 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1796.i.i = getelementptr i8, ptr %181, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1796.i.i, i32 -268435456) #13, !srcloc !100
  %ops.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %182 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops.i.i, align 4
  %lib.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %183, i32 0, i32 7
  %184 = ptrtoint ptr %lib.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %lib.i.i, align 4
  %set_device_state.i.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %185, i32 0, i32 14
  %186 = ptrtoint ptr %set_device_state.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %set_device_state.i.i, align 4
  %call1247.i.i = tail call i32 %187(ptr noundef %rt2x00dev, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1247.i.i)
  %tobool.not.i.i = icmp eq i32 %call1247.i.i, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.rhs.i:                                        ; preds = %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %188 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1798.i.i = getelementptr i8, ptr %189, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1798.i.i, i32 590487808) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %190 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1800.i.i = getelementptr i8, ptr %191, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1800.i.i, i32 408232704) #13, !srcloc !100
  %192 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1802.i.i = getelementptr i8, ptr %193, i32 308
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1802.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %195 = and i32 %194, 16777215
  %196 = or i32 %195, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %197 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1804.i.i = getelementptr i8, ptr %198, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1804.i.i, i32 %196) #13, !srcloc !100
  %199 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1806.i.i = getelementptr i8, ptr %200, i32 232
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1806.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %202 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1808.i.i = getelementptr i8, ptr %203, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1808.i.i, i32 295305370) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %204 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1810.i.i = getelementptr i8, ptr %205, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1810.i.i, i32 8525954) #13, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %206 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1812.i.i = getelementptr i8, ptr %207, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1812.i.i, i32 536870912) #13, !srcloc !100
  %208 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1814.i.i = getelementptr i8, ptr %209, i32 4
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1814.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %211 = and i32 %210, -117440513
  %212 = or i32 %211, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %213 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1816.i.i = getelementptr i8, ptr %214, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1816.i.i, i32 %212) #13, !srcloc !100
  %215 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1818.i.i = getelementptr i8, ptr %216, i32 4
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1818.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %218 = and i32 %217, -83886081
  %219 = or i32 %218, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %220 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1820.i.i = getelementptr i8, ptr %221, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1820.i.i, i32 %219) #13, !srcloc !100
  %222 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1822.i.i = getelementptr i8, ptr %223, i32 160
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1822.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %225 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1824.i.i = getelementptr i8, ptr %226, i32 188
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1824.i.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %lor.rhs.i
  %i.016.i.i.i = phi i32 [ 0, %lor.rhs.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i.i = tail call zeroext i8 @rt2500pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 0) #13
  %228 = zext i8 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %228, ptr @__sancov_gen_cov_switch_values.23)
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
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %229(i32 noundef 21474800) #13
  %inc.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 100
  br i1 %exitcond.not.i.i.i, label %do.body.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  %call6.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @rt2500pci_wait_bbp_ready._rs, ptr noundef nonnull @__func__.rt2500pci_wait_bbp_ready) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.do.body_crit_edge, label %do.end.i.i.i

do.body.i.i.i.do.body_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %230 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hw.i.i.i, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %wiphy.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.wiphy, ptr %233, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rt2500pci_wait_bbp_ready) #16
  br label %do.body

if.end.i12.i:                                     ; preds = %for.body.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  %234 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 -1, ptr %reg.i.i.i, align 4, !annotation !102
  %csr_mutex.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i85.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i.i)
  %tobool.not.i86.i.i = icmp eq i32 %call.i85.i.i, 0
  br i1 %tobool.not.i86.i.i, label %if.end.i12.i.rt2500pci_bbp_write.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i12.i.rt2500pci_bbp_write.exit.i.i_crit_edge: ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  %235 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 99074, ptr %reg.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %236 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %237, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 42139904) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit.i.i

rt2500pci_bbp_write.exit.i.i:                     ; preds = %if.then.i.i.i, %if.end.i12.i.rt2500pci_bbp_write.exit.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i88.i.i) #13
  %238 = ptrtoint ptr %reg.i88.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 -1, ptr %reg.i88.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i90.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i88.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i.i)
  %tobool.not.i91.i.i = icmp eq i32 %call.i90.i.i, 0
  br i1 %tobool.not.i91.i.i, label %rt2500pci_bbp_write.exit.i.i.rt2500pci_bbp_write.exit96.i.i_crit_edge, label %if.then.i94.i.i

rt2500pci_bbp_write.exit.i.i.rt2500pci_bbp_write.exit96.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit96.i.i

if.then.i94.i.i:                                  ; preds = %rt2500pci_bbp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %239 = ptrtoint ptr %reg.i88.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 99353, ptr %reg.i88.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %240 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i93.i.i = getelementptr i8, ptr %241, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93.i.i, i32 428081408) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit96.i.i

rt2500pci_bbp_write.exit96.i.i:                   ; preds = %if.then.i94.i.i, %rt2500pci_bbp_write.exit.i.i.rt2500pci_bbp_write.exit96.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i88.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i97.i.i) #13
  %242 = ptrtoint ptr %reg.i97.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 -1, ptr %reg.i97.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i99.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i97.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i.i)
  %tobool.not.i100.i.i = icmp eq i32 %call.i99.i.i, 0
  br i1 %tobool.not.i100.i.i, label %rt2500pci_bbp_write.exit96.i.i.rt2500pci_bbp_write.exit105.i.i_crit_edge, label %if.then.i103.i.i

rt2500pci_bbp_write.exit96.i.i.rt2500pci_bbp_write.exit105.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit105.i.i

if.then.i103.i.i:                                 ; preds = %rt2500pci_bbp_write.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %243 = ptrtoint ptr %reg.i97.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 101916, ptr %reg.i97.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %244 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i102.i.i = getelementptr i8, ptr %245, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i102.i.i, i32 479068416) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit105.i.i

rt2500pci_bbp_write.exit105.i.i:                  ; preds = %if.then.i103.i.i, %rt2500pci_bbp_write.exit96.i.i.rt2500pci_bbp_write.exit105.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i97.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i106.i.i) #13
  %246 = ptrtoint ptr %reg.i106.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 -1, ptr %reg.i106.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i108.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i106.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i.i)
  %tobool.not.i109.i.i = icmp eq i32 %call.i108.i.i, 0
  br i1 %tobool.not.i109.i.i, label %rt2500pci_bbp_write.exit105.i.i.rt2500pci_bbp_write.exit114.i.i_crit_edge, label %if.then.i112.i.i

rt2500pci_bbp_write.exit105.i.i.rt2500pci_bbp_write.exit114.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit105.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit114.i.i

if.then.i112.i.i:                                 ; preds = %rt2500pci_bbp_write.exit105.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %247 = ptrtoint ptr %reg.i106.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 102192, ptr %reg.i106.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %248 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i111.i.i = getelementptr i8, ptr %249, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i111.i.i, i32 814678272) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit114.i.i

rt2500pci_bbp_write.exit114.i.i:                  ; preds = %if.then.i112.i.i, %rt2500pci_bbp_write.exit105.i.i.rt2500pci_bbp_write.exit114.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i106.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i115.i.i) #13
  %250 = ptrtoint ptr %reg.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 -1, ptr %reg.i115.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i117.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i115.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i.i)
  %tobool.not.i118.i.i = icmp eq i32 %call.i117.i.i, 0
  br i1 %tobool.not.i118.i.i, label %rt2500pci_bbp_write.exit114.i.i.rt2500pci_bbp_write.exit123.i.i_crit_edge, label %if.then.i121.i.i

rt2500pci_bbp_write.exit114.i.i.rt2500pci_bbp_write.exit123.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit123.i.i

if.then.i121.i.i:                                 ; preds = %rt2500pci_bbp_write.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %251 = ptrtoint ptr %reg.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 102572, ptr %reg.i115.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %252 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i120.i.i = getelementptr i8, ptr %253, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i120.i.i, i32 -1399848704) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit123.i.i

rt2500pci_bbp_write.exit123.i.i:                  ; preds = %if.then.i121.i.i, %rt2500pci_bbp_write.exit114.i.i.rt2500pci_bbp_write.exit123.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i115.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i124.i.i) #13
  %254 = ptrtoint ptr %reg.i124.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 -1, ptr %reg.i124.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i126.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i124.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126.i.i)
  %tobool.not.i127.i.i = icmp eq i32 %call.i126.i.i, 0
  br i1 %tobool.not.i127.i.i, label %rt2500pci_bbp_write.exit123.i.i.rt2500pci_bbp_write.exit132.i.i_crit_edge, label %if.then.i130.i.i

rt2500pci_bbp_write.exit123.i.i.rt2500pci_bbp_write.exit132.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit123.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit132.i.i

if.then.i130.i.i:                                 ; preds = %rt2500pci_bbp_write.exit123.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %255 = ptrtoint ptr %reg.i124.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 102936, ptr %reg.i124.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %256 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i129.i.i = getelementptr i8, ptr %257, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i129.i.i, i32 412221696) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit132.i.i

rt2500pci_bbp_write.exit132.i.i:                  ; preds = %if.then.i130.i.i, %rt2500pci_bbp_write.exit123.i.i.rt2500pci_bbp_write.exit132.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i124.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i133.i.i) #13
  %258 = ptrtoint ptr %reg.i133.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 -1, ptr %reg.i133.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i135.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i133.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i.i)
  %tobool.not.i136.i.i = icmp eq i32 %call.i135.i.i, 0
  br i1 %tobool.not.i136.i.i, label %rt2500pci_bbp_write.exit132.i.i.rt2500pci_bbp_write.exit141.i.i_crit_edge, label %if.then.i139.i.i

rt2500pci_bbp_write.exit132.i.i.rt2500pci_bbp_write.exit141.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit132.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit141.i.i

if.then.i139.i.i:                                 ; preds = %rt2500pci_bbp_write.exit132.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %259 = ptrtoint ptr %reg.i133.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 103423, ptr %reg.i133.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %260 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i138.i.i = getelementptr i8, ptr %261, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i138.i.i, i32 -7143168) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit141.i.i

rt2500pci_bbp_write.exit141.i.i:                  ; preds = %if.then.i139.i.i, %rt2500pci_bbp_write.exit132.i.i.rt2500pci_bbp_write.exit141.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i133.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i142.i.i) #13
  %262 = ptrtoint ptr %reg.i142.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 -1, ptr %reg.i142.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i144.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i142.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i.i)
  %tobool.not.i145.i.i = icmp eq i32 %call.i144.i.i, 0
  br i1 %tobool.not.i145.i.i, label %rt2500pci_bbp_write.exit141.i.i.rt2500pci_bbp_write.exit150.i.i_crit_edge, label %if.then.i148.i.i

rt2500pci_bbp_write.exit141.i.i.rt2500pci_bbp_write.exit150.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit141.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit150.i.i

if.then.i148.i.i:                                 ; preds = %rt2500pci_bbp_write.exit141.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %263 = ptrtoint ptr %reg.i142.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 103454, ptr %reg.i142.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %264 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i147.i.i = getelementptr i8, ptr %265, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147.i.i, i32 513016064) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit150.i.i

rt2500pci_bbp_write.exit150.i.i:                  ; preds = %if.then.i148.i.i, %rt2500pci_bbp_write.exit141.i.i.rt2500pci_bbp_write.exit150.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i142.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i151.i.i) #13
  %266 = ptrtoint ptr %reg.i151.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 -1, ptr %reg.i151.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i153.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i151.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i.i)
  %tobool.not.i154.i.i = icmp eq i32 %call.i153.i.i, 0
  br i1 %tobool.not.i154.i.i, label %rt2500pci_bbp_write.exit150.i.i.rt2500pci_bbp_write.exit159.i.i_crit_edge, label %if.then.i157.i.i

rt2500pci_bbp_write.exit150.i.i.rt2500pci_bbp_write.exit159.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit150.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit159.i.i

if.then.i157.i.i:                                 ; preds = %rt2500pci_bbp_write.exit150.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %267 = ptrtoint ptr %reg.i151.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 103688, ptr %reg.i151.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %268 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i156.i.i = getelementptr i8, ptr %269, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i156.i.i, i32 143982848) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit159.i.i

rt2500pci_bbp_write.exit159.i.i:                  ; preds = %if.then.i157.i.i, %rt2500pci_bbp_write.exit150.i.i.rt2500pci_bbp_write.exit159.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i151.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i160.i.i) #13
  %270 = ptrtoint ptr %reg.i160.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 -1, ptr %reg.i160.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i162.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i160.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i.i)
  %tobool.not.i163.i.i = icmp eq i32 %call.i162.i.i, 0
  br i1 %tobool.not.i163.i.i, label %rt2500pci_bbp_write.exit159.i.i.rt2500pci_bbp_write.exit168.i.i_crit_edge, label %if.then.i166.i.i

rt2500pci_bbp_write.exit159.i.i.rt2500pci_bbp_write.exit168.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit159.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit168.i.i

if.then.i166.i.i:                                 ; preds = %rt2500pci_bbp_write.exit159.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %271 = ptrtoint ptr %reg.i160.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 103944, ptr %reg.i160.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %272 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i165.i.i = getelementptr i8, ptr %273, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i165.i.i, i32 144048384) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit168.i.i

rt2500pci_bbp_write.exit168.i.i:                  ; preds = %if.then.i166.i.i, %rt2500pci_bbp_write.exit159.i.i.rt2500pci_bbp_write.exit168.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i160.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i169.i.i) #13
  %274 = ptrtoint ptr %reg.i169.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 -1, ptr %reg.i169.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i171.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i169.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.i.i)
  %tobool.not.i172.i.i = icmp eq i32 %call.i171.i.i, 0
  br i1 %tobool.not.i172.i.i, label %rt2500pci_bbp_write.exit168.i.i.rt2500pci_bbp_write.exit177.i.i_crit_edge, label %if.then.i175.i.i

rt2500pci_bbp_write.exit168.i.i.rt2500pci_bbp_write.exit177.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit168.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit177.i.i

if.then.i175.i.i:                                 ; preds = %rt2500pci_bbp_write.exit168.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %275 = ptrtoint ptr %reg.i169.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 104200, ptr %reg.i169.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %276 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i174.i.i = getelementptr i8, ptr %277, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i174.i.i, i32 144113920) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit177.i.i

rt2500pci_bbp_write.exit177.i.i:                  ; preds = %if.then.i175.i.i, %rt2500pci_bbp_write.exit168.i.i.rt2500pci_bbp_write.exit177.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i169.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i178.i.i) #13
  %278 = ptrtoint ptr %reg.i178.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 -1, ptr %reg.i178.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i180.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i178.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180.i.i)
  %tobool.not.i181.i.i = icmp eq i32 %call.i180.i.i, 0
  br i1 %tobool.not.i181.i.i, label %rt2500pci_bbp_write.exit177.i.i.rt2500pci_bbp_write.exit186.i.i_crit_edge, label %if.then.i184.i.i

rt2500pci_bbp_write.exit177.i.i.rt2500pci_bbp_write.exit186.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit177.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit186.i.i

if.then.i184.i.i:                                 ; preds = %rt2500pci_bbp_write.exit177.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %279 = ptrtoint ptr %reg.i178.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 104560, ptr %reg.i178.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %280 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i183.i.i = getelementptr i8, ptr %281, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i183.i.i, i32 1889009920) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit186.i.i

rt2500pci_bbp_write.exit186.i.i:                  ; preds = %if.then.i184.i.i, %rt2500pci_bbp_write.exit177.i.i.rt2500pci_bbp_write.exit186.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i178.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i187.i.i) #13
  %282 = ptrtoint ptr %reg.i187.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 -1, ptr %reg.i187.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i189.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i187.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189.i.i)
  %tobool.not.i190.i.i = icmp eq i32 %call.i189.i.i, 0
  br i1 %tobool.not.i190.i.i, label %rt2500pci_bbp_write.exit186.i.i.rt2500pci_bbp_write.exit195.i.i_crit_edge, label %if.then.i193.i.i

rt2500pci_bbp_write.exit186.i.i.rt2500pci_bbp_write.exit195.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit186.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit195.i.i

if.then.i193.i.i:                                 ; preds = %rt2500pci_bbp_write.exit186.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %283 = ptrtoint ptr %reg.i187.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 104768, ptr %reg.i187.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %284 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i192.i.i = getelementptr i8, ptr %285, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i192.i.i, i32 1083769088) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit195.i.i

rt2500pci_bbp_write.exit195.i.i:                  ; preds = %if.then.i193.i.i, %rt2500pci_bbp_write.exit186.i.i.rt2500pci_bbp_write.exit195.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i187.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i196.i.i) #13
  %286 = ptrtoint ptr %reg.i196.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 -1, ptr %reg.i196.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i198.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i196.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198.i.i)
  %tobool.not.i199.i.i = icmp eq i32 %call.i198.i.i, 0
  br i1 %tobool.not.i199.i.i, label %rt2500pci_bbp_write.exit195.i.i.rt2500pci_bbp_write.exit204.i.i_crit_edge, label %if.then.i202.i.i

rt2500pci_bbp_write.exit195.i.i.rt2500pci_bbp_write.exit204.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit204.i.i

if.then.i202.i.i:                                 ; preds = %rt2500pci_bbp_write.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %287 = ptrtoint ptr %reg.i196.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 104968, ptr %reg.i196.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %288 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i201.i.i = getelementptr i8, ptr %289, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i201.i.i, i32 144310528) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit204.i.i

rt2500pci_bbp_write.exit204.i.i:                  ; preds = %if.then.i202.i.i, %rt2500pci_bbp_write.exit195.i.i.rt2500pci_bbp_write.exit204.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i196.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i205.i.i) #13
  %290 = ptrtoint ptr %reg.i205.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 -1, ptr %reg.i205.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i207.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i205.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i.i)
  %tobool.not.i208.i.i = icmp eq i32 %call.i207.i.i, 0
  br i1 %tobool.not.i208.i.i, label %rt2500pci_bbp_write.exit204.i.i.rt2500pci_bbp_write.exit213.i.i_crit_edge, label %if.then.i211.i.i

rt2500pci_bbp_write.exit204.i.i.rt2500pci_bbp_write.exit213.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit204.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit213.i.i

if.then.i211.i.i:                                 ; preds = %rt2500pci_bbp_write.exit204.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %291 = ptrtoint ptr %reg.i205.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 105251, ptr %reg.i205.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %292 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i210.i.i = getelementptr i8, ptr %293, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i210.i.i, i32 597360896) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit213.i.i

rt2500pci_bbp_write.exit213.i.i:                  ; preds = %if.then.i211.i.i, %rt2500pci_bbp_write.exit204.i.i.rt2500pci_bbp_write.exit213.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i205.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i214.i.i) #13
  %294 = ptrtoint ptr %reg.i214.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 -1, ptr %reg.i214.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i216.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i214.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216.i.i)
  %tobool.not.i217.i.i = icmp eq i32 %call.i216.i.i, 0
  br i1 %tobool.not.i217.i.i, label %rt2500pci_bbp_write.exit213.i.i.rt2500pci_bbp_write.exit222.i.i_crit_edge, label %if.then.i220.i.i

rt2500pci_bbp_write.exit213.i.i.rt2500pci_bbp_write.exit222.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit213.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit222.i.i

if.then.i220.i.i:                                 ; preds = %rt2500pci_bbp_write.exit213.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %295 = ptrtoint ptr %reg.i214.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 106000, ptr %reg.i214.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %296 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i219.i.i = getelementptr i8, ptr %297, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i219.i.i, i32 278790400) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit222.i.i

rt2500pci_bbp_write.exit222.i.i:                  ; preds = %if.then.i220.i.i, %rt2500pci_bbp_write.exit213.i.i.rt2500pci_bbp_write.exit222.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i214.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i223.i.i) #13
  %298 = ptrtoint ptr %reg.i223.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 -1, ptr %reg.i223.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i225.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i223.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225.i.i)
  %tobool.not.i226.i.i = icmp eq i32 %call.i225.i.i, 0
  br i1 %tobool.not.i226.i.i, label %rt2500pci_bbp_write.exit222.i.i.rt2500pci_bbp_write.exit231.i.i_crit_edge, label %if.then.i229.i.i

rt2500pci_bbp_write.exit222.i.i.rt2500pci_bbp_write.exit231.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit231.i.i

if.then.i229.i.i:                                 ; preds = %rt2500pci_bbp_write.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %299 = ptrtoint ptr %reg.i223.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 106283, ptr %reg.i223.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %300 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i228.i.i = getelementptr i8, ptr %301, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i228.i.i, i32 731840768) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit231.i.i

rt2500pci_bbp_write.exit231.i.i:                  ; preds = %if.then.i229.i.i, %rt2500pci_bbp_write.exit222.i.i.rt2500pci_bbp_write.exit231.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i223.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i232.i.i) #13
  %302 = ptrtoint ptr %reg.i232.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 -1, ptr %reg.i232.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i234.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i232.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.i.i)
  %tobool.not.i235.i.i = icmp eq i32 %call.i234.i.i, 0
  br i1 %tobool.not.i235.i.i, label %rt2500pci_bbp_write.exit231.i.i.rt2500pci_bbp_write.exit240.i.i_crit_edge, label %if.then.i238.i.i

rt2500pci_bbp_write.exit231.i.i.rt2500pci_bbp_write.exit240.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit231.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit240.i.i

if.then.i238.i.i:                                 ; preds = %rt2500pci_bbp_write.exit231.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %303 = ptrtoint ptr %reg.i232.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 106681, ptr %reg.i232.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %304 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i237.i.i = getelementptr i8, ptr %305, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i237.i.i, i32 -1180696320) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit240.i.i

rt2500pci_bbp_write.exit240.i.i:                  ; preds = %if.then.i238.i.i, %rt2500pci_bbp_write.exit231.i.i.rt2500pci_bbp_write.exit240.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i232.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i241.i.i) #13
  %306 = ptrtoint ptr %reg.i241.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 -1, ptr %reg.i241.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i243.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i241.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.i.i)
  %tobool.not.i244.i.i = icmp eq i32 %call.i243.i.i, 0
  br i1 %tobool.not.i244.i.i, label %rt2500pci_bbp_write.exit240.i.i.rt2500pci_bbp_write.exit249.i.i_crit_edge, label %if.then.i247.i.i

rt2500pci_bbp_write.exit240.i.i.rt2500pci_bbp_write.exit249.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit240.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit249.i.i

if.then.i247.i.i:                                 ; preds = %rt2500pci_bbp_write.exit240.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %307 = ptrtoint ptr %reg.i241.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 107026, ptr %reg.i241.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %308 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i246.i.i = getelementptr i8, ptr %309, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i246.i.i, i32 312606976) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit249.i.i

rt2500pci_bbp_write.exit249.i.i:                  ; preds = %if.then.i247.i.i, %rt2500pci_bbp_write.exit240.i.i.rt2500pci_bbp_write.exit249.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i241.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i250.i.i) #13
  %310 = ptrtoint ptr %reg.i250.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 -1, ptr %reg.i250.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i252.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i250.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252.i.i)
  %tobool.not.i253.i.i = icmp eq i32 %call.i252.i.i, 0
  br i1 %tobool.not.i253.i.i, label %rt2500pci_bbp_write.exit249.i.i.rt2500pci_bbp_write.exit258.i.i_crit_edge, label %if.then.i256.i.i

rt2500pci_bbp_write.exit249.i.i.rt2500pci_bbp_write.exit258.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit258.i.i

if.then.i256.i.i:                                 ; preds = %rt2500pci_bbp_write.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %311 = ptrtoint ptr %reg.i250.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 107344, ptr %reg.i250.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %312 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i255.i.i = getelementptr i8, ptr %313, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i255.i.i, i32 1352859904) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit258.i.i

rt2500pci_bbp_write.exit258.i.i:                  ; preds = %if.then.i256.i.i, %rt2500pci_bbp_write.exit249.i.i.rt2500pci_bbp_write.exit258.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i250.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i259.i.i) #13
  %314 = ptrtoint ptr %reg.i259.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 -1, ptr %reg.i259.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i261.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i259.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261.i.i)
  %tobool.not.i262.i.i = icmp eq i32 %call.i261.i.i, 0
  br i1 %tobool.not.i262.i.i, label %rt2500pci_bbp_write.exit258.i.i.rt2500pci_bbp_write.exit267.i.i_crit_edge, label %if.then.i265.i.i

rt2500pci_bbp_write.exit258.i.i.rt2500pci_bbp_write.exit267.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit258.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit267.i.i

if.then.i265.i.i:                                 ; preds = %rt2500pci_bbp_write.exit258.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %315 = ptrtoint ptr %reg.i259.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 108484, ptr %reg.i259.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %316 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i264.i.i = getelementptr i8, ptr %317, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i264.i.i, i32 -995688192) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit267.i.i

rt2500pci_bbp_write.exit267.i.i:                  ; preds = %if.then.i265.i.i, %rt2500pci_bbp_write.exit258.i.i.rt2500pci_bbp_write.exit267.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i259.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i268.i.i) #13
  %318 = ptrtoint ptr %reg.i268.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 -1, ptr %reg.i268.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i270.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i268.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270.i.i)
  %tobool.not.i271.i.i = icmp eq i32 %call.i270.i.i, 0
  br i1 %tobool.not.i271.i.i, label %rt2500pci_bbp_write.exit267.i.i.rt2500pci_bbp_write.exit276.i.i_crit_edge, label %if.then.i274.i.i

rt2500pci_bbp_write.exit267.i.i.rt2500pci_bbp_write.exit276.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit267.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit276.i.i

if.then.i274.i.i:                                 ; preds = %rt2500pci_bbp_write.exit267.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %319 = ptrtoint ptr %reg.i268.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 108546, ptr %reg.i268.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %320 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i273.i.i = getelementptr i8, ptr %321, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i273.i.i, i32 44564736) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit276.i.i

rt2500pci_bbp_write.exit276.i.i:                  ; preds = %if.then.i274.i.i, %rt2500pci_bbp_write.exit267.i.i.rt2500pci_bbp_write.exit276.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i268.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i277.i.i) #13
  %322 = ptrtoint ptr %reg.i277.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 -1, ptr %reg.i277.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i279.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i277.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279.i.i)
  %tobool.not.i280.i.i = icmp eq i32 %call.i279.i.i, 0
  br i1 %tobool.not.i280.i.i, label %rt2500pci_bbp_write.exit276.i.i.rt2500pci_bbp_write.exit285.i.i_crit_edge, label %if.then.i283.i.i

rt2500pci_bbp_write.exit276.i.i.rt2500pci_bbp_write.exit285.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit285.i.i

if.then.i283.i.i:                                 ; preds = %rt2500pci_bbp_write.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %323 = ptrtoint ptr %reg.i277.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 108896, ptr %reg.i277.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %324 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i282.i.i = getelementptr i8, ptr %325, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i282.i.i, i32 1621688576) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit285.i.i

rt2500pci_bbp_write.exit285.i.i:                  ; preds = %if.then.i283.i.i, %rt2500pci_bbp_write.exit276.i.i.rt2500pci_bbp_write.exit285.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i277.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i286.i.i) #13
  %326 = ptrtoint ptr %reg.i286.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 -1, ptr %reg.i286.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i288.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i286.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288.i.i)
  %tobool.not.i289.i.i = icmp eq i32 %call.i288.i.i, 0
  br i1 %tobool.not.i289.i.i, label %rt2500pci_bbp_write.exit285.i.i.rt2500pci_bbp_write.exit294.i.i_crit_edge, label %if.then.i292.i.i

rt2500pci_bbp_write.exit285.i.i.rt2500pci_bbp_write.exit294.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit285.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit294.i.i

if.then.i292.i.i:                                 ; preds = %rt2500pci_bbp_write.exit285.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %327 = ptrtoint ptr %reg.i286.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 111888, ptr %reg.i286.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %328 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i291.i.i = getelementptr i8, ptr %329, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i291.i.i, i32 280297728) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit294.i.i

rt2500pci_bbp_write.exit294.i.i:                  ; preds = %if.then.i292.i.i, %rt2500pci_bbp_write.exit285.i.i.rt2500pci_bbp_write.exit294.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i286.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i295.i.i) #13
  %330 = ptrtoint ptr %reg.i295.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 -1, ptr %reg.i295.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i297.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i295.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297.i.i)
  %tobool.not.i298.i.i = icmp eq i32 %call.i297.i.i, 0
  br i1 %tobool.not.i298.i.i, label %rt2500pci_bbp_write.exit294.i.i.rt2500pci_bbp_write.exit303.i.i_crit_edge, label %if.then.i301.i.i

rt2500pci_bbp_write.exit294.i.i.rt2500pci_bbp_write.exit303.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit294.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit303.i.i

if.then.i301.i.i:                                 ; preds = %rt2500pci_bbp_write.exit294.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %331 = ptrtoint ptr %reg.i295.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 112152, ptr %reg.i295.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %332 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i300.i.i = getelementptr i8, ptr %333, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i300.i.i, i32 414580992) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit303.i.i

rt2500pci_bbp_write.exit303.i.i:                  ; preds = %if.then.i301.i.i, %rt2500pci_bbp_write.exit294.i.i.rt2500pci_bbp_write.exit303.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i295.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i304.i.i) #13
  %334 = ptrtoint ptr %reg.i304.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 -1, ptr %reg.i304.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i306.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i304.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i306.i.i)
  %tobool.not.i307.i.i = icmp eq i32 %call.i306.i.i, 0
  br i1 %tobool.not.i307.i.i, label %rt2500pci_bbp_write.exit303.i.i.rt2500pci_bbp_write.exit312.i.i_crit_edge, label %if.then.i310.i.i

rt2500pci_bbp_write.exit303.i.i.rt2500pci_bbp_write.exit312.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit312.i.i

if.then.i310.i.i:                                 ; preds = %rt2500pci_bbp_write.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %335 = ptrtoint ptr %reg.i304.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 112648, ptr %reg.i304.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %336 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i309.i.i = getelementptr i8, ptr %337, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i309.i.i, i32 146276608) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit312.i.i

rt2500pci_bbp_write.exit312.i.i:                  ; preds = %if.then.i310.i.i, %rt2500pci_bbp_write.exit303.i.i.rt2500pci_bbp_write.exit312.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i304.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i313.i.i) #13
  %338 = ptrtoint ptr %reg.i313.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 -1, ptr %reg.i313.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i315.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i313.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i315.i.i)
  %tobool.not.i316.i.i = icmp eq i32 %call.i315.i.i, 0
  br i1 %tobool.not.i316.i.i, label %rt2500pci_bbp_write.exit312.i.i.rt2500pci_bbp_write.exit321.i.i_crit_edge, label %if.then.i319.i.i

rt2500pci_bbp_write.exit312.i.i.rt2500pci_bbp_write.exit321.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit312.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit321.i.i

if.then.i319.i.i:                                 ; preds = %rt2500pci_bbp_write.exit312.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %339 = ptrtoint ptr %reg.i313.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 112912, ptr %reg.i313.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %340 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i318.i.i = getelementptr i8, ptr %341, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i318.i.i, i32 280559872) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit321.i.i

rt2500pci_bbp_write.exit321.i.i:                  ; preds = %if.then.i319.i.i, %rt2500pci_bbp_write.exit312.i.i.rt2500pci_bbp_write.exit321.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i313.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i322.i.i) #13
  %342 = ptrtoint ptr %reg.i322.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 -1, ptr %reg.i322.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i324.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i322.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324.i.i)
  %tobool.not.i325.i.i = icmp eq i32 %call.i324.i.i, 0
  br i1 %tobool.not.i325.i.i, label %rt2500pci_bbp_write.exit321.i.i.rt2500pci_bbp_write.exit330.i.i_crit_edge, label %if.then.i328.i.i

rt2500pci_bbp_write.exit321.i.i.rt2500pci_bbp_write.exit330.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit321.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit330.i.i

if.then.i328.i.i:                                 ; preds = %rt2500pci_bbp_write.exit321.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %343 = ptrtoint ptr %reg.i322.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 113160, ptr %reg.i322.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %344 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i327.i.i = getelementptr i8, ptr %345, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i327.i.i, i32 146407680) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit330.i.i

rt2500pci_bbp_write.exit330.i.i:                  ; preds = %if.then.i328.i.i, %rt2500pci_bbp_write.exit321.i.i.rt2500pci_bbp_write.exit330.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i322.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i331.i.i) #13
  %346 = ptrtoint ptr %reg.i331.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 -1, ptr %reg.i331.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i333.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i331.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i333.i.i)
  %tobool.not.i334.i.i = icmp eq i32 %call.i333.i.i, 0
  br i1 %tobool.not.i334.i.i, label %rt2500pci_bbp_write.exit330.i.i.rt2500pci_bbp_write.exit339.i.i_crit_edge, label %if.then.i337.i.i

rt2500pci_bbp_write.exit330.i.i.rt2500pci_bbp_write.exit339.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit339.i.i

if.then.i337.i.i:                                 ; preds = %rt2500pci_bbp_write.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %347 = ptrtoint ptr %reg.i331.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 114029, ptr %reg.i331.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %348 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i336.i.i = getelementptr i8, ptr %349, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i336.i.i, i32 1841103104) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit339.i.i

rt2500pci_bbp_write.exit339.i.i:                  ; preds = %if.then.i337.i.i, %rt2500pci_bbp_write.exit330.i.i.rt2500pci_bbp_write.exit339.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i331.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i340.i.i) #13
  %350 = ptrtoint ptr %reg.i340.i.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 -1, ptr %reg.i340.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i342.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i340.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342.i.i)
  %tobool.not.i343.i.i = icmp eq i32 %call.i342.i.i, 0
  br i1 %tobool.not.i343.i.i, label %rt2500pci_bbp_write.exit339.i.i.rt2500pci_bbp_write.exit348.i.i_crit_edge, label %if.then.i346.i.i

rt2500pci_bbp_write.exit339.i.i.rt2500pci_bbp_write.exit348.i.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit339.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit348.i.i

if.then.i346.i.i:                                 ; preds = %rt2500pci_bbp_write.exit339.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %351 = ptrtoint ptr %reg.i340.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 114192, ptr %reg.i340.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %352 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i345.i.i = getelementptr i8, ptr %353, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i345.i.i, i32 280887552) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit348.i.i

rt2500pci_bbp_write.exit348.i.i:                  ; preds = %if.then.i346.i.i, %rt2500pci_bbp_write.exit339.i.i.rt2500pci_bbp_write.exit348.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i340.i.i) #13
  %eeprom.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rt2500pci_bbp_write.exit348.i.i
  %i.0361.i.i = phi i32 [ 0, %rt2500pci_bbp_write.exit348.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.0361.i.i, 19
  %354 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %eeprom.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i16, ptr %355, i32 %add.i.i
  %356 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %arrayidx.i.i.i, align 2
  %358 = call i16 @llvm.bswap.i16(i16 %357) #13
  %359 = zext i16 %358 to i64
  call void @__sanitizer_cov_trace_switch(i64 %359, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %358, label %if.then9.i.i [
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i349.i.i) #13
  %360 = ptrtoint ptr %reg.i349.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 -1, ptr %reg.i349.i.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i351.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i349.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i351.i.i)
  %tobool.not.i352.i.i = icmp eq i32 %call.i351.i.i, 0
  br i1 %tobool.not.i352.i.i, label %if.then9.i.i.rt2500pci_bbp_write.exit357.i.i_crit_edge, label %if.then.i355.i.i

if.then9.i.i.rt2500pci_bbp_write.exit357.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit357.i.i

if.then.i355.i.i:                                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or48.i.i.i = zext i16 %358 to i32
  %or100.i.i.i = or i32 %or48.i.i.i, 98304
  %361 = ptrtoint ptr %reg.i349.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %or100.i.i.i, ptr %reg.i349.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %362 = call i32 @llvm.bswap.i32(i32 %or100.i.i.i) #13
  %363 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i354.i.i = getelementptr i8, ptr %364, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i354.i.i, i32 %362) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit357.i.i

rt2500pci_bbp_write.exit357.i.i:                  ; preds = %if.then.i355.i.i, %if.then9.i.i.rt2500pci_bbp_write.exit357.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i349.i.i) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %rt2500pci_bbp_write.exit357.i.i, %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge41
  %inc.i.i = add nuw nsw i32 %i.0361.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end14_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.if.end14_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %365 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %366, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !100
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
  %367 = ptrtoint ptr %csr.i.i24 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %csr.i.i24, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %368, i32 28
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %370 = ptrtoint ptr %csr.i.i24 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %csr.i.i24, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %371, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 %369) #13, !srcloc !100
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %sw.bb3.do.body3.i_crit_edge
  %irqmask_lock.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 63
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqmask_lock.i) #13
  %csr.i177.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %372 = ptrtoint ptr %csr.i177.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %csr.i177.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %373, i32 32
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %375 = and i32 %374, -2030043137
  %376 = tail call i32 @llvm.bswap.i32(i32 %375) #13
  %shl52.i = select i1 %cmp.i, i32 8, i32 0
  %shl80.i = select i1 %cmp.i, i32 16, i32 0
  %shl108.i = select i1 %cmp.i, i32 32, i32 0
  %shl136.i = select i1 %cmp.i, i32 64, i32 0
  %or.i = or i32 %shl52.i, %conv.i
  %or60.i = or i32 %or.i, %shl80.i
  %or88.i = or i32 %or60.i, %shl108.i
  %or116.i = or i32 %or88.i, %shl136.i
  %or144.i = or i32 %or116.i, %376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %377 = tail call i32 @llvm.bswap.i32(i32 %or144.i) #13
  %378 = ptrtoint ptr %csr.i177.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %csr.i177.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %379, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 %377) #13, !srcloc !100
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
  %380 = ptrtoint ptr %csr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %csr.i.i26, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %381, i32 216
  %382 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %383 = and i32 %382, -520224769
  %384 = tail call i32 @llvm.bswap.i32(i32 %383) #13
  %shl.i = shl nuw nsw i32 %state, 1
  %and42.i = and i32 %shl.i, 6
  %shl63.i = shl nuw nsw i32 %state, 3
  %and70.i = and i32 %shl63.i, 24
  %shl92.i = select i1 %cmp.not.i, i32 0, i32 512
  %and28.i = or i32 %and70.i, %and42.i
  %or43.i = or i32 %and28.i, %shl92.i
  %or71.i = or i32 %or43.i, %384
  %or100.i = or i32 %or71.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %385 = tail call i32 @llvm.bswap.i32(i32 %or100.i) #13
  %386 = ptrtoint ptr %csr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %csr.i.i26, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %387, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 %385) #13, !srcloc !100
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.bb4
  %i.0180.i = phi i32 [ 0, %sw.bb4 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %388 = ptrtoint ptr %csr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %csr.i.i26, align 4
  %add.ptr.i177.i = getelementptr i8, ptr %389, i32 216
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177.i) #13, !srcloc !97
  %391 = tail call i32 @llvm.bswap.i32(i32 %390) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %392 = lshr i32 %391, 5
  %conv123.i = and i32 %392, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv123.i, i32 %state)
  %cmp146.i = icmp eq i32 %conv123.i, %state
  %and136.i = lshr i32 %391, 7
  %conv144.i = and i32 %and136.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv144.i, i32 %state)
  %cmp149.i = icmp eq i32 %conv144.i, %state
  %or.cond.i = select i1 %cmp146.i, i1 %cmp149.i, i1 false
  br i1 %or.cond.i, label %for.body.i.if.end14_crit_edge, label %if.end.i

for.body.i.if.end14_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %393 = ptrtoint ptr %csr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %csr.i.i26, align 4
  %add.ptr.i179.i = getelementptr i8, ptr %394, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 %385) #13, !srcloc !100
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
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2500pci_set_device_state._rs, ptr noundef nonnull @__func__.rt2500pci_set_device_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.if.end14_crit_edge, label %do.end

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %395 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %396, i32 0, i32 1
  %397 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %398, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rt2500pci_set_device_state, i32 noundef %state, i32 noundef %retval1.0) #16
  br label %if.end14

if.end14:                                         ; preds = %do.end, %do.body.if.end14_crit_edge, %for.body.i.if.end14_crit_edge, %if.then148.i, %do.body3.i.if.end14_crit_edge, %sw.bb2, %for.inc.i.i.if.end14_crit_edge
  %retval1.030 = phi i32 [ %retval1.0, %do.body.if.end14_crit_edge ], [ %retval1.0, %do.end ], [ 0, %sw.bb2 ], [ 0, %do.body3.i.if.end14_crit_edge ], [ 0, %if.then148.i ], [ 0, %for.inc.i.i.if.end14_crit_edge ], [ 0, %for.body.i.if.end14_crit_edge ]
  ret i32 %retval1.030
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500pci_rfkill_poll(ptr nocapture noundef readonly %rt2x00dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_link_stats(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef writeonly %qual) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %rx_failed = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 5
  %5 = ptrtoint ptr %rx_failed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_failed, align 4
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 184
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %9 = and i32 %8, -65536
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %false_cca = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 1
  %11 = ptrtoint ptr %false_cca to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %false_cca, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_reset_tuner(ptr noundef %rt2x00dev, ptr nocapture noundef %qual) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vgc_level_reg.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %0 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vgc_level_reg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 72
  br i1 %cmp.not.i, label %entry.rt2500pci_set_vgc.exit_crit_edge, label %if.then.i

entry.rt2500pci_set_vgc.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_set_vgc.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %2 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !102
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.rt2500pci_bbp_write.exit.i_crit_edge, label %if.then.i.i

if.then.i.rt2500pci_bbp_write.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 102728, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %4 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1217462528) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit.i

rt2500pci_bbp_write.exit.i:                       ; preds = %if.then.i.i, %if.then.i.rt2500pci_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %vgc_level3.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %6 = ptrtoint ptr %vgc_level3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 72, ptr %vgc_level3.i, align 4
  %7 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 72, ptr %vgc_level_reg.i, align 1
  br label %rt2500pci_set_vgc.exit

rt2500pci_set_vgc.exit:                           ; preds = %rt2500pci_bbp_write.exit.i, %entry.rt2500pci_set_vgc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_link_tuner(ptr noundef %rt2x00dev, ptr nocapture noundef %qual, i32 noundef %count) #2 align 64 {
entry:
  %reg.i.i106 = alloca i32, align 4
  %reg.i.i93 = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp = icmp ult i16 %1, 4
  %intf_associated = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 26
  %2 = ptrtoint ptr %intf_associated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intf_associated, align 4
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %count)
  %cmp3 = icmp ugt i32 %count, 20
  %or.cond = and i1 %cmp3, %tobool.not
  br i1 %or.cond, label %land.lhs.true.if.end62_crit_edge, label %land.lhs.true.dynamic_cca_tune_crit_edge

land.lhs.true.dynamic_cca_tune_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %dynamic_cca_tune

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %lor.lhs.false.dynamic_cca_tune_crit_edge, label %if.end12

lor.lhs.false.dynamic_cca_tune_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %dynamic_cca_tune

if.end12:                                         ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %qual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -80, i32 %5)
  %cmp13 = icmp slt i32 %5, -80
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %count)
  %cmp16 = icmp ugt i32 %count, 20
  %or.cond91 = and i1 %cmp16, %cmp13
  br i1 %or.cond91, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end12
  %vgc_level_reg = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %6 = ptrtoint ptr %vgc_level_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vgc_level_reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp20 = icmp ugt i8 %7, 64
  br i1 %cmp20, label %if.then22, label %if.then18.if.end62_crit_edge

if.then18.if.end62_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then22:                                        ; preds = %if.then18
  %vgc_level = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %8 = ptrtoint ptr %vgc_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vgc_level, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.not.i = icmp eq i8 %7, %9
  br i1 %cmp.not.i, label %if.then22.if.end62_crit_edge, label %if.then.i

if.then22.if.end62_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then.i:                                        ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %10 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !102
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.rt2500pci_bbp_write.exit.i_crit_edge, label %if.then.i.i

if.then.i.rt2500pci_bbp_write.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i = zext i8 %9 to i32
  %or100.i.i = or i32 %conv7.i.i, 102656
  %11 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or100.i.i, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %12 = call i32 @llvm.bswap.i32(i32 %or100.i.i) #13
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %13 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %12) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit.i

rt2500pci_bbp_write.exit.i:                       ; preds = %if.then.i.i, %if.then.i.rt2500pci_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %15 = ptrtoint ptr %vgc_level to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %9, ptr %vgc_level, align 4
  %16 = ptrtoint ptr %vgc_level_reg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %9, ptr %vgc_level_reg, align 1
  br label %if.end62

if.end24:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -59, i32 %5)
  %cmp26 = icmp sgt i32 %5, -59
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  %vgc_level_reg.i94 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %17 = ptrtoint ptr %vgc_level_reg.i94 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vgc_level_reg.i94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %18)
  %cmp.not.i95 = icmp eq i8 %18, 80
  br i1 %cmp.not.i95, label %if.then28.if.end62_crit_edge, label %if.then.i99

if.then28.if.end62_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then.i99:                                      ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i93) #13
  %19 = ptrtoint ptr %reg.i.i93 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %reg.i.i93, align 4, !annotation !102
  %csr_mutex.i.i96 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i96, i32 noundef 0) #13
  %call.i.i97 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i93) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %call.i.i97, 0
  br i1 %tobool.not.i.i98, label %if.then.i99.rt2500pci_bbp_write.exit.i104_crit_edge, label %if.then.i.i102

if.then.i99.rt2500pci_bbp_write.exit.i104_crit_edge: ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit.i104

if.then.i.i102:                                   ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %reg.i.i93 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 102736, ptr %reg.i.i93, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %csr.i.i.i100 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %21 = ptrtoint ptr %csr.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i.i.i100, align 4
  %add.ptr.i.i.i101 = getelementptr i8, ptr %22, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i101, i32 1351680256) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit.i104

rt2500pci_bbp_write.exit.i104:                    ; preds = %if.then.i.i102, %if.then.i99.rt2500pci_bbp_write.exit.i104_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i96) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i93) #13
  %vgc_level3.i103 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %23 = ptrtoint ptr %vgc_level3.i103 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 80, ptr %vgc_level3.i103, align 4
  %24 = ptrtoint ptr %vgc_level_reg.i94 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 80, ptr %vgc_level_reg.i94, align 1
  br label %if.end62

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %5)
  %cmp31 = icmp ugt i32 %5, -75
  %vgc_level_reg.i107 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %25 = ptrtoint ptr %vgc_level_reg.i107 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vgc_level_reg.i107, align 1
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %26)
  %cmp.not.i108 = icmp eq i8 %26, 65
  br i1 %cmp.not.i108, label %if.then33.if.end62_crit_edge, label %if.then.i112

if.then33.if.end62_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then.i112:                                     ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i106) #13
  %27 = ptrtoint ptr %reg.i.i106 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %reg.i.i106, align 4, !annotation !102
  %csr_mutex.i.i109 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i109, i32 noundef 0) #13
  %call.i.i110 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i.i106) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %tobool.not.i.i111 = icmp eq i32 %call.i.i110, 0
  br i1 %tobool.not.i.i111, label %if.then.i112.rt2500pci_bbp_write.exit.i117_crit_edge, label %if.then.i.i115

if.then.i112.rt2500pci_bbp_write.exit.i117_crit_edge: ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit.i117

if.then.i.i115:                                   ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %reg.i.i106 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 102721, ptr %reg.i.i106, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %csr.i.i.i113 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %29 = ptrtoint ptr %csr.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr.i.i.i113, align 4
  %add.ptr.i.i.i114 = getelementptr i8, ptr %30, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i114, i32 1100022016) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit.i117

rt2500pci_bbp_write.exit.i117:                    ; preds = %if.then.i.i115, %if.then.i112.rt2500pci_bbp_write.exit.i117_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i109) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i106) #13
  %vgc_level3.i116 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %31 = ptrtoint ptr %vgc_level3.i116 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 65, ptr %vgc_level3.i116, align 4
  %32 = ptrtoint ptr %vgc_level_reg.i107 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 65, ptr %vgc_level_reg.i107, align 1
  br label %if.end62

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %26)
  %cmp37 = icmp ugt i8 %26, 64
  br i1 %cmp37, label %if.then39, label %if.end34.dynamic_cca_tune_crit_edge

if.end34.dynamic_cca_tune_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %dynamic_cca_tune

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %vgc_level40 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %33 = ptrtoint ptr %vgc_level40 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %vgc_level40, align 4
  tail call fastcc void @rt2500pci_set_vgc(ptr noundef %rt2x00dev, ptr noundef %qual, i8 noundef zeroext %34)
  br label %if.end62

dynamic_cca_tune:                                 ; preds = %if.end34.dynamic_cca_tune_crit_edge, %lor.lhs.false.dynamic_cca_tune_crit_edge, %land.lhs.true.dynamic_cca_tune_crit_edge
  %false_cca = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 1
  %35 = ptrtoint ptr %false_cca to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %false_cca, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %36)
  %cmp42 = icmp sgt i32 %36, 512
  br i1 %cmp42, label %land.lhs.true44, label %if.else

land.lhs.true44:                                  ; preds = %dynamic_cca_tune
  %vgc_level_reg45 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %37 = ptrtoint ptr %vgc_level_reg45 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vgc_level_reg45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %38)
  %cmp47 = icmp ult i8 %38, 64
  br i1 %cmp47, label %rt2500pci_set_vgc.exit133, label %land.lhs.true44.if.end62_crit_edge

land.lhs.true44.if.end62_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

rt2500pci_set_vgc.exit133:                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nuw nsw i8 %38, 1
  %39 = ptrtoint ptr %vgc_level_reg45 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %inc, ptr %vgc_level_reg45, align 1
  br label %if.end62

if.else:                                          ; preds = %dynamic_cca_tune
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %36)
  %cmp52 = icmp slt i32 %36, 100
  br i1 %cmp52, label %land.lhs.true54, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

land.lhs.true54:                                  ; preds = %if.else
  %vgc_level_reg55 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %40 = ptrtoint ptr %vgc_level_reg55 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vgc_level_reg55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %41)
  %cmp57 = icmp ugt i8 %41, 50
  br i1 %cmp57, label %rt2500pci_set_vgc.exit148, label %land.lhs.true54.if.end62_crit_edge

land.lhs.true54.if.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

rt2500pci_set_vgc.exit148:                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i8 %41, -1
  %42 = ptrtoint ptr %vgc_level_reg55 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %dec, ptr %vgc_level_reg55, align 1
  br label %if.end62

if.end62:                                         ; preds = %rt2500pci_set_vgc.exit148, %land.lhs.true54.if.end62_crit_edge, %if.else.if.end62_crit_edge, %rt2500pci_set_vgc.exit133, %land.lhs.true44.if.end62_crit_edge, %if.then39, %rt2500pci_bbp_write.exit.i117, %if.then33.if.end62_crit_edge, %rt2500pci_bbp_write.exit.i104, %if.then28.if.end62_crit_edge, %rt2500pci_bbp_write.exit.i, %if.then22.if.end62_crit_edge, %if.then18.if.end62_crit_edge, %land.lhs.true.if.end62_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_start_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
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
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %8 = and i32 %7, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %8) #13, !srcloc !100
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i110 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i110 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %12, i32 56
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %14 = or i32 %13, 1224736768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %csr.i110 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i110, align 4
  %add.ptr.i113 = getelementptr i8, ptr %16, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %14) #13, !srcloc !100
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_kick_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
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
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %8 = or i32 %7, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %8) #13, !srcloc !100
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i87 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i87 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %12, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %14 = or i32 %13, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %csr.i87 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i87, align 4
  %add.ptr.i90 = getelementptr i8, ptr %16, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %14) #13, !srcloc !100
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i91 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %csr.i91 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %18, i32 96
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %20 = or i32 %19, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %csr.i91 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i91, align 4
  %add.ptr.i94 = getelementptr i8, ptr %22, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %20) #13, !srcloc !100
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_stop_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
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
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %8 = or i32 %7, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %8) #13, !srcloc !100
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i144 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i144 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %12, i32 128
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %14 = or i32 %13, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %csr.i144 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i144, align 4
  %add.ptr.i147 = getelementptr i8, ptr %16, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %14) #13, !srcloc !100
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i148 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %csr.i148 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %18, i32 56
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %20 = and i32 %19, -1224736769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %csr.i148 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i148, align 4
  %add.ptr.i151 = getelementptr i8, ptr %22, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %20) #13, !srcloc !100
  %tbtt_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 59
  tail call void @tasklet_kill(ptr noundef %tbtt_tasklet) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mmio_flush_queue(ptr noundef, i1 noundef zeroext) #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt2500pci_write_tx_desc(ptr nocapture noundef readonly %entry1, ptr noundef %txdesc) #5 align 64 {
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
  %arrayidx.i.i678 = getelementptr i32, ptr %5, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i678 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i678, align 4
  %12 = and i32 %11, 65535
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue, align 4
  %aifs = getelementptr inbounds %struct.data_queue, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %aifs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %aifs, align 2
  %conv57 = zext i16 %16 to i32
  %shl64 = shl nuw nsw i32 %conv57, 6
  %and71 = and i32 %shl64, 192
  %cw_min = getelementptr inbounds %struct.data_queue, ptr %14, i32 0, i32 16
  %17 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cw_min, align 4
  %conv87 = zext i16 %18 to i32
  %shl94 = shl nuw nsw i32 %conv87, 8
  %and101 = and i32 %shl94, 3840
  %cw_max = getelementptr inbounds %struct.data_queue, ptr %14, i32 0, i32 17
  %19 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cw_max, align 2
  %conv117 = zext i16 %20 to i32
  %shl124 = shl nuw nsw i32 %conv117, 12
  %and131 = and i32 %shl124, 61440
  %21 = or i32 %12, 402653184
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %or72 = or i32 %22, %and71
  %or102 = or i32 %or72, %and101
  %or132 = or i32 %or102, %and131
  %23 = tail call i32 @llvm.bswap.i32(i32 %or132) #13
  %24 = ptrtoint ptr %arrayidx.i.i678 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i.i678, align 4
  %arrayidx.i.i680 = getelementptr i32, ptr %5, i32 3
  %u = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3
  %signal = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 3
  %25 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %signal, align 4
  %27 = and i16 %26, 255
  %and161.masked = zext i16 %27 to i32
  %service = getelementptr inbounds %struct.anon.134, ptr %u, i32 0, i32 3
  %28 = ptrtoint ptr %service to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %service, align 2
  %conv177 = zext i16 %29 to i32
  %shl184 = shl nuw nsw i32 %conv177, 8
  %shl184.masked = and i32 %shl184, 65280
  %and204 = or i32 %shl184.masked, %and161.masked
  %length_low = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %length_low to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %length_low, align 2
  %conv207 = zext i16 %31 to i32
  %shl214 = shl nuw i32 %conv207, 16
  %shl214.masked = and i32 %shl214, 16711680
  %and234 = or i32 %and204, %shl214.masked
  %32 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %u, align 4
  %conv237 = zext i16 %33 to i32
  %shl244 = shl i32 %conv237, 24
  %or252 = or i32 %and234, %shl244
  %34 = tail call i32 @llvm.bswap.i32(i32 %or252) #13
  %35 = ptrtoint ptr %arrayidx.i.i680 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx.i.i680, align 4
  %arrayidx.i.i682 = getelementptr i32, ptr %5, i32 10
  %36 = ptrtoint ptr %arrayidx.i.i682 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i682, align 4
  %38 = and i32 %37, -16777217
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %txdesc, align 4
  %and1.i = and i32 %41, 1
  %or282 = or i32 %39, %and1.i
  %42 = tail call i32 @llvm.bswap.i32(i32 %or282) #13
  %43 = ptrtoint ptr %arrayidx.i.i682 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx.i.i682, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %5, align 4
  %46 = and i32 %45, -67108848
  %47 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %txdesc, align 4
  %49 = shl i32 %48, 4
  %shl357 = and i32 %49, 256
  %50 = load volatile i32, ptr %txdesc, align 4
  %51 = shl i32 %50, 2
  %shl387 = and i32 %51, 512
  %52 = load volatile i32, ptr %txdesc, align 4
  %53 = shl i32 %52, 5
  %shl417 = and i32 %53, 1024
  %rate_mode = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 4
  %54 = ptrtoint ptr %rate_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rate_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp439 = icmp eq i32 %55, 1
  %ifs = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 4
  %56 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ifs, align 4
  %shl502 = shl i32 %57, 13
  %and509 = and i32 %shl502, 24576
  %58 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %txdesc, align 4
  %60 = shl i32 %59, 7
  %shl532 = and i32 %60, 32768
  %length = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 1
  %61 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %length, align 4
  %conv554 = zext i16 %62 to i32
  %shl561 = shl nuw i32 %conv554, 16
  %and568 = and i32 %shl561, 268369920
  %shl447.masked.masked.masked.masked.masked = select i1 %cmp439, i32 2048, i32 1
  %63 = or i32 %46, 51380224
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %or365 = or i32 %64, %shl357
  %or395 = or i32 %or365, %shl387
  %or481.masked.masked.masked = or i32 %or395, %shl417
  %or510.masked.masked = or i32 %or481.masked.masked.masked, %shl447.masked.masked.masked.masked.masked
  %or540.masked = or i32 %or510.masked.masked, %and509
  %or569 = or i32 %or540.masked, %shl532
  %and581 = or i32 %or569, %and568
  %65 = tail call i32 @llvm.bswap.i32(i32 %and581) #13
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %5, align 4
  %desc596 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %67 = ptrtoint ptr %desc596 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %5, ptr %desc596, align 4
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %68 = ptrtoint ptr %desc_len to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 44, ptr %desc_len, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_write_beacon(ptr noundef %entry1, ptr noundef %txdesc) #2 align 64 {
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
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %and = and i32 %7, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %8) #13, !srcloc !100
  %call16 = tail call i32 @rt2x00queue_map_txskb(ptr noundef %entry1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end26, label %do.body17

do.body17:                                        ; preds = %entry
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2500pci_write_beacon._rs, ptr noundef nonnull @__func__.rt2500pci_write_beacon) #13
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rt2500pci_write_beacon) #16
  br label %out

if.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rt2500pci_write_tx_desc(ptr noundef %entry1, ptr noundef %txdesc)
  tail call void @rt2x00debug_dump_frame(ptr noundef %3, i32 noundef 4, ptr noundef %entry1) #13
  br label %out

out:                                              ; preds = %if.end26, %do.end23, %do.body17.out_crit_edge
  %or52 = or i32 %7, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %or52) #13
  %16 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %15) #13, !srcloc !100
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt2500pci_fill_rxdone(ptr nocapture noundef readonly %entry1, ptr nocapture noundef %rxdesc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 5
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  %10 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %or = or i32 %12, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool31.not, label %if.end.if.end35_crit_edge, label %if.then32

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %flags33 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %14 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags33, align 4
  %or34 = or i32 %15, 64
  store i32 %or34, ptr %flags33, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end.if.end35_crit_edge
  %and48 = and i32 %9, 255
  %signal = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 1
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and48, ptr %signal, align 8
  %and68 = lshr i32 %9, 8
  %shr75 = and i32 %and68, 255
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %rssi_offset = getelementptr inbounds %struct.rt2x00_dev, ptr %20, i32 0, i32 37
  %21 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rssi_offset, align 2
  %conv76 = zext i8 %22 to i32
  %sub = sub nsw i32 %shr75, %conv76
  %rssi = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 2
  %23 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %rssi, align 4
  %and89 = lshr i32 %6, 16
  %shr96 = and i32 %and89, 4095
  %size = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 3
  %24 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr96, ptr %size, align 8
  %25 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool117.not = icmp eq i32 %25, 0
  %dev_flags120 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %26 = ptrtoint ptr %dev_flags120 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_flags120, align 8
  %. = select i1 %tobool117.not, i32 2, i32 1
  %or121 = or i32 %27, %.
  store i32 %or121, ptr %dev_flags120, align 8
  %28 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool143.not = icmp eq i32 %28, 0
  br i1 %tobool143.not, label %if.end35.if.end147_crit_edge, label %if.then144

if.end35.if.end147_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

if.then144:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %dev_flags145 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %29 = ptrtoint ptr %dev_flags145 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_flags145, align 8
  %or146 = or i32 %30, 8
  store i32 %or146, ptr %dev_flags145, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.end35.if.end147_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_config_filter(ptr noundef %rt2x00dev, i32 noundef %filter_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
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
  %13 = and i32 %2, -2114322433
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = lshr i32 %4, 7
  %16 = and i32 %15, 16
  %17 = shl i32 %filter_flags, 8
  %18 = and i32 %17, 512
  %19 = and i32 %12, 6
  %20 = or i32 %19, %11
  %21 = or i32 %20, %18
  %22 = or i32 %21, %14
  %23 = or i32 %22, %16
  %24 = or i32 %23, %9
  %and215 = xor i32 %24, 606
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %25 = tail call i32 @llvm.bswap.i32(i32 %and215) #13
  %26 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csr.i, align 4
  %add.ptr.i256 = getelementptr i8, ptr %27, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i256, i32 %25) #13, !srcloc !100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_config_intf(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef readnone %intf, ptr noundef %conf, i32 noundef %flags) #2 align 64 {
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
  %bcn = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 52
  %0 = ptrtoint ptr %bcn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bcn, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 304
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %5 = and i32 %4, 61695
  %cw_min = getelementptr inbounds %struct.data_queue, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cw_min, align 4
  %conv29 = zext i16 %7 to i32
  %shl36 = shl nuw i32 %conv29, 16
  %and43 = and i32 %shl36, 983040
  %8 = or i32 %5, -268435456
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %or44 = or i32 %9, %and43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %10 = tail call i32 @llvm.bswap.i32(i32 %or44) #13
  %11 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %12, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %10) #13, !srcloc !100
  %13 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %14, i32 56
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %16 = and i32 %15, -100663297
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %sync = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 1
  %18 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sync, align 4
  %shl65 = shl i32 %19, 1
  %and72 = and i32 %shl65, 6
  %or73 = or i32 %and72, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %or73) #13
  %21 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %22, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %20) #13, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and74 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end.if.end77_crit_edge, label %if.then76

if.end.if.end77_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then76:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mac = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 2
  %csr.i106 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %23 = ptrtoint ptr %csr.i106 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %24, i32 12
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i107, ptr noundef %mac, i32 noundef 2) #13
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end.if.end77_crit_edge
  %and78 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end82_crit_edge, label %if.then80

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %bssid = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 3
  %csr.i108 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %25 = ptrtoint ptr %csr.i108 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr.i108, align 4
  %add.ptr.i109 = getelementptr i8, ptr %26, i32 20
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i109, ptr noundef %bssid, i32 noundef 2) #13
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77.if.end82_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_config_erp(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef readonly %erp, i32 noundef %changed) #2 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  %5 = shl i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %or92 = or i32 %5, 23151970
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %or92) #13
  %7 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i, align 4
  %add.ptr.i728 = getelementptr i8, ptr %8, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i728, i32 %6) #13, !srcloc !100
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i730 = getelementptr i8, ptr %10, i32 316
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i730) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i, align 4
  %add.ptr.i732 = getelementptr i8, ptr %13, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i732, i32 290816) #13, !srcloc !100
  %14 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i, align 4
  %add.ptr.i734 = getelementptr i8, ptr %15, i32 320
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i734) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %or186 = and i32 %shl, 248
  %or253 = or i32 %or186, 3671041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %or253) #13
  %18 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i, align 4
  %add.ptr.i736 = getelementptr i8, ptr %19, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i736, i32 %17) #13, !srcloc !100
  %20 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csr.i, align 4
  %add.ptr.i738 = getelementptr i8, ptr %21, i32 324
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i738) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %or335 = or i32 %or186, 1311746
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %or335) #13
  %24 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr.i, align 4
  %add.ptr.i740 = getelementptr i8, ptr %25, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i740, i32 %23) #13, !srcloc !100
  %26 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csr.i, align 4
  %add.ptr.i742 = getelementptr i8, ptr %27, i32 328
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i742) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %or417 = or i32 %or186, 689155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %29 = tail call i32 @llvm.bswap.i32(i32 %or417) #13
  %30 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csr.i, align 4
  %add.ptr.i744 = getelementptr i8, ptr %31, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i744, i32 %29) #13, !srcloc !100
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #13
  %csr.i745 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %35 = ptrtoint ptr %csr.i745 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csr.i745, align 4
  %add.ptr.i746 = getelementptr i8, ptr %36, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i746, i32 %34) #13, !srcloc !100
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
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i748) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %40 = and i32 %39, -2031617
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %slot_time = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 3
  %42 = ptrtoint ptr %slot_time to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slot_time, align 4
  %shl445 = shl i32 %43, 8
  %and452 = and i32 %shl445, 7936
  %or453 = or i32 %and452, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %44 = tail call i32 @llvm.bswap.i32(i32 %or453) #13
  %45 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i750 = getelementptr i8, ptr %46, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i750, i32 %44) #13, !srcloc !100
  %47 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i752 = getelementptr i8, ptr %48, i32 72
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i752) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %50 = and i32 %49, 16703743
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %sifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 4
  %52 = ptrtoint ptr %sifs to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sifs, align 4
  %54 = and i16 %53, 511
  %and482 = zext i16 %54 to i32
  %or483 = or i32 %51, %and482
  %pifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 5
  %55 = ptrtoint ptr %pifs to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pifs, align 2
  %conv497724 = zext i16 %56 to i32
  %shl504 = shl nuw i32 %conv497724, 16
  %and511 = and i32 %shl504, 2031616
  %or512 = or i32 %or483, %and511
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %57 = tail call i32 @llvm.bswap.i32(i32 %or512) #13
  %58 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i754 = getelementptr i8, ptr %59, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i754, i32 %57) #13, !srcloc !100
  %60 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i756 = getelementptr i8, ptr %61, i32 76
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i756) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %difs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 6
  %63 = ptrtoint ptr %difs to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %difs, align 4
  %conv527725 = zext i16 %64 to i32
  %eifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 7
  %65 = ptrtoint ptr %eifs to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %eifs, align 2
  %conv556726 = zext i16 %66 to i32
  %shl563 = shl nuw i32 %conv556726, 16
  %or571 = or i32 %shl563, %conv527725
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %67 = tail call i32 @llvm.bswap.i32(i32 %or571) #13
  %68 = ptrtoint ptr %csr.i747 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %csr.i747, align 4
  %add.ptr.i758 = getelementptr i8, ptr %69, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i758, i32 %67) #13, !srcloc !100
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
  %70 = ptrtoint ptr %csr.i759 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %csr.i759, align 4
  %add.ptr.i760 = getelementptr i8, ptr %71, i32 48
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i760) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %beacon_int = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 8
  %73 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %beacon_int, align 4
  %conv590 = zext i16 %74 to i32
  %mul = shl nuw nsw i32 %conv590, 4
  %and604 = and i32 %mul, 65520
  %mul621 = shl i32 %conv590, 20
  %or636 = or i32 %and604, %mul621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %75 = tail call i32 @llvm.bswap.i32(i32 %or636) #13
  %76 = ptrtoint ptr %csr.i759 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %csr.i759, align 4
  %add.ptr.i762 = getelementptr i8, ptr %77, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i762, i32 %75) #13, !srcloc !100
  br label %if.end637

if.end637:                                        ; preds = %if.then575, %if.end572.if.end637_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_config_ant(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %ant) #2 align 64 {
entry:
  %reg.i452 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !101

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
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end8, !prof !101

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2500pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 408, 0\0A.popsection", ""() #13, !srcloc !103
  unreachable

do.end8:                                          ; preds = %lor.rhs
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 348
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %call9 = tail call zeroext i8 @rt2500pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 14)
  %call10 = tail call zeroext i8 @rt2500pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 2)
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cond = icmp eq i32 %9, 1
  %10 = and i8 %call10, -4
  %and70 = and i32 %7, -196612
  %11 = or i8 %10, 2
  %and127 = and i32 %7, -196612
  %or167 = or i32 %and127, 131074
  %r2.0 = select i1 %cond, i8 %10, i8 %11
  %reg.0 = select i1 %cond, i32 %and70, i32 %or167
  %12 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cond406 = icmp eq i32 %13, 1
  %14 = and i8 %call9, -4
  %15 = or i8 %14, 2
  %r14.0 = select i1 %cond406, i8 %14, i8 %15
  %rf1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rf1.i, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %17, label %if.else [
    i16 16, label %do.end8.if.then237_crit_edge
    i16 4, label %do.end8.if.then237_crit_edge463
  ]

do.end8.if.then237_crit_edge463:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then237

do.end8.if.then237_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then237

if.then237:                                       ; preds = %do.end8.if.then237_crit_edge, %do.end8.if.then237_crit_edge463
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp.i = icmp eq i16 %17, 4
  %19 = or i8 %r2.0, 4
  %or319 = or i32 %reg.0, 262148
  %20 = and i8 %r14.0, -6
  %spec.select = select i1 %cmp.i, i8 %20, i8 %r14.0
  br label %if.end405

if.else:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %and390 = and i32 %reg.0, -327686
  br label %if.end405

if.end405:                                        ; preds = %if.else, %if.then237
  %r2.1 = phi i8 [ %r2.0, %if.else ], [ %19, %if.then237 ]
  %r14.1 = phi i8 [ %r14.0, %if.else ], [ %spec.select, %if.then237 ]
  %reg.1 = phi i32 [ %and390, %if.else ], [ %or319, %if.then237 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #13
  %22 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr.i, align 4
  %add.ptr.i451 = getelementptr i8, ptr %23, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i451, i32 %21) #13, !srcloc !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %reg.i, align 4, !annotation !102
  %csr_mutex.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end405.rt2500pci_bbp_write.exit_crit_edge, label %if.then.i

if.end405.rt2500pci_bbp_write.exit_crit_edge:     ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit

if.then.i:                                        ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i = zext i8 %r14.1 to i32
  %or100.i = or i32 %conv7.i, 101888
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or100.i, ptr %reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %26 = call i32 @llvm.bswap.i32(i32 %or100.i) #13
  %27 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %26) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit

rt2500pci_bbp_write.exit:                         ; preds = %if.then.i, %if.end405.rt2500pci_bbp_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i452) #13
  %29 = ptrtoint ptr %reg.i452 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %reg.i452, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i454 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i452) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i454)
  %tobool.not.i455 = icmp eq i32 %call.i454, 0
  br i1 %tobool.not.i455, label %rt2500pci_bbp_write.exit.rt2500pci_bbp_write.exit462_crit_edge, label %if.then.i461

rt2500pci_bbp_write.exit.rt2500pci_bbp_write.exit462_crit_edge: ; preds = %rt2500pci_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit462

if.then.i461:                                     ; preds = %rt2500pci_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i456 = zext i8 %r2.1 to i32
  %or100.i458 = or i32 %conv7.i456, 98816
  %30 = ptrtoint ptr %reg.i452 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or100.i458, ptr %reg.i452, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %31 = call i32 @llvm.bswap.i32(i32 %or100.i458) #13
  %32 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i460 = getelementptr i8, ptr %33, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i460, i32 %31) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit462

rt2500pci_bbp_write.exit462:                      ; preds = %if.then.i461, %rt2500pci_bbp_write.exit.rt2500pci_bbp_write.exit462_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i452) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_config(ptr noundef %rt2x00dev, ptr nocapture noundef %libconf, i32 noundef %flags) #2 align 64 {
entry:
  %reg.i.i28 = alloca i32, align 4
  %reg.i401.i = alloca i32, align 4
  %reg.i384.i = alloca i32, align 4
  %reg.i375.i = alloca i32, align 4
  %reg.i357.i = alloca i32, align 4
  %reg.i339.i = alloca i32, align 4
  %reg.i321.i = alloca i32, align 4
  %reg.i304.i = alloca i32, align 4
  %reg.i286.i = alloca i32, align 4
  %reg.i268.i = alloca i32, align 4
  %reg.i251.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rf = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1
  %0 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %libconf, align 4
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_level, align 4
  %rf3.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf3.i, align 4
  %and.i = and i32 %5, -15873
  %conv4.i = and i32 %3, 255
  %6 = tail call i32 @llvm.umin.i32(i32 %conv4.i, i32 31) #13
  %shl.i = shl nuw nsw i32 %6, 9
  %or.i = or i32 %shl.i, %and.i
  %7 = ptrtoint ptr %rf3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %rf3.i, align 4
  %rf1.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %rf1.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rf1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp.i.i = icmp eq i16 %9, 1
  br i1 %cmp.i.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %rf1.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rf1.i, align 4
  %or62.i = or i32 %11, 131072
  store i32 %or62.i, ptr %rf1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %or90.i = or i32 %or.i, 256
  %12 = ptrtoint ptr %rf3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or90.i, ptr %rf3.i, align 4
  %13 = ptrtoint ptr %rf1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rf1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp.i250.i = icmp eq i16 %14, 3
  br i1 %cmp.i250.i, label %if.then92.i, label %if.end.i.if.end98.i_crit_edge

if.end.i.if.end98.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98.i

if.then92.i:                                      ; preds = %if.end.i
  %rf193.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %rf193.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rf193.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !102
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then92.i.rt2500pci_rf_write.exit.i_crit_edge, label %if.then.i.i

if.then92.i.rt2500pci_rf_write.exit.i_crit_edge:  ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_rf_write.exit.i

if.then.i.i:                                      ; preds = %if.then92.i
  %and19.i.i = and i32 %16, 16777215
  %or97.i.i = or i32 %and19.i.i, -1811939328
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or97.i.i, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %19 = call i32 @llvm.bswap.i32(i32 %or97.i.i) #13
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %20 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %19) #13, !srcloc !100
  %ops.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i.i, align 4
  %rf_size.i.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %rf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rf_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp1.i.i.i = icmp ult i32 %25, 4
  br i1 %cmp1.i.i.i, label %do.body3.i.i.i, label %rt2x00_rf_write.exit.i.i, !prof !101

do.body3.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i.i:                         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %26 = ptrtoint ptr %rf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rf.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %16, ptr %27, align 4
  br label %rt2500pci_rf_write.exit.i

rt2500pci_rf_write.exit.i:                        ; preds = %rt2x00_rf_write.exit.i.i, %if.then92.i.rt2500pci_rf_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %29 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rf, align 4
  %sub.i = add i32 %30, -1
  %arrayidx.i = getelementptr [14 x i32], ptr @rt2500pci_config_channel.vals, i32 0, i32 %sub.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i251.i) #13
  %33 = ptrtoint ptr %reg.i251.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %reg.i251.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i253.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i251.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253.i)
  %tobool.not.i254.i = icmp eq i32 %call.i253.i, 0
  br i1 %tobool.not.i254.i, label %rt2500pci_rf_write.exit.i.rt2500pci_rf_write.exit267.i_crit_edge, label %if.then.i259.i

rt2500pci_rf_write.exit.i.rt2500pci_rf_write.exit267.i_crit_edge: ; preds = %rt2500pci_rf_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_rf_write.exit267.i

if.then.i259.i:                                   ; preds = %rt2500pci_rf_write.exit.i
  %and19.i255.i = and i32 %32, 16777215
  %or97.i256.i = or i32 %and19.i255.i, -1811939328
  %34 = ptrtoint ptr %reg.i251.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or97.i256.i, ptr %reg.i251.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %35 = call i32 @llvm.bswap.i32(i32 %or97.i256.i) #13
  %csr.i.i257.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %36 = ptrtoint ptr %csr.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %csr.i.i257.i, align 4
  %add.ptr.i.i258.i = getelementptr i8, ptr %37, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i258.i, i32 %35) #13, !srcloc !100
  %ops.i.i260.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %38 = ptrtoint ptr %ops.i.i260.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i260.i, align 4
  %rf_size.i.i261.i = getelementptr inbounds %struct.rt2x00_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %rf_size.i.i261.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rf_size.i.i261.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %41)
  %cmp1.i.i263.i = icmp ult i32 %41, 8
  br i1 %cmp1.i.i263.i, label %do.body3.i.i264.i, label %rt2x00_rf_write.exit.i266.i, !prof !101

do.body3.i.i264.i:                                ; preds = %if.then.i259.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i266.i:                      ; preds = %if.then.i259.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i265.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %42 = ptrtoint ptr %rf.i.i265.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rf.i.i265.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %43, i32 1
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %32, ptr %arrayidx.i.i.i, align 4
  br label %rt2500pci_rf_write.exit267.i

rt2500pci_rf_write.exit267.i:                     ; preds = %rt2x00_rf_write.exit.i266.i, %rt2500pci_rf_write.exit.i.rt2500pci_rf_write.exit267.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i251.i) #13
  %45 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rf3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i268.i) #13
  %47 = ptrtoint ptr %reg.i268.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %reg.i268.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i270.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i268.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270.i)
  %tobool.not.i271.i = icmp eq i32 %call.i270.i, 0
  br i1 %tobool.not.i271.i, label %rt2500pci_rf_write.exit267.i.rt2500pci_rf_write.exit285.i_crit_edge, label %if.then.i276.i

rt2500pci_rf_write.exit267.i.rt2500pci_rf_write.exit285.i_crit_edge: ; preds = %rt2500pci_rf_write.exit267.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_rf_write.exit285.i

if.then.i276.i:                                   ; preds = %rt2500pci_rf_write.exit267.i
  %and19.i272.i = and i32 %46, 16777215
  %or97.i273.i = or i32 %and19.i272.i, -1811939328
  %48 = ptrtoint ptr %reg.i268.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or97.i273.i, ptr %reg.i268.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %49 = call i32 @llvm.bswap.i32(i32 %or97.i273.i) #13
  %csr.i.i274.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %50 = ptrtoint ptr %csr.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csr.i.i274.i, align 4
  %add.ptr.i.i275.i = getelementptr i8, ptr %51, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i275.i, i32 %49) #13, !srcloc !100
  %ops.i.i277.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %52 = ptrtoint ptr %ops.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i277.i, align 4
  %rf_size.i.i278.i = getelementptr inbounds %struct.rt2x00_ops, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %rf_size.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rf_size.i.i278.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %55)
  %cmp1.i.i280.i = icmp ult i32 %55, 12
  br i1 %cmp1.i.i280.i, label %do.body3.i.i281.i, label %rt2x00_rf_write.exit.i284.i, !prof !101

do.body3.i.i281.i:                                ; preds = %if.then.i276.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i284.i:                      ; preds = %if.then.i276.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i282.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %56 = ptrtoint ptr %rf.i.i282.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rf.i.i282.i, align 4
  %arrayidx.i.i283.i = getelementptr i32, ptr %57, i32 2
  %58 = ptrtoint ptr %arrayidx.i.i283.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %46, ptr %arrayidx.i.i283.i, align 4
  br label %rt2500pci_rf_write.exit285.i

rt2500pci_rf_write.exit285.i:                     ; preds = %rt2x00_rf_write.exit.i284.i, %rt2500pci_rf_write.exit267.i.rt2500pci_rf_write.exit285.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i268.i) #13
  %rf4.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %rf4.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rf4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %rt2500pci_rf_write.exit285.i.if.end98.i_crit_edge, label %if.then95.i

rt2500pci_rf_write.exit285.i.if.end98.i_crit_edge: ; preds = %rt2500pci_rf_write.exit285.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98.i

if.then95.i:                                      ; preds = %rt2500pci_rf_write.exit285.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i286.i) #13
  %61 = ptrtoint ptr %reg.i286.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %reg.i286.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i288.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i286.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288.i)
  %tobool.not.i289.i = icmp eq i32 %call.i288.i, 0
  br i1 %tobool.not.i289.i, label %if.then95.i.rt2500pci_rf_write.exit303.i_crit_edge, label %if.then.i294.i

if.then95.i.rt2500pci_rf_write.exit303.i_crit_edge: ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_rf_write.exit303.i

if.then.i294.i:                                   ; preds = %if.then95.i
  %and19.i290.i = and i32 %60, 16777215
  %or97.i291.i = or i32 %and19.i290.i, -1811939328
  %62 = ptrtoint ptr %reg.i286.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or97.i291.i, ptr %reg.i286.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %63 = call i32 @llvm.bswap.i32(i32 %or97.i291.i) #13
  %csr.i.i292.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %64 = ptrtoint ptr %csr.i.i292.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %csr.i.i292.i, align 4
  %add.ptr.i.i293.i = getelementptr i8, ptr %65, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i293.i, i32 %63) #13, !srcloc !100
  %ops.i.i295.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %66 = ptrtoint ptr %ops.i.i295.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i.i295.i, align 4
  %rf_size.i.i296.i = getelementptr inbounds %struct.rt2x00_ops, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %rf_size.i.i296.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rf_size.i.i296.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %69)
  %cmp1.i.i298.i = icmp ult i32 %69, 16
  br i1 %cmp1.i.i298.i, label %do.body3.i.i299.i, label %rt2x00_rf_write.exit.i302.i, !prof !101

do.body3.i.i299.i:                                ; preds = %if.then.i294.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i302.i:                      ; preds = %if.then.i294.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i300.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %70 = ptrtoint ptr %rf.i.i300.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rf.i.i300.i, align 4
  %arrayidx.i.i301.i = getelementptr i32, ptr %71, i32 3
  %72 = ptrtoint ptr %arrayidx.i.i301.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %60, ptr %arrayidx.i.i301.i, align 4
  br label %rt2500pci_rf_write.exit303.i

rt2500pci_rf_write.exit303.i:                     ; preds = %rt2x00_rf_write.exit.i302.i, %if.then95.i.rt2500pci_rf_write.exit303.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i286.i) #13
  br label %if.end98.i

if.end98.i:                                       ; preds = %rt2500pci_rf_write.exit303.i, %rt2500pci_rf_write.exit285.i.if.end98.i_crit_edge, %if.end.i.if.end98.i_crit_edge
  %rf199.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %rf199.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rf199.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i304.i) #13
  %75 = ptrtoint ptr %reg.i304.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %reg.i304.i, align 4, !annotation !102
  %csr_mutex.i305.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i305.i, i32 noundef 0) #13
  %call.i306.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i304.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i306.i)
  %tobool.not.i307.i = icmp eq i32 %call.i306.i, 0
  br i1 %tobool.not.i307.i, label %if.end98.i.rt2500pci_rf_write.exit320.i_crit_edge, label %if.then.i312.i

if.end98.i.rt2500pci_rf_write.exit320.i_crit_edge: ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_rf_write.exit320.i

if.then.i312.i:                                   ; preds = %if.end98.i
  %and19.i308.i = and i32 %74, 16777215
  %or97.i309.i = or i32 %and19.i308.i, -1811939328
  %76 = ptrtoint ptr %reg.i304.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or97.i309.i, ptr %reg.i304.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %77 = call i32 @llvm.bswap.i32(i32 %or97.i309.i) #13
  %csr.i.i310.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %78 = ptrtoint ptr %csr.i.i310.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %csr.i.i310.i, align 4
  %add.ptr.i.i311.i = getelementptr i8, ptr %79, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i311.i, i32 %77) #13, !srcloc !100
  %ops.i.i313.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %80 = ptrtoint ptr %ops.i.i313.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i.i313.i, align 4
  %rf_size.i.i314.i = getelementptr inbounds %struct.rt2x00_ops, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %rf_size.i.i314.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rf_size.i.i314.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %83)
  %cmp1.i.i316.i = icmp ult i32 %83, 4
  br i1 %cmp1.i.i316.i, label %do.body3.i.i317.i, label %rt2x00_rf_write.exit.i319.i, !prof !101

do.body3.i.i317.i:                                ; preds = %if.then.i312.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i319.i:                      ; preds = %if.then.i312.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i318.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %84 = ptrtoint ptr %rf.i.i318.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rf.i.i318.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %74, ptr %85, align 4
  br label %rt2500pci_rf_write.exit320.i

rt2500pci_rf_write.exit320.i:                     ; preds = %rt2x00_rf_write.exit.i319.i, %if.end98.i.rt2500pci_rf_write.exit320.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i305.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i304.i) #13
  %rf2.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 2
  %87 = ptrtoint ptr %rf2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rf2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i321.i) #13
  %89 = ptrtoint ptr %reg.i321.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %reg.i321.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i305.i, i32 noundef 0) #13
  %call.i323.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i321.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323.i)
  %tobool.not.i324.i = icmp eq i32 %call.i323.i, 0
  br i1 %tobool.not.i324.i, label %rt2500pci_rf_write.exit320.i.rt2500pci_rf_write.exit338.i_crit_edge, label %if.then.i329.i

rt2500pci_rf_write.exit320.i.rt2500pci_rf_write.exit338.i_crit_edge: ; preds = %rt2500pci_rf_write.exit320.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_rf_write.exit338.i

if.then.i329.i:                                   ; preds = %rt2500pci_rf_write.exit320.i
  %and19.i325.i = and i32 %88, 16777215
  %or97.i326.i = or i32 %and19.i325.i, -1811939328
  %90 = ptrtoint ptr %reg.i321.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or97.i326.i, ptr %reg.i321.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %91 = call i32 @llvm.bswap.i32(i32 %or97.i326.i) #13
  %csr.i.i327.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %92 = ptrtoint ptr %csr.i.i327.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %csr.i.i327.i, align 4
  %add.ptr.i.i328.i = getelementptr i8, ptr %93, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i328.i, i32 %91) #13, !srcloc !100
  %ops.i.i330.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %94 = ptrtoint ptr %ops.i.i330.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i.i330.i, align 4
  %rf_size.i.i331.i = getelementptr inbounds %struct.rt2x00_ops, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %rf_size.i.i331.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rf_size.i.i331.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %97)
  %cmp1.i.i333.i = icmp ult i32 %97, 8
  br i1 %cmp1.i.i333.i, label %do.body3.i.i334.i, label %rt2x00_rf_write.exit.i337.i, !prof !101

do.body3.i.i334.i:                                ; preds = %if.then.i329.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i337.i:                      ; preds = %if.then.i329.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i335.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %98 = ptrtoint ptr %rf.i.i335.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rf.i.i335.i, align 4
  %arrayidx.i.i336.i = getelementptr i32, ptr %99, i32 1
  %100 = ptrtoint ptr %arrayidx.i.i336.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %88, ptr %arrayidx.i.i336.i, align 4
  br label %rt2500pci_rf_write.exit338.i

rt2500pci_rf_write.exit338.i:                     ; preds = %rt2x00_rf_write.exit.i337.i, %rt2500pci_rf_write.exit320.i.rt2500pci_rf_write.exit338.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i305.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i321.i) #13
  %101 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rf3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i339.i) #13
  %103 = ptrtoint ptr %reg.i339.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %reg.i339.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i305.i, i32 noundef 0) #13
  %call.i341.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i339.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i341.i)
  %tobool.not.i342.i = icmp eq i32 %call.i341.i, 0
  br i1 %tobool.not.i342.i, label %rt2500pci_rf_write.exit338.i.rt2500pci_rf_write.exit356.i_crit_edge, label %if.then.i347.i

rt2500pci_rf_write.exit338.i.rt2500pci_rf_write.exit356.i_crit_edge: ; preds = %rt2500pci_rf_write.exit338.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_rf_write.exit356.i

if.then.i347.i:                                   ; preds = %rt2500pci_rf_write.exit338.i
  %and19.i343.i = and i32 %102, 16777215
  %or97.i344.i = or i32 %and19.i343.i, -1811939328
  %104 = ptrtoint ptr %reg.i339.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or97.i344.i, ptr %reg.i339.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %105 = call i32 @llvm.bswap.i32(i32 %or97.i344.i) #13
  %csr.i.i345.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %106 = ptrtoint ptr %csr.i.i345.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %csr.i.i345.i, align 4
  %add.ptr.i.i346.i = getelementptr i8, ptr %107, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i346.i, i32 %105) #13, !srcloc !100
  %ops.i.i348.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %108 = ptrtoint ptr %ops.i.i348.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops.i.i348.i, align 4
  %rf_size.i.i349.i = getelementptr inbounds %struct.rt2x00_ops, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %rf_size.i.i349.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rf_size.i.i349.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %111)
  %cmp1.i.i351.i = icmp ult i32 %111, 12
  br i1 %cmp1.i.i351.i, label %do.body3.i.i352.i, label %rt2x00_rf_write.exit.i355.i, !prof !101

do.body3.i.i352.i:                                ; preds = %if.then.i347.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i355.i:                      ; preds = %if.then.i347.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i353.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %112 = ptrtoint ptr %rf.i.i353.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rf.i.i353.i, align 4
  %arrayidx.i.i354.i = getelementptr i32, ptr %113, i32 2
  %114 = ptrtoint ptr %arrayidx.i.i354.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %102, ptr %arrayidx.i.i354.i, align 4
  br label %rt2500pci_rf_write.exit356.i

rt2500pci_rf_write.exit356.i:                     ; preds = %rt2x00_rf_write.exit.i355.i, %rt2500pci_rf_write.exit338.i.rt2500pci_rf_write.exit356.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i305.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i339.i) #13
  %rf4101.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 4
  %115 = ptrtoint ptr %rf4101.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rf4101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool102.not.i = icmp eq i32 %116, 0
  br i1 %tobool102.not.i, label %rt2500pci_rf_write.exit356.i.if.end105.i_crit_edge, label %if.then103.i

rt2500pci_rf_write.exit356.i.if.end105.i_crit_edge: ; preds = %rt2500pci_rf_write.exit356.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105.i

if.then103.i:                                     ; preds = %rt2500pci_rf_write.exit356.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i357.i) #13
  %117 = ptrtoint ptr %reg.i357.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %reg.i357.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i305.i, i32 noundef 0) #13
  %call.i359.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i357.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359.i)
  %tobool.not.i360.i = icmp eq i32 %call.i359.i, 0
  br i1 %tobool.not.i360.i, label %if.then103.i.rt2500pci_rf_write.exit374.i_crit_edge, label %if.then.i365.i

if.then103.i.rt2500pci_rf_write.exit374.i_crit_edge: ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_rf_write.exit374.i

if.then.i365.i:                                   ; preds = %if.then103.i
  %and19.i361.i = and i32 %116, 16777215
  %or97.i362.i = or i32 %and19.i361.i, -1811939328
  %118 = ptrtoint ptr %reg.i357.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or97.i362.i, ptr %reg.i357.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %119 = call i32 @llvm.bswap.i32(i32 %or97.i362.i) #13
  %csr.i.i363.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %120 = ptrtoint ptr %csr.i.i363.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %csr.i.i363.i, align 4
  %add.ptr.i.i364.i = getelementptr i8, ptr %121, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i364.i, i32 %119) #13, !srcloc !100
  %ops.i.i366.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %122 = ptrtoint ptr %ops.i.i366.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops.i.i366.i, align 4
  %rf_size.i.i367.i = getelementptr inbounds %struct.rt2x00_ops, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %rf_size.i.i367.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rf_size.i.i367.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %125)
  %cmp1.i.i369.i = icmp ult i32 %125, 16
  br i1 %cmp1.i.i369.i, label %do.body3.i.i370.i, label %rt2x00_rf_write.exit.i373.i, !prof !101

do.body3.i.i370.i:                                ; preds = %if.then.i365.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i373.i:                      ; preds = %if.then.i365.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i371.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %126 = ptrtoint ptr %rf.i.i371.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rf.i.i371.i, align 4
  %arrayidx.i.i372.i = getelementptr i32, ptr %127, i32 3
  %128 = ptrtoint ptr %arrayidx.i.i372.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %116, ptr %arrayidx.i.i372.i, align 4
  br label %rt2500pci_rf_write.exit374.i

rt2500pci_rf_write.exit374.i:                     ; preds = %rt2x00_rf_write.exit.i373.i, %if.then103.i.rt2500pci_rf_write.exit374.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i305.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i357.i) #13
  br label %if.end105.i

if.end105.i:                                      ; preds = %rt2500pci_rf_write.exit374.i, %rt2500pci_rf_write.exit356.i.if.end105.i_crit_edge
  %129 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i375.i) #13
  %131 = ptrtoint ptr %reg.i375.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %reg.i375.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i305.i, i32 noundef 0) #13
  %call.i377.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i375.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i377.i)
  %tobool.not.i378.i = icmp eq i32 %call.i377.i, 0
  br i1 %tobool.not.i378.i, label %if.end105.i.rt2500pci_bbp_write.exit.i_crit_edge, label %if.then.i381.i

if.end105.i.rt2500pci_bbp_write.exit.i_crit_edge: ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit.i

if.then.i381.i:                                   ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %130)
  %cmp122.i = icmp eq i32 %130, 14
  %or100.i.i = select i1 %cmp122.i, i32 116302, i32 116294
  %132 = ptrtoint ptr %reg.i375.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or100.i.i, ptr %reg.i375.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %133 = call i32 @llvm.bswap.i32(i32 %or100.i.i) #13
  %csr.i.i379.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %134 = ptrtoint ptr %csr.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %csr.i.i379.i, align 4
  %add.ptr.i.i380.i = getelementptr i8, ptr %135, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i380.i, i32 %133) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit.i

rt2500pci_bbp_write.exit.i:                       ; preds = %if.then.i381.i, %if.end105.i.rt2500pci_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i305.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i375.i) #13
  call void @msleep(i32 noundef 1) #13
  %136 = ptrtoint ptr %rf1.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %rf1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %137)
  %cmp.i383.i = icmp eq i16 %137, 1
  br i1 %cmp.i383.i, label %rt2500pci_bbp_write.exit.i.if.end172.i_crit_edge, label %if.then142.i

rt2500pci_bbp_write.exit.i.if.end172.i_crit_edge: ; preds = %rt2500pci_bbp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end172.i

if.then142.i:                                     ; preds = %rt2500pci_bbp_write.exit.i
  %138 = ptrtoint ptr %rf199.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rf199.i, align 4
  %and155.i = and i32 %139, -131073
  store i32 %and155.i, ptr %rf199.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i384.i) #13
  %140 = ptrtoint ptr %reg.i384.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %reg.i384.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i305.i, i32 noundef 0) #13
  %call.i386.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i384.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386.i)
  %tobool.not.i387.i = icmp eq i32 %call.i386.i, 0
  br i1 %tobool.not.i387.i, label %if.then142.i.rt2500pci_rf_write.exit400.i_crit_edge, label %if.then.i392.i

if.then142.i.rt2500pci_rf_write.exit400.i_crit_edge: ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_rf_write.exit400.i

if.then.i392.i:                                   ; preds = %if.then142.i
  %and19.i388.i = and i32 %139, 16646143
  %or97.i389.i = or i32 %and19.i388.i, -1811939328
  %141 = ptrtoint ptr %reg.i384.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or97.i389.i, ptr %reg.i384.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %142 = call i32 @llvm.bswap.i32(i32 %or97.i389.i) #13
  %csr.i.i390.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %143 = ptrtoint ptr %csr.i.i390.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %csr.i.i390.i, align 4
  %add.ptr.i.i391.i = getelementptr i8, ptr %144, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i391.i, i32 %142) #13, !srcloc !100
  %ops.i.i393.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %145 = ptrtoint ptr %ops.i.i393.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i.i393.i, align 4
  %rf_size.i.i394.i = getelementptr inbounds %struct.rt2x00_ops, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %rf_size.i.i394.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rf_size.i.i394.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %148)
  %cmp1.i.i396.i = icmp ult i32 %148, 4
  br i1 %cmp1.i.i396.i, label %do.body3.i.i397.i, label %rt2x00_rf_write.exit.i399.i, !prof !101

do.body3.i.i397.i:                                ; preds = %if.then.i392.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i399.i:                      ; preds = %if.then.i392.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i398.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %149 = ptrtoint ptr %rf.i.i398.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rf.i.i398.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %and155.i, ptr %150, align 4
  br label %rt2500pci_rf_write.exit400.i

rt2500pci_rf_write.exit400.i:                     ; preds = %rt2x00_rf_write.exit.i399.i, %if.then142.i.rt2500pci_rf_write.exit400.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i305.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i384.i) #13
  br label %if.end172.i

if.end172.i:                                      ; preds = %rt2500pci_rf_write.exit400.i, %rt2500pci_bbp_write.exit.i.if.end172.i_crit_edge
  %152 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rf3.i, align 4
  %and185.i = and i32 %153, -257
  store i32 %and185.i, ptr %rf3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i401.i) #13
  %154 = ptrtoint ptr %reg.i401.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %reg.i401.i, align 4, !annotation !102
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i305.i, i32 noundef 0) #13
  %call.i403.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i401.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i403.i)
  %tobool.not.i404.i = icmp eq i32 %call.i403.i, 0
  br i1 %tobool.not.i404.i, label %if.end172.i.if.end.thread_crit_edge, label %if.then.i409.i

if.end172.i.if.end.thread_crit_edge:              ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread

if.then.i409.i:                                   ; preds = %if.end172.i
  %and19.i405.i = and i32 %153, 16776959
  %or97.i406.i = or i32 %and19.i405.i, -1811939328
  %155 = ptrtoint ptr %reg.i401.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or97.i406.i, ptr %reg.i401.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %156 = call i32 @llvm.bswap.i32(i32 %or97.i406.i) #13
  %csr.i.i407.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %157 = ptrtoint ptr %csr.i.i407.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %csr.i.i407.i, align 4
  %add.ptr.i.i408.i = getelementptr i8, ptr %158, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i408.i, i32 %156) #13, !srcloc !100
  %ops.i.i410.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %159 = ptrtoint ptr %ops.i.i410.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops.i.i410.i, align 4
  %rf_size.i.i411.i = getelementptr inbounds %struct.rt2x00_ops, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %rf_size.i.i411.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rf_size.i.i411.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %162)
  %cmp1.i.i413.i = icmp ult i32 %162, 12
  br i1 %cmp1.i.i413.i, label %do.body3.i.i414.i, label %rt2x00_rf_write.exit.i417.i, !prof !101

do.body3.i.i414.i:                                ; preds = %if.then.i409.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i417.i:                      ; preds = %if.then.i409.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i.i415.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %163 = ptrtoint ptr %rf.i.i415.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rf.i.i415.i, align 4
  %arrayidx.i.i416.i = getelementptr i32, ptr %164, i32 2
  %165 = ptrtoint ptr %arrayidx.i.i416.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %and185.i, ptr %arrayidx.i.i416.i, align 4
  br label %if.end.thread

if.end.thread:                                    ; preds = %rt2x00_rf_write.exit.i417.i, %if.end172.i.if.end.thread_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i305.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i401.i) #13
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %166 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %167, i32 160
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !97
  %169 = call i32 @llvm.bswap.i32(i32 %168) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %170 = ptrtoint ptr %rf199.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %rf199.i, align 4
  br label %if.end8

if.end:                                           ; preds = %entry
  %171 = and i32 %flags, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %171)
  %172 = icmp eq i32 %171, 32
  br i1 %172, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %ops.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %173 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ops.i.i, align 4
  %rf_size.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %rf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rf_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %176)
  %cmp1.i.i = icmp ult i32 %176, 12
  br i1 %cmp1.i.i, label %do.body3.i.i, label %rt2x00_rf_read.exit.i, !prof !101

do.body3.i.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #13, !srcloc !105
  unreachable

rt2x00_rf_read.exit.i:                            ; preds = %if.then5
  %177 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %libconf, align 4
  %power_level7 = getelementptr inbounds %struct.ieee80211_conf, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %power_level7 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %power_level7, align 4
  %rf.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %181 = ptrtoint ptr %rf.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rf.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %182, i32 2
  %183 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.i.i, align 4
  %conv4.i29 = and i32 %180, 255
  %185 = tail call i32 @llvm.umin.i32(i32 %conv4.i29, i32 31) #13
  %and.i30 = and i32 %184, -15873
  %shl.i31 = shl nuw nsw i32 %185, 9
  %or.i32 = or i32 %and.i30, %shl.i31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i28) #13
  %186 = ptrtoint ptr %reg.i.i28 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 -1, ptr %reg.i.i28, align 4, !annotation !102
  %csr_mutex.i.i33 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i33, i32 noundef 0) #13
  %call.i.i34 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 244, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i.i28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %tobool.not.i.i35, label %rt2x00_rf_read.exit.i.rt2500pci_config_txpower.exit_crit_edge, label %if.then.i.i42

rt2x00_rf_read.exit.i.rt2500pci_config_txpower.exit_crit_edge: ; preds = %rt2x00_rf_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_config_txpower.exit

if.then.i.i42:                                    ; preds = %rt2x00_rf_read.exit.i
  %and19.i.i36 = and i32 %or.i32, 16777215
  %or97.i.i37 = or i32 %and19.i.i36, -1811939328
  %187 = ptrtoint ptr %reg.i.i28 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or97.i.i37, ptr %reg.i.i28, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %188 = call i32 @llvm.bswap.i32(i32 %or97.i.i37) #13
  %csr.i.i.i38 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %189 = ptrtoint ptr %csr.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %csr.i.i.i38, align 4
  %add.ptr.i.i.i39 = getelementptr i8, ptr %190, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i39, i32 %188) #13, !srcloc !100
  %191 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ops.i.i, align 4
  %rf_size.i.i.i40 = getelementptr inbounds %struct.rt2x00_ops, ptr %192, i32 0, i32 4
  %193 = ptrtoint ptr %rf_size.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rf_size.i.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %194)
  %cmp1.i.i.i41 = icmp ult i32 %194, 12
  br i1 %cmp1.i.i.i41, label %do.body3.i.i.i43, label %rt2x00_rf_write.exit.i.i45, !prof !101

do.body3.i.i.i43:                                 ; preds = %if.then.i.i42
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
  unreachable

rt2x00_rf_write.exit.i.i45:                       ; preds = %if.then.i.i42
  call void @__sanitizer_cov_trace_pc() #15
  %195 = ptrtoint ptr %rf.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rf.i.i, align 4
  %arrayidx.i.i.i44 = getelementptr i32, ptr %196, i32 2
  %197 = ptrtoint ptr %arrayidx.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %or.i32, ptr %arrayidx.i.i.i44, align 4
  br label %rt2500pci_config_txpower.exit

rt2500pci_config_txpower.exit:                    ; preds = %rt2x00_rf_write.exit.i.i45, %rt2x00_rf_read.exit.i.rt2500pci_config_txpower.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i33) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i28) #13
  br label %if.end8

if.end8:                                          ; preds = %rt2500pci_config_txpower.exit, %if.end.if.end8_crit_edge, %if.end.thread
  %and9 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %csr.i.i47 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %198 = ptrtoint ptr %csr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %csr.i.i47, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %199, i32 44
  %200 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #13, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %201 = and i32 %200, -65536
  %202 = call i32 @llvm.bswap.i32(i32 %201) #13
  %203 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %libconf, align 4
  %long_frame_max_tx_count.i = getelementptr inbounds %struct.ieee80211_conf, ptr %204, i32 0, i32 5
  %205 = ptrtoint ptr %long_frame_max_tx_count.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %long_frame_max_tx_count.i, align 1
  %conv2.i = zext i8 %206 to i32
  %shl.i49 = shl nuw nsw i32 %conv2.i, 16
  %or.i50 = or i32 %shl.i49, %202
  %short_frame_max_tx_count.i = getelementptr inbounds %struct.ieee80211_conf, ptr %204, i32 0, i32 6
  %207 = ptrtoint ptr %short_frame_max_tx_count.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %short_frame_max_tx_count.i, align 4
  %conv30.i = zext i8 %208 to i32
  %shl37.i = shl nuw i32 %conv30.i, 24
  %or45.i = or i32 %or.i50, %shl37.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %209 = call i32 @llvm.bswap.i32(i32 %or45.i) #13
  %210 = ptrtoint ptr %csr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %csr.i.i47, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %211, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %209) #13, !srcloc !100
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %and13 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  %212 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %libconf, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %213, align 4
  %and.i51 = and i32 %215, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  %csr.i154.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %216 = ptrtoint ptr %csr.i154.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %csr.i154.i, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %217, i32 80
  %218 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155.i) #13
  br i1 %tobool.not.i52, label %if.else.i, label %if.then.i55

if.then.i55:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %219 = shl i32 %218, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %and2.i = and i32 %219, -33554432
  %beacon_int.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 40
  %220 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %beacon_int.i, align 2
  %conv4.i53 = zext i16 %221 to i32
  %sub.i54 = shl nuw nsw i32 %conv4.i53, 4
  %mul.i = add nuw nsw i32 %sub.i54, 65216
  %mul.masked.i = and i32 %mul.i, 65520
  %and29.i = or i32 %mul.masked.i, %and2.i
  %222 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %libconf, align 4
  %listen_interval.i = getelementptr inbounds %struct.ieee80211_conf, ptr %223, i32 0, i32 3
  %224 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %listen_interval.i, align 4
  %conv32.i = zext i16 %225 to i32
  %sub33.i = shl nuw i32 %conv32.i, 16
  %shl40.i = add i32 %sub33.i, 16711680
  %and47.i = and i32 %shl40.i, 16711680
  %or48.i = or i32 %and29.i, %and47.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %226 = call i32 @llvm.bswap.i32(i32 %or48.i) #13
  %227 = ptrtoint ptr %csr.i154.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %csr.i154.i, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %228, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 %226) #13, !srcloc !100
  %or100.i = or i32 %or48.i, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %229 = call i32 @llvm.bswap.i32(i32 %or100.i) #13
  %230 = ptrtoint ptr %csr.i154.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %csr.i154.i, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %231, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i, i32 %229) #13, !srcloc !100
  br label %rt2500pci_config_ps.exit

if.else.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %232 = and i32 %218, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %233 = ptrtoint ptr %csr.i154.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %csr.i154.i, align 4
  %add.ptr.i157.i = getelementptr i8, ptr %234, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i, i32 %232) #13, !srcloc !100
  br label %rt2500pci_config_ps.exit

rt2500pci_config_ps.exit:                         ; preds = %if.else.i, %if.then.i55
  %235 = xor i32 %and.i51, 3
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %236 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ops.i, align 4
  %lib.i = getelementptr inbounds %struct.rt2x00_ops, ptr %237, i32 0, i32 7
  %238 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %lib.i, align 4
  %set_device_state.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %239, i32 0, i32 14
  %240 = ptrtoint ptr %set_device_state.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %set_device_state.i, align 4
  %call128.i = call i32 %241(ptr noundef %rt2x00dev, i32 noundef %235) #13
  br label %if.end16

if.end16:                                         ; preds = %rt2500pci_config_ps.exit, %if.end12.if.end16_crit_edge
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
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !97
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00mmio_register_write(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %offset, i32 noundef %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %csr = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %1 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #13, !srcloc !100
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
define internal fastcc void @rt2500pci_txdone(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %queue_idx) unnamed_addr #2 align 64 {
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
  store i32 -1, ptr %txdesc, align 4, !annotation !102
  %9 = getelementptr inbounds %struct.txdone_entry_desc, ptr %txdesc, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !102
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
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.29)
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
define internal fastcc void @rt2500pci_validate_eeprom(ptr noundef %rt2x00dev) unnamed_addr #2 align 64 {
entry:
  %eeprom = alloca %struct.eeprom_93cx6, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eeprom) #13
  %0 = getelementptr inbounds i8, ptr %eeprom, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %5 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rt2x00dev, ptr %eeprom, align 4
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 1
  %6 = ptrtoint ptr %register_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rt2500pci_eepromregister_read, ptr %register_read, align 4
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %register_write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rt2500pci_eepromregister_write, ptr %register_write, align 4
  %8 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool.not, i32 8, i32 6
  %width = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 3
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %width, align 4
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %eeprom8 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %10 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %reg_data_in, align 1
  %11 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eeprom8, align 8
  call void @eeprom_93cx6_multiread(ptr noundef nonnull %eeprom, i8 noundef zeroext 0, ptr noundef %12, i16 noundef zeroext 256) #13
  %13 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i = getelementptr i16, ptr %14, i32 2
  call void @rt2x00lib_set_mac_address(ptr noundef %rt2x00dev, ptr noundef %arrayidx.i) #13
  %15 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i8 = getelementptr i16, ptr %16, i32 16
  %17 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp12 = icmp eq i16 %18, -1
  br i1 %cmp12, label %if.then, label %entry.if.end233_crit_edge

entry.if.end233_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end233

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 512, ptr %arrayidx.i8, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500pci_validate_eeprom, %if.then229)) #13
          to label %if.end233 [label %if.then229], !srcloc !106

if.then229:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug629, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 2) #13
  br label %if.end233

if.end233:                                        ; preds = %if.then229, %if.then, %entry.if.end233_crit_edge
  %24 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i12 = getelementptr i16, ptr %25, i32 17
  %26 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp236 = icmp eq i16 %27, -1
  br i1 %cmp236, label %if.then238, label %if.end233.if.end349_crit_edge

if.end233.if.end349_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end349

if.then238:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -3841, ptr %arrayidx.i12, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500pci_validate_eeprom, %if.then341)) #13
          to label %if.end349 [label %if.then341], !srcloc !106

if.then341:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #15
  %hw342 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %29 = ptrtoint ptr %hw342 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw342, align 4
  %wiphy343 = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy343 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy343, align 8
  %dev344 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug633, ptr noundef %dev344, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 65520) #13
  br label %if.end349

if.end349:                                        ; preds = %if.then341, %if.then238, %if.end233.if.end349_crit_edge
  %33 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i16 = getelementptr i16, ptr %34, i32 62
  %35 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp352 = icmp eq i16 %36, -1
  br i1 %cmp352, label %if.then354, label %if.end349.if.end405_crit_edge

if.end349.if.end405_crit_edge:                    ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end405

if.then354:                                       ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 31231, ptr %arrayidx.i16, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500pci_validate_eeprom, %if.then397)) #13
          to label %if.end405 [label %if.then397], !srcloc !106

if.then397:                                       ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #15
  %hw398 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %38 = ptrtoint ptr %hw398 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw398, align 4
  %wiphy399 = getelementptr inbounds %struct.ieee80211_hw, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wiphy399 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy399, align 8
  %dev400 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug635, ptr noundef %dev400, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 65401) #13
  br label %if.end405

if.end405:                                        ; preds = %if.then397, %if.then354, %if.end349.if.end405_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_eepromregister_read(ptr nocapture noundef %eeprom) #2 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
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
define internal void @rt2500pci_eepromregister_write(ptr nocapture noundef readonly %eeprom) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or114) #13, !srcloc !100
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

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt2x00_eeprom_write(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word, i16 noundef zeroext %data) #10 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %type = getelementptr i8, ptr %led_cdev, i32 400
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.30)
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #13
  %csr.i66 = getelementptr inbounds %struct.rt2x00_dev, ptr %10, i32 0, i32 20
  %12 = ptrtoint ptr %csr.i66 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i66, align 4
  %add.ptr.i67 = getelementptr i8, ptr %13, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %11) #13, !srcloc !100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500pci_blink_set(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @arm_heavy_mb() #13
  %13 = tail call i32 @llvm.bswap.i32(i32 %or43) #13
  %csr.i50 = getelementptr inbounds %struct.rt2x00_dev, ptr %12, i32 0, i32 20
  %14 = ptrtoint ptr %csr.i50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i50, align 4
  %add.ptr.i51 = getelementptr i8, ptr %15, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %13) #13, !srcloc !100
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_bbp_write(ptr noundef %rt2x00dev, i32 noundef %word, i8 noundef zeroext %value) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !102
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
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %2 = call i32 @llvm.bswap.i32(i32 %or100) #13
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #13, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rt2500pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef %word) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !102
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
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %2 = shl nuw nsw i32 %or45, 8
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #13, !srcloc !100
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt2500pci_set_vgc(ptr noundef %rt2x00dev, ptr nocapture noundef %qual, i8 noundef zeroext %vgc_level) unnamed_addr #7 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %vgc_level_reg = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %0 = ptrtoint ptr %vgc_level_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vgc_level_reg, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %vgc_level)
  %cmp.not = icmp eq i8 %1, %vgc_level
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !102
  %csr_mutex.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 240, [2 x i32] [i32 15, i32 32768], ptr noundef nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.rt2500pci_bbp_write.exit_crit_edge, label %if.then.i

if.then.rt2500pci_bbp_write.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2500pci_bbp_write.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i = zext i8 %vgc_level to i32
  %or100.i = or i32 %conv7.i, 102656
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or100.i, ptr %reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %4 = call i32 @llvm.bswap.i32(i32 %or100.i) #13
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %5 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #13, !srcloc !100
  br label %rt2500pci_bbp_write.exit

rt2500pci_bbp_write.exit:                         ; preds = %if.then.i, %if.then.rt2500pci_bbp_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %vgc_level3 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %7 = ptrtoint ptr %vgc_level3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %vgc_level, ptr %vgc_level3, align 4
  %8 = ptrtoint ptr %vgc_level_reg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %vgc_level, ptr %vgc_level_reg, align 1
  br label %if.end

if.end:                                           ; preds = %rt2500pci_bbp_write.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00queue_map_txskb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00debug_dump_frame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500pci_rf_write(ptr noundef %rt2x00dev, i32 noundef %word, i32 noundef %value) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !102
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
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @arm_heavy_mb() #13
  %2 = call i32 @llvm.bswap.i32(i32 %or97) #13
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #13, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word)
  %cmp.i = icmp eq i32 %word, 0
  br i1 %cmp.i, label %if.then.do.body3.i_crit_edge, label %lor.rhs.i, !prof !101

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
  br i1 %cmp1.i, label %lor.rhs.i.do.body3.i_crit_edge, label %rt2x00_rf_write.exit, !prof !101

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %if.then.do.body3.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !104
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00_rf_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word)
  %cmp = icmp eq i32 %word, 0
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !101

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
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end6, !prof !101

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #13, !srcloc !105
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @rt2500pci_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #2 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %6, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #13, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
  %8 = zext i32 %4 to i64
  %9 = zext i32 %7 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  ret i64 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500pci_tx_last_beacon(ptr nocapture noundef readonly %hw) #2 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !97
  %5 = lshr i32 %4, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !98
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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
attributes #10 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !80, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__UNIQUE_ID_author648, !1, !"__UNIQUE_ID_author648", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2119, i32 1}
!2 = !{ptr @__UNIQUE_ID_version649, !3, !"__UNIQUE_ID_version649", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2120, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description650, !9, !"__UNIQUE_ID_description650", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2121, i32 1}
!10 = !{ptr @__UNIQUE_ID_file651, !11, !"__UNIQUE_ID_file651", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2123, i32 1}
!12 = !{ptr @__UNIQUE_ID_license652, !11, !"__UNIQUE_ID_license652", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_rt2500pci__653_2139_rt2500pci_driver_init6, !14, !"__initcall__kmod_rt2500pci__653_2139_rt2500pci_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2139, i32 1}
!15 = !{ptr @__exitcall_rt2500pci_driver_exit, !14, !"__exitcall_rt2500pci_driver_exit", i1 false, i1 false}
!16 = !{ptr @rt2500pci_driver, !17, !"rt2500pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2131, i32 26}
!18 = !{ptr @rt2500pci_device_table, !19, !"rt2500pci_device_table", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2114, i32 35}
!20 = !{ptr @rt2500pci_ops, !21, !"rt2500pci_ops", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2097, i32 32}
!22 = !{ptr @rt2500pci_rt2x00_ops, !23, !"rt2500pci_rt2x00_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2028, i32 35}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1597, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug629, !25, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1606, i32 3}
!31 = !{ptr @rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug633, !30, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1614, i32 3}
!34 = !{ptr @rt2500pci_validate_eeprom.__UNIQUE_ID_ddebug635, !33, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1646, i32 3}
!37 = !{ptr @rt2500pci_init_eeprom._rs, !36, !"_rs", i1 false, i1 false}
!38 = !{ptr @__func__.rt2500pci_init_eeprom, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rt2500pci_init_eeprom._entry, !36, !"_entry", i1 false, i1 false}
!43 = !{ptr @rt2500pci_init_eeprom._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00.h", i32 1107, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rt2x00_set_chip._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @rt2x00_set_chip._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @rf_vals_bg_2522, !52, !"rf_vals_bg_2522", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1704, i32 32}
!53 = !{ptr @rf_vals_bg_2523, !54, !"rf_vals_bg_2523", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1725, i32 32}
!55 = !{ptr @rf_vals_bg_2524, !56, !"rf_vals_bg_2524", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1746, i32 32}
!57 = !{ptr @rf_vals_bg_2525, !58, !"rf_vals_bg_2525", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1767, i32 32}
!59 = !{ptr @rf_vals_bg_2525e, !60, !"rf_vals_bg_2525e", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1788, i32 32}
!61 = !{ptr @rf_vals_5222, !62, !"rf_vals_5222", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1809, i32 32}
!63 = !{ptr @rt2500pci_set_device_state._rs, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1238, i32 3}
!65 = !{ptr @__func__.rt2500pci_set_device_state, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rt2500pci_set_device_state._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @rt2500pci_set_device_state._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @rt2500pci_wait_bbp_ready._rs, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1050, i32 2}
!71 = !{ptr @__func__.rt2500pci_wait_bbp_ready, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rt2500pci_wait_bbp_ready._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @rt2500pci_wait_bbp_ready._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @rt2500pci_write_beacon._rs, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 1332, i32 3}
!77 = !{ptr @__func__.rt2500pci_write_beacon, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rt2500pci_write_beacon._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @rt2500pci_write_beacon._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @rt2500pci_config_channel.vals, !82, !"vals", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 489, i32 20}
!83 = !{ptr @rt2500pci_mac80211_ops, !84, !"rt2500pci_mac80211_ops", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 2005, i32 35}
!85 = !{ptr @rt2500pci_rt2x00debug, !86, !"rt2500pci_rt2x00debug", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500pci.c", i32 159, i32 33}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2164959606, i64 2164960118, i64 2164959643, i64 2164959699, i64 2164959733, i64 2164959757, i64 2164959798, i64 2164959819, i64 2164959847, i64 2164959881}
!97 = !{i64 6115222}
!98 = !{i64 2158084815}
!99 = !{i64 2158085451}
!100 = !{i64 6114804}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{!"auto-init"}
!103 = !{i64 2159766865, i64 2159767376, i64 2159766902, i64 2159766958, i64 2159766992, i64 2159767016, i64 2159767057, i64 2159767078, i64 2159767106, i64 2159767140}
!104 = !{i64 2158066792, i64 2158067301, i64 2158066829, i64 2158066885, i64 2158066919, i64 2158066943, i64 2158066984, i64 2158067005, i64 2158067033, i64 2158067067}
!105 = !{i64 2158064880, i64 2158065389, i64 2158064917, i64 2158064973, i64 2158065007, i64 2158065031, i64 2158065072, i64 2158065093, i64 2158065121, i64 2158065155}
!106 = !{i64 2148820754, i64 2148820759, i64 2148820772, i64 2148820816, i64 2148820850, i64 2148820871}
