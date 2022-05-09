; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2500usb.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2500usb.c"
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
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }
%struct.data_queue = type { ptr, ptr, i32, i32, %struct.mutex, %struct.spinlock, %struct.spinlock, i32, i16, i16, i16, [3 x i16], i16, i32, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, ptr, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.129, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
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
%struct.anon.129 = type { %union.anon.130, [0 x i32] }
%union.anon.130 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.131, i32 }
%union.anon.131 = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
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
%struct.txentry_desc = type { i32, i16, i16, %union.anon.132, i32, i16, i32, i16, i16, i16 }
%union.anon.132 = type { %struct.anon.134 }
%struct.anon.134 = type { i16, i8, i8, i8, i32, i32 }
%struct.anon.133 = type { i16, i16, i16, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.queue_entry_priv_usb_bcn = type { ptr, i32, ptr }
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }
%struct.rt2x00lib_crypto = type { i32, i32, ptr, i32, [16 x i8], [8 x i8], [8 x i8], i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.rt2x00intf_conf = type { i32, i32, [2 x i32], [2 x i32] }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.rt2x00lib_conf = type { ptr, %struct.rf_channel, %struct.channel_info }

@__param_str_nohwcrypt = internal constant [20 x i8] c"rt2500usb.nohwcrypt\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_nohwcrypt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype368 = internal constant [34 x i8] c"rt2500usb.parmtype=nohwcrypt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt369 = internal constant [54 x i8] c"rt2500usb.parm=nohwcrypt:Disable hardware encryption.\00", section ".modinfo", align 1
@__UNIQUE_ID_author576 = internal constant [48 x i8] c"rt2500usb.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version577 = internal constant [24 x i8] c"rt2500usb.version=2.3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rt2500usb\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description578 = internal constant [61 x i8] c"rt2500usb.description=Ralink RT2500 USB Wireless LAN driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_file579 = internal constant [60 x i8] c"rt2500usb.file=drivers/net/wireless/ralink/rt2x00/rt2500usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license580 = internal constant [22 x i8] c"rt2500usb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rt2500usb__581_1979_rt2500usb_driver_init6 = internal global ptr @rt2500usb_driver_init, section ".initcall6.init", align 4
@rt2500usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @rt2500usb_probe, ptr @rt2x00usb_disconnect, ptr null, ptr @rt2x00usb_suspend, ptr @rt2x00usb_resume, ptr @rt2x00usb_resume, ptr null, ptr null, ptr @rt2500usb_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rt2500usb_driver_exit = internal global ptr @rt2500usb_driver_exit, section ".exitcall.exit", align 4
@rt2500usb_device_table = internal constant { [32 x %struct.usb_device_id], [192 x i8] } { [32 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2821, i16 5894, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5895, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 28752, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 28753, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 26, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32767, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 -8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 94, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 103, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 151, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 26721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 26725, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 26729, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 5894, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 9584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 -28640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1947, i16 75, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1665, i16 15366, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1799, i16 -4589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4427, i16 272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1897, i16 4595, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3760, i16 -28640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3976, i16 12306, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 608, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@rt2500usb_ops = internal constant { %struct.rt2x00_ops, [52 x i8] } { %struct.rt2x00_ops { ptr @.str.1, i32 0, i32 1, i32 110, i32 16, i32 2, ptr @rt2500usb_queue_init, ptr @rt2500usb_rt2x00_ops, ptr null, ptr @rt2500usb_mac80211_ops, ptr @rt2500usb_rt2x00debug }, [52 x i8] zeroinitializer }, align 32
@rt2500usb_rt2x00_ops = internal constant { %struct.rt2x00lib_ops, [52 x i8] } { %struct.rt2x00lib_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2500usb_probe_hw, ptr null, ptr null, ptr null, ptr @rt2x00usb_initialize, ptr @rt2x00usb_uninitialize, ptr null, ptr @rt2x00usb_clear_entry, ptr @rt2500usb_set_device_state, ptr @rt2500usb_rfkill_poll, ptr @rt2500usb_link_stats, ptr @rt2500usb_reset_tuner, ptr null, ptr null, ptr null, ptr @rt2x00usb_watchdog, ptr @rt2500usb_start_queue, ptr @rt2x00usb_kick_queue, ptr @rt2500usb_stop_queue, ptr @rt2x00usb_flush_queue, ptr null, ptr @rt2500usb_write_tx_desc, ptr null, ptr @rt2500usb_write_beacon, ptr null, ptr @rt2500usb_get_tx_data_len, ptr @rt2500usb_fill_rxdone, ptr @rt2500usb_config_key, ptr @rt2500usb_config_key, ptr @rt2500usb_config_filter, ptr @rt2500usb_config_intf, ptr @rt2500usb_config_erp, ptr @rt2500usb_config_ant, ptr @rt2500usb_config, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rt2500usb_mac80211_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rt2x00mac_tx, ptr @rt2x00mac_start, ptr @rt2x00mac_stop, ptr null, ptr null, ptr null, ptr @rt2x00mac_add_interface, ptr null, ptr @rt2x00mac_remove_interface, ptr @rt2x00mac_config, ptr @rt2x00mac_bss_info_changed, ptr null, ptr null, ptr null, ptr @rt2x00mac_configure_filter, ptr null, ptr @rt2x00mac_set_tim, ptr @rt2x00mac_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_sw_scan_start, ptr @rt2x00mac_sw_scan_complete, ptr @rt2x00mac_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_rfkill_poll, ptr null, ptr null, ptr null, ptr @rt2x00mac_flush, ptr null, ptr @rt2x00mac_set_antenna, ptr @rt2x00mac_get_antenna, ptr null, ptr null, ptr null, ptr @rt2x00mac_get_ringparam, ptr @rt2x00mac_tx_frames_pending, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@rt2500usb_rt2x00debug = internal constant { %struct.rt2x00debug, [36 x i8] } { %struct.rt2x00debug { ptr null, %struct.regcsr { ptr @_rt2500usb_register_read, ptr @_rt2500usb_register_write, i32 1, i32 1024, i32 2, i32 128 }, %struct.regeeprom { ptr @rt2x00_eeprom_read, ptr @rt2x00_eeprom_write, i32 0, i32 0, i32 2, i32 55 }, %struct.regbbp { ptr @rt2500usb_bbp_read, ptr @rt2500usb_bbp_write, i32 0, i32 0, i32 1, i32 96 }, %struct.regrf { ptr @rt2x00_rf_read, ptr @rt2500usb_rf_write, i32 0, i32 4, i32 4, i32 4 }, %struct.regrfcsr zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt2500usb_validate_eeprom\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2500usb.c\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: EEPROM recovery - Antenna: 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 1, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: EEPROM recovery - NIC: 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: EEPROM recovery - Calibrate offset: 0x%04x\0A\00", [48 x i8] zeroinitializer }, align 32
@rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 1, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: EEPROM recovery - BBPtune: 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: EEPROM recovery - BBPtune vgc: 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: EEPROM recovery - BBPtune r17: 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 1, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: EEPROM recovery - BBPtune r24: 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: EEPROM recovery - BBPtune r25: 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.13, i8 1, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: EEPROM recovery - BBPtune r61: 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt2500usb_regbusy_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt2500usb_regbusy_read = private unnamed_addr constant [23 x i8] c"rt2500usb_regbusy_read\00", align 1
@rt2500usb_regbusy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.rt2500usb_regbusy_read, ptr @.str.4, i32 111, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: Error - Indirect register access failed: offset=0x%.08x, value=0x%.08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt2500usb_regbusy_read._entry_ptr = internal global ptr @rt2500usb_regbusy_read._entry, section ".printk_index", align 4
@rt2500usb_init_eeprom._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2500usb_init_eeprom = private unnamed_addr constant [22 x i8] c"rt2500usb_init_eeprom\00", align 1
@rt2500usb_init_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.rt2500usb_init_eeprom, ptr @.str.4, i32 1444, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error - Invalid RT chipset detected\0A\00", [55 x i8] zeroinitializer }, align 32
@rt2500usb_init_eeprom._entry_ptr = internal global ptr @rt2500usb_init_eeprom._entry, section ".printk_index", align 4
@rt2500usb_init_eeprom._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt2500usb_init_eeprom._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.rt2500usb_init_eeprom, ptr @.str.4, i32 1454, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error - Invalid RF chipset detected\0A\00", [55 x i8] zeroinitializer }, align 32
@rt2500usb_init_eeprom._entry_ptr.22 = internal global ptr @rt2500usb_init_eeprom._entry.20, section ".printk_index", align 4
@rt2x00_set_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 1109, ptr @.str.26, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: Info - Chipset detected - rt: %04x, rf: %04x, rev: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt2x00_set_chip\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt2x00_set_chip._entry_ptr = internal global ptr @rt2x00_set_chip._entry, section ".printk_index", align 4
@rf_vals_bg_2522 = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 8272, i32 794586, i32 257, i32 0 }, %struct.rf_channel { i32 2, i32 8272, i32 794606, i32 257, i32 0 }, %struct.rf_channel { i32 3, i32 8272, i32 794626, i32 257, i32 0 }, %struct.rf_channel { i32 4, i32 8272, i32 794646, i32 257, i32 0 }, %struct.rf_channel { i32 5, i32 8272, i32 794666, i32 257, i32 0 }, %struct.rf_channel { i32 6, i32 8272, i32 794686, i32 257, i32 0 }, %struct.rf_channel { i32 7, i32 8272, i32 794706, i32 257, i32 0 }, %struct.rf_channel { i32 8, i32 8272, i32 794726, i32 257, i32 0 }, %struct.rf_channel { i32 9, i32 8272, i32 794746, i32 257, i32 0 }, %struct.rf_channel { i32 10, i32 8272, i32 794766, i32 257, i32 0 }, %struct.rf_channel { i32 11, i32 8272, i32 794786, i32 257, i32 0 }, %struct.rf_channel { i32 12, i32 8272, i32 794806, i32 257, i32 0 }, %struct.rf_channel { i32 13, i32 8272, i32 794826, i32 257, i32 0 }, %struct.rf_channel { i32 14, i32 8272, i32 794874, i32 257, i32 0 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_bg_2523 = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 139280, i32 3230, i32 917777, i32 2587 }, %struct.rf_channel { i32 2, i32 139280, i32 3234, i32 917777, i32 2587 }, %struct.rf_channel { i32 3, i32 139280, i32 3238, i32 917777, i32 2587 }, %struct.rf_channel { i32 4, i32 139280, i32 3242, i32 917777, i32 2587 }, %struct.rf_channel { i32 5, i32 139280, i32 3246, i32 917777, i32 2587 }, %struct.rf_channel { i32 6, i32 139280, i32 3250, i32 917777, i32 2587 }, %struct.rf_channel { i32 7, i32 139280, i32 3254, i32 917777, i32 2587 }, %struct.rf_channel { i32 8, i32 139280, i32 3258, i32 917777, i32 2587 }, %struct.rf_channel { i32 9, i32 139280, i32 3262, i32 917777, i32 2587 }, %struct.rf_channel { i32 10, i32 139280, i32 3330, i32 917777, i32 2587 }, %struct.rf_channel { i32 11, i32 139280, i32 3334, i32 917777, i32 2587 }, %struct.rf_channel { i32 12, i32 139280, i32 3338, i32 917777, i32 2587 }, %struct.rf_channel { i32 13, i32 139280, i32 3342, i32 917777, i32 2587 }, %struct.rf_channel { i32 14, i32 139280, i32 3354, i32 917777, i32 2563 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_bg_2524 = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 204832, i32 3230, i32 257, i32 2587 }, %struct.rf_channel { i32 2, i32 204832, i32 3234, i32 257, i32 2587 }, %struct.rf_channel { i32 3, i32 204832, i32 3238, i32 257, i32 2587 }, %struct.rf_channel { i32 4, i32 204832, i32 3242, i32 257, i32 2587 }, %struct.rf_channel { i32 5, i32 204832, i32 3246, i32 257, i32 2587 }, %struct.rf_channel { i32 6, i32 204832, i32 3250, i32 257, i32 2587 }, %struct.rf_channel { i32 7, i32 204832, i32 3254, i32 257, i32 2587 }, %struct.rf_channel { i32 8, i32 204832, i32 3258, i32 257, i32 2587 }, %struct.rf_channel { i32 9, i32 204832, i32 3262, i32 257, i32 2587 }, %struct.rf_channel { i32 10, i32 204832, i32 3330, i32 257, i32 2587 }, %struct.rf_channel { i32 11, i32 204832, i32 3334, i32 257, i32 2587 }, %struct.rf_channel { i32 12, i32 204832, i32 3338, i32 257, i32 2587 }, %struct.rf_channel { i32 13, i32 204832, i32 3342, i32 257, i32 2587 }, %struct.rf_channel { i32 14, i32 204832, i32 3354, i32 257, i32 2563 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_bg_2525 = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 139296, i32 527518, i32 393489, i32 2587 }, %struct.rf_channel { i32 2, i32 139296, i32 527522, i32 393489, i32 2587 }, %struct.rf_channel { i32 3, i32 139296, i32 527526, i32 393489, i32 2587 }, %struct.rf_channel { i32 4, i32 139296, i32 527530, i32 393489, i32 2587 }, %struct.rf_channel { i32 5, i32 139296, i32 527534, i32 393489, i32 2587 }, %struct.rf_channel { i32 6, i32 139296, i32 527538, i32 393489, i32 2587 }, %struct.rf_channel { i32 7, i32 139296, i32 527542, i32 393489, i32 2587 }, %struct.rf_channel { i32 8, i32 139296, i32 527546, i32 393489, i32 2587 }, %struct.rf_channel { i32 9, i32 139296, i32 527550, i32 393489, i32 2587 }, %struct.rf_channel { i32 10, i32 139296, i32 527618, i32 393489, i32 2587 }, %struct.rf_channel { i32 11, i32 139296, i32 527622, i32 393489, i32 2587 }, %struct.rf_channel { i32 12, i32 139296, i32 527626, i32 393489, i32 2587 }, %struct.rf_channel { i32 13, i32 139296, i32 527630, i32 393489, i32 2587 }, %struct.rf_channel { i32 14, i32 139296, i32 527642, i32 393489, i32 2563 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_bg_2525e = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 139280, i32 2202, i32 393489, i32 3611 }, %struct.rf_channel { i32 2, i32 139280, i32 2206, i32 393489, i32 3591 }, %struct.rf_channel { i32 3, i32 139280, i32 2206, i32 393489, i32 3611 }, %struct.rf_channel { i32 4, i32 139280, i32 2210, i32 393489, i32 3591 }, %struct.rf_channel { i32 5, i32 139280, i32 2210, i32 393489, i32 3611 }, %struct.rf_channel { i32 6, i32 139280, i32 2214, i32 393489, i32 3591 }, %struct.rf_channel { i32 7, i32 139280, i32 2214, i32 393489, i32 3611 }, %struct.rf_channel { i32 8, i32 139280, i32 2218, i32 393489, i32 3591 }, %struct.rf_channel { i32 9, i32 139280, i32 2218, i32 393489, i32 3611 }, %struct.rf_channel { i32 10, i32 139280, i32 2222, i32 393489, i32 3591 }, %struct.rf_channel { i32 11, i32 139280, i32 2222, i32 393489, i32 3611 }, %struct.rf_channel { i32 12, i32 139280, i32 2226, i32 393489, i32 3591 }, %struct.rf_channel { i32 13, i32 139280, i32 2226, i32 393489, i32 3611 }, %struct.rf_channel { i32 14, i32 139280, i32 2230, i32 393489, i32 3619 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_5222 = internal constant { [37 x %struct.rf_channel], [188 x i8] } { [37 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 139296, i32 4406, i32 257, i32 2571 }, %struct.rf_channel { i32 2, i32 139296, i32 4410, i32 257, i32 2571 }, %struct.rf_channel { i32 3, i32 139296, i32 4414, i32 257, i32 2571 }, %struct.rf_channel { i32 4, i32 139296, i32 4482, i32 257, i32 2571 }, %struct.rf_channel { i32 5, i32 139296, i32 4486, i32 257, i32 2571 }, %struct.rf_channel { i32 6, i32 139296, i32 4490, i32 257, i32 2571 }, %struct.rf_channel { i32 7, i32 139296, i32 4494, i32 257, i32 2571 }, %struct.rf_channel { i32 8, i32 139296, i32 4498, i32 257, i32 2571 }, %struct.rf_channel { i32 9, i32 139296, i32 4502, i32 257, i32 2571 }, %struct.rf_channel { i32 10, i32 139296, i32 4506, i32 257, i32 2571 }, %struct.rf_channel { i32 11, i32 139296, i32 4510, i32 257, i32 2571 }, %struct.rf_channel { i32 12, i32 139296, i32 4514, i32 257, i32 2571 }, %struct.rf_channel { i32 13, i32 139296, i32 4518, i32 257, i32 2571 }, %struct.rf_channel { i32 14, i32 139296, i32 4526, i32 257, i32 2587 }, %struct.rf_channel { i32 36, i32 139280, i32 100502, i32 257, i32 2591 }, %struct.rf_channel { i32 40, i32 139280, i32 100506, i32 257, i32 2591 }, %struct.rf_channel { i32 44, i32 139280, i32 100510, i32 257, i32 2591 }, %struct.rf_channel { i32 48, i32 139280, i32 100514, i32 257, i32 2591 }, %struct.rf_channel { i32 52, i32 139280, i32 100518, i32 257, i32 2591 }, %struct.rf_channel { i32 66, i32 139280, i32 100522, i32 257, i32 2591 }, %struct.rf_channel { i32 60, i32 139280, i32 100526, i32 257, i32 2591 }, %struct.rf_channel { i32 64, i32 139280, i32 100530, i32 257, i32 2591 }, %struct.rf_channel { i32 100, i32 139280, i32 34818, i32 257, i32 2575 }, %struct.rf_channel { i32 104, i32 139280, i32 34822, i32 257, i32 2575 }, %struct.rf_channel { i32 108, i32 139280, i32 34826, i32 257, i32 2575 }, %struct.rf_channel { i32 112, i32 139280, i32 34830, i32 257, i32 2575 }, %struct.rf_channel { i32 116, i32 139280, i32 34834, i32 257, i32 2575 }, %struct.rf_channel { i32 120, i32 139280, i32 34838, i32 257, i32 2575 }, %struct.rf_channel { i32 124, i32 139280, i32 34842, i32 257, i32 2575 }, %struct.rf_channel { i32 128, i32 139280, i32 34846, i32 257, i32 2575 }, %struct.rf_channel { i32 132, i32 139280, i32 34850, i32 257, i32 2575 }, %struct.rf_channel { i32 136, i32 139280, i32 34854, i32 257, i32 2575 }, %struct.rf_channel { i32 140, i32 139280, i32 34858, i32 257, i32 2575 }, %struct.rf_channel { i32 149, i32 139296, i32 37030, i32 257, i32 2567 }, %struct.rf_channel { i32 153, i32 139296, i32 37038, i32 257, i32 2567 }, %struct.rf_channel { i32 157, i32 139296, i32 37046, i32 257, i32 2567 }, %struct.rf_channel { i32 161, i32 139296, i32 37054, i32 257, i32 2567 }], [188 x i8] zeroinitializer }, align 32
@rt2500usb_set_device_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2500usb_set_device_state = private unnamed_addr constant [27 x i8] c"rt2500usb_set_device_state\00", align 1
@rt2500usb_set_device_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.rt2500usb_set_device_state, ptr @.str.4, i32 1048, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - Device failed to enter state %d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@rt2500usb_set_device_state._entry_ptr = internal global ptr @rt2500usb_set_device_state._entry, section ".printk_index", align 4
@rt2500usb_wait_bbp_ready._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2500usb_wait_bbp_ready = private unnamed_addr constant [25 x i8] c"rt2500usb_wait_bbp_ready\00", align 1
@rt2500usb_wait_bbp_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.rt2500usb_wait_bbp_ready, ptr @.str.4, i32 894, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - BBP register access failed, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@rt2500usb_wait_bbp_ready._entry_ptr = internal global ptr @rt2500usb_wait_bbp_ready._entry, section ".printk_index", align 4
@rt2500usb_config_channel.vals = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2218, i32 2222, i32 2222, i32 2226, i32 2226, i32 2230, i32 2230, i32 2234, i32 2234, i32 2238, i32 2231, i32 2306, i32 2306, i32 2310], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 3, i64 5, i64 16]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 3, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 3, i64 5, i64 16]
@__sancov_gen_cov_switch_values.32 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 13, i64 0, i64 7680]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 16]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"modparam_nohwcrypt\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 28, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1957, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"rt2500usb_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1968, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"rt2500usb_device_table\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1903, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"rt2500usb_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1886, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"rt2500usb_rt2x00_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1819, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"rt2500usb_mac80211_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1796, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"rt2500usb_rt2x00debug\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 222, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1344, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1353, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1361, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1369, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1384, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1395, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1403, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1411, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1419, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 110, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1444, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1454, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [47 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1107, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"rf_vals_bg_2522\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1511, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"rf_vals_bg_2523\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1532, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"rf_vals_bg_2524\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1553, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"rf_vals_bg_2525\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1574, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"rf_vals_bg_2525e\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1595, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"rf_vals_5222\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1616, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1047, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 894, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [5 x i8] c"vals\00", align 1
@___asan_gen_.196 = private constant [50 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 594, i32 20 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author576, ptr @__UNIQUE_ID_description578, ptr @__UNIQUE_ID_file579, ptr @__UNIQUE_ID_license580, ptr @__UNIQUE_ID_nohwcrypt369, ptr @__UNIQUE_ID_nohwcrypttype368, ptr @__UNIQUE_ID_version577, ptr @__exitcall_rt2500usb_driver_exit, ptr @__initcall__kmod_rt2500usb__581_1979_rt2500usb_driver_init6, ptr @__modver_attr, ptr @__param_nohwcrypt, ptr @rt2500usb_driver_exit, ptr @rt2500usb_init_eeprom._entry, ptr @rt2500usb_init_eeprom._entry.20, ptr @rt2500usb_init_eeprom._entry_ptr, ptr @rt2500usb_init_eeprom._entry_ptr.22, ptr @rt2500usb_regbusy_read._entry, ptr @rt2500usb_regbusy_read._entry_ptr, ptr @rt2500usb_set_device_state._entry, ptr @rt2500usb_set_device_state._entry_ptr, ptr @rt2500usb_wait_bbp_ready._entry, ptr @rt2500usb_wait_bbp_ready._entry_ptr, ptr @rt2x00_set_chip._entry, ptr @rt2x00_set_chip._entry_ptr, ptr @modparam_nohwcrypt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rt2500usb_driver, ptr @rt2500usb_device_table, ptr @rt2500usb_ops, ptr @rt2500usb_rt2x00_ops, ptr @rt2500usb_mac80211_ops, ptr @rt2500usb_rt2x00debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @rt2500usb_regbusy_read._rs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @rt2500usb_init_eeprom._rs, ptr @.str.18, ptr @rt2500usb_init_eeprom._rs.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @rf_vals_bg_2522, ptr @rf_vals_bg_2523, ptr @rf_vals_bg_2524, ptr @rf_vals_bg_2525, ptr @rf_vals_bg_2525e, ptr @rf_vals_5222, ptr @rt2500usb_set_device_state._rs, ptr @.str.27, ptr @rt2500usb_wait_bbp_ready._rs, ptr @.str.28, ptr @rt2500usb_config_channel.vals], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_nohwcrypt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_device_table to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_rt2x00_ops to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_mac80211_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_rt2x00debug to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_regbusy_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_regbusy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_init_eeprom._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_init_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_init_eeprom._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_init_eeprom._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00_set_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2522 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2523 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2524 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2525 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2525e to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_5222 to i32), i32 740, i32 928, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_set_device_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_set_device_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_wait_bbp_ready._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_wait_bbp_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2500usb_config_channel.vals to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500usb_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rt2500usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @rt2500usb_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500usb_probe(ptr noundef %usb_intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rt2x00usb_probe(ptr noundef %usb_intf, ptr noundef nonnull @rt2500usb_ops) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_disconnect(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_suspend(ptr noundef, [1 x i32]) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_probe(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_queue_init(ptr nocapture noundef %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qid, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 14, label %entry.sw.epilog_crit_edge
    i32 0, label %entry.sw.bb1_crit_edge
    i32 1, label %entry.sw.bb1_crit_edge37
    i32 2, label %entry.sw.bb1_crit_edge38
    i32 3, label %entry.sw.bb1_crit_edge39
    i32 16, label %sw.bb6
    i32 17, label %sw.bb11
  ]

entry.sw.bb1_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge37, %entry.sw.bb1_crit_edge38, %entry.sw.bb1_crit_edge39
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2500usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1881, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb6, %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink36 = phi i16 [ 8, %sw.bb11 ], [ 1, %sw.bb6 ], [ 32, %sw.bb1 ], [ 32, %entry.sw.epilog_crit_edge ]
  %.sink35 = phi i16 [ 2432, %sw.bb11 ], [ 256, %sw.bb6 ], [ 2432, %sw.bb1 ], [ 2432, %entry.sw.epilog_crit_edge ]
  %.sink34 = phi i8 [ 20, %sw.bb11 ], [ 20, %sw.bb6 ], [ 20, %sw.bb1 ], [ 16, %entry.sw.epilog_crit_edge ]
  %.sink = phi i16 [ 4, %sw.bb11 ], [ 12, %sw.bb6 ], [ 4, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ]
  %limit12 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 8
  %3 = ptrtoint ptr %limit12 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %.sink36, ptr %limit12, align 4
  %data_size13 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 18
  %4 = ptrtoint ptr %data_size13 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink35, ptr %data_size13, align 4
  %desc_size14 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 19
  %5 = ptrtoint ptr %desc_size14 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink34, ptr %desc_size14, align 2
  %priv_size15 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 21
  %6 = ptrtoint ptr %priv_size15 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %.sink, ptr %priv_size15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500usb_probe_hw(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  %reg.i60 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  %reg.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rt2500usb_validate_eeprom(ptr noundef %rt2x00dev)
  %eeprom.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %0 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %1, i32 11
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #12
  %conv2.i = zext i16 %4 to i32
  %5 = lshr i16 %4, 11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #12
  %6 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %reg.i.i, align 2, !annotation !128
  %call.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1024, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 2) #12
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg.i.i, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #12
  %chip.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17
  %10 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 9584, ptr %chip.i.i, align 8
  %rf3.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %5, ptr %rf3.i.i, align 2
  %rev5.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %rev5.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %9, ptr %rev5.i.i, align 4
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
  %conv13.i.i = zext i16 %9 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 9584, i32 noundef %conv10.i.i, i32 noundef %conv13.i.i) #15
  %and12.i = and i32 %conv13.i.i, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.not.i = icmp ne i32 %and12.i, 0
  %and16.i = and i32 %conv13.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, 0
  %or.cond.i = or i1 %cmp13.not.i, %cmp17.i
  br i1 %or.cond.i, label %do.body19.i, label %if.end27.i

do.body19.i:                                      ; preds = %entry
  %call20.i = call i32 @___ratelimit(ptr noundef nonnull @rt2500usb_init_eeprom._rs, ptr noundef nonnull @__func__.rt2500usb_init_eeprom) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool.not.i, label %do.body19.i.cleanup_crit_edge, label %do.end24.i

do.body19.i.cleanup_crit_edge:                    ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end24.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rt2500usb_init_eeprom) #15
  br label %cleanup

if.end27.i:                                       ; preds = %entry
  %21 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rf3.i.i, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %22, label %do.body39.i [
    i16 0, label %if.end27.i.if.end52.i_crit_edge
    i16 1, label %if.end27.i.if.end52.i_crit_edge73
    i16 2, label %if.end27.i.if.end52.i_crit_edge74
    i16 3, label %if.end27.i.if.end52.i_crit_edge75
    i16 5, label %if.end27.i.if.end52.i_crit_edge76
    i16 16, label %if.end27.i.if.end52.i_crit_edge77
  ]

if.end27.i.if.end52.i_crit_edge77:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.end27.i.if.end52.i_crit_edge76:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.end27.i.if.end52.i_crit_edge75:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.end27.i.if.end52.i_crit_edge74:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.end27.i.if.end52.i_crit_edge73:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.end27.i.if.end52.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

do.body39.i:                                      ; preds = %if.end27.i
  %call40.i = call i32 @___ratelimit(ptr noundef nonnull @rt2500usb_init_eeprom._rs.19, ptr noundef nonnull @__func__.rt2500usb_init_eeprom) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %do.body39.i.cleanup_crit_edge, label %do.end45.i

do.body39.i.cleanup_crit_edge:                    ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end45.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i.i, align 4
  %wiphy47.i = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy47.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy47.i, align 8
  %dev48.i = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.rt2500usb_init_eeprom) #15
  br label %cleanup

