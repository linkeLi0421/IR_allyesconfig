; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2800pci.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2800pci.c"
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
%struct.rt2800_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00debug = type { ptr, %struct.regcsr, %struct.regeeprom, %struct.regbbp, %struct.regrf, %struct.regrfcsr }
%struct.regcsr = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regeeprom = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regbbp = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regrf = type { ptr, ptr, i32, i32, i32, i32 }
%struct.regrfcsr = type { ptr, ptr, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }

@__param_str_nohwcrypt = internal constant [20 x i8] c"rt2800pci.nohwcrypt\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_nohwcrypt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype370 = internal constant [34 x i8] c"rt2800pci.parmtype=nohwcrypt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt371 = internal constant [54 x i8] c"rt2800pci.parm=nohwcrypt:Disable hardware encryption.\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [48 x i8] c"rt2800pci.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version387 = internal constant [24 x i8] c"rt2800pci.version=2.3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rt2800pci\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description388 = internal constant [70 x i8] c"rt2800pci.description=Ralink RT2800 PCI & PCMCIA Wireless LAN driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware389 = internal constant [30 x i8] c"rt2800pci.firmware=rt2860.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_file390 = internal constant [60 x i8] c"rt2800pci.file=drivers/net/wireless/ralink/rt2x00/rt2800pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [22 x i8] c"rt2800pci.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rt2800pci__392_460_rt2800pci_driver_init6 = internal global ptr @rt2800pci_driver_init, section ".initcall6.init", align 4
@rt2800pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @rt2800pci_device_table, ptr @rt2800pci_probe, ptr @rt2x00pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rt2800pci_driver_exit = internal global ptr @rt2800pci_driver_exit, section ".exitcall.exit", align 4
@rt2800pci_device_table = internal constant { [34 x %struct.pci_device_id], [256 x i8] } { [34 x %struct.pci_device_id] [%struct.pci_device_id { i32 6164, i32 1537, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 1665, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 1793, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 1921, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 12432, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 12433, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 12434, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 30472, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 30503, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 30504, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 30520, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 30536, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 30552, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 30568, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5218, i32 35098, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6715, i32 4185, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 12944, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 13200, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 30481, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 30498, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 12384, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 12386, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 13666, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 13714, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 13715, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 13727, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 21344, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 21346, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 21392, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 21394, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 21402, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 21403, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6164, i32 21407, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [256 x i8] zeroinitializer }, align 32
@rt2x00pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@rt2800pci_ops = internal constant { %struct.rt2x00_ops, [52 x i8] } { %struct.rt2x00_ops { ptr @.str.1, i32 820, i32 8, i32 512, i32 16, i32 4, ptr @rt2800mmio_queue_init, ptr @rt2800pci_rt2x00_ops, ptr @rt2800pci_rt2800_ops, ptr @rt2800pci_mac80211_ops, ptr @rt2800_rt2x00debug }, [52 x i8] zeroinitializer }, align 32
@rt2800pci_rt2x00_ops = internal constant { %struct.rt2x00lib_ops, [52 x i8] } { %struct.rt2x00lib_ops { ptr @rt2800mmio_interrupt, ptr @rt2800mmio_txstatus_tasklet, ptr @rt2800mmio_pretbtt_tasklet, ptr @rt2800mmio_tbtt_tasklet, ptr @rt2800mmio_rxdone_tasklet, ptr @rt2800mmio_autowake_tasklet, ptr @rt2800mmio_probe_hw, ptr @rt2800pci_get_firmware_name, ptr @rt2800_check_firmware, ptr @rt2800_load_firmware, ptr @rt2x00mmio_initialize, ptr @rt2x00mmio_uninitialize, ptr @rt2800mmio_get_entry_state, ptr @rt2800mmio_clear_entry, ptr @rt2800pci_set_device_state, ptr @rt2800_rfkill_poll, ptr @rt2800_link_stats, ptr @rt2800_reset_tuner, ptr @rt2800_link_tuner, ptr @rt2800_gain_calibration, ptr @rt2800_vco_calibration, ptr @rt2800_watchdog, ptr @rt2800mmio_start_queue, ptr @rt2800mmio_kick_queue, ptr @rt2800mmio_stop_queue, ptr @rt2800mmio_flush_queue, ptr null, ptr @rt2800mmio_write_tx_desc, ptr @rt2800_write_tx_data, ptr @rt2800_write_beacon, ptr @rt2800_clear_beacon, ptr null, ptr @rt2800mmio_fill_rxdone, ptr @rt2800_config_shared_key, ptr @rt2800_config_pairwise_key, ptr @rt2800_config_filter, ptr @rt2800_config_intf, ptr @rt2800_config_erp, ptr @rt2800_config_ant, ptr @rt2800_config, ptr @rt2800_pre_reset_hw, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rt2800pci_rt2800_ops = internal constant { %struct.rt2800_ops, [44 x i8] } { %struct.rt2800_ops { ptr @rt2x00mmio_register_read, ptr @rt2x00mmio_register_read, ptr @rt2x00mmio_register_write, ptr @rt2x00mmio_register_write, ptr @rt2x00mmio_register_multiread, ptr @rt2x00mmio_register_multiwrite, ptr @rt2x00mmio_regbusy_read, ptr @rt2800pci_read_eeprom, ptr @rt2800pci_hwcrypt_disabled, ptr @rt2800pci_write_firmware, ptr @rt2800mmio_init_registers, ptr @rt2800mmio_get_txwi, ptr @rt2800mmio_get_dma_done }, [44 x i8] zeroinitializer }, align 32
@rt2800pci_mac80211_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rt2x00mac_tx, ptr @rt2x00mac_start, ptr @rt2x00mac_stop, ptr null, ptr null, ptr null, ptr @rt2x00mac_add_interface, ptr null, ptr @rt2x00mac_remove_interface, ptr @rt2x00mac_config, ptr @rt2x00mac_bss_info_changed, ptr null, ptr null, ptr null, ptr @rt2x00mac_configure_filter, ptr null, ptr null, ptr @rt2x00mac_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_sw_scan_start, ptr @rt2x00mac_sw_scan_complete, ptr @rt2x00mac_get_stats, ptr @rt2800_get_key_seq, ptr null, ptr @rt2800_set_rts_threshold, ptr @rt2800_sta_add, ptr @rt2800_sta_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2800_conf_tx, ptr @rt2800_get_tsf, ptr null, ptr null, ptr null, ptr null, ptr @rt2800_ampdu_action, ptr @rt2800_get_survey, ptr @rt2x00mac_rfkill_poll, ptr null, ptr null, ptr null, ptr @rt2x00mac_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_get_ringparam, ptr @rt2x00mac_tx_frames_pending, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_reconfig_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@rt2800_rt2x00debug = external dso_local constant %struct.rt2x00debug, align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt3290.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt2860.bin\00", [21 x i8] zeroinitializer }, align 32
@rt2800pci_set_device_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt2800pci_set_device_state = private unnamed_addr constant [27 x i8] c"rt2800pci_set_device_state\00", align 1
@rt2800pci_set_device_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.rt2800pci_set_device_state, ptr @.str.7, i32 269, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - Device failed to enter state %d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2800pci.c\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt2800pci_set_device_state._entry_ptr = internal global ptr @rt2800pci_set_device_state._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt2800pci_mcu_status._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2800pci_mcu_status = private unnamed_addr constant [21 x i8] c"rt2800pci_mcu_status\00", align 1
@rt2800pci_mcu_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.rt2800pci_mcu_status, ptr @.str.7, i32 73, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Error - MCU request failed, no response from hardware\0A\00", [37 x i8] zeroinitializer }, align 32
@rt2800pci_mcu_status._entry_ptr = internal global ptr @rt2800pci_mcu_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"modparam_nohwcrypt\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 40, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 440, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"rt2800pci_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 452, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"rt2800pci_device_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 394, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"rt2800pci_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 375, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"rt2800pci_rt2x00_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 333, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"rt2800pci_rt2800_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 317, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"rt2800pci_mac80211_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 289, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 161, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 163, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 268, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [50 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 73, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_description388, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_firmware389, ptr @__UNIQUE_ID_license391, ptr @__UNIQUE_ID_nohwcrypt371, ptr @__UNIQUE_ID_nohwcrypttype370, ptr @__UNIQUE_ID_version387, ptr @__exitcall_rt2800pci_driver_exit, ptr @__initcall__kmod_rt2800pci__392_460_rt2800pci_driver_init6, ptr @__modver_attr, ptr @__param_nohwcrypt, ptr @rt2800pci_driver_exit, ptr @rt2800pci_mcu_status._entry, ptr @rt2800pci_mcu_status._entry_ptr, ptr @rt2800pci_set_device_state._entry, ptr @rt2800pci_set_device_state._entry_ptr, ptr @modparam_nohwcrypt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rt2800pci_driver, ptr @rt2800pci_device_table, ptr @rt2800pci_ops, ptr @rt2800pci_rt2x00_ops, ptr @rt2800pci_rt2800_ops, ptr @rt2800pci_mac80211_ops, ptr @.str.3, ptr @.str.4, ptr @rt2800pci_set_device_state._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rt2800pci_mcu_status._rs, ptr @.str.10], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_nohwcrypt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_device_table to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_rt2x00_ops to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_rt2800_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_mac80211_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_set_device_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_set_device_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_mcu_status._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800pci_mcu_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rt2800pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt2800pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @rt2800pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800pci_probe(ptr noundef %pci_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rt2x00pci_probe(ptr noundef %pci_dev, ptr noundef nonnull @rt2800pci_ops) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00pci_remove(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00pci_probe(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_queue_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800mmio_interrupt(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_txstatus_tasklet(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_pretbtt_tasklet(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_tbtt_tasklet(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_rxdone_tasklet(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_autowake_tasklet(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800mmio_probe_hw(ptr noundef) #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @rt2800pci_get_firmware_name(ptr nocapture noundef readonly %rt2x00dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %chip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12944, i16 %1)
  %cmp.i = icmp eq i16 %1, 12944
  %.str.3..str.4 = select i1 %cmp.i, ptr @.str.3, ptr @.str.4
  ret ptr %.str.3..str.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_check_firmware(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_load_firmware(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mmio_initialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mmio_uninitialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2800mmio_get_entry_state(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_clear_entry(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800pci_set_device_state(ptr noundef %rt2x00dev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.do.body_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb2
    i32 6, label %entry.sw.bb4_crit_edge
    i32 7, label %entry.sw.bb4_crit_edge33
    i32 3, label %if.then.i
    i32 1, label %if.then2.i
    i32 0, label %entry.if.end15_crit_edge
    i32 2, label %entry.if.end15_crit_edge34
  ]

entry.if.end15_crit_edge34:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

entry.sw.bb4_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @rt2800mmio_enable_radio(ptr noundef %rt2x00dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %1 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 28700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #9, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %4, i32 28692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 -1) #9, !srcloc !68
  tail call void @rt2800_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext 48, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 2) #9
  tail call fastcc void @rt2800pci_mcu_status(ptr noundef %rt2x00dev, i8 noundef zeroext 2) #9
  tail call void @rt2800_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext 49, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  tail call fastcc void @rt2800pci_mcu_status(ptr noundef %rt2x00dev, i8 noundef zeroext 3) #9
  br label %if.end15

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %csr.i.i25 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %5 = ptrtoint ptr %csr.i.i25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i.i25, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %6, i32 28700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26, i32 -1) #9, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %csr.i.i25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i.i25, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %8, i32 28692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 -1) #9, !srcloc !68
  tail call void @rt2800_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext 48, i8 noundef zeroext 1, i8 noundef zeroext -1, i8 noundef zeroext 1) #9
  br label %if.end15

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge33
  tail call void @rt2800mmio_toggle_irq(ptr noundef %rt2x00dev, i32 noundef %state) #9
  br label %if.end15

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rt2800_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext 49, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 2) #9
  tail call fastcc void @rt2800pci_mcu_status(ptr noundef %rt2x00dev, i8 noundef zeroext 3) #9
  br label %if.end15

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %csr.i.i27 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %9 = ptrtoint ptr %csr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i.i27, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %10, i32 28700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28, i32 -1) #9, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %csr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i.i27, align 4
  %add.ptr.i2.i29 = getelementptr i8, ptr %12, i32 28692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i29, i32 -1) #9, !srcloc !68
  tail call void @rt2800_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext 48, i8 noundef zeroext 1, i8 noundef zeroext -1, i8 noundef zeroext 1) #9
  br label %if.end15

do.body:                                          ; preds = %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  %retval1.0 = phi i32 [ -524, %entry.do.body_crit_edge ], [ %call.i, %sw.bb.do.body_crit_edge ]
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2800pci_set_device_state._rs, ptr noundef nonnull @__func__.rt2800pci_set_device_state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body.if.end15_crit_edge, label %do.end

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rt2800pci_set_device_state, i32 noundef %state, i32 noundef %retval1.0) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end, %do.body.if.end15_crit_edge, %if.then2.i, %if.then.i, %sw.bb4, %sw.bb2, %if.end.i, %entry.if.end15_crit_edge, %entry.if.end15_crit_edge34
  %retval1.032 = phi i32 [ %retval1.0, %do.body.if.end15_crit_edge ], [ %retval1.0, %do.end ], [ 0, %if.then2.i ], [ 0, %if.then.i ], [ 0, %if.end.i ], [ 0, %sw.bb2 ], [ 0, %sw.bb4 ], [ 0, %entry.if.end15_crit_edge ], [ 0, %entry.if.end15_crit_edge34 ]
  ret i32 %retval1.032
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_rfkill_poll(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_link_stats(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_reset_tuner(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_link_tuner(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_gain_calibration(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_vco_calibration(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_watchdog(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_start_queue(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_kick_queue(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_stop_queue(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_flush_queue(ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_write_tx_desc(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_write_tx_data(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_write_beacon(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_clear_beacon(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_fill_rxdone(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_config_shared_key(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_config_pairwise_key(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config_filter(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config_intf(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config_erp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config_ant(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_pre_reset_hw(ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800mmio_toggle_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800mmio_enable_radio(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00mmio_register_write(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %offset, i32 noundef %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %csr = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %1 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_mcu_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt2800pci_mcu_status(ptr nocapture noundef readonly %rt2x00dev, i8 noundef zeroext %token) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %intf1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intf1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 3
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %conv10 = zext i8 %token to i32
  br label %for.body

for.body:                                         ; preds = %if.end85.for.body_crit_edge, %for.cond.preheader
  %i.0120 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end85.for.body_crit_edge ]
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28692
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !69
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %and = and i32 %5, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv10)
  %cmp11 = icmp eq i32 %and, %conv10
  %and25 = lshr i32 %5, 8
  %shr32 = and i32 %and25, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr32, i32 %conv10)
  %cmp34 = icmp eq i32 %shr32, %conv10
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp34
  %and49 = lshr i32 %5, 16
  %shr56 = and i32 %and49, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr56, i32 %conv10)
  %cmp58 = icmp eq i32 %shr56, %conv10
  %or.cond112 = select i1 %or.cond, i1 true, i1 %cmp58
  %shr80 = lshr i32 %5, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr80, i32 %conv10)
  %cmp82 = icmp eq i32 %shr80, %conv10
  %or.cond113 = select i1 %or.cond112, i1 true, i1 %cmp82
  br i1 %or.cond113, label %for.body.if.end98_crit_edge, label %if.end85

for.body.if.end98_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end85:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #9
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.body89, label %if.end85.for.body_crit_edge

if.end85.for.body_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body89:                                        ; preds = %if.end85
  %call90 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2800pci_mcu_status._rs, ptr noundef nonnull @__func__.rt2800pci_mcu_status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool.not = icmp eq i32 %call90, 0
  br i1 %tobool.not, label %do.body89.if.end98_crit_edge, label %do.end94

do.body89.if.end98_crit_edge:                     ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

do.end94:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.rt2800pci_mcu_status) #12
  br label %if.end98

if.end98:                                         ; preds = %do.end94, %do.body89.if.end98_crit_edge, %for.body.if.end98_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %12, i32 28700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 -1) #9, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %14, i32 28692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 -1) #9, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00mmio_register_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %csr = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !69
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00mmio_register_multiread(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %offset, ptr noundef %value, i32 noundef %length) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %csr = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void @mmiocpy(ptr noundef %value, ptr noundef %add.ptr, i32 noundef %length) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00mmio_register_multiwrite(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %offset, ptr noundef %value, i32 noundef %length) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %csr = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %shr = lshr i32 %length, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr, ptr noundef %value, i32 noundef %shr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mmio_regbusy_read(ptr noundef, i32 noundef, [2 x i32], ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800pci_read_eeprom(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  %eeprom.i = alloca %struct.eeprom_93cx6, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rt2800_efuse_detect(ptr noundef %rt2x00dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6 = tail call i32 @rt2800_read_eeprom_efuse(ptr noundef %rt2x00dev) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eeprom.i) #9
  %0 = getelementptr inbounds i8, ptr %eeprom.i, i32 12
  %1 = getelementptr inbounds i8, ptr %eeprom.i, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %csr.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %3 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %6 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rt2x00dev, ptr %eeprom.i, align 4
  %register_read.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i, i32 0, i32 1
  %7 = ptrtoint ptr %register_read.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rt2800pci_eepromregister_read, ptr %register_read.i, align 4
  %register_write.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i, i32 0, i32 2
  %8 = ptrtoint ptr %register_write.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rt2800pci_eepromregister_write, ptr %register_write.i, align 4
  %9 = and i32 %5, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %switch.selectcmp1.i = icmp eq i32 %9, 0
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 6, i32 8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.select2.i, ptr %0, align 4
  %reg_data_in.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i, i32 0, i32 5
  %eeprom11.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %11 = ptrtoint ptr %reg_data_in.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %reg_data_in.i, align 1
  %12 = ptrtoint ptr %eeprom11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eeprom11.i, align 8
  call void @eeprom_93cx6_multiread(ptr noundef nonnull %eeprom.i, i8 noundef zeroext 0, ptr noundef %13, i16 noundef zeroext 256) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom.i) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call.i6, %if.then ], [ 0, %if.else ]
  ret i32 %retval1.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt2800pci_hwcrypt_disabled(ptr nocapture noundef readnone %rt2x00dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @modparam_nohwcrypt, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800pci_write_firmware(ptr nocapture noundef readonly %rt2x00dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 20
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #9, !srcloc !68
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %3, i32 8192
  %shr.i = lshr i32 %len, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i22, ptr noundef %data, i32 noundef %shr.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %5, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 0) #9, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 16777216) #9, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %9, i32 28712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #9, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %11, i32 28688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #9, !srcloc !68
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800mmio_init_registers(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt2800mmio_get_txwi(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800mmio_get_dma_done(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_efuse_detect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_read_eeprom_efuse(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2800pci_eepromregister_read(ptr nocapture noundef %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !69
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 1
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %9 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %reg_data_in, align 1
  %10 = lshr i8 %6, 3
  %11 = and i8 %10, 1
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %12 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %reg_data_out, align 2
  %13 = and i8 %6, 1
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %14 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %reg_data_clock, align 1
  %15 = lshr i8 %6, 1
  %16 = and i8 %15, 1
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %17 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %reg_chip_select, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2800pci_eepromregister_write(ptr nocapture noundef readonly %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %shl = select i1 %tobool.not, i32 0, i32 4
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %4 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_data_out, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool29.not = icmp eq i8 %5, 0
  %shl40 = select i1 %tobool29.not, i32 0, i32 8
  %or48 = or i32 %shl40, %shl
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %6 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_data_clock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool62 = icmp ne i8 %7, 0
  %lnot.ext66 = zext i1 %tobool62 to i32
  %or81 = or i32 %or48, %lnot.ext66
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %8 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool95.not = icmp eq i8 %9, 0
  %shl106 = select i1 %tobool95.not, i32 0, i32 2
  %or114 = or i32 %or81, %shl106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %10 = shl nuw nsw i32 %or114, 24
  %csr.i = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #9, !srcloc !68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multiread(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_get_key_seq(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_set_rts_threshold(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_sta_add(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_sta_remove(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rt2800_get_tsf(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_ampdu_action(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_get_survey(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_rfkill_poll(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_flush(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_get_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2x00mac_tx_frames_pending(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_reconfig_complete(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__param_nohwcrypt, !1, !"__param_nohwcrypt", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_nohwcrypttype370, !1, !"__UNIQUE_ID_nohwcrypttype370", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nohwcrypt371, !4, !"__UNIQUE_ID_nohwcrypt371", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 42, i32 1}
!5 = !{ptr @__UNIQUE_ID_author386, !6, !"__UNIQUE_ID_author386", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 439, i32 1}
!7 = !{ptr @__UNIQUE_ID_version387, !8, !"__UNIQUE_ID_version387", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 440, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description388, !14, !"__UNIQUE_ID_description388", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 441, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware389, !16, !"__UNIQUE_ID_firmware389", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 442, i32 1}
!17 = !{ptr @__UNIQUE_ID_file390, !18, !"__UNIQUE_ID_file390", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 444, i32 1}
!19 = !{ptr @__UNIQUE_ID_license391, !18, !"__UNIQUE_ID_license391", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_rt2800pci__392_460_rt2800pci_driver_init6, !21, !"__initcall__kmod_rt2800pci__392_460_rt2800pci_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 460, i32 1}
!22 = !{ptr @__exitcall_rt2800pci_driver_exit, !21, !"__exitcall_rt2800pci_driver_exit", i1 false, i1 false}
!23 = !{ptr @__param_str_nohwcrypt, !1, !"__param_str_nohwcrypt", i1 false, i1 false}
!24 = !{ptr @modparam_nohwcrypt, !25, !"modparam_nohwcrypt", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 40, i32 13}
!26 = !{ptr @rt2800pci_driver, !27, !"rt2800pci_driver", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 452, i32 26}
!28 = !{ptr @rt2800pci_device_table, !29, !"rt2800pci_device_table", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 394, i32 35}
!30 = !{ptr @rt2800pci_ops, !31, !"rt2800pci_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 375, i32 32}
!32 = !{ptr @rt2800pci_rt2x00_ops, !33, !"rt2800pci_rt2x00_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 333, i32 35}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 161, i32 10}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 163, i32 10}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 268, i32 3}
!40 = !{ptr @rt2800pci_set_device_state._rs, !39, !"_rs", i1 false, i1 false}
!41 = !{ptr @__func__.rt2800pci_set_device_state, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rt2800pci_set_device_state._entry, !39, !"_entry", i1 false, i1 false}
!47 = !{ptr @rt2800pci_set_device_state._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @rt2800pci_mcu_status._rs, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 73, i32 3}
!50 = !{ptr @__func__.rt2800pci_mcu_status, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rt2800pci_mcu_status._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @rt2800pci_mcu_status._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @rt2800pci_rt2800_ops, !55, !"rt2800pci_rt2800_ops", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 317, i32 32}
!56 = !{ptr @rt2800pci_mac80211_ops, !57, !"rt2800pci_mac80211_ops", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800pci.c", i32 289, i32 35}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2158032693}
!68 = !{i64 6062046}
!69 = !{i64 6062464}
!70 = !{i64 2158032057}
!71 = !{i8 0, i8 2}
