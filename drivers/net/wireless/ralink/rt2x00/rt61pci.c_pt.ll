; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt61pci.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt61pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.antenna_sel = type { i8, [2 x i8] }
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
%struct.txdone_entry_desc = type { i32, i32 }
%struct.queue_entry = type { i32, i32, ptr, ptr, i32, ptr }
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
%struct.rt2x00lib_conf = type { ptr, %struct.rf_channel, %struct.channel_info }
%struct.channel_info = type { i32, i16, i16, i16, i16 }
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
%struct.hw_pairwise_ta_entry = type { [6 x i8], i8, i8 }
%struct.hw_key_entry = type { [16 x i8], [8 x i8], [8 x i8] }
%struct.rt2x00lib_crypto = type { i32, i32, ptr, i32, [16 x i8], [8 x i8], [8 x i8], i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.rt2x00intf_conf = type { i32, i32, [2 x i32], [2 x i32] }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }

@__param_str_nohwcrypt = internal constant [18 x i8] c"rt61pci.nohwcrypt\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_nohwcrypt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype370 = internal constant [32 x i8] c"rt61pci.parmtype=nohwcrypt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt371 = internal constant [52 x i8] c"rt61pci.parm=nohwcrypt:Disable hardware encryption.\00", section ".modinfo", align 1
@__UNIQUE_ID_author739 = internal constant [46 x i8] c"rt61pci.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version740 = internal constant [22 x i8] c"rt61pci.version=2.3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt61pci\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description741 = internal constant [66 x i8] c"rt61pci.description=Ralink RT61 PCI & PCMCIA Wireless LAN driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware742 = internal constant [28 x i8] c"rt61pci.firmware=rt2561.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware743 = internal constant [29 x i8] c"rt61pci.firmware=rt2561s.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware744 = internal constant [28 x i8] c"rt61pci.firmware=rt2661.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_file745 = internal constant [56 x i8] c"rt61pci.file=drivers/net/wireless/ralink/rt2x00/rt61pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license746 = internal constant [20 x i8] c"rt61pci.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rt61pci__747_3016_rt61pci_driver_init6 = internal global ptr @rt61pci_driver_init, section ".initcall6.init", align 4
@rt61pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @rt61pci_device_table, ptr @rt61pci_probe, ptr @rt2x00pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rt61pci_driver_exit = internal global ptr @rt61pci_driver_exit, section ".exitcall.exit", align 4
@rt61pci_device_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6164, i32 769, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 770, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 1025, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rt2x00pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@rt61pci_ops = internal constant { %struct.rt2x00_ops, [52 x i8] } { %struct.rt2x00_ops { ptr @.str.1, i32 0, i32 4, i32 256, i32 16, i32 4, ptr @rt61pci_queue_init, ptr @rt61pci_rt2x00_ops, ptr null, ptr @rt61pci_mac80211_ops, ptr @rt61pci_rt2x00debug }, [52 x i8] zeroinitializer }, align 32
@rt61pci_rt2x00_ops = internal constant { %struct.rt2x00lib_ops, [52 x i8] } { %struct.rt2x00lib_ops { ptr @rt61pci_interrupt, ptr @rt61pci_txstatus_tasklet, ptr null, ptr @rt61pci_tbtt_tasklet, ptr @rt61pci_rxdone_tasklet, ptr @rt61pci_autowake_tasklet, ptr @rt61pci_probe_hw, ptr @rt61pci_get_firmware_name, ptr @rt61pci_check_firmware, ptr @rt61pci_load_firmware, ptr @rt2x00mmio_initialize, ptr @rt2x00mmio_uninitialize, ptr @rt61pci_get_entry_state, ptr @rt61pci_clear_entry, ptr @rt61pci_set_device_state, ptr @rt61pci_rfkill_poll, ptr @rt61pci_link_stats, ptr @rt61pci_reset_tuner, ptr @rt61pci_link_tuner, ptr null, ptr null, ptr null, ptr @rt61pci_start_queue, ptr @rt61pci_kick_queue, ptr @rt61pci_stop_queue, ptr @rt2x00mmio_flush_queue, ptr null, ptr @rt61pci_write_tx_desc, ptr null, ptr @rt61pci_write_beacon, ptr @rt61pci_clear_beacon, ptr null, ptr @rt61pci_fill_rxdone, ptr @rt61pci_config_shared_key, ptr @rt61pci_config_pairwise_key, ptr @rt61pci_config_filter, ptr @rt61pci_config_intf, ptr @rt61pci_config_erp, ptr @rt61pci_config_ant, ptr @rt61pci_config, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rt61pci_mac80211_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rt2x00mac_tx, ptr @rt2x00mac_start, ptr @rt2x00mac_stop, ptr null, ptr null, ptr null, ptr @rt2x00mac_add_interface, ptr null, ptr @rt2x00mac_remove_interface, ptr @rt2x00mac_config, ptr @rt2x00mac_bss_info_changed, ptr null, ptr null, ptr null, ptr @rt2x00mac_configure_filter, ptr null, ptr null, ptr @rt2x00mac_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_sw_scan_start, ptr @rt2x00mac_sw_scan_complete, ptr @rt2x00mac_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt61pci_conf_tx, ptr @rt61pci_get_tsf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_rfkill_poll, ptr null, ptr null, ptr null, ptr @rt2x00mac_flush, ptr null, ptr @rt2x00mac_set_antenna, ptr @rt2x00mac_get_antenna, ptr null, ptr null, ptr null, ptr @rt2x00mac_get_ringparam, ptr @rt2x00mac_tx_frames_pending, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@rt61pci_rt2x00debug = internal constant { %struct.rt2x00debug, [36 x i8] } { %struct.rt2x00debug { ptr null, %struct.regcsr { ptr @rt2x00mmio_register_read, ptr @rt2x00mmio_register_write, i32 1, i32 12288, i32 4, i32 300 }, %struct.regeeprom { ptr @rt2x00_eeprom_read, ptr @rt2x00_eeprom_write, i32 0, i32 0, i32 2, i32 128 }, %struct.regbbp { ptr @rt61pci_bbp_read, ptr @rt61pci_bbp_write, i32 0, i32 0, i32 1, i32 128 }, %struct.regrf { ptr @rt2x00_rf_read, ptr @rt61pci_rf_write, i32 0, i32 4, i32 4, i32 4 }, %struct.regrfcsr zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@rt61pci_txdone._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt61pci_txdone = private unnamed_addr constant [15 x i8] c"rt61pci_txdone\00", align 1
@rt61pci_txdone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.rt61pci_txdone, ptr @.str.5, i32 2117, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Warning - TX status report missed for entry %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/ralink/rt2x00/rt61pci.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt61pci_txdone._entry_ptr = internal global ptr @rt61pci_txdone._entry, section ".printk_index", align 4
@rt61pci_validate_eeprom.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.5, ptr @.str.9, i8 2, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt61pci_validate_eeprom\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: EEPROM recovery - Antenna: 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@rt61pci_validate_eeprom.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.5, ptr @.str.10, i8 2, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: EEPROM recovery - NIC: 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@rt61pci_validate_eeprom.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.5, ptr @.str.11, i8 2, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: EEPROM recovery - Led: 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@rt61pci_validate_eeprom.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.5, ptr @.str.12, i8 2, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: EEPROM recovery - Freq: 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@rt61pci_validate_eeprom.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.5, ptr @.str.13, i8 2, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: EEPROM recovery - RSSI OFFSET BG: 0x%04x\0A\00", [50 x i8] zeroinitializer }, align 32
@rt61pci_validate_eeprom.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.5, ptr @.str.14, i8 2, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: EEPROM recovery - RSSI OFFSET A: 0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@rt61pci_init_eeprom._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt61pci_init_eeprom = private unnamed_addr constant [20 x i8] c"rt61pci_init_eeprom\00", align 1
@rt61pci_init_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.rt61pci_init_eeprom, ptr @.str.5, i32 2430, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error - Invalid RF chipset detected\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rt61pci_init_eeprom._entry_ptr = internal global ptr @rt61pci_init_eeprom._entry, section ".printk_index", align 4
@rt2x00_set_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 1109, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: Info - Chipset detected - rt: %04x, rf: %04x, rev: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt2x00_set_chip\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt2x00_set_chip._entry_ptr = internal global ptr @rt2x00_set_chip._entry, section ".printk_index", align 4
@rf_vals_noseq = internal constant { [42 x %struct.rf_channel], [216 x i8] } { [42 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 11468, i32 18310, i32 427093, i32 1047051 }, %struct.rf_channel { i32 2, i32 11468, i32 18310, i32 427093, i32 1047071 }, %struct.rf_channel { i32 3, i32 11468, i32 18314, i32 427093, i32 1047051 }, %struct.rf_channel { i32 4, i32 11468, i32 18314, i32 427093, i32 1047071 }, %struct.rf_channel { i32 5, i32 11468, i32 18318, i32 427093, i32 1047051 }, %struct.rf_channel { i32 6, i32 11468, i32 18318, i32 427093, i32 1047071 }, %struct.rf_channel { i32 7, i32 11468, i32 18322, i32 427093, i32 1047051 }, %struct.rf_channel { i32 8, i32 11468, i32 18322, i32 427093, i32 1047071 }, %struct.rf_channel { i32 9, i32 11468, i32 18326, i32 427093, i32 1047051 }, %struct.rf_channel { i32 10, i32 11468, i32 18326, i32 427093, i32 1047071 }, %struct.rf_channel { i32 11, i32 11468, i32 18330, i32 427093, i32 1047051 }, %struct.rf_channel { i32 12, i32 11468, i32 18330, i32 427093, i32 1047071 }, %struct.rf_channel { i32 13, i32 11468, i32 18334, i32 427093, i32 1047051 }, %struct.rf_channel { i32 14, i32 11468, i32 18338, i32 427093, i32 1047059 }, %struct.rf_channel { i32 36, i32 11468, i32 18842, i32 638549, i32 1047075 }, %struct.rf_channel { i32 40, i32 11468, i32 18850, i32 638549, i32 1047043 }, %struct.rf_channel { i32 44, i32 11468, i32 18854, i32 638549, i32 1047051 }, %struct.rf_channel { i32 48, i32 11468, i32 18858, i32 638549, i32 1047059 }, %struct.rf_channel { i32 52, i32 11468, i32 18862, i32 634453, i32 1047067 }, %struct.rf_channel { i32 56, i32 11468, i32 18866, i32 634453, i32 1047075 }, %struct.rf_channel { i32 60, i32 11468, i32 18874, i32 634453, i32 1047043 }, %struct.rf_channel { i32 64, i32 11468, i32 18878, i32 634453, i32 1047051 }, %struct.rf_channel { i32 100, i32 11468, i32 18986, i32 765525, i32 1047043 }, %struct.rf_channel { i32 104, i32 11468, i32 18990, i32 765525, i32 1047051 }, %struct.rf_channel { i32 108, i32 11468, i32 18994, i32 765525, i32 1047059 }, %struct.rf_channel { i32 112, i32 11468, i32 18998, i32 765525, i32 1047067 }, %struct.rf_channel { i32 116, i32 11468, i32 19002, i32 769621, i32 1047075 }, %struct.rf_channel { i32 120, i32 11468, i32 19074, i32 769621, i32 1047043 }, %struct.rf_channel { i32 124, i32 11468, i32 19078, i32 769621, i32 1047051 }, %struct.rf_channel { i32 128, i32 11468, i32 19082, i32 769621, i32 1047059 }, %struct.rf_channel { i32 132, i32 11468, i32 19086, i32 769621, i32 1047067 }, %struct.rf_channel { i32 136, i32 11468, i32 19090, i32 769621, i32 1047075 }, %struct.rf_channel { i32 140, i32 11468, i32 19098, i32 769621, i32 1047043 }, %struct.rf_channel { i32 149, i32 11468, i32 19106, i32 769621, i32 1047071 }, %struct.rf_channel { i32 153, i32 11468, i32 19110, i32 769621, i32 1047079 }, %struct.rf_channel { i32 157, i32 11468, i32 19118, i32 769621, i32 1047047 }, %struct.rf_channel { i32 161, i32 11468, i32 19122, i32 769621, i32 1047055 }, %struct.rf_channel { i32 165, i32 11468, i32 19126, i32 769621, i32 1047063 }, %struct.rf_channel { i32 34, i32 11468, i32 18842, i32 638549, i32 1047051 }, %struct.rf_channel { i32 38, i32 11468, i32 18846, i32 638549, i32 1047059 }, %struct.rf_channel { i32 42, i32 11468, i32 18850, i32 638549, i32 1047067 }, %struct.rf_channel { i32 46, i32 11468, i32 18854, i32 638549, i32 1047075 }], [216 x i8] zeroinitializer }, align 32
@rf_vals_seq = internal constant { [42 x %struct.rf_channel], [216 x i8] } { [42 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 11468, i32 18310, i32 427093, i32 1047051 }, %struct.rf_channel { i32 2, i32 11468, i32 18310, i32 427093, i32 1047071 }, %struct.rf_channel { i32 3, i32 11468, i32 18314, i32 427093, i32 1047051 }, %struct.rf_channel { i32 4, i32 11468, i32 18314, i32 427093, i32 1047071 }, %struct.rf_channel { i32 5, i32 11468, i32 18318, i32 427093, i32 1047051 }, %struct.rf_channel { i32 6, i32 11468, i32 18318, i32 427093, i32 1047071 }, %struct.rf_channel { i32 7, i32 11468, i32 18322, i32 427093, i32 1047051 }, %struct.rf_channel { i32 8, i32 11468, i32 18322, i32 427093, i32 1047071 }, %struct.rf_channel { i32 9, i32 11468, i32 18326, i32 427093, i32 1047051 }, %struct.rf_channel { i32 10, i32 11468, i32 18326, i32 427093, i32 1047071 }, %struct.rf_channel { i32 11, i32 11468, i32 18330, i32 427093, i32 1047051 }, %struct.rf_channel { i32 12, i32 11468, i32 18330, i32 427093, i32 1047071 }, %struct.rf_channel { i32 13, i32 11468, i32 18334, i32 427093, i32 1047051 }, %struct.rf_channel { i32 14, i32 11468, i32 18338, i32 427093, i32 1047059 }, %struct.rf_channel { i32 36, i32 11476, i32 280602, i32 623701, i32 788995 }, %struct.rf_channel { i32 40, i32 11472, i32 280194, i32 623701, i32 788995 }, %struct.rf_channel { i32 44, i32 11472, i32 280198, i32 623701, i32 789019 }, %struct.rf_channel { i32 48, i32 11472, i32 280206, i32 624213, i32 789003 }, %struct.rf_channel { i32 52, i32 11472, i32 280210, i32 624725, i32 789027 }, %struct.rf_channel { i32 56, i32 11472, i32 280218, i32 625749, i32 789011 }, %struct.rf_channel { i32 60, i32 11472, i32 280226, i32 626261, i32 788995 }, %struct.rf_channel { i32 64, i32 11472, i32 280230, i32 627285, i32 789019 }, %struct.rf_channel { i32 100, i32 11476, i32 280730, i32 759893, i32 788995 }, %struct.rf_channel { i32 104, i32 11476, i32 280738, i32 759893, i32 788995 }, %struct.rf_channel { i32 108, i32 11476, i32 280746, i32 759893, i32 788995 }, %struct.rf_channel { i32 112, i32 11476, i32 280754, i32 760405, i32 788995 }, %struct.rf_channel { i32 116, i32 11476, i32 280762, i32 760405, i32 788995 }, %struct.rf_channel { i32 120, i32 11472, i32 280322, i32 760405, i32 788995 }, %struct.rf_channel { i32 124, i32 11472, i32 280326, i32 760405, i32 789019 }, %struct.rf_channel { i32 128, i32 11472, i32 280334, i32 760917, i32 789003 }, %struct.rf_channel { i32 132, i32 11472, i32 280338, i32 760917, i32 789027 }, %struct.rf_channel { i32 136, i32 11472, i32 280346, i32 761429, i32 789011 }, %struct.rf_channel { i32 140, i32 11472, i32 280354, i32 761429, i32 788995 }, %struct.rf_channel { i32 149, i32 11472, i32 280366, i32 762453, i32 789019 }, %struct.rf_channel { i32 153, i32 11472, i32 280374, i32 762453, i32 789003 }, %struct.rf_channel { i32 157, i32 11476, i32 280842, i32 762453, i32 789015 }, %struct.rf_channel { i32 161, i32 11476, i32 280850, i32 762453, i32 789015 }, %struct.rf_channel { i32 165, i32 11476, i32 280858, i32 762453, i32 789015 }, %struct.rf_channel { i32 34, i32 11468, i32 18842, i32 638549, i32 789003 }, %struct.rf_channel { i32 38, i32 11468, i32 18846, i32 638549, i32 789011 }, %struct.rf_channel { i32 42, i32 11468, i32 18850, i32 638549, i32 789019 }, %struct.rf_channel { i32 46, i32 11468, i32 18854, i32 638549, i32 789027 }], [216 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt2561.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt2561s.bin\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt2661.bin\00", [21 x i8] zeroinitializer }, align 32
@crc_itu_t_table = external dso_local local_unnamed_addr constant [256 x i16], align 2
@rt61pci_load_firmware._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt61pci_load_firmware = private unnamed_addr constant [22 x i8] c"rt61pci_load_firmware\00", align 1
@rt61pci_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.rt61pci_load_firmware, ptr @.str.5, i32 1216, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Error - Unstable hardware\0A\00", [33 x i8] zeroinitializer }, align 32
@rt61pci_load_firmware._entry_ptr = internal global ptr @rt61pci_load_firmware._entry, section ".printk_index", align 4
@rt61pci_load_firmware._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt61pci_load_firmware._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.rt61pci_load_firmware, ptr @.str.5, i32 1255, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Error - MCU Control register not ready\0A\00", [52 x i8] zeroinitializer }, align 32
@rt61pci_load_firmware._entry_ptr.28 = internal global ptr @rt61pci_load_firmware._entry.26, section ".printk_index", align 4
@rt61pci_set_device_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt61pci_set_device_state = private unnamed_addr constant [25 x i8] c"rt61pci_set_device_state\00", align 1
@rt61pci_set_device_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.rt61pci_set_device_state, ptr @.str.5, i32 1767, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - Device failed to enter state %d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@rt61pci_set_device_state._entry_ptr = internal global ptr @rt61pci_set_device_state._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt61pci_wait_bbp_ready._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt61pci_wait_bbp_ready = private unnamed_addr constant [23 x i8] c"rt61pci_wait_bbp_ready\00", align 1
@rt61pci_wait_bbp_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.rt61pci_wait_bbp_ready, ptr @.str.5, i32 1565, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - BBP register access failed, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@rt61pci_wait_bbp_ready._entry_ptr = internal global ptr @rt61pci_wait_bbp_ready._entry, section ".printk_index", align 4
@rt61pci_write_beacon._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt61pci_write_beacon = private unnamed_addr constant [21 x i8] c"rt61pci_write_beacon\00", align 1
@rt61pci_write_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.rt61pci_write_beacon, ptr @.str.5, i32 1905, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Error - Failure padding beacon, aborting\0A\00", [50 x i8] zeroinitializer }, align 32
@rt61pci_write_beacon._entry_ptr = internal global ptr @rt61pci_write_beacon._entry, section ".printk_index", align 4
@antenna_sel_a = internal constant { [8 x %struct.antenna_sel], [40 x i8] } { [8 x %struct.antenna_sel] [%struct.antenna_sel { i8 96, [2 x i8] c"Xx" }, %struct.antenna_sel { i8 104, [2 x i8] c"8H" }, %struct.antenna_sel { i8 75, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 86, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 88, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 35, [2 x i8] c"``" }, %struct.antenna_sel { i8 97, [2 x i8] c"XX" }, %struct.antenna_sel { i8 98, [2 x i8] c"XX" }], [40 x i8] zeroinitializer }, align 32
@antenna_sel_bg = internal constant { [8 x %struct.antenna_sel], [40 x i8] } { [8 x %struct.antenna_sel] [%struct.antenna_sel { i8 96, [2 x i8] c"Hh" }, %struct.antenna_sel { i8 104, [2 x i8] c",<" }, %struct.antenna_sel { i8 75, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 86, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 88, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 35, [2 x i8] c"PP" }, %struct.antenna_sel { i8 97, [2 x i8] c"HH" }, %struct.antenna_sel { i8 98, [2 x i8] c"HH" }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 14, i64 16]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 16, i64 769, i64 770, i64 1025]
@__sancov_gen_cov_switch_values.34 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 14, i64 16]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"modparam_nohwcrypt\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 31, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2994, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"rt61pci_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 3008, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"rt61pci_device_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2983, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"rt61pci_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2966, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"rt61pci_rt2x00_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2896, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"rt61pci_mac80211_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2873, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"rt61pci_rt2x00debug\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 197, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2116, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2340, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2353, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2361, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2369, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2377, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2393, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2430, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [47 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1107, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"rf_vals_noseq\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2545, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"rf_vals_seq\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 2602, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1154, i32 13 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1157, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1160, i32 13 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1216, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1255, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1766, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1565, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1905, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [14 x i8] c"antenna_sel_a\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 681, i32 33 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"antenna_sel_bg\00", align 1
@___asan_gen_.212 = private constant [48 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt61pci.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 692, i32 33 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author739, ptr @__UNIQUE_ID_description741, ptr @__UNIQUE_ID_file745, ptr @__UNIQUE_ID_firmware742, ptr @__UNIQUE_ID_firmware743, ptr @__UNIQUE_ID_firmware744, ptr @__UNIQUE_ID_license746, ptr @__UNIQUE_ID_nohwcrypt371, ptr @__UNIQUE_ID_nohwcrypttype370, ptr @__UNIQUE_ID_version740, ptr @__exitcall_rt61pci_driver_exit, ptr @__initcall__kmod_rt61pci__747_3016_rt61pci_driver_init6, ptr @__modver_attr, ptr @__param_nohwcrypt, ptr @rt2x00_set_chip._entry, ptr @rt2x00_set_chip._entry_ptr, ptr @rt61pci_driver_exit, ptr @rt61pci_init_eeprom._entry, ptr @rt61pci_init_eeprom._entry_ptr, ptr @rt61pci_load_firmware._entry, ptr @rt61pci_load_firmware._entry.26, ptr @rt61pci_load_firmware._entry_ptr, ptr @rt61pci_load_firmware._entry_ptr.28, ptr @rt61pci_set_device_state._entry, ptr @rt61pci_set_device_state._entry_ptr, ptr @rt61pci_txdone._entry, ptr @rt61pci_txdone._entry_ptr, ptr @rt61pci_wait_bbp_ready._entry, ptr @rt61pci_wait_bbp_ready._entry_ptr, ptr @rt61pci_write_beacon._entry, ptr @rt61pci_write_beacon._entry_ptr, ptr @modparam_nohwcrypt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rt61pci_driver, ptr @rt61pci_device_table, ptr @rt61pci_ops, ptr @rt61pci_rt2x00_ops, ptr @rt61pci_mac80211_ops, ptr @rt61pci_rt2x00debug, ptr @rt61pci_txdone._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rt61pci_init_eeprom._rs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @rf_vals_noseq, ptr @rf_vals_seq, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rt61pci_load_firmware._rs, ptr @.str.24, ptr @rt61pci_load_firmware._rs.25, ptr @.str.27, ptr @rt61pci_set_device_state._rs, ptr @.str.29, ptr @rt61pci_wait_bbp_ready._rs, ptr @.str.30, ptr @rt61pci_write_beacon._rs, ptr @.str.31, ptr @antenna_sel_a, ptr @antenna_sel_bg], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_nohwcrypt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_device_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_rt2x00_ops to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_mac80211_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_rt2x00debug to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_txdone._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_txdone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_init_eeprom._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_init_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00_set_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_noseq to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_seq to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_load_firmware._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_load_firmware._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_load_firmware._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_set_device_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_set_device_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_wait_bbp_ready._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_wait_bbp_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_write_beacon._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt61pci_write_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @antenna_sel_a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @antenna_sel_bg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rt61pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @rt61pci_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_probe(ptr noundef %pci_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rt2x00pci_probe(ptr noundef %pci_dev, ptr noundef nonnull @rt61pci_ops) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00pci_remove(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00pci_probe(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_queue_init(ptr nocapture noundef %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qid, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 14, label %entry.sw.epilog_crit_edge
    i32 0, label %entry.sw.epilog_crit_edge28
    i32 1, label %entry.sw.epilog_crit_edge29
    i32 2, label %entry.sw.epilog_crit_edge30
    i32 3, label %entry.sw.epilog_crit_edge31
    i32 16, label %sw.bb6
  ]

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt61pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2961, 0\0A.popsection", ""() #14, !srcloc !137
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge28, %entry.sw.epilog_crit_edge29, %entry.sw.epilog_crit_edge30, %entry.sw.epilog_crit_edge31
  %.sink27 = phi i16 [ 4, %sw.bb6 ], [ 32, %entry.sw.epilog_crit_edge ], [ 32, %entry.sw.epilog_crit_edge28 ], [ 32, %entry.sw.epilog_crit_edge29 ], [ 32, %entry.sw.epilog_crit_edge30 ], [ 32, %entry.sw.epilog_crit_edge31 ]
  %.sink26 = phi i16 [ 0, %sw.bb6 ], [ 2432, %entry.sw.epilog_crit_edge ], [ 2432, %entry.sw.epilog_crit_edge28 ], [ 2432, %entry.sw.epilog_crit_edge29 ], [ 2432, %entry.sw.epilog_crit_edge30 ], [ 2432, %entry.sw.epilog_crit_edge31 ]
  %.sink = phi i8 [ 24, %sw.bb6 ], [ 64, %entry.sw.epilog_crit_edge ], [ 64, %entry.sw.epilog_crit_edge28 ], [ 64, %entry.sw.epilog_crit_edge29 ], [ 64, %entry.sw.epilog_crit_edge30 ], [ 64, %entry.sw.epilog_crit_edge31 ]
  %limit7 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 8
  %3 = ptrtoint ptr %limit7 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %.sink27, ptr %limit7, align 4
  %data_size8 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 18
  %4 = ptrtoint ptr %data_size8 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink26, ptr %data_size8, align 4
  %desc_size9 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 19
  %5 = ptrtoint ptr %desc_size9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %desc_size9, align 2
  %priv_size10 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 21
  %6 = ptrtoint ptr %priv_size10 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8, ptr %priv_size10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %2) #14, !srcloc !141
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %6, i32 13416
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #14, !srcloc !138
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %10, i32 13416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %7) #14, !srcloc !141
  %11 = or i32 %7, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 13
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not = icmp eq i32 %16, 0
  br i1 %tobool14.not, label %if.end6.if.end16_crit_edge, label %if.then15

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %if.end6
  %state.i = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 60, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then15.if.end16_crit_edge

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %rxdone_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 60
  tail call void @__tasklet_schedule(ptr noundef %rxdone_tasklet) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then.i, %if.then15.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %and29 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool37.not = icmp eq i32 %and29, 0
  br i1 %tobool37.not, label %if.end16.if.end39_crit_edge, label %if.then38

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then38:                                        ; preds = %if.end16
  %state.i126 = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 57, i32 1
  %call.i127 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i126) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i128 = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i128, label %if.then.i129, label %if.then38.if.end39_crit_edge

if.then38.if.end39_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then.i129:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  %txstatus_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 57
  tail call void @__tasklet_schedule(ptr noundef %txstatus_tasklet) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then.i129, %if.then38.if.end39_crit_edge, %if.end16.if.end39_crit_edge
  %17 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool60.not = icmp eq i32 %17, 0
  br i1 %tobool60.not, label %if.end39.if.end62_crit_edge, label %if.then61

if.end39.if.end62_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then61:                                        ; preds = %if.end39
  %state.i131 = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 59, i32 1
  %call.i132 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i131) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i133, label %if.then.i134, label %if.then61.if.end62_crit_edge

if.then61.if.end62_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then.i134:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  %tbtt_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 59
  tail call void @__tasklet_hi_schedule(ptr noundef %tbtt_tasklet) #14
  br label %if.end62

if.end62:                                         ; preds = %if.then.i134, %if.then61.if.end62_crit_edge, %if.end39.if.end62_crit_edge
  %18 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool83.not = icmp eq i32 %18, 0
  br i1 %tobool83.not, label %if.end62.if.end85_crit_edge, label %if.then84

if.end62.if.end85_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then84:                                        ; preds = %if.end62
  %state.i135 = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 61, i32 1
  %call.i136 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i135) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i137 = icmp eq i32 %call.i136, 0
  br i1 %tobool.not.i137, label %if.then.i138, label %if.then84.if.end85_crit_edge

if.then84.if.end85_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then.i138:                                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  %autowake_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 61
  tail call void @__tasklet_schedule(ptr noundef %autowake_tasklet) #14
  br label %if.end85

if.end85:                                         ; preds = %if.then.i138, %if.then84.if.end85_crit_edge, %if.end62.if.end85_crit_edge
  %irqmask_lock = getelementptr inbounds %struct.rt2x00_dev, ptr %dev_instance, i32 0, i32 63
  tail call void @_raw_spin_lock(ptr noundef %irqmask_lock) #14
  %19 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %20, i32 13420
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %22 = or i32 %21, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %23 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %24, i32 13420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %22) #14, !srcloc !141
  %25 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %28 = or i32 %27, %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %29 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %28) #14, !srcloc !141
  tail call void @_raw_spin_unlock(ptr noundef %irqmask_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end85 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_txstatus_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %txdesc.i = alloca %struct.txdone_entry_desc, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %txdesc.i) #14
  %0 = ptrtoint ptr %txdesc.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %txdesc.i, align 4, !annotation !142
  %1 = getelementptr inbounds %struct.txdone_entry_desc, ptr %txdesc.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !142
  %csr.i.i = getelementptr i8, ptr %t, i32 -1116
  %tx.i = getelementptr i8, ptr %t, i32 -88
  %3 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx.i, align 8
  %limit215.i = getelementptr inbounds %struct.data_queue, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %limit215.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %limit215.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp217.not.i = icmp eq i16 %6, 0
  br i1 %cmp217.not.i, label %entry.rt61pci_txdone.exit_crit_edge, label %for.body.lr.ph.i

entry.rt61pci_txdone.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_txdone.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %ops.i.i = getelementptr i8, ptr %t, i32 -3020
  %hw.i = getelementptr i8, ptr %t, i32 -3012
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0218.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 12496
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !138
  %10 = call i32 @llvm.bswap.i32(i32 %9) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.rt61pci_txdone.exit_crit_edge, label %if.end.i

for.body.i.rt61pci_txdone.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_txdone.exit

if.end.i:                                         ; preds = %for.body.i
  %and24.i = lshr i32 %10, 13
  %shr31.i = and i32 %and24.i, 7
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %tx_queues.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %shr31.i)
  %cmp.i.i = icmp ugt i32 %14, %shr31.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %15 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  %arrayidx.i.i = getelementptr %struct.data_queue, ptr %16, i32 %shr31.i
  %tobool33.not.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond211.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool33.not.i
  br i1 %or.cond211.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %if.end38.i, !prof !143

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end38.i:                                       ; preds = %land.lhs.true.i.i
  %and51.i = lshr i32 %10, 8
  %shr58.i = and i32 %and51.i, 31
  %limit59.i = getelementptr %struct.data_queue, ptr %16, i32 %shr31.i, i32 8
  %17 = ptrtoint ptr %limit59.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %limit59.i, align 4
  %conv60.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr58.i, i32 %conv60.i)
  %cmp61.not.i = icmp ult i32 %shr58.i, %conv60.i
  br i1 %cmp61.not.i, label %if.end70.i, label %if.end38.i.for.inc.i_crit_edge, !prof !144