if.end52.i:                                       ; preds = %if.end27.i.if.end52.i_crit_edge, %if.end27.i.if.end52.i_crit_edge73, %if.end27.i.if.end52.i_crit_edge74, %if.end27.i.if.end52.i_crit_edge75, %if.end27.i.if.end52.i_crit_edge76, %if.end27.i.if.end52.i_crit_edge77
  %and66.i = lshr i32 %conv2.i, 2
  %28 = and i32 %and66.i, 3
  %default_ant.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19
  %tx.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19, i32 1
  %29 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx.i, align 4
  %and87.i = lshr i32 %conv2.i, 4
  %30 = and i32 %and87.i, 3
  %31 = ptrtoint ptr %default_ant.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %default_ant.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp98.i = icmp eq i32 %28, 0
  br i1 %cmp98.i, label %if.then100.i, label %if.end52.i.if.end103.i_crit_edge

if.end52.i.if.end103.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103.i

if.then100.i:                                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %tx.i, align 4
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then100.i, %if.end52.i.if.end103.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp106.i = icmp eq i32 %30, 0
  br i1 %cmp106.i, label %if.then108.i, label %if.end103.i.if.end111.i_crit_edge

if.end103.i.if.end111.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111.i

if.then108.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %default_ant.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %default_ant.i, align 8
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then108.i, %if.end103.i.if.end111.i_crit_edge
  %and125.i = lshr i16 %4, 6
  %led_radio.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9
  %34 = ptrtoint ptr %led_radio.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rt2x00dev, ptr %led_radio.i, align 4
  %type2.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %type2.i.i, align 4
  %brightness_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 5
  %36 = ptrtoint ptr %brightness_set.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @rt2500usb_brightness_set, ptr %brightness_set.i.i, align 4
  %blink_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 8
  %37 = ptrtoint ptr %blink_set.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @rt2500usb_blink_set, ptr %blink_set.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %flags.i.i, align 4
  %trunc.i = trunc i16 %and125.i to i3
  %39 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.30)
  switch i3 %trunc.i, label %if.end111.i.if.end146.i_crit_edge [
    i3 1, label %if.end111.i.if.then145.i_crit_edge
    i3 0, label %if.end111.i.if.then145.i_crit_edge78
    i3 3, label %if.end111.i.if.then145.i_crit_edge79
  ]

if.end111.i.if.then145.i_crit_edge79:             ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145.i

if.end111.i.if.then145.i_crit_edge78:             ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145.i

if.end111.i.if.then145.i_crit_edge:               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145.i

if.end111.i.if.end146.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i

if.then145.i:                                     ; preds = %if.end111.i.if.then145.i_crit_edge, %if.end111.i.if.then145.i_crit_edge78, %if.end111.i.if.then145.i_crit_edge79
  %led_qual.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11
  %40 = ptrtoint ptr %led_qual.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rt2x00dev, ptr %led_qual.i, align 4
  %type2.i239.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 2
  %41 = ptrtoint ptr %type2.i239.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %type2.i239.i, align 4
  %brightness_set.i240.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %42 = ptrtoint ptr %brightness_set.i240.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @rt2500usb_brightness_set, ptr %brightness_set.i240.i, align 4
  %blink_set.i241.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 8
  %43 = ptrtoint ptr %blink_set.i241.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @rt2500usb_blink_set, ptr %blink_set.i241.i, align 4
  %flags.i242.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %44 = ptrtoint ptr %flags.i242.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %flags.i242.i, align 4
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then145.i, %if.end111.i.if.end146.i_crit_edge
  %45 = and i32 %conv2.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool168.not.i = icmp eq i32 %45, 0
  br i1 %tobool168.not.i, label %if.end146.i.if.end5_crit_edge, label %if.then169.i

if.end146.i.if.end5_crit_edge:                    ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then169.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #14
  %cap_flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %46 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cap_flags.i, align 4
  %or.i.i = or i32 %47, 4096
  store i32 %or.i.i, ptr %cap_flags.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then169.i, %if.end146.i.if.end5_crit_edge
  %48 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i244.i = getelementptr i16, ptr %49, i32 54
  %50 = ptrtoint ptr %arrayidx.i244.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i244.i, align 2
  %52 = lshr i16 %51, 8
  %conv193.i = trunc i16 %52 to i8
  %rssi_offset.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 37
  %53 = ptrtoint ptr %rssi_offset.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv193.i, ptr %rssi_offset.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %54 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1062, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %55 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %reg.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %57 = and i16 %56, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i60) #12
  %58 = ptrtoint ptr %reg.i60 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %reg.i60, align 2
  %call.i61 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1062, ptr noundef nonnull %reg.i60, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i60) #12
  %spec1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18
  %59 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw.i.i, align 4
  %flags.i.i62 = getelementptr inbounds %struct.ieee80211_hw, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %flags.i.i62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i.i62, align 4
  %or.i.i.i = or i32 %62, 512
  store i32 %or.i.i.i, ptr %flags.i.i62, align 4
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
  %or.i.i123.i = or i32 %68, 2
  store i32 %or.i.i123.i, ptr %flags.i122.i, align 4
  %69 = load ptr, ptr %hw.i.i, align 4
  %flags.i124.i = getelementptr inbounds %struct.ieee80211_hw, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %flags.i124.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i124.i, align 4
  %or.i.i125.i = or i32 %71, 16
  store i32 %or.i.i125.i, ptr %flags.i124.i, align 4
  %72 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i63 = getelementptr inbounds %struct.ieee80211_hw, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %wiphy.i63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wiphy.i63, align 8
  %flags.i = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %76, -17
  store i32 %and.i, ptr %flags.i, align 32
  %77 = load ptr, ptr %hw.i.i, align 4
  %78 = ptrtoint ptr %rt2x00dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rt2x00dev, align 8
  %wiphy.i.i64 = getelementptr inbounds %struct.ieee80211_hw, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %wiphy.i.i64 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wiphy.i.i64, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %81, i32 0, i32 56, i32 1
  %82 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %parent.i.i.i, align 8
  %83 = load ptr, ptr %hw.i.i, align 4
  %84 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i.i66 = getelementptr i16, ptr %85, i32 2
  %wiphy.i126.i = getelementptr inbounds %struct.ieee80211_hw, ptr %83, i32 0, i32 1
  %86 = ptrtoint ptr %wiphy.i126.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wiphy.i126.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %87, i32 0, i32 1
  %88 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %arrayidx.i.i66, i32 6)
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
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %92, label %if.end5.if.end38.i_crit_edge [
    i16 0, label %if.end5.if.end38.sink.split.i_crit_edge
    i16 1, label %if.then10.i
    i16 2, label %if.then15.i
    i16 3, label %if.then20.i
    i16 5, label %if.then25.i
    i16 16, label %if.then30.i
  ]

if.end5.if.end38.sink.split.i_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.sink.split.i

if.end5.if.end38.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.then10.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.sink.split.i

if.then15.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.sink.split.i

if.then20.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.sink.split.i

if.then25.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.sink.split.i

if.then30.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
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
  %99 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 12) #12
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %if.end38.i.cleanup_crit_edge, label %if.end7.i.i.i, !prof !129

if.end38.i.cleanup_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end38.i
  %101 = extractvalue { i32, i1 } %99, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %101, i32 noundef 3520) #16
  %tobool.not.i67 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i67, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end42.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42.i:                                       ; preds = %if.end7.i.i.i
  %channels_info.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 4
  %102 = ptrtoint ptr %channels_info.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call8.i.i.i, ptr %channels_info.i, align 4
  %103 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i138.i = getelementptr i16, ptr %104, i32 30
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
  %arrayidx44.2.i = getelementptr i16, ptr %104, i32 31
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
  %arrayidx44.4.i = getelementptr i16, ptr %104, i32 32
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
  %arrayidx44.6.i = getelementptr i16, ptr %104, i32 33
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
  %arrayidx44.8.i = getelementptr i16, ptr %104, i32 34
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
  %arrayidx44.10.i = getelementptr i16, ptr %104, i32 35
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
  %arrayidx44.12.i = getelementptr i16, ptr %104, i32 36
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
  br i1 %cmp52.i, label %for.body59.i.preheader, label %if.end42.i.if.end27_crit_edge

if.end42.i.if.end27_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

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
  br i1 %cmp57.i, label %for.body59.i.for.body59.i_crit_edge, label %for.body59.i.if.end27_crit_edge

for.body59.i.if.end27_crit_edge:                  ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

for.body59.i.for.body59.i_crit_edge:              ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body59.i

if.end27:                                         ; preds = %for.body59.i.if.end27_crit_edge, %if.end42.i.if.end27_crit_edge
  %cap_flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %167 = ptrtoint ptr %cap_flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cap_flags, align 4
  %or.i55 = or i32 %168, 6
  store i32 %or.i55, ptr %cap_flags, align 4
  %169 = load i8, ptr @modparam_nohwcrypt, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool29.not = icmp eq i8 %169, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %or.i57 = or i32 %168, 8214
  %170 = ptrtoint ptr %cap_flags to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or.i57, ptr %cap_flags, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27.if.end33_crit_edge
  %171 = ptrtoint ptr %cap_flags to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cap_flags, align 4
  %or.i59 = or i32 %172, 1280
  store i32 %or.i59, ptr %cap_flags, align 4
  %173 = ptrtoint ptr %rssi_offset.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 120, ptr %rssi_offset.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end7.i.i.i.cleanup_crit_edge, %if.end38.i.cleanup_crit_edge, %do.end45.i, %do.body39.i.cleanup_crit_edge, %do.end24.i, %do.body19.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %if.end38.i.cleanup_crit_edge ], [ -19, %do.end24.i ], [ -19, %do.body19.i.cleanup_crit_edge ], [ -19, %do.end45.i ], [ -19, %do.body39.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_initialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_uninitialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_clear_entry(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500usb_set_device_state(ptr noundef %rt2x00dev, i32 noundef %state) #2 align 64 {
entry:
  %reg.i196.i = alloca i16, align 2
  %reg.i194.i = alloca i16, align 2
  %reg.i192.i = alloca i16, align 2
  %reg.i.i22 = alloca i16, align 2
  %reg.i6.i = alloca i16, align 2
  %reg.i4.i = alloca i16, align 2
  %reg.i.i = alloca i16, align 2
  %reg.i1425.i.i = alloca i16, align 2
  %reg.i1423.i.i = alloca i16, align 2
  %reg.i1421.i.i = alloca i16, align 2
  %reg.i1419.i.i = alloca i16, align 2
  %reg.i1417.i.i = alloca i16, align 2
  %reg.i1415.i.i = alloca i16, align 2
  %reg.i1413.i.i = alloca i16, align 2
  %reg.i1411.i.i = alloca i16, align 2
  %reg.i1409.i.i = alloca i16, align 2
  %reg.i1407.i.i = alloca i16, align 2
  %reg.i1405.i.i = alloca i16, align 2
  %reg.i1403.i.i = alloca i16, align 2
  %reg.i1401.i.i = alloca i16, align 2
  %reg.i1399.i.i = alloca i16, align 2
  %reg.i1397.i.i = alloca i16, align 2
  %reg.i1395.i.i = alloca i16, align 2
  %reg.i1393.i.i = alloca i16, align 2
  %reg.i1391.i.i = alloca i16, align 2
  %reg.i1389.i.i = alloca i16, align 2
  %reg.i1387.i.i = alloca i16, align 2
  %reg.i1385.i.i = alloca i16, align 2
  %reg.i1383.i.i = alloca i16, align 2
  %reg.i1381.i.i = alloca i16, align 2
  %reg.i1379.i.i = alloca i16, align 2
  %reg.i1377.i.i = alloca i16, align 2
  %reg.i1375.i.i = alloca i16, align 2
  %reg.i1373.i.i = alloca i16, align 2
  %reg.i1371.i.i = alloca i16, align 2
  %reg.i1369.i.i = alloca i16, align 2
  %reg.i1367.i.i = alloca i16, align 2
  %reg.i1365.i.i = alloca i16, align 2
  %reg.i1363.i.i = alloca i16, align 2
  %reg.i1361.i.i = alloca i16, align 2
  %reg.i1359.i.i = alloca i16, align 2
  %reg.i1357.i.i = alloca i16, align 2
  %reg.i1355.i.i = alloca i16, align 2
  %reg.i1353.i.i = alloca i16, align 2
  %reg.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %state, label %entry.do.body_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb2
    i32 6, label %entry.if.end14_crit_edge
    i32 7, label %entry.if.end14_crit_edge33
    i32 0, label %entry.sw.bb4_crit_edge
    i32 1, label %entry.sw.bb4_crit_edge34
    i32 2, label %entry.sw.bb4_crit_edge35
    i32 3, label %entry.sw.bb4_crit_edge36
  ]

entry.sw.bb4_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.if.end14_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

sw.bb:                                            ; preds = %entry
  %call.i.i.i = tail call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #12
  %call.i1351.i.i = tail call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 776, i16 noundef zeroext 240, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i.i) #12
  %1 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %reg.i.i.i, align 2, !annotation !128
  %call.i1352.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1092, ptr noundef nonnull %reg.i.i.i, i16 noundef zeroext 2) #12
  %2 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i.i) #12
  %4 = or i16 %3, 256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1353.i.i) #12
  %5 = ptrtoint ptr %reg.i1353.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %reg.i1353.i.i, align 2
  %call.i1354.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1092, ptr noundef nonnull %reg.i1353.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1353.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1355.i.i) #12
  %6 = ptrtoint ptr %reg.i1355.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4369, ptr %reg.i1355.i.i, align 2
  %call.i1356.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1050, ptr noundef nonnull %reg.i1355.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1355.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1357.i.i) #12
  %7 = ptrtoint ptr %reg.i1357.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4382, ptr %reg.i1357.i.i, align 2
  %call.i1358.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1052, ptr noundef nonnull %reg.i1357.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1357.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1359.i.i) #12
  %8 = ptrtoint ptr %reg.i1359.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %reg.i1359.i.i, align 2, !annotation !128
  %call.i1360.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1026, ptr noundef nonnull %reg.i1359.i.i, i16 noundef zeroext 2) #12
  %9 = ptrtoint ptr %reg.i1359.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg.i1359.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1359.i.i) #12
  %11 = and i16 %10, -1793
  %12 = or i16 %11, 768
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1361.i.i) #12
  %13 = ptrtoint ptr %reg.i1361.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %reg.i1361.i.i, align 2
  %call.i1362.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1026, ptr noundef nonnull %reg.i1361.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1361.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1363.i.i) #12
  %14 = ptrtoint ptr %reg.i1363.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %reg.i1363.i.i, align 2, !annotation !128
  %call.i1364.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1026, ptr noundef nonnull %reg.i1363.i.i, i16 noundef zeroext 2) #12
  %15 = ptrtoint ptr %reg.i1363.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg.i1363.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1363.i.i) #12
  %17 = and i16 %16, -1793
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1365.i.i) #12
  %18 = ptrtoint ptr %reg.i1365.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %reg.i1365.i.i, align 2
  %call.i1366.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1026, ptr noundef nonnull %reg.i1365.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1365.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1367.i.i) #12
  %19 = ptrtoint ptr %reg.i1367.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %reg.i1367.i.i, align 2, !annotation !128
  %call.i1368.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1098, ptr noundef nonnull %reg.i1367.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1367.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1369.i.i) #12
  %20 = ptrtoint ptr %reg.i1369.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -29300, ptr %reg.i1369.i.i, align 2
  %call.i1370.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1098, ptr noundef nonnull %reg.i1369.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1369.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1371.i.i) #12
  %21 = ptrtoint ptr %reg.i1371.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %reg.i1371.i.i, align 2, !annotation !128
  %call.i1372.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1100, ptr noundef nonnull %reg.i1371.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1371.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1373.i.i) #12
  %22 = ptrtoint ptr %reg.i1373.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -30069, ptr %reg.i1373.i.i, align 2
  %call.i1374.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1100, ptr noundef nonnull %reg.i1373.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1373.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1375.i.i) #12
  %23 = ptrtoint ptr %reg.i1375.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %reg.i1375.i.i, align 2, !annotation !128
  %call.i1376.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1102, ptr noundef nonnull %reg.i1375.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1375.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1377.i.i) #12
  %24 = ptrtoint ptr %reg.i1377.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -30842, ptr %reg.i1377.i.i, align 2
  %call.i1378.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1102, ptr noundef nonnull %reg.i1377.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1377.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1379.i.i) #12
  %25 = ptrtoint ptr %reg.i1379.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %reg.i1379.i.i, align 2, !annotation !128
  %call.i1380.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1104, ptr noundef nonnull %reg.i1379.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1379.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1381.i.i) #12
  %26 = ptrtoint ptr %reg.i1381.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -31488, ptr %reg.i1381.i.i, align 2
  %call.i1382.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1104, ptr noundef nonnull %reg.i1381.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1381.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1383.i.i) #12
  %27 = ptrtoint ptr %reg.i1383.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %reg.i1383.i.i, align 2, !annotation !128
  %call.i1384.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i1383.i.i, i16 noundef zeroext 2) #12
  %28 = ptrtoint ptr %reg.i1383.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reg.i1383.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1383.i.i) #12
  %30 = and i16 %29, -7937
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1385.i.i) #12
  %31 = ptrtoint ptr %reg.i1385.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %reg.i1385.i.i, align 2
  %call.i1386.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i1385.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1385.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1387.i.i) #12
  %32 = ptrtoint ptr %reg.i1387.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -28697, ptr %reg.i1387.i.i, align 2
  %call.i1388.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1130, ptr noundef nonnull %reg.i1387.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1387.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1389.i.i) #12
  %33 = ptrtoint ptr %reg.i1389.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 7679, ptr %reg.i1389.i.i, align 2
  %call.i1390.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1042, ptr noundef nonnull %reg.i1389.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1389.i.i) #12
  %ops.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  %lib.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %lib.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lib.i.i, align 4
  %set_device_state.i.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %set_device_state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_device_state.i.i, align 4
  %call807.i.i = call i32 %39(ptr noundef %rt2x00dev, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call807.i.i)
  %tobool.not.i.i = icmp eq i32 %call807.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.i.i:                                       ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1391.i.i) #12
  %40 = ptrtoint ptr %reg.i1391.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %reg.i1391.i.i, align 2, !annotation !128
  %call.i1392.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1026, ptr noundef nonnull %reg.i1391.i.i, i16 noundef zeroext 2) #12
  %41 = ptrtoint ptr %reg.i1391.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %reg.i1391.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1391.i.i) #12
  %43 = and i16 %42, -1793
  %44 = or i16 %43, 1024
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1393.i.i) #12
  %45 = ptrtoint ptr %reg.i1393.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %reg.i1393.i.i, align 2
  %call.i1394.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1026, ptr noundef nonnull %reg.i1393.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1393.i.i) #12
  %rev.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 2
  %46 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %47)
  %cmp901.i.i = icmp ugt i16 %47, 2
  br i1 %cmp901.i.i, label %if.then903.i.i, label %if.end.i.i.lor.rhs.i_crit_edge

if.end.i.i.lor.rhs.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