if.end38.i.for.inc.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end70.i:                                       ; preds = %if.end38.i
  %entries.i = getelementptr %struct.data_queue, ptr %16, i32 %shr31.i, i32 1
  %19 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entries.i, align 4
  %arrayidx.i = getelementptr %struct.queue_entry, ptr %20, i32 %shr58.i
  %priv_data.i = getelementptr %struct.queue_entry, ptr %20, i32 %shr58.i, i32 5
  %21 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv_data.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = and i32 %26, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %27)
  %.not.i = icmp eq i32 %27, 33554432
  br i1 %.not.i, label %if.end115.i, label %if.end70.i.rt61pci_txdone.exit_crit_edge

if.end70.i.rt61pci_txdone.exit_crit_edge:         ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_txdone.exit

if.end115.i:                                      ; preds = %if.end70.i
  %call116.i = call ptr @rt2x00queue_get_entry(ptr noundef nonnull %arrayidx.i.i, i32 noundef 2) #14
  %cmp117.not212.i = icmp eq ptr %arrayidx.i, %call116.i
  br i1 %cmp117.not212.i, label %if.end115.i.while.end.i_crit_edge, label %if.end115.i.do.body119.i_crit_edge

if.end115.i.do.body119.i_crit_edge:               ; preds = %if.end115.i
  br label %do.body119.i

if.end115.i.while.end.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.body119.i:                                     ; preds = %do.end128.i.do.body119.i_crit_edge, %if.end115.i.do.body119.i_crit_edge
  %entry_done.0213.i = phi ptr [ %call129.i, %do.end128.i.do.body119.i_crit_edge ], [ %call116.i, %if.end115.i.do.body119.i_crit_edge ]
  %call120.i = call i32 @___ratelimit(ptr noundef nonnull @rt61pci_txdone._rs, ptr noundef nonnull @__func__.rt61pci_txdone) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %do.body119.i.do.end128.i_crit_edge, label %do.end125.i

do.body119.i.do.end128.i_crit_edge:               ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end128.i

do.end125.i:                                      ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  %entry_idx.i = getelementptr inbounds %struct.queue_entry, ptr %entry_done.0213.i, i32 0, i32 4
  %32 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %entry_idx.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rt61pci_txdone, i32 noundef %33) #17
  br label %do.end128.i

do.end128.i:                                      ; preds = %do.end125.i, %do.body119.i.do.end128.i_crit_edge
  call void @rt2x00lib_txdone_noinfo(ptr noundef %entry_done.0213.i, i32 noundef 0) #14
  %call129.i = call ptr @rt2x00queue_get_entry(ptr noundef nonnull %arrayidx.i.i, i32 noundef 2) #14
  %cmp117.not.i = icmp eq ptr %arrayidx.i, %call129.i
  br i1 %cmp117.not.i, label %do.end128.i.while.end.i_crit_edge, label %do.end128.i.do.body119.i_crit_edge

do.end128.i.do.body119.i_crit_edge:               ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body119.i

do.end128.i.while.end.i_crit_edge:                ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end128.i.while.end.i_crit_edge, %if.end115.i.while.end.i_crit_edge
  %34 = ptrtoint ptr %txdesc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %txdesc.i, align 4
  %and142.i = lshr i32 %10, 1
  %shr149.i = and i32 %and142.i, 7
  %35 = zext i32 %shr149.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr149.i, label %while.end.i.sw.default.i_crit_edge [
    i32 0, label %while.end.i.sw.epilog.i_crit_edge
    i32 6, label %sw.bb151.i
  ]

while.end.i.sw.epilog.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

while.end.i.sw.default.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default.i

sw.bb151.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %txdesc.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %txdesc.i, align 4
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb151.i, %while.end.i.sw.default.i_crit_edge
  %37 = ptrtoint ptr %txdesc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %txdesc.i, align 4
  %or.i207.i = or i32 %38, 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %while.end.i.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ %or.i207.i, %sw.default.i ], [ 2, %while.end.i.sw.epilog.i_crit_edge ]
  %39 = ptrtoint ptr %txdesc.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge.i, ptr %txdesc.i, align 4
  %and166.i = lshr i32 %10, 4
  %shr173.i = and i32 %and166.i, 15
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr173.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr173.i)
  %tobool175.not.i = icmp eq i32 %shr173.i, 0
  br i1 %tobool175.not.i, label %sw.epilog.i.if.end178.i_crit_edge, label %if.then176.i

sw.epilog.i.if.end178.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end178.i

if.then176.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i208.i = or i32 %storemerge.i, 4
  %41 = ptrtoint ptr %txdesc.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i208.i, ptr %txdesc.i, align 4
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.then176.i, %sw.epilog.i.if.end178.i_crit_edge
  call void @rt2x00lib_txdone(ptr noundef %arrayidx.i, ptr noundef nonnull %txdesc.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end178.i, %if.end38.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0218.i, 1
  %42 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx.i, align 8
  %limit.i = getelementptr inbounds %struct.data_queue, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %limit.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %limit.i, align 4
  %conv.i = zext i16 %45 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.rt61pci_txdone.exit_crit_edge

for.inc.i.rt61pci_txdone.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_txdone.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

rt61pci_txdone.exit:                              ; preds = %for.inc.i.rt61pci_txdone.exit_crit_edge, %if.end70.i.rt61pci_txdone.exit_crit_edge, %for.body.i.rt61pci_txdone.exit_crit_edge, %entry.rt61pci_txdone.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %txdesc.i) #14
  %flags = getelementptr i8, ptr %t, i32 -1200
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags, align 4
  %48 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not = icmp eq i32 %48, 0
  br i1 %tobool.not, label %rt61pci_txdone.exit.if.end_crit_edge, label %if.then

rt61pci_txdone.exit.if.end_crit_edge:             ; preds = %rt61pci_txdone.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %rt61pci_txdone.exit
  call void @__sanitizer_cov_trace_pc() #16
  %irqmask_lock.i = getelementptr i8, ptr %t, i32 124
  call void @_raw_spin_lock_irq(ptr noundef %irqmask_lock.i) #14
  %49 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %50, i32 13420
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4) #14, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %52 = and i32 %51, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %53 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %54, i32 13420
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %52) #14, !srcloc !141
  call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %rt61pci_txdone.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_tbtt_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3072
  tail call void @rt2x00lib_beacondone(ptr noundef %add.ptr) #14
  %flags = getelementptr i8, ptr %t, i32 -1248
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %irqmask_lock.i = getelementptr i8, ptr %t, i32 76
  tail call void @_raw_spin_lock_irq(ptr noundef %irqmask_lock.i) #14
  %csr.i.i = getelementptr i8, ptr %t, i32 -1164
  %3 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 13420
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %6 = and i32 %5, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %7 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %8, i32 13420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %6) #14, !srcloc !141
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_rxdone_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3096
  %call = tail call zeroext i1 @rt2x00mmio_rxdone(ptr noundef %add.ptr) #14
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__tasklet_schedule(ptr noundef %t) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %irqmask_lock.i = getelementptr i8, ptr %t, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %irqmask_lock.i) #14
  %csr.i.i = getelementptr i8, ptr %t, i32 -1188
  %3 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 13420
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %6 = and i32 %5, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %7 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %8, i32 13420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %6) #14, !srcloc !141
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock.i) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else.if.end3_crit_edge, %if.then.i, %if.then.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_autowake_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %libconf.i = alloca %struct.rt2x00lib_conf, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3120
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %libconf.i) #14
  %0 = getelementptr inbounds i8, ptr %libconf.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %hw.i = getelementptr i8, ptr %t, i32 -3108
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %4 = ptrtoint ptr %libconf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %libconf.i, align 4
  call void @rt61pci_config(ptr noundef %add.ptr, ptr noundef nonnull %libconf.i, i32 noundef 16) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %libconf.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %csr.i = getelementptr i8, ptr %t, i32 -1212
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #14, !srcloc !141
  %flags = getelementptr i8, ptr %t, i32 -1296
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %irqmask_lock.i = getelementptr i8, ptr %t, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %irqmask_lock.i) #14
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %13 = and i32 %12, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %13) #14, !srcloc !141
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqmask_lock.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_probe_hw(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #14, !srcloc !141
  tail call fastcc void @rt61pci_validate_eeprom(ptr noundef %rt2x00dev)
  %eeprom.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %2 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 16
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #14
  %conv2.i = zext i16 %6 to i32
  %7 = lshr i16 %6, 11
  %8 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 12288
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !138
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %and23.i = lshr i32 %11, 4
  %conv31.i = trunc i32 %and23.i to i16
  %12 = trunc i32 %11 to i16
  %conv52.i = and i16 %12, 15
  %chip.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17
  %13 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv31.i, ptr %chip.i.i, align 8
  %rf3.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %7, ptr %rf3.i.i, align 2
  %rev5.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %rev5.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv52.i, ptr %rev5.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %16 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  %conv.i.i = and i32 %and23.i, 65535
  %conv10.i.i = zext i16 %7 to i32
  %conv13.i.i = zext i16 %conv52.i to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %conv.i.i, i32 noundef %conv10.i.i, i32 noundef %conv13.i.i) #17
  %20 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rf3.i.i, align 2
  %.off.i = add i16 %21, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 4
  br i1 %switch.i, label %if.end67.i, label %do.body59.i

do.body59.i:                                      ; preds = %entry
  %call60.i = tail call i32 @___ratelimit(ptr noundef nonnull @rt61pci_init_eeprom._rs, ptr noundef nonnull @__func__.rt61pci_init_eeprom) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool.not.i, label %do.body59.i.cleanup_crit_edge, label %do.end64.i

do.body59.i.cleanup_crit_edge:                    ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end64.i:                                       ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rt61pci_init_eeprom) #17
  br label %cleanup

if.end67.i:                                       ; preds = %entry
  %and81.i = and i32 %conv2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and81.i)
  %cmp89.i = icmp eq i32 %and81.i, 2
  br i1 %cmp89.i, label %if.then91.i, label %if.end67.i.if.end92.i_crit_edge

if.end67.i.if.end92.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

if.then91.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %26 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cap_flags.i, align 4
  %or.i.i = or i32 %27, 8388608
  store i32 %or.i.i, ptr %cap_flags.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then91.i, %if.end67.i.if.end92.i_crit_edge
  %and106.i = lshr i32 %conv2.i, 2
  %28 = and i32 %and106.i, 3
  %default_ant.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19
  %tx.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19, i32 1
  %29 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx.i, align 4
  %and127.i = lshr i32 %conv2.i, 4
  %30 = and i32 %and127.i, 3
  %31 = ptrtoint ptr %default_ant.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %default_ant.i, align 8
  %32 = and i32 %conv2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool157.not.i = icmp eq i32 %32, 0
  br i1 %tobool157.not.i, label %if.end92.i.if.end160.i_crit_edge, label %if.then158.i

if.end92.i.if.end160.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160.i

if.then158.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_flags159.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %33 = ptrtoint ptr %cap_flags159.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cap_flags159.i, align 4
  %or.i969.i = or i32 %34, 524288
  store i32 %or.i969.i, ptr %cap_flags159.i, align 4
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then158.i, %if.end92.i.if.end160.i_crit_edge
  %35 = and i32 %conv2.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool182.not.i = icmp eq i32 %35, 0
  br i1 %tobool182.not.i, label %if.end160.i.if.end185.i_crit_edge, label %if.then183.i

if.end160.i.if.end185.i_crit_edge:                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end185.i

if.then183.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_flags184.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %36 = ptrtoint ptr %cap_flags184.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cap_flags184.i, align 4
  %or.i970.i = or i32 %37, 4096
  store i32 %or.i970.i, ptr %cap_flags184.i, align 4
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.then183.i, %if.end160.i.if.end185.i_crit_edge
  %38 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i981.i = getelementptr i16, ptr %39, i32 47
  %40 = ptrtoint ptr %arrayidx.i981.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i981.i, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #14
  %43 = and i16 %42, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool208.not.i = icmp eq i16 %43, 0
  br i1 %tobool208.not.i, label %if.end185.i.if.end211.i_crit_edge, label %if.then209.i

if.end185.i.if.end211.i_crit_edge:                ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end211.i

if.then209.i:                                     ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_flags210.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %44 = ptrtoint ptr %cap_flags210.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cap_flags210.i, align 4
  %or.i971.i = or i32 %45, 1048576
  store i32 %or.i971.i, ptr %cap_flags210.i, align 4
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.then209.i, %if.end185.i.if.end211.i_crit_edge
  %conv234.i = trunc i16 %42 to i8
  %freq_offset.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 38
  %46 = ptrtoint ptr %freq_offset.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv234.i, ptr %freq_offset.i, align 1
  %arrayidx.i983.i = getelementptr i16, ptr %39, i32 17
  %47 = ptrtoint ptr %arrayidx.i983.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i983.i, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #14
  %conv242.i = zext i16 %49 to i32
  %50 = and i32 %conv242.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool257.not.i = icmp eq i32 %50, 0
  br i1 %tobool257.not.i, label %if.end211.i.if.end260.i_crit_edge, label %if.then258.i

if.end211.i.if.end260.i_crit_edge:                ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end260.i

if.then258.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_flags259.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %51 = ptrtoint ptr %cap_flags259.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cap_flags259.i, align 4
  %or.i972.i = or i32 %52, 2097152
  store i32 %or.i972.i, ptr %cap_flags259.i, align 4
  br label %if.end260.i

if.end260.i:                                      ; preds = %if.then258.i, %if.end211.i.if.end260.i_crit_edge
  %53 = and i32 %conv242.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool282.not.i = icmp eq i32 %53, 0
  br i1 %tobool282.not.i, label %if.end260.i.if.end285.i_crit_edge, label %if.then283.i

if.end260.i.if.end285.i_crit_edge:                ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end285.i

if.then283.i:                                     ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_flags284.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %54 = ptrtoint ptr %cap_flags284.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cap_flags284.i, align 4
  %or.i973.i = or i32 %55, 4194304
  store i32 %or.i973.i, ptr %cap_flags284.i, align 4
  br label %if.end285.i

if.end285.i:                                      ; preds = %if.then283.i, %if.end260.i.if.end285.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %21)
  %cmp.i985.i = icmp eq i16 %21, 4
  br i1 %cmp.i985.i, label %land.lhs.true288.i, label %if.end285.i.if.end389.i_crit_edge

if.end285.i.if.end389.i_crit_edge:                ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end389.i

land.lhs.true288.i:                               ; preds = %if.end285.i
  %cap_flags.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %56 = ptrtoint ptr %cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %cap_flags.i.i.i, align 4
  %58 = and i32 %57, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.i.not.i = icmp eq i32 %58, 0
  br i1 %tobool.i.i.not.i, label %if.then290.i, label %land.lhs.true288.i.if.end389.i_crit_edge

land.lhs.true288.i.if.end389.i_crit_edge:         ; preds = %land.lhs.true288.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end389.i

if.then290.i:                                     ; preds = %land.lhs.true288.i
  %and304.i = lshr i32 %conv242.i, 2
  %59 = and i32 %and304.i, 1
  %add.i = add nuw nsw i32 %59, 1
  %60 = ptrtoint ptr %default_ant.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i, ptr %default_ant.i, align 8
  %61 = shl i32 %conv242.i, 28
  %62 = ashr i32 %61, 31
  %sub.i = add nsw i32 %62, 2
  %63 = and i32 %conv242.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool358.not.i = icmp eq i32 %63, 0
  %spec.select.i = select i1 %tobool358.not.i, i32 %sub.i, i32 0
  %64 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.select.i, ptr %tx.i, align 4
  %and376.i = and i32 %conv242.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376.i)
  %tobool384.not.i = icmp eq i32 %and376.i, 0
  br i1 %tobool384.not.i, label %if.then290.i.if.end389.i_crit_edge, label %if.then385.i

if.then290.i.if.end389.i_crit_edge:               ; preds = %if.then290.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end389.i

if.then385.i:                                     ; preds = %if.then290.i
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %default_ant.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %default_ant.i, align 8
  br label %if.end389.i

if.end389.i:                                      ; preds = %if.then385.i, %if.then290.i.if.end389.i_crit_edge, %land.lhs.true288.i.if.end389.i_crit_edge, %if.end285.i.if.end389.i_crit_edge
  %arrayidx.i987.i = getelementptr i16, ptr %39, i32 48
  %66 = ptrtoint ptr %arrayidx.i987.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i987.i, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #14
  %and404.i = lshr i16 %68, 8
  %led_radio.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9
  %69 = ptrtoint ptr %led_radio.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %rt2x00dev, ptr %led_radio.i, align 4
  %type2.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 2
  %70 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %type2.i.i, align 4
  %brightness_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 5
  %71 = ptrtoint ptr %brightness_set.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @rt61pci_brightness_set, ptr %brightness_set.i.i, align 4
  %blink_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 8
  %72 = ptrtoint ptr %blink_set.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @rt61pci_blink_set, ptr %blink_set.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %73 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %flags.i.i, align 4
  %led_assoc.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10
  %74 = ptrtoint ptr %led_assoc.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %rt2x00dev, ptr %led_assoc.i, align 4
  %type2.i988.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 2
  %75 = ptrtoint ptr %type2.i988.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %type2.i988.i, align 4
  %brightness_set.i989.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 5
  %76 = ptrtoint ptr %brightness_set.i989.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @rt61pci_brightness_set, ptr %brightness_set.i989.i, align 4
  %blink_set.i990.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 8
  %77 = ptrtoint ptr %blink_set.i990.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @rt61pci_blink_set, ptr %blink_set.i990.i, align 4
  %flags.i991.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 3
  %78 = ptrtoint ptr %flags.i991.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %flags.i991.i, align 4
  %79 = and i16 %68, 7936
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %79)
  %cmp414.i = icmp eq i16 %79, 512
  br i1 %cmp414.i, label %if.then416.i, label %if.end389.i.if.end5_crit_edge

if.end389.i.if.end5_crit_edge:                    ; preds = %if.end389.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then416.i:                                     ; preds = %if.end389.i
  call void @__sanitizer_cov_trace_pc() #16
  %led_qual.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11
  %80 = ptrtoint ptr %led_qual.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %rt2x00dev, ptr %led_qual.i, align 4
  %type2.i992.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 2
  %81 = ptrtoint ptr %type2.i992.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %type2.i992.i, align 4
  %brightness_set.i993.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %82 = ptrtoint ptr %brightness_set.i993.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @rt61pci_brightness_set, ptr %brightness_set.i993.i, align 4
  %blink_set.i994.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 8
  %83 = ptrtoint ptr %blink_set.i994.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @rt61pci_blink_set, ptr %blink_set.i994.i, align 4
  %flags.i995.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %84 = ptrtoint ptr %flags.i995.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %flags.i995.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then416.i, %if.end389.i.if.end5_crit_edge
  %led_mcu_reg.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 12
  %85 = ptrtoint ptr %led_mcu_reg.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %led_mcu_reg.i, align 4
  %87 = and i16 %86, 224
  %88 = and i16 %and404.i, 31
  %89 = shl i16 %68, 5
  %shl493.i = and i16 %89, 256
  %shl548.i = and i16 %89, 512
  %shl603.i = and i16 %89, 1024
  %shl658.i = and i16 %89, 2048
  %shl713.i = and i16 %89, 4096
  %90 = shl i16 %68, 11
  %shl768.i = and i16 %90, 8192
  %and809.i = shl i16 %68, 14
  %or966.i = or i16 %88, %and809.i
  %or503.i = or i16 %or966.i, %shl493.i
  %or558.i = or i16 %or503.i, %shl548.i
  %or613.i = or i16 %or558.i, %shl603.i
  %.masked.masked.masked.i = or i16 %or613.i, %shl658.i
  %.masked967.masked.i = or i16 %.masked.masked.masked.i, %shl713.i
  %91 = or i16 %.masked967.masked.i, %shl768.i
  %or888968.i = or i16 %91, %87
  store i16 %or888968.i, ptr %led_mcu_reg.i, align 4
  %92 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %csr.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %93, i32 12340
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %95 = or i32 %94, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %96 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %csr.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %97, i32 12340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %95) #14, !srcloc !141
  %spec1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18
  %98 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i58 = getelementptr inbounds %struct.ieee80211_hw, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %wiphy.i58 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wiphy.i58, align 8
  %flags.i = getelementptr inbounds %struct.wiphy, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %103, -17
  store i32 %and.i, ptr %flags.i, align 32
  %104 = load ptr, ptr %hw.i.i, align 4
  %flags.i.i59 = getelementptr inbounds %struct.ieee80211_hw, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %flags.i.i59 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags.i.i59, align 4
  %or.i.i.i = or i32 %106, 512
  store i32 %or.i.i.i, ptr %flags.i.i59, align 4
  %107 = load ptr, ptr %hw.i.i, align 4
  %flags.i113.i = getelementptr inbounds %struct.ieee80211_hw, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %flags.i113.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i113.i, align 4
  %or.i.i114.i = or i32 %109, 256
  store i32 %or.i.i114.i, ptr %flags.i113.i, align 4
  %110 = load ptr, ptr %hw.i.i, align 4
  %flags.i115.i = getelementptr inbounds %struct.ieee80211_hw, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %flags.i115.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags.i115.i, align 4
  %or.i.i116.i = or i32 %112, 4
  store i32 %or.i.i116.i, ptr %flags.i115.i, align 4
  %113 = load ptr, ptr %hw.i.i, align 4
  %flags.i117.i = getelementptr inbounds %struct.ieee80211_hw, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %flags.i117.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags.i117.i, align 4
  %or.i.i118.i = or i32 %115, 16
  store i32 %or.i.i118.i, ptr %flags.i117.i, align 4
  %116 = load ptr, ptr %hw.i.i, align 4
  %117 = ptrtoint ptr %rt2x00dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rt2x00dev, align 8
  %wiphy.i.i60 = getelementptr inbounds %struct.ieee80211_hw, ptr %116, i32 0, i32 1
  %119 = ptrtoint ptr %wiphy.i.i60 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wiphy.i.i60, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %120, i32 0, i32 56, i32 1
  %121 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %parent.i.i.i, align 8
  %122 = load ptr, ptr %hw.i.i, align 4
  %123 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i.i62 = getelementptr i16, ptr %124, i32 2
  %wiphy.i119.i = getelementptr inbounds %struct.ieee80211_hw, ptr %122, i32 0, i32 1
  %125 = ptrtoint ptr %wiphy.i119.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wiphy.i119.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %126, i32 0, i32 1
  %127 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %arrayidx.i.i62, i32 6)
  %128 = load ptr, ptr %hw.i.i, align 4
  %max_rates.i = getelementptr inbounds %struct.ieee80211_hw, ptr %128, i32 0, i32 14
  %129 = ptrtoint ptr %max_rates.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %max_rates.i, align 1
  %130 = load ptr, ptr %hw.i.i, align 4
  %max_report_rates.i = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 15
  %131 = ptrtoint ptr %max_report_rates.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 7, ptr %max_report_rates.i, align 2
  %132 = load ptr, ptr %hw.i.i, align 4
  %max_rate_tries.i = getelementptr inbounds %struct.ieee80211_hw, ptr %132, i32 0, i32 16
  %133 = ptrtoint ptr %max_rate_tries.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %max_rate_tries.i, align 1
  %134 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %spec1.i, align 4
  %supported_rates.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 1
  %135 = ptrtoint ptr %supported_rates.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 3, ptr %supported_rates.i, align 4
  %cap_flags.i.i.i63 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %136 = ptrtoint ptr %cap_flags.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %cap_flags.i.i.i63, align 4
  %138 = and i32 %137, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.i.i.not.i64 = icmp eq i32 %138, 0
  %spec.select136.i = select i1 %tobool.i.i.not.i64, ptr @rf_vals_noseq, ptr @rf_vals_seq
  %139 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 2
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 14, ptr %139, align 4
  %141 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 3
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %spec.select136.i, ptr %141, align 4
  %143 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %rf3.i.i, align 2
  %.off.i65 = add i16 %144, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i65)
  %switch.i66 = icmp ult i16 %.off.i65, 2
  br i1 %switch.i66, label %if.then16.i, label %if.end5.if.end19.i_crit_edge

if.end5.if.end19.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %145 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 3, ptr %spec1.i, align 4
  %146 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 42, ptr %139, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end5.if.end19.i_crit_edge
  %147 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %139, align 4
  %149 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %148, i32 12) #14
  %150 = extractvalue { i32, i1 } %149, 1
  br i1 %150, label %if.end19.i.cleanup_crit_edge, label %if.end7.i.i.i, !prof !145

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end19.i
  %151 = extractvalue { i32, i1 } %149, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %151, i32 noundef 3520) #18
  %tobool.not.i67 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i67, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end23.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23.i:                                       ; preds = %if.end7.i.i.i
  %channels_info.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 4
  %152 = ptrtoint ptr %channels_info.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call8.i.i.i, ptr %channels_info.i, align 4
  %153 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i123.i = getelementptr i16, ptr %154, i32 35
  %max_power.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 31, ptr %max_power.i, align 4
  %156 = ptrtoint ptr %arrayidx.i123.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.i123.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %157)
  %cmp26.i = icmp ugt i8 %157, 31
  %narrow132.i = select i1 %cmp26.i, i8 24, i8 %157
  %spec.select.i68 = zext i8 %narrow132.i to i16
  %default_power1.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 0, i32 2
  %158 = ptrtoint ptr %default_power1.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %spec.select.i68, ptr %default_power1.i, align 2
  %max_power.1.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 1, i32 1
  %159 = ptrtoint ptr %max_power.1.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 31, ptr %max_power.1.i, align 16
  %arrayidx25.1.i = getelementptr i8, ptr %arrayidx.i123.i, i32 1
  %160 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx25.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %161)
  %cmp26.1.i = icmp ugt i8 %161, 31
  %narrow132.1.i = select i1 %cmp26.1.i, i8 24, i8 %161
  %spec.select.1.i = zext i8 %narrow132.1.i to i16
  %default_power1.1.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 1, i32 2
  %162 = ptrtoint ptr %default_power1.1.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %spec.select.1.i, ptr %default_power1.1.i, align 2
  %max_power.2.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 2, i32 1
  %163 = ptrtoint ptr %max_power.2.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 31, ptr %max_power.2.i, align 4
  %arrayidx25.2.i = getelementptr i16, ptr %154, i32 36
  %164 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx25.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %165)
  %cmp26.2.i = icmp ugt i8 %165, 31
  %narrow132.2.i = select i1 %cmp26.2.i, i8 24, i8 %165
  %spec.select.2.i = zext i8 %narrow132.2.i to i16
  %default_power1.2.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 2, i32 2
  %166 = ptrtoint ptr %default_power1.2.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %spec.select.2.i, ptr %default_power1.2.i, align 2
  %max_power.3.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 3, i32 1
  %167 = ptrtoint ptr %max_power.3.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 31, ptr %max_power.3.i, align 8
  %arrayidx25.3.i = getelementptr i8, ptr %arrayidx.i123.i, i32 3
  %168 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx25.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %169)
  %cmp26.3.i = icmp ugt i8 %169, 31
  %narrow132.3.i = select i1 %cmp26.3.i, i8 24, i8 %169
  %spec.select.3.i = zext i8 %narrow132.3.i to i16
  %default_power1.3.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 3, i32 2
  %170 = ptrtoint ptr %default_power1.3.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %spec.select.3.i, ptr %default_power1.3.i, align 2
  %max_power.4.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 4, i32 1
  %171 = ptrtoint ptr %max_power.4.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 31, ptr %max_power.4.i, align 4
  %arrayidx25.4.i = getelementptr i16, ptr %154, i32 37
  %172 = ptrtoint ptr %arrayidx25.4.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx25.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %173)
  %cmp26.4.i = icmp ugt i8 %173, 31
  %narrow132.4.i = select i1 %cmp26.4.i, i8 24, i8 %173
  %spec.select.4.i = zext i8 %narrow132.4.i to i16
  %default_power1.4.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 4, i32 2
  %174 = ptrtoint ptr %default_power1.4.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %spec.select.4.i, ptr %default_power1.4.i, align 2
  %max_power.5.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 5, i32 1
  %175 = ptrtoint ptr %max_power.5.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 31, ptr %max_power.5.i, align 64
  %arrayidx25.5.i = getelementptr i8, ptr %arrayidx.i123.i, i32 5
  %176 = ptrtoint ptr %arrayidx25.5.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx25.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %177)
  %cmp26.5.i = icmp ugt i8 %177, 31
  %narrow132.5.i = select i1 %cmp26.5.i, i8 24, i8 %177
  %spec.select.5.i = zext i8 %narrow132.5.i to i16
  %default_power1.5.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 5, i32 2
  %178 = ptrtoint ptr %default_power1.5.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %spec.select.5.i, ptr %default_power1.5.i, align 2
  %max_power.6.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 6, i32 1
  %179 = ptrtoint ptr %max_power.6.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 31, ptr %max_power.6.i, align 4
  %arrayidx25.6.i = getelementptr i16, ptr %154, i32 38
  %180 = ptrtoint ptr %arrayidx25.6.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx25.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %181)
  %cmp26.6.i = icmp ugt i8 %181, 31
  %narrow132.6.i = select i1 %cmp26.6.i, i8 24, i8 %181
  %spec.select.6.i = zext i8 %narrow132.6.i to i16
  %default_power1.6.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 6, i32 2
  %182 = ptrtoint ptr %default_power1.6.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %spec.select.6.i, ptr %default_power1.6.i, align 2
  %max_power.7.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 7, i32 1
  %183 = ptrtoint ptr %max_power.7.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 31, ptr %max_power.7.i, align 8
  %arrayidx25.7.i = getelementptr i8, ptr %arrayidx.i123.i, i32 7
  %184 = ptrtoint ptr %arrayidx25.7.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx25.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %185)
  %cmp26.7.i = icmp ugt i8 %185, 31
  %narrow132.7.i = select i1 %cmp26.7.i, i8 24, i8 %185
  %spec.select.7.i = zext i8 %narrow132.7.i to i16
  %default_power1.7.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 7, i32 2
  %186 = ptrtoint ptr %default_power1.7.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %spec.select.7.i, ptr %default_power1.7.i, align 2
  %max_power.8.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 8, i32 1
  %187 = ptrtoint ptr %max_power.8.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 31, ptr %max_power.8.i, align 4
  %arrayidx25.8.i = getelementptr i16, ptr %154, i32 39
  %188 = ptrtoint ptr %arrayidx25.8.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx25.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %189)
  %cmp26.8.i = icmp ugt i8 %189, 31
  %narrow132.8.i = select i1 %cmp26.8.i, i8 24, i8 %189
  %spec.select.8.i = zext i8 %narrow132.8.i to i16
  %default_power1.8.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 8, i32 2
  %190 = ptrtoint ptr %default_power1.8.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %spec.select.8.i, ptr %default_power1.8.i, align 2
  %max_power.9.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 9, i32 1
  %191 = ptrtoint ptr %max_power.9.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 31, ptr %max_power.9.i, align 16
  %arrayidx25.9.i = getelementptr i8, ptr %arrayidx.i123.i, i32 9
  %192 = ptrtoint ptr %arrayidx25.9.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx25.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %193)
  %cmp26.9.i = icmp ugt i8 %193, 31
  %narrow132.9.i = select i1 %cmp26.9.i, i8 24, i8 %193
  %spec.select.9.i = zext i8 %narrow132.9.i to i16
  %default_power1.9.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 9, i32 2
  %194 = ptrtoint ptr %default_power1.9.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %spec.select.9.i, ptr %default_power1.9.i, align 2
  %max_power.10.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 10, i32 1
  %195 = ptrtoint ptr %max_power.10.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 31, ptr %max_power.10.i, align 4
  %arrayidx25.10.i = getelementptr i16, ptr %154, i32 40
  %196 = ptrtoint ptr %arrayidx25.10.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx25.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %197)
  %cmp26.10.i = icmp ugt i8 %197, 31
  %narrow132.10.i = select i1 %cmp26.10.i, i8 24, i8 %197
  %spec.select.10.i = zext i8 %narrow132.10.i to i16
  %default_power1.10.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 10, i32 2
  %198 = ptrtoint ptr %default_power1.10.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %spec.select.10.i, ptr %default_power1.10.i, align 2
  %max_power.11.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 11, i32 1
  %199 = ptrtoint ptr %max_power.11.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 31, ptr %max_power.11.i, align 8
  %arrayidx25.11.i = getelementptr i8, ptr %arrayidx.i123.i, i32 11
  %200 = ptrtoint ptr %arrayidx25.11.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx25.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %201)
  %cmp26.11.i = icmp ugt i8 %201, 31
  %narrow132.11.i = select i1 %cmp26.11.i, i8 24, i8 %201
  %spec.select.11.i = zext i8 %narrow132.11.i to i16
  %default_power1.11.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 11, i32 2
  %202 = ptrtoint ptr %default_power1.11.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %spec.select.11.i, ptr %default_power1.11.i, align 2
  %max_power.12.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 12, i32 1
  %203 = ptrtoint ptr %max_power.12.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 31, ptr %max_power.12.i, align 4
  %arrayidx25.12.i = getelementptr i16, ptr %154, i32 41
  %204 = ptrtoint ptr %arrayidx25.12.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx25.12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %205)
  %cmp26.12.i = icmp ugt i8 %205, 31
  %narrow132.12.i = select i1 %cmp26.12.i, i8 24, i8 %205
  %spec.select.12.i = zext i8 %narrow132.12.i to i16
  %default_power1.12.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 12, i32 2
  %206 = ptrtoint ptr %default_power1.12.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %spec.select.12.i, ptr %default_power1.12.i, align 2
  %max_power.13.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 13, i32 1
  %207 = ptrtoint ptr %max_power.13.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 31, ptr %max_power.13.i, align 32
  %arrayidx25.13.i = getelementptr i8, ptr %arrayidx.i123.i, i32 13
  %208 = ptrtoint ptr %arrayidx25.13.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx25.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %209)
  %cmp26.13.i = icmp ugt i8 %209, 31
  %narrow132.13.i = select i1 %cmp26.13.i, i8 24, i8 %209
  %spec.select.13.i = zext i8 %narrow132.13.i to i16
  %default_power1.13.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 13, i32 2
  %210 = ptrtoint ptr %default_power1.13.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %spec.select.13.i, ptr %default_power1.13.i, align 2
  %211 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %212)
  %cmp33.i = icmp ugt i32 %212, 14
  br i1 %cmp33.i, label %if.then35.i, label %if.end23.i.if.end23_crit_edge