if.then903.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1395.i.i) #12
  %48 = ptrtoint ptr %reg.i1395.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %reg.i1395.i.i, align 2, !annotation !128
  %call.i1396.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1220, ptr noundef nonnull %reg.i1395.i.i, i16 noundef zeroext 2) #12
  %49 = ptrtoint ptr %reg.i1395.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %reg.i1395.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1395.i.i) #12
  %51 = and i16 %50, -513
  %52 = call i16 @llvm.bswap.i16(i16 %51) #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.then903.i.i, %if.end.i.i.lor.rhs.i_crit_edge
  %reg.0.i.i = phi i16 [ %52, %if.then903.i.i ], [ 12290, %if.end.i.i.lor.rhs.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1397.i.i) #12
  %53 = call i16 @llvm.bswap.i16(i16 %reg.0.i.i) #12
  %54 = ptrtoint ptr %reg.i1397.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %reg.i1397.i.i, align 2
  %call.i1398.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1220, ptr noundef nonnull %reg.i1397.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1397.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1399.i.i) #12
  %55 = ptrtoint ptr %reg.i1399.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 512, ptr %reg.i1399.i.i, align 2
  %call.i1400.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1046, ptr noundef nonnull %reg.i1399.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1399.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1401.i.i) #12
  %56 = ptrtoint ptr %reg.i1401.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 21248, ptr %reg.i1401.i.i, align 2
  %call.i1402.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1068, ptr noundef nonnull %reg.i1401.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1401.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1403.i.i) #12
  %57 = ptrtoint ptr %reg.i1403.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -4607, ptr %reg.i1403.i.i, align 2
  %call.i1404.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1054, ptr noundef nonnull %reg.i1403.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1403.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1405.i.i) #12
  %58 = ptrtoint ptr %reg.i1405.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %reg.i1405.i.i, align 2
  %call.i1406.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1056, ptr noundef nonnull %reg.i1405.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1405.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1407.i.i) #12
  %59 = ptrtoint ptr %reg.i1407.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %reg.i1407.i.i, align 2, !annotation !128
  %call.i1408.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1040, ptr noundef nonnull %reg.i1407.i.i, i16 noundef zeroext 2) #12
  %60 = ptrtoint ptr %reg.i1407.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %reg.i1407.i.i, align 2
  %62 = shl i16 %61, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1407.i.i) #12
  %63 = and i16 %62, -4096
  %rx.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 50
  %64 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx.i.i, align 4
  %data_size.i.i = getelementptr inbounds %struct.data_queue, ptr %65, i32 0, i32 18
  %66 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %data_size.i.i, align 4
  %68 = and i16 %67, 4095
  %or10271350.i.i = or i16 %68, %63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1409.i.i) #12
  %69 = call i16 @llvm.bswap.i16(i16 %or10271350.i.i) #12
  %70 = ptrtoint ptr %reg.i1409.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %reg.i1409.i.i, align 2
  %call.i1410.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1040, ptr noundef nonnull %reg.i1409.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1409.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1411.i.i) #12
  %71 = ptrtoint ptr %reg.i1411.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %reg.i1411.i.i, align 2, !annotation !128
  %call.i1412.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1088, ptr noundef nonnull %reg.i1411.i.i, i16 noundef zeroext 2) #12
  %72 = ptrtoint ptr %reg.i1411.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %reg.i1411.i.i, align 2
  %74 = shl i16 %73, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1411.i.i) #12
  %75 = and i16 %74, -8192
  %76 = or i16 %75, 192
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1413.i.i) #12
  %77 = call i16 @llvm.bswap.i16(i16 %76) #12
  %78 = ptrtoint ptr %reg.i1413.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %reg.i1413.i.i, align 2
  %call.i1414.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1088, ptr noundef nonnull %reg.i1413.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1413.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1415.i.i) #12
  %79 = ptrtoint ptr %reg.i1415.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -1, ptr %reg.i1415.i.i, align 2, !annotation !128
  %call.i1416.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1060, ptr noundef nonnull %reg.i1415.i.i, i16 noundef zeroext 2) #12
  %80 = ptrtoint ptr %reg.i1415.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %reg.i1415.i.i, align 2
  %82 = shl i16 %81, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1415.i.i) #12
  %83 = or i16 %82, 90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1417.i.i) #12
  %84 = call i16 @llvm.bswap.i16(i16 %83) #12
  %85 = ptrtoint ptr %reg.i1417.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %reg.i1417.i.i, align 2
  %call.i1418.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1060, ptr noundef nonnull %reg.i1417.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1417.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1419.i.i) #12
  %86 = ptrtoint ptr %reg.i1419.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %reg.i1419.i.i, align 2, !annotation !128
  %call.i1420.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1224, ptr noundef nonnull %reg.i1419.i.i, i16 noundef zeroext 2) #12
  %87 = ptrtoint ptr %reg.i1419.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %reg.i1419.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1419.i.i) #12
  %89 = or i16 %88, 256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1421.i.i) #12
  %90 = ptrtoint ptr %reg.i1421.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %reg.i1421.i.i, align 2
  %call.i1422.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1224, ptr noundef nonnull %reg.i1421.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1421.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1423.i.i) #12
  %91 = ptrtoint ptr %reg.i1423.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -1, ptr %reg.i1423.i.i, align 2, !annotation !128
  %call.i1424.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1090, ptr noundef nonnull %reg.i1423.i.i, i16 noundef zeroext 2) #12
  %92 = ptrtoint ptr %reg.i1423.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %reg.i1423.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1423.i.i) #12
  %94 = or i16 %93, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1425.i.i) #12
  %95 = ptrtoint ptr %reg.i1425.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %reg.i1425.i.i, align 2
  %call.i1426.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1090, ptr noundef nonnull %reg.i1425.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1425.i.i) #12
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %lor.rhs.i
  %i.016.i.i.i = phi i32 [ 0, %lor.rhs.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i6.i = call zeroext i8 @rt2500usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 0) #12
  %96 = zext i8 %call.i.i6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %call.i.i6.i, label %if.end.i7.i [
    i8 -1, label %for.body.i.i.i.if.end.i.i.i_crit_edge
    i8 0, label %for.body.i.i.i.if.end.i.i.i_crit_edge37
  ]

for.body.i.i.i.if.end.i.i.i_crit_edge37:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i.if.end.i.i.i_crit_edge, %for.body.i.i.i.if.end.i.i.i_crit_edge37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %97(i32 noundef 21474800) #12
  %inc.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 20
  br i1 %exitcond.not.i.i.i, label %do.body.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  %call6.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @rt2500usb_wait_bbp_ready._rs, ptr noundef nonnull @__func__.rt2500usb_wait_bbp_ready) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.do.body_crit_edge, label %do.end.i.i.i

do.body.i.i.i.do.body_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %hw.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %98 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw.i.i.i, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wiphy.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.wiphy, ptr %101, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rt2500usb_wait_bbp_ready) #15
  br label %do.body

if.end.i7.i:                                      ; preds = %for.body.i.i.i
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 3, i8 noundef zeroext 2) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 4, i8 noundef zeroext 25) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 14, i8 noundef zeroext 28) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 15, i8 noundef zeroext 48) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 16, i8 noundef zeroext -84) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 18, i8 noundef zeroext 24) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 19, i8 noundef zeroext -1) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 20, i8 noundef zeroext 30) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 21, i8 noundef zeroext 8) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 22, i8 noundef zeroext 8) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 23, i8 noundef zeroext 8) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 24, i8 noundef zeroext -128) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 25, i8 noundef zeroext 80) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 26, i8 noundef zeroext 8) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 27, i8 noundef zeroext 35) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 30, i8 noundef zeroext 16) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 31, i8 noundef zeroext 43) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 32, i8 noundef zeroext -71) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 34, i8 noundef zeroext 18) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 35, i8 noundef zeroext 80) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 39, i8 noundef zeroext -60) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 40, i8 noundef zeroext 2) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 41, i8 noundef zeroext 96) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 53, i8 noundef zeroext 16) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 54, i8 noundef zeroext 24) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 56, i8 noundef zeroext 8) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 57, i8 noundef zeroext 16) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 58, i8 noundef zeroext 8) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 61, i8 noundef zeroext 96) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 62, i8 noundef zeroext 16) #12
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 75, i8 noundef zeroext -1) #12
  %eeprom.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i7.i
  %i.088.i.i = phi i32 [ 0, %if.end.i7.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.088.i.i, 14
  %102 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %eeprom.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i16, ptr %103, i32 %add.i.i
  %104 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.i.i.i, align 2
  %106 = call i16 @llvm.bswap.i16(i16 %105) #12
  %107 = zext i16 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %106, label %if.then9.i.i [
    i16 -1, label %for.body.i.i.for.inc.i.i_crit_edge
    i16 0, label %for.body.i.i.for.inc.i.i_crit_edge38
  ]

for.body.i.i.for.inc.i.i_crit_edge38:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = lshr i16 %106, 8
  %conv20.i.i = zext i16 %108 to i32
  %conv42.i.i = trunc i16 %106 to i8
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef %conv20.i.i, i8 noundef zeroext %conv42.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i, %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge38
  %inc.i.i = add nuw nsw i32 %i.088.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end14_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.end14_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #12
  %109 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 8481, ptr %reg.i.i, align 2
  %call.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1050, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i4.i) #12
  %110 = ptrtoint ptr %reg.i4.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 8481, ptr %reg.i4.i, align 2
  %call.i5.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1052, ptr noundef nonnull %reg.i4.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i4.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i6.i) #12
  %111 = ptrtoint ptr %reg.i6.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %reg.i6.i, align 2
  %call.i7.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i6.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i6.i) #12
  call void @rt2x00usb_disable_radio(ptr noundef %rt2x00dev) #12
  br label %if.end14

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge34, %entry.sw.bb4_crit_edge35, %entry.sw.bb4_crit_edge36
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp.not.i = icmp eq i32 %state, 3
  %112 = shl nuw nsw i32 %state, 1
  %conv35.i = and i32 %112, 6
  %shl43.i = shl nuw nsw i32 %state, 3
  %and50.i = and i32 %shl43.i, 24
  %or52.i = or i32 %conv35.i, %and50.i
  %shl76.i = select i1 %cmp.not.i, i32 0, i32 512
  %or85.i = or i32 %or52.i, %shl76.i
  %conv86.i = trunc i32 %or85.i to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i22) #12
  %113 = tail call i16 @llvm.bswap.i16(i16 %conv86.i) #12
  %114 = ptrtoint ptr %reg.i.i22 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %reg.i.i22, align 2
  %call.i.i23 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1058, ptr noundef nonnull %reg.i.i22, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i22) #12
  %conv116.i = or i16 %conv86.i, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i192.i) #12
  %115 = call i16 @llvm.bswap.i16(i16 %conv116.i) #12
  %116 = ptrtoint ptr %reg.i192.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %reg.i192.i, align 2
  %call.i193.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1058, ptr noundef nonnull %reg.i192.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i192.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.bb4
  %i.0198.i = phi i32 [ 0, %sw.bb4 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i194.i) #12
  %117 = ptrtoint ptr %reg.i194.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %reg.i194.i, align 2, !annotation !128
  %call.i195.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1058, ptr noundef nonnull %reg.i194.i, i16 noundef zeroext 2) #12
  %118 = ptrtoint ptr %reg.i194.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %reg.i194.i, align 2
  %120 = call i16 @llvm.bswap.i16(i16 %119) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i194.i) #12
  %121 = lshr i16 %120, 5
  %122 = and i16 %121, 3
  %conv139.i = zext i16 %122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv139.i, i32 %state)
  %cmp163.i = icmp eq i32 %conv139.i, %state
  br i1 %cmp163.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %123 = lshr i16 %120, 7
  %124 = and i16 %123, 3
  %conv161.i = zext i16 %124 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv161.i, i32 %state)
  %cmp166.i = icmp eq i32 %conv161.i, %state
  br i1 %cmp166.i, label %land.lhs.true.i.if.end14_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i196.i) #12
  %125 = ptrtoint ptr %reg.i196.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %115, ptr %reg.i196.i, align 2
  %call.i197.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1058, ptr noundef nonnull %reg.i196.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i196.i) #12
  call void @msleep(i32 noundef 30) #12
  %inc.i = add nuw nsw i32 %i.0198.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %if.end.i.do.body_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %do.end.i.i.i, %do.body.i.i.i.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  %retval1.0.ph = phi i32 [ -5, %do.body.i.i.i.do.body_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %sw.bb.do.body_crit_edge ], [ -524, %entry.do.body_crit_edge ], [ -16, %if.end.i.do.body_crit_edge ]
  %call8 = call i32 @___ratelimit(ptr noundef nonnull @rt2500usb_set_device_state._rs, ptr noundef nonnull @__func__.rt2500usb_set_device_state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.if.end14_crit_edge, label %do.end

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %126 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %129, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.rt2500usb_set_device_state, i32 noundef %state, i32 noundef %retval1.0.ph) #15
  br label %if.end14

if.end14:                                         ; preds = %do.end, %do.body.if.end14_crit_edge, %land.lhs.true.i.if.end14_crit_edge, %sw.bb2, %for.inc.i.i.if.end14_crit_edge, %entry.if.end14_crit_edge, %entry.if.end14_crit_edge33
  %retval1.027 = phi i32 [ %retval1.0.ph, %do.body.if.end14_crit_edge ], [ %retval1.0.ph, %do.end ], [ 0, %entry.if.end14_crit_edge ], [ 0, %entry.if.end14_crit_edge33 ], [ 0, %sw.bb2 ], [ 0, %for.inc.i.i.if.end14_crit_edge ], [ 0, %land.lhs.true.i.if.end14_crit_edge ]
  ret i32 %retval1.027
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500usb_rfkill_poll(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1062, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg.i, align 2
  %3 = lshr i16 %2, 15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_link_stats(ptr noundef %rt2x00dev, ptr nocapture noundef writeonly %qual) #2 align 64 {
entry:
  %reg.i34 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1248, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg.i, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %conv2 = zext i16 %3 to i32
  %rx_failed = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 5
  %4 = ptrtoint ptr %rx_failed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %rx_failed, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i34) #12
  %5 = ptrtoint ptr %reg.i34 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %reg.i34, align 2, !annotation !128
  %call.i35 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1254, ptr noundef nonnull %reg.i34, i16 noundef zeroext 2) #12
  %6 = ptrtoint ptr %reg.i34 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg.i34, align 2
  %8 = call i16 @llvm.bswap.i16(i16 %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i34) #12
  %conv16 = zext i16 %8 to i32
  %false_cca = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 1
  %9 = ptrtoint ptr %false_cca to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv16, ptr %false_cca, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_reset_tuner(ptr noundef %rt2x00dev, ptr nocapture noundef writeonly %qual) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %0 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom.i, align 8
  %arrayidx.i = getelementptr i16, ptr %1, i32 49
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %4 = lshr i16 %3, 8
  %conv10 = trunc i16 %4 to i8
  tail call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 24, i8 noundef zeroext %conv10)
  %5 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eeprom.i, align 8
  %arrayidx.i99 = getelementptr i16, ptr %6, i32 50
  %7 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i99, align 2
  %9 = lshr i16 %8, 8
  %conv34 = trunc i16 %9 to i8
  tail call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 25, i8 noundef zeroext %conv34)
  %10 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eeprom.i, align 8
  %arrayidx.i101 = getelementptr i16, ptr %11, i32 51
  %12 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i101, align 2
  %14 = lshr i16 %13, 8
  %conv58 = trunc i16 %14 to i8
  tail call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 61, i8 noundef zeroext %conv58)
  %15 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eeprom.i, align 8
  %arrayidx.i103 = getelementptr i16, ptr %16, i32 52
  %17 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i103, align 2
  %19 = lshr i16 %18, 8
  %conv82 = trunc i16 %19 to i8
  tail call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 17, i8 noundef zeroext %conv82)
  %vgc_level = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %20 = ptrtoint ptr %vgc_level to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv82, ptr %vgc_level, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_watchdog(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_start_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  %reg.i128 = alloca i16, align 2
  %reg.i126 = alloca i16, align 2
  %reg.i124 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 14, label %sw.bb
    i32 16, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1092, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %8 = and i16 %7, -257
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i124) #12
  %9 = ptrtoint ptr %reg.i124 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %reg.i124, align 2
  %call.i125 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1092, ptr noundef nonnull %reg.i124, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i124) #12
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i126) #12
  %10 = ptrtoint ptr %reg.i126 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %reg.i126, align 2, !annotation !128
  %call.i127 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i126, i16 noundef zeroext 2) #12
  %11 = ptrtoint ptr %reg.i126 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg.i126, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i126) #12
  %13 = or i16 %12, 6400
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i128) #12
  %14 = ptrtoint ptr %reg.i128 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %reg.i128, align 2
  %call.i129 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i128, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i128) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_kick_queue(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_stop_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  %reg.i128 = alloca i16, align 2
  %reg.i126 = alloca i16, align 2
  %reg.i124 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 14, label %sw.bb
    i32 16, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1092, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %8 = or i16 %7, 256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i124) #12
  %9 = ptrtoint ptr %reg.i124 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %reg.i124, align 2
  %call.i125 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1092, ptr noundef nonnull %reg.i124, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i124) #12
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i126) #12
  %10 = ptrtoint ptr %reg.i126 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %reg.i126, align 2, !annotation !128
  %call.i127 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i126, i16 noundef zeroext 2) #12
  %11 = ptrtoint ptr %reg.i126 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg.i126, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i126) #12
  %13 = and i16 %12, -6401
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i128) #12
  %14 = ptrtoint ptr %reg.i128 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %reg.i128, align 2
  %call.i129 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i128, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i128) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_flush_queue(ptr noundef, i1 noundef zeroext) #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt2500usb_write_tx_desc(ptr nocapture noundef readonly %entry1, ptr noundef %txdesc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 260046864
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %retry_limit = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 5
  %8 = ptrtoint ptr %retry_limit to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %retry_limit, align 4
  %conv5 = sext i16 %9 to i32
  %shl = shl nsw i32 %conv5, 4
  %and18 = and i32 %shl, 240
  %or = or i32 %and18, %7
  %10 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %txdesc, align 4
  %12 = shl i32 %11, 4
  %shl39 = and i32 %12, 256
  %or47 = or i32 %or, %shl39
  %13 = load volatile i32, ptr %txdesc, align 4
  %14 = shl i32 %13, 2
  %shl69 = and i32 %14, 512
  %or77 = or i32 %or47, %shl69
  %15 = load volatile i32, ptr %txdesc, align 4
  %16 = shl i32 %15, 5
  %shl99 = and i32 %16, 1024
  %or107 = or i32 %or77, %shl99
  %rate_mode = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 4
  %17 = ptrtoint ptr %rate_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rate_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp121 = icmp eq i32 %18, 1
  %shl129 = select i1 %cmp121, i32 2048, i32 0
  %19 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %txdesc, align 4
  %21 = shl i32 %20, 9
  %shl159 = and i32 %21, 4096
  %u = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3
  %ifs = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 4
  %22 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifs, align 4
  %shl187 = shl i32 %23, 13
  %and194 = and i32 %shl187, 24576
  %length = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %length, align 4
  %conv209 = zext i16 %25 to i32
  %shl216 = shl nuw i32 %conv209, 16
  %and223 = and i32 %shl216, 268369920
  %cipher = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 6
  %26 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  %shl245 = select i1 %tobool.not, i32 0, i32 536870912
  %and149.masked.masked.masked.masked = or i32 %or107, %shl129
  %and179.masked.masked.masked = or i32 %and149.masked.masked.masked.masked, %shl159
  %and207.masked.masked = or i32 %and179.masked.masked.masked, %and194
  %and236.masked = or i32 %and207.masked.masked, %and223
  %and265 = or i32 %and236.masked, %shl245
  %key_idx = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 7
  %28 = ptrtoint ptr %key_idx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %key_idx, align 4
  %conv267 = zext i16 %29 to i32
  %shl274 = shl i32 %conv267, 30
  %or282 = or i32 %and265, %shl274
  %30 = tail call i32 @llvm.bswap.i32(i32 %or282) #12
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %3, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %34 = and i32 %33, 65535
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %iv_offset = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 8
  %36 = ptrtoint ptr %iv_offset to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %iv_offset, align 2
  %38 = and i16 %37, 63
  %and311 = zext i16 %38 to i32
  %or312 = or i32 %35, %and311
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %queue, align 4
  %aifs = getelementptr inbounds %struct.data_queue, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %aifs to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %aifs, align 2
  %conv326 = zext i16 %42 to i32
  %shl333 = shl nuw nsw i32 %conv326, 6
  %and340 = and i32 %shl333, 192
  %or341 = or i32 %or312, %and340
  %cw_min = getelementptr inbounds %struct.data_queue, ptr %40, i32 0, i32 16
  %43 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %cw_min, align 4
  %conv356 = zext i16 %44 to i32
  %shl363 = shl nuw nsw i32 %conv356, 8
  %and370 = and i32 %shl363, 3840
  %or371 = or i32 %or341, %and370
  %cw_max = getelementptr inbounds %struct.data_queue, ptr %40, i32 0, i32 17
  %45 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cw_max, align 2
  %conv386 = zext i16 %46 to i32
  %shl393 = shl nuw nsw i32 %conv386, 12
  %and400 = and i32 %shl393, 61440
  %or401 = or i32 %or371, %and400
  %47 = tail call i32 @llvm.bswap.i32(i32 %or401) #12
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i610 = getelementptr i32, ptr %3, i32 2
  %signal = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 3
  %49 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %signal, align 4
  %51 = and i16 %50, 255
  %and431.masked = zext i16 %51 to i32
  %service = getelementptr inbounds %struct.anon.133, ptr %u, i32 0, i32 3
  %52 = ptrtoint ptr %service to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %service, align 2
  %conv447 = zext i16 %53 to i32
  %shl454 = shl nuw nsw i32 %conv447, 8
  %shl454.masked = and i32 %shl454, 65280
  %and474 = or i32 %shl454.masked, %and431.masked
  %length_low = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 1
  %54 = ptrtoint ptr %length_low to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %length_low, align 2
  %conv477 = zext i16 %55 to i32
  %shl484 = shl nuw i32 %conv477, 16
  %shl484.masked = and i32 %shl484, 16711680
  %and504 = or i32 %and474, %shl484.masked
  %56 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %u, align 4
  %conv507 = zext i16 %57 to i32
  %shl514 = shl i32 %conv507, 24
  %or522 = or i32 %and504, %shl514
  %58 = tail call i32 @llvm.bswap.i32(i32 %or522) #12
  %59 = ptrtoint ptr %arrayidx.i.i610 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx.i.i610, align 4
  %60 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %txdesc, align 4
  %62 = and i32 %61, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool525.not = icmp eq i32 %62, 0
  br i1 %tobool525.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %iv = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %63 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iv, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 3
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx.i, align 4
  %arrayidx527 = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %66 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx527, align 4
  %arrayidx.i612 = getelementptr i32, ptr %3, i32 4
  %68 = ptrtoint ptr %arrayidx.i612 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx.i612, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 4
  %72 = or i8 %71, 16
  store i8 %72, ptr %69, align 4
  %desc = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %73 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %3, ptr %desc, align 4
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %74 = ptrtoint ptr %desc_len to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 20, ptr %desc_len, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_write_beacon(ptr noundef %entry1, ptr noundef %txdesc) #2 align 64 {
entry:
  %reg.i180 = alloca i16, align 2
  %reg.i178 = alloca i16, align 2
  %reg.i176 = alloca i16, align 2
  %reg.i174 = alloca i16, align 2
  %reg.i172 = alloca i16, align 2
  %reg.i164 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %parent.i = getelementptr i8, ptr %5, i32 136
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %priv_data = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 5
  %8 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv_data, align 4
  %usb_endpoint = getelementptr inbounds %struct.data_queue, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %usb_endpoint to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %usb_endpoint, align 2
  %conv = zext i16 %11 to i32
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %13, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg.i, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %18 = and i16 %17, -17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i164) #12
  %19 = call i16 @llvm.bswap.i16(i16 %18) #12
  %20 = ptrtoint ptr %reg.i164 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %reg.i164, align 2
  %call.i165 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i164, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i164) #12
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb, align 4
  %call27 = call ptr @skb_push(ptr noundef %22, i32 noundef 20) #12
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 20)
  call void @rt2500usb_write_tx_desc(ptr noundef %entry1, ptr noundef %txdesc)
  call void @rt2x00debug_dump_frame(ptr noundef %3, i32 noundef 4, ptr noundef %entry1) #12
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lib, align 4
  %get_tx_data_len = getelementptr inbounds %struct.rt2x00lib_ops, ptr %31, i32 0, i32 31
  %32 = ptrtoint ptr %get_tx_data_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_tx_data_len, align 4
  %call29 = call i32 %33(ptr noundef %entry1) #12
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %9, align 4
  %36 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb, align 4
  %data31 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 19
  %38 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data31, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 8
  %40 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 10
  %41 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 14
  %42 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 19
  %43 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call29, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 28
  %44 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @rt2500usb_beacondone, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 27
  %45 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry1, ptr %context4.i, align 4
  %guardian_data = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, ptr %9, i32 0, i32 1
  %46 = ptrtoint ptr %guardian_data to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %guardian_data, align 4
  %guardian_urb = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, ptr %9, i32 0, i32 2
  %47 = ptrtoint ptr %guardian_urb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %guardian_urb, align 4
  %dev1.i166 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %dev1.i166 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i, ptr %dev1.i166, align 4
  %pipe2.i167 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 10
  %50 = ptrtoint ptr %pipe2.i167 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or, ptr %pipe2.i167, align 4
  %transfer_buffer3.i168 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 14
  %51 = ptrtoint ptr %transfer_buffer3.i168 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %guardian_data, ptr %transfer_buffer3.i168, align 4
  %transfer_buffer_length.i169 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 19
  %52 = ptrtoint ptr %transfer_buffer_length.i169 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %transfer_buffer_length.i169, align 4
  %complete.i170 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 28
  %53 = ptrtoint ptr %complete.i170 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @rt2500usb_beacondone, ptr %complete.i170, align 4
  %context4.i171 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 27
  %54 = ptrtoint ptr %context4.i171 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry1, ptr %context4.i171, align 4
  %55 = load ptr, ptr %guardian_urb, align 4
  %call34 = call i32 @usb_submit_urb(ptr noundef %55, i32 noundef 2592) #12
  %56 = and i16 %17, -26
  %57 = or i16 %56, 9
  %58 = or i16 %17, 25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i172) #12
  %59 = call i16 @llvm.bswap.i16(i16 %58) #12
  %60 = ptrtoint ptr %reg.i172 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %reg.i172, align 2
  %call.i173 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i172, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i172) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i174) #12
  %61 = call i16 @llvm.bswap.i16(i16 %57) #12
  %62 = ptrtoint ptr %reg.i174 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %reg.i174, align 2
  %call.i175 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i174, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i174) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i176) #12
  %63 = ptrtoint ptr %reg.i176 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %59, ptr %reg.i176, align 2
  %call.i177 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i176, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i176) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i178) #12
  %64 = ptrtoint ptr %reg.i178 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %61, ptr %reg.i178, align 2
  %call.i179 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i178, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i178) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i180) #12
  %65 = ptrtoint ptr %reg.i180 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %59, ptr %reg.i180, align 2
  %call.i181 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i180, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i180) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt2500usb_get_tx_data_len(ptr nocapture noundef readonly %entry1) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, 1
  %div9 = and i32 %add, -2
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %usb_maxpacket = getelementptr inbounds %struct.data_queue, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %usb_maxpacket to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %usb_maxpacket, align 4
  %conv = zext i16 %7 to i32
  %rem = srem i32 %div9, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %mul2 = select i1 %tobool.not, i32 2, i32 0
  %add3 = add i32 %mul2, %div9
  ret i32 %add3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_fill_rxdone(ptr nocapture noundef readonly %entry1, ptr nocapture noundef %rxdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  %desc_size = getelementptr inbounds %struct.data_queue, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %desc_size to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %desc_size, align 2
  %conv = zext i8 %15 to i32
  %sub = sub i32 %13, %conv
  %add.ptr = getelementptr i8, ptr %9, i32 %sub
  %desc = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 4
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 9
  %18 = ptrtoint ptr %desc_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %desc_len, align 1
  %conv5 = zext i8 %19 to i32
  %20 = call ptr @memcpy(ptr %17, ptr %add.ptr, i32 %conv5)
  %21 = load ptr, ptr %desc, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %arrayidx.i.i = getelementptr i32, ptr %21, i32 1
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  %28 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %or = or i32 %30, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %31 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool37.not = icmp eq i32 %31, 0
  br i1 %tobool37.not, label %if.end.if.end41_crit_edge, label %if.then38

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags39 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %32 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags39, align 4
  %or40 = or i32 %33, 64
  store i32 %or40, ptr %flags39, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end.if.end41_crit_edge
  %and54 = lshr i32 %24, 8
  %34 = trunc i32 %and54 to i8
  %conv62 = and i8 %34, 1
  %cipher = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 10
  %35 = ptrtoint ptr %cipher to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv62, ptr %cipher, align 8
  %36 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool83.not = icmp eq i32 %36, 0
  br i1 %tobool83.not, label %if.end41.if.end85_crit_edge, label %if.then84

if.end41.if.end85_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then84:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %cipher_status = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 11
  %37 = ptrtoint ptr %cipher_status to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %cipher_status, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end41.if.end85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv62)
  %cmp88.not = icmp eq i8 %conv62, 0
  br i1 %cmp88.not, label %if.end85.if.end114_crit_edge, label %if.then90

if.end85.if.end114_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then90:                                        ; preds = %if.end85
  %arrayidx.i = getelementptr i32, ptr %21, i32 2
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %iv = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 12
  %40 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %iv, align 4
  %arrayidx.i269 = getelementptr i32, ptr %21, i32 3
  %41 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i269, align 4
  %arrayidx94 = getelementptr %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 12, i32 1
  %43 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx94, align 4
  %dev_flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %44 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dev_flags, align 8
  %or95 = or i32 %45, 16
  store i32 %or95, ptr %dev_flags, align 8
  %flags96 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %46 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags96, align 4
  %or97 = or i32 %47, 8
  store i32 %or97, ptr %flags96, align 4
  %cipher_status98 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 11
  %48 = ptrtoint ptr %cipher_status98 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cipher_status98, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %49, label %if.then90.if.end114_crit_edge [
    i8 0, label %if.then90.if.end114.sink.split_crit_edge
    i8 2, label %if.then109
  ]

if.then90.if.end114.sink.split_crit_edge:         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.sink.split

if.then90.if.end114_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then109:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.sink.split

if.end114.sink.split:                             ; preds = %if.then109, %if.then90.if.end114.sink.split_crit_edge
  %.sink = phi i32 [ 9, %if.then109 ], [ 10, %if.then90.if.end114.sink.split_crit_edge ]
  %or104 = or i32 %47, %.sink
  %51 = ptrtoint ptr %flags96 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or104, ptr %flags96, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end114.sink.split, %if.then90.if.end114_crit_edge, %if.end85.if.end114_crit_edge
  %and127 = lshr i32 %27, 8
  %shr134 = and i32 %and127, 255
  %signal = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 1
  %52 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr134, ptr %signal, align 8
  %and147 = and i32 %27, 255
  %rssi_offset = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 37
  %53 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rssi_offset, align 2
  %conv155 = zext i8 %54 to i32
  %sub156 = sub nsw i32 %and147, %conv155
  %rssi = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 2
  %55 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub156, ptr %rssi, align 4
  %and169 = lshr i32 %24, 16
  %shr176 = and i32 %and169, 4095
  %size = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 3
  %56 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr176, ptr %size, align 8
  %57 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool197.not = icmp eq i32 %57, 0
  %dev_flags202 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %. = select i1 %tobool197.not, i32 2, i32 1
  %58 = ptrtoint ptr %dev_flags202 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dev_flags202, align 8
  %or203 = or i32 %59, %.
  store i32 %or203, ptr %dev_flags202, align 8
  %60 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool225.not = icmp eq i32 %60, 0
  br i1 %tobool225.not, label %if.end114.if.end229_crit_edge, label %if.then226

if.end114.if.end229_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end229

if.then226:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  %dev_flags227 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %61 = ptrtoint ptr %dev_flags227 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dev_flags227, align 8
  %or228 = or i32 %62, 8
  store i32 %or228, ptr %dev_flags227, align 8
  br label %if.end229

if.end229:                                        ; preds = %if.then226, %if.end114.if.end229_crit_edge
  %63 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skb, align 4
  tail call void @skb_trim(ptr noundef %64, i32 noundef %shr176) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500usb_config_key(ptr noundef %rt2x00dev, ptr noundef %crypto, ptr nocapture noundef %key) #2 align 64 {
entry:
  %reg.i258 = alloca i16, align 2
  %reg.i256 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end81_crit_edge

entry.if.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then:                                          ; preds = %entry
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cipher, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %if.then.do.end_crit_edge [
    i32 1027073, label %if.then.land.lhs.true_crit_edge
    i32 1027077, label %if.then.land.lhs.true_crit_edge260
  ]