if.end23.i.if.end23_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then35.i:                                      ; preds = %if.end23.i
  %213 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i125.i = getelementptr i16, ptr %214, i32 49
  %215 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %139, align 4
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %if.then35.i
  %i.1135.i = phi i32 [ %inc59.i, %for.body41.i.for.body41.i_crit_edge ], [ 14, %if.then35.i ]
  %max_power43.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 %i.1135.i, i32 1
  %217 = ptrtoint ptr %max_power43.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 31, ptr %max_power43.i, align 4
  %sub.i69 = add i32 %i.1135.i, -14
  %arrayidx44.i = getelementptr i8, ptr %arrayidx.i125.i, i32 %sub.i69
  %218 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %219)
  %cmp46.i = icmp ugt i8 %219, 31
  %narrow.i = select i1 %cmp46.i, i8 24, i8 %219
  %spec.select112.i = zext i8 %narrow.i to i16
  %default_power157.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 %i.1135.i, i32 2
  %220 = ptrtoint ptr %default_power157.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %spec.select112.i, ptr %default_power157.i, align 2
  %inc59.i = add nuw i32 %i.1135.i, 1
  %cmp39.i = icmp ult i32 %inc59.i, %216
  br i1 %cmp39.i, label %for.body41.i.for.body41.i_crit_edge, label %for.body41.i.if.end23_crit_edge

for.body41.i.if.end23_crit_edge:                  ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body41.i

if.end23:                                         ; preds = %for.body41.i.if.end23_crit_edge, %if.end23.i.if.end23_crit_edge
  %221 = ptrtoint ptr %cap_flags.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %cap_flags.i.i.i63, align 4
  %or.i51 = or i32 %222, 32777
  store i32 %or.i51, ptr %cap_flags.i.i.i63, align 4
  %223 = load i8, ptr @modparam_nohwcrypt, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool26.not = icmp eq i8 %223, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %or.i52 = or i32 %222, 40969
  %224 = ptrtoint ptr %cap_flags.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %or.i52, ptr %cap_flags.i.i.i63, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23.if.end29_crit_edge
  %225 = ptrtoint ptr %cap_flags.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %cap_flags.i.i.i63, align 4
  %or.i53 = or i32 %226, 262144
  store i32 %or.i53, ptr %cap_flags.i.i.i63, align 4
  %rssi_offset = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 37
  %227 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 120, ptr %rssi_offset, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end7.i.i.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %do.end64.i, %do.body59.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %if.end19.i.cleanup_crit_edge ], [ -19, %do.end64.i ], [ -19, %do.body59.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rt61pci_get_firmware_name(ptr nocapture noundef readonly %rt2x00dev) #2 align 64 {
entry:
  %chip = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %chip) #14
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %chip, align 2, !annotation !142
  %1 = ptrtoint ptr %rt2x00dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt2x00dev, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 -136
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 2, ptr noundef nonnull %chip) #14
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %chip, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %4, label %sw.default [
    i16 770, label %entry.sw.epilog_crit_edge
    i16 769, label %sw.bb1
    i16 1025, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %fw_name.0 = phi ptr [ null, %sw.default ], [ @.str.23, %sw.bb2 ], [ @.str.22, %sw.bb1 ], [ @.str.21, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %chip) #14
  ret ptr %fw_name.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_check_firmware(ptr nocapture noundef readnone %rt2x00dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %len)
  %cmp.not = icmp eq i32 %len, 8192
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %data, i32 8190
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx2 = getelementptr i8, ptr %data, i32 8191
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %or = or i32 %shl, %conv3
  %call = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %data, i32 noundef 8190) #14
  %shl.i = shl i16 %call, 8
  %4 = lshr i16 %call, 8
  %5 = zext i16 %4 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @crc_itu_t_table, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %xor4.i = xor i16 %7, %shl.i
  %shl.i20 = shl i16 %7, 8
  %8 = lshr i16 %xor4.i, 8
  %9 = zext i16 %8 to i32
  %arrayidx.i21 = getelementptr [256 x i16], ptr @crc_itu_t_table, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i21, align 2
  %xor4.i22 = xor i16 %11, %shl.i20
  %conv9 = zext i16 %xor4.i22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv9)
  %cmp10 = icmp ne i32 %or, %conv9
  %cond = zext i1 %cmp10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_load_firmware(ptr nocapture noundef readonly %rt2x00dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.0394 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.end10

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #14
  %inc = add nuw nsw i32 %i.0394, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body:                                          ; preds = %if.end
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @rt61pci_load_firmware._rs, ptr noundef nonnull @__func__.rt61pci_load_firmware) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rt61pci_load_firmware) #17
  br label %cleanup

if.end10:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %7 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i, align 4
  %add.ptr.i362 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i362, i32 33554432) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i364 = getelementptr i8, ptr %10, i32 8452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i364, i32 -1) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %11 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i, align 4
  %add.ptr.i366 = getelementptr i8, ptr %12, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i366, i32 0) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %13 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i, align 4
  %add.ptr.i368 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i368, i32 0) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %15 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i, align 4
  %add.ptr.i370 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370, i32 50331648) #14, !srcloc !141
  %17 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i, align 4
  %add.ptr.i372 = getelementptr i8, ptr %18, i32 16384
  %shr.i = lshr i32 %len, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i372, ptr noundef %data, i32 noundef %shr.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr.i, align 4
  %add.ptr.i374 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i374, i32 33554432) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i, align 4
  %add.ptr.i376 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i376, i32 0) #14, !srcloc !141
  br label %for.body135

for.body135:                                      ; preds = %if.end158.for.body135_crit_edge, %if.end10
  %i.1395 = phi i32 [ 0, %if.end10 ], [ %inc160, %if.end158.for.body135_crit_edge ]
  %23 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i, align 4
  %add.ptr.i378 = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i378) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %26 = and i32 %25, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool156.not = icmp eq i32 %26, 0
  tail call void @msleep(i32 noundef 1) #14
  br i1 %tobool156.not, label %if.end158, label %if.end178

if.end158:                                        ; preds = %for.body135
  %inc160 = add nuw nsw i32 %i.1395, 1
  %exitcond396.not = icmp eq i32 %inc160, 100
  br i1 %exitcond396.not, label %do.body165, label %if.end158.for.body135_crit_edge

if.end158.for.body135_crit_edge:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body135

do.body165:                                       ; preds = %if.end158
  %call166 = tail call i32 @___ratelimit(ptr noundef nonnull @rt61pci_load_firmware._rs.25, ptr noundef nonnull @__func__.rt61pci_load_firmware) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %do.body165.cleanup_crit_edge, label %do.end171

do.body165.cleanup_crit_edge:                     ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end171:                                        ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #16
  %hw172 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %27 = ptrtoint ptr %hw172 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw172, align 4
  %wiphy173 = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy173 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy173, align 8
  %dev174 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev174, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.rt61pci_load_firmware) #17
  br label %cleanup

if.end178:                                        ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %31 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csr.i, align 4
  %add.ptr.i380 = getelementptr i8, ptr %32, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 50331648) #14, !srcloc !141
  %33 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %csr.i, align 4
  %add.ptr.i382 = getelementptr i8, ptr %34, i32 12292
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i382) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %36 = and i32 %35, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %37 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %csr.i, align 4
  %add.ptr.i384 = getelementptr i8, ptr %38, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384, i32 %36) #14, !srcloc !141
  %39 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csr.i, align 4
  %add.ptr.i386 = getelementptr i8, ptr %40, i32 12292
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i386) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %42 = or i32 %41, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %43 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %csr.i, align 4
  %add.ptr.i388 = getelementptr i8, ptr %44, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i388, i32 %42) #14, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %if.end178, %do.end171, %do.body165.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end178 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -16, %do.end171 ], [ -16, %do.body165.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mmio_initialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mmio_uninitialize(ptr noundef) #0

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt61pci_get_entry_state(ptr nocapture noundef readonly %entry1) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
define internal void @rt61pci_clear_entry(ptr nocapture noundef readonly %entry1) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 5
  %skb_dma = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skb_dma, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
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
  call void @__sanitizer_cov_trace_pc() #16
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
define internal i32 @rt61pci_set_device_state(ptr noundef %rt2x00dev, i32 noundef %state) #2 align 64 {
entry:
  %reg.i289.i.i = alloca i32, align 4
  %reg.i280.i.i = alloca i32, align 4
  %reg.i271.i.i = alloca i32, align 4
  %reg.i262.i.i = alloca i32, align 4
  %reg.i253.i.i = alloca i32, align 4
  %reg.i244.i.i = alloca i32, align 4
  %reg.i235.i.i = alloca i32, align 4
  %reg.i226.i.i = alloca i32, align 4
  %reg.i217.i.i = alloca i32, align 4
  %reg.i208.i.i = alloca i32, align 4
  %reg.i199.i.i = alloca i32, align 4
  %reg.i190.i.i = alloca i32, align 4
  %reg.i181.i.i = alloca i32, align 4
  %reg.i172.i.i = alloca i32, align 4
  %reg.i163.i.i = alloca i32, align 4
  %reg.i154.i.i = alloca i32, align 4
  %reg.i145.i.i = alloca i32, align 4
  %reg.i136.i.i = alloca i32, align 4
  %reg.i127.i.i = alloca i32, align 4
  %reg.i118.i.i = alloca i32, align 4
  %reg.i109.i.i = alloca i32, align 4
  %reg.i100.i.i = alloca i32, align 4
  %reg.i91.i.i = alloca i32, align 4
  %reg.i82.i.i = alloca i32, align 4
  %reg.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %state, label %entry.do.body_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb2
    i32 6, label %entry.sw.bb3_crit_edge
    i32 7, label %entry.sw.bb3_crit_edge35
    i32 0, label %entry.sw.bb4_crit_edge
    i32 1, label %entry.sw.bb4_crit_edge36
    i32 2, label %entry.sw.bb4_crit_edge37
    i32 3, label %entry.sw.bb4_crit_edge38
  ]

entry.sw.bb4_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

entry.sw.bb4_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

entry.sw.bb4_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

entry.sw.bb3_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb:                                            ; preds = %entry
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %1 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 13336
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %tx.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 51
  %4 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx.i.i, align 8
  %limit.i.i = getelementptr inbounds %struct.data_queue, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %limit.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %limit.i.i, align 4
  %8 = and i16 %7, 255
  %and15.masked.i.i = zext i16 %8 to i32
  %limit31.i.i = getelementptr %struct.data_queue, ptr %5, i32 1, i32 8
  %9 = ptrtoint ptr %limit31.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %limit31.i.i, align 4
  %conv32.i.i = zext i16 %10 to i32
  %shl39.i.i = shl nuw nsw i32 %conv32.i.i, 8
  %shl39.masked.i.i = and i32 %shl39.i.i, 65280
  %and59.i.i = or i32 %shl39.masked.i.i, %and15.masked.i.i
  %limit63.i.i = getelementptr %struct.data_queue, ptr %5, i32 2, i32 8
  %11 = ptrtoint ptr %limit63.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %limit63.i.i, align 4
  %conv64.i.i = zext i16 %12 to i32
  %shl71.i.i = shl nuw i32 %conv64.i.i, 16
  %shl71.masked.i.i = and i32 %shl71.i.i, 16711680
  %and91.i.i = or i32 %and59.i.i, %shl71.masked.i.i
  %limit95.i.i = getelementptr %struct.data_queue, ptr %5, i32 3, i32 8
  %13 = ptrtoint ptr %limit95.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %limit95.i.i, align 4
  %conv96.i.i = zext i16 %14 to i32
  %shl103.i.i = shl i32 %conv96.i.i, 24
  %or111.i.i = or i32 %and91.i.i, %shl103.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %15 = tail call i32 @llvm.bswap.i32(i32 %or111.i.i) #14
  %16 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %17, i32 13336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %15) #14, !srcloc !141
  %18 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %19, i32 13340
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %21 = and i32 %20, -16129
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %23 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx.i.i, align 8
  %desc_size.i.i = getelementptr inbounds %struct.data_queue, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %desc_size.i.i, align 2
  %27 = lshr i8 %26, 2
  %div.i.i = zext i8 %27 to i32
  %shl135.i.i = shl nuw nsw i32 %div.i.i, 16
  %or143.i.i = or i32 %shl135.i.i, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %or143.i.i) #14
  %29 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %30, i32 13340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %28) #14, !srcloc !141
  %31 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx.i.i, align 8
  %entries.i.i = getelementptr inbounds %struct.data_queue, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entries.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.queue_entry, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv_data.i.i, align 4
  %37 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %38, i32 13312
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %desc_dma.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %desc_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %desc_dma.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #14
  %43 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %44, i32 13312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %42) #14, !srcloc !141
  %45 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx.i.i, align 8
  %entries178.i.i = getelementptr %struct.data_queue, ptr %46, i32 1, i32 1
  %47 = ptrtoint ptr %entries178.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %entries178.i.i, align 4
  %priv_data180.i.i = getelementptr inbounds %struct.queue_entry, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %priv_data180.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv_data180.i.i, align 4
  %51 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %52, i32 13316
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %desc_dma195.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %desc_dma195.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %desc_dma195.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #14
  %57 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %58, i32 13316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %56) #14, !srcloc !141
  %59 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx.i.i, align 8
  %entries213.i.i = getelementptr %struct.data_queue, ptr %60, i32 2, i32 1
  %61 = ptrtoint ptr %entries213.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %entries213.i.i, align 4
  %priv_data215.i.i = getelementptr inbounds %struct.queue_entry, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %priv_data215.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv_data215.i.i, align 4
  %65 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %66, i32 13320
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %desc_dma231.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %64, i32 0, i32 1
  %68 = ptrtoint ptr %desc_dma231.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %desc_dma231.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #14
  %71 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %72, i32 13320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %70) #14, !srcloc !141
  %73 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx.i.i, align 8
  %entries249.i.i = getelementptr %struct.data_queue, ptr %74, i32 3, i32 1
  %75 = ptrtoint ptr %entries249.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %entries249.i.i, align 4
  %priv_data251.i.i = getelementptr inbounds %struct.queue_entry, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %priv_data251.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv_data251.i.i, align 4
  %79 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %80, i32 13324
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %desc_dma266.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %78, i32 0, i32 1
  %82 = ptrtoint ptr %desc_dma266.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %desc_dma266.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #14
  %85 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %86, i32 13324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %84) #14, !srcloc !141
  %87 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %88, i32 13396
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %90 = and i32 %89, 12646655
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #14
  %rx.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 50
  %92 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rx.i.i, align 4
  %limit296.i.i = getelementptr inbounds %struct.data_queue, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %limit296.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %limit296.i.i, align 4
  %96 = and i16 %95, 255
  %and311.i.i = zext i16 %96 to i32
  %or312.i.i = or i32 %91, %and311.i.i
  %desc_size327.i.i = getelementptr inbounds %struct.data_queue, ptr %93, i32 0, i32 19
  %97 = ptrtoint ptr %desc_size327.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %desc_size327.i.i, align 2
  %99 = lshr i8 %98, 2
  %div329.i.i = zext i8 %99 to i32
  %shl336.i.i = shl nuw nsw i32 %div329.i.i, 8
  %or344.i.i = or i32 %shl336.i.i, %or312.i.i
  %or370.i.i = or i32 %or344.i.i, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %100 = tail call i32 @llvm.bswap.i32(i32 %or370.i.i) #14
  %101 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %102, i32 13396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %100) #14, !srcloc !141
  %103 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx.i.i, align 4
  %entries372.i.i = getelementptr inbounds %struct.data_queue, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %entries372.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %entries372.i.i, align 4
  %priv_data374.i.i = getelementptr inbounds %struct.queue_entry, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %priv_data374.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv_data374.i.i, align 4
  %109 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i28.i.i = getelementptr i8, ptr %110, i32 13392
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %desc_dma389.i.i = getelementptr inbounds %struct.queue_entry_priv_mmio, ptr %108, i32 0, i32 1
  %112 = ptrtoint ptr %desc_dma389.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %desc_dma389.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #14
  %115 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %116, i32 13392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 %114) #14, !srcloc !141
  %117 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i32.i.i = getelementptr i8, ptr %118, i32 13356
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %120 = and i32 %119, 16777215
  %121 = or i32 %120, -1442840576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %122 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i34.i.i = getelementptr i8, ptr %123, i32 13356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i, i32 %121) #14, !srcloc !141
  %124 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i36.i.i = getelementptr i8, ptr %125, i32 13364
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %127 = or i32 %126, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %128 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i38.i.i = getelementptr i8, ptr %129, i32 13364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i.i, i32 %127) #14, !srcloc !141
  %130 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i40.i.i = getelementptr i8, ptr %131, i32 13400
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %133 = or i32 %132, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %134 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i42.i.i = getelementptr i8, ptr %135, i32 13400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i.i, i32 %133) #14, !srcloc !141
  %136 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %137, i32 12352
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %139 = and i32 %138, -8388869
  %140 = or i32 %139, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %141 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1317.i.i = getelementptr i8, ptr %142, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1317.i.i, i32 %140) #14, !srcloc !141
  %143 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1319.i.i = getelementptr i8, ptr %144, i32 12356
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1319.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %146 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1321.i.i = getelementptr i8, ptr %147, i32 12356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1321.i.i, i32 -1348556130) #14, !srcloc !141
  %148 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1323.i.i = getelementptr i8, ptr %149, i32 12360
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1323.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %151 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1325.i.i = getelementptr i8, ptr %152, i32 12360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1325.i.i, i32 -1920169078) #14, !srcloc !141
  %153 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1327.i.i = getelementptr i8, ptr %154, i32 12364
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1327.i.i) #14, !srcloc !138
  %156 = shl i32 %155, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %or640.i.i = or i32 %156, 8750727
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %157 = tail call i32 @llvm.bswap.i32(i32 %or640.i.i) #14
  %158 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1329.i.i = getelementptr i8, ptr %159, i32 12364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1329.i.i, i32 %157) #14, !srcloc !141
  %160 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1331.i.i = getelementptr i8, ptr %161, i32 12380
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1331.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %163 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1333.i.i = getelementptr i8, ptr %164, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1333.i.i, i32 993341742) #14, !srcloc !141
  %165 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1335.i.i = getelementptr i8, ptr %166, i32 12384
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1335.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %168 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1337.i.i = getelementptr i8, ptr %169, i32 12384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1337.i.i, i32 740960810) #14, !srcloc !141
  %170 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1339.i.i = getelementptr i8, ptr %171, i32 12388
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1339.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %and993.i.i = and i32 %172, 57344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %173 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1341.i.i = getelementptr i8, ptr %174, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1341.i.i, i32 %and993.i.i) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %175 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1343.i.i = getelementptr i8, ptr %176, i32 12412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1343.i.i, i32 251658240) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %177 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1345.i.i = getelementptr i8, ptr %178, i32 12312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1345.i.i, i32 -15794176) #14, !srcloc !141
  %179 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1347.i.i = getelementptr i8, ptr %180, i32 12324
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1347.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %182 = and i32 %181, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %183 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1349.i.i = getelementptr i8, ptr %184, i32 12324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1349.i.i, i32 %182) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %185 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1351.i.i = getelementptr i8, ptr %186, i32 12328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1351.i.i, i32 470220800) #14, !srcloc !141
  %ops.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %187 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ops.i.i, align 4
  %lib.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %188, i32 0, i32 7
  %189 = ptrtoint ptr %lib.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %lib.i.i, align 4
  %set_device_state.i.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %190, i32 0, i32 14
  %191 = ptrtoint ptr %set_device_state.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %set_device_state.i.i, align 4
  %call1035.i.i = tail call i32 %192(ptr noundef %rt2x00dev, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1035.i.i)
  %tobool.not.i.i = icmp eq i32 %call1035.i.i, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.rhs.i:                                        ; preds = %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %193 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1353.i.i = getelementptr i8, ptr %194, i32 12340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1353.i.i, i32 14680064) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %195 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1355.i.i = getelementptr i8, ptr %196, i32 12448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1355.i.i, i32 0) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %197 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1357.i.i = getelementptr i8, ptr %198, i32 12452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1357.i.i, i32 0) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %199 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1359.i.i = getelementptr i8, ptr %200, i32 12468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1359.i.i, i32 0) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %201 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1361.i.i = getelementptr i8, ptr %202, i32 12420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1361.i.i, i32 -1339883520) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %203 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1363.i.i = getelementptr i8, ptr %204, i32 12436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1363.i.i, i32 202377734) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %205 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1365.i.i = getelementptr i8, ptr %206, i32 12440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1365.i.i, i32 101058560) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %207 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1367.i.i = getelementptr i8, ptr %208, i32 12444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1367.i.i, i32 134873088) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %209 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1369.i.i = getelementptr i8, ptr %210, i32 13408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1369.i.i, i32 71617064) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %211 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1371.i.i = getelementptr i8, ptr %212, i32 13444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1371.i.i, i32 131072) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %213 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1373.i.i = getelementptr i8, ptr %214, i32 8452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1373.i.i, i32 -1) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %215 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1375.i.i = getelementptr i8, ptr %216, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1375.i.i, i32 0) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %217 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1377.i.i = getelementptr i8, ptr %218, i32 11520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1377.i.i, i32 0) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %219 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1379.i.i = getelementptr i8, ptr %220, i32 11776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1379.i.i, i32 0) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %221 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1381.i.i = getelementptr i8, ptr %222, i32 12032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1381.i.i, i32 0) #14, !srcloc !141
  %223 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1383.i.i = getelementptr i8, ptr %224, i32 12480
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1383.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %226 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1385.i.i = getelementptr i8, ptr %227, i32 12484
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1385.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %229 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1387.i.i = getelementptr i8, ptr %230, i32 12488
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1387.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %232 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1389.i.i = getelementptr i8, ptr %233, i32 12292
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1389.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %235 = or i32 %234, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %236 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1391.i.i = getelementptr i8, ptr %237, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1391.i.i, i32 %235) #14, !srcloc !141
  %238 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1393.i.i = getelementptr i8, ptr %239, i32 12292
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1393.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %241 = and i32 %240, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %242 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1395.i.i = getelementptr i8, ptr %243, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1395.i.i, i32 %241) #14, !srcloc !141
  %244 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1397.i.i = getelementptr i8, ptr %245, i32 12292
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1397.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %247 = or i32 %246, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %248 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i1399.i.i = getelementptr i8, ptr %249, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1399.i.i, i32 %247) #14, !srcloc !141
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %lor.rhs.i
  %i.016.i.i.i = phi i32 [ 0, %lor.rhs.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i.i = tail call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 0) #14
  %250 = zext i8 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %250, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %call.i.i.i, label %if.end.i29.i [
    i8 -1, label %for.body.i.i.i.if.end.i.i.i_crit_edge
    i8 0, label %for.body.i.i.i.if.end.i.i.i_crit_edge39
  ]

for.body.i.i.i.if.end.i.i.i_crit_edge39:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i.if.end.i.i.i_crit_edge, %for.body.i.i.i.if.end.i.i.i_crit_edge39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %251(i32 noundef 21474800) #14
  %inc.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 100
  br i1 %exitcond.not.i.i.i, label %do.body.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  %call6.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @rt61pci_wait_bbp_ready._rs, ptr noundef nonnull @__func__.rt61pci_wait_bbp_ready) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.do.body_crit_edge, label %do.end.i.i.i

do.body.i.i.i.do.body_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %252 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hw.i.i.i, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wiphy.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.wiphy, ptr %255, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.rt61pci_wait_bbp_ready) #17
  br label %do.body

if.end.i29.i:                                     ; preds = %for.body.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #14
  %256 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 -1, ptr %reg.i.i.i, align 4, !annotation !142
  %csr_mutex.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i79.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i.i)
  %tobool.not.i80.i.i = icmp eq i32 %call.i79.i.i, 0
  br i1 %tobool.not.i80.i.i, label %if.end.i29.i.rt61pci_bbp_write.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i29.i.rt61pci_bbp_write.exit.i.i_crit_edge: ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #16
  %257 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 66304, ptr %reg.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %258 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %259, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 196864) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit.i.i

rt61pci_bbp_write.exit.i.i:                       ; preds = %if.then.i.i.i, %if.end.i29.i.rt61pci_bbp_write.exit.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i82.i.i) #14
  %260 = ptrtoint ptr %reg.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 -1, ptr %reg.i82.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i84.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i82.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i.i)
  %tobool.not.i85.i.i = icmp eq i32 %call.i84.i.i, 0
  br i1 %tobool.not.i85.i.i, label %rt61pci_bbp_write.exit.i.i.rt61pci_bbp_write.exit90.i.i_crit_edge, label %if.then.i88.i.i

rt61pci_bbp_write.exit.i.i.rt61pci_bbp_write.exit90.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit90.i.i

if.then.i88.i.i:                                  ; preds = %rt61pci_bbp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %261 = ptrtoint ptr %reg.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 69424, ptr %reg.i82.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %262 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i87.i.i = getelementptr i8, ptr %263, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87.i.i, i32 806289664) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit90.i.i

rt61pci_bbp_write.exit90.i.i:                     ; preds = %if.then.i88.i.i, %rt61pci_bbp_write.exit.i.i.rt61pci_bbp_write.exit90.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i82.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i91.i.i) #14
  %264 = ptrtoint ptr %reg.i91.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 -1, ptr %reg.i91.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i93.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i91.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %rt61pci_bbp_write.exit90.i.i.rt61pci_bbp_write.exit99.i.i_crit_edge, label %if.then.i97.i.i

rt61pci_bbp_write.exit90.i.i.rt61pci_bbp_write.exit99.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit90.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit99.i.i

if.then.i97.i.i:                                  ; preds = %rt61pci_bbp_write.exit90.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %265 = ptrtoint ptr %reg.i91.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 71112, ptr %reg.i91.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %266 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i96.i.i = getelementptr i8, ptr %267, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i96.i.i, i32 -938147584) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit99.i.i

rt61pci_bbp_write.exit99.i.i:                     ; preds = %if.then.i97.i.i, %rt61pci_bbp_write.exit90.i.i.rt61pci_bbp_write.exit99.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i91.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i100.i.i) #14
  %268 = ptrtoint ptr %reg.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 -1, ptr %reg.i100.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i102.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i100.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i.i)
  %tobool.not.i103.i.i = icmp eq i32 %call.i102.i.i, 0
  br i1 %tobool.not.i103.i.i, label %rt61pci_bbp_write.exit99.i.i.rt61pci_bbp_write.exit108.i.i_crit_edge, label %if.then.i106.i.i

rt61pci_bbp_write.exit99.i.i.rt61pci_bbp_write.exit108.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit108.i.i

if.then.i106.i.i:                                 ; preds = %rt61pci_bbp_write.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %269 = ptrtoint ptr %reg.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 71224, ptr %reg.i100.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %270 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i105.i.i = getelementptr i8, ptr %271, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i105.i.i, i32 940966144) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit108.i.i

rt61pci_bbp_write.exit108.i.i:                    ; preds = %if.then.i106.i.i, %rt61pci_bbp_write.exit99.i.i.rt61pci_bbp_write.exit108.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i100.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i109.i.i) #14
  %272 = ptrtoint ptr %reg.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 -1, ptr %reg.i109.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i111.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i109.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i.i)
  %tobool.not.i112.i.i = icmp eq i32 %call.i111.i.i, 0
  br i1 %tobool.not.i112.i.i, label %rt61pci_bbp_write.exit108.i.i.rt61pci_bbp_write.exit117.i.i_crit_edge, label %if.then.i115.i.i

rt61pci_bbp_write.exit108.i.i.rt61pci_bbp_write.exit117.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit108.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit117.i.i

if.then.i115.i.i:                                 ; preds = %rt61pci_bbp_write.exit108.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %273 = ptrtoint ptr %reg.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 71430, ptr %reg.i109.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %274 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i114.i.i = getelementptr i8, ptr %275, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i114.i.i, i32 102170880) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit117.i.i

rt61pci_bbp_write.exit117.i.i:                    ; preds = %if.then.i115.i.i, %rt61pci_bbp_write.exit108.i.i.rt61pci_bbp_write.exit117.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i109.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i118.i.i) #14
  %276 = ptrtoint ptr %reg.i118.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 -1, ptr %reg.i118.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i120.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i118.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i.i)
  %tobool.not.i121.i.i = icmp eq i32 %call.i120.i.i, 0
  br i1 %tobool.not.i121.i.i, label %rt61pci_bbp_write.exit117.i.i.rt61pci_bbp_write.exit126.i.i_crit_edge, label %if.then.i124.i.i

rt61pci_bbp_write.exit117.i.i.rt61pci_bbp_write.exit126.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit126.i.i

if.then.i124.i.i:                                 ; preds = %rt61pci_bbp_write.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %277 = ptrtoint ptr %reg.i118.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 71934, ptr %reg.i118.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %278 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i123.i.i = getelementptr i8, ptr %279, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123.i.i, i32 -31981312) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit126.i.i

rt61pci_bbp_write.exit126.i.i:                    ; preds = %if.then.i124.i.i, %rt61pci_bbp_write.exit117.i.i.rt61pci_bbp_write.exit126.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i118.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i127.i.i) #14
  %280 = ptrtoint ptr %reg.i127.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 -1, ptr %reg.i127.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i129.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i127.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129.i.i)
  %tobool.not.i130.i.i = icmp eq i32 %call.i129.i.i, 0
  br i1 %tobool.not.i130.i.i, label %rt61pci_bbp_write.exit126.i.i.rt61pci_bbp_write.exit135.i.i_crit_edge, label %if.then.i133.i.i

rt61pci_bbp_write.exit126.i.i.rt61pci_bbp_write.exit135.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit126.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit135.i.i

if.then.i133.i.i:                                 ; preds = %rt61pci_bbp_write.exit126.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %281 = ptrtoint ptr %reg.i127.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 71946, ptr %reg.i127.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %282 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i132.i.i = getelementptr i8, ptr %283, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i132.i.i, i32 169410816) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit135.i.i