if.then.land.lhs.true_crit_edge260:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %if.then.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge260
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %5 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %keyidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp4.not = icmp eq i8 %6, 0
  br i1 %cmp4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.then.do.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1088, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg.i, align 2
  %10 = call i16 @llvm.bswap.i16(i16 %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %11 = and i16 %10, 7
  %and = zext i16 %11 to i32
  %and24 = and i16 %10, 7680
  %trunc = trunc i16 %and24 to i13
  %12 = zext i13 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.39)
  switch i13 %trunc, label %cond.true [
    i13 -512, label %do.end.cleanup_crit_edge
    i13 0, label %do.end.cond.end_crit_edge
  ]

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = lshr exact i16 %and24, 9
  %conv55 = zext i16 %13 to i32
  %neg = xor i32 %conv55, -1
  %14 = call i32 @llvm.cttz.i32(i32 %neg, i1 true) #12, !range !131
  %phi.cast = trunc i32 %14 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %15 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hw_key_idx, align 2
  %conv60 = add i8 %16, %cond
  store i8 %conv60, ptr %hw_key_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv60)
  %cmp63.not = icmp eq i8 %conv60, 0
  br i1 %cmp63.not, label %cond.end.if.end70_crit_edge, label %land.lhs.true65

cond.end.if.end70_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true65:                                  ; preds = %cond.end
  %17 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crypto, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %and)
  %cmp67.not = icmp eq i32 %18, %and
  br i1 %cmp67.not, label %land.lhs.true65.if.end70_crit_edge, label %land.lhs.true65.cleanup_crit_edge

land.lhs.true65.cleanup_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true65.if.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true65.if.end70_crit_edge, %cond.end.if.end70_crit_edge
  %conv72 = zext i8 %conv60 to i16
  %mul = shl nuw nsw i16 %conv72, 4
  %add73 = add nuw nsw i16 %mul, 1152
  %key74 = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 4
  %call.i255 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %add73, ptr noundef %key74, i16 noundef zeroext 16) #12
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 8
  %21 = or i16 %20, 6
  store i16 %21, ptr %flags, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end70, %entry.if.end81_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i256) #12
  %22 = ptrtoint ptr %reg.i256 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %reg.i256, align 2, !annotation !128
  %call.i257 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1088, ptr noundef nonnull %reg.i256, i16 noundef zeroext 2) #12
  %23 = ptrtoint ptr %reg.i256 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %reg.i256, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i256) #12
  %26 = and i16 %25, -8192
  %27 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crypto, align 4
  %29 = trunc i32 %28 to i16
  %30 = and i16 %29, 7
  %31 = lshr i16 %25, 9
  %32 = and i16 %31, 15
  %33 = zext i16 %32 to i32
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %35, label %if.end81.if.end184_crit_edge [
    i32 0, label %if.then169
    i32 1, label %if.then177
  ]

if.end81.if.end184_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184

if.then169:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %hw_key_idx170 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %37 = ptrtoint ptr %hw_key_idx170 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hw_key_idx170, align 2
  %conv171 = zext i8 %38 to i32
  %shl172 = shl nuw i32 1, %conv171
  %or173 = or i32 %shl172, %33
  br label %if.end184

if.then177:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %hw_key_idx178 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %39 = ptrtoint ptr %hw_key_idx178 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hw_key_idx178, align 2
  %conv179 = zext i8 %40 to i32
  %shl180 = shl nuw i32 1, %conv179
  %neg181 = xor i32 %shl180, -1
  %and182 = and i32 %neg181, %33
  br label %if.end184

if.end184:                                        ; preds = %if.then177, %if.then169, %if.end81.if.end184_crit_edge
  %mask.0 = phi i32 [ %or173, %if.then169 ], [ %and182, %if.then177 ], [ %33, %if.end81.if.end184_crit_edge ]
  %mask.0.tr = trunc i32 %mask.0 to i16
  %41 = shl i16 %mask.0.tr, 9
  %42 = and i16 %41, 7680
  %conv114 = or i16 %26, %30
  %43 = or i16 %conv114, %42
  %conv216 = or i16 %43, 192
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i258) #12
  %44 = call i16 @llvm.bswap.i16(i16 %conv216) #12
  %45 = ptrtoint ptr %reg.i258 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %reg.i258, align 2
  %call.i259 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1088, ptr noundef nonnull %reg.i258, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i258) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end184, %land.lhs.true65.cleanup_crit_edge, %do.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end184 ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -28, %do.end.cleanup_crit_edge ], [ -95, %land.lhs.true65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_config_filter(ptr noundef %rt2x00dev, i32 noundef %filter_flags) #2 align 64 {
entry:
  %reg.i288 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1092, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool145.not = icmp eq i32 %6, 0
  br i1 %tobool145.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf_ap_count = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 24
  %7 = ptrtoint ptr %intf_ap_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intf_ap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool146.not = icmp eq i32 %8, 0
  %phi.bo = select i1 %tobool146.not, i16 32, i16 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %9 = phi i16 [ 0, %entry.land.end_crit_edge ], [ %phi.bo, %land.rhs ]
  %10 = trunc i32 %filter_flags to i16
  %11 = lshr i16 %10, 1
  %12 = and i16 %2, -32263
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = lshr i16 %10, 2
  %15 = and i16 %14, 8
  %16 = trunc i32 %4 to i16
  %17 = lshr i16 %16, 7
  %18 = and i16 %17, 16
  %19 = shl i16 %10, 8
  %20 = and i16 %19, 512
  %21 = and i16 %11, 6
  %22 = or i16 %21, %15
  %23 = or i16 %22, %13
  %24 = or i16 %23, %18
  %25 = or i16 %24, %9
  %26 = or i16 %20, %25
  %27 = xor i16 %26, 606
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i288) #12
  %28 = call i16 @llvm.bswap.i16(i16 %27) #12
  %29 = ptrtoint ptr %reg.i288 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %reg.i288, align 2
  %call.i289 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1092, ptr noundef nonnull %reg.i288, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i288) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_config_intf(ptr noundef %rt2x00dev, ptr nocapture noundef readnone %intf, ptr noundef %conf, i32 noundef %flags) #2 align 64 {
entry:
  %reg.i157 = alloca i16, align 2
  %reg.i155 = alloca i16, align 2
  %reg.i153 = alloca i16, align 2
  %reg.i151 = alloca i16, align 2
  %reg.i149 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1128, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %1 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp35.not = icmp eq i32 %2, 2
  %conv53 = select i1 %cmp35.not, i16 3, i16 16387
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i149) #12
  %3 = call i16 @llvm.bswap.i16(i16 %conv53) #12
  %4 = ptrtoint ptr %reg.i149 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %reg.i149, align 2
  %call.i150 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1128, ptr noundef nonnull %reg.i149, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i149) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i151) #12
  %5 = ptrtoint ptr %reg.i151 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %reg.i151, align 2, !annotation !128
  %call.i152 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1124, ptr noundef nonnull %reg.i151, i16 noundef zeroext 2) #12
  %6 = ptrtoint ptr %reg.i151 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg.i151, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i151) #12
  %8 = and i16 %7, -3841
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i153) #12
  %9 = ptrtoint ptr %reg.i153 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %reg.i153, align 2
  %call.i154 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1124, ptr noundef nonnull %reg.i153, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i153) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i155) #12
  %10 = ptrtoint ptr %reg.i155 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %reg.i155, align 2, !annotation !128
  %call.i156 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i155, i16 noundef zeroext 2) #12
  %11 = ptrtoint ptr %reg.i155 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg.i155, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i155) #12
  %13 = and i16 %12, -1537
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %sync = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 1
  %15 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sync, align 4
  %.tr = trunc i32 %16 to i16
  %17 = shl i16 %.tr, 1
  %18 = and i16 %17, 6
  %conv117 = or i16 %18, %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i157) #12
  %19 = call i16 @llvm.bswap.i16(i16 %conv117) #12
  %20 = ptrtoint ptr %reg.i157 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %reg.i157, align 2
  %call.i158 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1126, ptr noundef nonnull %reg.i157, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i157) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and118 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end.if.end121_crit_edge, label %if.then120

if.end.if.end121_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then120:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mac = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 2
  %call.i159 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1028, ptr noundef %mac, i16 noundef zeroext 6) #12
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %if.end.if.end121_crit_edge
  %and122 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end121.if.end126_crit_edge, label %if.then124

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end126

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  %bssid = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 3
  %call.i160 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1034, ptr noundef %bssid, i16 noundef zeroext 6) #12
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.end121.if.end126_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_config_erp(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %erp, i32 noundef %changed) #2 align 64 {
entry:
  %reg.i102 = alloca i16, align 2
  %reg.i100 = alloca i16, align 2
  %reg.i98 = alloca i16, align 2
  %reg.i96 = alloca i16, align 2
  %reg.i94 = alloca i16, align 2
  %reg.i92 = alloca i16, align 2
  %reg.i90 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1108, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %3 = and i16 %2, -1025
  %4 = call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %erp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  %shl = select i1 %tobool5.not, i16 0, i16 4
  %or = or i16 %shl, %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i90) #12
  %7 = call i16 @llvm.bswap.i16(i16 %or) #12
  %8 = ptrtoint ptr %reg.i90 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %reg.i90, align 2
  %call.i91 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1108, ptr noundef nonnull %reg.i90, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i90) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and22 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end.if.end26_crit_edge, label %if.then24

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %basic_rates = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 2
  %9 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %basic_rates, align 4
  %conv25 = trunc i32 %10 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i92) #12
  %11 = call i16 @llvm.bswap.i16(i16 %conv25) #12
  %12 = ptrtoint ptr %reg.i92 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %reg.i92, align 2
  %call.i93 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1110, ptr noundef nonnull %reg.i92, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i92) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end.if.end26_crit_edge
  %and27 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end64_crit_edge, label %if.then29

if.end26.if.end64_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i94) #12
  %13 = ptrtoint ptr %reg.i94 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %reg.i94, align 2, !annotation !128
  %call.i95 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1124, ptr noundef nonnull %reg.i94, i16 noundef zeroext 2) #12
  %14 = ptrtoint ptr %reg.i94 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg.i94, align 2
  %16 = lshr i16 %15, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i94) #12
  %17 = and i16 %16, 15
  %beacon_int = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 8
  %18 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %beacon_int, align 4
  %mul = shl i16 %19, 6
  %or62 = or i16 %mul, %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i96) #12
  %20 = call i16 @llvm.bswap.i16(i16 %or62) #12
  %21 = ptrtoint ptr %reg.i96 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %reg.i96, align 2
  %call.i97 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1124, ptr noundef nonnull %reg.i96, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i96) #12
  br label %if.end64

if.end64:                                         ; preds = %if.then29, %if.end26.if.end64_crit_edge
  %and65 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end69_crit_edge, label %if.then67

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %slot_time = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 3
  %22 = ptrtoint ptr %slot_time to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slot_time, align 4
  %conv68 = trunc i32 %23 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i98) #12
  %24 = call i16 @llvm.bswap.i16(i16 %conv68) #12
  %25 = ptrtoint ptr %reg.i98 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %reg.i98, align 2
  %call.i99 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1044, ptr noundef nonnull %reg.i98, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i98) #12
  %sifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 4
  %26 = ptrtoint ptr %sifs to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sifs, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i100) #12
  %28 = call i16 @llvm.bswap.i16(i16 %27) #12
  %29 = ptrtoint ptr %reg.i100 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %reg.i100, align 2
  %call.i101 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1046, ptr noundef nonnull %reg.i100, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i100) #12
  %eifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 7
  %30 = ptrtoint ptr %eifs to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %eifs, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i102) #12
  %32 = call i16 @llvm.bswap.i16(i16 %31) #12
  %33 = ptrtoint ptr %reg.i102 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %reg.i102, align 2
  %call.i103 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1048, ptr noundef nonnull %reg.i102, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i102) #12
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_config_ant(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %ant) #2 align 64 {
entry:
  %reg.i618 = alloca i16, align 2
  %reg.i616 = alloca i16, align 2
  %reg.i610 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !129

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

lor.rhs:                                          ; preds = %entry
  %tx = getelementptr inbounds %struct.antenna_setup, ptr %ant, i32 0, i32 1
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end8, !prof !129

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2500usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 513, 0\0A.popsection", ""() #12, !srcloc !132
  unreachable

do.end8:                                          ; preds = %lor.rhs
  %call = tail call zeroext i8 @rt2500usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 2)
  %call9 = tail call zeroext i8 @rt2500usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 14)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1226, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg.i, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i610) #12
  %8 = ptrtoint ptr %reg.i610 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %reg.i610, align 2, !annotation !128
  %call.i611 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1228, ptr noundef nonnull %reg.i610, i16 noundef zeroext 2) #12
  %9 = ptrtoint ptr %reg.i610 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg.i610, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i610) #12
  %12 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %13, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb94
  ]

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %15 = and i8 %call, -4
  %16 = or i8 %15, 1
  %17 = and i16 %7, -4
  %18 = or i16 %17, 1
  %19 = and i16 %11, -4
  %20 = or i16 %19, 1
  br label %sw.epilog

sw.bb94:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %21 = and i8 %call, -4
  %22 = and i16 %7, -4
  %23 = and i16 %11, -4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %24 = and i8 %call, -4
  %25 = or i8 %24, 2
  %26 = and i16 %7, -4
  %27 = or i16 %26, 2
  %28 = and i16 %11, -4
  %29 = or i16 %28, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb94, %sw.bb
  %csr6.0 = phi i16 [ %29, %sw.default ], [ %23, %sw.bb94 ], [ %20, %sw.bb ]
  %csr5.0 = phi i16 [ %27, %sw.default ], [ %22, %sw.bb94 ], [ %18, %sw.bb ]
  %r2.0 = phi i8 [ %25, %sw.default ], [ %21, %sw.bb94 ], [ %16, %sw.bb ]
  %30 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ant, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %31, label %sw.default340 [
    i32 3, label %sw.bb277
    i32 1, label %sw.bb308
  ]

sw.bb277:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %33 = and i8 %call9, -4
  %34 = or i8 %33, 1
  br label %sw.epilog371

sw.bb308:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %35 = and i8 %call9, -4
  br label %sw.epilog371

sw.default340:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %36 = and i8 %call9, -4
  %37 = or i8 %36, 2
  br label %sw.epilog371

sw.epilog371:                                     ; preds = %sw.default340, %sw.bb308, %sw.bb277
  %r14.0 = phi i8 [ %37, %sw.default340 ], [ %35, %sw.bb308 ], [ %34, %sw.bb277 ]
  %rf1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %38 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rf1.i, align 2
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %39, label %if.else [
    i16 16, label %sw.epilog371.if.then376_crit_edge
    i16 5, label %sw.epilog371.if.then376_crit_edge620
  ]

sw.epilog371.if.then376_crit_edge620:             ; preds = %sw.epilog371
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then376

sw.epilog371.if.then376_crit_edge:                ; preds = %sw.epilog371
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then376

if.then376:                                       ; preds = %sw.epilog371.if.then376_crit_edge, %sw.epilog371.if.then376_crit_edge620
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %39)
  %cmp.i = icmp eq i16 %39, 5
  %41 = or i8 %r2.0, 4
  %42 = or i16 %csr5.0, 4
  %43 = or i16 %csr6.0, 4
  %44 = and i8 %r14.0, -5
  %spec.select = select i1 %cmp.i, i8 %44, i8 %r14.0
  br label %if.end560

if.else:                                          ; preds = %sw.epilog371
  call void @__sanitizer_cov_trace_pc() #14
  %45 = and i16 %csr5.0, -5
  %46 = and i16 %csr6.0, -5
  br label %if.end560

if.end560:                                        ; preds = %if.else, %if.then376
  %csr6.1 = phi i16 [ %46, %if.else ], [ %43, %if.then376 ]
  %csr5.1 = phi i16 [ %45, %if.else ], [ %42, %if.then376 ]
  %r14.1 = phi i8 [ %r14.0, %if.else ], [ %spec.select, %if.then376 ]
  %r2.1 = phi i8 [ %r2.0, %if.else ], [ %41, %if.then376 ]
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 2, i8 noundef zeroext %r2.1)
  call void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef 14, i8 noundef zeroext %r14.1)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i616) #12
  %47 = call i16 @llvm.bswap.i16(i16 %csr5.1) #12
  %48 = ptrtoint ptr %reg.i616 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %reg.i616, align 2
  %call.i617 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1226, ptr noundef nonnull %reg.i616, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i616) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i618) #12
  %49 = call i16 @llvm.bswap.i16(i16 %csr6.1) #12
  %50 = ptrtoint ptr %reg.i618 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %reg.i618, align 2
  %call.i619 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1228, ptr noundef nonnull %reg.i618, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i618) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_config(ptr noundef %rt2x00dev, ptr nocapture noundef %libconf, i32 noundef %flags) #2 align 64 {
entry:
  %reg.i177.i = alloca i16, align 2
  %reg.i175.i = alloca i16, align 2
  %reg.i173.i = alloca i16, align 2
  %reg.i171.i = alloca i16, align 2
  %reg.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
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
  %6 = tail call i32 @llvm.umin.i32(i32 %conv4.i, i32 31) #12
  %shl.i = shl nuw nsw i32 %6, 9
  %or.i = or i32 %shl.i, %and.i
  %7 = ptrtoint ptr %rf3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %rf3.i, align 4
  %rf1.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %rf1.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rf1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %9)
  %cmp.i.i = icmp eq i16 %9, 5
  br i1 %cmp.i.i, label %if.then.i, label %if.then.if.end36.i_crit_edge

if.then.if.end36.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

if.then.i:                                        ; preds = %if.then
  %rf = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1
  %10 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rf, align 4
  %sub.i = add i32 %11, -1
  %arrayidx.i = getelementptr [14 x i32], ptr @rt2500usb_config_channel.vals, i32 0, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  tail call void @rt2500usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 2, i32 noundef %13) #12
  %rf4.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %rf4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rf4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then.i.if.end36.i_crit_edge, label %if.then34.i

if.then.i.if.end36.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rt2500usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 4, i32 noundef %15) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.then.i.if.end36.i_crit_edge, %if.then.if.end36.i_crit_edge
  %rf1.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rf1.i, align 4
  tail call void @rt2500usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 1, i32 noundef %17) #12
  %rf2.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %rf2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rf2.i, align 4
  tail call void @rt2500usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 2, i32 noundef %19) #12
  %20 = ptrtoint ptr %rf3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rf3.i, align 4
  tail call void @rt2500usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 3, i32 noundef %21) #12
  %rf438.i = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %rf438.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rf438.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool39.not.i = icmp eq i32 %23, 0
  br i1 %tobool39.not.i, label %if.end36.i.if.end8_crit_edge, label %if.then40.i

if.end36.i.if.end8_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rt2500usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 4, i32 noundef %23) #12
  br label %if.end8

if.end:                                           ; preds = %entry
  %24 = and i32 %flags, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %ops.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i, align 4
  %rf_size.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %rf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rf_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %29)
  %cmp1.i.i = icmp ult i32 %29, 12
  br i1 %cmp1.i.i, label %do.body3.i.i, label %rt2500usb_config_txpower.exit, !prof !129

do.body3.i.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #12, !srcloc !133
  unreachable

rt2500usb_config_txpower.exit:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %libconf, align 4
  %power_level7 = getelementptr inbounds %struct.ieee80211_conf, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %power_level7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %power_level7, align 4
  %rf.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %34 = ptrtoint ptr %rf.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rf.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %conv4.i21 = and i32 %33, 255
  %38 = tail call i32 @llvm.umin.i32(i32 %conv4.i21, i32 31) #12
  %and.i22 = and i32 %37, -15873
  %shl.i23 = shl nuw nsw i32 %38, 9
  %or.i24 = or i32 %and.i22, %shl.i23
  tail call void @rt2500usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 3, i32 noundef %or.i24) #12
  br label %if.end8

if.end8:                                          ; preds = %rt2500usb_config_txpower.exit, %if.end.if.end8_crit_edge, %if.then40.i, %if.end36.i.if.end8_crit_edge
  %and9 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %39 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %libconf, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %and.i25 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %if.else.i, label %if.then.i27

if.then.i27:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #12
  %43 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %reg.i.i, align 2, !annotation !128
  %call.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1060, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #12
  %beacon_int.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 40
  %44 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %beacon_int.i, align 2
  %46 = add i16 %45, 236
  %47 = and i16 %46, 255
  %48 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %libconf, align 4
  %listen_interval.i = getelementptr inbounds %struct.ieee80211_conf, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %listen_interval.i, align 4
  %sub39.i = shl i16 %51, 8
  %shl46.i = add i16 %sub39.i, 32512
  %shl46.masked.i = and i16 %shl46.i, 32512
  %52 = or i16 %shl46.masked.i, %47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i171.i) #12
  %53 = call i16 @llvm.bswap.i16(i16 %52) #12
  %54 = ptrtoint ptr %reg.i171.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %reg.i171.i, align 2
  %call.i172.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1060, ptr noundef nonnull %reg.i171.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i171.i) #12
  %55 = or i16 %52, -32768
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i173.i) #12
  %56 = call i16 @llvm.bswap.i16(i16 %55) #12
  %57 = ptrtoint ptr %reg.i173.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %reg.i173.i, align 2
  %call.i174.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1060, ptr noundef nonnull %reg.i173.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i173.i) #12
  br label %rt2500usb_config_ps.exit

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i175.i) #12
  %58 = ptrtoint ptr %reg.i175.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %reg.i175.i, align 2, !annotation !128
  %call.i176.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1060, ptr noundef nonnull %reg.i175.i, i16 noundef zeroext 2) #12
  %59 = ptrtoint ptr %reg.i175.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %reg.i175.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i175.i) #12
  %61 = and i16 %60, -129
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i177.i) #12
  %62 = ptrtoint ptr %reg.i177.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %reg.i177.i, align 2
  %call.i178.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1060, ptr noundef nonnull %reg.i177.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i177.i) #12
  br label %rt2500usb_config_ps.exit

rt2500usb_config_ps.exit:                         ; preds = %if.else.i, %if.then.i27
  %63 = xor i32 %and.i25, 3
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %lib.i = getelementptr inbounds %struct.rt2x00_ops, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lib.i, align 4
  %set_device_state.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %67, i32 0, i32 14
  %68 = ptrtoint ptr %set_device_state.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_device_state.i, align 4
  %call148.i = call i32 %69(ptr noundef %rt2x00dev, i32 noundef %63) #12
  br label %if.end12

if.end12:                                         ; preds = %rt2500usb_config_ps.exit, %if.end8.if.end12_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt2500usb_validate_eeprom(ptr noundef %rt2x00dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 8
  %call.i = tail call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 110, i32 noundef 2000) #12
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eeprom, align 8
  %arrayidx.i = getelementptr i16, ptr %3, i32 2
  tail call void @rt2x00lib_set_mac_address(ptr noundef %rt2x00dev, ptr noundef %arrayidx.i) #12
  %4 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eeprom, align 8
  %arrayidx.i26 = getelementptr i16, ptr %5, i32 11
  %6 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  br i1 %cmp, label %if.then, label %entry.if.end212_crit_edge

entry.if.end212_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 512, ptr %arrayidx.i26, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500usb_validate_eeprom, %if.then208)) #12
          to label %if.end212 [label %if.then208], !srcloc !134

if.then208:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug544, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 2) #12
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %if.then, %entry.if.end212_crit_edge
  %13 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eeprom, align 8
  %arrayidx.i30 = getelementptr i16, ptr %14, i32 12
  %15 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp215 = icmp eq i16 %16, -1
  br i1 %cmp215, label %if.then217, label %if.end212.if.end328_crit_edge

if.end212.if.end328_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end328

if.then217:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -3841, ptr %arrayidx.i30, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500usb_validate_eeprom, %if.then320)) #12
          to label %if.end328 [label %if.then320], !srcloc !134

if.then320:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #14
  %hw321 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %18 = ptrtoint ptr %hw321 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw321, align 4
  %wiphy322 = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy322 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy322, align 8
  %dev323 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug548, ptr noundef %dev323, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 65520) #12
  br label %if.end328

if.end328:                                        ; preds = %if.then320, %if.then217, %if.end212.if.end328_crit_edge
  %22 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eeprom, align 8
  %arrayidx.i34 = getelementptr i16, ptr %23, i32 54
  %24 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp331 = icmp eq i16 %25, -1
  br i1 %cmp331, label %if.then333, label %if.end328.if.end384_crit_edge

if.end328.if.end384_crit_edge:                    ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end384

if.then333:                                       ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 30975, ptr %arrayidx.i34, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500usb_validate_eeprom, %if.then376)) #12
          to label %if.end384 [label %if.then376], !srcloc !134

if.then376:                                       ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #14
  %hw377 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %27 = ptrtoint ptr %hw377 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw377, align 4
  %wiphy378 = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy378 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy378, align 8
  %dev379 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug550, ptr noundef %dev379, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 65400) #12
  br label %if.end384

if.end384:                                        ; preds = %if.then376, %if.then333, %if.end328.if.end384_crit_edge
  %31 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eeprom, align 8
  %arrayidx.i38 = getelementptr i16, ptr %32, i32 48
  %33 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp387 = icmp eq i16 %34, -1
  br i1 %cmp387, label %if.then389, label %if.end384.if.end440_crit_edge

if.end384.if.end440_crit_edge:                    ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end440

if.then389:                                       ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 11775, ptr %arrayidx.i38, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500usb_validate_eeprom, %if.then432)) #12
          to label %if.end440 [label %if.then432], !srcloc !134

if.then432:                                       ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #14
  %hw433 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %36 = ptrtoint ptr %hw433 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw433, align 4
  %wiphy434 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy434 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy434, align 8
  %dev435 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug552, ptr noundef %dev435, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 65325) #12
  br label %if.end440

if.end440:                                        ; preds = %if.then432, %if.then389, %if.end384.if.end440_crit_edge
  %call441 = tail call zeroext i8 @rt2500usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 17)
  %sub = add i8 %call441, -6
  %40 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eeprom, align 8
  %arrayidx.i42 = getelementptr i16, ptr %41, i32 52
  %42 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp446 = icmp eq i16 %43, -1
  %conv494 = zext i8 %sub to i16
  br i1 %cmp446, label %if.then448, label %if.else

if.then448:                                       ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw i16 %conv494, 8
  %or509 = or i16 %shl, 64
  %44 = tail call i16 @llvm.bswap.i16(i16 %or509) #12
  %45 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx.i42, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500usb_validate_eeprom, %if.then523)) #12
          to label %if.end564 [label %if.then523], !srcloc !134

if.then523:                                       ; preds = %if.then448
  call void @__sanitizer_cov_trace_pc() #14
  %hw524 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %46 = ptrtoint ptr %hw524 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw524, align 4
  %wiphy525 = getelementptr inbounds %struct.ieee80211_hw, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wiphy525 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wiphy525, align 8
  %dev526 = getelementptr inbounds %struct.wiphy, ptr %49, i32 0, i32 56
  %conv527 = zext i16 %or509 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug555, ptr noundef %dev526, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef %conv527) #12
  br label %if.end564

if.else:                                          ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #14
  %or562 = tail call i16 @llvm.fshl.i16(i16 %conv494, i16 %43, i16 8)
  %50 = tail call i16 @llvm.bswap.i16(i16 %or562) #12
  %51 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx.i42, align 2
  br label %if.end564

if.end564:                                        ; preds = %if.else, %if.then523, %if.then448
  %52 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %eeprom, align 8
  %arrayidx.i48 = getelementptr i16, ptr %53, i32 53
  %54 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.i48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %cmp567 = icmp eq i16 %55, -1
  br i1 %cmp567, label %if.then569, label %if.end564.if.end650_crit_edge

if.end564.if.end650_crit_edge:                    ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end650

if.then569:                                       ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 18497, ptr %arrayidx.i48, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500usb_validate_eeprom, %if.then642)) #12
          to label %if.end650 [label %if.then642], !srcloc !134

if.then642:                                       ; preds = %if.then569
  call void @__sanitizer_cov_trace_pc() #14
  %hw643 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %57 = ptrtoint ptr %hw643 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw643, align 4
  %wiphy644 = getelementptr inbounds %struct.ieee80211_hw, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %wiphy644 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wiphy644, align 8
  %dev645 = getelementptr inbounds %struct.wiphy, ptr %60, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug559, ptr noundef %dev645, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 16712) #12
  br label %if.end650

if.end650:                                        ; preds = %if.then642, %if.then569, %if.end564.if.end650_crit_edge
  %61 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %eeprom, align 8
  %arrayidx.i52 = getelementptr i16, ptr %62, i32 49
  %63 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.i52, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %64)
  %cmp653 = icmp eq i16 %64, -1
  br i1 %cmp653, label %if.then655, label %if.end650.if.end736_crit_edge

if.end650.if.end736_crit_edge:                    ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end736

if.then655:                                       ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 16512, ptr %arrayidx.i52, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500usb_validate_eeprom, %if.then728)) #12
          to label %if.end736 [label %if.then728], !srcloc !134

if.then728:                                       ; preds = %if.then655
  call void @__sanitizer_cov_trace_pc() #14
  %hw729 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %66 = ptrtoint ptr %hw729 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw729, align 4
  %wiphy730 = getelementptr inbounds %struct.ieee80211_hw, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %wiphy730 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wiphy730, align 8
  %dev731 = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug562, ptr noundef %dev731, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 32832) #12
  br label %if.end736

if.end736:                                        ; preds = %if.then728, %if.then655, %if.end650.if.end736_crit_edge
  %70 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eeprom, align 8
  %arrayidx.i56 = getelementptr i16, ptr %71, i32 50
  %72 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i56, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %73)
  %cmp739 = icmp eq i16 %73, -1
  br i1 %cmp739, label %if.then741, label %if.end736.if.end822_crit_edge

if.end736.if.end822_crit_edge:                    ; preds = %if.end736
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end822

if.then741:                                       ; preds = %if.end736
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 16464, ptr %arrayidx.i56, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500usb_validate_eeprom, %if.then814)) #12
          to label %if.end822 [label %if.then814], !srcloc !134

if.then814:                                       ; preds = %if.then741
  call void @__sanitizer_cov_trace_pc() #14
  %hw815 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %75 = ptrtoint ptr %hw815 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw815, align 4
  %wiphy816 = getelementptr inbounds %struct.ieee80211_hw, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %wiphy816 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wiphy816, align 8
  %dev817 = getelementptr inbounds %struct.wiphy, ptr %78, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug565, ptr noundef %dev817, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef 20544) #12
  br label %if.end822

if.end822:                                        ; preds = %if.then814, %if.then741, %if.end736.if.end822_crit_edge
  %79 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %eeprom, align 8
  %arrayidx.i60 = getelementptr i16, ptr %80, i32 51
  %81 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.i60, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %82)
  %cmp825 = icmp eq i16 %82, -1
  br i1 %cmp825, label %if.then827, label %if.end822.if.end908_crit_edge

if.end822.if.end908_crit_edge:                    ; preds = %if.end822
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end908

if.then827:                                       ; preds = %if.end822
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 24685, ptr %arrayidx.i60, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt2500usb_validate_eeprom, %if.then900)) #12
          to label %if.end908 [label %if.then900], !srcloc !134

if.then900:                                       ; preds = %if.then827
  call void @__sanitizer_cov_trace_pc() #14
  %hw901 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %84 = ptrtoint ptr %hw901 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw901, align 4
  %wiphy902 = getelementptr inbounds %struct.ieee80211_hw, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %wiphy902 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wiphy902, align 8
  %dev903 = getelementptr inbounds %struct.wiphy, ptr %87, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug568, ptr noundef %dev903, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef 28000) #12
  br label %if.end908

if.end908:                                        ; preds = %if.then900, %if.then827, %if.end822.if.end908_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_set_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @rt2x00_eeprom_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
define internal void @rt2x00_eeprom_write(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word, i16 noundef zeroext %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rt2500usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef %word) #2 align 64 {
entry:
  %reg.i114 = alloca i16, align 2
  %reg.i.i93 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  %reg.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.020.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #12
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i.i, align 2, !annotation !128
  %call.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1232, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 2, i32 noundef 100) #12
  %1 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg.i.i, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #12
  %conv3.i = zext i16 %3 to i32
  %and.i = and i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 21474800) #12
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %do.body.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @___ratelimit(ptr noundef nonnull @rt2500usb_regbusy_read._rs, ptr noundef nonnull @__func__.rt2500usb_regbusy_read) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.if.end64_crit_edge, label %do.end.i