rt61pci_bbp_write.exit135.i.i:                    ; preds = %if.then.i133.i.i, %rt61pci_bbp_write.exit126.i.i.rt61pci_bbp_write.exit135.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i127.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i136.i.i) #14
  %284 = ptrtoint ptr %reg.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 -1, ptr %reg.i136.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i138.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i136.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i.i)
  %tobool.not.i139.i.i = icmp eq i32 %call.i138.i.i, 0
  br i1 %tobool.not.i139.i.i, label %rt61pci_bbp_write.exit135.i.i.rt61pci_bbp_write.exit144.i.i_crit_edge, label %if.then.i142.i.i

rt61pci_bbp_write.exit135.i.i.rt61pci_bbp_write.exit144.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit135.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit144.i.i

if.then.i142.i.i:                                 ; preds = %rt61pci_bbp_write.exit135.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %285 = ptrtoint ptr %reg.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 72205, ptr %reg.i136.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %286 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i141.i.i = getelementptr i8, ptr %287, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i141.i.i, i32 219808000) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit144.i.i

rt61pci_bbp_write.exit144.i.i:                    ; preds = %if.then.i142.i.i, %rt61pci_bbp_write.exit135.i.i.rt61pci_bbp_write.exit144.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i136.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i145.i.i) #14
  %288 = ptrtoint ptr %reg.i145.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 -1, ptr %reg.i145.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i147.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i145.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i.i)
  %tobool.not.i148.i.i = icmp eq i32 %call.i147.i.i, 0
  br i1 %tobool.not.i148.i.i, label %rt61pci_bbp_write.exit144.i.i.rt61pci_bbp_write.exit153.i.i_crit_edge, label %if.then.i151.i.i

rt61pci_bbp_write.exit144.i.i.rt61pci_bbp_write.exit153.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit144.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit153.i.i

if.then.i151.i.i:                                 ; preds = %rt61pci_bbp_write.exit144.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %289 = ptrtoint ptr %reg.i145.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 74258, ptr %reg.i145.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %290 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i150.i.i = getelementptr i8, ptr %291, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.i.i, i32 304218368) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit153.i.i

rt61pci_bbp_write.exit153.i.i:                    ; preds = %if.then.i151.i.i, %rt61pci_bbp_write.exit144.i.i.rt61pci_bbp_write.exit153.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i145.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i154.i.i) #14
  %292 = ptrtoint ptr %reg.i154.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 -1, ptr %reg.i154.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i156.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i154.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156.i.i)
  %tobool.not.i157.i.i = icmp eq i32 %call.i156.i.i, 0
  br i1 %tobool.not.i157.i.i, label %rt61pci_bbp_write.exit153.i.i.rt61pci_bbp_write.exit162.i.i_crit_edge, label %if.then.i160.i.i

rt61pci_bbp_write.exit153.i.i.rt61pci_bbp_write.exit162.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit153.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit162.i.i

if.then.i160.i.i:                                 ; preds = %rt61pci_bbp_write.exit153.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %293 = ptrtoint ptr %reg.i154.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 75015, ptr %reg.i154.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %294 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i159.i.i = getelementptr i8, ptr %295, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i159.i.i, i32 119865600) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit162.i.i

rt61pci_bbp_write.exit162.i.i:                    ; preds = %if.then.i160.i.i, %rt61pci_bbp_write.exit153.i.i.rt61pci_bbp_write.exit162.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i154.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i163.i.i) #14
  %296 = ptrtoint ptr %reg.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 -1, ptr %reg.i163.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i165.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i163.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165.i.i)
  %tobool.not.i166.i.i = icmp eq i32 %call.i165.i.i, 0
  br i1 %tobool.not.i166.i.i, label %rt61pci_bbp_write.exit162.i.i.rt61pci_bbp_write.exit171.i.i_crit_edge, label %if.then.i169.i.i

rt61pci_bbp_write.exit162.i.i.rt61pci_bbp_write.exit171.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit171.i.i

if.then.i169.i.i:                                 ; preds = %rt61pci_bbp_write.exit162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %297 = ptrtoint ptr %reg.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 75768, ptr %reg.i163.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %298 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i168.i.i = getelementptr i8, ptr %299, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i168.i.i, i32 -131661568) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit171.i.i

rt61pci_bbp_write.exit171.i.i:                    ; preds = %if.then.i169.i.i, %rt61pci_bbp_write.exit162.i.i.rt61pci_bbp_write.exit171.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i163.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i172.i.i) #14
  %300 = ptrtoint ptr %reg.i172.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 -1, ptr %reg.i172.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i174.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i172.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174.i.i)
  %tobool.not.i175.i.i = icmp eq i32 %call.i174.i.i, 0
  br i1 %tobool.not.i175.i.i, label %rt61pci_bbp_write.exit171.i.i.rt61pci_bbp_write.exit180.i.i_crit_edge, label %if.then.i178.i.i

rt61pci_bbp_write.exit171.i.i.rt61pci_bbp_write.exit180.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit171.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit180.i.i

if.then.i178.i.i:                                 ; preds = %rt61pci_bbp_write.exit171.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %301 = ptrtoint ptr %reg.i172.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 76128, ptr %reg.i172.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %302 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i177.i.i = getelementptr i8, ptr %303, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i177.i.i, i32 1613299968) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit180.i.i

rt61pci_bbp_write.exit180.i.i:                    ; preds = %if.then.i178.i.i, %rt61pci_bbp_write.exit171.i.i.rt61pci_bbp_write.exit180.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i172.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i181.i.i) #14
  %304 = ptrtoint ptr %reg.i181.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 -1, ptr %reg.i181.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i183.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i181.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183.i.i)
  %tobool.not.i184.i.i = icmp eq i32 %call.i183.i.i, 0
  br i1 %tobool.not.i184.i.i, label %rt61pci_bbp_write.exit180.i.i.rt61pci_bbp_write.exit189.i.i_crit_edge, label %if.then.i187.i.i

rt61pci_bbp_write.exit180.i.i.rt61pci_bbp_write.exit189.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit180.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit189.i.i

if.then.i187.i.i:                                 ; preds = %rt61pci_bbp_write.exit180.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %305 = ptrtoint ptr %reg.i181.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 79120, ptr %reg.i181.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %306 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i186.i.i = getelementptr i8, ptr %307, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i186.i.i, i32 271909120) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit189.i.i

rt61pci_bbp_write.exit189.i.i:                    ; preds = %if.then.i187.i.i, %rt61pci_bbp_write.exit180.i.i.rt61pci_bbp_write.exit189.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i181.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i190.i.i) #14
  %308 = ptrtoint ptr %reg.i190.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 -1, ptr %reg.i190.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i192.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i190.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192.i.i)
  %tobool.not.i193.i.i = icmp eq i32 %call.i192.i.i, 0
  br i1 %tobool.not.i193.i.i, label %rt61pci_bbp_write.exit189.i.i.rt61pci_bbp_write.exit198.i.i_crit_edge, label %if.then.i196.i.i

rt61pci_bbp_write.exit189.i.i.rt61pci_bbp_write.exit198.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit189.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit198.i.i

if.then.i196.i.i:                                 ; preds = %rt61pci_bbp_write.exit189.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %309 = ptrtoint ptr %reg.i190.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 79384, ptr %reg.i190.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %310 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i195.i.i = getelementptr i8, ptr %311, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i195.i.i, i32 406192384) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit198.i.i

rt61pci_bbp_write.exit198.i.i:                    ; preds = %if.then.i196.i.i, %rt61pci_bbp_write.exit189.i.i.rt61pci_bbp_write.exit198.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i190.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i199.i.i) #14
  %312 = ptrtoint ptr %reg.i199.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 -1, ptr %reg.i199.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i201.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i199.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201.i.i)
  %tobool.not.i202.i.i = icmp eq i32 %call.i201.i.i, 0
  br i1 %tobool.not.i202.i.i, label %rt61pci_bbp_write.exit198.i.i.rt61pci_bbp_write.exit207.i.i_crit_edge, label %if.then.i205.i.i

rt61pci_bbp_write.exit198.i.i.rt61pci_bbp_write.exit207.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit198.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit207.i.i

if.then.i205.i.i:                                 ; preds = %rt61pci_bbp_write.exit198.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %313 = ptrtoint ptr %reg.i199.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 80912, ptr %reg.i199.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %314 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i204.i.i = getelementptr i8, ptr %315, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i204.i.i, i32 272367872) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit207.i.i

rt61pci_bbp_write.exit207.i.i:                    ; preds = %if.then.i205.i.i, %rt61pci_bbp_write.exit198.i.i.rt61pci_bbp_write.exit207.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i199.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i208.i.i) #14
  %316 = ptrtoint ptr %reg.i208.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 -1, ptr %reg.i208.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i210.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i208.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210.i.i)
  %tobool.not.i211.i.i = icmp eq i32 %call.i210.i.i, 0
  br i1 %tobool.not.i211.i.i, label %rt61pci_bbp_write.exit207.i.i.rt61pci_bbp_write.exit216.i.i_crit_edge, label %if.then.i214.i.i

rt61pci_bbp_write.exit207.i.i.rt61pci_bbp_write.exit216.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit216.i.i

if.then.i214.i.i:                                 ; preds = %rt61pci_bbp_write.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %317 = ptrtoint ptr %reg.i208.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 81156, ptr %reg.i208.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %318 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i213.i.i = getelementptr i8, ptr %319, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i213.i.i, i32 71106816) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit216.i.i

rt61pci_bbp_write.exit216.i.i:                    ; preds = %if.then.i214.i.i, %rt61pci_bbp_write.exit207.i.i.rt61pci_bbp_write.exit216.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i208.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i217.i.i) #14
  %320 = ptrtoint ptr %reg.i217.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 -1, ptr %reg.i217.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i219.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i217.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219.i.i)
  %tobool.not.i220.i.i = icmp eq i32 %call.i219.i.i, 0
  br i1 %tobool.not.i220.i.i, label %rt61pci_bbp_write.exit216.i.i.rt61pci_bbp_write.exit225.i.i_crit_edge, label %if.then.i223.i.i

rt61pci_bbp_write.exit216.i.i.rt61pci_bbp_write.exit225.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit216.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit225.i.i

if.then.i223.i.i:                                 ; preds = %rt61pci_bbp_write.exit216.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %321 = ptrtoint ptr %reg.i217.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 81412, ptr %reg.i217.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %322 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i222.i.i = getelementptr i8, ptr %323, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i222.i.i, i32 71172352) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit225.i.i

rt61pci_bbp_write.exit225.i.i:                    ; preds = %if.then.i223.i.i, %rt61pci_bbp_write.exit216.i.i.rt61pci_bbp_write.exit225.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i217.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i226.i.i) #14
  %324 = ptrtoint ptr %reg.i226.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 -1, ptr %reg.i226.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i228.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i226.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228.i.i)
  %tobool.not.i229.i.i = icmp eq i32 %call.i228.i.i, 0
  br i1 %tobool.not.i229.i.i, label %rt61pci_bbp_write.exit225.i.i.rt61pci_bbp_write.exit234.i.i_crit_edge, label %if.then.i232.i.i

rt61pci_bbp_write.exit225.i.i.rt61pci_bbp_write.exit234.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit225.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit234.i.i

if.then.i232.i.i:                                 ; preds = %rt61pci_bbp_write.exit225.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %325 = ptrtoint ptr %reg.i226.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 84990, ptr %reg.i226.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %326 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i231.i.i = getelementptr i8, ptr %327, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i231.i.i, i32 -28638976) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit234.i.i

rt61pci_bbp_write.exit234.i.i:                    ; preds = %if.then.i232.i.i, %rt61pci_bbp_write.exit225.i.i.rt61pci_bbp_write.exit234.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i226.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i235.i.i) #14
  %328 = ptrtoint ptr %reg.i235.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 -1, ptr %reg.i235.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i237.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i235.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237.i.i)
  %tobool.not.i238.i.i = icmp eq i32 %call.i237.i.i, 0
  br i1 %tobool.not.i238.i.i, label %rt61pci_bbp_write.exit234.i.i.rt61pci_bbp_write.exit243.i.i_crit_edge, label %if.then.i241.i.i

rt61pci_bbp_write.exit234.i.i.rt61pci_bbp_write.exit243.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit234.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit243.i.i

if.then.i241.i.i:                                 ; preds = %rt61pci_bbp_write.exit234.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %329 = ptrtoint ptr %reg.i235.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 87806, ptr %reg.i235.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %330 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i240.i.i = getelementptr i8, ptr %331, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i240.i.i, i32 -27918080) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit243.i.i

rt61pci_bbp_write.exit243.i.i:                    ; preds = %if.then.i241.i.i, %rt61pci_bbp_write.exit234.i.i.rt61pci_bbp_write.exit243.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i235.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i244.i.i) #14
  %332 = ptrtoint ptr %reg.i244.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 -1, ptr %reg.i244.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i246.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i244.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246.i.i)
  %tobool.not.i247.i.i = icmp eq i32 %call.i246.i.i, 0
  br i1 %tobool.not.i247.i.i, label %rt61pci_bbp_write.exit243.i.i.rt61pci_bbp_write.exit252.i.i_crit_edge, label %if.then.i250.i.i

rt61pci_bbp_write.exit243.i.i.rt61pci_bbp_write.exit252.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit243.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit252.i.i

if.then.i250.i.i:                                 ; preds = %rt61pci_bbp_write.exit243.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %333 = ptrtoint ptr %reg.i244.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 88318, ptr %reg.i244.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %334 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i249.i.i = getelementptr i8, ptr %335, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i249.i.i, i32 -27787008) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit252.i.i

rt61pci_bbp_write.exit252.i.i:                    ; preds = %if.then.i250.i.i, %rt61pci_bbp_write.exit243.i.i.rt61pci_bbp_write.exit252.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i244.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i253.i.i) #14
  %336 = ptrtoint ptr %reg.i253.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 -1, ptr %reg.i253.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i255.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i253.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255.i.i)
  %tobool.not.i256.i.i = icmp eq i32 %call.i255.i.i, 0
  br i1 %tobool.not.i256.i.i, label %rt61pci_bbp_write.exit252.i.i.rt61pci_bbp_write.exit261.i.i_crit_edge, label %if.then.i259.i.i

rt61pci_bbp_write.exit252.i.i.rt61pci_bbp_write.exit261.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit252.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit261.i.i

if.then.i259.i.i:                                 ; preds = %rt61pci_bbp_write.exit252.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %337 = ptrtoint ptr %reg.i253.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 88591, ptr %reg.i253.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %338 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i258.i.i = getelementptr i8, ptr %339, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i258.i.i, i32 257556736) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit261.i.i

rt61pci_bbp_write.exit261.i.i:                    ; preds = %if.then.i259.i.i, %rt61pci_bbp_write.exit252.i.i.rt61pci_bbp_write.exit261.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i253.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i262.i.i) #14
  %340 = ptrtoint ptr %reg.i262.i.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 -1, ptr %reg.i262.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i264.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i262.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264.i.i)
  %tobool.not.i265.i.i = icmp eq i32 %call.i264.i.i, 0
  br i1 %tobool.not.i265.i.i, label %rt61pci_bbp_write.exit261.i.i.rt61pci_bbp_write.exit270.i.i_crit_edge, label %if.then.i268.i.i

rt61pci_bbp_write.exit261.i.i.rt61pci_bbp_write.exit270.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit261.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit270.i.i

if.then.i268.i.i:                                 ; preds = %rt61pci_bbp_write.exit261.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %341 = ptrtoint ptr %reg.i262.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 90880, ptr %reg.i262.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %342 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i267.i.i = getelementptr i8, ptr %343, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i267.i.i, i32 6488320) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit270.i.i

rt61pci_bbp_write.exit270.i.i:                    ; preds = %if.then.i268.i.i, %rt61pci_bbp_write.exit261.i.i.rt61pci_bbp_write.exit270.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i262.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i271.i.i) #14
  %344 = ptrtoint ptr %reg.i271.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 -1, ptr %reg.i271.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i273.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i271.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273.i.i)
  %tobool.not.i274.i.i = icmp eq i32 %call.i273.i.i, 0
  br i1 %tobool.not.i274.i.i, label %rt61pci_bbp_write.exit270.i.i.rt61pci_bbp_write.exit279.i.i_crit_edge, label %if.then.i277.i.i

rt61pci_bbp_write.exit270.i.i.rt61pci_bbp_write.exit279.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit270.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit279.i.i

if.then.i277.i.i:                                 ; preds = %rt61pci_bbp_write.exit270.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %345 = ptrtoint ptr %reg.i271.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 91670, ptr %reg.i271.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %346 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i276.i.i = getelementptr i8, ptr %347, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i276.i.i, i32 375783680) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit279.i.i

rt61pci_bbp_write.exit279.i.i:                    ; preds = %if.then.i277.i.i, %rt61pci_bbp_write.exit270.i.i.rt61pci_bbp_write.exit279.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i271.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i280.i.i) #14
  %348 = ptrtoint ptr %reg.i280.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 -1, ptr %reg.i280.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i282.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i280.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282.i.i)
  %tobool.not.i283.i.i = icmp eq i32 %call.i282.i.i, 0
  br i1 %tobool.not.i283.i.i, label %rt61pci_bbp_write.exit279.i.i.rt61pci_bbp_write.exit288.i.i_crit_edge, label %if.then.i286.i.i

rt61pci_bbp_write.exit279.i.i.rt61pci_bbp_write.exit288.i.i_crit_edge: ; preds = %rt61pci_bbp_write.exit279.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit288.i.i

if.then.i286.i.i:                                 ; preds = %rt61pci_bbp_write.exit279.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %349 = ptrtoint ptr %reg.i280.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 92932, ptr %reg.i280.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %350 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i285.i.i = getelementptr i8, ptr %351, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i285.i.i, i32 74121472) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit288.i.i

rt61pci_bbp_write.exit288.i.i:                    ; preds = %if.then.i286.i.i, %rt61pci_bbp_write.exit279.i.i.rt61pci_bbp_write.exit288.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i280.i.i) #14
  %eeprom.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rt61pci_bbp_write.exit288.i.i
  %i.0301.i.i = phi i32 [ 0, %rt61pci_bbp_write.exit288.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.0301.i.i, 19
  %352 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %eeprom.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i16, ptr %353, i32 %add.i.i
  %354 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %arrayidx.i.i.i, align 2
  %356 = call i16 @llvm.bswap.i16(i16 %355) #14
  %357 = zext i16 %356 to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %356, label %if.then9.i.i [
    i16 -1, label %for.body.i.i.for.inc.i.i_crit_edge
    i16 0, label %for.body.i.i.for.inc.i.i_crit_edge40
  ]

for.body.i.i.for.inc.i.i_crit_edge40:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i289.i.i) #14
  %358 = ptrtoint ptr %reg.i289.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 -1, ptr %reg.i289.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #14
  %call.i291.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i289.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291.i.i)
  %tobool.not.i292.i.i = icmp eq i32 %call.i291.i.i, 0
  br i1 %tobool.not.i292.i.i, label %if.then9.i.i.rt61pci_bbp_write.exit297.i.i_crit_edge, label %if.then.i295.i.i

if.then9.i.i.rt61pci_bbp_write.exit297.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit297.i.i

if.then.i295.i.i:                                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or48.i300.i.i = and i16 %356, 32767
  %or48.i.i.i = zext i16 %or48.i300.i.i to i32
  %or74.i.i.i = or i32 %or48.i.i.i, 65536
  %359 = ptrtoint ptr %reg.i289.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %or74.i.i.i, ptr %reg.i289.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %360 = call i32 @llvm.bswap.i32(i32 %or74.i.i.i) #14
  %361 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i294.i.i = getelementptr i8, ptr %362, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i294.i.i, i32 %360) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit297.i.i

rt61pci_bbp_write.exit297.i.i:                    ; preds = %if.then.i295.i.i, %if.then9.i.i.rt61pci_bbp_write.exit297.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i289.i.i) #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %rt61pci_bbp_write.exit297.i.i, %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge40
  %inc.i.i = add nuw nsw i32 %i.0301.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.end.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %363 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %364, i32 13400
  %365 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %366 = or i32 %365, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %367 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %368, i32 13400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %366) #14, !srcloc !141
  br label %if.end14

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %369 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %370, i32 12328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 404226048) #14, !srcloc !141
  br label %if.end14

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge35
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %state)
  %cmp.i = icmp eq i32 %state, 7
  %conv.i = zext i1 %cmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %state)
  %cmp1.i = icmp eq i32 %state, 6
  br i1 %cmp1.i, label %if.then.i, label %sw.bb3.do.body4.i_crit_edge

sw.bb3.do.body4.i_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i.i25 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %371 = ptrtoint ptr %csr.i.i25 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %csr.i.i25, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %372, i32 13416
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %374 = ptrtoint ptr %csr.i.i25 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %csr.i.i25, align 4
  %add.ptr.i461.i = getelementptr i8, ptr %375, i32 13416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i461.i, i32 %373) #14, !srcloc !141
  %376 = ptrtoint ptr %csr.i.i25 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %csr.i.i25, align 4
  %add.ptr.i463.i = getelementptr i8, ptr %377, i32 20
  %378 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i463.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %379 = ptrtoint ptr %csr.i.i25 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %csr.i.i25, align 4
  %add.ptr.i465.i = getelementptr i8, ptr %380, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i465.i, i32 %378) #14, !srcloc !141
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %sw.bb3.do.body4.i_crit_edge
  %irqmask_lock.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 63
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqmask_lock.i) #14
  %csr.i466.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %381 = ptrtoint ptr %csr.i466.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %csr.i466.i, align 4
  %add.ptr.i467.i = getelementptr i8, ptr %382, i32 13420
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i467.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %384 = and i32 %383, 2013331455
  %385 = tail call i32 @llvm.bswap.i32(i32 %384) #14
  %shl53.i = select i1 %cmp.i, i32 2, i32 0
  %shl81.i = select i1 %cmp.i, i32 4, i32 0
  %shl109.i = select i1 %cmp.i, i32 128, i32 0
  %or.i = or i32 %shl53.i, %conv.i
  %or61.i = or i32 %or.i, %shl81.i
  %or89.i = or i32 %or61.i, %shl109.i
  %or117.i = or i32 %or89.i, %385
  %or143.i = or i32 %or117.i, 65280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %386 = tail call i32 @llvm.bswap.i32(i32 %or143.i) #14
  %387 = ptrtoint ptr %csr.i466.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %csr.i466.i, align 4
  %add.ptr.i469.i = getelementptr i8, ptr %388, i32 13420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i469.i, i32 %386) #14, !srcloc !141
  %389 = ptrtoint ptr %csr.i466.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %csr.i466.i, align 4
  %add.ptr.i471.i = getelementptr i8, ptr %390, i32 24
  %391 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i471.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %392 = and i32 %391, 16711679
  %393 = tail call i32 @llvm.bswap.i32(i32 %392) #14
  %and352.masked.i = select i1 %cmp.i, i32 376, i32 0
  %and380.i = or i32 %and352.masked.i, %or89.i
  %or396.i = or i32 %and380.i, %393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %394 = tail call i32 @llvm.bswap.i32(i32 %or396.i) #14
  %395 = ptrtoint ptr %csr.i466.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %csr.i466.i, align 4
  %add.ptr.i473.i = getelementptr i8, ptr %396, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i473.i, i32 %394) #14, !srcloc !141
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqmask_lock.i, i32 noundef %call8.i) #14
  br i1 %cmp.i, label %if.then400.i, label %do.body4.i.if.end14_crit_edge

do.body4.i.if.end14_crit_edge:                    ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then400.i:                                     ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  %txstatus_tasklet.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 57
  tail call void @tasklet_kill(ptr noundef %txstatus_tasklet.i) #14
  %rxdone_tasklet.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 60
  tail call void @tasklet_kill(ptr noundef %rxdone_tasklet.i) #14
  %autowake_tasklet.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 61
  tail call void @tasklet_kill(ptr noundef %autowake_tasklet.i) #14
  %tbtt_tasklet.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 59
  tail call void @tasklet_kill(ptr noundef %tbtt_tasklet.i) #14
  br label %if.end14

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge36, %entry.sw.bb4_crit_edge37, %entry.sw.bb4_crit_edge38
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp.not.i = icmp eq i32 %state, 3
  %csr.i.i27 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %397 = ptrtoint ptr %csr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %csr.i.i27, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %398, i32 12336
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %400 = and i32 %399, -100663297
  %401 = tail call i32 @llvm.bswap.i32(i32 %400) #14
  %or.i29 = select i1 %cmp.not.i, i32 4, i32 2
  %or46.i = or i32 %401, %or.i29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %402 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #14
  %403 = ptrtoint ptr %csr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %csr.i.i27, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %404, i32 12336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %402) #14, !srcloc !141
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i30.for.body.i_crit_edge, %sw.bb4
  %i.095.i = phi i32 [ 0, %sw.bb4 ], [ %inc.i, %if.end.i30.for.body.i_crit_edge ]
  %405 = ptrtoint ptr %csr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %csr.i.i27, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %406, i32 12336
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %408 = and i32 %407, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %408)
  %409 = icmp eq i32 %408, 0
  %cmp72.i = xor i1 %cmp.not.i, %409
  br i1 %cmp72.i, label %for.body.i.if.end14_crit_edge, label %if.end.i30

for.body.i.if.end14_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end.i30:                                       ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %410 = ptrtoint ptr %csr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %csr.i.i27, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %411, i32 12336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 %402) #14, !srcloc !141
  tail call void @msleep(i32 noundef 10) #14
  %inc.i = add nuw nsw i32 %i.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i30.do.body_crit_edge, label %if.end.i30.for.body.i_crit_edge

if.end.i30.for.body.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end.i30.do.body_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %if.end.i30.do.body_crit_edge, %do.end.i.i.i, %do.body.i.i.i.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  %retval1.0 = phi i32 [ -524, %entry.do.body_crit_edge ], [ -5, %sw.bb.do.body_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %do.body.i.i.i.do.body_crit_edge ], [ -16, %if.end.i30.do.body_crit_edge ]
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @rt61pci_set_device_state._rs, ptr noundef nonnull @__func__.rt61pci_set_device_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.if.end14_crit_edge, label %do.end

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %412 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %415, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.rt61pci_set_device_state, i32 noundef %state, i32 noundef %retval1.0) #17
  br label %if.end14

if.end14:                                         ; preds = %do.end, %do.body.if.end14_crit_edge, %for.body.i.if.end14_crit_edge, %if.then400.i, %do.body4.i.if.end14_crit_edge, %sw.bb2, %if.end.i
  %retval1.034 = phi i32 [ %retval1.0, %do.body.if.end14_crit_edge ], [ %retval1.0, %do.end ], [ 0, %sw.bb2 ], [ 0, %if.end.i ], [ 0, %do.body4.i.if.end14_crit_edge ], [ 0, %if.then400.i ], [ 0, %for.body.i.if.end14_crit_edge ]
  ret i32 %retval1.034
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_rfkill_poll(ptr nocapture noundef readonly %rt2x00dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12340
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  %3 = lshr i32 %2, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %shr = and i32 %3, 1
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_link_stats(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef writeonly %qual) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12480
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %rx_failed = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 5
  %5 = ptrtoint ptr %rx_failed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_failed, align 4
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 12484
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #14, !srcloc !138
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %shr28 = lshr i32 %9, 16
  %false_cca = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 1
  %10 = ptrtoint ptr %false_cca to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr28, ptr %false_cca, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_reset_tuner(ptr noundef %rt2x00dev, ptr nocapture noundef %qual) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vgc_level1.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %0 = ptrtoint ptr %vgc_level1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vgc_level1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 32
  br i1 %cmp.not.i, label %entry.rt61pci_set_vgc.exit_crit_edge, label %if.then.i

entry.rt61pci_set_vgc.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_set_vgc.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #14
  %2 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !142
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #14
  %call.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.rt61pci_bbp_write.exit.i_crit_edge, label %if.then.i.i

if.then.i.rt61pci_bbp_write.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 69920, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %4 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 537985280) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit.i

rt61pci_bbp_write.exit.i:                         ; preds = %if.then.i.i, %if.then.i.rt61pci_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #14
  %6 = ptrtoint ptr %vgc_level1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %vgc_level1.i, align 4
  %vgc_level_reg.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %7 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %vgc_level_reg.i, align 1
  br label %rt61pci_set_vgc.exit

rt61pci_set_vgc.exit:                             ; preds = %rt61pci_bbp_write.exit.i, %entry.rt61pci_set_vgc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_link_tuner(ptr noundef %rt2x00dev, ptr nocapture noundef %qual, i32 noundef %count) #2 align 64 {
entry:
  %reg.i.i174 = alloca i32, align 4
  %reg.i.i159 = alloca i32, align 4
  %reg.i.i144 = alloca i32, align 4
  %reg.i.i131 = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_band = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 6
  %0 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cap_flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %2 = ptrtoint ptr %cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cap_flags.i.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool.i.i.not, i8 72, i8 88
  %spec.select125 = select i1 %tobool.i.i.not, i8 40, i8 56
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.i130.not = icmp eq i32 %5, 0
  %spec.select126 = select i1 %tobool.i.i130.not, i8 64, i8 80
  %spec.select127 = select i1 %tobool.i.i130.not, i8 32, i8 48
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then
  %up_bound.0 = phi i8 [ %spec.select, %if.then ], [ %spec.select126, %if.else ]
  %low_bound.0 = phi i8 [ %spec.select125, %if.then ], [ %spec.select127, %if.else ]
  %intf_associated = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 26
  %6 = ptrtoint ptr %intf_associated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intf_associated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end15.dynamic_cca_tune_crit_edge, label %if.end17

if.end15.dynamic_cca_tune_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %dynamic_cca_tune

if.end17:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %qual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %9)
  %cmp18 = icmp sgt i32 %9, -36
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %vgc_level1.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %10 = ptrtoint ptr %vgc_level1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vgc_level1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 96
  br i1 %cmp.not.i, label %if.then20.cleanup_crit_edge, label %if.then.i

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #14
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !142
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #14
  %call.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.rt61pci_bbp_write.exit.i_crit_edge, label %if.then.i.i

if.then.i.rt61pci_bbp_write.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 69984, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %csr.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %14 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1611727104) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit.i

rt61pci_bbp_write.exit.i:                         ; preds = %if.then.i.i, %if.then.i.rt61pci_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #14
  %16 = ptrtoint ptr %vgc_level1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 96, ptr %vgc_level1.i, align 4
  %vgc_level_reg.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %17 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 96, ptr %vgc_level_reg.i, align 1
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -59, i32 %9)
  %cmp23 = icmp ugt i32 %9, -59
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  %vgc_level1.i132 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %18 = ptrtoint ptr %vgc_level1.i132 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vgc_level1.i132, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %up_bound.0)
  %cmp.not.i133 = icmp eq i8 %19, %up_bound.0
  br i1 %cmp.not.i133, label %if.then25.cleanup_crit_edge, label %if.then.i137

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i137:                                     ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i131) #14
  %20 = ptrtoint ptr %reg.i.i131 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %reg.i.i131, align 4, !annotation !142
  %csr_mutex.i.i134 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i134, i32 noundef 0) #14
  %call.i.i135 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i131) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i135)
  %tobool.not.i.i136 = icmp eq i32 %call.i.i135, 0
  br i1 %tobool.not.i.i136, label %if.then.i137.rt61pci_bbp_write.exit.i142_crit_edge, label %if.then.i.i140

if.then.i137.rt61pci_bbp_write.exit.i142_crit_edge: ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit.i142

if.then.i.i140:                                   ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i.i = zext i8 %up_bound.0 to i32
  %or74.i.i = or i32 %conv7.i.i, 69888
  %21 = ptrtoint ptr %reg.i.i131 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or74.i.i, ptr %reg.i.i131, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %22 = call i32 @llvm.bswap.i32(i32 %or74.i.i) #14
  %csr.i.i.i138 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %23 = ptrtoint ptr %csr.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i.i.i138, align 4
  %add.ptr.i.i.i139 = getelementptr i8, ptr %24, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i139, i32 %22) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit.i142

rt61pci_bbp_write.exit.i142:                      ; preds = %if.then.i.i140, %if.then.i137.rt61pci_bbp_write.exit.i142_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i134) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i131) #14
  %25 = ptrtoint ptr %vgc_level1.i132 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %up_bound.0, ptr %vgc_level1.i132, align 4
  %vgc_level_reg.i141 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %26 = ptrtoint ptr %vgc_level_reg.i141 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %up_bound.0, ptr %vgc_level_reg.i141, align 1
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67, i32 %9)
  %cmp28 = icmp ugt i32 %9, -67
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.end26
  %narrow124 = add nuw nsw i8 %low_bound.0, 16
  %vgc_level1.i145 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %27 = ptrtoint ptr %vgc_level1.i145 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vgc_level1.i145, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %narrow124)
  %cmp.not.i146 = icmp eq i8 %28, %narrow124
  br i1 %cmp.not.i146, label %if.then30.cleanup_crit_edge, label %if.then.i150

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i150:                                     ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i144) #14
  %29 = ptrtoint ptr %reg.i.i144 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %reg.i.i144, align 4, !annotation !142
  %csr_mutex.i.i147 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i147, i32 noundef 0) #14
  %call.i.i148 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i144) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i148)
  %tobool.not.i.i149 = icmp eq i32 %call.i.i148, 0
  br i1 %tobool.not.i.i149, label %if.then.i150.rt61pci_bbp_write.exit.i157_crit_edge, label %if.then.i.i155

if.then.i150.rt61pci_bbp_write.exit.i157_crit_edge: ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit.i157

if.then.i.i155:                                   ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i.i151 = zext i8 %narrow124 to i32
  %or74.i.i152 = or i32 %conv7.i.i151, 69888
  %30 = ptrtoint ptr %reg.i.i144 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or74.i.i152, ptr %reg.i.i144, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %31 = call i32 @llvm.bswap.i32(i32 %or74.i.i152) #14
  %csr.i.i.i153 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %32 = ptrtoint ptr %csr.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csr.i.i.i153, align 4
  %add.ptr.i.i.i154 = getelementptr i8, ptr %33, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i154, i32 %31) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit.i157

rt61pci_bbp_write.exit.i157:                      ; preds = %if.then.i.i155, %if.then.i150.rt61pci_bbp_write.exit.i157_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i147) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i144) #14
  %34 = ptrtoint ptr %vgc_level1.i145 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %narrow124, ptr %vgc_level1.i145, align 4
  %vgc_level_reg.i156 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %35 = ptrtoint ptr %vgc_level_reg.i156 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %narrow124, ptr %vgc_level_reg.i156, align 1
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %9)
  %cmp36 = icmp ugt i32 %9, -75
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.end34
  %narrow = add nuw nsw i8 %low_bound.0, 8
  %vgc_level1.i160 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %36 = ptrtoint ptr %vgc_level1.i160 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %vgc_level1.i160, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %narrow)
  %cmp.not.i161 = icmp eq i8 %37, %narrow
  br i1 %cmp.not.i161, label %if.then38.cleanup_crit_edge, label %if.then.i165

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i165:                                     ; preds = %if.then38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i159) #14
  %38 = ptrtoint ptr %reg.i.i159 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %reg.i.i159, align 4, !annotation !142
  %csr_mutex.i.i162 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i162, i32 noundef 0) #14
  %call.i.i163 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i159) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %tobool.not.i.i164 = icmp eq i32 %call.i.i163, 0
  br i1 %tobool.not.i.i164, label %if.then.i165.rt61pci_bbp_write.exit.i172_crit_edge, label %if.then.i.i170

if.then.i165.rt61pci_bbp_write.exit.i172_crit_edge: ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit.i172

if.then.i.i170:                                   ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i.i166 = zext i8 %narrow to i32
  %or74.i.i167 = or i32 %conv7.i.i166, 69888
  %39 = ptrtoint ptr %reg.i.i159 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or74.i.i167, ptr %reg.i.i159, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %40 = call i32 @llvm.bswap.i32(i32 %or74.i.i167) #14
  %csr.i.i.i168 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %41 = ptrtoint ptr %csr.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %csr.i.i.i168, align 4
  %add.ptr.i.i.i169 = getelementptr i8, ptr %42, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i169, i32 %40) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit.i172

rt61pci_bbp_write.exit.i172:                      ; preds = %if.then.i.i170, %if.then.i165.rt61pci_bbp_write.exit.i172_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i162) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i159) #14
  %43 = ptrtoint ptr %vgc_level1.i160 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %narrow, ptr %vgc_level1.i160, align 4
  %vgc_level_reg.i171 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %44 = ptrtoint ptr %vgc_level_reg.i171 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %narrow, ptr %vgc_level_reg.i171, align 1
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %.tr = trunc i32 %9 to i8
  %45 = shl i8 %.tr, 1
  %46 = add nuw nsw i8 %up_bound.0, -108
  %conv46 = add i8 %46, %45
  %47 = tail call i8 @llvm.umax.i8(i8 %low_bound.0, i8 %conv46)
  %vgc_level = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %48 = ptrtoint ptr %vgc_level to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %vgc_level, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %47)
  %cmp55 = icmp ugt i8 %49, %47
  br i1 %cmp55, label %if.then.i180, label %if.end42.dynamic_cca_tune_crit_edge

if.end42.dynamic_cca_tune_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %dynamic_cca_tune

if.then.i180:                                     ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i174) #14
  %50 = ptrtoint ptr %reg.i.i174 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %reg.i.i174, align 4, !annotation !142
  %csr_mutex.i.i177 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i177, i32 noundef 0) #14
  %call.i.i178 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i174) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %tobool.not.i.i179 = icmp eq i32 %call.i.i178, 0
  br i1 %tobool.not.i.i179, label %if.then.i180.rt61pci_set_vgc.exit188_crit_edge, label %if.then.i.i185

if.then.i180.rt61pci_set_vgc.exit188_crit_edge:   ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_set_vgc.exit188

if.then.i.i185:                                   ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i.i181 = zext i8 %47 to i32
  %or74.i.i182 = or i32 %conv7.i.i181, 69888
  %51 = ptrtoint ptr %reg.i.i174 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or74.i.i182, ptr %reg.i.i174, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %52 = call i32 @llvm.bswap.i32(i32 %or74.i.i182) #14
  %csr.i.i.i183 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %53 = ptrtoint ptr %csr.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csr.i.i.i183, align 4
  %add.ptr.i.i.i184 = getelementptr i8, ptr %54, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i184, i32 %52) #14, !srcloc !141
  br label %rt61pci_set_vgc.exit188

rt61pci_set_vgc.exit188:                          ; preds = %if.then.i.i185, %if.then.i180.rt61pci_set_vgc.exit188_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i177) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i174) #14
  %55 = ptrtoint ptr %vgc_level to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %47, ptr %vgc_level, align 4
  %vgc_level_reg.i186 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %56 = ptrtoint ptr %vgc_level_reg.i186 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %47, ptr %vgc_level_reg.i186, align 1
  br label %cleanup

dynamic_cca_tune:                                 ; preds = %if.end42.dynamic_cca_tune_crit_edge, %if.end15.dynamic_cca_tune_crit_edge
  %up_bound.2 = phi i8 [ %47, %if.end42.dynamic_cca_tune_crit_edge ], [ %up_bound.0, %if.end15.dynamic_cca_tune_crit_edge ]
  %false_cca = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 1
  %57 = ptrtoint ptr %false_cca to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %false_cca, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %58)
  %cmp59 = icmp sgt i32 %58, 512
  br i1 %cmp59, label %land.lhs.true, label %if.else68

land.lhs.true:                                    ; preds = %dynamic_cca_tune
  %vgc_level61 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %59 = ptrtoint ptr %vgc_level61 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %vgc_level61, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %up_bound.2)
  %cmp64 = icmp ult i8 %60, %up_bound.2
  br i1 %cmp64, label %rt61pci_set_vgc.exit203, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

rt61pci_set_vgc.exit203:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nuw i8 %60, 1
  %61 = ptrtoint ptr %vgc_level61 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %inc, ptr %vgc_level61, align 4
  br label %cleanup

if.else68:                                        ; preds = %dynamic_cca_tune
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %58)
  %cmp70 = icmp slt i32 %58, 100
  br i1 %cmp70, label %land.lhs.true72, label %if.else68.cleanup_crit_edge

if.else68.cleanup_crit_edge:                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true72:                                  ; preds = %if.else68
  %vgc_level73 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %62 = ptrtoint ptr %vgc_level73 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vgc_level73, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %low_bound.0)
  %cmp76 = icmp ugt i8 %63, %low_bound.0
  br i1 %cmp76, label %rt61pci_set_vgc.exit218, label %land.lhs.true72.cleanup_crit_edge

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

rt61pci_set_vgc.exit218:                          ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i8 %63, -1
  %64 = ptrtoint ptr %vgc_level73 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %dec, ptr %vgc_level73, align 4
  br label %cleanup

cleanup:                                          ; preds = %rt61pci_set_vgc.exit218, %land.lhs.true72.cleanup_crit_edge, %if.else68.cleanup_crit_edge, %rt61pci_set_vgc.exit203, %land.lhs.true.cleanup_crit_edge, %rt61pci_set_vgc.exit188, %rt61pci_bbp_write.exit.i172, %if.then38.cleanup_crit_edge, %rt61pci_bbp_write.exit.i157, %if.then30.cleanup_crit_edge, %rt61pci_bbp_write.exit.i142, %if.then25.cleanup_crit_edge, %rt61pci_bbp_write.exit.i, %if.then20.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_start_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 14, label %sw.bb
    i32 16, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 12352
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %8 = and i32 %7, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %10, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %8) #14, !srcloc !141
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i110 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i110 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %12, i32 12388
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %14 = or i32 %13, 6400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %15 = ptrtoint ptr %csr.i110 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i110, align 4
  %add.ptr.i113 = getelementptr i8, ptr %16, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %14) #14, !srcloc !141
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_kick_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb43
    i32 3, label %sw.bb71
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 13360
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %10, i32 13360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %8) #14, !srcloc !141
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i120 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i120 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i120, align 4
  %add.ptr.i121 = getelementptr i8, ptr %12, i32 13360
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %14 = or i32 %13, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %15 = ptrtoint ptr %csr.i120 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i120, align 4
  %add.ptr.i123 = getelementptr i8, ptr %16, i32 13360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %14) #14, !srcloc !141
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i124 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %csr.i124 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i124, align 4
  %add.ptr.i125 = getelementptr i8, ptr %18, i32 13360
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %20 = or i32 %19, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %csr.i124 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i124, align 4
  %add.ptr.i127 = getelementptr i8, ptr %22, i32 13360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %20) #14, !srcloc !141
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i128 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %csr.i128 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i128, align 4
  %add.ptr.i129 = getelementptr i8, ptr %24, i32 13360
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %26 = or i32 %25, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %csr.i128 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr.i128, align 4
  %add.ptr.i131 = getelementptr i8, ptr %28, i32 13360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %26) #14, !srcloc !141
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb71, %sw.bb43, %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_stop_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb43
    i32 3, label %sw.bb71
    i32 14, label %sw.bb99
    i32 16, label %sw.bb127
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 13360
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %8 = or i32 %7, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i242 = getelementptr i8, ptr %10, i32 13360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242, i32 %8) #14, !srcloc !141
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i243 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i243 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i243, align 4
  %add.ptr.i244 = getelementptr i8, ptr %12, i32 13360
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i244) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %14 = or i32 %13, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %15 = ptrtoint ptr %csr.i243 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i243, align 4
  %add.ptr.i246 = getelementptr i8, ptr %16, i32 13360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246, i32 %14) #14, !srcloc !141
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i247 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %csr.i247 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i247, align 4
  %add.ptr.i248 = getelementptr i8, ptr %18, i32 13360
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i248) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %20 = or i32 %19, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %csr.i247 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i247, align 4
  %add.ptr.i250 = getelementptr i8, ptr %22, i32 13360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i250, i32 %20) #14, !srcloc !141
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i251 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %csr.i251 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i251, align 4
  %add.ptr.i252 = getelementptr i8, ptr %24, i32 13360
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i252) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %26 = or i32 %25, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %csr.i251 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr.i251, align 4
  %add.ptr.i254 = getelementptr i8, ptr %28, i32 13360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254, i32 %26) #14, !srcloc !141
  br label %sw.epilog

sw.bb99:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i255 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %29 = ptrtoint ptr %csr.i255 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr.i255, align 4
  %add.ptr.i256 = getelementptr i8, ptr %30, i32 12352
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i256) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %32 = or i32 %31, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %33 = ptrtoint ptr %csr.i255 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %csr.i255, align 4
  %add.ptr.i258 = getelementptr i8, ptr %34, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258, i32 %32) #14, !srcloc !141
  br label %sw.epilog

sw.bb127:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i259 = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %35 = ptrtoint ptr %csr.i259 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csr.i259, align 4
  %add.ptr.i260 = getelementptr i8, ptr %36, i32 12388
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %38 = and i32 %37, -6401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %39 = ptrtoint ptr %csr.i259 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csr.i259, align 4
  %add.ptr.i262 = getelementptr i8, ptr %40, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 %38) #14, !srcloc !141
  %tbtt_tasklet = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 59
  tail call void @tasklet_kill(ptr noundef %tbtt_tasklet) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb127, %sw.bb99, %sw.bb71, %sw.bb43, %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mmio_flush_queue(ptr noundef, i1 noundef zeroext) #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt61pci_write_tx_desc(ptr nocapture noundef readonly %entry1, ptr noundef %txdesc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = and i32 %7, 49391
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qid, align 4
  %and16 = and i32 %13, 15
  %or = or i32 %9, %and16
  %aifs = getelementptr inbounds %struct.data_queue, ptr %11, i32 0, i32 15
  %14 = ptrtoint ptr %aifs to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %aifs, align 2
  %conv31 = zext i16 %15 to i32
  %shl38 = shl nuw nsw i32 %conv31, 4
  %or46 = or i32 %shl38, %or
  %cw_min = getelementptr inbounds %struct.data_queue, ptr %11, i32 0, i32 16
  %16 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cw_min, align 4
  %conv61 = zext i16 %17 to i32
  %shl68 = shl nuw nsw i32 %conv61, 8
  %and75 = and i32 %shl68, 3840
  %cw_max = getelementptr inbounds %struct.data_queue, ptr %11, i32 0, i32 17
  %18 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cw_max, align 2
  %conv91 = zext i16 %19 to i32
  %shl98 = shl nuw nsw i32 %conv91, 12
  %and105 = and i32 %shl98, 61440
  %iv_offset = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 8
  %20 = ptrtoint ptr %iv_offset to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %iv_offset, align 2
  %conv120 = zext i16 %21 to i32
  %shl127 = shl nuw i32 %conv120, 16
  %and134 = and i32 %shl127, 4128768
  %22 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %txdesc, align 4
  %24 = shl i32 %23, 26
  %shl156 = and i32 %24, 268435456
  %or46.masked = and i32 %or46, 264241407
  %or76.masked = or i32 %and75, %or46.masked
  %or106.masked = or i32 %or76.masked, %and105
  %and147.masked = or i32 %or106.masked, %and134
  %and176 = or i32 %and147.masked, %shl156
  %or190 = or i32 %and176, 536870912
  %25 = tail call i32 @llvm.bswap.i32(i32 %or190) #14
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i1066 = getelementptr i32, ptr %5, i32 2
  %u = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3
  %signal = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 3
  %27 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %signal, align 4
  %29 = and i16 %28, 255
  %and219.masked = zext i16 %29 to i32
  %service = getelementptr inbounds %struct.anon.134, ptr %u, i32 0, i32 3
  %30 = ptrtoint ptr %service to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %service, align 2
  %conv235 = zext i16 %31 to i32
  %shl242 = shl nuw nsw i32 %conv235, 8
  %shl242.masked = and i32 %shl242, 65280
  %and262 = or i32 %shl242.masked, %and219.masked
  %length_low = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %length_low to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %length_low, align 2
  %conv265 = zext i16 %33 to i32
  %shl272 = shl nuw i32 %conv265, 16
  %shl272.masked = and i32 %shl272, 16711680
  %and292 = or i32 %and262, %shl272.masked
  %34 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %u, align 4
  %conv295 = zext i16 %35 to i32
  %shl302 = shl i32 %conv295, 24
  %or310 = or i32 %and292, %shl302
  %36 = tail call i32 @llvm.bswap.i32(i32 %or310) #14
  %37 = ptrtoint ptr %arrayidx.i.i1066 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.i.i1066, align 4
  %38 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %txdesc, align 4
  %40 = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not = icmp eq i32 %40, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %iv = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %41 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iv, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 3
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx.i, align 4
  %arrayidx314 = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %44 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx314, align 4
  %arrayidx.i1068 = getelementptr i32, ptr %5, i32 4
  %46 = ptrtoint ptr %arrayidx.i1068 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.i1068, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i.i1069 = getelementptr i32, ptr %5, i32 5
  %47 = ptrtoint ptr %arrayidx.i.i1069 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i1069, align 4
  %49 = and i32 %48, -16776962
  %50 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %queue, align 4
  %qid330 = getelementptr inbounds %struct.data_queue, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %qid330 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qid330, align 4
  %shl337 = shl i32 %53, 13
  %and344 = and i32 %shl337, 57344
  %entry_idx = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 4
  %54 = ptrtoint ptr %entry_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %entry_idx, align 4
  %shl365 = shl i32 %55, 8
  %and372 = and i32 %shl365, 7936
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %51, align 4
  %tx_power = getelementptr inbounds %struct.rt2x00_dev, ptr %57, i32 0, i32 34
  %58 = ptrtoint ptr %tx_power to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tx_power, align 2
  %60 = and i16 %59, 255
  %61 = tail call i16 @llvm.umin.i16(i16 %60, i16 31)
  %62 = zext i16 %61 to i32
  %shl414 = shl nuw nsw i32 %62, 16
  %63 = or i32 %49, 1
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %or373 = or i32 %64, %and344
  %or422 = or i32 %or373, %and372
  %or448 = or i32 %or422, %shl414
  %65 = tail call i32 @llvm.bswap.i32(i32 %or448) #14
  %66 = ptrtoint ptr %arrayidx.i.i1069 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx.i.i1069, align 4
  %67 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %queue, align 4
  %qid450 = getelementptr inbounds %struct.data_queue, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %qid450 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qid450, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %70)
  %cmp451.not = icmp eq i32 %70, 16
  br i1 %cmp451.not, label %if.end.if.end513_crit_edge, label %if.then453

if.end.if.end513_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end513

if.then453:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i1071 = getelementptr i32, ptr %5, i32 6
  %skb_dma = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %71 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %skb_dma, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #14
  %74 = ptrtoint ptr %arrayidx.i.i1071 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx.i.i1071, align 4
  %arrayidx.i.i1073 = getelementptr i32, ptr %5, i32 11
  %75 = ptrtoint ptr %arrayidx.i.i1073 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i1073, align 4
  %77 = and i32 %76, 15794175
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %length = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 1
  %79 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %length, align 4
  %81 = and i16 %80, 4095
  %and511 = zext i16 %81 to i32
  %or512 = or i32 %78, %and511
  %82 = tail call i32 @llvm.bswap.i32(i32 %or512) #14
  %83 = ptrtoint ptr %arrayidx.i.i1073 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx.i.i1073, align 4
  br label %if.end513

if.end513:                                        ; preds = %if.then453, %if.end.if.end513_crit_edge
  %84 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %txdesc, align 4
  %86 = lshr i32 %85, 2
  %shl588 = and i32 %86, 4
  %87 = load volatile i32, ptr %txdesc, align 4
  %88 = lshr i32 %87, 4
  %shl618 = and i32 %88, 8
  %or596 = or i32 %shl588, %shl618
  %89 = load volatile i32, ptr %txdesc, align 4
  %90 = lshr i32 %89, 1
  %shl648 = and i32 %90, 16
  %or626 = or i32 %or596, %shl648
  %rate_mode = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 4
  %91 = ptrtoint ptr %rate_mode to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rate_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp670 = icmp eq i32 %92, 1
  %ifs = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 4
  %93 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ifs, align 4
  %shl707 = shl i32 %94, 6
  %and714 = and i32 %shl707, 64
  %95 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %txdesc, align 4
  %97 = lshr i32 %96, 1
  %shl737 = and i32 %97, 128
  %98 = load volatile i32, ptr %txdesc, align 4
  %99 = lshr i32 %98, 4
  %shl767 = and i32 %99, 256
  %100 = load volatile i32, ptr %txdesc, align 4
  %101 = lshr i32 %100, 1
  %shl797 = and i32 %101, 512
  %shl678.masked.masked.masked.masked.masked = select i1 %cmp670, i32 32, i32 0
  %or686.masked.masked.masked.masked = or i32 %or626, %shl678.masked.masked.masked.masked.masked
  %or715.masked.masked.masked = or i32 %or686.masked.masked.masked.masked, %and714
  %or745.masked.masked = or i32 %or715.masked.masked.masked, %shl737
  %or775.masked = or i32 %or745.masked.masked, %shl767
  %or805 = or i32 %or775.masked, %shl797
  %key_idx = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 7
  %102 = ptrtoint ptr %key_idx to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %key_idx, align 4
  %conv819 = zext i16 %103 to i32
  %shl826 = shl nuw nsw i32 %conv819, 10
  %and817 = or i32 %or805, %shl826
  %or834 = and i32 %and817, 65532
  %length848 = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 1
  %104 = ptrtoint ptr %length848 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %length848, align 4
  %conv849 = zext i16 %105 to i32
  %shl856 = shl nuw i32 %conv849, 16
  %and863 = and i32 %shl856, 268369920
  %106 = load volatile i32, ptr %txdesc, align 4
  %107 = shl i32 %106, 22
  %shl886 = and i32 %107, 268435456
  %cipher = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 6
  %108 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cipher, align 4
  %shl914 = shl i32 %109, 29
  %and846 = or i32 %and863, %or834
  %or894 = or i32 %and846, %shl886
  %and906 = or i32 %or894, %shl914
  %or922 = or i32 %and906, 3
  %110 = tail call i32 @llvm.bswap.i32(i32 %or922) #14
  %111 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %5, align 4
  %desc923 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %112 = ptrtoint ptr %desc923 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %5, ptr %desc923, align 4
  %113 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %queue, align 4
  %qid925 = getelementptr inbounds %struct.data_queue, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %qid925 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qid925, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %116)
  %cmp926 = icmp eq i32 %116, 16
  %conv929 = select i1 %cmp926, i8 24, i8 64
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %117 = ptrtoint ptr %desc_len to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv929, ptr %desc_len, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_write_beacon(ptr noundef %entry1, ptr noundef %txdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12388
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %and = and i32 %9, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #14
  %11 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %12, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %10) #14, !srcloc !141
  tail call void @rt61pci_write_tx_desc(ptr noundef %entry1, ptr noundef %txdesc)
  tail call void @rt2x00debug_dump_frame(ptr noundef %3, i32 noundef 4, ptr noundef %entry1) #14
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %add = add i32 %16, 3
  %div105 = and i32 %add, -4
  %sub19 = sub i32 %div105, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %div105, i32 %16)
  %tobool.not = icmp eq i32 %div105, %16
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %land.lhs.true

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call i32 @__skb_pad(ptr noundef %14, i32 noundef %sub19, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end33_crit_edge, label %do.body23

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

do.body23:                                        ; preds = %land.lhs.true
  %call24 = tail call i32 @___ratelimit(ptr noundef nonnull @rt61pci_write_beacon._rs, ptr noundef nonnull @__func__.rt61pci_write_beacon) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body23.do.end31_crit_edge, label %do.end29

do.body23.do.end31_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.rt61pci_write_beacon) #17
  br label %do.end31

do.end31:                                         ; preds = %do.end29, %do.body23.do.end31_crit_edge
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %skb, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %22 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %23, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %8) #14, !srcloc !141
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %entry.if.end33_crit_edge
  %entry_idx = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 4
  %24 = ptrtoint ptr %entry_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entry_idx, align 4
  %mul34 = shl i32 %25, 8
  %add35 = add i32 %mul34, 11264
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %28 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %29, i32 %add35
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i111, ptr noundef %27, i32 noundef 6) #14
  %add36 = add i32 %mul34, 11288
  %30 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %len39 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 6
  %34 = ptrtoint ptr %len39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len39, align 4
  %add40 = add i32 %35, %sub19
  %36 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %csr.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %37, i32 %add36
  %shr.i = lshr i32 %add40, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i113, ptr noundef %33, i32 noundef %shr.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %38 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %csr.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %39, i32 12392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 135266304) #14, !srcloc !141
  %or66 = or i32 %9, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %40 = tail call i32 @llvm.bswap.i32(i32 %or66) #14
  %41 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %csr.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %42, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %40) #14, !srcloc !141
  %43 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %44, i32 noundef 1) #14
  %45 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_clear_beacon(ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %add.ptr.i = getelementptr i8, ptr %5, i32 12388
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %7 = and i32 %6, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %9, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %7) #14, !srcloc !141
  %entry_idx = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 4
  %10 = ptrtoint ptr %entry_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entry_idx, align 4
  %mul = shl i32 %11, 8
  %add = add i32 %mul, 11264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %15, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %6) #14, !srcloc !141
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt61pci_fill_rxdone(ptr nocapture noundef readonly %entry1, ptr nocapture noundef %rxdesc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  %14 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shr31 = lshr i32 %10, 29
  %conv32 = trunc i32 %shr31 to i8
  %cipher = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 10
  %17 = ptrtoint ptr %cipher to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv32, ptr %cipher, align 8
  %and45 = lshr i32 %10, 8
  %18 = trunc i32 %and45 to i8
  %conv53 = and i8 %18, 3
  %cipher_status = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 11
  %19 = ptrtoint ptr %cipher_status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv53, ptr %cipher_status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %10)
  %cmp56.not = icmp ult i32 %10, 536870912
  br i1 %cmp56.not, label %if.end.if.end90_crit_edge, label %if.then58

if.end.if.end90_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then58:                                        ; preds = %if.end
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %arrayidx.i = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %iv = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 12
  %24 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %iv, align 4
  %25 = load ptr, ptr %5, align 4
  %arrayidx.i216 = getelementptr i32, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i216, align 4
  %arrayidx64 = getelementptr %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 12, i32 1
  %28 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx64, align 4
  %dev_flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %29 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_flags, align 8
  %or65 = or i32 %30, 16
  store i32 %or65, ptr %dev_flags, align 8
  %31 = load ptr, ptr %5, align 4
  %arrayidx.i217 = getelementptr i32, ptr %31, i32 4
  %32 = ptrtoint ptr %arrayidx.i217 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i217, align 4
  %icv = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 13
  %34 = ptrtoint ptr %icv to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %icv, align 4
  %or69 = or i32 %30, 48
  store i32 %or69, ptr %dev_flags, align 8
  %flags70 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %35 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags70, align 4
  %or73 = or i32 %36, 24
  store i32 %or73, ptr %flags70, align 4
  %trunc = trunc i32 %and45 to i2
  %37 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.40)
  switch i2 %trunc, label %if.then58.if.end90_crit_edge [
    i2 0, label %if.then58.if.end90.sink.split_crit_edge
    i2 -2, label %if.then85
  ]

if.then58.if.end90.sink.split_crit_edge:          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.sink.split

if.then58.if.end90_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then85:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.sink.split

if.end90.sink.split:                              ; preds = %if.then85, %if.then58.if.end90.sink.split_crit_edge
  %.sink = phi i32 [ 25, %if.then85 ], [ 26, %if.then58.if.end90.sink.split_crit_edge ]
  %or80 = or i32 %36, %.sink
  %38 = ptrtoint ptr %flags70 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or80, ptr %flags70, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.then58.if.end90_crit_edge, %if.end.if.end90_crit_edge
  %and103 = and i32 %13, 255
  %signal = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 1
  %39 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and103, ptr %signal, align 8
  %and.i = lshr i32 %13, 13
  %conv9.i = and i32 %and.i, 3
  %switch.tableidx = add nsw i32 %conv9.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %40 = icmp ult i32 %switch.tableidx, 3
  br i1 %40, label %switch.lookup, label %if.end90.rt61pci_agc_to_rssi.exit_crit_edge

if.end90.rt61pci_agc_to_rssi.exit_crit_edge:      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_agc_to_rssi.exit

switch.lookup:                                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  %lna_gain.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 33
  %41 = ptrtoint ptr %lna_gain.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %lna_gain.i, align 8
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 5917248, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %43 = trunc i16 %42 to i8
  %conv20.i = add i8 %switch.masked, %43
  %curr_band.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 6
  %44 = ptrtoint ptr %curr_band.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %curr_band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp21.i = icmp eq i32 %45, 1
  %46 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %switch.i = icmp ne i32 %46, 0
  %or.cond.i = and i1 %switch.i, %cmp21.i
  %add31.i = add i8 %conv20.i, 10
  %offset.1.i = select i1 %or.cond.i, i8 %add31.i, i8 %conv20.i
  %47 = lshr i32 %13, 7
  %mul.i = and i32 %47, 62
  %conv54.i = zext i8 %offset.1.i to i32
  %sub.i = sub nsw i32 %mul.i, %conv54.i
  br label %rt61pci_agc_to_rssi.exit

rt61pci_agc_to_rssi.exit:                         ; preds = %switch.lookup, %if.end90.rt61pci_agc_to_rssi.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %switch.lookup ], [ 0, %if.end90.rt61pci_agc_to_rssi.exit_crit_edge ]
  %rssi = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 2
  %48 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i, ptr %rssi, align 4
  %and124 = lshr i32 %10, 16
  %shr131 = and i32 %and124, 4095
  %size = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 3
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr131, ptr %size, align 8
  %50 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool152.not = icmp eq i32 %50, 0
  %dev_flags157 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %51 = ptrtoint ptr %dev_flags157 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dev_flags157, align 8
  %. = select i1 %tobool152.not, i32 2, i32 1
  %or158 = or i32 %52, %.
  store i32 %or158, ptr %dev_flags157, align 8
  %53 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool180.not = icmp eq i32 %53, 0
  br i1 %tobool180.not, label %rt61pci_agc_to_rssi.exit.if.end184_crit_edge, label %if.then181

rt61pci_agc_to_rssi.exit.if.end184_crit_edge:     ; preds = %rt61pci_agc_to_rssi.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184

if.then181:                                       ; preds = %rt61pci_agc_to_rssi.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev_flags182 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %54 = ptrtoint ptr %dev_flags182 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dev_flags182, align 8
  %or183 = or i32 %55, 8
  store i32 %or183, ptr %dev_flags182, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.then181, %rt61pci_agc_to_rssi.exit.if.end184_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt61pci_config_shared_key(ptr nocapture noundef readnone %rt2x00dev, ptr nocapture noundef readnone %crypto, ptr nocapture noundef readnone %key) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_config_pairwise_key(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef readonly %crypto, ptr nocapture noundef %key) #2 align 64 {
entry:
  %addr_entry = alloca %struct.hw_pairwise_ta_entry, align 8
  %key_entry = alloca %struct.hw_key_entry, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr_entry) #14
  %0 = getelementptr inbounds %struct.hw_pairwise_ta_entry, ptr %addr_entry, i32 0, i32 1
  %1 = ptrtoint ptr %addr_entry to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %addr_entry, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_entry) #14
  %2 = getelementptr inbounds %struct.hw_key_entry, ptr %key_entry, i32 0, i32 1
  %3 = getelementptr inbounds %struct.hw_key_entry, ptr %key_entry, i32 0, i32 2
  %cmd = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 1
  %4 = call ptr @memset(ptr %key_entry, i32 255, i32 32)
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then:                                          ; preds = %entry
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %7 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 12456
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %10, label %if.then.cond.true_crit_edge [
    i32 0, label %if.then.cond.end_crit_edge
    i32 -1, label %if.then2
  ]

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.then.cond.true_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