do.body.i.if.end64_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %hw.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rt2500usb_regbusy_read, i32 noundef 1232, i32 noundef %conv3.i) #15
  br label %if.end64

if.then:                                          ; preds = %for.body.i
  %word.tr = trunc i32 %word to i16
  %9 = and i16 %word.tr, 127
  %10 = or i16 %9, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %reg.i, align 2
  %call.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1230, ptr noundef nonnull %reg.i, i16 noundef zeroext 2, i32 noundef 100) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  br label %for.body.i99

for.body.i99:                                     ; preds = %if.end.i102.for.body.i99_crit_edge, %if.then
  %i.020.i94 = phi i32 [ 0, %if.then ], [ %inc.i100, %if.end.i102.for.body.i99_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i93) #12
  %12 = ptrtoint ptr %reg.i.i93 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %reg.i.i93, align 2, !annotation !128
  %call.i.i95 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1232, ptr noundef nonnull %reg.i.i93, i16 noundef zeroext 2, i32 noundef 100) #12
  %13 = ptrtoint ptr %reg.i.i93 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg.i.i93, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i93) #12
  %conv3.i96 = zext i16 %15 to i32
  %and.i97 = and i32 %conv3.i96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.not.i98 = icmp eq i32 %and.i97, 0
  br i1 %tobool.not.i98, label %if.then62, label %if.end.i102

if.end.i102:                                      ; preds = %for.body.i99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 21474800) #12
  %inc.i100 = add nuw nsw i32 %i.020.i94, 1
  %exitcond.not.i101 = icmp eq i32 %inc.i100, 20
  br i1 %exitcond.not.i101, label %do.body.i105, label %if.end.i102.for.body.i99_crit_edge

if.end.i102.for.body.i99_crit_edge:               ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i99

do.body.i105:                                     ; preds = %if.end.i102
  %call6.i103 = call i32 @___ratelimit(ptr noundef nonnull @rt2500usb_regbusy_read._rs, ptr noundef nonnull @__func__.rt2500usb_regbusy_read) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i103)
  %tobool7.not.i104 = icmp eq i32 %call6.i103, 0
  br i1 %tobool7.not.i104, label %do.body.i105.if.end64_crit_edge, label %do.end.i110

do.body.i105.if.end64_crit_edge:                  ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

do.end.i110:                                      ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #14
  %hw.i106 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %17 = ptrtoint ptr %hw.i106 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i106, align 4
  %wiphy.i107 = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy.i107 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy.i107, align 8
  %dev.i108 = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i108, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rt2500usb_regbusy_read, i32 noundef 1232, i32 noundef %conv3.i96) #15
  br label %if.end64

if.then62:                                        ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i114) #12
  %21 = ptrtoint ptr %reg.i114 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %reg.i114, align 2, !annotation !128
  %call.i115 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1230, ptr noundef nonnull %reg.i114, i16 noundef zeroext 2, i32 noundef 100) #12
  %22 = ptrtoint ptr %reg.i114 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %reg.i114, align 2
  %24 = lshr i16 %23, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i114) #12
  %extract.t = trunc i16 %24 to i8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %do.end.i110, %do.body.i105.if.end64_crit_edge, %do.end.i, %do.body.i.if.end64_crit_edge
  %reg.2.off0 = phi i8 [ %extract.t, %if.then62 ], [ -1, %do.end.i ], [ -1, %do.body.i.if.end64_crit_edge ], [ -1, %do.end.i110 ], [ -1, %do.body.i105.if.end64_crit_edge ]
  call void @mutex_unlock(ptr noundef %csr_mutex) #12
  ret i8 %reg.2.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  %reg.i74 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp ne i32 %brightness, 0
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1064, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %reg.i, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %type = getelementptr i8, ptr %led_cdev, i32 400
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %7, label %entry.if.end63_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then_crit_edge76
    i32 2, label %if.then30
  ]

entry.if.then_crit_edge76:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge76
  %9 = and i16 %5, -3
  %shl = select i1 %cmp, i16 2, i16 0
  %or = or i16 %9, %shl
  br label %if.end63

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = and i16 %5, -2
  %11 = zext i1 %cmp to i16
  %conv62 = or i16 %10, %11
  br label %if.end63

if.end63:                                         ; preds = %if.then30, %if.then, %entry.if.end63_crit_edge
  %reg.0 = phi i16 [ %or, %if.then ], [ %conv62, %if.then30 ], [ %5, %entry.if.end63_crit_edge ]
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i74) #12
  %14 = call i16 @llvm.bswap.i16(i16 %reg.0) #12
  %15 = ptrtoint ptr %reg.i74 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %reg.i74, align 2
  %call.i75 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %13, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1064, ptr noundef nonnull %reg.i74, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i74) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2500usb_blink_set(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  %reg.i58 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1066, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %3 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay_on, align 4
  %conv33 = and i32 %4, 255
  %5 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay_off, align 4
  %shl41 = shl i32 %6, 8
  %or50 = or i32 %shl41, %conv33
  %conv51 = trunc i32 %or50 to i16
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i58) #12
  %9 = call i16 @llvm.bswap.i16(i16 %conv51) #12
  %10 = ptrtoint ptr %reg.i58 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %reg.i58, align 2
  %call.i59 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %8, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1066, ptr noundef nonnull %reg.i58, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i58) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_request_buff(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef %word, i8 noundef zeroext %value) #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  %reg.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.020.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #12
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i.i, align 2, !annotation !128
  %call.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1232, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 2, i32 noundef 100) #12
  %1 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg.i.i, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #12
  %conv3.i = zext i16 %3 to i32
  %and.i = and i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 21474800) #12
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %do.body.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @___ratelimit(ptr noundef nonnull @rt2500usb_regbusy_read._rs, ptr noundef nonnull @__func__.rt2500usb_regbusy_read) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.if.end_crit_edge, label %do.end.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %hw.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rt2500usb_regbusy_read, i32 noundef 1232, i32 noundef %conv3.i) #15
  br label %if.end

if.then:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl46 = shl i32 %word, 8
  %and53 = and i32 %shl46, 32512
  %conv54 = zext i8 %value to i32
  %or55 = or i32 %and53, %conv54
  %conv70 = trunc i32 %or55 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %9 = call i16 @llvm.bswap.i16(i16 %conv70) #12
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %reg.i, align 2
  %call.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1230, ptr noundef nonnull %reg.i, i16 noundef zeroext 2, i32 noundef 100) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.i, %do.body.i.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_disable_radio(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00debug_dump_frame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_beacondone(ptr noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %priv_data = getelementptr inbounds %struct.queue_entry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_data, align 4
  %queue = getelementptr inbounds %struct.queue_entry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %guardian_urb = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %guardian_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %guardian_urb, align 4
  %cmp = icmp eq ptr %12, %urb
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @usb_submit_urb(ptr noundef %14, i32 noundef 2592) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp6 = icmp eq ptr %14, %urb
  br i1 %cmp6, label %if.then7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %skb = getelementptr inbounds %struct.queue_entry, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %16) #12
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.else.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2500usb_rf_write(ptr noundef %rt2x00dev, i32 noundef %word, i32 noundef %value) #2 align 64 {
entry:
  %reg.i154 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  %reg.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.020.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #12
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i.i, align 2, !annotation !128
  %call.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1236, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 2, i32 noundef 100) #12
  %1 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg.i.i, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %tobool.not.i = icmp sgt i16 %3, -1
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 21474800) #12
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %do.body.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @___ratelimit(ptr noundef nonnull @rt2500usb_regbusy_read._rs, ptr noundef nonnull @__func__.rt2500usb_regbusy_read) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.if.end_crit_edge, label %do.end.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv3.i.le = zext i16 %3 to i32
  %hw.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rt2500usb_regbusy_read, i32 noundef 1236, i32 noundef %conv3.i.le) #15
  br label %if.end

if.then:                                          ; preds = %for.body.i
  %conv23 = trunc i32 %value to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %9 = call i16 @llvm.bswap.i16(i16 %conv23) #12
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %reg.i, align 2
  %call.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1234, ptr noundef nonnull %reg.i, i16 noundef zeroext 2, i32 noundef 100) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %shr = lshr i32 %value, 16
  %11 = trunc i32 %shr to i16
  %conv55 = and i16 %11, 255
  %12 = or i16 %conv55, -27648
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i154) #12
  %13 = call i16 @llvm.bswap.i16(i16 %12) #12
  %14 = ptrtoint ptr %reg.i154 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %reg.i154, align 2
  %call.i155 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1236, ptr noundef nonnull %reg.i154, i16 noundef zeroext 2, i32 noundef 100) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i154) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word)
  %cmp.i = icmp eq i32 %word, 0
  br i1 %cmp.i, label %if.then.do.body3.i_crit_edge, label %lor.rhs.i, !prof !129

if.then.do.body3.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i

lor.rhs.i:                                        ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %rf_size.i = getelementptr inbounds %struct.rt2x00_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %rf_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rf_size.i, align 4
  %div10.i = lshr i32 %18, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i, i32 %word)
  %cmp1.i = icmp ult i32 %div10.i, %word
  br i1 %cmp1.i, label %lor.rhs.i.do.body3.i_crit_edge, label %rt2x00_rf_write.exit, !prof !129

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %if.then.do.body3.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

rt2x00_rf_write.exit:                             ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %rf.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %19 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rf.i, align 4
  %sub.i = add i32 %word, -1
  %arrayidx.i = getelementptr i32, ptr %20, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %value, ptr %arrayidx.i, align 4
  br label %if.end

if.end:                                           ; preds = %rt2x00_rf_write.exit, %do.end.i, %do.body.i.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00_rf_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word)
  %cmp = icmp eq i32 %word, 0
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !129

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end6, !prof !129

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #12, !srcloc !133
  unreachable

do.end6:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
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
declare dso_local i32 @rt2x00mac_set_tim(ptr noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_start(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_complete(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_get_stats(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #0

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rt2500usb_register_read(ptr noundef %rt2x00dev, i32 noundef %offset) #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !128
  %conv.i = trunc i32 %offset to i16
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %conv.i, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg.i, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rt2500usb_register_write(ptr noundef %rt2x00dev, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %value to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #12
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv) #12
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %reg.i, align 2
  %conv.i = trunc i32 %offset to i16
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, ptr noundef nonnull %reg.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__param_nohwcrypt, !1, !"__param_nohwcrypt", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_nohwcrypttype368, !1, !"__UNIQUE_ID_nohwcrypttype368", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nohwcrypt369, !4, !"__UNIQUE_ID_nohwcrypt369", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 30, i32 1}
!5 = !{ptr @__UNIQUE_ID_author576, !6, !"__UNIQUE_ID_author576", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1956, i32 1}
!7 = !{ptr @__UNIQUE_ID_version577, !8, !"__UNIQUE_ID_version577", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1957, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description578, !14, !"__UNIQUE_ID_description578", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1958, i32 1}
!15 = !{ptr @__UNIQUE_ID_file579, !16, !"__UNIQUE_ID_file579", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1960, i32 1}
!17 = !{ptr @__UNIQUE_ID_license580, !16, !"__UNIQUE_ID_license580", i1 false, i1 false}
!18 = !{ptr @__initcall__kmod_rt2500usb__581_1979_rt2500usb_driver_init6, !19, !"__initcall__kmod_rt2500usb__581_1979_rt2500usb_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1979, i32 1}
!20 = !{ptr @__exitcall_rt2500usb_driver_exit, !19, !"__exitcall_rt2500usb_driver_exit", i1 false, i1 false}
!21 = !{ptr @modparam_nohwcrypt, !22, !"modparam_nohwcrypt", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 28, i32 13}
!23 = !{ptr @__param_str_nohwcrypt, !1, !"__param_str_nohwcrypt", i1 false, i1 false}
!24 = !{ptr @rt2500usb_driver, !25, !"rt2500usb_driver", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1968, i32 26}
!26 = !{ptr @rt2500usb_ops, !27, !"rt2500usb_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1886, i32 32}
!28 = !{ptr @rt2500usb_rt2x00_ops, !29, !"rt2500usb_rt2x00_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1819, i32 35}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1344, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug544, !31, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1353, i32 3}
!37 = !{ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug548, !36, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1361, i32 3}
!40 = !{ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug550, !39, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1369, i32 3}
!43 = !{ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug552, !42, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1384, i32 3}
!46 = !{ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug555, !45, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1395, i32 3}
!49 = !{ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug559, !48, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1403, i32 3}
!52 = !{ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug562, !51, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1411, i32 3}
!55 = !{ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug565, !54, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1419, i32 3}
!58 = !{ptr @rt2500usb_validate_eeprom.__UNIQUE_ID_ddebug568, !57, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 110, i32 2}
!61 = !{ptr @rt2500usb_regbusy_read._rs, !60, !"_rs", i1 false, i1 false}
!62 = !{ptr @__func__.rt2500usb_regbusy_read, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rt2500usb_regbusy_read._entry, !60, !"_entry", i1 false, i1 false}
!67 = !{ptr @rt2500usb_regbusy_read._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @rt2500usb_init_eeprom._rs, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1444, i32 3}
!70 = !{ptr @__func__.rt2500usb_init_eeprom, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rt2500usb_init_eeprom._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @rt2500usb_init_eeprom._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @rt2500usb_init_eeprom._rs.19, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1454, i32 3}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rt2500usb_init_eeprom._entry.20, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @rt2500usb_init_eeprom._entry_ptr.22, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00.h", i32 1107, i32 2}
!81 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rt2x00_set_chip._entry, !80, !"_entry", i1 false, i1 false}
!85 = !{ptr @rt2x00_set_chip._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @rf_vals_bg_2522, !87, !"rf_vals_bg_2522", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1511, i32 32}
!88 = !{ptr @rf_vals_bg_2523, !89, !"rf_vals_bg_2523", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1532, i32 32}
!90 = !{ptr @rf_vals_bg_2524, !91, !"rf_vals_bg_2524", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1553, i32 32}
!92 = !{ptr @rf_vals_bg_2525, !93, !"rf_vals_bg_2525", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1574, i32 32}
!94 = !{ptr @rf_vals_bg_2525e, !95, !"rf_vals_bg_2525e", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1595, i32 32}
!96 = !{ptr @rf_vals_5222, !97, !"rf_vals_5222", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1616, i32 32}
!98 = !{ptr @rt2500usb_set_device_state._rs, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1047, i32 3}
!100 = !{ptr @__func__.rt2500usb_set_device_state, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rt2500usb_set_device_state._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @rt2500usb_set_device_state._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @rt2500usb_wait_bbp_ready._rs, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 894, i32 2}
!106 = !{ptr @__func__.rt2500usb_wait_bbp_ready, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.28, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rt2500usb_wait_bbp_ready._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @rt2500usb_wait_bbp_ready._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @rt2500usb_config_channel.vals, !111, !"vals", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 594, i32 20}
!112 = !{ptr @rt2500usb_mac80211_ops, !113, !"rt2500usb_mac80211_ops", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1796, i32 35}
!114 = !{ptr @rt2500usb_rt2x00debug, !115, !"rt2500usb_rt2x00debug", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 222, i32 33}
!116 = !{ptr @rt2500usb_device_table, !117, !"rt2500usb_device_table", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2500usb.c", i32 1903, i32 35}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2160973414, i64 2160973926, i64 2160973451, i64 2160973507, i64 2160973541, i64 2160973565, i64 2160973606, i64 2160973627, i64 2160973655, i64 2160973689}
!128 = !{!"auto-init"}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i8 0, i8 2}
!131 = !{i32 0, i32 33}
!132 = !{i64 2158371323, i64 2158371834, i64 2158371360, i64 2158371416, i64 2158371450, i64 2158371474, i64 2158371515, i64 2158371536, i64 2158371564, i64 2158371598}
!133 = !{i64 2157747133, i64 2157747642, i64 2157747170, i64 2157747226, i64 2157747260, i64 2157747284, i64 2157747325, i64 2157747346, i64 2157747374, i64 2157747408}
!134 = !{i64 2148816484, i64 2148816489, i64 2148816502, i64 2148816546, i64 2148816580, i64 2148816601}
!135 = !{i64 2157749045, i64 2157749554, i64 2157749082, i64 2157749138, i64 2157749172, i64 2157749196, i64 2157749237, i64 2157749258, i64 2157749286, i64 2157749320}