if.then2:                                         ; preds = %if.then
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %12 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %hw_key_idx, align 2
  %13 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %14, i32 12460
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #14, !srcloc !138
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %16, label %if.then2.cond.true_crit_edge [
    i32 0, label %if.then2.cond.end_crit_edge
    i32 -1, label %if.then2.cleanup_crit_edge
  ]

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2.cond.end_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.then2.cond.true_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

cond.true:                                        ; preds = %if.then2.cond.true_crit_edge, %if.then.cond.true_crit_edge
  %reg.0 = phi i32 [ %10, %if.then.cond.true_crit_edge ], [ %16, %if.then2.cond.true_crit_edge ]
  %neg = xor i32 %reg.0, -1
  %18 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 false) #14, !range !147
  %phi.cast = trunc i32 %18 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then2.cond.end_crit_edge, %if.then.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.true ], [ 0, %if.then2.cond.end_crit_edge ], [ 0, %if.then.cond.end_crit_edge ]
  %hw_key_idx11 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %19 = ptrtoint ptr %hw_key_idx11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hw_key_idx11, align 2
  %conv12 = add i8 %20, %cond
  store i8 %conv12, ptr %hw_key_idx11, align 2
  %key14 = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 4
  %21 = call ptr @memcpy(ptr %key_entry, ptr %key14, i32 16)
  %tx_mic17 = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 5
  %22 = ptrtoint ptr %tx_mic17 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %tx_mic17, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %2, align 1
  %rx_mic20 = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 6
  %25 = ptrtoint ptr %rx_mic20 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %rx_mic20, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %3, align 1
  %28 = ptrtoint ptr %addr_entry to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %addr_entry, align 8
  %address = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 2
  %29 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %address, align 4
  %31 = call ptr @memcpy(ptr %addr_entry, ptr %30, i32 6)
  %32 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crypto, align 4
  %conv22 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv22, ptr %0, align 2
  %conv25 = zext i8 %conv12 to i32
  %mul = shl nuw nsw i32 %conv25, 5
  %add26 = add nuw nsw i32 %mul, 4608
  %35 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csr.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %36, i32 %add26
  call void @__iowrite32_copy(ptr noundef %add.ptr.i129, ptr noundef nonnull %key_entry, i32 noundef 8) #14
  %37 = ptrtoint ptr %hw_key_idx11 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hw_key_idx11, align 2
  %conv28 = zext i8 %38 to i32
  %mul29 = shl nuw nsw i32 %conv28, 3
  %add30 = add nuw nsw i32 %mul29, 6656
  %39 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csr.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %40, i32 %add30
  call void @__iowrite32_copy(ptr noundef %add.ptr.i131, ptr noundef nonnull %addr_entry, i32 noundef 2) #14
  %41 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %csr.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %42, i32 12464
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #14, !srcloc !138
  %44 = call i32 @llvm.bswap.i32(i32 %43) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %bssidx = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 3
  %45 = ptrtoint ptr %bssidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bssidx, align 4
  %shl = shl nuw i32 1, %46
  %or = or i32 %shl, %44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %47 = call i32 @llvm.bswap.i32(i32 %or) #14
  %48 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csr.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %49, i32 12464
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %47) #14, !srcloc !141
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags, align 8
  %52 = or i16 %51, 2
  store i16 %52, ptr %flags, align 8
  br label %if.end35

if.end35:                                         ; preds = %cond.end, %entry.if.end35_crit_edge
  %hw_key_idx36 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %53 = ptrtoint ptr %hw_key_idx36 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hw_key_idx36, align 2
  %conv37 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %54)
  %cmp38 = icmp ult i8 %54, 32
  br i1 %cmp38, label %if.then40, label %if.else57

if.then40:                                        ; preds = %if.end35
  %shl43 = shl nuw i32 1, %conv37
  %csr.i136 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %55 = ptrtoint ptr %csr.i136 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %csr.i136, align 4
  %add.ptr.i137 = getelementptr i8, ptr %56, i32 12456
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #14, !srcloc !138
  %58 = call i32 @llvm.bswap.i32(i32 %57) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %59 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cmd, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %60, label %if.then40.if.end56_crit_edge [
    i32 0, label %if.then48
    i32 1, label %if.then53
  ]

if.then40.if.end56_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then48:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %or49 = or i32 %58, %shl43
  br label %if.end56

if.then53:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %neg54 = xor i32 %shl43, -1
  %and = and i32 %58, %neg54
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then48, %if.then40.if.end56_crit_edge
  %reg.1 = phi i32 [ %or49, %if.then48 ], [ %and, %if.then53 ], [ %58, %if.then40.if.end56_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %62 = call i32 @llvm.bswap.i32(i32 %reg.1) #14
  %63 = ptrtoint ptr %csr.i136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %csr.i136, align 4
  %add.ptr.i139 = getelementptr i8, ptr %64, i32 12456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %62) #14, !srcloc !141
  br label %cleanup

if.else57:                                        ; preds = %if.end35
  %sub = add nsw i32 %conv37, -32
  %shl60 = shl nuw i32 1, %sub
  %csr.i140 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %65 = ptrtoint ptr %csr.i140 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %csr.i140, align 4
  %add.ptr.i141 = getelementptr i8, ptr %66, i32 12460
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #14, !srcloc !138
  %68 = call i32 @llvm.bswap.i32(i32 %67) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %69 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cmd, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %70, label %if.else57.if.end75_crit_edge [
    i32 0, label %if.then65
    i32 1, label %if.then71
  ]

if.else57.if.end75_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then65:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #16
  %or66 = or i32 %68, %shl60
  br label %if.end75

if.then71:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #16
  %neg72 = xor i32 %shl60, -1
  %and73 = and i32 %68, %neg72
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.then65, %if.else57.if.end75_crit_edge
  %reg.2 = phi i32 [ %or66, %if.then65 ], [ %and73, %if.then71 ], [ %68, %if.else57.if.end75_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %72 = call i32 @llvm.bswap.i32(i32 %reg.2) #14
  %73 = ptrtoint ptr %csr.i140 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %csr.i140, align 4
  %add.ptr.i143 = getelementptr i8, ptr %74, i32 12460
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %72) #14, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end56, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.then2.cleanup_crit_edge ], [ 0, %if.end75 ], [ 0, %if.end56 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_entry) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr_entry) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_config_filter(ptr noundef %rt2x00dev, i32 noundef %filter_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12352
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %intf_ap_count = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 24
  %7 = ptrtoint ptr %intf_ap_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intf_ap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool128.not = icmp eq i32 %8, 0
  %phi.bo = select i1 %tobool128.not, i32 2097152, i32 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %9 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.bo, %land.rhs ]
  %10 = shl i32 %filter_flags, 15
  %11 = and i32 %2, -65028
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %and61 = and i32 %filter_flags, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %shl71 = select i1 %tobool62.not, i32 524288, i32 0
  %13 = shl i32 %4, 9
  %14 = and i32 %13, 1048576
  %15 = shl i32 %filter_flags, 22
  %16 = and i32 %15, 8388608
  %17 = shl i32 %filter_flags, 20
  %18 = and i32 %17, 33554432
  %19 = and i32 %10, 393216
  %20 = or i32 %19, %16
  %21 = or i32 %20, %shl71
  %22 = or i32 %18, %21
  %23 = or i32 %22, %12
  %24 = or i32 %23, %14
  %25 = or i32 %24, %9
  %or261 = xor i32 %25, 47579136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %or261) #14
  %27 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr.i, align 4
  %add.ptr.i291 = getelementptr i8, ptr %28, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291, i32 %26) #14, !srcloc !141
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_config_intf(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef readnone %intf, ptr noundef %conf, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12388
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %3 = and i32 %2, -1537
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %sync = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 1
  %5 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sync, align 4
  %shl = shl i32 %6, 17
  %and15 = and i32 %shl, 393216
  %or = or i32 %and15, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %8 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %9, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %7) #14, !srcloc !141
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and16 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end.if.end48_crit_edge, label %if.then18

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mac = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 2
  %arrayidx = getelementptr %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = or i32 %11, 65280
  store i32 %12, ptr %arrayidx, align 4
  %csr.i105 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %13 = ptrtoint ptr %csr.i105 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i105, align 4
  %add.ptr.i106 = getelementptr i8, ptr %14, i32 12296
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i106, ptr noundef %mac, i32 noundef 2) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then18, %if.end.if.end48_crit_edge
  %and49 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end83_crit_edge, label %if.then51

if.end48.if.end83_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %bssid = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 3
  %arrayidx52 = getelementptr %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx52, align 4
  %17 = and i32 %16, -65281
  %18 = or i32 %17, 768
  store i32 %18, ptr %arrayidx52, align 4
  %csr.i107 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %19 = ptrtoint ptr %csr.i107 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr.i107, align 4
  %add.ptr.i108 = getelementptr i8, ptr %20, i32 12304
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i108, ptr noundef %bssid, i32 noundef 2) #14
  br label %if.end83

if.end83:                                         ; preds = %if.then51, %if.end48.if.end83_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_config_erp(ptr nocapture noundef readonly %rt2x00dev, ptr nocapture noundef readonly %erp, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12352
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %3 = and i32 %2, 8454143
  %4 = or i32 %3, 842006528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i296 = getelementptr i8, ptr %6, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i296, i32 %4) #14, !srcloc !141
  %and40 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool.not = icmp eq i32 %and40, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i, align 4
  %add.ptr.i298 = getelementptr i8, ptr %8, i32 12368
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i298) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %10 = and i32 %9, -1537
  %11 = ptrtoint ptr %erp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool81.not = icmp eq i32 %12, 0
  %shl = select i1 %tobool81.not, i32 0, i32 262144
  %13 = or i32 %10, 512
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %or96 = or i32 %14, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %15 = tail call i32 @llvm.bswap.i32(i32 %or96) #14
  %16 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i, align 4
  %add.ptr.i300 = getelementptr i8, ptr %17, i32 12368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300, i32 %15) #14, !srcloc !141
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and97 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end.if.end100_crit_edge, label %if.then99

if.end.if.end100_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

if.then99:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %basic_rates = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 2
  %18 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %basic_rates, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %21 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i, align 4
  %add.ptr.i302 = getelementptr i8, ptr %22, i32 12372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i302, i32 %20) #14, !srcloc !141
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end.if.end100_crit_edge
  %and101 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end134_crit_edge, label %if.then103

if.end100.if.end134_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i, align 4
  %add.ptr.i304 = getelementptr i8, ptr %24, i32 12388
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i304) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %26 = and i32 %25, 65535
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %beacon_int = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 8
  %28 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %beacon_int, align 4
  %conv118 = zext i16 %29 to i32
  %mul = shl nuw nsw i32 %conv118, 4
  %and132 = and i32 %mul, 65520
  %or133 = or i32 %and132, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %30 = tail call i32 @llvm.bswap.i32(i32 %or133) #14
  %31 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csr.i, align 4
  %add.ptr.i306 = getelementptr i8, ptr %32, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i306, i32 %30) #14, !srcloc !141
  br label %if.end134

if.end134:                                        ; preds = %if.then103, %if.end100.if.end134_crit_edge
  %and135 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end134.if.end252_crit_edge, label %if.then137

if.end134.if.end252_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end252

if.then137:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %csr.i, align 4
  %add.ptr.i308 = getelementptr i8, ptr %34, i32 12324
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i308) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %36 = and i32 %35, 16777215
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %slot_time = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 3
  %38 = ptrtoint ptr %slot_time to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slot_time, align 4
  %and165 = and i32 %39, 255
  %or166 = or i32 %and165, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %40 = tail call i32 @llvm.bswap.i32(i32 %or166) #14
  %41 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %csr.i, align 4
  %add.ptr.i310 = getelementptr i8, ptr %42, i32 12324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i310, i32 %40) #14, !srcloc !141
  %43 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %csr.i, align 4
  %add.ptr.i312 = getelementptr i8, ptr %44, i32 12320
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i312) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %sifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 4
  %46 = ptrtoint ptr %sifs to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sifs, align 4
  %48 = and i16 %47, 255
  %49 = or i16 %48, 768
  %or222 = zext i16 %49 to i32
  %eifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 7
  %50 = ptrtoint ptr %eifs to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %eifs, align 2
  %conv236294 = zext i16 %51 to i32
  %shl243 = shl nuw i32 %conv236294, 16
  %or251 = or i32 %shl243, %or222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %52 = tail call i32 @llvm.bswap.i32(i32 %or251) #14
  %53 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csr.i, align 4
  %add.ptr.i314 = getelementptr i8, ptr %54, i32 12320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 %52) #14, !srcloc !141
  br label %if.end252

if.end252:                                        ; preds = %if.then137, %if.end134.if.end252_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_config_ant(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %ant) #2 align 64 {
entry:
  %reg.i143.i = alloca i32, align 4
  %reg.i132.i = alloca i32, align 4
  %reg.i.i135 = alloca i32, align 4
  %reg.i380.i = alloca i32, align 4
  %reg.i369.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !145

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3

lor.rhs:                                          ; preds = %entry
  %tx = getelementptr inbounds %struct.antenna_setup, ptr %ant, i32 0, i32 1
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end8, !prof !145

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt61pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 716, 0\0A.popsection", ""() #14, !srcloc !148
  unreachable

do.end8:                                          ; preds = %lor.rhs
  %curr_band = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 6
  %4 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp9 = icmp eq i32 %5, 1
  %cap_flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %6 = ptrtoint ptr %cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cap_flags.i.i, align 4
  %. = select i1 %cmp9, i32 2097152, i32 4194304
  %antenna_sel_a.antenna_sel_bg = select i1 %cmp9, ptr @antenna_sel_a, ptr @antenna_sel_bg
  %8 = and i32 %7, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %lna.0.in = icmp ne i32 %8, 0
  %lna.0 = zext i1 %lna.0.in to i32
  %csr_mutex.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %rt61pci_bbp_write.exit.for.body_crit_edge, %do.end8
  %i.0152 = phi i32 [ 0, %do.end8 ], [ %inc, %rt61pci_bbp_write.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.antenna_sel, ptr %antenna_sel_a.antenna_sel_bg, i32 %i.0152
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %arrayidx18 = getelementptr %struct.antenna_sel, ptr %antenna_sel_a.antenna_sel_bg, i32 %i.0152, i32 1, i32 %lna.0
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #14
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.rt61pci_bbp_write.exit_crit_edge, label %if.then.i

for.body.rt61pci_bbp_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv16 = zext i8 %10 to i32
  %conv7.i = zext i8 %12 to i32
  %shl40.i = shl nuw nsw i32 %conv16, 8
  %and47.i = and i32 %shl40.i, 32512
  %or48.i = or i32 %and47.i, %conv7.i
  %or74.i = or i32 %or48.i, 65536
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or74.i, ptr %reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %15 = call i32 @llvm.bswap.i32(i32 %or74.i) #14
  %16 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit

rt61pci_bbp_write.exit:                           ; preds = %if.then.i, %for.body.rt61pci_bbp_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #14
  %inc = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %rt61pci_bbp_write.exit.for.body_crit_edge

rt61pci_bbp_write.exit.for.body_crit_edge:        ; preds = %rt61pci_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %rt61pci_bbp_write.exit
  %18 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 12416
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %21 = and i32 %20, -769
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp27 = icmp eq i32 %24, 0
  %shl = select i1 %cmp27, i32 65536, i32 0
  %or = or i32 %shl, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp56 = icmp eq i32 %24, 1
  %shl64 = select i1 %cmp56, i32 131072, i32 0
  %or72 = or i32 %or, %shl64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %25 = call i32 @llvm.bswap.i32(i32 %or72) #14
  %26 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %27, i32 12416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %25) #14, !srcloc !141
  %rf1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %28 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rf1.i, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %29, label %for.end.if.end90_crit_edge [
    i16 1, label %for.end.if.then77_crit_edge
    i16 2, label %for.end.if.then77_crit_edge153
    i16 3, label %if.then80
    i16 4, label %if.then83
  ]

for.end.if.then77_crit_edge153:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77

for.end.if.then77_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77

for.end.if.end90_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then77:                                        ; preds = %for.end.if.then77_crit_edge, %for.end.if.then77_crit_edge153
  %call.i126 = call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 3) #14
  %call1.i = call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 4) #14
  %call2.i = call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 77) #14
  %31 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rf1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %32)
  %cmp.i.i = icmp eq i16 %32, 2
  %33 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ant, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %34, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb87.i
  ]

sw.bb.i:                                          ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  %36 = and i8 %call1.i, -36
  %37 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp68.not.i = icmp eq i32 %38, 1
  %shl76.i = select i1 %cmp68.not.i, i8 0, i8 32
  %39 = or i8 %36, %shl76.i
  %or85.i = or i8 %39, 2
  br label %sw.epilog.i

sw.bb87.i:                                        ; preds = %if.then77
  %40 = and i8 %call1.i, -36
  %41 = or i8 %40, 1
  %42 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp149.i = icmp eq i32 %43, 1
  br i1 %cmp149.i, label %if.then.i127, label %if.else.i

if.then.i127:                                     ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = and i8 %call2.i, -4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = or i8 %call2.i, 3
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then77
  %46 = and i8 %call1.i, -36
  %47 = or i8 %46, 1
  %48 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp273.i = icmp eq i32 %49, 1
  br i1 %cmp273.i, label %if.then275.i, label %if.else306.i

if.then275.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = or i8 %call2.i, 3
  br label %sw.epilog.i

if.else306.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #16
  %51 = and i8 %call2.i, -4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else306.i, %if.then275.i, %if.else.i, %if.then.i127, %sw.bb.i
  %r77.0.i = phi i8 [ %50, %if.then275.i ], [ %51, %if.else306.i ], [ %44, %if.then.i127 ], [ %45, %if.else.i ], [ %call2.i, %sw.bb.i ]
  %r4.0.i = phi i8 [ %47, %if.then275.i ], [ %47, %if.else306.i ], [ %41, %if.then.i127 ], [ %41, %if.else.i ], [ %or85.i, %sw.bb.i ]
  %52 = and i8 %call.i126, -2
  %conv7.i128 = zext i1 %cmp.i.i to i8
  %or.i = or i8 %52, %conv7.i128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #14
  %53 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i.rt61pci_bbp_write.exit.i_crit_edge, label %if.then.i.i

sw.epilog.i.rt61pci_bbp_write.exit.i_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i.i = zext i8 %r77.0.i to i32
  %or74.i.i = or i32 %conv7.i.i, 85248
  %54 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or74.i.i, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %55 = call i32 @llvm.bswap.i32(i32 %or74.i.i) #14
  %56 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %55) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit.i

rt61pci_bbp_write.exit.i:                         ; preds = %if.then.i.i, %sw.epilog.i.rt61pci_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i369.i) #14
  %58 = ptrtoint ptr %reg.i369.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %reg.i369.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i371.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i369.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371.i)
  %tobool.not.i372.i = icmp eq i32 %call.i371.i, 0
  br i1 %tobool.not.i372.i, label %rt61pci_bbp_write.exit.i.rt61pci_bbp_write.exit379.i_crit_edge, label %if.then.i378.i

rt61pci_bbp_write.exit.i.rt61pci_bbp_write.exit379.i_crit_edge: ; preds = %rt61pci_bbp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit379.i

if.then.i378.i:                                   ; preds = %rt61pci_bbp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i373.i = zext i8 %or.i to i32
  %or74.i375.i = or i32 %conv7.i373.i, 66304
  %59 = ptrtoint ptr %reg.i369.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or74.i375.i, ptr %reg.i369.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %60 = call i32 @llvm.bswap.i32(i32 %or74.i375.i) #14
  %61 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i377.i = getelementptr i8, ptr %62, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i377.i, i32 %60) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit379.i

rt61pci_bbp_write.exit379.i:                      ; preds = %if.then.i378.i, %rt61pci_bbp_write.exit.i.rt61pci_bbp_write.exit379.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i369.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i380.i) #14
  %63 = ptrtoint ptr %reg.i380.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %reg.i380.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i382.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i380.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382.i)
  %tobool.not.i383.i = icmp eq i32 %call.i382.i, 0
  br i1 %tobool.not.i383.i, label %rt61pci_bbp_write.exit379.i.rt61pci_config_antenna_5x.exit_crit_edge, label %if.then.i389.i

rt61pci_bbp_write.exit379.i.rt61pci_config_antenna_5x.exit_crit_edge: ; preds = %rt61pci_bbp_write.exit379.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_config_antenna_5x.exit

if.then.i389.i:                                   ; preds = %rt61pci_bbp_write.exit379.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i384.i = zext i8 %r4.0.i to i32
  %or74.i386.i = or i32 %conv7.i384.i, 66560
  %64 = ptrtoint ptr %reg.i380.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or74.i386.i, ptr %reg.i380.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %65 = call i32 @llvm.bswap.i32(i32 %or74.i386.i) #14
  %66 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i388.i = getelementptr i8, ptr %67, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i388.i, i32 %65) #14, !srcloc !141
  br label %rt61pci_config_antenna_5x.exit

rt61pci_config_antenna_5x.exit:                   ; preds = %if.then.i389.i, %rt61pci_bbp_write.exit379.i.rt61pci_config_antenna_5x.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i380.i) #14
  br label %if.end90

if.then80:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @rt61pci_config_antenna_2x(ptr noundef %rt2x00dev, ptr noundef %ant)
  br label %if.end90

if.then83:                                        ; preds = %for.end
  %cap_flags.i.i133 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %68 = ptrtoint ptr %cap_flags.i.i133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %cap_flags.i.i133, align 4
  %70 = and i32 %69, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.i134.not = icmp eq i32 %70, 0
  br i1 %tobool.i.i134.not, label %if.else86, label %if.then85

if.then85:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @rt61pci_config_antenna_2x(ptr noundef %rt2x00dev, ptr noundef %ant)
  br label %if.end90

if.else86:                                        ; preds = %if.then83
  %call.i136 = call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 3) #14
  %call1.i137 = call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 4) #14
  %call2.i138 = call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 77) #14
  %71 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cond.i = icmp eq i32 %72, 1
  br i1 %cond.i, label %sw.bb.i141, label %sw.default.i142

sw.bb.i141:                                       ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #16
  %73 = and i8 %call2.i138, -4
  %74 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i.i140 = getelementptr i8, ptr %75, i32 12340
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i140) #14, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %77 = and i32 %76, -404226049
  %78 = or i32 %77, 134217728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %79 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i105.i.i = getelementptr i8, ptr %80, i32 12340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i.i, i32 %78) #14, !srcloc !141
  br label %sw.epilog.i147

sw.default.i142:                                  ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #16
  %81 = or i8 %call2.i138, 3
  %82 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i127.i = getelementptr i8, ptr %83, i32 12340
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127.i) #14, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %85 = and i32 %84, -404226049
  %86 = or i32 %85, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %87 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i105.i129.i = getelementptr i8, ptr %88, i32 12340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i129.i, i32 %86) #14, !srcloc !141
  br label %sw.epilog.i147

sw.epilog.i147:                                   ; preds = %sw.default.i142, %sw.bb.i141
  %r77.0.i143 = phi i8 [ %73, %sw.bb.i141 ], [ %81, %sw.default.i142 ]
  %r4.0.in.i = and i8 %call1.i137, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i135) #14
  %89 = ptrtoint ptr %reg.i.i135 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %reg.i.i135, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i.i145 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i135) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i145)
  %tobool.not.i.i146 = icmp eq i32 %call.i.i145, 0
  br i1 %tobool.not.i.i146, label %sw.epilog.i147.rt61pci_bbp_write.exit.i151_crit_edge, label %if.then.i.i150

sw.epilog.i147.rt61pci_bbp_write.exit.i151_crit_edge: ; preds = %sw.epilog.i147
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit.i151

if.then.i.i150:                                   ; preds = %sw.epilog.i147
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i.i148 = zext i8 %r77.0.i143 to i32
  %or74.i.i149 = or i32 %conv7.i.i148, 85248
  %90 = ptrtoint ptr %reg.i.i135 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or74.i.i149, ptr %reg.i.i135, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %91 = call i32 @llvm.bswap.i32(i32 %or74.i.i149) #14
  %92 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i131.i = getelementptr i8, ptr %93, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i131.i, i32 %91) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit.i151

rt61pci_bbp_write.exit.i151:                      ; preds = %if.then.i.i150, %sw.epilog.i147.rt61pci_bbp_write.exit.i151_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i135) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i132.i) #14
  %94 = ptrtoint ptr %reg.i132.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %reg.i132.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i134.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i132.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134.i)
  %tobool.not.i135.i = icmp eq i32 %call.i134.i, 0
  br i1 %tobool.not.i135.i, label %rt61pci_bbp_write.exit.i151.rt61pci_bbp_write.exit142.i_crit_edge, label %if.then.i141.i

rt61pci_bbp_write.exit.i151.rt61pci_bbp_write.exit142.i_crit_edge: ; preds = %rt61pci_bbp_write.exit.i151
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit142.i

if.then.i141.i:                                   ; preds = %rt61pci_bbp_write.exit.i151
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i136.i = zext i8 %call.i136 to i32
  %or74.i138.i = or i32 %conv7.i136.i, 66304
  %95 = ptrtoint ptr %reg.i132.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or74.i138.i, ptr %reg.i132.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %96 = call i32 @llvm.bswap.i32(i32 %or74.i138.i) #14
  %97 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i140.i = getelementptr i8, ptr %98, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i140.i, i32 %96) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit142.i

rt61pci_bbp_write.exit142.i:                      ; preds = %if.then.i141.i, %rt61pci_bbp_write.exit.i151.rt61pci_bbp_write.exit142.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i132.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i143.i) #14
  %99 = ptrtoint ptr %reg.i143.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %reg.i143.i, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i145.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i143.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.i)
  %tobool.not.i146.i = icmp eq i32 %call.i145.i, 0
  br i1 %tobool.not.i146.i, label %rt61pci_bbp_write.exit142.i.rt61pci_config_antenna_2529.exit_crit_edge, label %if.then.i152.i

rt61pci_bbp_write.exit142.i.rt61pci_config_antenna_2529.exit_crit_edge: ; preds = %rt61pci_bbp_write.exit142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_config_antenna_2529.exit

if.then.i152.i:                                   ; preds = %rt61pci_bbp_write.exit142.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i147.i = zext i8 %r4.0.in.i to i32
  %or74.i149.i = or i32 %conv7.i147.i, 66561
  %100 = ptrtoint ptr %reg.i143.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or74.i149.i, ptr %reg.i143.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %101 = call i32 @llvm.bswap.i32(i32 %or74.i149.i) #14
  %102 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i151.i = getelementptr i8, ptr %103, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i151.i, i32 %101) #14, !srcloc !141
  br label %rt61pci_config_antenna_2529.exit

rt61pci_config_antenna_2529.exit:                 ; preds = %if.then.i152.i, %rt61pci_bbp_write.exit142.i.rt61pci_config_antenna_2529.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i143.i) #14
  br label %if.end90

if.end90:                                         ; preds = %rt61pci_config_antenna_2529.exit, %if.then85, %if.then80, %rt61pci_config_antenna_5x.exit, %for.end.if.end90_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_config(ptr noundef %rt2x00dev, ptr nocapture noundef %libconf, i32 noundef %flags) #2 align 64 {
entry:
  %rf.i = alloca %struct.rf_channel, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %libconf, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %cap_flags.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %6 = ptrtoint ptr %cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cap_flags.i.i.i, align 4
  %..i = select i1 %cmp.i, i32 4194304, i32 2097152
  %.66.i = select i1 %cmp.i, i32 77, i32 78
  %8 = and i32 %..i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i60.not.i = icmp eq i32 %8, 0
  %spec.select58.i = select i1 %tobool.i.i60.not.i, i16 0, i16 14
  %eeprom.i61.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %9 = ptrtoint ptr %eeprom.i61.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eeprom.i61.i, align 8
  %arrayidx.i62.i = getelementptr i16, ptr %10, i32 %.66.i
  %11 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i62.i, align 2
  %13 = lshr i16 %12, 8
  %sub45.i = sub nsw i16 %spec.select58.i, %13
  %lna_gain48.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 33
  %14 = ptrtoint ptr %lna_gain48.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %sub45.i, ptr %lna_gain48.i, align 8
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rf = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1
  %15 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %libconf, align 4
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %power_level, align 4
  tail call fastcc void @rt61pci_config_channel(ptr noundef %rt2x00dev, ptr noundef %rf, i32 noundef %18)
  br label %if.end8

if.end:                                           ; preds = %entry
  %19 = and i32 %flags, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %21 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %libconf, align 4
  %power_level7 = getelementptr inbounds %struct.ieee80211_conf, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %power_level7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %power_level7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rf.i) #14
  %25 = getelementptr inbounds %struct.rf_channel, ptr %rf.i, i32 0, i32 2
  %26 = getelementptr inbounds %struct.rf_channel, ptr %rf.i, i32 0, i32 3
  %ops.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %27 = ptrtoint ptr %rf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %rf.i, align 4
  %28 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i, align 4
  %rf_size.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %rf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rf_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp1.i.i = icmp ult i32 %31, 4
  br i1 %cmp1.i.i, label %do.body3.i.i, label %rt2x00_rf_read.exit.i, !prof !145

do.body3.i.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #14, !srcloc !149
  unreachable

rt2x00_rf_read.exit.i:                            ; preds = %if.then5
  %32 = getelementptr inbounds %struct.rf_channel, ptr %rf.i, i32 0, i32 1
  %rf.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %33 = ptrtoint ptr %rf.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rf.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %31)
  %cmp1.i11.i = icmp ult i32 %31, 8
  br i1 %cmp1.i11.i, label %do.body3.i12.i, label %rt2x00_rf_read.exit14.i, !prof !145

do.body3.i12.i:                                   ; preds = %rt2x00_rf_read.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #14, !srcloc !149
  unreachable

rt2x00_rf_read.exit14.i:                          ; preds = %rt2x00_rf_read.exit.i
  %arrayidx.i.i = getelementptr i32, ptr %34, i32 1
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i, align 4
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %31)
  %cmp1.i18.i = icmp ult i32 %31, 12
  br i1 %cmp1.i18.i, label %do.body3.i19.i, label %rt2x00_rf_read.exit22.i, !prof !145

do.body3.i19.i:                                   ; preds = %rt2x00_rf_read.exit14.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #14, !srcloc !149
  unreachable

rt2x00_rf_read.exit22.i:                          ; preds = %rt2x00_rf_read.exit14.i
  %arrayidx.i21.i = getelementptr i32, ptr %34, i32 2
  %41 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i21.i, align 4
  %43 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %31)
  %cmp1.i26.i = icmp ult i32 %31, 16
  br i1 %cmp1.i26.i, label %do.body3.i27.i, label %rt61pci_config_txpower.exit, !prof !145

do.body3.i27.i:                                   ; preds = %rt2x00_rf_read.exit22.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #14, !srcloc !149
  unreachable

rt61pci_config_txpower.exit:                      ; preds = %rt2x00_rf_read.exit22.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = getelementptr inbounds %struct.rf_channel, ptr %rf.i, i32 0, i32 4
  %arrayidx.i29.i = getelementptr i32, ptr %34, i32 3
  %45 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i29.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %44, align 4
  call fastcc void @rt61pci_config_channel(ptr noundef %rt2x00dev, ptr noundef nonnull %rf.i, i32 noundef %24) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rf.i) #14
  br label %if.end8

if.end8:                                          ; preds = %rt61pci_config_txpower.exit, %if.end.if.end8_crit_edge, %if.end.thread
  %and9 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %48 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 12368
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %51 = and i32 %50, -30976
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #14
  %53 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %libconf, align 4
  %long_frame_max_tx_count.i = getelementptr inbounds %struct.ieee80211_conf, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %long_frame_max_tx_count.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %long_frame_max_tx_count.i, align 1
  %conv79.i = zext i8 %56 to i32
  %shl.i = shl nuw i32 %conv79.i, 24
  %shl.masked.i = and i32 %shl.i, 251658240
  %or93.i = or i32 %52, %shl.masked.i
  %short_frame_max_tx_count.i = getelementptr inbounds %struct.ieee80211_conf, ptr %54, i32 0, i32 6
  %57 = ptrtoint ptr %short_frame_max_tx_count.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %short_frame_max_tx_count.i, align 4
  %conv108.i = zext i8 %58 to i32
  %shl115.i = shl i32 %conv108.i, 28
  %and105.i = or i32 %or93.i, %shl115.i
  %or123.i = or i32 %and105.i, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %59 = tail call i32 @llvm.bswap.i32(i32 %or123.i) #14
  %60 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i137.i = getelementptr i8, ptr %61, i32 12368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 %59) #14, !srcloc !141
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %and13 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  %62 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %libconf, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %and.i = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %csr.i276.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %66 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i277.i = getelementptr i8, ptr %67, i32 12332
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  %69 = and i32 %68, 61695
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #14
  %beacon_int.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 40
  %71 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %beacon_int.i, align 2
  %73 = add i16 %72, 246
  %74 = and i16 %73, 255
  %and17.i = zext i16 %74 to i32
  %or.i = or i32 %70, %and17.i
  %75 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %libconf, align 4
  %listen_interval.i = getelementptr inbounds %struct.ieee80211_conf, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %listen_interval.i, align 4
  %conv32.i = zext i16 %78 to i32
  %sub33.i = shl nuw nsw i32 %conv32.i, 8
  %shl40.i = add nuw nsw i32 %sub33.i, 32512
  %and47.i = and i32 %shl40.i, 32512
  %or48.i = or i32 %or.i, %and47.i
  %or74.i = or i32 %or48.i, 327680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %79 = tail call i32 @llvm.bswap.i32(i32 %or74.i) #14
  %80 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i267.i = getelementptr i8, ptr %81, i32 12332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267.i, i32 %79) #14, !srcloc !141
  %or126.i = or i32 %or48.i, 360448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %82 = tail call i32 @llvm.bswap.i32(i32 %or126.i) #14
  %83 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i269.i = getelementptr i8, ptr %84, i32 12332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269.i, i32 %82) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %85 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i271.i = getelementptr i8, ptr %86, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271.i, i32 83886080) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %87 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i273.i = getelementptr i8, ptr %88, i32 13464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273.i, i32 469762048) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %89 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i275.i = getelementptr i8, ptr %90, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i275.i, i32 1610612736) #14, !srcloc !141
  br label %rt61pci_config_ps.exit

if.else.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %91 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i279.i = getelementptr i8, ptr %92, i32 12332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279.i, i32 %69) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %93 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i281.i = getelementptr i8, ptr %94, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281.i, i32 117440512) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %95 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i283.i = getelementptr i8, ptr %96, i32 13464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i283.i, i32 402653184) #14, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %97 = ptrtoint ptr %csr.i276.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %csr.i276.i, align 4
  %add.ptr.i285.i = getelementptr i8, ptr %98, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285.i, i32 536870912) #14, !srcloc !141
  br label %rt61pci_config_ps.exit

rt61pci_config_ps.exit:                           ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i8 [ 49, %if.else.i ], [ 48, %if.then.i ]
  tail call fastcc void @rt61pci_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext %.sink.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %if.end16

if.end16:                                         ; preds = %rt61pci_config_ps.exit, %if.end12.if.end16_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00mmio_register_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %offset) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %csr = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00mmio_register_write(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %offset, i32 noundef %value) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %csr = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %1 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #14, !srcloc !141
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt2x00queue_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_txdone_noinfo(ptr noundef, i32 noundef) local_unnamed_addr #0

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
define internal fastcc void @rt61pci_validate_eeprom(ptr noundef %rt2x00dev) unnamed_addr #2 align 64 {
entry:
  %eeprom = alloca %struct.eeprom_93cx6, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eeprom) #14
  %0 = getelementptr inbounds i8, ptr %eeprom, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 13424
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %5 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rt2x00dev, ptr %eeprom, align 4
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 1
  %6 = ptrtoint ptr %register_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rt61pci_eepromregister_read, ptr %register_read, align 4
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %register_write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rt61pci_eepromregister_write, ptr %register_write, align 4
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
  call void @eeprom_93cx6_multiread(ptr noundef nonnull %eeprom, i8 noundef zeroext 0, ptr noundef %12, i16 noundef zeroext 128) #14
  %13 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i = getelementptr i16, ptr %14, i32 2
  call void @rt2x00lib_set_mac_address(ptr noundef %rt2x00dev, ptr noundef %arrayidx.i) #14
  %15 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i23 = getelementptr i16, ptr %16, i32 16
  %17 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp12 = icmp eq i16 %18, -1
  br i1 %cmp12, label %if.then, label %entry.if.end233_crit_edge

entry.if.end233_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end233

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -22007, ptr %arrayidx.i23, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt61pci_validate_eeprom, %if.then229)) #14
          to label %if.end233 [label %if.then229], !srcloc !150

if.then229:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug674, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 2474) #14
  br label %if.end233

if.end233:                                        ; preds = %if.then229, %if.then, %entry.if.end233_crit_edge
  %24 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i27 = getelementptr i16, ptr %25, i32 17
  %26 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp236 = icmp eq i16 %27, -1
  br i1 %cmp236, label %if.then238, label %if.end233.if.end469_crit_edge

if.end233.if.end469_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end469

if.then238:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -32513, ptr %arrayidx.i27, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt61pci_validate_eeprom, %if.then461)) #14
          to label %if.end469 [label %if.then461], !srcloc !150

if.then461:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #16
  %hw462 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %29 = ptrtoint ptr %hw462 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw462, align 4
  %wiphy463 = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy463 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy463, align 8
  %dev464 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug682, ptr noundef %dev464, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 65408) #14
  br label %if.end469

if.end469:                                        ; preds = %if.then461, %if.then238, %if.end233.if.end469_crit_edge
  %33 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i31 = getelementptr i16, ptr %34, i32 48
  %35 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp472 = icmp eq i16 %36, -1
  br i1 %cmp472, label %if.then474, label %if.end469.if.end525_crit_edge

if.end469.if.end525_crit_edge:                    ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end525

if.then474:                                       ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -32, ptr %arrayidx.i31, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt61pci_validate_eeprom, %if.then517)) #14
          to label %if.end525 [label %if.then517], !srcloc !150

if.then517:                                       ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #16
  %hw518 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %38 = ptrtoint ptr %hw518 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw518, align 4
  %wiphy519 = getelementptr inbounds %struct.ieee80211_hw, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wiphy519 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy519, align 8
  %dev520 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug684, ptr noundef %dev520, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 57599) #14
  br label %if.end525

if.end525:                                        ; preds = %if.then517, %if.then474, %if.end469.if.end525_crit_edge
  %42 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i35 = getelementptr i16, ptr %43, i32 47
  %44 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %45)
  %cmp528 = icmp eq i16 %45, -1
  br i1 %cmp528, label %if.then530, label %if.end525.if.end611_crit_edge

if.end525.if.end611_crit_edge:                    ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end611

if.then530:                                       ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 252, ptr %arrayidx.i35, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt61pci_validate_eeprom, %if.then603)) #14
          to label %if.end611 [label %if.then603], !srcloc !150

if.then603:                                       ; preds = %if.then530
  call void @__sanitizer_cov_trace_pc() #16
  %hw604 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %47 = ptrtoint ptr %hw604 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw604, align 4
  %wiphy605 = getelementptr inbounds %struct.ieee80211_hw, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wiphy605 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wiphy605, align 8
  %dev606 = getelementptr inbounds %struct.wiphy, ptr %50, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug687, ptr noundef %dev606, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 64512) #14
  br label %if.end611

if.end611:                                        ; preds = %if.then603, %if.then530, %if.end525.if.end611_crit_edge
  %51 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i39 = getelementptr i16, ptr %52, i32 77
  %53 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %54)
  %cmp614 = icmp eq i16 %54, -1
  br i1 %cmp614, label %if.then616, label %if.else

if.then616:                                       ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %arrayidx.i39, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt61pci_validate_eeprom, %if.then689)) #14
          to label %if.end818 [label %if.then689], !srcloc !150

if.then689:                                       ; preds = %if.then616
  call void @__sanitizer_cov_trace_pc() #16
  %hw690 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %56 = ptrtoint ptr %hw690 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw690, align 4
  %wiphy691 = getelementptr inbounds %struct.ieee80211_hw, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %wiphy691 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wiphy691, align 8
  %dev692 = getelementptr inbounds %struct.wiphy, ptr %59, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug690, ptr noundef %dev692, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 0) #14
  br label %if.end818

if.else:                                          ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #16
  %60 = call i16 @llvm.bswap.i16(i16 %54) #14
  %conv718 = zext i16 %60 to i32
  %sext = shl i32 %conv718, 24
  %61 = add i32 %sext, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %61)
  %62 = icmp ult i32 %61, -335544321
  %63 = and i16 %60, -256
  %word.0 = select i1 %62, i16 %63, i16 %60
  %64 = lshr i16 %word.0, 8
  %conv778 = zext i16 %64 to i32
  %sext1 = shl nuw i32 %conv778, 24
  %65 = add i32 %sext1, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %65)
  %66 = icmp ult i32 %65, -335544321
  %67 = and i16 %word.0, 255
  %word.1 = select i1 %66, i16 %67, i16 %word.0
  %68 = call i16 @llvm.bswap.i16(i16 %word.1) #14
  %69 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %arrayidx.i39, align 2
  br label %if.end818

if.end818:                                        ; preds = %if.else, %if.then689, %if.then616
  %70 = ptrtoint ptr %eeprom8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eeprom8, align 8
  %arrayidx.i45 = getelementptr i16, ptr %71, i32 78
  %72 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %73)
  %cmp821 = icmp eq i16 %73, -1
  br i1 %cmp821, label %if.then823, label %if.else904

if.then823:                                       ; preds = %if.end818
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %arrayidx.i45, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt61pci_validate_eeprom, %if.then896)) #14
          to label %if.end1027 [label %if.then896], !srcloc !150

if.then896:                                       ; preds = %if.then823
  call void @__sanitizer_cov_trace_pc() #16
  %hw897 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %75 = ptrtoint ptr %hw897 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw897, align 4
  %wiphy898 = getelementptr inbounds %struct.ieee80211_hw, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %wiphy898 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wiphy898, align 8
  %dev899 = getelementptr inbounds %struct.wiphy, ptr %78, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug697, ptr noundef %dev899, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 0) #14
  br label %if.end1027

if.else904:                                       ; preds = %if.end818
  call void @__sanitizer_cov_trace_pc() #16
  %79 = call i16 @llvm.bswap.i16(i16 %73) #14
  %conv926 = zext i16 %79 to i32
  %sext2 = shl i32 %conv926, 24
  %80 = add i32 %sext2, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %80)
  %81 = icmp ult i32 %80, -335544321
  %82 = and i16 %79, -256
  %word.2 = select i1 %81, i16 %82, i16 %79
  %83 = lshr i16 %word.2, 8
  %conv987 = zext i16 %83 to i32
  %sext3 = shl nuw i32 %conv987, 24
  %84 = add i32 %sext3, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %84)
  %85 = icmp ult i32 %84, -335544321
  %86 = and i16 %word.2, 255
  %word.3 = select i1 %85, i16 %86, i16 %word.2
  %87 = call i16 @llvm.bswap.i16(i16 %word.3) #14
  %88 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %arrayidx.i45, align 2
  br label %if.end1027

if.end1027:                                       ; preds = %if.else904, %if.then896, %if.then823
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_eepromregister_read(ptr nocapture noundef %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 13424
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
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
define internal void @rt61pci_eepromregister_write(ptr nocapture noundef readonly %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 13424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or114) #14, !srcloc !141
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multiread(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_set_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @rt2x00_eeprom_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
define internal void @rt2x00_eeprom_write(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word, i16 noundef zeroext %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp.not = icmp eq i32 %brightness, 0
  br i1 %cmp.not, label %entry.land.end9_crit_edge, label %land.rhs4

entry.land.end9_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end9

land.rhs4:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %curr_band = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  %phi.bo164 = select i1 %cmp1, i16 128, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  %phi.bo = select i1 %cmp7, i16 64, i16 0
  br label %land.end9

land.end9:                                        ; preds = %land.rhs4, %entry.land.end9_crit_edge
  %4 = phi i16 [ %phi.bo164, %land.rhs4 ], [ 0, %entry.land.end9_crit_edge ]
  %5 = phi i16 [ %phi.bo, %land.rhs4 ], [ 0, %entry.land.end9_crit_edge ]
  %type = getelementptr i8, ptr %led_cdev, i32 400
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %7, label %land.end9.if.end142_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then50
    i32 3, label %if.then138
  ]

land.end9.if.end142_crit_edge:                    ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end142

if.then:                                          ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg = getelementptr inbounds %struct.rt2x00_dev, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %led_mcu_reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %led_mcu_reg, align 4
  %13 = and i16 %12, -33
  store i16 %13, ptr %led_mcu_reg, align 4
  %shl = select i1 %cmp.not, i16 0, i16 32
  %14 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg34 = getelementptr inbounds %struct.rt2x00_dev, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %led_mcu_reg34 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %led_mcu_reg34, align 4
  %or = or i16 %16, %shl
  store i16 %or, ptr %led_mcu_reg34, align 4
  %17 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg39 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %led_mcu_reg39 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %led_mcu_reg39, align 4
  %conv42 = trunc i16 %19 to i8
  %20 = lshr i16 %19, 8
  %conv46 = trunc i16 %20 to i8
  tail call fastcc void @rt61pci_mcu_request(ptr noundef %17, i8 noundef zeroext 80, i8 noundef zeroext %conv42, i8 noundef zeroext %conv46)
  br label %if.end142

if.then50:                                        ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg63 = getelementptr inbounds %struct.rt2x00_dev, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %led_mcu_reg63 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %led_mcu_reg63, align 4
  %25 = and i16 %24, -65
  store i16 %25, ptr %led_mcu_reg63, align 4
  %26 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg83 = getelementptr inbounds %struct.rt2x00_dev, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %led_mcu_reg83 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %led_mcu_reg83, align 4
  %or85 = or i16 %28, %5
  store i16 %or85, ptr %led_mcu_reg83, align 4
  %29 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg99 = getelementptr inbounds %struct.rt2x00_dev, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %led_mcu_reg99 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %led_mcu_reg99, align 4
  %32 = and i16 %31, -129
  store i16 %32, ptr %led_mcu_reg99, align 4
  %33 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg119 = getelementptr inbounds %struct.rt2x00_dev, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %led_mcu_reg119 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %led_mcu_reg119, align 4
  %or121 = or i16 %35, %4
  store i16 %or121, ptr %led_mcu_reg119, align 4
  %36 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg125 = getelementptr inbounds %struct.rt2x00_dev, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %led_mcu_reg125 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %led_mcu_reg125, align 4
  %conv128 = trunc i16 %38 to i8
  %39 = lshr i16 %38, 8
  %conv133 = trunc i16 %39 to i8
  tail call fastcc void @rt61pci_mcu_request(ptr noundef %36, i8 noundef zeroext 80, i8 noundef zeroext %conv128, i8 noundef zeroext %conv133)
  br label %if.end142

if.then138:                                       ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %div = udiv i32 %brightness, 42
  %conv140 = trunc i32 %div to i8
  tail call fastcc void @rt61pci_mcu_request(ptr noundef %41, i8 noundef zeroext 82, i8 noundef zeroext %conv140, i8 noundef zeroext 0)
  br label %if.end142

if.end142:                                        ; preds = %if.then138, %if.then50, %if.then, %land.end9.if.end142_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_blink_set(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12344
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %13 = tail call i32 @llvm.bswap.i32(i32 %or43) #14
  %csr.i50 = getelementptr inbounds %struct.rt2x00_dev, ptr %12, i32 0, i32 20
  %14 = ptrtoint ptr %csr.i50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i50, align 4
  %add.ptr.i51 = getelementptr i8, ptr %15, i32 12344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %13) #14, !srcloc !141
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt61pci_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext %command, i8 noundef zeroext %arg0, i8 noundef zeroext %arg1) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #14
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !142
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #14
  %call = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 8448, [2 x i32] [i32 24, i32 -16777216], ptr noundef nonnull %reg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv60 = zext i8 %arg0 to i32
  %conv89 = zext i8 %arg1 to i32
  %shl96 = shl nuw nsw i32 %conv89, 8
  %or75 = or i32 %shl96, %conv60
  %or104 = or i32 %or75, 33488896
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or104, ptr %reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %2 = call i32 @llvm.bswap.i32(i32 %or104) #14
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #14, !srcloc !141
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %6, i32 8
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #14, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %8 = and i32 %7, 16777215
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = or i8 %command, -128
  %or134 = zext i8 %10 to i32
  %or160 = or i32 %9, %or134
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or160, ptr %reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %12 = call i32 @llvm.bswap.i32(i32 %or160) #14
  %13 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %14, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %12) #14, !srcloc !141
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mmio_regbusy_read(ptr noundef, i32 noundef, [2 x i32], ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_bbp_write(ptr noundef %rt2x00dev, i32 noundef %word, i8 noundef zeroext %value) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #14
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !142
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #14
  %call = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv7 = zext i8 %value to i32
  %shl40 = shl i32 %word, 8
  %and47 = and i32 %shl40, 32512
  %or48 = or i32 %and47, %conv7
  %or74 = or i32 %or48, 65536
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or74, ptr %reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %2 = call i32 @llvm.bswap.i32(i32 %or74) #14
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #14, !srcloc !141
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef %word) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #14
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !142
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #14
  %call = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shl = shl i32 %word, 8
  %and19 = and i32 %shl, 32512
  %or71 = or i32 %and19, 98304
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or71, ptr %reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %2 = call i32 @llvm.bswap.i32(i32 %or71) #14
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #14, !srcloc !141
  %call78 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %conv98 = trunc i32 %6 to i8
  call void @mutex_unlock(ptr noundef %csr_mutex) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #14
  ret i8 %conv98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00debug_dump_frame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt61pci_config_antenna_2x(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %ant) unnamed_addr #2 align 64 {
entry:
  %reg.i240 = alloca i32, align 4
  %reg.i229 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 3)
  %call1 = tail call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 4)
  %call2 = tail call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 77)
  %rf1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rf1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp.i = icmp eq i16 %1, 4
  %2 = and i8 %call1, -33
  %cap_flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %3 = ptrtoint ptr %cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %cap_flags.i.i, align 4
  %5 = lshr i32 %4, 14
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 32
  %8 = or i8 %7, %2
  %or54 = xor i8 %8, 32
  %9 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ant, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %10, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb86
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %12 = and i8 %or54, -4
  %13 = or i8 %12, 2
  br label %sw.epilog

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %14 = and i8 %or54, -4
  %15 = or i8 %14, 1
  %16 = or i8 %call2, 3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %17 = and i8 %or54, -4
  %18 = or i8 %17, 1
  %19 = and i8 %call2, -4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb86, %sw.bb
  %r77.0 = phi i8 [ %19, %sw.default ], [ %16, %sw.bb86 ], [ %call2, %sw.bb ]
  %r4.0 = phi i8 [ %18, %sw.default ], [ %15, %sw.bb86 ], [ %13, %sw.bb ]
  %20 = and i8 %call, -2
  %conv7 = zext i1 %cmp.i to i8
  %or = or i8 %20, %conv7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #14
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %reg.i, align 4, !annotation !142
  %csr_mutex.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.epilog.rt61pci_bbp_write.exit_crit_edge, label %if.then.i

sw.epilog.rt61pci_bbp_write.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i = zext i8 %r77.0 to i32
  %or74.i = or i32 %conv7.i, 85248
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or74.i, ptr %reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %23 = call i32 @llvm.bswap.i32(i32 %or74.i) #14
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %24 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit

rt61pci_bbp_write.exit:                           ; preds = %if.then.i, %sw.epilog.rt61pci_bbp_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i229) #14
  %26 = ptrtoint ptr %reg.i229 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %reg.i229, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i231 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i229) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool.not.i232 = icmp eq i32 %call.i231, 0
  br i1 %tobool.not.i232, label %rt61pci_bbp_write.exit.rt61pci_bbp_write.exit239_crit_edge, label %if.then.i238

rt61pci_bbp_write.exit.rt61pci_bbp_write.exit239_crit_edge: ; preds = %rt61pci_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit239

if.then.i238:                                     ; preds = %rt61pci_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i233 = zext i8 %or to i32
  %or74.i235 = or i32 %conv7.i233, 66304
  %27 = ptrtoint ptr %reg.i229 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or74.i235, ptr %reg.i229, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %28 = call i32 @llvm.bswap.i32(i32 %or74.i235) #14
  %csr.i.i236 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %29 = ptrtoint ptr %csr.i.i236 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr.i.i236, align 4
  %add.ptr.i.i237 = getelementptr i8, ptr %30, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i237, i32 %28) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit239

rt61pci_bbp_write.exit239:                        ; preds = %if.then.i238, %rt61pci_bbp_write.exit.rt61pci_bbp_write.exit239_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i229) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i240) #14
  %31 = ptrtoint ptr %reg.i240 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %reg.i240, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i242 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i240) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %tobool.not.i243 = icmp eq i32 %call.i242, 0
  br i1 %tobool.not.i243, label %rt61pci_bbp_write.exit239.rt61pci_bbp_write.exit250_crit_edge, label %if.then.i249

rt61pci_bbp_write.exit239.rt61pci_bbp_write.exit250_crit_edge: ; preds = %rt61pci_bbp_write.exit239
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit250

if.then.i249:                                     ; preds = %rt61pci_bbp_write.exit239
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i244 = zext i8 %r4.0 to i32
  %or74.i246 = or i32 %conv7.i244, 66560
  %32 = ptrtoint ptr %reg.i240 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or74.i246, ptr %reg.i240, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %33 = call i32 @llvm.bswap.i32(i32 %or74.i246) #14
  %csr.i.i247 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %34 = ptrtoint ptr %csr.i.i247 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csr.i.i247, align 4
  %add.ptr.i.i248 = getelementptr i8, ptr %35, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i248, i32 %33) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit250

rt61pci_bbp_write.exit250:                        ; preds = %if.then.i249, %rt61pci_bbp_write.exit239.rt61pci_bbp_write.exit250_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i240) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt61pci_config_channel(ptr noundef %rt2x00dev, ptr nocapture noundef %rf, i32 noundef %txpower) unnamed_addr #2 align 64 {
entry:
  %reg.i384 = alloca i32, align 4
  %reg.i366 = alloca i32, align 4
  %reg.i348 = alloca i32, align 4
  %reg.i331 = alloca i32, align 4
  %reg.i313 = alloca i32, align 4
  %reg.i295 = alloca i32, align 4
  %reg.i277 = alloca i32, align 4
  %reg.i260 = alloca i32, align 4
  %reg.i242 = alloca i32, align 4
  %reg.i224 = alloca i32, align 4
  %reg.i207 = alloca i32, align 4
  %reg.i200 = alloca i32, align 4
  %reg.i189 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rf3 = getelementptr inbounds %struct.rf_channel, ptr %rf, i32 0, i32 3
  %0 = ptrtoint ptr %rf3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf3, align 4
  %and = and i32 %1, -15873
  %conv4 = and i32 %txpower, 255
  %2 = tail call i32 @llvm.umin.i32(i32 %conv4, i32 31)
  %shl = shl nuw nsw i32 %2, 9
  %or = or i32 %and, %shl
  %3 = ptrtoint ptr %rf3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %rf3, align 4
  %rf4 = getelementptr inbounds %struct.rf_channel, ptr %rf, i32 0, i32 4
  %4 = ptrtoint ptr %rf4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf4, align 4
  %and47 = and i32 %5, -258049
  store i32 %and47, ptr %rf4, align 4
  %freq_offset = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 38
  %6 = ptrtoint ptr %freq_offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %freq_offset, align 1
  %conv49 = zext i8 %7 to i32
  %shl56 = shl nuw nsw i32 %conv49, 12
  %and63 = and i32 %shl56, 258048
  %or65 = or i32 %and63, %and47
  store i32 %or65, ptr %rf4, align 4
  %rf1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rf1.i, align 2
  %call70 = tail call zeroext i8 @rt61pci_bbp_read(ptr noundef %rt2x00dev, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #14
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg.i, align 4, !annotation !142
  %csr_mutex.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.rt61pci_bbp_write.exit_crit_edge, label %if.then.i

entry.rt61pci_bbp_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = and i16 %9, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %12 = icmp ne i16 %11, 1
  %13 = zext i1 %12 to i8
  %14 = and i8 %call70, -2
  %or102 = or i8 %14, %13
  %conv7.i = zext i8 %or102 to i32
  %or74.i = or i32 %conv7.i, 66304
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or74.i, ptr %reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %16 = call i32 @llvm.bswap.i32(i32 %or74.i) #14
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %17 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit

rt61pci_bbp_write.exit:                           ; preds = %if.then.i, %entry.rt61pci_bbp_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i189) #14
  %19 = ptrtoint ptr %reg.i189 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %reg.i189, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i191 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i189) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool.not.i192 = icmp eq i32 %call.i191, 0
  br i1 %tobool.not.i192, label %rt61pci_bbp_write.exit.rt61pci_bbp_write.exit199_crit_edge, label %if.then.i198

rt61pci_bbp_write.exit.rt61pci_bbp_write.exit199_crit_edge: ; preds = %rt61pci_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_bbp_write.exit199

if.then.i198:                                     ; preds = %rt61pci_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  %20 = add i32 %txpower, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %21 = icmp ult i32 %20, 6
  %conv111 = add i32 %txpower, 231
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %txpower)
  %22 = icmp ugt i32 %txpower, -7
  %conv122 = add i32 %txpower, 6
  %spec.select = select i1 %22, i32 %conv122, i32 6
  %r94.0 = select i1 %21, i32 %conv111, i32 %spec.select
  %conv7.i193 = and i32 %r94.0, 255
  %or74.i195 = or i32 %conv7.i193, 89600
  %23 = ptrtoint ptr %reg.i189 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or74.i195, ptr %reg.i189, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %24 = call i32 @llvm.bswap.i32(i32 %or74.i195) #14
  %csr.i.i196 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %25 = ptrtoint ptr %csr.i.i196 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr.i.i196, align 4
  %add.ptr.i.i197 = getelementptr i8, ptr %26, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i197, i32 %24) #14, !srcloc !141
  br label %rt61pci_bbp_write.exit199

rt61pci_bbp_write.exit199:                        ; preds = %if.then.i198, %rt61pci_bbp_write.exit.rt61pci_bbp_write.exit199_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i189) #14
  %rf1 = getelementptr inbounds %struct.rf_channel, ptr %rf, i32 0, i32 1
  %27 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rf1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i200) #14
  %29 = ptrtoint ptr %reg.i200 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %reg.i200, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i202 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i200) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i203 = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i203, label %rt61pci_bbp_write.exit199.rt61pci_rf_write.exit_crit_edge, label %if.then.i206

rt61pci_bbp_write.exit199.rt61pci_rf_write.exit_crit_edge: ; preds = %rt61pci_bbp_write.exit199
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit

if.then.i206:                                     ; preds = %rt61pci_bbp_write.exit199
  %and19.i = and i32 %28, 16777215
  %or97.i = or i32 %and19.i, -1795162112
  %30 = ptrtoint ptr %reg.i200 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or97.i, ptr %reg.i200, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %31 = call i32 @llvm.bswap.i32(i32 %or97.i) #14
  %csr.i.i204 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %32 = ptrtoint ptr %csr.i.i204 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csr.i.i204, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %33, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i205, i32 %31) #14, !srcloc !141
  %ops.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  %rf_size.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %rf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rf_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp1.i.i = icmp ult i32 %37, 4
  br i1 %cmp1.i.i, label %do.body3.i.i, label %rt2x00_rf_write.exit.i, !prof !145

do.body3.i.i:                                     ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i:                           ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %38 = ptrtoint ptr %rf.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rf.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %28, ptr %39, align 4
  br label %rt61pci_rf_write.exit

rt61pci_rf_write.exit:                            ; preds = %rt2x00_rf_write.exit.i, %rt61pci_bbp_write.exit199.rt61pci_rf_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i200) #14
  %rf2 = getelementptr inbounds %struct.rf_channel, ptr %rf, i32 0, i32 2
  %41 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rf2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i207) #14
  %43 = ptrtoint ptr %reg.i207 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %reg.i207, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i209 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i207) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool.not.i210 = icmp eq i32 %call.i209, 0
  br i1 %tobool.not.i210, label %rt61pci_rf_write.exit.rt61pci_rf_write.exit223_crit_edge, label %if.then.i215

rt61pci_rf_write.exit.rt61pci_rf_write.exit223_crit_edge: ; preds = %rt61pci_rf_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit223

if.then.i215:                                     ; preds = %rt61pci_rf_write.exit
  %and19.i211 = and i32 %42, 16777215
  %or97.i212 = or i32 %and19.i211, -1795162112
  %44 = ptrtoint ptr %reg.i207 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or97.i212, ptr %reg.i207, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %45 = call i32 @llvm.bswap.i32(i32 %or97.i212) #14
  %csr.i.i213 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %46 = ptrtoint ptr %csr.i.i213 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %csr.i.i213, align 4
  %add.ptr.i.i214 = getelementptr i8, ptr %47, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i214, i32 %45) #14, !srcloc !141
  %ops.i.i216 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %48 = ptrtoint ptr %ops.i.i216 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i216, align 4
  %rf_size.i.i217 = getelementptr inbounds %struct.rt2x00_ops, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %rf_size.i.i217 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rf_size.i.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %51)
  %cmp1.i.i219 = icmp ult i32 %51, 8
  br i1 %cmp1.i.i219, label %do.body3.i.i220, label %rt2x00_rf_write.exit.i222, !prof !145

do.body3.i.i220:                                  ; preds = %if.then.i215
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i222:                        ; preds = %if.then.i215
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i221 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %52 = ptrtoint ptr %rf.i.i221 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rf.i.i221, align 4
  %arrayidx.i.i = getelementptr i32, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %42, ptr %arrayidx.i.i, align 4
  br label %rt61pci_rf_write.exit223

rt61pci_rf_write.exit223:                         ; preds = %rt2x00_rf_write.exit.i222, %rt61pci_rf_write.exit.rt61pci_rf_write.exit223_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i207) #14
  %55 = ptrtoint ptr %rf3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rf3, align 4
  %and125 = and i32 %56, -5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i224) #14
  %57 = ptrtoint ptr %reg.i224 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %reg.i224, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i226 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i224) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool.not.i227 = icmp eq i32 %call.i226, 0
  br i1 %tobool.not.i227, label %rt61pci_rf_write.exit223.rt61pci_rf_write.exit241_crit_edge, label %if.then.i232

rt61pci_rf_write.exit223.rt61pci_rf_write.exit241_crit_edge: ; preds = %rt61pci_rf_write.exit223
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit241

if.then.i232:                                     ; preds = %rt61pci_rf_write.exit223
  %and19.i228 = and i32 %56, 16777211
  %or97.i229 = or i32 %and19.i228, -1795162112
  %58 = ptrtoint ptr %reg.i224 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or97.i229, ptr %reg.i224, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %59 = call i32 @llvm.bswap.i32(i32 %or97.i229) #14
  %csr.i.i230 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %60 = ptrtoint ptr %csr.i.i230 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %csr.i.i230, align 4
  %add.ptr.i.i231 = getelementptr i8, ptr %61, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i231, i32 %59) #14, !srcloc !141
  %ops.i.i233 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %62 = ptrtoint ptr %ops.i.i233 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i233, align 4
  %rf_size.i.i234 = getelementptr inbounds %struct.rt2x00_ops, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %rf_size.i.i234 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rf_size.i.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %65)
  %cmp1.i.i236 = icmp ult i32 %65, 12
  br i1 %cmp1.i.i236, label %do.body3.i.i237, label %rt2x00_rf_write.exit.i240, !prof !145

do.body3.i.i237:                                  ; preds = %if.then.i232
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i240:                        ; preds = %if.then.i232
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i238 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %66 = ptrtoint ptr %rf.i.i238 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rf.i.i238, align 4
  %arrayidx.i.i239 = getelementptr i32, ptr %67, i32 2
  %68 = ptrtoint ptr %arrayidx.i.i239 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and125, ptr %arrayidx.i.i239, align 4
  br label %rt61pci_rf_write.exit241

rt61pci_rf_write.exit241:                         ; preds = %rt2x00_rf_write.exit.i240, %rt61pci_rf_write.exit223.rt61pci_rf_write.exit241_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i224) #14
  %69 = ptrtoint ptr %rf4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rf4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i242) #14
  %71 = ptrtoint ptr %reg.i242 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %reg.i242, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i244 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i242) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool.not.i245 = icmp eq i32 %call.i244, 0
  br i1 %tobool.not.i245, label %rt61pci_rf_write.exit241.rt61pci_rf_write.exit259_crit_edge, label %if.then.i250

rt61pci_rf_write.exit241.rt61pci_rf_write.exit259_crit_edge: ; preds = %rt61pci_rf_write.exit241
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit259

if.then.i250:                                     ; preds = %rt61pci_rf_write.exit241
  %and19.i246 = and i32 %70, 16777215
  %or97.i247 = or i32 %and19.i246, -1795162112
  %72 = ptrtoint ptr %reg.i242 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or97.i247, ptr %reg.i242, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %73 = call i32 @llvm.bswap.i32(i32 %or97.i247) #14
  %csr.i.i248 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %74 = ptrtoint ptr %csr.i.i248 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %csr.i.i248, align 4
  %add.ptr.i.i249 = getelementptr i8, ptr %75, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i249, i32 %73) #14, !srcloc !141
  %ops.i.i251 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %76 = ptrtoint ptr %ops.i.i251 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i.i251, align 4
  %rf_size.i.i252 = getelementptr inbounds %struct.rt2x00_ops, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %rf_size.i.i252 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rf_size.i.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %79)
  %cmp1.i.i254 = icmp ult i32 %79, 16
  br i1 %cmp1.i.i254, label %do.body3.i.i255, label %rt2x00_rf_write.exit.i258, !prof !145

do.body3.i.i255:                                  ; preds = %if.then.i250
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i258:                        ; preds = %if.then.i250
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i256 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %80 = ptrtoint ptr %rf.i.i256 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rf.i.i256, align 4
  %arrayidx.i.i257 = getelementptr i32, ptr %81, i32 3
  %82 = ptrtoint ptr %arrayidx.i.i257 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %70, ptr %arrayidx.i.i257, align 4
  br label %rt61pci_rf_write.exit259

rt61pci_rf_write.exit259:                         ; preds = %rt2x00_rf_write.exit.i258, %rt61pci_rf_write.exit241.rt61pci_rf_write.exit259_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i242) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 42949600) #14
  %84 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rf1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i260) #14
  %86 = ptrtoint ptr %reg.i260 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %reg.i260, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i262 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i260) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool.not.i263 = icmp eq i32 %call.i262, 0
  br i1 %tobool.not.i263, label %rt61pci_rf_write.exit259.rt61pci_rf_write.exit276_crit_edge, label %if.then.i268

rt61pci_rf_write.exit259.rt61pci_rf_write.exit276_crit_edge: ; preds = %rt61pci_rf_write.exit259
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit276

if.then.i268:                                     ; preds = %rt61pci_rf_write.exit259
  %and19.i264 = and i32 %85, 16777215
  %or97.i265 = or i32 %and19.i264, -1795162112
  %87 = ptrtoint ptr %reg.i260 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or97.i265, ptr %reg.i260, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %88 = call i32 @llvm.bswap.i32(i32 %or97.i265) #14
  %csr.i.i266 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %89 = ptrtoint ptr %csr.i.i266 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %csr.i.i266, align 4
  %add.ptr.i.i267 = getelementptr i8, ptr %90, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i267, i32 %88) #14, !srcloc !141
  %ops.i.i269 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %91 = ptrtoint ptr %ops.i.i269 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops.i.i269, align 4
  %rf_size.i.i270 = getelementptr inbounds %struct.rt2x00_ops, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %rf_size.i.i270 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rf_size.i.i270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %94)
  %cmp1.i.i272 = icmp ult i32 %94, 4
  br i1 %cmp1.i.i272, label %do.body3.i.i273, label %rt2x00_rf_write.exit.i275, !prof !145

do.body3.i.i273:                                  ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i275:                        ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i274 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %95 = ptrtoint ptr %rf.i.i274 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rf.i.i274, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %85, ptr %96, align 4
  br label %rt61pci_rf_write.exit276

rt61pci_rf_write.exit276:                         ; preds = %rt2x00_rf_write.exit.i275, %rt61pci_rf_write.exit259.rt61pci_rf_write.exit276_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i260) #14
  %98 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rf2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i277) #14
  %100 = ptrtoint ptr %reg.i277 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %reg.i277, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i279 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i277) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %tobool.not.i280 = icmp eq i32 %call.i279, 0
  br i1 %tobool.not.i280, label %rt61pci_rf_write.exit276.rt61pci_rf_write.exit294_crit_edge, label %if.then.i285

rt61pci_rf_write.exit276.rt61pci_rf_write.exit294_crit_edge: ; preds = %rt61pci_rf_write.exit276
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit294

if.then.i285:                                     ; preds = %rt61pci_rf_write.exit276
  %and19.i281 = and i32 %99, 16777215
  %or97.i282 = or i32 %and19.i281, -1795162112
  %101 = ptrtoint ptr %reg.i277 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or97.i282, ptr %reg.i277, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %102 = call i32 @llvm.bswap.i32(i32 %or97.i282) #14
  %csr.i.i283 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %103 = ptrtoint ptr %csr.i.i283 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %csr.i.i283, align 4
  %add.ptr.i.i284 = getelementptr i8, ptr %104, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i284, i32 %102) #14, !srcloc !141
  %ops.i.i286 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %105 = ptrtoint ptr %ops.i.i286 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i.i286, align 4
  %rf_size.i.i287 = getelementptr inbounds %struct.rt2x00_ops, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %rf_size.i.i287 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rf_size.i.i287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %108)
  %cmp1.i.i289 = icmp ult i32 %108, 8
  br i1 %cmp1.i.i289, label %do.body3.i.i290, label %rt2x00_rf_write.exit.i293, !prof !145

do.body3.i.i290:                                  ; preds = %if.then.i285
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i293:                        ; preds = %if.then.i285
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i291 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %109 = ptrtoint ptr %rf.i.i291 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rf.i.i291, align 4
  %arrayidx.i.i292 = getelementptr i32, ptr %110, i32 1
  %111 = ptrtoint ptr %arrayidx.i.i292 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %99, ptr %arrayidx.i.i292, align 4
  br label %rt61pci_rf_write.exit294

rt61pci_rf_write.exit294:                         ; preds = %rt2x00_rf_write.exit.i293, %rt61pci_rf_write.exit276.rt61pci_rf_write.exit294_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i277) #14
  %112 = ptrtoint ptr %rf3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rf3, align 4
  %or130 = or i32 %113, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i295) #14
  %114 = ptrtoint ptr %reg.i295 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %reg.i295, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i297 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %tobool.not.i298 = icmp eq i32 %call.i297, 0
  br i1 %tobool.not.i298, label %rt61pci_rf_write.exit294.rt61pci_rf_write.exit312_crit_edge, label %if.then.i303

rt61pci_rf_write.exit294.rt61pci_rf_write.exit312_crit_edge: ; preds = %rt61pci_rf_write.exit294
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit312

if.then.i303:                                     ; preds = %rt61pci_rf_write.exit294
  %and19.i299 = and i32 %or130, 16777215
  %or97.i300 = or i32 %and19.i299, -1795162112
  %115 = ptrtoint ptr %reg.i295 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or97.i300, ptr %reg.i295, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %116 = call i32 @llvm.bswap.i32(i32 %or97.i300) #14
  %csr.i.i301 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %117 = ptrtoint ptr %csr.i.i301 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %csr.i.i301, align 4
  %add.ptr.i.i302 = getelementptr i8, ptr %118, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i302, i32 %116) #14, !srcloc !141
  %ops.i.i304 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %119 = ptrtoint ptr %ops.i.i304 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ops.i.i304, align 4
  %rf_size.i.i305 = getelementptr inbounds %struct.rt2x00_ops, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %rf_size.i.i305 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rf_size.i.i305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %122)
  %cmp1.i.i307 = icmp ult i32 %122, 12
  br i1 %cmp1.i.i307, label %do.body3.i.i308, label %rt2x00_rf_write.exit.i311, !prof !145

do.body3.i.i308:                                  ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i311:                        ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i309 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %123 = ptrtoint ptr %rf.i.i309 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rf.i.i309, align 4
  %arrayidx.i.i310 = getelementptr i32, ptr %124, i32 2
  %125 = ptrtoint ptr %arrayidx.i.i310 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or130, ptr %arrayidx.i.i310, align 4
  br label %rt61pci_rf_write.exit312

rt61pci_rf_write.exit312:                         ; preds = %rt2x00_rf_write.exit.i311, %rt61pci_rf_write.exit294.rt61pci_rf_write.exit312_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i295) #14
  %126 = ptrtoint ptr %rf4 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rf4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i313) #14
  %128 = ptrtoint ptr %reg.i313 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %reg.i313, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i315 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i313) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i315)
  %tobool.not.i316 = icmp eq i32 %call.i315, 0
  br i1 %tobool.not.i316, label %rt61pci_rf_write.exit312.rt61pci_rf_write.exit330_crit_edge, label %if.then.i321

rt61pci_rf_write.exit312.rt61pci_rf_write.exit330_crit_edge: ; preds = %rt61pci_rf_write.exit312
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit330

if.then.i321:                                     ; preds = %rt61pci_rf_write.exit312
  %and19.i317 = and i32 %127, 16777215
  %or97.i318 = or i32 %and19.i317, -1795162112
  %129 = ptrtoint ptr %reg.i313 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or97.i318, ptr %reg.i313, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %130 = call i32 @llvm.bswap.i32(i32 %or97.i318) #14
  %csr.i.i319 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %131 = ptrtoint ptr %csr.i.i319 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %csr.i.i319, align 4
  %add.ptr.i.i320 = getelementptr i8, ptr %132, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i320, i32 %130) #14, !srcloc !141
  %ops.i.i322 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %133 = ptrtoint ptr %ops.i.i322 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i.i322, align 4
  %rf_size.i.i323 = getelementptr inbounds %struct.rt2x00_ops, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %rf_size.i.i323 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rf_size.i.i323, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %136)
  %cmp1.i.i325 = icmp ult i32 %136, 16
  br i1 %cmp1.i.i325, label %do.body3.i.i326, label %rt2x00_rf_write.exit.i329, !prof !145

do.body3.i.i326:                                  ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i329:                        ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i327 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %137 = ptrtoint ptr %rf.i.i327 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rf.i.i327, align 4
  %arrayidx.i.i328 = getelementptr i32, ptr %138, i32 3
  %139 = ptrtoint ptr %arrayidx.i.i328 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %127, ptr %arrayidx.i.i328, align 4
  br label %rt61pci_rf_write.exit330

rt61pci_rf_write.exit330:                         ; preds = %rt2x00_rf_write.exit.i329, %rt61pci_rf_write.exit312.rt61pci_rf_write.exit330_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i313) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %140(i32 noundef 42949600) #14
  %141 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rf1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i331) #14
  %143 = ptrtoint ptr %reg.i331 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %reg.i331, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i333 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i331) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i333)
  %tobool.not.i334 = icmp eq i32 %call.i333, 0
  br i1 %tobool.not.i334, label %rt61pci_rf_write.exit330.rt61pci_rf_write.exit347_crit_edge, label %if.then.i339

rt61pci_rf_write.exit330.rt61pci_rf_write.exit347_crit_edge: ; preds = %rt61pci_rf_write.exit330
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit347

if.then.i339:                                     ; preds = %rt61pci_rf_write.exit330
  %and19.i335 = and i32 %142, 16777215
  %or97.i336 = or i32 %and19.i335, -1795162112
  %144 = ptrtoint ptr %reg.i331 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or97.i336, ptr %reg.i331, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %145 = call i32 @llvm.bswap.i32(i32 %or97.i336) #14
  %csr.i.i337 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %146 = ptrtoint ptr %csr.i.i337 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %csr.i.i337, align 4
  %add.ptr.i.i338 = getelementptr i8, ptr %147, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i338, i32 %145) #14, !srcloc !141
  %ops.i.i340 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %148 = ptrtoint ptr %ops.i.i340 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ops.i.i340, align 4
  %rf_size.i.i341 = getelementptr inbounds %struct.rt2x00_ops, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %rf_size.i.i341 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rf_size.i.i341, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %151)
  %cmp1.i.i343 = icmp ult i32 %151, 4
  br i1 %cmp1.i.i343, label %do.body3.i.i344, label %rt2x00_rf_write.exit.i346, !prof !145

do.body3.i.i344:                                  ; preds = %if.then.i339
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i346:                        ; preds = %if.then.i339
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i345 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %152 = ptrtoint ptr %rf.i.i345 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rf.i.i345, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %142, ptr %153, align 4
  br label %rt61pci_rf_write.exit347

rt61pci_rf_write.exit347:                         ; preds = %rt2x00_rf_write.exit.i346, %rt61pci_rf_write.exit330.rt61pci_rf_write.exit347_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i331) #14
  %155 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rf2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i348) #14
  %157 = ptrtoint ptr %reg.i348 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -1, ptr %reg.i348, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i350 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i348) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i350)
  %tobool.not.i351 = icmp eq i32 %call.i350, 0
  br i1 %tobool.not.i351, label %rt61pci_rf_write.exit347.rt61pci_rf_write.exit365_crit_edge, label %if.then.i356

rt61pci_rf_write.exit347.rt61pci_rf_write.exit365_crit_edge: ; preds = %rt61pci_rf_write.exit347
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit365

if.then.i356:                                     ; preds = %rt61pci_rf_write.exit347
  %and19.i352 = and i32 %156, 16777215
  %or97.i353 = or i32 %and19.i352, -1795162112
  %158 = ptrtoint ptr %reg.i348 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %or97.i353, ptr %reg.i348, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %159 = call i32 @llvm.bswap.i32(i32 %or97.i353) #14
  %csr.i.i354 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %160 = ptrtoint ptr %csr.i.i354 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %csr.i.i354, align 4
  %add.ptr.i.i355 = getelementptr i8, ptr %161, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i355, i32 %159) #14, !srcloc !141
  %ops.i.i357 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %162 = ptrtoint ptr %ops.i.i357 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops.i.i357, align 4
  %rf_size.i.i358 = getelementptr inbounds %struct.rt2x00_ops, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %rf_size.i.i358 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rf_size.i.i358, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %165)
  %cmp1.i.i360 = icmp ult i32 %165, 8
  br i1 %cmp1.i.i360, label %do.body3.i.i361, label %rt2x00_rf_write.exit.i364, !prof !145

do.body3.i.i361:                                  ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i364:                        ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i362 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %166 = ptrtoint ptr %rf.i.i362 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rf.i.i362, align 4
  %arrayidx.i.i363 = getelementptr i32, ptr %167, i32 1
  %168 = ptrtoint ptr %arrayidx.i.i363 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %156, ptr %arrayidx.i.i363, align 4
  br label %rt61pci_rf_write.exit365

rt61pci_rf_write.exit365:                         ; preds = %rt2x00_rf_write.exit.i364, %rt61pci_rf_write.exit347.rt61pci_rf_write.exit365_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i348) #14
  %169 = ptrtoint ptr %rf3 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rf3, align 4
  %and135 = and i32 %170, -5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i366) #14
  %171 = ptrtoint ptr %reg.i366 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -1, ptr %reg.i366, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i368 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i366) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %tobool.not.i369 = icmp eq i32 %call.i368, 0
  br i1 %tobool.not.i369, label %rt61pci_rf_write.exit365.rt61pci_rf_write.exit383_crit_edge, label %if.then.i374

rt61pci_rf_write.exit365.rt61pci_rf_write.exit383_crit_edge: ; preds = %rt61pci_rf_write.exit365
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit383

if.then.i374:                                     ; preds = %rt61pci_rf_write.exit365
  %and19.i370 = and i32 %170, 16777211
  %or97.i371 = or i32 %and19.i370, -1795162112
  %172 = ptrtoint ptr %reg.i366 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or97.i371, ptr %reg.i366, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %173 = call i32 @llvm.bswap.i32(i32 %or97.i371) #14
  %csr.i.i372 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %174 = ptrtoint ptr %csr.i.i372 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %csr.i.i372, align 4
  %add.ptr.i.i373 = getelementptr i8, ptr %175, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i373, i32 %173) #14, !srcloc !141
  %ops.i.i375 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %176 = ptrtoint ptr %ops.i.i375 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ops.i.i375, align 4
  %rf_size.i.i376 = getelementptr inbounds %struct.rt2x00_ops, ptr %177, i32 0, i32 4
  %178 = ptrtoint ptr %rf_size.i.i376 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rf_size.i.i376, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %179)
  %cmp1.i.i378 = icmp ult i32 %179, 12
  br i1 %cmp1.i.i378, label %do.body3.i.i379, label %rt2x00_rf_write.exit.i382, !prof !145

do.body3.i.i379:                                  ; preds = %if.then.i374
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i382:                        ; preds = %if.then.i374
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i380 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %180 = ptrtoint ptr %rf.i.i380 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rf.i.i380, align 4
  %arrayidx.i.i381 = getelementptr i32, ptr %181, i32 2
  %182 = ptrtoint ptr %arrayidx.i.i381 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %and135, ptr %arrayidx.i.i381, align 4
  br label %rt61pci_rf_write.exit383

rt61pci_rf_write.exit383:                         ; preds = %rt2x00_rf_write.exit.i382, %rt61pci_rf_write.exit365.rt61pci_rf_write.exit383_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i366) #14
  %183 = ptrtoint ptr %rf4 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %rf4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i384) #14
  %185 = ptrtoint ptr %reg.i384 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %reg.i384, align 4, !annotation !142
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #14
  %call.i386 = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg.i384) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool.not.i387 = icmp eq i32 %call.i386, 0
  br i1 %tobool.not.i387, label %rt61pci_rf_write.exit383.rt61pci_rf_write.exit401_crit_edge, label %if.then.i392

rt61pci_rf_write.exit383.rt61pci_rf_write.exit401_crit_edge: ; preds = %rt61pci_rf_write.exit383
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt61pci_rf_write.exit401

if.then.i392:                                     ; preds = %rt61pci_rf_write.exit383
  %and19.i388 = and i32 %184, 16777215
  %or97.i389 = or i32 %and19.i388, -1795162112
  %186 = ptrtoint ptr %reg.i384 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or97.i389, ptr %reg.i384, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %187 = call i32 @llvm.bswap.i32(i32 %or97.i389) #14
  %csr.i.i390 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %188 = ptrtoint ptr %csr.i.i390 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %csr.i.i390, align 4
  %add.ptr.i.i391 = getelementptr i8, ptr %189, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i391, i32 %187) #14, !srcloc !141
  %ops.i.i393 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %190 = ptrtoint ptr %ops.i.i393 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ops.i.i393, align 4
  %rf_size.i.i394 = getelementptr inbounds %struct.rt2x00_ops, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %rf_size.i.i394 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rf_size.i.i394, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %193)
  %cmp1.i.i396 = icmp ult i32 %193, 16
  br i1 %cmp1.i.i396, label %do.body3.i.i397, label %rt2x00_rf_write.exit.i400, !prof !145

do.body3.i.i397:                                  ; preds = %if.then.i392
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit.i400:                        ; preds = %if.then.i392
  call void @__sanitizer_cov_trace_pc() #16
  %rf.i.i398 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %194 = ptrtoint ptr %rf.i.i398 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rf.i.i398, align 4
  %arrayidx.i.i399 = getelementptr i32, ptr %195, i32 3
  %196 = ptrtoint ptr %arrayidx.i.i399 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %184, ptr %arrayidx.i.i399, align 4
  br label %rt61pci_rf_write.exit401

rt61pci_rf_write.exit401:                         ; preds = %rt2x00_rf_write.exit.i400, %rt61pci_rf_write.exit383.rt61pci_rf_write.exit401_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i384) #14
  call void @msleep(i32 noundef 1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt61pci_rf_write(ptr noundef %rt2x00dev, i32 noundef %word, i32 noundef %value) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #14
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !142
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #14
  %call = call i32 @rt2x00mmio_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %and19 = and i32 %value, 16777215
  %or97 = or i32 %and19, -1795162112
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or97, ptr %reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @arm_heavy_mb() #14
  %2 = call i32 @llvm.bswap.i32(i32 %or97) #14
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #14, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word)
  %cmp.i = icmp eq i32 %word, 0
  br i1 %cmp.i, label %if.then.do.body3.i_crit_edge, label %lor.rhs.i, !prof !145

if.then.do.body3.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %cmp1.i, label %lor.rhs.i.do.body3.i_crit_edge, label %rt2x00_rf_write.exit, !prof !145

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %if.then.do.body3.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

rt2x00_rf_write.exit:                             ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @mutex_unlock(ptr noundef %csr_mutex) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00_rf_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word)
  %cmp = icmp eq i32 %word, 0
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !145

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end6, !prof !145

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #14, !srcloc !149
  unreachable

do.end6:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
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
declare dso_local i32 @rt2x00mac_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_start(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_complete(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_get_stats(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt61pci_conf_tx(ptr noundef %hw, ptr noundef %vif, i16 noundef zeroext %queue_idx, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @rt2x00mac_conf_tx(ptr noundef %hw, ptr noundef %vif, i16 noundef zeroext %queue_idx, ptr noundef %params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %queue_idx)
  %cmp = icmp ugt i16 %queue_idx, 3
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %entry
  %conv = zext i16 %queue_idx to i32
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %tx_queues.i = getelementptr inbounds %struct.rt2x00_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.i = icmp ugt i32 %5, %conv
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.rt2x00queue_get_tx_queue.exit_crit_edge

if.end4.rt2x00queue_get_tx_queue.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %rt2x00queue_get_tx_queue.exit

land.lhs.true.i:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %tx.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 51
  %6 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  %arrayidx.i = getelementptr %struct.data_queue, ptr %7, i32 %conv
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %arrayidx.i
  br label %rt2x00queue_get_tx_queue.exit

rt2x00queue_get_tx_queue.exit:                    ; preds = %land.lhs.true.i, %if.end4.rt2x00queue_get_tx_queue.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end4.rt2x00queue_get_tx_queue.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %8 = shl nuw nsw i32 %conv, 1
  %mul = and i32 %8, 4
  %add = add nuw nsw i32 %mul, 13428
  %and11 = shl nuw nsw i32 %conv, 4
  %mul12 = and i32 %and11, 16
  %shl = shl nuw i32 65535, %mul12
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %neg = xor i32 %shl, -1
  %and18 = and i32 %12, %neg
  %txop = getelementptr inbounds %struct.data_queue, ptr %retval.0.i, i32 0, i32 14
  %13 = ptrtoint ptr %txop to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %txop, align 4
  %conv20 = zext i16 %14 to i32
  %shl22 = shl nuw i32 %conv20, %mul12
  %and24 = and i32 %shl22, %shl
  %or = or i32 %and24, %and18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %16 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %15) #14, !srcloc !141
  %mul26 = shl nuw nsw i32 %conv, 2
  %shl29 = shl nuw nsw i32 15, %mul26
  %18 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %19, i32 13344
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #14, !srcloc !138
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %neg38 = xor i32 %shl29, -1
  %and39 = and i32 %21, %neg38
  %aifs = getelementptr inbounds %struct.data_queue, ptr %retval.0.i, i32 0, i32 15
  %22 = ptrtoint ptr %aifs to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %aifs, align 2
  %conv41 = zext i16 %23 to i32
  %shl43 = shl nuw nsw i32 %conv41, %mul26
  %and45 = and i32 %shl43, %shl29
  %or46 = or i32 %and45, %and39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %24 = tail call i32 @llvm.bswap.i32(i32 %or46) #14
  %25 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %26, i32 13344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %24) #14, !srcloc !141
  %27 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %28, i32 13348
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #14, !srcloc !138
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %and55 = and i32 %30, %neg38
  %cw_min = getelementptr inbounds %struct.data_queue, ptr %retval.0.i, i32 0, i32 16
  %31 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cw_min, align 4
  %conv57 = zext i16 %32 to i32
  %shl59 = shl nuw nsw i32 %conv57, %mul26
  %and61 = and i32 %shl59, %shl29
  %or62 = or i32 %and61, %and55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %33 = tail call i32 @llvm.bswap.i32(i32 %or62) #14
  %34 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csr.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %35, i32 13348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %33) #14, !srcloc !141
  %36 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %csr.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %37, i32 13352
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #14, !srcloc !138
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %and71 = and i32 %39, %neg38
  %cw_max = getelementptr inbounds %struct.data_queue, ptr %retval.0.i, i32 0, i32 17
  %40 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cw_max, align 2
  %conv73 = zext i16 %41 to i32
  %shl75 = shl nuw nsw i32 %conv73, %mul26
  %and77 = and i32 %shl75, %shl29
  %or78 = or i32 %and77, %and71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !140
  tail call void @arm_heavy_mb() #14
  %42 = tail call i32 @llvm.bswap.i32(i32 %or78) #14
  %43 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %csr.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %44, i32 13352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %42) #14, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %rt2x00queue_get_tx_queue.exit, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @rt61pci_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12404
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %6, i32 12400
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #14, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  %8 = zext i32 %4 to i64
  %9 = zext i32 %7 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  ret i64 %12
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !114, !116, !117, !118, !119, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__param_nohwcrypt, !1, !"__param_nohwcrypt", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_nohwcrypttype370, !1, !"__UNIQUE_ID_nohwcrypttype370", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nohwcrypt371, !4, !"__UNIQUE_ID_nohwcrypt371", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_author739, !6, !"__UNIQUE_ID_author739", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2993, i32 1}
!7 = !{ptr @__UNIQUE_ID_version740, !8, !"__UNIQUE_ID_version740", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2994, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description741, !14, !"__UNIQUE_ID_description741", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2995, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware742, !16, !"__UNIQUE_ID_firmware742", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2997, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware743, !18, !"__UNIQUE_ID_firmware743", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2998, i32 1}
!19 = !{ptr @__UNIQUE_ID_firmware744, !20, !"__UNIQUE_ID_firmware744", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2999, i32 1}
!21 = !{ptr @__UNIQUE_ID_file745, !22, !"__UNIQUE_ID_file745", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 3000, i32 1}
!23 = !{ptr @__UNIQUE_ID_license746, !22, !"__UNIQUE_ID_license746", i1 false, i1 false}
!24 = !{ptr @__initcall__kmod_rt61pci__747_3016_rt61pci_driver_init6, !25, !"__initcall__kmod_rt61pci__747_3016_rt61pci_driver_init6", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 3016, i32 1}
!26 = !{ptr @__exitcall_rt61pci_driver_exit, !25, !"__exitcall_rt61pci_driver_exit", i1 false, i1 false}
!27 = !{ptr @__param_str_nohwcrypt, !1, !"__param_str_nohwcrypt", i1 false, i1 false}
!28 = !{ptr @modparam_nohwcrypt, !29, !"modparam_nohwcrypt", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 31, i32 13}
!30 = !{ptr @rt61pci_driver, !31, !"rt61pci_driver", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 3008, i32 26}
!32 = !{ptr @rt61pci_device_table, !33, !"rt61pci_device_table", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2983, i32 35}
!34 = !{ptr @rt61pci_ops, !35, !"rt61pci_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2966, i32 32}
!36 = !{ptr @rt61pci_rt2x00_ops, !37, !"rt61pci_rt2x00_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2896, i32 35}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2116, i32 4}
!40 = !{ptr @rt61pci_txdone._rs, !39, !"_rs", i1 false, i1 false}
!41 = !{ptr @__func__.rt61pci_txdone, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rt61pci_txdone._entry, !39, !"_entry", i1 false, i1 false}
!47 = !{ptr @rt61pci_txdone._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2340, i32 3}
!50 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug674, !49, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2353, i32 3}
!54 = !{ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug682, !53, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2361, i32 3}
!57 = !{ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug684, !56, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2369, i32 3}
!60 = !{ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug687, !59, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2377, i32 3}
!63 = !{ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug690, !62, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2393, i32 3}
!66 = !{ptr @rt61pci_validate_eeprom.__UNIQUE_ID_ddebug697, !65, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!67 = !{ptr @rt61pci_init_eeprom._rs, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2430, i32 3}
!69 = !{ptr @__func__.rt61pci_init_eeprom, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rt61pci_init_eeprom._entry, !68, !"_entry", i1 false, i1 false}
!73 = !{ptr @rt61pci_init_eeprom._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00.h", i32 1107, i32 2}
!76 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rt2x00_set_chip._entry, !75, !"_entry", i1 false, i1 false}
!80 = !{ptr @rt2x00_set_chip._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @rf_vals_noseq, !82, !"rf_vals_noseq", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2545, i32 32}
!83 = !{ptr @rf_vals_seq, !84, !"rf_vals_seq", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2602, i32 32}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 1154, i32 13}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 1157, i32 13}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 1160, i32 13}
!91 = !{ptr @rt61pci_load_firmware._rs, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 1216, i32 3}
!93 = !{ptr @__func__.rt61pci_load_firmware, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @rt61pci_load_firmware._entry, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @rt61pci_load_firmware._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @rt61pci_load_firmware._rs.25, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 1255, i32 3}
!99 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rt61pci_load_firmware._entry.26, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @rt61pci_load_firmware._entry_ptr.28, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @rt61pci_set_device_state._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 1766, i32 3}
!104 = !{ptr @__func__.rt61pci_set_device_state, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @rt61pci_set_device_state._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @rt61pci_set_device_state._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @rt61pci_wait_bbp_ready._rs, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 1565, i32 2}
!110 = !{ptr @__func__.rt61pci_wait_bbp_ready, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @rt61pci_wait_bbp_ready._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @rt61pci_wait_bbp_ready._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @rt61pci_write_beacon._rs, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 1905, i32 3}
!116 = !{ptr @__func__.rt61pci_write_beacon, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.31, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @rt61pci_write_beacon._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @rt61pci_write_beacon._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @antenna_sel_a, !121, !"antenna_sel_a", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 681, i32 33}
!122 = !{ptr @antenna_sel_bg, !123, !"antenna_sel_bg", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 692, i32 33}
!124 = !{ptr @rt61pci_mac80211_ops, !125, !"rt61pci_mac80211_ops", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 2873, i32 35}
!126 = !{ptr @rt61pci_rt2x00debug, !127, !"rt61pci_rt2x00debug", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ralink/rt2x00/rt61pci.c", i32 197, i32 33}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2166487358, i64 2166487868, i64 2166487395, i64 2166487451, i64 2166487485, i64 2166487509, i64 2166487550, i64 2166487571, i64 2166487599, i64 2166487633}
!138 = !{i64 6142932}
!139 = !{i64 2158112525}
!140 = !{i64 2158113161}
!141 = !{i64 6142514}
!142 = !{!"auto-init"}
!143 = !{!"branch_weights", i32 2002, i32 2000}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{!"branch_weights", i32 1, i32 2000}
!146 = !{i8 0, i8 2}
!147 = !{i32 0, i32 33}
!148 = !{i64 2159934726, i64 2159935235, i64 2159934763, i64 2159934819, i64 2159934853, i64 2159934877, i64 2159934918, i64 2159934939, i64 2159934967, i64 2159935001}
!149 = !{i64 2158092590, i64 2158093099, i64 2158092627, i64 2158092683, i64 2158092717, i64 2158092741, i64 2158092782, i64 2158092803, i64 2158092831, i64 2158092865}
!150 = !{i64 2148848464, i64 2148848469, i64 2148848482, i64 2148848526, i64 2148848560, i64 2148848581}
!151 = !{i64 2158094502, i64 2158095011, i64 2158094539, i64 2158094595, i64 2158094629, i64 2158094653, i64 2158094694, i64 2158094715, i64 2158094743, i64 2158094777}
