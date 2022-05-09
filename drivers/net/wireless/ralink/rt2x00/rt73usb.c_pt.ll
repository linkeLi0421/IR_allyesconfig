; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt73usb.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt73usb.c"
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.antenna_sel = type { i8, [2 x i8] }
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
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }
%struct.hw_key_entry = type { [16 x i8], [8 x i8], [8 x i8] }
%struct.rt2x00lib_crypto = type { i32, i32, ptr, i32, [16 x i8], [8 x i8], [8 x i8], i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.hw_pairwise_ta_entry = type { [6 x i8], i8, i8 }
%struct.rt2x00intf_conf = type { i32, i32, [2 x i32], [2 x i32] }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.rt2x00lib_conf = type { ptr, %struct.rf_channel, %struct.channel_info }

@__param_str_nohwcrypt = internal constant [18 x i8] c"rt73usb.nohwcrypt\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_nohwcrypt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype368 = internal constant [32 x i8] c"rt73usb.parmtype=nohwcrypt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt369 = internal constant [52 x i8] c"rt73usb.parm=nohwcrypt:Disable hardware encryption.\00", section ".modinfo", align 1
@__UNIQUE_ID_author630 = internal constant [46 x i8] c"rt73usb.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version631 = internal constant [22 x i8] c"rt73usb.version=2.3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt73usb\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description632 = internal constant [57 x i8] c"rt73usb.description=Ralink RT73 USB Wireless LAN driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware633 = internal constant [26 x i8] c"rt73usb.firmware=rt73.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_file634 = internal constant [56 x i8] c"rt73usb.file=drivers/net/wireless/ralink/rt2x00/rt73usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license635 = internal constant [20 x i8] c"rt73usb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rt73usb__636_2537_rt73usb_driver_init6 = internal global ptr @rt73usb_driver_init, section ".initcall6.init", align 4
@rt73usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @rt73usb_probe, ptr @rt2x00usb_disconnect, ptr null, ptr @rt2x00usb_suspend, ptr @rt2x00usb_resume, ptr @rt2x00usb_resume, ptr null, ptr null, ptr @rt73usb_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rt73usb_driver_exit = internal global ptr @rt73usb_driver_exit, section ".exitcall.exit", align 4
@rt73usb_device_table = internal constant { [76 x %struct.usb_device_id], [448 x i8] } { [76 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1976, i16 -19941, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 -19940, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 -19939, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 -19938, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 -19937, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 -28639, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3760, i16 -28639, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6341, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1826, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5923, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5924, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 28752, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 28762, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -28581, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -28580, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5681, i16 -16359, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2269, i16 288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 217, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 230, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 244, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 311, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6029, i16 702, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4977, i16 -28638, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4977, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15394, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 46, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15364, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15366, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 29464, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 14081, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5545, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32758, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5234, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 -8190, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 -8176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 -8160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 40, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 17920, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 26743, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 26740, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -22431, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -22412, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 29464, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 9587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 9841, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2066, i16 12545, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6376, i16 24982, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6376, i16 25129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6376, i16 25144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1256, i16 17521, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 28928, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 36, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 47, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 -28500, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 -26862, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1897, i16 12787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 26931, i16 20481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8202, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -21759, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -21680, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29031, i16 14400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 28, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13333, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [448 x i8] zeroinitializer }, align 32
@rt73usb_ops = internal constant { %struct.rt2x00_ops, [52 x i8] } { %struct.rt2x00_ops { ptr @.str.1, i32 0, i32 4, i32 256, i32 16, i32 4, ptr @rt73usb_queue_init, ptr @rt73usb_rt2x00_ops, ptr null, ptr @rt73usb_mac80211_ops, ptr @rt73usb_rt2x00debug }, [52 x i8] zeroinitializer }, align 32
@rt73usb_rt2x00_ops = internal constant { %struct.rt2x00lib_ops, [52 x i8] } { %struct.rt2x00lib_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt73usb_probe_hw, ptr @rt73usb_get_firmware_name, ptr @rt73usb_check_firmware, ptr @rt73usb_load_firmware, ptr @rt2x00usb_initialize, ptr @rt2x00usb_uninitialize, ptr null, ptr @rt2x00usb_clear_entry, ptr @rt73usb_set_device_state, ptr @rt73usb_rfkill_poll, ptr @rt73usb_link_stats, ptr @rt73usb_reset_tuner, ptr @rt73usb_link_tuner, ptr null, ptr null, ptr @rt2x00usb_watchdog, ptr @rt73usb_start_queue, ptr @rt2x00usb_kick_queue, ptr @rt73usb_stop_queue, ptr @rt2x00usb_flush_queue, ptr null, ptr @rt73usb_write_tx_desc, ptr null, ptr @rt73usb_write_beacon, ptr @rt73usb_clear_beacon, ptr @rt73usb_get_tx_data_len, ptr @rt73usb_fill_rxdone, ptr @rt73usb_config_shared_key, ptr @rt73usb_config_pairwise_key, ptr @rt73usb_config_filter, ptr @rt73usb_config_intf, ptr @rt73usb_config_erp, ptr @rt73usb_config_ant, ptr @rt73usb_config, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rt73usb_mac80211_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rt2x00mac_tx, ptr @rt2x00mac_start, ptr @rt2x00mac_stop, ptr null, ptr null, ptr null, ptr @rt2x00mac_add_interface, ptr null, ptr @rt2x00mac_remove_interface, ptr @rt2x00mac_config, ptr @rt2x00mac_bss_info_changed, ptr null, ptr null, ptr null, ptr @rt2x00mac_configure_filter, ptr null, ptr @rt2x00mac_set_tim, ptr @rt2x00mac_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_sw_scan_start, ptr @rt2x00mac_sw_scan_complete, ptr @rt2x00mac_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt73usb_conf_tx, ptr @rt73usb_get_tsf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_rfkill_poll, ptr null, ptr null, ptr null, ptr @rt2x00mac_flush, ptr null, ptr @rt2x00mac_set_antenna, ptr @rt2x00mac_get_antenna, ptr null, ptr null, ptr null, ptr @rt2x00mac_get_ringparam, ptr @rt2x00mac_tx_frames_pending, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@rt73usb_rt2x00debug = internal constant { %struct.rt2x00debug, [36 x i8] } { %struct.rt2x00debug { ptr null, %struct.regcsr { ptr @rt2x00usb_register_read, ptr @rt2x00usb_register_write, i32 1, i32 12288, i32 4, i32 300 }, %struct.regeeprom { ptr @rt2x00_eeprom_read, ptr @rt2x00_eeprom_write, i32 0, i32 0, i32 2, i32 128 }, %struct.regbbp { ptr @rt73usb_bbp_read, ptr @rt73usb_bbp_write, i32 0, i32 0, i32 1, i32 128 }, %struct.regrf { ptr @rt2x00_rf_read, ptr @rt73usb_rf_write, i32 0, i32 4, i32 4, i32 4 }, %struct.regrfcsr zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@rt73usb_validate_eeprom.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt73usb_validate_eeprom\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/ralink/rt2x00/rt73usb.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: EEPROM recovery - Antenna: 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@rt73usb_validate_eeprom.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 1, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: EEPROM recovery - NIC: 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@rt73usb_validate_eeprom.__UNIQUE_ID_ddebug583 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 1, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: EEPROM recovery - Led: 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@rt73usb_validate_eeprom.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 1, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: EEPROM recovery - Freq: 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@rt73usb_validate_eeprom.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 1, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: EEPROM recovery - RSSI OFFSET BG: 0x%04x\0A\00", [50 x i8] zeroinitializer }, align 32
@rt73usb_validate_eeprom.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: EEPROM recovery - RSSI OFFSET A: 0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@rt73usb_init_eeprom._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt73usb_init_eeprom = private unnamed_addr constant [20 x i8] c"rt73usb_init_eeprom\00", align 1
@rt73usb_init_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.rt73usb_init_eeprom, ptr @.str.4, i32 1864, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error - Invalid RT chipset detected\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt73usb_init_eeprom._entry_ptr = internal global ptr @rt73usb_init_eeprom._entry, section ".printk_index", align 4
@rt73usb_init_eeprom._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt73usb_init_eeprom._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.rt73usb_init_eeprom, ptr @.str.4, i32 1872, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error - Invalid RF chipset detected\0A\00", [55 x i8] zeroinitializer }, align 32
@rt73usb_init_eeprom._entry_ptr.18 = internal global ptr @rt73usb_init_eeprom._entry.16, section ".printk_index", align 4
@rt2x00_set_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 1109, ptr @.str.22, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: Info - Chipset detected - rt: %04x, rf: %04x, rev: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt2x00_set_chip\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt2x00_set_chip._entry_ptr = internal global ptr @rt2x00_set_chip._entry, section ".printk_index", align 4
@rf_vals_bg_2528 = internal constant { [14 x %struct.rf_channel], [72 x i8] } { [14 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 11276, i32 1926, i32 426581, i32 1042955 }, %struct.rf_channel { i32 2, i32 11276, i32 1926, i32 426581, i32 1042975 }, %struct.rf_channel { i32 3, i32 11276, i32 1930, i32 426581, i32 1042955 }, %struct.rf_channel { i32 4, i32 11276, i32 1930, i32 426581, i32 1042975 }, %struct.rf_channel { i32 5, i32 11276, i32 1934, i32 426581, i32 1042955 }, %struct.rf_channel { i32 6, i32 11276, i32 1934, i32 426581, i32 1042975 }, %struct.rf_channel { i32 7, i32 11276, i32 1938, i32 426581, i32 1042955 }, %struct.rf_channel { i32 8, i32 11276, i32 1938, i32 426581, i32 1042975 }, %struct.rf_channel { i32 9, i32 11276, i32 1942, i32 426581, i32 1042955 }, %struct.rf_channel { i32 10, i32 11276, i32 1942, i32 426581, i32 1042975 }, %struct.rf_channel { i32 11, i32 11276, i32 1946, i32 426581, i32 1042955 }, %struct.rf_channel { i32 12, i32 11276, i32 1946, i32 426581, i32 1042975 }, %struct.rf_channel { i32 13, i32 11276, i32 1950, i32 426581, i32 1042955 }, %struct.rf_channel { i32 14, i32 11276, i32 1954, i32 426581, i32 1042963 }], [72 x i8] zeroinitializer }, align 32
@rf_vals_5226 = internal constant { [42 x %struct.rf_channel], [216 x i8] } { [42 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 11276, i32 1926, i32 426581, i32 1042955 }, %struct.rf_channel { i32 2, i32 11276, i32 1926, i32 426581, i32 1042975 }, %struct.rf_channel { i32 3, i32 11276, i32 1930, i32 426581, i32 1042955 }, %struct.rf_channel { i32 4, i32 11276, i32 1930, i32 426581, i32 1042975 }, %struct.rf_channel { i32 5, i32 11276, i32 1934, i32 426581, i32 1042955 }, %struct.rf_channel { i32 6, i32 11276, i32 1934, i32 426581, i32 1042975 }, %struct.rf_channel { i32 7, i32 11276, i32 1938, i32 426581, i32 1042955 }, %struct.rf_channel { i32 8, i32 11276, i32 1938, i32 426581, i32 1042975 }, %struct.rf_channel { i32 9, i32 11276, i32 1942, i32 426581, i32 1042955 }, %struct.rf_channel { i32 10, i32 11276, i32 1942, i32 426581, i32 1042975 }, %struct.rf_channel { i32 11, i32 11276, i32 1946, i32 426581, i32 1042955 }, %struct.rf_channel { i32 12, i32 11276, i32 1946, i32 426581, i32 1042975 }, %struct.rf_channel { i32 13, i32 11276, i32 1950, i32 426581, i32 1042955 }, %struct.rf_channel { i32 14, i32 11276, i32 1954, i32 426581, i32 1042963 }, %struct.rf_channel { i32 36, i32 11276, i32 2458, i32 623189, i32 1042979 }, %struct.rf_channel { i32 40, i32 11276, i32 2466, i32 623189, i32 1042947 }, %struct.rf_channel { i32 44, i32 11276, i32 2470, i32 623189, i32 1042955 }, %struct.rf_channel { i32 48, i32 11276, i32 2474, i32 623189, i32 1042963 }, %struct.rf_channel { i32 52, i32 11276, i32 2478, i32 623189, i32 1042971 }, %struct.rf_channel { i32 56, i32 11276, i32 2482, i32 623189, i32 1042979 }, %struct.rf_channel { i32 60, i32 11276, i32 2490, i32 623189, i32 1042947 }, %struct.rf_channel { i32 64, i32 11276, i32 2494, i32 623189, i32 1042955 }, %struct.rf_channel { i32 100, i32 11276, i32 2602, i32 754261, i32 1042947 }, %struct.rf_channel { i32 104, i32 11276, i32 2606, i32 754261, i32 1042955 }, %struct.rf_channel { i32 108, i32 11276, i32 2610, i32 754261, i32 1042963 }, %struct.rf_channel { i32 112, i32 11276, i32 2614, i32 754261, i32 1042971 }, %struct.rf_channel { i32 116, i32 11276, i32 2618, i32 754261, i32 1042979 }, %struct.rf_channel { i32 120, i32 11276, i32 2690, i32 754261, i32 1042947 }, %struct.rf_channel { i32 124, i32 11276, i32 2694, i32 754261, i32 1042955 }, %struct.rf_channel { i32 128, i32 11276, i32 2698, i32 754261, i32 1042963 }, %struct.rf_channel { i32 132, i32 11276, i32 2702, i32 754261, i32 1042971 }, %struct.rf_channel { i32 136, i32 11276, i32 2706, i32 754261, i32 1042979 }, %struct.rf_channel { i32 140, i32 11276, i32 2714, i32 754261, i32 1042947 }, %struct.rf_channel { i32 149, i32 11276, i32 2722, i32 754261, i32 1042975 }, %struct.rf_channel { i32 153, i32 11276, i32 2726, i32 754261, i32 1042983 }, %struct.rf_channel { i32 157, i32 11276, i32 2734, i32 754261, i32 1042951 }, %struct.rf_channel { i32 161, i32 11276, i32 2738, i32 754261, i32 1042959 }, %struct.rf_channel { i32 165, i32 11276, i32 2742, i32 754261, i32 1042967 }, %struct.rf_channel { i32 34, i32 11276, i32 526746, i32 893525, i32 866827 }, %struct.rf_channel { i32 38, i32 11276, i32 526750, i32 893525, i32 866835 }, %struct.rf_channel { i32 42, i32 11276, i32 526754, i32 893525, i32 866843 }, %struct.rf_channel { i32 46, i32 11276, i32 526758, i32 893525, i32 866851 }], [216 x i8] zeroinitializer }, align 32
@rf_vals_5225_2527 = internal constant { [42 x %struct.rf_channel], [216 x i8] } { [42 x %struct.rf_channel] [%struct.rf_channel { i32 1, i32 11468, i32 18310, i32 427093, i32 1047051 }, %struct.rf_channel { i32 2, i32 11468, i32 18310, i32 427093, i32 1047071 }, %struct.rf_channel { i32 3, i32 11468, i32 18314, i32 427093, i32 1047051 }, %struct.rf_channel { i32 4, i32 11468, i32 18314, i32 427093, i32 1047071 }, %struct.rf_channel { i32 5, i32 11468, i32 18318, i32 427093, i32 1047051 }, %struct.rf_channel { i32 6, i32 11468, i32 18318, i32 427093, i32 1047071 }, %struct.rf_channel { i32 7, i32 11468, i32 18322, i32 427093, i32 1047051 }, %struct.rf_channel { i32 8, i32 11468, i32 18322, i32 427093, i32 1047071 }, %struct.rf_channel { i32 9, i32 11468, i32 18326, i32 427093, i32 1047051 }, %struct.rf_channel { i32 10, i32 11468, i32 18326, i32 427093, i32 1047071 }, %struct.rf_channel { i32 11, i32 11468, i32 18330, i32 427093, i32 1047051 }, %struct.rf_channel { i32 12, i32 11468, i32 18330, i32 427093, i32 1047071 }, %struct.rf_channel { i32 13, i32 11468, i32 18334, i32 427093, i32 1047051 }, %struct.rf_channel { i32 14, i32 11468, i32 18338, i32 427093, i32 1047059 }, %struct.rf_channel { i32 36, i32 11468, i32 18842, i32 638549, i32 1047075 }, %struct.rf_channel { i32 40, i32 11468, i32 18850, i32 638549, i32 1047043 }, %struct.rf_channel { i32 44, i32 11468, i32 18854, i32 638549, i32 1047051 }, %struct.rf_channel { i32 48, i32 11468, i32 18858, i32 638549, i32 1047059 }, %struct.rf_channel { i32 52, i32 11468, i32 18862, i32 634453, i32 1047067 }, %struct.rf_channel { i32 56, i32 11468, i32 18866, i32 634453, i32 1047075 }, %struct.rf_channel { i32 60, i32 11468, i32 18874, i32 634453, i32 1047043 }, %struct.rf_channel { i32 64, i32 11468, i32 18878, i32 634453, i32 1047051 }, %struct.rf_channel { i32 100, i32 11468, i32 18986, i32 765525, i32 1047043 }, %struct.rf_channel { i32 104, i32 11468, i32 18990, i32 765525, i32 1047051 }, %struct.rf_channel { i32 108, i32 11468, i32 18994, i32 765525, i32 1047059 }, %struct.rf_channel { i32 112, i32 11468, i32 18998, i32 765525, i32 1047067 }, %struct.rf_channel { i32 116, i32 11468, i32 19002, i32 769621, i32 1047075 }, %struct.rf_channel { i32 120, i32 11468, i32 19074, i32 769621, i32 1047043 }, %struct.rf_channel { i32 124, i32 11468, i32 19078, i32 769621, i32 1047051 }, %struct.rf_channel { i32 128, i32 11468, i32 19082, i32 769621, i32 1047059 }, %struct.rf_channel { i32 132, i32 11468, i32 19086, i32 769621, i32 1047067 }, %struct.rf_channel { i32 136, i32 11468, i32 19090, i32 769621, i32 1047075 }, %struct.rf_channel { i32 140, i32 11468, i32 19098, i32 769621, i32 1047043 }, %struct.rf_channel { i32 149, i32 11468, i32 19106, i32 769621, i32 1047071 }, %struct.rf_channel { i32 153, i32 11468, i32 19110, i32 769621, i32 1047079 }, %struct.rf_channel { i32 157, i32 11468, i32 19118, i32 769621, i32 1047047 }, %struct.rf_channel { i32 161, i32 11468, i32 19122, i32 769621, i32 1047055 }, %struct.rf_channel { i32 165, i32 11468, i32 19126, i32 769621, i32 1047063 }, %struct.rf_channel { i32 34, i32 11468, i32 18842, i32 638549, i32 1047051 }, %struct.rf_channel { i32 38, i32 11468, i32 18846, i32 638549, i32 1047059 }, %struct.rf_channel { i32 42, i32 11468, i32 18850, i32 638549, i32 1047067 }, %struct.rf_channel { i32 46, i32 11468, i32 18854, i32 638549, i32 1047075 }], [216 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt73.bin\00", [23 x i8] zeroinitializer }, align 32
@crc_itu_t_table = external dso_local local_unnamed_addr constant [256 x i16], align 2
@rt73usb_load_firmware._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt73usb_load_firmware = private unnamed_addr constant [22 x i8] c"rt73usb_load_firmware\00", align 1
@rt73usb_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.rt73usb_load_firmware, ptr @.str.4, i32 1114, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Error - Unstable hardware\0A\00", [33 x i8] zeroinitializer }, align 32
@rt73usb_load_firmware._entry_ptr = internal global ptr @rt73usb_load_firmware._entry, section ".printk_index", align 4
@rt73usb_load_firmware._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt73usb_load_firmware._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.rt73usb_load_firmware, ptr @.str.4, i32 1131, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Error - Failed to write Firmware to device\0A\00", [48 x i8] zeroinitializer }, align 32
@rt73usb_load_firmware._entry_ptr.28 = internal global ptr @rt73usb_load_firmware._entry.26, section ".printk_index", align 4
@rt73usb_set_device_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt73usb_set_device_state = private unnamed_addr constant [25 x i8] c"rt73usb_set_device_state\00", align 1
@rt73usb_set_device_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.rt73usb_set_device_state, ptr @.str.4, i32 1436, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - Device failed to enter state %d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@rt73usb_set_device_state._entry_ptr = internal global ptr @rt73usb_set_device_state._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt73usb_wait_bbp_ready._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt73usb_wait_bbp_ready = private unnamed_addr constant [23 x i8] c"rt73usb_wait_bbp_ready\00", align 1
@rt73usb_wait_bbp_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.rt73usb_wait_bbp_ready, ptr @.str.4, i32 1297, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - BBP register access failed, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@rt73usb_wait_bbp_ready._entry_ptr = internal global ptr @rt73usb_wait_bbp_ready._entry, section ".printk_index", align 4
@rt73usb_write_beacon._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt73usb_write_beacon = private unnamed_addr constant [21 x i8] c"rt73usb_write_beacon\00", align 1
@rt73usb_write_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.rt73usb_write_beacon, ptr @.str.4, i32 1559, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Error - Failure padding beacon, aborting\0A\00", [50 x i8] zeroinitializer }, align 32
@rt73usb_write_beacon._entry_ptr = internal global ptr @rt73usb_write_beacon._entry, section ".printk_index", align 4
@antenna_sel_a = internal constant { [8 x %struct.antenna_sel], [40 x i8] } { [8 x %struct.antenna_sel] [%struct.antenna_sel { i8 96, [2 x i8] c"Xx" }, %struct.antenna_sel { i8 104, [2 x i8] c"8H" }, %struct.antenna_sel { i8 75, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 86, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 88, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 35, [2 x i8] c"``" }, %struct.antenna_sel { i8 97, [2 x i8] c"XX" }, %struct.antenna_sel { i8 98, [2 x i8] c"XX" }], [40 x i8] zeroinitializer }, align 32
@antenna_sel_bg = internal constant { [8 x %struct.antenna_sel], [40 x i8] } { [8 x %struct.antenna_sel] [%struct.antenna_sel { i8 96, [2 x i8] c"Hh" }, %struct.antenna_sel { i8 104, [2 x i8] c",<" }, %struct.antenna_sel { i8 75, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 86, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 88, [2 x i8] c"\FE\80" }, %struct.antenna_sel { i8 35, [2 x i8] c"PP" }, %struct.antenna_sel { i8 97, [2 x i8] c"HH" }, %struct.antenna_sel { i8 98, [2 x i8] c"HH" }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 14, i64 16]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"modparam_nohwcrypt\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 29, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2514, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"rt73usb_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2526, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"rt73usb_device_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2399, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"rt73usb_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2382, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"rt73usb_rt2x00_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2316, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"rt73usb_mac80211_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2292, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"rt73usb_rt2x00debug\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 142, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1775, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1782, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1798, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1806, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1814, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1830, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1864, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1872, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [47 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1107, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [16 x i8] c"rf_vals_bg_2528\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1957, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"rf_vals_5226\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1978, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"rf_vals_5225_2527\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2035, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1064, i32 9 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1114, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1131, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1435, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1297, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1559, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"antenna_sel_a\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 662, i32 33 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"antenna_sel_bg\00", align 1
@___asan_gen_.206 = private constant [48 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt73usb.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 673, i32 33 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author630, ptr @__UNIQUE_ID_description632, ptr @__UNIQUE_ID_file634, ptr @__UNIQUE_ID_firmware633, ptr @__UNIQUE_ID_license635, ptr @__UNIQUE_ID_nohwcrypt369, ptr @__UNIQUE_ID_nohwcrypttype368, ptr @__UNIQUE_ID_version631, ptr @__exitcall_rt73usb_driver_exit, ptr @__initcall__kmod_rt73usb__636_2537_rt73usb_driver_init6, ptr @__modver_attr, ptr @__param_nohwcrypt, ptr @rt2x00_set_chip._entry, ptr @rt2x00_set_chip._entry_ptr, ptr @rt73usb_driver_exit, ptr @rt73usb_init_eeprom._entry, ptr @rt73usb_init_eeprom._entry.16, ptr @rt73usb_init_eeprom._entry_ptr, ptr @rt73usb_init_eeprom._entry_ptr.18, ptr @rt73usb_load_firmware._entry, ptr @rt73usb_load_firmware._entry.26, ptr @rt73usb_load_firmware._entry_ptr, ptr @rt73usb_load_firmware._entry_ptr.28, ptr @rt73usb_set_device_state._entry, ptr @rt73usb_set_device_state._entry_ptr, ptr @rt73usb_wait_bbp_ready._entry, ptr @rt73usb_wait_bbp_ready._entry_ptr, ptr @rt73usb_write_beacon._entry, ptr @rt73usb_write_beacon._entry_ptr, ptr @modparam_nohwcrypt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rt73usb_driver, ptr @rt73usb_device_table, ptr @rt73usb_ops, ptr @rt73usb_rt2x00_ops, ptr @rt73usb_mac80211_ops, ptr @rt73usb_rt2x00debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rt73usb_init_eeprom._rs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rt73usb_init_eeprom._rs.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @rf_vals_bg_2528, ptr @rf_vals_5226, ptr @rf_vals_5225_2527, ptr @.str.23, ptr @rt73usb_load_firmware._rs, ptr @.str.24, ptr @rt73usb_load_firmware._rs.25, ptr @.str.27, ptr @rt73usb_set_device_state._rs, ptr @.str.29, ptr @rt73usb_wait_bbp_ready._rs, ptr @.str.30, ptr @rt73usb_write_beacon._rs, ptr @.str.31, ptr @antenna_sel_a, ptr @antenna_sel_bg], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_nohwcrypt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_device_table to i32), i32 1824, i32 2272, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_rt2x00_ops to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_mac80211_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_rt2x00debug to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_init_eeprom._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_init_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_init_eeprom._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_init_eeprom._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00_set_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_bg_2528 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_5226 to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vals_5225_2527 to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_load_firmware._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_load_firmware._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_load_firmware._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_set_device_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_set_device_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_wait_bbp_ready._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_wait_bbp_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_write_beacon._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt73usb_write_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @antenna_sel_a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @antenna_sel_bg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rt73usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_deregister(ptr noundef nonnull @rt73usb_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_probe(ptr noundef %usb_intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rt2x00usb_probe(ptr noundef %usb_intf, ptr noundef nonnull @rt73usb_ops) #13
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
define internal void @rt73usb_queue_init(ptr nocapture noundef %queue) #2 align 64 {
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
    i32 0, label %entry.sw.epilog_crit_edge27
    i32 1, label %entry.sw.epilog_crit_edge28
    i32 2, label %entry.sw.epilog_crit_edge29
    i32 3, label %entry.sw.epilog_crit_edge30
    i32 16, label %sw.bb6
  ]

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt73usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2377, 0\0A.popsection", ""() #13, !srcloc !129
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge27, %entry.sw.epilog_crit_edge28, %entry.sw.epilog_crit_edge29, %entry.sw.epilog_crit_edge30
  %.sink26 = phi i16 [ 4, %sw.bb6 ], [ 32, %entry.sw.epilog_crit_edge ], [ 32, %entry.sw.epilog_crit_edge27 ], [ 32, %entry.sw.epilog_crit_edge28 ], [ 32, %entry.sw.epilog_crit_edge29 ], [ 32, %entry.sw.epilog_crit_edge30 ]
  %.sink = phi i16 [ 256, %sw.bb6 ], [ 2432, %entry.sw.epilog_crit_edge ], [ 2432, %entry.sw.epilog_crit_edge27 ], [ 2432, %entry.sw.epilog_crit_edge28 ], [ 2432, %entry.sw.epilog_crit_edge29 ], [ 2432, %entry.sw.epilog_crit_edge30 ]
  %limit7 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 8
  %3 = ptrtoint ptr %limit7 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %.sink26, ptr %limit7, align 4
  %data_size8 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 18
  %4 = ptrtoint ptr %data_size8 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink, ptr %data_size8, align 4
  %desc_size9 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 19
  %5 = ptrtoint ptr %desc_size9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 24, ptr %desc_size9, align 2
  %priv_size10 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 21
  %6 = ptrtoint ptr %priv_size10 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4, ptr %priv_size10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_probe_hw(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  %reg.i53 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rt73usb_validate_eeprom(ptr noundef %rt2x00dev)
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %6 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reg.i.i, align 4
  %call.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12288, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 4) #13
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg.i.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %and23.i = lshr i32 %9, 4
  %conv31.i = trunc i32 %and23.i to i16
  %10 = trunc i32 %9 to i16
  %conv52.i = and i16 %10, 15
  %chip.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17
  %11 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv31.i, ptr %chip.i.i, align 8
  %rf3.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %5, ptr %rf3.i.i, align 2
  %rev5.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 2
  %13 = ptrtoint ptr %rev5.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv52.i, ptr %rev5.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %14 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  %conv.i.i = and i32 %and23.i, 65535
  %conv10.i.i = zext i16 %5 to i32
  %conv13.i.i = zext i16 %conv52.i to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %conv.i.i, i32 noundef %conv10.i.i, i32 noundef %conv13.i.i) #16
  %18 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %chip.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9587, i16 %19)
  %cmp.i.i = icmp eq i16 %19, 9587
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %entry.do.body58.i_crit_edge

entry.do.body58.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body58.i

lor.lhs.false.i:                                  ; preds = %entry
  %20 = ptrtoint ptr %rev5.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rev5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp56.i = icmp eq i16 %21, 0
  br i1 %cmp56.i, label %lor.lhs.false.i.do.body58.i_crit_edge, label %if.end66.i

lor.lhs.false.i.do.body58.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body58.i

do.body58.i:                                      ; preds = %lor.lhs.false.i.do.body58.i_crit_edge, %entry.do.body58.i_crit_edge
  %call59.i = call i32 @___ratelimit(ptr noundef nonnull @rt73usb_init_eeprom._rs, ptr noundef nonnull @__func__.rt73usb_init_eeprom) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool.not.i, label %do.body58.i.cleanup_crit_edge, label %do.end63.i

do.body58.i.cleanup_crit_edge:                    ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end63.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rt73usb_init_eeprom) #16
  br label %cleanup

if.end66.i:                                       ; preds = %lor.lhs.false.i
  %26 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rf3.i.i, align 2
  %.off.i = add i16 %27, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 4
  br i1 %switch.i, label %if.end87.i, label %do.body74.i

do.body74.i:                                      ; preds = %if.end66.i
  %call75.i = call i32 @___ratelimit(ptr noundef nonnull @rt73usb_init_eeprom._rs.15, ptr noundef nonnull @__func__.rt73usb_init_eeprom) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %do.body74.i.cleanup_crit_edge, label %do.end80.i

do.body74.i.cleanup_crit_edge:                    ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end80.i:                                       ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i.i, align 4
  %wiphy82.i = getelementptr inbounds %struct.ieee80211_hw, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wiphy82.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wiphy82.i, align 8
  %dev83.i = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rt73usb_init_eeprom) #16
  br label %cleanup

if.end87.i:                                       ; preds = %if.end66.i
  %and101.i = lshr i32 %conv2.i, 2
  %32 = and i32 %and101.i, 3
  %default_ant.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19
  %tx.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tx.i, align 4
  %and122.i = lshr i32 %conv2.i, 4
  %34 = and i32 %and122.i, 3
  %35 = ptrtoint ptr %default_ant.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %default_ant.i, align 8
  %36 = and i32 %conv2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool152.not.i = icmp eq i32 %36, 0
  br i1 %tobool152.not.i, label %if.end87.i.if.end154.i_crit_edge, label %if.then153.i

if.end87.i.if.end154.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154.i

if.then153.i:                                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %37 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cap_flags.i, align 4
  %or.i.i = or i32 %38, 524288
  store i32 %or.i.i, ptr %cap_flags.i, align 4
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.then153.i, %if.end87.i.if.end154.i_crit_edge
  %39 = and i32 %conv2.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool176.not.i = icmp eq i32 %39, 0
  br i1 %tobool176.not.i, label %if.end154.i.if.end179.i_crit_edge, label %if.then177.i

if.end154.i.if.end179.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end179.i

if.then177.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags178.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %40 = ptrtoint ptr %cap_flags178.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cap_flags178.i, align 4
  %or.i774.i = or i32 %41, 4096
  store i32 %or.i774.i, ptr %cap_flags178.i, align 4
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.then177.i, %if.end154.i.if.end179.i_crit_edge
  %42 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i786.i = getelementptr i16, ptr %43, i32 47
  %44 = ptrtoint ptr %arrayidx.i786.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i786.i, align 2
  %46 = lshr i16 %45, 8
  %conv202.i = trunc i16 %46 to i8
  %freq_offset.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 38
  %47 = ptrtoint ptr %freq_offset.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv202.i, ptr %freq_offset.i, align 1
  %arrayidx.i788.i = getelementptr i16, ptr %43, i32 17
  %48 = ptrtoint ptr %arrayidx.i788.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i788.i, align 2
  %50 = and i16 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool225.not.i = icmp eq i16 %50, 0
  br i1 %tobool225.not.i, label %if.end179.i.if.end229.i_crit_edge, label %if.then226.i

if.end179.i.if.end229.i_crit_edge:                ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229.i

if.then226.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags227.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %51 = ptrtoint ptr %cap_flags227.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cap_flags227.i, align 4
  %or.i776.i = or i32 %52, 6291456
  store i32 %or.i776.i, ptr %cap_flags227.i, align 4
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.then226.i, %if.end179.i.if.end229.i_crit_edge
  %arrayidx.i790.i = getelementptr i16, ptr %43, i32 48
  %53 = ptrtoint ptr %arrayidx.i790.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i790.i, align 2
  %55 = call i16 @llvm.bswap.i16(i16 %54) #13
  %led_radio.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9
  %56 = ptrtoint ptr %led_radio.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %rt2x00dev, ptr %led_radio.i, align 4
  %type2.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 2
  %57 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %type2.i.i, align 4
  %brightness_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 5
  %58 = ptrtoint ptr %brightness_set.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @rt73usb_brightness_set, ptr %brightness_set.i.i, align 4
  %blink_set.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 8
  %59 = ptrtoint ptr %blink_set.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @rt73usb_blink_set, ptr %blink_set.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %60 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %flags.i.i, align 4
  %led_assoc.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10
  %61 = ptrtoint ptr %led_assoc.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %rt2x00dev, ptr %led_assoc.i, align 4
  %type2.i791.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 2
  %62 = ptrtoint ptr %type2.i791.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type2.i791.i, align 4
  %brightness_set.i792.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 5
  %63 = ptrtoint ptr %brightness_set.i792.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @rt73usb_brightness_set, ptr %brightness_set.i792.i, align 4
  %blink_set.i793.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 8
  %64 = ptrtoint ptr %blink_set.i793.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @rt73usb_blink_set, ptr %blink_set.i793.i, align 4
  %flags.i794.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 3
  %65 = ptrtoint ptr %flags.i794.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %flags.i794.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp232.i = icmp eq i16 %5, 2
  br i1 %cmp232.i, label %if.then234.i, label %if.end229.i.if.end5_crit_edge

if.end229.i.if.end5_crit_edge:                    ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then234.i:                                     ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #15
  %led_qual.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11
  %66 = ptrtoint ptr %led_qual.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %rt2x00dev, ptr %led_qual.i, align 4
  %type2.i795.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 2
  %67 = ptrtoint ptr %type2.i795.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %type2.i795.i, align 4
  %brightness_set.i796.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %68 = ptrtoint ptr %brightness_set.i796.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @rt73usb_brightness_set, ptr %brightness_set.i796.i, align 4
  %blink_set.i797.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 8
  %69 = ptrtoint ptr %blink_set.i797.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @rt73usb_blink_set, ptr %blink_set.i797.i, align 4
  %flags.i798.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %70 = ptrtoint ptr %flags.i798.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %flags.i798.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then234.i, %if.end229.i.if.end5_crit_edge
  %led_mcu_reg.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 12
  %71 = ptrtoint ptr %led_mcu_reg.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %led_mcu_reg.i, align 4
  %73 = and i16 %72, 224
  %74 = shl i16 %55, 5
  %shl311.i = and i16 %74, 256
  %shl366.i = and i16 %74, 512
  %shl421.i = and i16 %74, 1024
  %shl476.i = and i16 %74, 2048
  %shl531.i = and i16 %74, 4096
  %75 = shl i16 %55, 11
  %shl586.i = and i16 %75, 8192
  %and627.i = shl i16 %55, 14
  %or771.i = or i16 %and627.i, %5
  %or321.i = or i16 %or771.i, %shl311.i
  %or376.i = or i16 %or321.i, %shl366.i
  %or431.i = or i16 %or376.i, %shl421.i
  %.masked.masked.masked.i = or i16 %or431.i, %shl476.i
  %.masked772.masked.i = or i16 %.masked.masked.masked.i, %shl531.i
  %76 = or i16 %.masked772.masked.i, %shl586.i
  %or706773.i = or i16 %76, %73
  store i16 %or706773.i, ptr %led_mcu_reg.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %77 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12340, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %78 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %80 = and i32 %79, -8388609
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i53) #13
  %81 = ptrtoint ptr %reg.i53 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %reg.i53, align 4
  %call.i54 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12340, ptr noundef nonnull %reg.i53, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i53) #13
  %spec1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18
  %82 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw.i.i, align 4
  %flags.i.i55 = getelementptr inbounds %struct.ieee80211_hw, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %flags.i.i55 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i.i55, align 4
  %or.i.i.i = or i32 %85, 512
  store i32 %or.i.i.i, ptr %flags.i.i55, align 4
  %86 = load ptr, ptr %hw.i.i, align 4
  %flags.i120.i = getelementptr inbounds %struct.ieee80211_hw, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %flags.i120.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i120.i, align 4
  %or.i.i121.i = or i32 %88, 16
  store i32 %or.i.i121.i, ptr %flags.i120.i, align 4
  %89 = load ptr, ptr %hw.i.i, align 4
  %flags.i122.i = getelementptr inbounds %struct.ieee80211_hw, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %flags.i122.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i122.i, align 4
  %or.i.i123.i = or i32 %91, 256
  store i32 %or.i.i123.i, ptr %flags.i122.i, align 4
  %92 = load ptr, ptr %hw.i.i, align 4
  %93 = ptrtoint ptr %rt2x00dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rt2x00dev, align 8
  %wiphy.i.i56 = getelementptr inbounds %struct.ieee80211_hw, ptr %92, i32 0, i32 1
  %95 = ptrtoint ptr %wiphy.i.i56 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wiphy.i.i56, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 56, i32 1
  %97 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %parent.i.i.i, align 8
  %98 = load ptr, ptr %hw.i.i, align 4
  %99 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i.i58 = getelementptr i16, ptr %100, i32 2
  %wiphy.i124.i = getelementptr inbounds %struct.ieee80211_hw, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %wiphy.i124.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wiphy.i124.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %102, i32 0, i32 1
  %103 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %arrayidx.i.i58, i32 6)
  %104 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %spec1.i, align 4
  %supported_rates.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 1
  %105 = ptrtoint ptr %supported_rates.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3, ptr %supported_rates.i, align 4
  %106 = ptrtoint ptr %rf3.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %rf3.i.i, align 2
  %108 = zext i16 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %107, label %if.end5.if.end26.i_crit_edge [
    i16 2, label %if.end5.if.end26.sink.split.i_crit_edge
    i16 1, label %if.then8.i
    i16 4, label %if.then14.i
    i16 3, label %if.then19.i
  ]

if.end5.if.end26.sink.split.i_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.sink.split.i

if.end5.if.end26.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then8.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 3, ptr %spec1.i, align 4
  br label %if.end26.sink.split.i

if.then14.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.sink.split.i

if.then19.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 3, ptr %spec1.i, align 4
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %if.then19.i, %if.then14.i, %if.then8.i, %if.end5.if.end26.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 42, %if.then8.i ], [ 42, %if.then19.i ], [ 14, %if.then14.i ], [ 14, %if.end5.if.end26.sink.split.i_crit_edge ]
  %rf_vals_5226.sink.i = phi ptr [ @rf_vals_5226, %if.then8.i ], [ @rf_vals_5225_2527, %if.then19.i ], [ @rf_vals_5225_2527, %if.then14.i ], [ @rf_vals_bg_2528, %if.end5.if.end26.sink.split.i_crit_edge ]
  %num_channels10.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 2
  %111 = ptrtoint ptr %num_channels10.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %.sink.i, ptr %num_channels10.i, align 4
  %channels11.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 3
  %112 = ptrtoint ptr %channels11.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %rf_vals_5226.sink.i, ptr %channels11.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.sink.split.i, %if.end5.if.end26.i_crit_edge
  %num_channels27.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 2
  %113 = ptrtoint ptr %num_channels27.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_channels27.i, align 4
  %115 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %114, i32 12) #13
  %116 = extractvalue { i32, i1 } %115, 1
  br i1 %116, label %if.end26.i.cleanup_crit_edge, label %if.end7.i.i.i, !prof !130

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end26.i
  %117 = extractvalue { i32, i1 } %115, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %117, i32 noundef 3520) #17
  %tobool.not.i59 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i59, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end30.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30.i:                                       ; preds = %if.end7.i.i.i
  %channels_info.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 4
  %118 = ptrtoint ptr %channels_info.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call8.i.i.i, ptr %channels_info.i, align 4
  %119 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i132.i = getelementptr i16, ptr %120, i32 35
  %max_power.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 31, ptr %max_power.i, align 4
  %122 = ptrtoint ptr %arrayidx.i132.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i132.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %123)
  %cmp33.i = icmp ugt i8 %123, 31
  %narrow141.i = select i1 %cmp33.i, i8 24, i8 %123
  %spec.select.i = zext i8 %narrow141.i to i16
  %default_power1.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %default_power1.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %spec.select.i, ptr %default_power1.i, align 2
  %max_power.1.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 1, i32 1
  %125 = ptrtoint ptr %max_power.1.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 31, ptr %max_power.1.i, align 16
  %arrayidx32.1.i = getelementptr i8, ptr %arrayidx.i132.i, i32 1
  %126 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx32.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %127)
  %cmp33.1.i = icmp ugt i8 %127, 31
  %narrow141.1.i = select i1 %cmp33.1.i, i8 24, i8 %127
  %spec.select.1.i = zext i8 %narrow141.1.i to i16
  %default_power1.1.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 1, i32 2
  %128 = ptrtoint ptr %default_power1.1.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %spec.select.1.i, ptr %default_power1.1.i, align 2
  %max_power.2.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 2, i32 1
  %129 = ptrtoint ptr %max_power.2.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 31, ptr %max_power.2.i, align 4
  %arrayidx32.2.i = getelementptr i16, ptr %120, i32 36
  %130 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx32.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %131)
  %cmp33.2.i = icmp ugt i8 %131, 31
  %narrow141.2.i = select i1 %cmp33.2.i, i8 24, i8 %131
  %spec.select.2.i = zext i8 %narrow141.2.i to i16
  %default_power1.2.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 2, i32 2
  %132 = ptrtoint ptr %default_power1.2.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %spec.select.2.i, ptr %default_power1.2.i, align 2
  %max_power.3.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 3, i32 1
  %133 = ptrtoint ptr %max_power.3.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 31, ptr %max_power.3.i, align 8
  %arrayidx32.3.i = getelementptr i8, ptr %arrayidx.i132.i, i32 3
  %134 = ptrtoint ptr %arrayidx32.3.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx32.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %135)
  %cmp33.3.i = icmp ugt i8 %135, 31
  %narrow141.3.i = select i1 %cmp33.3.i, i8 24, i8 %135
  %spec.select.3.i = zext i8 %narrow141.3.i to i16
  %default_power1.3.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 3, i32 2
  %136 = ptrtoint ptr %default_power1.3.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %spec.select.3.i, ptr %default_power1.3.i, align 2
  %max_power.4.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 4, i32 1
  %137 = ptrtoint ptr %max_power.4.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 31, ptr %max_power.4.i, align 4
  %arrayidx32.4.i = getelementptr i16, ptr %120, i32 37
  %138 = ptrtoint ptr %arrayidx32.4.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx32.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %139)
  %cmp33.4.i = icmp ugt i8 %139, 31
  %narrow141.4.i = select i1 %cmp33.4.i, i8 24, i8 %139
  %spec.select.4.i = zext i8 %narrow141.4.i to i16
  %default_power1.4.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 4, i32 2
  %140 = ptrtoint ptr %default_power1.4.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %spec.select.4.i, ptr %default_power1.4.i, align 2
  %max_power.5.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 5, i32 1
  %141 = ptrtoint ptr %max_power.5.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 31, ptr %max_power.5.i, align 64
  %arrayidx32.5.i = getelementptr i8, ptr %arrayidx.i132.i, i32 5
  %142 = ptrtoint ptr %arrayidx32.5.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx32.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %143)
  %cmp33.5.i = icmp ugt i8 %143, 31
  %narrow141.5.i = select i1 %cmp33.5.i, i8 24, i8 %143
  %spec.select.5.i = zext i8 %narrow141.5.i to i16
  %default_power1.5.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 5, i32 2
  %144 = ptrtoint ptr %default_power1.5.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %spec.select.5.i, ptr %default_power1.5.i, align 2
  %max_power.6.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 6, i32 1
  %145 = ptrtoint ptr %max_power.6.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 31, ptr %max_power.6.i, align 4
  %arrayidx32.6.i = getelementptr i16, ptr %120, i32 38
  %146 = ptrtoint ptr %arrayidx32.6.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx32.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %147)
  %cmp33.6.i = icmp ugt i8 %147, 31
  %narrow141.6.i = select i1 %cmp33.6.i, i8 24, i8 %147
  %spec.select.6.i = zext i8 %narrow141.6.i to i16
  %default_power1.6.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 6, i32 2
  %148 = ptrtoint ptr %default_power1.6.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %spec.select.6.i, ptr %default_power1.6.i, align 2
  %max_power.7.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 7, i32 1
  %149 = ptrtoint ptr %max_power.7.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 31, ptr %max_power.7.i, align 8
  %arrayidx32.7.i = getelementptr i8, ptr %arrayidx.i132.i, i32 7
  %150 = ptrtoint ptr %arrayidx32.7.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx32.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %151)
  %cmp33.7.i = icmp ugt i8 %151, 31
  %narrow141.7.i = select i1 %cmp33.7.i, i8 24, i8 %151
  %spec.select.7.i = zext i8 %narrow141.7.i to i16
  %default_power1.7.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 7, i32 2
  %152 = ptrtoint ptr %default_power1.7.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %spec.select.7.i, ptr %default_power1.7.i, align 2
  %max_power.8.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 8, i32 1
  %153 = ptrtoint ptr %max_power.8.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 31, ptr %max_power.8.i, align 4
  %arrayidx32.8.i = getelementptr i16, ptr %120, i32 39
  %154 = ptrtoint ptr %arrayidx32.8.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx32.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %155)
  %cmp33.8.i = icmp ugt i8 %155, 31
  %narrow141.8.i = select i1 %cmp33.8.i, i8 24, i8 %155
  %spec.select.8.i = zext i8 %narrow141.8.i to i16
  %default_power1.8.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 8, i32 2
  %156 = ptrtoint ptr %default_power1.8.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %spec.select.8.i, ptr %default_power1.8.i, align 2
  %max_power.9.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 9, i32 1
  %157 = ptrtoint ptr %max_power.9.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 31, ptr %max_power.9.i, align 16
  %arrayidx32.9.i = getelementptr i8, ptr %arrayidx.i132.i, i32 9
  %158 = ptrtoint ptr %arrayidx32.9.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx32.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %159)
  %cmp33.9.i = icmp ugt i8 %159, 31
  %narrow141.9.i = select i1 %cmp33.9.i, i8 24, i8 %159
  %spec.select.9.i = zext i8 %narrow141.9.i to i16
  %default_power1.9.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 9, i32 2
  %160 = ptrtoint ptr %default_power1.9.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %spec.select.9.i, ptr %default_power1.9.i, align 2
  %max_power.10.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 10, i32 1
  %161 = ptrtoint ptr %max_power.10.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 31, ptr %max_power.10.i, align 4
  %arrayidx32.10.i = getelementptr i16, ptr %120, i32 40
  %162 = ptrtoint ptr %arrayidx32.10.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx32.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %163)
  %cmp33.10.i = icmp ugt i8 %163, 31
  %narrow141.10.i = select i1 %cmp33.10.i, i8 24, i8 %163
  %spec.select.10.i = zext i8 %narrow141.10.i to i16
  %default_power1.10.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 10, i32 2
  %164 = ptrtoint ptr %default_power1.10.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %spec.select.10.i, ptr %default_power1.10.i, align 2
  %max_power.11.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 11, i32 1
  %165 = ptrtoint ptr %max_power.11.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 31, ptr %max_power.11.i, align 8
  %arrayidx32.11.i = getelementptr i8, ptr %arrayidx.i132.i, i32 11
  %166 = ptrtoint ptr %arrayidx32.11.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx32.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %167)
  %cmp33.11.i = icmp ugt i8 %167, 31
  %narrow141.11.i = select i1 %cmp33.11.i, i8 24, i8 %167
  %spec.select.11.i = zext i8 %narrow141.11.i to i16
  %default_power1.11.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 11, i32 2
  %168 = ptrtoint ptr %default_power1.11.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %spec.select.11.i, ptr %default_power1.11.i, align 2
  %max_power.12.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 12, i32 1
  %169 = ptrtoint ptr %max_power.12.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 31, ptr %max_power.12.i, align 4
  %arrayidx32.12.i = getelementptr i16, ptr %120, i32 41
  %170 = ptrtoint ptr %arrayidx32.12.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx32.12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %171)
  %cmp33.12.i = icmp ugt i8 %171, 31
  %narrow141.12.i = select i1 %cmp33.12.i, i8 24, i8 %171
  %spec.select.12.i = zext i8 %narrow141.12.i to i16
  %default_power1.12.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 12, i32 2
  %172 = ptrtoint ptr %default_power1.12.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %spec.select.12.i, ptr %default_power1.12.i, align 2
  %max_power.13.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 13, i32 1
  %173 = ptrtoint ptr %max_power.13.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 31, ptr %max_power.13.i, align 32
  %arrayidx32.13.i = getelementptr i8, ptr %arrayidx.i132.i, i32 13
  %174 = ptrtoint ptr %arrayidx32.13.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx32.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %175)
  %cmp33.13.i = icmp ugt i8 %175, 31
  %narrow141.13.i = select i1 %cmp33.13.i, i8 24, i8 %175
  %spec.select.13.i = zext i8 %narrow141.13.i to i16
  %default_power1.13.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 13, i32 2
  %176 = ptrtoint ptr %default_power1.13.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %spec.select.13.i, ptr %default_power1.13.i, align 2
  %177 = ptrtoint ptr %num_channels27.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %num_channels27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %178)
  %cmp40.i = icmp ugt i32 %178, 14
  br i1 %cmp40.i, label %if.then42.i, label %if.end30.i.if.end23_crit_edge

if.end30.i.if.end23_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then42.i:                                      ; preds = %if.end30.i
  %179 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %eeprom.i.i, align 8
  %arrayidx.i134.i = getelementptr i16, ptr %180, i32 49
  %181 = ptrtoint ptr %num_channels27.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %num_channels27.i, align 4
  br label %for.body48.i

for.body48.i:                                     ; preds = %for.body48.i.for.body48.i_crit_edge, %if.then42.i
  %i.1144.i = phi i32 [ %inc66.i, %for.body48.i.for.body48.i_crit_edge ], [ 14, %if.then42.i ]
  %max_power50.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 %i.1144.i, i32 1
  %183 = ptrtoint ptr %max_power50.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 31, ptr %max_power50.i, align 4
  %sub.i = add i32 %i.1144.i, -14
  %arrayidx51.i = getelementptr i8, ptr %arrayidx.i134.i, i32 %sub.i
  %184 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %185)
  %cmp53.i = icmp ugt i8 %185, 31
  %narrow.i = select i1 %cmp53.i, i8 24, i8 %185
  %spec.select119.i = zext i8 %narrow.i to i16
  %default_power164.i = getelementptr %struct.channel_info, ptr %call8.i.i.i, i32 %i.1144.i, i32 2
  %186 = ptrtoint ptr %default_power164.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %spec.select119.i, ptr %default_power164.i, align 2
  %inc66.i = add nuw i32 %i.1144.i, 1
  %cmp46.i = icmp ult i32 %inc66.i, %182
  br i1 %cmp46.i, label %for.body48.i.for.body48.i_crit_edge, label %for.body48.i.if.end23_crit_edge

for.body48.i.if.end23_crit_edge:                  ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.body48.i.for.body48.i_crit_edge:              ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body48.i

if.end23:                                         ; preds = %for.body48.i.if.end23_crit_edge, %if.end30.i.if.end23_crit_edge
  %cap_flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %187 = ptrtoint ptr %cap_flags to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cap_flags, align 4
  %or.i49 = or i32 %188, 32769
  store i32 %or.i49, ptr %cap_flags, align 4
  %189 = load i8, ptr @modparam_nohwcrypt, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool25.not = icmp eq i8 %189, 0
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %or.i50 = or i32 %188, 40961
  %190 = ptrtoint ptr %cap_flags to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %or.i50, ptr %cap_flags, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %191 = ptrtoint ptr %cap_flags to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cap_flags, align 4
  %or.i52 = or i32 %192, 263168
  store i32 %or.i52, ptr %cap_flags, align 4
  %rssi_offset = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 37
  %193 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 120, ptr %rssi_offset, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end7.i.i.i.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %do.end80.i, %do.body74.i.cleanup_crit_edge, %do.end63.i, %do.body58.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %if.end26.i.cleanup_crit_edge ], [ -19, %do.end63.i ], [ -19, %do.body58.i.cleanup_crit_edge ], [ -19, %do.end80.i ], [ -19, %do.body74.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @rt73usb_get_firmware_name(ptr nocapture noundef readnone %rt2x00dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_check_firmware(ptr nocapture noundef readnone %rt2x00dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %len)
  %cmp.not = icmp eq i32 %len, 2048
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr i8, ptr %data, i32 2046
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx2 = getelementptr i8, ptr %data, i32 2047
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %or = or i32 %shl, %conv3
  %call = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %data, i32 noundef 2046) #13
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
define internal i32 @rt73usb_load_firmware(ptr noundef %rt2x00dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12288, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.end10

if.end:                                           ; preds = %for.body
  call void @msleep(i32 noundef 1) #13
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body:                                          ; preds = %if.end
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @rt73usb_load_firmware._rs, ptr noundef nonnull @__func__.rt73usb_load_firmware) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %conv1.i = trunc i32 %len to i16
  %call.i37 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 2048, ptr noundef %data, i16 noundef zeroext %conv1.i) #13
  %call.i38 = call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp12 = icmp slt i32 %call.i38, 0
  br i1 %cmp12, label %do.body14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body14:                                        ; preds = %if.end10
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @rt73usb_load_firmware._rs.25, ptr noundef nonnull @__func__.rt73usb_load_firmware) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.body14.cleanup.sink.split_crit_edge

do.body14.cleanup.sink.split_crit_edge:           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body14.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.24, %do.body.cleanup.sink.split_crit_edge ], [ @.str.27, %do.body14.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -16, %do.body.cleanup.sink.split_crit_edge ], [ %call.i38, %do.body14.cleanup.sink.split_crit_edge ]
  %hw21 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %3 = ptrtoint ptr %hw21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw21, align 4
  %wiphy22 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy22, align 8
  %dev23 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull %.str.27.sink, ptr noundef nonnull @__func__.rt73usb_load_firmware) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.body.cleanup_crit_edge ], [ %call.i38, %do.body14.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_initialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_uninitialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_clear_entry(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_set_device_state(ptr noundef %rt2x00dev, i32 noundef %state) #2 align 64 {
entry:
  %reg.i93.i = alloca i32, align 4
  %reg.i91.i = alloca i32, align 4
  %reg.i89.i = alloca i32, align 4
  %reg.i.i22 = alloca i32, align 4
  %reg.i3.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %reg.i.i299.i.i = alloca i32, align 4
  %reg.i300.i.i = alloca i32, align 4
  %reg.i.i290.i.i = alloca i32, align 4
  %reg.i291.i.i = alloca i32, align 4
  %reg.i.i281.i.i = alloca i32, align 4
  %reg.i282.i.i = alloca i32, align 4
  %reg.i.i272.i.i = alloca i32, align 4
  %reg.i273.i.i = alloca i32, align 4
  %reg.i.i263.i.i = alloca i32, align 4
  %reg.i264.i.i = alloca i32, align 4
  %reg.i.i254.i.i = alloca i32, align 4
  %reg.i255.i.i = alloca i32, align 4
  %reg.i.i245.i.i = alloca i32, align 4
  %reg.i246.i.i = alloca i32, align 4
  %reg.i.i236.i.i = alloca i32, align 4
  %reg.i237.i.i = alloca i32, align 4
  %reg.i.i227.i.i = alloca i32, align 4
  %reg.i228.i.i = alloca i32, align 4
  %reg.i.i218.i.i = alloca i32, align 4
  %reg.i219.i.i = alloca i32, align 4
  %reg.i.i209.i.i = alloca i32, align 4
  %reg.i210.i.i = alloca i32, align 4
  %reg.i.i200.i.i = alloca i32, align 4
  %reg.i201.i.i = alloca i32, align 4
  %reg.i.i191.i.i = alloca i32, align 4
  %reg.i192.i.i = alloca i32, align 4
  %reg.i.i182.i.i = alloca i32, align 4
  %reg.i183.i.i = alloca i32, align 4
  %reg.i.i173.i.i = alloca i32, align 4
  %reg.i174.i.i = alloca i32, align 4
  %reg.i.i164.i.i = alloca i32, align 4
  %reg.i165.i.i = alloca i32, align 4
  %reg.i.i155.i.i = alloca i32, align 4
  %reg.i156.i.i = alloca i32, align 4
  %reg.i.i146.i.i = alloca i32, align 4
  %reg.i147.i.i = alloca i32, align 4
  %reg.i.i137.i.i = alloca i32, align 4
  %reg.i138.i.i = alloca i32, align 4
  %reg.i.i128.i.i = alloca i32, align 4
  %reg.i129.i.i = alloca i32, align 4
  %reg.i.i119.i.i = alloca i32, align 4
  %reg.i120.i.i = alloca i32, align 4
  %reg.i.i110.i.i = alloca i32, align 4
  %reg.i111.i.i = alloca i32, align 4
  %reg.i.i101.i.i = alloca i32, align 4
  %reg.i102.i.i = alloca i32, align 4
  %reg.i.i92.i.i = alloca i32, align 4
  %reg.i93.i.i = alloca i32, align 4
  %reg.i.i83.i.i = alloca i32, align 4
  %reg.i84.i.i = alloca i32, align 4
  %reg.i.i.i.i = alloca i32, align 4
  %reg.i.i6.i = alloca i32, align 4
  %reg.i1461.i.i = alloca i32, align 4
  %reg.i1459.i.i = alloca i32, align 4
  %reg.i1457.i.i = alloca i32, align 4
  %reg.i1455.i.i = alloca i32, align 4
  %reg.i1453.i.i = alloca i32, align 4
  %reg.i1451.i.i = alloca i32, align 4
  %reg.i1449.i.i = alloca i32, align 4
  %reg.i1447.i.i = alloca i32, align 4
  %reg.i1445.i.i = alloca i32, align 4
  %reg.i1443.i.i = alloca i32, align 4
  %reg.i1441.i.i = alloca i32, align 4
  %reg.i1439.i.i = alloca i32, align 4
  %reg.i1437.i.i = alloca i32, align 4
  %reg.i1435.i.i = alloca i32, align 4
  %reg.i1433.i.i = alloca i32, align 4
  %reg.i1431.i.i = alloca i32, align 4
  %reg.i1429.i.i = alloca i32, align 4
  %reg.i1427.i.i = alloca i32, align 4
  %reg.i1425.i.i = alloca i32, align 4
  %reg.i1421.i.i = alloca i32, align 4
  %reg.i1419.i.i = alloca i32, align 4
  %reg.i1417.i.i = alloca i32, align 4
  %reg.i1415.i.i = alloca i32, align 4
  %reg.i1413.i.i = alloca i32, align 4
  %reg.i1411.i.i = alloca i32, align 4
  %reg.i1409.i.i = alloca i32, align 4
  %reg.i1407.i.i = alloca i32, align 4
  %reg.i1405.i.i = alloca i32, align 4
  %reg.i1403.i.i = alloca i32, align 4
  %reg.i1401.i.i = alloca i32, align 4
  %reg.i1399.i.i = alloca i32, align 4
  %reg.i1397.i.i = alloca i32, align 4
  %reg.i1395.i.i = alloca i32, align 4
  %reg.i1393.i.i = alloca i32, align 4
  %reg.i1391.i.i = alloca i32, align 4
  %reg.i1389.i.i = alloca i32, align 4
  %reg.i1387.i.i = alloca i32, align 4
  %reg.i1385.i.i = alloca i32, align 4
  %reg.i1383.i.i = alloca i32, align 4
  %reg.i1381.i.i = alloca i32, align 4
  %reg.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.if.end14_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  %1 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %reg.i.i.i, align 4
  %call.i.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i.i.i, i16 noundef zeroext 4) #13
  %2 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  %4 = and i32 %3, -8388869
  %5 = or i32 %4, 8388608
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1381.i.i) #13
  %6 = ptrtoint ptr %reg.i1381.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %reg.i1381.i.i, align 4
  %call.i1382.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i1381.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1381.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1383.i.i) #13
  %7 = ptrtoint ptr %reg.i1383.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %reg.i1383.i.i, align 4
  %call.i1384.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12356, ptr noundef nonnull %reg.i1383.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1383.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1385.i.i) #13
  %8 = ptrtoint ptr %reg.i1385.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1348556130, ptr %reg.i1385.i.i, align 4
  %call.i1386.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12356, ptr noundef nonnull %reg.i1385.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1385.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1387.i.i) #13
  %9 = ptrtoint ptr %reg.i1387.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %reg.i1387.i.i, align 4
  %call.i1388.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12360, ptr noundef nonnull %reg.i1387.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1387.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1389.i.i) #13
  %10 = ptrtoint ptr %reg.i1389.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1920169078, ptr %reg.i1389.i.i, align 4
  %call.i1390.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12360, ptr noundef nonnull %reg.i1389.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1389.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1391.i.i) #13
  %11 = ptrtoint ptr %reg.i1391.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg.i1391.i.i, align 4
  %call.i1392.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12364, ptr noundef nonnull %reg.i1391.i.i, i16 noundef zeroext 4) #13
  %12 = ptrtoint ptr %reg.i1391.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i1391.i.i, align 4
  %14 = shl i32 %13, 24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1391.i.i) #13
  %or640.i.i = or i32 %14, 8750727
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1393.i.i) #13
  %15 = call i32 @llvm.bswap.i32(i32 %or640.i.i) #13
  %16 = ptrtoint ptr %reg.i1393.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %reg.i1393.i.i, align 4
  %call.i1394.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12364, ptr noundef nonnull %reg.i1393.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1393.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1395.i.i) #13
  %17 = ptrtoint ptr %reg.i1395.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reg.i1395.i.i, align 4
  %call.i1396.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12380, ptr noundef nonnull %reg.i1395.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1395.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1397.i.i) #13
  %18 = ptrtoint ptr %reg.i1397.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 993341742, ptr %reg.i1397.i.i, align 4
  %call.i1398.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12380, ptr noundef nonnull %reg.i1397.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1397.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1399.i.i) #13
  %19 = ptrtoint ptr %reg.i1399.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %reg.i1399.i.i, align 4
  %call.i1400.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12384, ptr noundef nonnull %reg.i1399.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1399.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1401.i.i) #13
  %20 = ptrtoint ptr %reg.i1401.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 740960810, ptr %reg.i1401.i.i, align 4
  %call.i1402.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12384, ptr noundef nonnull %reg.i1401.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1401.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1403.i.i) #13
  %21 = ptrtoint ptr %reg.i1403.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %reg.i1403.i.i, align 4
  %call.i1404.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i1403.i.i, i16 noundef zeroext 4) #13
  %22 = ptrtoint ptr %reg.i1403.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg.i1403.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1403.i.i) #13
  %and993.i.i = and i32 %23, 57344
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1405.i.i) #13
  %24 = ptrtoint ptr %reg.i1405.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and993.i.i, ptr %reg.i1405.i.i, align 4
  %call.i1406.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i1405.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1405.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1407.i.i) #13
  %25 = ptrtoint ptr %reg.i1407.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 251658240, ptr %reg.i1407.i.i, align 4
  %call.i1408.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12412, ptr noundef nonnull %reg.i1407.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1407.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1409.i.i) #13
  %26 = ptrtoint ptr %reg.i1409.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %reg.i1409.i.i, align 4
  %call.i1410.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12312, ptr noundef nonnull %reg.i1409.i.i, i16 noundef zeroext 4) #13
  %27 = ptrtoint ptr %reg.i1409.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg.i1409.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1409.i.i) #13
  %29 = or i32 %28, -15794176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1411.i.i) #13
  %30 = ptrtoint ptr %reg.i1411.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %reg.i1411.i.i, align 4
  %call.i1412.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12312, ptr noundef nonnull %reg.i1411.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1411.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1413.i.i) #13
  %31 = ptrtoint ptr %reg.i1413.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 403111936, ptr %reg.i1413.i.i, align 4
  %call.i1414.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12328, ptr noundef nonnull %reg.i1413.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1413.i.i) #13
  %ops.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %32 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i, align 4
  %lib.i.i = getelementptr inbounds %struct.rt2x00_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %lib.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lib.i.i, align 4
  %set_device_state.i.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %set_device_state.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_device_state.i.i, align 4
  %call1035.i.i = call i32 %37(ptr noundef %rt2x00dev, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1035.i.i)
  %tobool.not.i.i = icmp eq i32 %call1035.i.i, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.rhs.i:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1415.i.i) #13
  %38 = ptrtoint ptr %reg.i1415.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8323072, ptr %reg.i1415.i.i, align 4
  %call.i1416.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12340, ptr noundef nonnull %reg.i1415.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1415.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1417.i.i) #13
  %39 = ptrtoint ptr %reg.i1417.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %reg.i1417.i.i, align 4
  %call.i1418.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12448, ptr noundef nonnull %reg.i1417.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1417.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1419.i.i) #13
  %40 = ptrtoint ptr %reg.i1419.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %reg.i1419.i.i, align 4
  %call.i1420.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12452, ptr noundef nonnull %reg.i1419.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1419.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1421.i.i) #13
  %41 = ptrtoint ptr %reg.i1421.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %reg.i1421.i.i, align 4
  %call.i1422.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12468, ptr noundef nonnull %reg.i1421.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1421.i.i) #13
  %rf1.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %42 = ptrtoint ptr %rf1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rf1.i.i.i, align 2
  %.off.i.i = add i16 %43, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i.i)
  %switch.i.i = icmp ult i16 %.off.i.i, 2
  %spec.select.i.i = select i1 %switch.i.i, i32 74672, i32 9136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1425.i.i) #13
  %44 = call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #13
  %45 = ptrtoint ptr %reg.i1425.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %reg.i1425.i.i, align 4
  %call.i1426.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12420, ptr noundef nonnull %reg.i1425.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1425.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1427.i.i) #13
  %46 = ptrtoint ptr %reg.i1427.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 101319680, ptr %reg.i1427.i.i, align 4
  %call.i1428.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12436, ptr noundef nonnull %reg.i1427.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1427.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1429.i.i) #13
  %47 = ptrtoint ptr %reg.i1429.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 101058560, ptr %reg.i1429.i.i, align 4
  %call.i1430.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12440, ptr noundef nonnull %reg.i1429.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1429.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1431.i.i) #13
  %48 = ptrtoint ptr %reg.i1431.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 134479872, ptr %reg.i1431.i.i, align 4
  %call.i1432.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12444, ptr noundef nonnull %reg.i1431.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1431.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1433.i.i) #13
  %49 = ptrtoint ptr %reg.i1433.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %reg.i1433.i.i, align 4
  %call.i1434.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12324, ptr noundef nonnull %reg.i1433.i.i, i16 noundef zeroext 4) #13
  %50 = ptrtoint ptr %reg.i1433.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg.i1433.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1433.i.i) #13
  %52 = and i32 %51, -257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1435.i.i) #13
  %53 = ptrtoint ptr %reg.i1435.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %reg.i1435.i.i, align 4
  %call.i1436.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12324, ptr noundef nonnull %reg.i1435.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1435.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1437.i.i) #13
  %54 = ptrtoint ptr %reg.i1437.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %reg.i1437.i.i, align 4
  %call.i1438.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 9216, ptr noundef nonnull %reg.i1437.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1437.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1439.i.i) #13
  %55 = ptrtoint ptr %reg.i1439.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %reg.i1439.i.i, align 4
  %call.i1440.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 9472, ptr noundef nonnull %reg.i1439.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1439.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1441.i.i) #13
  %56 = ptrtoint ptr %reg.i1441.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %reg.i1441.i.i, align 4
  %call.i1442.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 9728, ptr noundef nonnull %reg.i1441.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1441.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1443.i.i) #13
  %57 = ptrtoint ptr %reg.i1443.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %reg.i1443.i.i, align 4
  %call.i1444.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 9984, ptr noundef nonnull %reg.i1443.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1443.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1445.i.i) #13
  %58 = ptrtoint ptr %reg.i1445.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %reg.i1445.i.i, align 4
  %call.i1446.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12480, ptr noundef nonnull %reg.i1445.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1445.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1447.i.i) #13
  %59 = ptrtoint ptr %reg.i1447.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %reg.i1447.i.i, align 4
  %call.i1448.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12484, ptr noundef nonnull %reg.i1447.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1447.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1449.i.i) #13
  %60 = ptrtoint ptr %reg.i1449.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %reg.i1449.i.i, align 4
  %call.i1450.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12488, ptr noundef nonnull %reg.i1449.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1449.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1451.i.i) #13
  %61 = ptrtoint ptr %reg.i1451.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %reg.i1451.i.i, align 4
  %call.i1452.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12292, ptr noundef nonnull %reg.i1451.i.i, i16 noundef zeroext 4) #13
  %62 = ptrtoint ptr %reg.i1451.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reg.i1451.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1451.i.i) #13
  %64 = or i32 %63, 50331648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1453.i.i) #13
  %65 = ptrtoint ptr %reg.i1453.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %reg.i1453.i.i, align 4
  %call.i1454.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12292, ptr noundef nonnull %reg.i1453.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1453.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1455.i.i) #13
  %66 = ptrtoint ptr %reg.i1455.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %reg.i1455.i.i, align 4
  %call.i1456.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12292, ptr noundef nonnull %reg.i1455.i.i, i16 noundef zeroext 4) #13
  %67 = ptrtoint ptr %reg.i1455.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reg.i1455.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1455.i.i) #13
  %69 = and i32 %68, -50331649
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1457.i.i) #13
  %70 = ptrtoint ptr %reg.i1457.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %reg.i1457.i.i, align 4
  %call.i1458.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12292, ptr noundef nonnull %reg.i1457.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1457.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1459.i.i) #13
  %71 = ptrtoint ptr %reg.i1459.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %reg.i1459.i.i, align 4
  %call.i1460.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12292, ptr noundef nonnull %reg.i1459.i.i, i16 noundef zeroext 4) #13
  %72 = ptrtoint ptr %reg.i1459.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg.i1459.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1459.i.i) #13
  %74 = or i32 %73, 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1461.i.i) #13
  %75 = ptrtoint ptr %reg.i1461.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %reg.i1461.i.i, align 4
  %call.i1462.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12292, ptr noundef nonnull %reg.i1461.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1461.i.i) #13
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %lor.rhs.i
  %i.016.i.i.i = phi i32 [ 0, %lor.rhs.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i7.i = call zeroext i8 @rt73usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 0) #13
  %76 = zext i8 %call.i.i7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %call.i.i7.i, label %if.end.i8.i [
    i8 -1, label %for.body.i.i.i.if.end.i.i.i_crit_edge
    i8 0, label %for.body.i.i.i.if.end.i.i.i_crit_edge37
  ]

for.body.i.i.i.if.end.i.i.i_crit_edge37:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i.if.end.i.i.i_crit_edge, %for.body.i.i.i.if.end.i.i.i_crit_edge37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 21474800) #13
  %inc.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 20
  br i1 %exitcond.not.i.i.i, label %do.body.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  %call6.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @rt73usb_wait_bbp_ready._rs, ptr noundef nonnull @__func__.rt73usb_wait_bbp_ready) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.do.body_crit_edge, label %do.end.i.i.i

do.body.i.i.i.do.body_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %78 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw.i.i.i, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wiphy.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.wiphy, ptr %81, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.rt73usb_wait_bbp_ready) #16
  br label %do.body

if.end.i8.i:                                      ; preds = %for.body.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i6.i) #13
  %82 = ptrtoint ptr %reg.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %reg.i.i6.i, align 4, !annotation !132
  %csr_mutex.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i80.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i.i)
  %tobool.not.i81.i.i = icmp eq i32 %call.i80.i.i, 0
  br i1 %tobool.not.i81.i.i, label %if.end.i8.i.rt73usb_bbp_write.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i8.i.rt73usb_bbp_write.exit.i.i_crit_edge: ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %reg.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 66432, ptr %reg.i.i6.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i.i) #13
  %84 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -2147286784, ptr %reg.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i.i) #13
  br label %rt73usb_bbp_write.exit.i.i

rt73usb_bbp_write.exit.i.i:                       ; preds = %if.then.i.i.i, %if.end.i8.i.rt73usb_bbp_write.exit.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i6.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i84.i.i) #13
  %85 = ptrtoint ptr %reg.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %reg.i84.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i86.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i84.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i.i)
  %tobool.not.i87.i.i = icmp eq i32 %call.i86.i.i, 0
  br i1 %tobool.not.i87.i.i, label %rt73usb_bbp_write.exit.i.i.rt73usb_bbp_write.exit91.i.i_crit_edge, label %if.then.i89.i.i

rt73usb_bbp_write.exit.i.i.rt73usb_bbp_write.exit91.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit91.i.i

if.then.i89.i.i:                                  ; preds = %rt73usb_bbp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %reg.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 69424, ptr %reg.i84.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i83.i.i) #13
  %87 = ptrtoint ptr %reg.i.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 806289664, ptr %reg.i.i83.i.i, align 4
  %call.i.i88.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i83.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i83.i.i) #13
  br label %rt73usb_bbp_write.exit91.i.i

rt73usb_bbp_write.exit91.i.i:                     ; preds = %if.then.i89.i.i, %rt73usb_bbp_write.exit.i.i.rt73usb_bbp_write.exit91.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i84.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i93.i.i) #13
  %88 = ptrtoint ptr %reg.i93.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %reg.i93.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i95.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i93.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i.i)
  %tobool.not.i96.i.i = icmp eq i32 %call.i95.i.i, 0
  br i1 %tobool.not.i96.i.i, label %rt73usb_bbp_write.exit91.i.i.rt73usb_bbp_write.exit100.i.i_crit_edge, label %if.then.i98.i.i

rt73usb_bbp_write.exit91.i.i.rt73usb_bbp_write.exit100.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit91.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit100.i.i

if.then.i98.i.i:                                  ; preds = %rt73usb_bbp_write.exit91.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %reg.i93.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 71112, ptr %reg.i93.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i92.i.i) #13
  %90 = ptrtoint ptr %reg.i.i92.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -938147584, ptr %reg.i.i92.i.i, align 4
  %call.i.i97.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i92.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i92.i.i) #13
  br label %rt73usb_bbp_write.exit100.i.i

rt73usb_bbp_write.exit100.i.i:                    ; preds = %if.then.i98.i.i, %rt73usb_bbp_write.exit91.i.i.rt73usb_bbp_write.exit100.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i93.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i102.i.i) #13
  %91 = ptrtoint ptr %reg.i102.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %reg.i102.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i104.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i102.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i.i)
  %tobool.not.i105.i.i = icmp eq i32 %call.i104.i.i, 0
  br i1 %tobool.not.i105.i.i, label %rt73usb_bbp_write.exit100.i.i.rt73usb_bbp_write.exit109.i.i_crit_edge, label %if.then.i107.i.i

rt73usb_bbp_write.exit100.i.i.rt73usb_bbp_write.exit109.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit100.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit109.i.i

if.then.i107.i.i:                                 ; preds = %rt73usb_bbp_write.exit100.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %reg.i102.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 71224, ptr %reg.i102.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i101.i.i) #13
  %93 = ptrtoint ptr %reg.i.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 940966144, ptr %reg.i.i101.i.i, align 4
  %call.i.i106.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i101.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i101.i.i) #13
  br label %rt73usb_bbp_write.exit109.i.i

rt73usb_bbp_write.exit109.i.i:                    ; preds = %if.then.i107.i.i, %rt73usb_bbp_write.exit100.i.i.rt73usb_bbp_write.exit109.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i102.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i111.i.i) #13
  %94 = ptrtoint ptr %reg.i111.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %reg.i111.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i113.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i111.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i.i)
  %tobool.not.i114.i.i = icmp eq i32 %call.i113.i.i, 0
  br i1 %tobool.not.i114.i.i, label %rt73usb_bbp_write.exit109.i.i.rt73usb_bbp_write.exit118.i.i_crit_edge, label %if.then.i116.i.i

rt73usb_bbp_write.exit109.i.i.rt73usb_bbp_write.exit118.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit118.i.i

if.then.i116.i.i:                                 ; preds = %rt73usb_bbp_write.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %reg.i111.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 71430, ptr %reg.i111.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i110.i.i) #13
  %96 = ptrtoint ptr %reg.i.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 102170880, ptr %reg.i.i110.i.i, align 4
  %call.i.i115.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i110.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i110.i.i) #13
  br label %rt73usb_bbp_write.exit118.i.i

rt73usb_bbp_write.exit118.i.i:                    ; preds = %if.then.i116.i.i, %rt73usb_bbp_write.exit109.i.i.rt73usb_bbp_write.exit118.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i111.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i120.i.i) #13
  %97 = ptrtoint ptr %reg.i120.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %reg.i120.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i122.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i120.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i.i)
  %tobool.not.i123.i.i = icmp eq i32 %call.i122.i.i, 0
  br i1 %tobool.not.i123.i.i, label %rt73usb_bbp_write.exit118.i.i.rt73usb_bbp_write.exit127.i.i_crit_edge, label %if.then.i125.i.i

rt73usb_bbp_write.exit118.i.i.rt73usb_bbp_write.exit127.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit118.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit127.i.i

if.then.i125.i.i:                                 ; preds = %rt73usb_bbp_write.exit118.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %reg.i120.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 71934, ptr %reg.i120.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i119.i.i) #13
  %99 = ptrtoint ptr %reg.i.i119.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -31981312, ptr %reg.i.i119.i.i, align 4
  %call.i.i124.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i119.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i119.i.i) #13
  br label %rt73usb_bbp_write.exit127.i.i

rt73usb_bbp_write.exit127.i.i:                    ; preds = %if.then.i125.i.i, %rt73usb_bbp_write.exit118.i.i.rt73usb_bbp_write.exit127.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i120.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i129.i.i) #13
  %100 = ptrtoint ptr %reg.i129.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %reg.i129.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i131.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i129.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i.i)
  %tobool.not.i132.i.i = icmp eq i32 %call.i131.i.i, 0
  br i1 %tobool.not.i132.i.i, label %rt73usb_bbp_write.exit127.i.i.rt73usb_bbp_write.exit136.i.i_crit_edge, label %if.then.i134.i.i

rt73usb_bbp_write.exit127.i.i.rt73usb_bbp_write.exit136.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit127.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit136.i.i

if.then.i134.i.i:                                 ; preds = %rt73usb_bbp_write.exit127.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %reg.i129.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 71946, ptr %reg.i129.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i128.i.i) #13
  %102 = ptrtoint ptr %reg.i.i128.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 169410816, ptr %reg.i.i128.i.i, align 4
  %call.i.i133.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i128.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i128.i.i) #13
  br label %rt73usb_bbp_write.exit136.i.i

rt73usb_bbp_write.exit136.i.i:                    ; preds = %if.then.i134.i.i, %rt73usb_bbp_write.exit127.i.i.rt73usb_bbp_write.exit136.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i129.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i138.i.i) #13
  %103 = ptrtoint ptr %reg.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %reg.i138.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i140.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i138.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i.i)
  %tobool.not.i141.i.i = icmp eq i32 %call.i140.i.i, 0
  br i1 %tobool.not.i141.i.i, label %rt73usb_bbp_write.exit136.i.i.rt73usb_bbp_write.exit145.i.i_crit_edge, label %if.then.i143.i.i

rt73usb_bbp_write.exit136.i.i.rt73usb_bbp_write.exit145.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit136.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit145.i.i

if.then.i143.i.i:                                 ; preds = %rt73usb_bbp_write.exit136.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %reg.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 72205, ptr %reg.i138.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i137.i.i) #13
  %105 = ptrtoint ptr %reg.i.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 219808000, ptr %reg.i.i137.i.i, align 4
  %call.i.i142.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i137.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i137.i.i) #13
  br label %rt73usb_bbp_write.exit145.i.i

rt73usb_bbp_write.exit145.i.i:                    ; preds = %if.then.i143.i.i, %rt73usb_bbp_write.exit136.i.i.rt73usb_bbp_write.exit145.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i138.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i147.i.i) #13
  %106 = ptrtoint ptr %reg.i147.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %reg.i147.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i149.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i147.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149.i.i)
  %tobool.not.i150.i.i = icmp eq i32 %call.i149.i.i, 0
  br i1 %tobool.not.i150.i.i, label %rt73usb_bbp_write.exit145.i.i.rt73usb_bbp_write.exit154.i.i_crit_edge, label %if.then.i152.i.i

rt73usb_bbp_write.exit145.i.i.rt73usb_bbp_write.exit154.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit145.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit154.i.i

if.then.i152.i.i:                                 ; preds = %rt73usb_bbp_write.exit145.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %reg.i147.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 73739, ptr %reg.i147.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i146.i.i) #13
  %108 = ptrtoint ptr %reg.i.i146.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 186646784, ptr %reg.i.i146.i.i, align 4
  %call.i.i151.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i146.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i146.i.i) #13
  br label %rt73usb_bbp_write.exit154.i.i

rt73usb_bbp_write.exit154.i.i:                    ; preds = %if.then.i152.i.i, %rt73usb_bbp_write.exit145.i.i.rt73usb_bbp_write.exit154.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i147.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i156.i.i) #13
  %109 = ptrtoint ptr %reg.i156.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %reg.i156.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i158.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i156.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158.i.i)
  %tobool.not.i159.i.i = icmp eq i32 %call.i158.i.i, 0
  br i1 %tobool.not.i159.i.i, label %rt73usb_bbp_write.exit154.i.i.rt73usb_bbp_write.exit163.i.i_crit_edge, label %if.then.i161.i.i

rt73usb_bbp_write.exit154.i.i.rt73usb_bbp_write.exit163.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit154.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit163.i.i

if.then.i161.i.i:                                 ; preds = %rt73usb_bbp_write.exit154.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %reg.i156.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 74258, ptr %reg.i156.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i155.i.i) #13
  %111 = ptrtoint ptr %reg.i.i155.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 304218368, ptr %reg.i.i155.i.i, align 4
  %call.i.i160.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i155.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i155.i.i) #13
  br label %rt73usb_bbp_write.exit163.i.i

rt73usb_bbp_write.exit163.i.i:                    ; preds = %if.then.i161.i.i, %rt73usb_bbp_write.exit154.i.i.rt73usb_bbp_write.exit163.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i156.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i165.i.i) #13
  %112 = ptrtoint ptr %reg.i165.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %reg.i165.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i167.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i165.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167.i.i)
  %tobool.not.i168.i.i = icmp eq i32 %call.i167.i.i, 0
  br i1 %tobool.not.i168.i.i, label %rt73usb_bbp_write.exit163.i.i.rt73usb_bbp_write.exit172.i.i_crit_edge, label %if.then.i170.i.i

rt73usb_bbp_write.exit163.i.i.rt73usb_bbp_write.exit172.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit163.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit172.i.i

if.then.i170.i.i:                                 ; preds = %rt73usb_bbp_write.exit163.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %reg.i165.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 75015, ptr %reg.i165.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i164.i.i) #13
  %114 = ptrtoint ptr %reg.i.i164.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 119865600, ptr %reg.i.i164.i.i, align 4
  %call.i.i169.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i164.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i164.i.i) #13
  br label %rt73usb_bbp_write.exit172.i.i

rt73usb_bbp_write.exit172.i.i:                    ; preds = %if.then.i170.i.i, %rt73usb_bbp_write.exit163.i.i.rt73usb_bbp_write.exit172.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i165.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i174.i.i) #13
  %115 = ptrtoint ptr %reg.i174.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %reg.i174.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i176.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i174.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176.i.i)
  %tobool.not.i177.i.i = icmp eq i32 %call.i176.i.i, 0
  br i1 %tobool.not.i177.i.i, label %rt73usb_bbp_write.exit172.i.i.rt73usb_bbp_write.exit181.i.i_crit_edge, label %if.then.i179.i.i

rt73usb_bbp_write.exit172.i.i.rt73usb_bbp_write.exit181.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit172.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit181.i.i

if.then.i179.i.i:                                 ; preds = %rt73usb_bbp_write.exit172.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %116 = ptrtoint ptr %reg.i174.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 75768, ptr %reg.i174.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i173.i.i) #13
  %117 = ptrtoint ptr %reg.i.i173.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -131661568, ptr %reg.i.i173.i.i, align 4
  %call.i.i178.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i173.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i173.i.i) #13
  br label %rt73usb_bbp_write.exit181.i.i

rt73usb_bbp_write.exit181.i.i:                    ; preds = %if.then.i179.i.i, %rt73usb_bbp_write.exit172.i.i.rt73usb_bbp_write.exit181.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i174.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i183.i.i) #13
  %118 = ptrtoint ptr %reg.i183.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %reg.i183.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i185.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i183.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185.i.i)
  %tobool.not.i186.i.i = icmp eq i32 %call.i185.i.i, 0
  br i1 %tobool.not.i186.i.i, label %rt73usb_bbp_write.exit181.i.i.rt73usb_bbp_write.exit190.i.i_crit_edge, label %if.then.i188.i.i

rt73usb_bbp_write.exit181.i.i.rt73usb_bbp_write.exit190.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit181.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit190.i.i

if.then.i188.i.i:                                 ; preds = %rt73usb_bbp_write.exit181.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %reg.i183.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 76128, ptr %reg.i183.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i182.i.i) #13
  %120 = ptrtoint ptr %reg.i.i182.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1613299968, ptr %reg.i.i182.i.i, align 4
  %call.i.i187.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i182.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i182.i.i) #13
  br label %rt73usb_bbp_write.exit190.i.i

rt73usb_bbp_write.exit190.i.i:                    ; preds = %if.then.i188.i.i, %rt73usb_bbp_write.exit181.i.i.rt73usb_bbp_write.exit190.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i183.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i192.i.i) #13
  %121 = ptrtoint ptr %reg.i192.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %reg.i192.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i194.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i192.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194.i.i)
  %tobool.not.i195.i.i = icmp eq i32 %call.i194.i.i, 0
  br i1 %tobool.not.i195.i.i, label %rt73usb_bbp_write.exit190.i.i.rt73usb_bbp_write.exit199.i.i_crit_edge, label %if.then.i197.i.i

rt73usb_bbp_write.exit190.i.i.rt73usb_bbp_write.exit199.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit190.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit199.i.i

if.then.i197.i.i:                                 ; preds = %rt73usb_bbp_write.exit190.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %reg.i192.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 79120, ptr %reg.i192.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i191.i.i) #13
  %123 = ptrtoint ptr %reg.i.i191.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 271909120, ptr %reg.i.i191.i.i, align 4
  %call.i.i196.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i191.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i191.i.i) #13
  br label %rt73usb_bbp_write.exit199.i.i

rt73usb_bbp_write.exit199.i.i:                    ; preds = %if.then.i197.i.i, %rt73usb_bbp_write.exit190.i.i.rt73usb_bbp_write.exit199.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i192.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i201.i.i) #13
  %124 = ptrtoint ptr %reg.i201.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %reg.i201.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i203.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i201.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203.i.i)
  %tobool.not.i204.i.i = icmp eq i32 %call.i203.i.i, 0
  br i1 %tobool.not.i204.i.i, label %rt73usb_bbp_write.exit199.i.i.rt73usb_bbp_write.exit208.i.i_crit_edge, label %if.then.i206.i.i

rt73usb_bbp_write.exit199.i.i.rt73usb_bbp_write.exit208.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit199.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit208.i.i

if.then.i206.i.i:                                 ; preds = %rt73usb_bbp_write.exit199.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %reg.i201.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 79384, ptr %reg.i201.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i200.i.i) #13
  %126 = ptrtoint ptr %reg.i.i200.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 406192384, ptr %reg.i.i200.i.i, align 4
  %call.i.i205.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i200.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i200.i.i) #13
  br label %rt73usb_bbp_write.exit208.i.i

rt73usb_bbp_write.exit208.i.i:                    ; preds = %if.then.i206.i.i, %rt73usb_bbp_write.exit199.i.i.rt73usb_bbp_write.exit208.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i201.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i210.i.i) #13
  %127 = ptrtoint ptr %reg.i210.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %reg.i210.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i212.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i210.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212.i.i)
  %tobool.not.i213.i.i = icmp eq i32 %call.i212.i.i, 0
  br i1 %tobool.not.i213.i.i, label %rt73usb_bbp_write.exit208.i.i.rt73usb_bbp_write.exit217.i.i_crit_edge, label %if.then.i215.i.i

rt73usb_bbp_write.exit208.i.i.rt73usb_bbp_write.exit217.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit208.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit217.i.i

if.then.i215.i.i:                                 ; preds = %rt73usb_bbp_write.exit208.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %128 = ptrtoint ptr %reg.i210.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 80912, ptr %reg.i210.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i209.i.i) #13
  %129 = ptrtoint ptr %reg.i.i209.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 272367872, ptr %reg.i.i209.i.i, align 4
  %call.i.i214.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i209.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i209.i.i) #13
  br label %rt73usb_bbp_write.exit217.i.i

rt73usb_bbp_write.exit217.i.i:                    ; preds = %if.then.i215.i.i, %rt73usb_bbp_write.exit208.i.i.rt73usb_bbp_write.exit217.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i210.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i219.i.i) #13
  %130 = ptrtoint ptr %reg.i219.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %reg.i219.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i221.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i219.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221.i.i)
  %tobool.not.i222.i.i = icmp eq i32 %call.i221.i.i, 0
  br i1 %tobool.not.i222.i.i, label %rt73usb_bbp_write.exit217.i.i.rt73usb_bbp_write.exit226.i.i_crit_edge, label %if.then.i224.i.i

rt73usb_bbp_write.exit217.i.i.rt73usb_bbp_write.exit226.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit217.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit226.i.i

if.then.i224.i.i:                                 ; preds = %rt73usb_bbp_write.exit217.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %131 = ptrtoint ptr %reg.i219.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 81156, ptr %reg.i219.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i218.i.i) #13
  %132 = ptrtoint ptr %reg.i.i218.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 71106816, ptr %reg.i.i218.i.i, align 4
  %call.i.i223.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i218.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i218.i.i) #13
  br label %rt73usb_bbp_write.exit226.i.i

rt73usb_bbp_write.exit226.i.i:                    ; preds = %if.then.i224.i.i, %rt73usb_bbp_write.exit217.i.i.rt73usb_bbp_write.exit226.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i219.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i228.i.i) #13
  %133 = ptrtoint ptr %reg.i228.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %reg.i228.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i230.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i228.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230.i.i)
  %tobool.not.i231.i.i = icmp eq i32 %call.i230.i.i, 0
  br i1 %tobool.not.i231.i.i, label %rt73usb_bbp_write.exit226.i.i.rt73usb_bbp_write.exit235.i.i_crit_edge, label %if.then.i233.i.i

rt73usb_bbp_write.exit226.i.i.rt73usb_bbp_write.exit235.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit226.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit235.i.i

if.then.i233.i.i:                                 ; preds = %rt73usb_bbp_write.exit226.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %reg.i228.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 81412, ptr %reg.i228.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i227.i.i) #13
  %135 = ptrtoint ptr %reg.i.i227.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 71172352, ptr %reg.i.i227.i.i, align 4
  %call.i.i232.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i227.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i227.i.i) #13
  br label %rt73usb_bbp_write.exit235.i.i

rt73usb_bbp_write.exit235.i.i:                    ; preds = %if.then.i233.i.i, %rt73usb_bbp_write.exit226.i.i.rt73usb_bbp_write.exit235.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i228.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i237.i.i) #13
  %136 = ptrtoint ptr %reg.i237.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %reg.i237.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i239.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i237.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239.i.i)
  %tobool.not.i240.i.i = icmp eq i32 %call.i239.i.i, 0
  br i1 %tobool.not.i240.i.i, label %rt73usb_bbp_write.exit235.i.i.rt73usb_bbp_write.exit244.i.i_crit_edge, label %if.then.i242.i.i

rt73usb_bbp_write.exit235.i.i.rt73usb_bbp_write.exit244.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit235.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit244.i.i

if.then.i242.i.i:                                 ; preds = %rt73usb_bbp_write.exit235.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %137 = ptrtoint ptr %reg.i237.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 84990, ptr %reg.i237.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i236.i.i) #13
  %138 = ptrtoint ptr %reg.i.i236.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -28638976, ptr %reg.i.i236.i.i, align 4
  %call.i.i241.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i236.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i236.i.i) #13
  br label %rt73usb_bbp_write.exit244.i.i

rt73usb_bbp_write.exit244.i.i:                    ; preds = %if.then.i242.i.i, %rt73usb_bbp_write.exit235.i.i.rt73usb_bbp_write.exit244.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i237.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i246.i.i) #13
  %139 = ptrtoint ptr %reg.i246.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %reg.i246.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i248.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i246.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248.i.i)
  %tobool.not.i249.i.i = icmp eq i32 %call.i248.i.i, 0
  br i1 %tobool.not.i249.i.i, label %rt73usb_bbp_write.exit244.i.i.rt73usb_bbp_write.exit253.i.i_crit_edge, label %if.then.i251.i.i

rt73usb_bbp_write.exit244.i.i.rt73usb_bbp_write.exit253.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit244.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit253.i.i

if.then.i251.i.i:                                 ; preds = %rt73usb_bbp_write.exit244.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %140 = ptrtoint ptr %reg.i246.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 87806, ptr %reg.i246.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i245.i.i) #13
  %141 = ptrtoint ptr %reg.i.i245.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -27918080, ptr %reg.i.i245.i.i, align 4
  %call.i.i250.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i245.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i245.i.i) #13
  br label %rt73usb_bbp_write.exit253.i.i

rt73usb_bbp_write.exit253.i.i:                    ; preds = %if.then.i251.i.i, %rt73usb_bbp_write.exit244.i.i.rt73usb_bbp_write.exit253.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i246.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i255.i.i) #13
  %142 = ptrtoint ptr %reg.i255.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %reg.i255.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i257.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i255.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257.i.i)
  %tobool.not.i258.i.i = icmp eq i32 %call.i257.i.i, 0
  br i1 %tobool.not.i258.i.i, label %rt73usb_bbp_write.exit253.i.i.rt73usb_bbp_write.exit262.i.i_crit_edge, label %if.then.i260.i.i

rt73usb_bbp_write.exit253.i.i.rt73usb_bbp_write.exit262.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit253.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit262.i.i

if.then.i260.i.i:                                 ; preds = %rt73usb_bbp_write.exit253.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %143 = ptrtoint ptr %reg.i255.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 88318, ptr %reg.i255.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i254.i.i) #13
  %144 = ptrtoint ptr %reg.i.i254.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -27787008, ptr %reg.i.i254.i.i, align 4
  %call.i.i259.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i254.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i254.i.i) #13
  br label %rt73usb_bbp_write.exit262.i.i

rt73usb_bbp_write.exit262.i.i:                    ; preds = %if.then.i260.i.i, %rt73usb_bbp_write.exit253.i.i.rt73usb_bbp_write.exit262.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i255.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i264.i.i) #13
  %145 = ptrtoint ptr %reg.i264.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %reg.i264.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i266.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i264.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266.i.i)
  %tobool.not.i267.i.i = icmp eq i32 %call.i266.i.i, 0
  br i1 %tobool.not.i267.i.i, label %rt73usb_bbp_write.exit262.i.i.rt73usb_bbp_write.exit271.i.i_crit_edge, label %if.then.i269.i.i

rt73usb_bbp_write.exit262.i.i.rt73usb_bbp_write.exit271.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit262.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit271.i.i

if.then.i269.i.i:                                 ; preds = %rt73usb_bbp_write.exit262.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %146 = ptrtoint ptr %reg.i264.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 88591, ptr %reg.i264.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i263.i.i) #13
  %147 = ptrtoint ptr %reg.i.i263.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 257556736, ptr %reg.i.i263.i.i, align 4
  %call.i.i268.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i263.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i263.i.i) #13
  br label %rt73usb_bbp_write.exit271.i.i

rt73usb_bbp_write.exit271.i.i:                    ; preds = %if.then.i269.i.i, %rt73usb_bbp_write.exit262.i.i.rt73usb_bbp_write.exit271.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i264.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i273.i.i) #13
  %148 = ptrtoint ptr %reg.i273.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %reg.i273.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i275.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i273.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275.i.i)
  %tobool.not.i276.i.i = icmp eq i32 %call.i275.i.i, 0
  br i1 %tobool.not.i276.i.i, label %rt73usb_bbp_write.exit271.i.i.rt73usb_bbp_write.exit280.i.i_crit_edge, label %if.then.i278.i.i

rt73usb_bbp_write.exit271.i.i.rt73usb_bbp_write.exit280.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit271.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit280.i.i

if.then.i278.i.i:                                 ; preds = %rt73usb_bbp_write.exit271.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %149 = ptrtoint ptr %reg.i273.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 90880, ptr %reg.i273.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i272.i.i) #13
  %150 = ptrtoint ptr %reg.i.i272.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 6488320, ptr %reg.i.i272.i.i, align 4
  %call.i.i277.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i272.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i272.i.i) #13
  br label %rt73usb_bbp_write.exit280.i.i

rt73usb_bbp_write.exit280.i.i:                    ; preds = %if.then.i278.i.i, %rt73usb_bbp_write.exit271.i.i.rt73usb_bbp_write.exit280.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i273.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i282.i.i) #13
  %151 = ptrtoint ptr %reg.i282.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %reg.i282.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i284.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i282.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284.i.i)
  %tobool.not.i285.i.i = icmp eq i32 %call.i284.i.i, 0
  br i1 %tobool.not.i285.i.i, label %rt73usb_bbp_write.exit280.i.i.rt73usb_bbp_write.exit289.i.i_crit_edge, label %if.then.i287.i.i

rt73usb_bbp_write.exit280.i.i.rt73usb_bbp_write.exit289.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit280.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit289.i.i

if.then.i287.i.i:                                 ; preds = %rt73usb_bbp_write.exit280.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %reg.i282.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 91670, ptr %reg.i282.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i281.i.i) #13
  %153 = ptrtoint ptr %reg.i.i281.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 375783680, ptr %reg.i.i281.i.i, align 4
  %call.i.i286.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i281.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i281.i.i) #13
  br label %rt73usb_bbp_write.exit289.i.i

rt73usb_bbp_write.exit289.i.i:                    ; preds = %if.then.i287.i.i, %rt73usb_bbp_write.exit280.i.i.rt73usb_bbp_write.exit289.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i282.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i291.i.i) #13
  %154 = ptrtoint ptr %reg.i291.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %reg.i291.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i293.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i291.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293.i.i)
  %tobool.not.i294.i.i = icmp eq i32 %call.i293.i.i, 0
  br i1 %tobool.not.i294.i.i, label %rt73usb_bbp_write.exit289.i.i.rt73usb_bbp_write.exit298.i.i_crit_edge, label %if.then.i296.i.i

rt73usb_bbp_write.exit289.i.i.rt73usb_bbp_write.exit298.i.i_crit_edge: ; preds = %rt73usb_bbp_write.exit289.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit298.i.i

if.then.i296.i.i:                                 ; preds = %rt73usb_bbp_write.exit289.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %155 = ptrtoint ptr %reg.i291.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 92932, ptr %reg.i291.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i290.i.i) #13
  %156 = ptrtoint ptr %reg.i.i290.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 74121472, ptr %reg.i.i290.i.i, align 4
  %call.i.i295.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i290.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i290.i.i) #13
  br label %rt73usb_bbp_write.exit298.i.i

rt73usb_bbp_write.exit298.i.i:                    ; preds = %if.then.i296.i.i, %rt73usb_bbp_write.exit289.i.i.rt73usb_bbp_write.exit298.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i291.i.i) #13
  %eeprom.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rt73usb_bbp_write.exit298.i.i
  %i.0311.i.i = phi i32 [ 0, %rt73usb_bbp_write.exit298.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.0311.i.i, 19
  %157 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %eeprom.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i16, ptr %158, i32 %add.i.i
  %159 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %arrayidx.i.i.i, align 2
  %161 = call i16 @llvm.bswap.i16(i16 %160) #13
  %162 = zext i16 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %161, label %if.then9.i.i [
    i16 -1, label %for.body.i.i.for.inc.i.i_crit_edge
    i16 0, label %for.body.i.i.for.inc.i.i_crit_edge38
  ]

for.body.i.i.for.inc.i.i_crit_edge38:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i300.i.i) #13
  %163 = ptrtoint ptr %reg.i300.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %reg.i300.i.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i.i, i32 noundef 0) #13
  %call.i302.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i300.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302.i.i)
  %tobool.not.i303.i.i = icmp eq i32 %call.i302.i.i, 0
  br i1 %tobool.not.i303.i.i, label %if.then9.i.i.rt73usb_bbp_write.exit307.i.i_crit_edge, label %if.then.i305.i.i

if.then9.i.i.rt73usb_bbp_write.exit307.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit307.i.i

if.then.i305.i.i:                                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or48.i310.i.i = and i16 %161, 32767
  %or48.i.i.i = zext i16 %or48.i310.i.i to i32
  %or74.i.i.i = or i32 %or48.i.i.i, 65536
  %164 = ptrtoint ptr %reg.i300.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or74.i.i.i, ptr %reg.i300.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i299.i.i) #13
  %165 = call i32 @llvm.bswap.i32(i32 %or74.i.i.i) #13
  %166 = ptrtoint ptr %reg.i.i299.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %reg.i.i299.i.i, align 4
  %call.i.i304.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i299.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i299.i.i) #13
  br label %rt73usb_bbp_write.exit307.i.i

rt73usb_bbp_write.exit307.i.i:                    ; preds = %if.then.i305.i.i, %if.then9.i.i.rt73usb_bbp_write.exit307.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i300.i.i) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %rt73usb_bbp_write.exit307.i.i, %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge38
  %inc.i.i = add nuw nsw i32 %i.0311.i.i, 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %167 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 404226048, ptr %reg.i.i, align 4
  %call.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12328, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i3.i) #13
  %168 = ptrtoint ptr %reg.i3.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %reg.i3.i, align 4
  %call.i4.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i3.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i3.i) #13
  call void @rt2x00usb_disable_radio(ptr noundef %rt2x00dev) #13
  br label %if.end14

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge34, %entry.sw.bb4_crit_edge35, %entry.sw.bb4_crit_edge36
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp.not.i = icmp eq i32 %state, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i22) #13
  %169 = ptrtoint ptr %reg.i.i22 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %reg.i.i22, align 4
  %call.i.i23 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12336, ptr noundef nonnull %reg.i.i22, i16 noundef zeroext 4) #13
  %170 = ptrtoint ptr %reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %reg.i.i22, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i22) #13
  %172 = and i32 %171, -100663297
  %173 = call i32 @llvm.bswap.i32(i32 %172) #13
  %or.i = select i1 %cmp.not.i, i32 4, i32 2
  %or46.i = or i32 %173, %or.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i89.i) #13
  %174 = call i32 @llvm.bswap.i32(i32 %or46.i) #13
  %175 = ptrtoint ptr %reg.i89.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %reg.i89.i, align 4
  %call.i90.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12336, ptr noundef nonnull %reg.i89.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i89.i) #13
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.bb4
  %i.095.i = phi i32 [ 0, %sw.bb4 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i91.i) #13
  %176 = ptrtoint ptr %reg.i91.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %reg.i91.i, align 4
  %call.i92.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12336, ptr noundef nonnull %reg.i91.i, i16 noundef zeroext 4) #13
  %177 = ptrtoint ptr %reg.i91.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %reg.i91.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i91.i) #13
  %179 = and i32 %178, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %180 = icmp eq i32 %179, 0
  %cmp72.i = xor i1 %cmp.not.i, %180
  br i1 %cmp72.i, label %for.body.i.if.end14_crit_edge, label %if.end.i

for.body.i.if.end14_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.i:                                         ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i93.i) #13
  %181 = ptrtoint ptr %reg.i93.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %174, ptr %reg.i93.i, align 4
  %call.i94.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12336, ptr noundef nonnull %reg.i93.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i93.i) #13
  call void @msleep(i32 noundef 10) #13
  %inc.i = add nuw nsw i32 %i.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.body_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %do.end.i.i.i, %do.body.i.i.i.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  %retval1.0.ph = phi i32 [ -5, %do.body.i.i.i.do.body_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %sw.bb.do.body_crit_edge ], [ -524, %entry.do.body_crit_edge ], [ -16, %if.end.i.do.body_crit_edge ]
  %call8 = call i32 @___ratelimit(ptr noundef nonnull @rt73usb_set_device_state._rs, ptr noundef nonnull @__func__.rt73usb_set_device_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.if.end14_crit_edge, label %do.end

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %182 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %185, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.rt73usb_set_device_state, i32 noundef %state, i32 noundef %retval1.0.ph) #16
  br label %if.end14

if.end14:                                         ; preds = %do.end, %do.body.if.end14_crit_edge, %for.body.i.if.end14_crit_edge, %sw.bb2, %for.inc.i.i.if.end14_crit_edge, %entry.if.end14_crit_edge, %entry.if.end14_crit_edge33
  %retval1.027 = phi i32 [ %retval1.0.ph, %do.body.if.end14_crit_edge ], [ %retval1.0.ph, %do.end ], [ 0, %entry.if.end14_crit_edge ], [ 0, %entry.if.end14_crit_edge33 ], [ 0, %sw.bb2 ], [ 0, %for.inc.i.i.if.end14_crit_edge ], [ 0, %for.body.i.if.end14_crit_edge ]
  ret i32 %retval1.027
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_rfkill_poll(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12340, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg.i, align 4
  %3 = lshr i32 %2, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_link_stats(ptr noundef %rt2x00dev, ptr nocapture noundef writeonly %qual) #2 align 64 {
entry:
  %reg.i32 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12480, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %3 = and i32 %2, -65536
  %4 = call i32 @llvm.bswap.i32(i32 %3)
  %rx_failed = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 5
  %5 = ptrtoint ptr %rx_failed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_failed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i32) #13
  %6 = ptrtoint ptr %reg.i32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reg.i32, align 4
  %call.i33 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12484, ptr noundef nonnull %reg.i32, i16 noundef zeroext 4) #13
  %7 = ptrtoint ptr %reg.i32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg.i32, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i32) #13
  %shr28 = lshr i32 %9, 16
  %false_cca = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 1
  %10 = ptrtoint ptr %false_cca to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr28, ptr %false_cca, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_reset_tuner(ptr noundef %rt2x00dev, ptr nocapture noundef %qual) #2 align 64 {
entry:
  %reg.i.i.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vgc_level1.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %0 = ptrtoint ptr %vgc_level1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vgc_level1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 32
  br i1 %cmp.not.i, label %entry.rt73usb_set_vgc.exit_crit_edge, label %if.then.i

entry.rt73usb_set_vgc.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_set_vgc.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %2 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !132
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.rt73usb_bbp_write.exit.i_crit_edge, label %if.then.i.i

if.then.i.rt73usb_bbp_write.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 69920, ptr %reg.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  %4 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 537985280, ptr %reg.i.i.i, align 4
  %call.i.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  br label %rt73usb_bbp_write.exit.i

rt73usb_bbp_write.exit.i:                         ; preds = %if.then.i.i, %if.then.i.rt73usb_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %5 = ptrtoint ptr %vgc_level1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %vgc_level1.i, align 4
  %vgc_level_reg.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %6 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %vgc_level_reg.i, align 1
  br label %rt73usb_set_vgc.exit

rt73usb_set_vgc.exit:                             ; preds = %rt73usb_bbp_write.exit.i, %entry.rt73usb_set_vgc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_link_tuner(ptr noundef %rt2x00dev, ptr nocapture noundef %qual, i32 noundef %count) #2 align 64 {
entry:
  %reg.i.i.i251 = alloca i32, align 4
  %reg.i.i252 = alloca i32, align 4
  %reg.i.i.i236 = alloca i32, align 4
  %reg.i.i237 = alloca i32, align 4
  %reg.i.i.i221 = alloca i32, align 4
  %reg.i.i222 = alloca i32, align 4
  %reg.i.i.i206 = alloca i32, align 4
  %reg.i.i207 = alloca i32, align 4
  %reg.i.i.i191 = alloca i32, align 4
  %reg.i.i192 = alloca i32, align 4
  %reg.i.i.i178 = alloca i32, align 4
  %reg.i.i179 = alloca i32, align 4
  %reg.i.i.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_band = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 6
  %0 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %2 = ptrtoint ptr %cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cap_flags.i.i, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool.i.i.not, i8 40, i8 56
  %spec.select172 = select i1 %tobool.i.i.not, i8 72, i8 88
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %qual to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -82, i32 %6)
  %cmp6 = icmp sgt i32 %6, -82
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %6)
  %cmp11 = icmp sgt i32 %6, -84
  %. = select i1 %cmp11, i8 32, i8 28
  %up_bound.0 = select i1 %cmp6, i8 64, i8 %.
  %cap_flags.i.i176 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %7 = ptrtoint ptr %cap_flags.i.i176 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %cap_flags.i.i176, align 4
  %9 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.i177.not = icmp eq i32 %9, 0
  %narrow171 = add nuw nsw i8 %up_bound.0, 16
  %spec.select174 = select i1 %tobool.i.i177.not, i8 28, i8 48
  %spec.select175 = select i1 %tobool.i.i177.not, i8 %up_bound.0, i8 %narrow171
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then
  %low_bound.1 = phi i8 [ %spec.select, %if.then ], [ %spec.select174, %if.else ]
  %up_bound.1 = phi i8 [ %spec.select172, %if.then ], [ %spec.select175, %if.else ]
  %intf_associated = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 26
  %10 = ptrtoint ptr %intf_associated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intf_associated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end26.dynamic_cca_tune_crit_edge, label %if.end28

if.end26.dynamic_cca_tune_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %dynamic_cca_tune

if.end28:                                         ; preds = %if.end26
  %12 = ptrtoint ptr %qual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %13)
  %cmp30 = icmp sgt i32 %13, -35
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  %vgc_level1.i = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %14 = ptrtoint ptr %vgc_level1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vgc_level1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 96
  br i1 %cmp.not.i, label %if.then32.cleanup_crit_edge, label %if.then.i

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !132
  %csr_mutex.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i, i32 noundef 0) #13
  %call.i.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.rt73usb_bbp_write.exit.i_crit_edge, label %if.then.i.i

if.then.i.rt73usb_bbp_write.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 69984, ptr %reg.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  %18 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1611727104, ptr %reg.i.i.i, align 4
  %call.i.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  br label %rt73usb_bbp_write.exit.i

rt73usb_bbp_write.exit.i:                         ; preds = %if.then.i.i, %if.then.i.rt73usb_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %19 = ptrtoint ptr %vgc_level1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 96, ptr %vgc_level1.i, align 4
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -59, i32 %13)
  %cmp35 = icmp ugt i32 %13, -59
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  %vgc_level1.i180 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %20 = ptrtoint ptr %vgc_level1.i180 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vgc_level1.i180, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %up_bound.1)
  %cmp.not.i181 = icmp eq i8 %21, %up_bound.1
  br i1 %cmp.not.i181, label %if.then37.cleanup_crit_edge, label %if.then.i185

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i185:                                     ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i179) #13
  %22 = ptrtoint ptr %reg.i.i179 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %reg.i.i179, align 4, !annotation !132
  %csr_mutex.i.i182 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i182, i32 noundef 0) #13
  %call.i.i183 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i179) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i183)
  %tobool.not.i.i184 = icmp eq i32 %call.i.i183, 0
  br i1 %tobool.not.i.i184, label %if.then.i185.rt73usb_bbp_write.exit.i189_crit_edge, label %if.then.i.i187

if.then.i185.rt73usb_bbp_write.exit.i189_crit_edge: ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i189

if.then.i.i187:                                   ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i = zext i8 %up_bound.1 to i32
  %or74.i.i = or i32 %conv7.i.i, 69888
  %23 = ptrtoint ptr %reg.i.i179 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or74.i.i, ptr %reg.i.i179, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i178) #13
  %24 = call i32 @llvm.bswap.i32(i32 %or74.i.i) #13
  %25 = ptrtoint ptr %reg.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %reg.i.i.i178, align 4
  %call.i.i.i186 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i178, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i178) #13
  br label %rt73usb_bbp_write.exit.i189

rt73usb_bbp_write.exit.i189:                      ; preds = %if.then.i.i187, %if.then.i185.rt73usb_bbp_write.exit.i189_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i182) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i179) #13
  %26 = ptrtoint ptr %vgc_level1.i180 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %up_bound.1, ptr %vgc_level1.i180, align 4
  br label %cleanup.sink.split

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67, i32 %13)
  %cmp40 = icmp ugt i32 %13, -67
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end38
  %narrow170 = add nuw nsw i8 %low_bound.1, 16
  %vgc_level1.i193 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %27 = ptrtoint ptr %vgc_level1.i193 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vgc_level1.i193, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %narrow170)
  %cmp.not.i194 = icmp eq i8 %28, %narrow170
  br i1 %cmp.not.i194, label %if.then42.cleanup_crit_edge, label %if.then.i198

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i198:                                     ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i192) #13
  %29 = ptrtoint ptr %reg.i.i192 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %reg.i.i192, align 4, !annotation !132
  %csr_mutex.i.i195 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i195, i32 noundef 0) #13
  %call.i.i196 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i192) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i196)
  %tobool.not.i.i197 = icmp eq i32 %call.i.i196, 0
  br i1 %tobool.not.i.i197, label %if.then.i198.rt73usb_bbp_write.exit.i204_crit_edge, label %if.then.i.i202

if.then.i198.rt73usb_bbp_write.exit.i204_crit_edge: ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i204

if.then.i.i202:                                   ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i199 = zext i8 %narrow170 to i32
  %or74.i.i200 = or i32 %conv7.i.i199, 69888
  %30 = ptrtoint ptr %reg.i.i192 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or74.i.i200, ptr %reg.i.i192, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i191) #13
  %31 = call i32 @llvm.bswap.i32(i32 %or74.i.i200) #13
  %32 = ptrtoint ptr %reg.i.i.i191 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %reg.i.i.i191, align 4
  %call.i.i.i201 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i191, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i191) #13
  br label %rt73usb_bbp_write.exit.i204

rt73usb_bbp_write.exit.i204:                      ; preds = %if.then.i.i202, %if.then.i198.rt73usb_bbp_write.exit.i204_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i195) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i192) #13
  %33 = ptrtoint ptr %vgc_level1.i193 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %narrow170, ptr %vgc_level1.i193, align 4
  br label %cleanup.sink.split

if.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %13)
  %cmp48 = icmp ugt i32 %13, -75
  br i1 %cmp48, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end46
  %narrow = add nuw nsw i8 %low_bound.1, 8
  %vgc_level1.i208 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %34 = ptrtoint ptr %vgc_level1.i208 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %vgc_level1.i208, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %narrow)
  %cmp.not.i209 = icmp eq i8 %35, %narrow
  br i1 %cmp.not.i209, label %if.then50.cleanup_crit_edge, label %if.then.i213

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i213:                                     ; preds = %if.then50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i207) #13
  %36 = ptrtoint ptr %reg.i.i207 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %reg.i.i207, align 4, !annotation !132
  %csr_mutex.i.i210 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i210, i32 noundef 0) #13
  %call.i.i211 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i207) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i211)
  %tobool.not.i.i212 = icmp eq i32 %call.i.i211, 0
  br i1 %tobool.not.i.i212, label %if.then.i213.rt73usb_bbp_write.exit.i219_crit_edge, label %if.then.i.i217

if.then.i213.rt73usb_bbp_write.exit.i219_crit_edge: ; preds = %if.then.i213
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i219

if.then.i.i217:                                   ; preds = %if.then.i213
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i214 = zext i8 %narrow to i32
  %or74.i.i215 = or i32 %conv7.i.i214, 69888
  %37 = ptrtoint ptr %reg.i.i207 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or74.i.i215, ptr %reg.i.i207, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i206) #13
  %38 = call i32 @llvm.bswap.i32(i32 %or74.i.i215) #13
  %39 = ptrtoint ptr %reg.i.i.i206 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %reg.i.i.i206, align 4
  %call.i.i.i216 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i206, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i206) #13
  br label %rt73usb_bbp_write.exit.i219

rt73usb_bbp_write.exit.i219:                      ; preds = %if.then.i.i217, %if.then.i213.rt73usb_bbp_write.exit.i219_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i210) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i207) #13
  %40 = ptrtoint ptr %vgc_level1.i208 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %narrow, ptr %vgc_level1.i208, align 4
  br label %cleanup.sink.split

if.end54:                                         ; preds = %if.end46
  %.tr = trunc i32 %13 to i8
  %41 = shl i8 %.tr, 1
  %42 = add nuw nsw i8 %up_bound.1, -108
  %conv58 = add i8 %42, %41
  %43 = tail call i8 @llvm.umax.i8(i8 %low_bound.1, i8 %conv58)
  %vgc_level = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %44 = ptrtoint ptr %vgc_level to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vgc_level, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %43)
  %cmp67 = icmp ugt i8 %45, %43
  br i1 %cmp67, label %if.then.i228, label %if.end54.dynamic_cca_tune_crit_edge

if.end54.dynamic_cca_tune_crit_edge:              ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %dynamic_cca_tune

if.then.i228:                                     ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i222) #13
  %46 = ptrtoint ptr %reg.i.i222 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %reg.i.i222, align 4, !annotation !132
  %csr_mutex.i.i225 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i225, i32 noundef 0) #13
  %call.i.i226 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i222) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i226)
  %tobool.not.i.i227 = icmp eq i32 %call.i.i226, 0
  br i1 %tobool.not.i.i227, label %if.then.i228.rt73usb_set_vgc.exit235_crit_edge, label %if.then.i.i232

if.then.i228.rt73usb_set_vgc.exit235_crit_edge:   ; preds = %if.then.i228
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_set_vgc.exit235

if.then.i.i232:                                   ; preds = %if.then.i228
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i229 = zext i8 %43 to i32
  %or74.i.i230 = or i32 %conv7.i.i229, 69888
  %47 = ptrtoint ptr %reg.i.i222 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or74.i.i230, ptr %reg.i.i222, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i221) #13
  %48 = call i32 @llvm.bswap.i32(i32 %or74.i.i230) #13
  %49 = ptrtoint ptr %reg.i.i.i221 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %reg.i.i.i221, align 4
  %call.i.i.i231 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i221, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i221) #13
  br label %rt73usb_set_vgc.exit235

rt73usb_set_vgc.exit235:                          ; preds = %if.then.i.i232, %if.then.i228.rt73usb_set_vgc.exit235_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i225) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i222) #13
  %50 = ptrtoint ptr %vgc_level to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %43, ptr %vgc_level, align 4
  br label %cleanup.sink.split

dynamic_cca_tune:                                 ; preds = %if.end54.dynamic_cca_tune_crit_edge, %if.end26.dynamic_cca_tune_crit_edge
  %up_bound.3 = phi i8 [ %43, %if.end54.dynamic_cca_tune_crit_edge ], [ %up_bound.1, %if.end26.dynamic_cca_tune_crit_edge ]
  %false_cca = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 1
  %51 = ptrtoint ptr %false_cca to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %false_cca, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %52)
  %cmp71 = icmp sgt i32 %52, 512
  br i1 %cmp71, label %land.lhs.true, label %if.else90

land.lhs.true:                                    ; preds = %dynamic_cca_tune
  %vgc_level73 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %53 = ptrtoint ptr %vgc_level73 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vgc_level73, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %up_bound.3)
  %cmp76 = icmp ult i8 %54, %up_bound.3
  br i1 %cmp76, label %if.then78, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then78:                                        ; preds = %land.lhs.true
  %add81 = add i8 %54, 4
  %55 = tail call i8 @llvm.umin.i8(i8 %add81, i8 %up_bound.3)
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %55)
  %cmp.not.i239 = icmp eq i8 %54, %55
  br i1 %cmp.not.i239, label %if.then78.cleanup_crit_edge, label %if.then.i243

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i243:                                     ; preds = %if.then78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i237) #13
  %56 = ptrtoint ptr %reg.i.i237 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %reg.i.i237, align 4, !annotation !132
  %csr_mutex.i.i240 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i240, i32 noundef 0) #13
  %call.i.i241 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i237) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i241)
  %tobool.not.i.i242 = icmp eq i32 %call.i.i241, 0
  br i1 %tobool.not.i.i242, label %if.then.i243.rt73usb_bbp_write.exit.i249_crit_edge, label %if.then.i.i247

if.then.i243.rt73usb_bbp_write.exit.i249_crit_edge: ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i249

if.then.i.i247:                                   ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i244 = zext i8 %55 to i32
  %or74.i.i245 = or i32 %conv7.i.i244, 69888
  %57 = ptrtoint ptr %reg.i.i237 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or74.i.i245, ptr %reg.i.i237, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i236) #13
  %58 = call i32 @llvm.bswap.i32(i32 %or74.i.i245) #13
  %59 = ptrtoint ptr %reg.i.i.i236 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %reg.i.i.i236, align 4
  %call.i.i.i246 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i236, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i236) #13
  br label %rt73usb_bbp_write.exit.i249

rt73usb_bbp_write.exit.i249:                      ; preds = %if.then.i.i247, %if.then.i243.rt73usb_bbp_write.exit.i249_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i240) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i237) #13
  %60 = ptrtoint ptr %vgc_level73 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %55, ptr %vgc_level73, align 4
  br label %cleanup.sink.split

if.else90:                                        ; preds = %dynamic_cca_tune
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %52)
  %cmp92 = icmp slt i32 %52, 100
  br i1 %cmp92, label %land.lhs.true94, label %if.else90.cleanup_crit_edge

if.else90.cleanup_crit_edge:                      ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true94:                                  ; preds = %if.else90
  %vgc_level95 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 2
  %61 = ptrtoint ptr %vgc_level95 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %vgc_level95, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %low_bound.1)
  %cmp98 = icmp ugt i8 %62, %low_bound.1
  br i1 %cmp98, label %if.then100, label %land.lhs.true94.cleanup_crit_edge

land.lhs.true94.cleanup_crit_edge:                ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then100:                                       ; preds = %land.lhs.true94
  %sub103 = add i8 %62, -4
  %63 = tail call i8 @llvm.umax.i8(i8 %sub103, i8 %low_bound.1)
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %63)
  %cmp.not.i254 = icmp eq i8 %62, %63
  br i1 %cmp.not.i254, label %if.then100.cleanup_crit_edge, label %if.then.i258

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i258:                                     ; preds = %if.then100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i252) #13
  %64 = ptrtoint ptr %reg.i.i252 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %reg.i.i252, align 4, !annotation !132
  %csr_mutex.i.i255 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i.i255, i32 noundef 0) #13
  %call.i.i256 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i252) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256)
  %tobool.not.i.i257 = icmp eq i32 %call.i.i256, 0
  br i1 %tobool.not.i.i257, label %if.then.i258.rt73usb_bbp_write.exit.i264_crit_edge, label %if.then.i.i262

if.then.i258.rt73usb_bbp_write.exit.i264_crit_edge: ; preds = %if.then.i258
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i264

if.then.i.i262:                                   ; preds = %if.then.i258
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i259 = zext i8 %63 to i32
  %or74.i.i260 = or i32 %conv7.i.i259, 69888
  %65 = ptrtoint ptr %reg.i.i252 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or74.i.i260, ptr %reg.i.i252, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i251) #13
  %66 = call i32 @llvm.bswap.i32(i32 %or74.i.i260) #13
  %67 = ptrtoint ptr %reg.i.i.i251 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %reg.i.i.i251, align 4
  %call.i.i.i261 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i251, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i251) #13
  br label %rt73usb_bbp_write.exit.i264

rt73usb_bbp_write.exit.i264:                      ; preds = %if.then.i.i262, %if.then.i258.rt73usb_bbp_write.exit.i264_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i.i255) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i252) #13
  %68 = ptrtoint ptr %vgc_level95 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %63, ptr %vgc_level95, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rt73usb_bbp_write.exit.i264, %rt73usb_bbp_write.exit.i249, %rt73usb_set_vgc.exit235, %rt73usb_bbp_write.exit.i219, %rt73usb_bbp_write.exit.i204, %rt73usb_bbp_write.exit.i189, %rt73usb_bbp_write.exit.i
  %.sink = phi i8 [ %63, %rt73usb_bbp_write.exit.i264 ], [ %55, %rt73usb_bbp_write.exit.i249 ], [ %narrow, %rt73usb_bbp_write.exit.i219 ], [ %narrow170, %rt73usb_bbp_write.exit.i204 ], [ %up_bound.1, %rt73usb_bbp_write.exit.i189 ], [ 96, %rt73usb_bbp_write.exit.i ], [ %43, %rt73usb_set_vgc.exit235 ]
  %vgc_level_reg.i263 = getelementptr inbounds %struct.link_qual, ptr %qual, i32 0, i32 3
  %69 = ptrtoint ptr %vgc_level_reg.i263 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.sink, ptr %vgc_level_reg.i263, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then100.cleanup_crit_edge, %land.lhs.true94.cleanup_crit_edge, %if.else90.cleanup_crit_edge, %if.then78.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then32.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_watchdog(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_start_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  %reg.i112 = alloca i32, align 4
  %reg.i110 = alloca i32, align 4
  %reg.i108 = alloca i32, align 4
  %reg.i = alloca i32, align 4
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 14, label %sw.bb
    i32 16, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %8 = and i32 %7, -257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i108) #13
  %9 = ptrtoint ptr %reg.i108 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg.i108, align 4
  %call.i109 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i108, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i108) #13
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i110) #13
  %10 = ptrtoint ptr %reg.i110 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %reg.i110, align 4
  %call.i111 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i110, i16 noundef zeroext 4) #13
  %11 = ptrtoint ptr %reg.i110 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i110, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i110) #13
  %13 = or i32 %12, 6400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i112) #13
  %14 = ptrtoint ptr %reg.i112 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg.i112, align 4
  %call.i113 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i112, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i112) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_kick_queue(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_stop_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  %reg.i112 = alloca i32, align 4
  %reg.i110 = alloca i32, align 4
  %reg.i108 = alloca i32, align 4
  %reg.i = alloca i32, align 4
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 14, label %sw.bb
    i32 16, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %8 = or i32 %7, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i108) #13
  %9 = ptrtoint ptr %reg.i108 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg.i108, align 4
  %call.i109 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i108, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i108) #13
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i110) #13
  %10 = ptrtoint ptr %reg.i110 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %reg.i110, align 4
  %call.i111 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i110, i16 noundef zeroext 4) #13
  %11 = ptrtoint ptr %reg.i110 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i110, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i110) #13
  %13 = and i32 %12, -6401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i112) #13
  %14 = ptrtoint ptr %reg.i112 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg.i112, align 4
  %call.i113 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i112, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i112) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_flush_queue(ptr noundef, i1 noundef zeroext) #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt73usb_write_tx_desc(ptr nocapture noundef readonly %entry1, ptr noundef %txdesc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %txdesc, align 4
  %shr.i = lshr i32 %5, 6
  %and1.i = and i32 %shr.i, 1
  %6 = load volatile i32, ptr %txdesc, align 4
  %7 = lshr i32 %6, 2
  %shl66 = and i32 %7, 4
  %or44 = or i32 %and1.i, %shl66
  %8 = load volatile i32, ptr %txdesc, align 4
  %9 = lshr i32 %8, 4
  %shl96 = and i32 %9, 8
  %or74 = or i32 %or44, %shl96
  %10 = load volatile i32, ptr %txdesc, align 4
  %11 = lshr i32 %10, 1
  %shl126 = and i32 %11, 16
  %or104 = or i32 %or74, %shl126
  %rate_mode = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 4
  %12 = ptrtoint ptr %rate_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp148 = icmp eq i32 %13, 1
  %shl156 = select i1 %cmp148, i32 32, i32 0
  %u = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3
  %ifs = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 4
  %14 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifs, align 4
  %shl184 = shl i32 %15, 6
  %and191 = and i32 %shl184, 64
  %16 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %txdesc, align 4
  %18 = lshr i32 %17, 1
  %shl214 = and i32 %18, 128
  %19 = load volatile i32, ptr %txdesc, align 4
  %20 = lshr i32 %19, 4
  %shl244 = and i32 %20, 256
  %21 = load volatile i32, ptr %txdesc, align 4
  %22 = lshr i32 %21, 1
  %shl274 = and i32 %22, 512
  %or164.masked.masked.masked.masked = or i32 %or104, %shl156
  %or192.masked.masked.masked = or i32 %or164.masked.masked.masked.masked, %and191
  %or222.masked.masked = or i32 %or192.masked.masked.masked, %shl214
  %or252.masked = or i32 %or222.masked.masked, %shl244
  %or282 = or i32 %or252.masked, %shl274
  %key_idx = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 7
  %23 = ptrtoint ptr %key_idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %key_idx, align 4
  %conv296 = zext i16 %24 to i32
  %shl303 = shl nuw nsw i32 %conv296, 10
  %and294 = or i32 %or282, %shl303
  %or311 = and i32 %and294, 65533
  %length = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 1
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %length, align 4
  %conv325 = zext i16 %26 to i32
  %shl332 = shl nuw i32 %conv325, 16
  %and339 = and i32 %shl332, 268369920
  %27 = load volatile i32, ptr %txdesc, align 4
  %28 = shl i32 %27, 22
  %shl362 = and i32 %28, 268435456
  %cipher = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 6
  %29 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cipher, align 4
  %shl390 = shl i32 %30, 29
  %and323 = or i32 %and339, %or311
  %or370 = or i32 %and323, %shl362
  %and382 = or i32 %or370, %shl390
  %or398 = or i32 %and382, 2
  %31 = tail call i32 @llvm.bswap.i32(i32 %or398) #13
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %3, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 1
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  %35 = and i32 %34, 49391
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %37 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qid, align 4
  %and426 = and i32 %40, 15
  %or427 = or i32 %and426, %36
  %aifs = getelementptr inbounds %struct.data_queue, ptr %38, i32 0, i32 15
  %41 = ptrtoint ptr %aifs to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %aifs, align 2
  %conv442 = zext i16 %42 to i32
  %shl449 = shl nuw nsw i32 %conv442, 4
  %and456 = and i32 %shl449, 240
  %or457 = or i32 %or427, %and456
  %cw_min = getelementptr inbounds %struct.data_queue, ptr %38, i32 0, i32 16
  %43 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %cw_min, align 4
  %conv472 = zext i16 %44 to i32
  %shl479 = shl nuw nsw i32 %conv472, 8
  %and486 = and i32 %shl479, 3840
  %or487 = or i32 %or457, %and486
  %cw_max = getelementptr inbounds %struct.data_queue, ptr %38, i32 0, i32 17
  %45 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cw_max, align 2
  %conv502 = zext i16 %46 to i32
  %shl509 = shl nuw nsw i32 %conv502, 12
  %and516 = and i32 %shl509, 61440
  %or517 = or i32 %or487, %and516
  %iv_offset = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 8
  %47 = ptrtoint ptr %iv_offset to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %iv_offset, align 2
  %conv531 = zext i16 %48 to i32
  %shl538 = shl nuw i32 %conv531, 16
  %and545 = and i32 %shl538, 4128768
  %and558 = or i32 %or517, %and545
  %49 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %txdesc, align 4
  %51 = shl i32 %50, 26
  %shl568 = and i32 %51, 268435456
  %or576 = or i32 %and558, %shl568
  %52 = tail call i32 @llvm.bswap.i32(i32 %or576) #13
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i900 = getelementptr i32, ptr %3, i32 2
  %signal = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 3
  %54 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %signal, align 4
  %56 = and i16 %55, 255
  %and606.masked = zext i16 %56 to i32
  %service = getelementptr inbounds %struct.anon.133, ptr %u, i32 0, i32 3
  %57 = ptrtoint ptr %service to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %service, align 2
  %conv622 = zext i16 %58 to i32
  %shl629 = shl nuw nsw i32 %conv622, 8
  %shl629.masked = and i32 %shl629, 65280
  %and649 = or i32 %shl629.masked, %and606.masked
  %length_low = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 3, i32 0, i32 1
  %59 = ptrtoint ptr %length_low to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %length_low, align 2
  %conv652 = zext i16 %60 to i32
  %shl659 = shl nuw i32 %conv652, 16
  %shl659.masked = and i32 %shl659, 16711680
  %and679 = or i32 %and649, %shl659.masked
  %61 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %u, align 4
  %conv682 = zext i16 %62 to i32
  %shl689 = shl i32 %conv682, 24
  %or697 = or i32 %and679, %shl689
  %63 = tail call i32 @llvm.bswap.i32(i32 %or697) #13
  %64 = ptrtoint ptr %arrayidx.i.i900 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx.i.i900, align 4
  %65 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %txdesc, align 4
  %67 = and i32 %66, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not = icmp eq i32 %67, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %iv = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %68 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iv, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 3
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx.i, align 4
  %arrayidx701 = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %71 = ptrtoint ptr %arrayidx701 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx701, align 4
  %arrayidx.i902 = getelementptr i32, ptr %3, i32 4
  %73 = ptrtoint ptr %arrayidx.i902 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx.i902, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %74 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %arrayidx.i.i903 = getelementptr i32, ptr %3, i32 5
  %75 = ptrtoint ptr %arrayidx.i.i903 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i903, align 4
  %77 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %queue, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %tx_power = getelementptr inbounds %struct.rt2x00_dev, ptr %80, i32 0, i32 34
  %81 = ptrtoint ptr %tx_power to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %tx_power, align 2
  %83 = and i16 %82, 255
  %84 = tail call i16 @llvm.umin.i16(i16 %83, i16 31)
  %85 = zext i16 %84 to i32
  %86 = and i32 %76, -65282
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %shl743 = shl nuw nsw i32 %85, 16
  %or751 = or i32 %shl743, %87
  %or777 = or i32 %or751, 16777216
  %88 = tail call i32 @llvm.bswap.i32(i32 %or777) #13
  %89 = ptrtoint ptr %arrayidx.i.i903 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx.i.i903, align 4
  %90 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %74, align 4
  %92 = or i8 %91, 16
  store i8 %92, ptr %74, align 4
  %desc = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %93 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %3, ptr %desc, align 4
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %94 = ptrtoint ptr %desc_len to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 24, ptr %desc_len, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_write_beacon(ptr noundef %entry1, ptr noundef %txdesc) #2 align 64 {
entry:
  %reg.i115 = alloca i32, align 4
  %reg.i113 = alloca i32, align 4
  %reg.i110 = alloca i32, align 4
  %reg.i107 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.i, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %and = and i32 %7, -1048577
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i107) #13
  %8 = call i32 @llvm.bswap.i32(i32 %and) #13
  %9 = ptrtoint ptr %reg.i107 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg.i107, align 4
  %call.i108 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i107, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i107) #13
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %call16 = call ptr @skb_push(ptr noundef %11, i32 noundef 24) #13
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 24)
  call void @rt73usb_write_tx_desc(ptr noundef %entry1, ptr noundef %txdesc)
  call void @rt2x00debug_dump_frame(ptr noundef %3, i32 noundef 4, ptr noundef %entry1) #13
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add = add i32 %20, 3
  %div106 = and i32 %add, -4
  %sub22 = sub i32 %div106, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %div106, i32 %20)
  %tobool.not = icmp eq i32 %div106, %20
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %land.lhs.true

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true:                                    ; preds = %entry
  %call.i109 = call i32 @__skb_pad(ptr noundef %18, i32 noundef %sub22, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool25.not = icmp eq i32 %call.i109, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end36_crit_edge, label %do.body26

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.body26:                                        ; preds = %land.lhs.true
  %call27 = call i32 @___ratelimit(ptr noundef nonnull @rt73usb_write_beacon._rs, ptr noundef nonnull @__func__.rt73usb_write_beacon) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body26.do.end34_crit_edge, label %do.end32

do.body26.do.end34_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.rt73usb_write_beacon) #16
  br label %do.end34

do.end34:                                         ; preds = %do.end32, %do.body26.do.end34_crit_edge
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i110) #13
  %26 = ptrtoint ptr %reg.i110 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %6, ptr %reg.i110, align 4
  %call.i111 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i110, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i110) #13
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %entry.if.end36_crit_edge
  %entry_idx = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 4
  %27 = ptrtoint ptr %entry_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entry_idx, align 4
  %29 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb, align 4
  %data40 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data40, align 4
  %len42 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  %33 = ptrtoint ptr %len42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len42, align 4
  %add43 = add i32 %34, %sub22
  %.tr = trunc i32 %28 to i16
  %35 = shl i16 %.tr, 8
  %conv.i = add i16 %35, 9216
  %conv1.i = trunc i32 %add43 to i16
  %call.i112 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, ptr noundef %32, i16 noundef zeroext %conv1.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i113) #13
  %36 = ptrtoint ptr %reg.i113 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 135266304, ptr %reg.i113, align 4
  %call.i114 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12392, ptr noundef nonnull %reg.i113, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i113) #13
  %or69 = or i32 %7, 1048576
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i115) #13
  %37 = call i32 @llvm.bswap.i32(i32 %or69) #13
  %38 = ptrtoint ptr %reg.i115 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %reg.i115, align 4
  %call.i116 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i115, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i115) #13
  %39 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb, align 4
  call void @consume_skb(ptr noundef %40) #13
  %41 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_clear_beacon(ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  %reg.i27 = alloca i32, align 4
  %reg.i25 = alloca i32, align 4
  %reg.i23 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %7 = and i32 %6, -4097
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i23) #13
  %8 = ptrtoint ptr %reg.i23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %reg.i23, align 4
  %call.i24 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i23, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i23) #13
  %entry_idx = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 4
  %9 = ptrtoint ptr %entry_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %entry_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i25) #13
  %11 = ptrtoint ptr %reg.i25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg.i25, align 4
  %.tr = trunc i32 %10 to i16
  %12 = shl i16 %.tr, 8
  %conv.i = add i16 %12, 9216
  %call.i26 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, ptr noundef nonnull %reg.i25, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i25) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i27) #13
  %13 = ptrtoint ptr %reg.i27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %reg.i27, align 4
  %call.i28 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i27, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i27) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt73usb_get_tx_data_len(ptr nocapture noundef readonly %entry1) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, 3
  %div9 = and i32 %add, -4
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
  %mul2 = select i1 %tobool.not, i32 4, i32 0
  %add3 = add i32 %mul2, %div9
  ret i32 %add3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_fill_rxdone(ptr nocapture noundef readonly %entry1, ptr nocapture noundef %rxdesc) #2 align 64 {
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
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %desc = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 9
  %10 = ptrtoint ptr %desc_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %desc_len, align 1
  %conv = zext i8 %11 to i32
  %12 = call ptr @memcpy(ptr %9, ptr %7, i32 %conv)
  %13 = load ptr, ptr %desc, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  %20 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %or = or i32 %22, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shr34 = lshr i32 %16, 29
  %conv35 = trunc i32 %shr34 to i8
  %cipher = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 10
  %23 = ptrtoint ptr %cipher to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv35, ptr %cipher, align 8
  %and48 = lshr i32 %16, 8
  %24 = trunc i32 %and48 to i8
  %conv56 = and i8 %24, 3
  %cipher_status = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 11
  %25 = ptrtoint ptr %cipher_status to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv56, ptr %cipher_status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %16)
  %cmp59.not = icmp ult i32 %16, 536870912
  br i1 %cmp59.not, label %if.end.if.end90_crit_edge, label %if.then61

if.end.if.end90_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then61:                                        ; preds = %if.end
  %arrayidx.i = getelementptr i32, ptr %13, i32 2
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %iv = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 12
  %28 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %iv, align 4
  %arrayidx.i230 = getelementptr i32, ptr %13, i32 3
  %29 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i230, align 4
  %arrayidx65 = getelementptr %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx65, align 4
  %dev_flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %32 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_flags, align 8
  %or66 = or i32 %33, 16
  store i32 %or66, ptr %dev_flags, align 8
  %arrayidx.i231 = getelementptr i32, ptr %13, i32 4
  %34 = ptrtoint ptr %arrayidx.i231 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i231, align 4
  %icv = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 13
  %36 = ptrtoint ptr %icv to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %icv, align 4
  %or69 = or i32 %33, 48
  store i32 %or69, ptr %dev_flags, align 8
  %flags70 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %37 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags70, align 4
  %or73 = or i32 %38, 24
  store i32 %or73, ptr %flags70, align 4
  %trunc = trunc i32 %and48 to i2
  %39 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.38)
  switch i2 %trunc, label %if.then61.if.end90_crit_edge [
    i2 0, label %if.then61.if.end90.sink.split_crit_edge
    i2 -2, label %if.then85
  ]

if.then61.if.end90.sink.split_crit_edge:          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90.sink.split

if.then61.if.end90_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then85:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90.sink.split

if.end90.sink.split:                              ; preds = %if.then85, %if.then61.if.end90.sink.split_crit_edge
  %.sink = phi i32 [ 25, %if.then85 ], [ 26, %if.then61.if.end90.sink.split_crit_edge ]
  %or80 = or i32 %38, %.sink
  %40 = ptrtoint ptr %flags70 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or80, ptr %flags70, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.then61.if.end90_crit_edge, %if.end.if.end90_crit_edge
  %and103 = and i32 %19, 255
  %signal = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 1
  %41 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and103, ptr %signal, align 8
  %and.i = lshr i32 %19, 13
  %conv9.i = and i32 %and.i, 3
  %switch.tableidx = add nsw i32 %conv9.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %42 = icmp ult i32 %switch.tableidx, 3
  br i1 %42, label %switch.lookup, label %if.end90.rt73usb_agc_to_rssi.exit_crit_edge

if.end90.rt73usb_agc_to_rssi.exit_crit_edge:      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_agc_to_rssi.exit

switch.lookup:                                    ; preds = %if.end90
  %lna_gain.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 33
  %43 = ptrtoint ptr %lna_gain.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %lna_gain.i, align 8
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 5917248, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %45 = trunc i16 %44 to i8
  %conv20.i = add i8 %switch.masked, %45
  %curr_band.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 6
  %46 = ptrtoint ptr %curr_band.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %curr_band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp21.i = icmp eq i32 %47, 1
  br i1 %cmp21.i, label %if.then.i, label %switch.lookup.if.end52.i_crit_edge

switch.lookup.if.end52.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then.i:                                        ; preds = %switch.lookup
  %cap_flags.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 14
  %48 = ptrtoint ptr %cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %cap_flags.i.i.i, align 4
  %50 = and i32 %49, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.i.not.i = icmp eq i32 %50, 0
  br i1 %tobool.i.i.not.i, label %if.else.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = and i32 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %switch.not.i = icmp eq i32 %51, 0
  %add32.i = add i8 %conv20.i, 10
  %spec.select.i = select i1 %switch.not.i, i8 %conv20.i, i8 %add32.i
  br label %if.end52.i

if.else.i:                                        ; preds = %if.then.i
  %52 = zext i32 %conv9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %conv9.i, label %if.else.i.if.end52.i_crit_edge [
    i32 3, label %if.then37.i
    i32 2, label %if.then45.i
  ]

if.else.i.if.end52.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %add39.i = add i8 %conv20.i, 6
  br label %if.end52.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %add47.i = add i8 %conv20.i, 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then45.i, %if.then37.i, %if.else.i.if.end52.i_crit_edge, %if.then23.i, %switch.lookup.if.end52.i_crit_edge
  %offset.1.i = phi i8 [ %add39.i, %if.then37.i ], [ %add47.i, %if.then45.i ], [ %conv20.i, %switch.lookup.if.end52.i_crit_edge ], [ %conv20.i, %if.else.i.if.end52.i_crit_edge ], [ %spec.select.i, %if.then23.i ]
  %53 = lshr i32 %19, 7
  %mul.i = and i32 %53, 62
  %conv73.i = zext i8 %offset.1.i to i32
  %sub.i = sub nsw i32 %mul.i, %conv73.i
  br label %rt73usb_agc_to_rssi.exit

rt73usb_agc_to_rssi.exit:                         ; preds = %if.end52.i, %if.end90.rt73usb_agc_to_rssi.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end52.i ], [ 0, %if.end90.rt73usb_agc_to_rssi.exit_crit_edge ]
  %rssi = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 2
  %54 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i, ptr %rssi, align 4
  %and124 = lshr i32 %16, 16
  %shr131 = and i32 %and124, 4095
  %size = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 3
  %55 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shr131, ptr %size, align 8
  %56 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool152.not = icmp eq i32 %56, 0
  %dev_flags157 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %57 = ptrtoint ptr %dev_flags157 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dev_flags157, align 8
  %. = select i1 %tobool152.not, i32 2, i32 1
  %or158 = or i32 %58, %.
  store i32 %or158, ptr %dev_flags157, align 8
  %59 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool180.not = icmp eq i32 %59, 0
  br i1 %tobool180.not, label %rt73usb_agc_to_rssi.exit.if.end184_crit_edge, label %if.then181

rt73usb_agc_to_rssi.exit.if.end184_crit_edge:     ; preds = %rt73usb_agc_to_rssi.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

if.then181:                                       ; preds = %rt73usb_agc_to_rssi.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev_flags182 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %60 = ptrtoint ptr %dev_flags182 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_flags182, align 8
  %or183 = or i32 %61, 8
  store i32 %or183, ptr %dev_flags182, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.then181, %rt73usb_agc_to_rssi.exit.if.end184_crit_edge
  %62 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb, align 4
  %64 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %queue, align 4
  %desc_size = getelementptr inbounds %struct.data_queue, ptr %65, i32 0, i32 19
  %66 = ptrtoint ptr %desc_size to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %desc_size, align 2
  %conv187 = zext i8 %67 to i32
  %call188 = tail call ptr @skb_pull(ptr noundef %63, i32 noundef %conv187) #13
  %68 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %skb, align 4
  %70 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size, align 8
  tail call void @skb_trim(ptr noundef %69, i32 noundef %71) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_config_shared_key(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %crypto, ptr nocapture noundef %key) #2 align 64 {
entry:
  %reg.i143 = alloca i32, align 4
  %reg.i141 = alloca i32, align 4
  %reg.i139 = alloca i32, align 4
  %reg.i137 = alloca i32, align 4
  %reg.i135 = alloca i32, align 4
  %reg.i133 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %key_entry = alloca %struct.hw_key_entry, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_entry) #13
  %0 = getelementptr inbounds %struct.hw_key_entry, ptr %key_entry, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hw_key_entry, ptr %key_entry, i32 0, i32 2
  %cmd = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 1
  %2 = call ptr @memset(ptr %key_entry, i32 255, i32 32)
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end66_crit_edge

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then:                                          ; preds = %entry
  %bssidx = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 3
  %5 = ptrtoint ptr %bssidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bssidx, align 4
  %shl = shl i32 15, %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12448, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %and = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl)
  %cmp1 = icmp eq i32 %and, %shl
  %or.cond = select i1 %tobool.not.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %neg = xor i32 %and, -1
  %11 = call i32 @llvm.cttz.i32(i32 %neg, i1 false) #13, !range !133
  %phi.cast = trunc i32 %11 to i8
  %cond = select i1 %tobool.not, i8 0, i8 %phi.cast
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %12 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_key_idx, align 2
  %conv5 = add i8 %13, %cond
  store i8 %conv5, ptr %hw_key_idx, align 2
  %key7 = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %key_entry, ptr %key7, i32 16)
  %tx_mic10 = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 5
  %15 = ptrtoint ptr %tx_mic10 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %tx_mic10, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %0, align 1
  %rx_mic13 = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 6
  %18 = ptrtoint ptr %rx_mic13 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %rx_mic13, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %1, align 1
  %conv16 = zext i8 %conv5 to i16
  %mul = shl nuw nsw i16 %conv16, 5
  %add17 = add nuw nsw i16 %mul, 4096
  %call.i132 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %add17, ptr noundef nonnull %key_entry, i16 noundef zeroext 32) #13
  %21 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hw_key_idx, align 2
  %conv19 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %22)
  %cmp20 = icmp ult i8 %22, 8
  %mul25 = mul nuw nsw i32 %conv19, 3
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shl27 = shl i32 7, %mul25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i133) #13
  %23 = ptrtoint ptr %reg.i133 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %reg.i133, align 4
  %call.i134 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12452, ptr noundef nonnull %reg.i133, i16 noundef zeroext 4) #13
  %24 = ptrtoint ptr %reg.i133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg.i133, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i133) #13
  %neg32 = xor i32 %shl27, -1
  %and33 = and i32 %26, %neg32
  %27 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crypto, align 4
  %shl36 = shl i32 %28, %mul25
  %and38 = and i32 %shl36, %shl27
  %or = or i32 %and38, %and33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i135) #13
  %29 = call i32 @llvm.bswap.i32(i32 %or) #13
  %30 = ptrtoint ptr %reg.i135 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %reg.i135, align 4
  %call.i136 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12452, ptr noundef nonnull %reg.i135, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i135) #13
  br label %if.end62

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mul41 = add nsw i32 %mul25, -24
  %shl44 = shl i32 7, %mul41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i137) #13
  %31 = ptrtoint ptr %reg.i137 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %reg.i137, align 4
  %call.i138 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12468, ptr noundef nonnull %reg.i137, i16 noundef zeroext 4) #13
  %32 = ptrtoint ptr %reg.i137 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg.i137, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i137) #13
  %neg53 = xor i32 %shl44, -1
  %and54 = and i32 %34, %neg53
  %35 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %crypto, align 4
  %shl58 = shl i32 %36, %mul41
  %and60 = and i32 %shl58, %shl44
  %or61 = or i32 %and60, %and54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i139) #13
  %37 = call i32 @llvm.bswap.i32(i32 %or61) #13
  %38 = ptrtoint ptr %reg.i139 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %reg.i139, align 4
  %call.i140 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12468, ptr noundef nonnull %reg.i139, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i139) #13
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then22
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags, align 8
  %41 = or i16 %40, 2
  store i16 %41, ptr %flags, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.end62, %entry.if.end66_crit_edge
  %hw_key_idx67 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %42 = ptrtoint ptr %hw_key_idx67 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hw_key_idx67, align 2
  %conv68 = zext i8 %43 to i32
  %shl69 = shl nuw i32 1, %conv68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i141) #13
  %44 = ptrtoint ptr %reg.i141 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %reg.i141, align 4
  %call.i142 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12448, ptr noundef nonnull %reg.i141, i16 noundef zeroext 4) #13
  %45 = ptrtoint ptr %reg.i141 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg.i141, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i141) #13
  %48 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmd, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %49, label %if.end66.if.end84_crit_edge [
    i32 0, label %if.then74
    i32 1, label %if.then80
  ]

if.end66.if.end84_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then74:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %or75 = or i32 %47, %shl69
  br label %if.end84

if.then80:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %neg81 = xor i32 %shl69, -1
  %and82 = and i32 %47, %neg81
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.then74, %if.end66.if.end84_crit_edge
  %reg.0 = phi i32 [ %or75, %if.then74 ], [ %and82, %if.then80 ], [ %47, %if.end66.if.end84_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i143) #13
  %51 = call i32 @llvm.bswap.i32(i32 %reg.0) #13
  %52 = ptrtoint ptr %reg.i143 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %reg.i143, align 4
  %call.i144 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12448, ptr noundef nonnull %reg.i143, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i143) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end84 ], [ -28, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_entry) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_config_pairwise_key(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %crypto, ptr nocapture noundef %key) #2 align 64 {
entry:
  %reg.i141 = alloca i32, align 4
  %reg.i139 = alloca i32, align 4
  %reg.i137 = alloca i32, align 4
  %reg.i135 = alloca i32, align 4
  %reg.i133 = alloca i32, align 4
  %reg.i131 = alloca i32, align 4
  %reg.i126 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %addr_entry = alloca %struct.hw_pairwise_ta_entry, align 8
  %key_entry = alloca %struct.hw_key_entry, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr_entry) #13
  %0 = getelementptr inbounds %struct.hw_pairwise_ta_entry, ptr %addr_entry, i32 0, i32 1
  %1 = ptrtoint ptr %addr_entry to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %addr_entry, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_entry) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12456, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %10, label %if.then.cond.true_crit_edge [
    i32 0, label %if.then.cond.end_crit_edge
    i32 -1, label %if.then2
  ]

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.then.cond.true_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

if.then2:                                         ; preds = %if.then
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %12 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %hw_key_idx, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i126) #13
  %13 = ptrtoint ptr %reg.i126 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %reg.i126, align 4
  %call.i127 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12460, ptr noundef nonnull %reg.i126, i16 noundef zeroext 4) #13
  %14 = ptrtoint ptr %reg.i126 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg.i126, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i126) #13
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %16, label %if.then2.cond.true_crit_edge [
    i32 0, label %if.then2.cond.end_crit_edge
    i32 -1, label %if.then2.cleanup_crit_edge
  ]

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.cond.end_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.then2.cond.true_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

cond.true:                                        ; preds = %if.then2.cond.true_crit_edge, %if.then.cond.true_crit_edge
  %reg.0 = phi i32 [ %10, %if.then.cond.true_crit_edge ], [ %16, %if.then2.cond.true_crit_edge ]
  %neg = xor i32 %reg.0, -1
  %18 = call i32 @llvm.cttz.i32(i32 %neg, i1 false) #13, !range !133
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
  %conv23 = zext i8 %conv12 to i16
  %mul = shl nuw nsw i16 %conv23, 5
  %add24 = add nuw nsw i16 %mul, 4608
  %call.i128 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %add24, ptr noundef nonnull %key_entry, i16 noundef zeroext 32) #13
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
  %conv25 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv25, ptr %0, align 2
  %35 = ptrtoint ptr %hw_key_idx11 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hw_key_idx11, align 2
  %conv28 = zext i8 %36 to i16
  %mul29 = shl nuw nsw i16 %conv28, 3
  %add30 = add nuw nsw i16 %mul29, 6656
  %call.i130 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %add30, ptr noundef nonnull %addr_entry, i16 noundef zeroext 8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i131) #13
  %37 = ptrtoint ptr %reg.i131 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %reg.i131, align 4
  %call.i132 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12464, ptr noundef nonnull %reg.i131, i16 noundef zeroext 4) #13
  %38 = ptrtoint ptr %reg.i131 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg.i131, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i131) #13
  %bssidx = getelementptr inbounds %struct.rt2x00lib_crypto, ptr %crypto, i32 0, i32 3
  %41 = ptrtoint ptr %bssidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bssidx, align 4
  %shl = shl nuw i32 1, %42
  %or = or i32 %shl, %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i133) #13
  %43 = call i32 @llvm.bswap.i32(i32 %or) #13
  %44 = ptrtoint ptr %reg.i133 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %reg.i133, align 4
  %call.i134 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12464, ptr noundef nonnull %reg.i133, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i133) #13
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags, align 8
  %47 = or i16 %46, 2
  store i16 %47, ptr %flags, align 8
  br label %if.end35

if.end35:                                         ; preds = %cond.end, %entry.if.end35_crit_edge
  %hw_key_idx36 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %48 = ptrtoint ptr %hw_key_idx36 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hw_key_idx36, align 2
  %conv37 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %49)
  %cmp38 = icmp ult i8 %49, 32
  br i1 %cmp38, label %if.then40, label %if.else57

if.then40:                                        ; preds = %if.end35
  %shl43 = shl nuw i32 1, %conv37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i135) #13
  %50 = ptrtoint ptr %reg.i135 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %reg.i135, align 4
  %call.i136 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12456, ptr noundef nonnull %reg.i135, i16 noundef zeroext 4) #13
  %51 = ptrtoint ptr %reg.i135 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg.i135, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i135) #13
  %54 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmd, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %55, label %if.then40.if.end56_crit_edge [
    i32 0, label %if.then48
    i32 1, label %if.then53
  ]

if.then40.if.end56_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then48:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %or49 = or i32 %53, %shl43
  br label %if.end56

if.then53:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %neg54 = xor i32 %shl43, -1
  %and = and i32 %53, %neg54
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then48, %if.then40.if.end56_crit_edge
  %reg.1 = phi i32 [ %or49, %if.then48 ], [ %and, %if.then53 ], [ %53, %if.then40.if.end56_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i137) #13
  %57 = call i32 @llvm.bswap.i32(i32 %reg.1) #13
  %58 = ptrtoint ptr %reg.i137 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %reg.i137, align 4
  %call.i138 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12456, ptr noundef nonnull %reg.i137, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i137) #13
  br label %cleanup

if.else57:                                        ; preds = %if.end35
  %sub = add nsw i32 %conv37, -32
  %shl60 = shl nuw i32 1, %sub
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i139) #13
  %59 = ptrtoint ptr %reg.i139 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %reg.i139, align 4
  %call.i140 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12460, ptr noundef nonnull %reg.i139, i16 noundef zeroext 4) #13
  %60 = ptrtoint ptr %reg.i139 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reg.i139, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i139) #13
  %63 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cmd, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %64, label %if.else57.if.end75_crit_edge [
    i32 0, label %if.then65
    i32 1, label %if.then71
  ]

if.else57.if.end75_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then65:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #15
  %or66 = or i32 %62, %shl60
  br label %if.end75

if.then71:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #15
  %neg72 = xor i32 %shl60, -1
  %and73 = and i32 %62, %neg72
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.then65, %if.else57.if.end75_crit_edge
  %reg.2 = phi i32 [ %or66, %if.then65 ], [ %and73, %if.then71 ], [ %62, %if.else57.if.end75_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i141) #13
  %66 = call i32 @llvm.bswap.i32(i32 %reg.2) #13
  %67 = ptrtoint ptr %reg.i141 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %reg.i141, align 4
  %call.i142 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12460, ptr noundef nonnull %reg.i141, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i141) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end56, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.then2.cleanup_crit_edge ], [ 0, %if.end75 ], [ 0, %if.end56 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_entry) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr_entry) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_config_filter(ptr noundef %rt2x00dev, i32 noundef %filter_flags) #2 align 64 {
entry:
  %reg.i290 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
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
  %phi.bo = select i1 %tobool128.not, i32 2097152, i32 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %9 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.bo, %land.rhs ]
  %10 = shl i32 %filter_flags, 15
  %11 = and i32 %2, -65028
  %12 = call i32 @llvm.bswap.i32(i32 %11)
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i290) #13
  %26 = call i32 @llvm.bswap.i32(i32 %or261) #13
  %27 = ptrtoint ptr %reg.i290 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %reg.i290, align 4
  %call.i291 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i290, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i290) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_config_intf(ptr noundef %rt2x00dev, ptr nocapture noundef readnone %intf, ptr noundef %conf, i32 noundef %flags) #2 align 64 {
entry:
  %reg.i103 = alloca i32, align 4
  %reg.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %3 = and i32 %2, -1537
  %4 = call i32 @llvm.bswap.i32(i32 %3)
  %sync = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 1
  %5 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sync, align 4
  %shl = shl i32 %6, 17
  %and15 = and i32 %shl, 393216
  %or = or i32 %and15, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i103) #13
  %7 = call i32 @llvm.bswap.i32(i32 %or) #13
  %8 = ptrtoint ptr %reg.i103 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %reg.i103, align 4
  %call.i104 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i103, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i103) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and16 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end.if.end48_crit_edge, label %if.then18

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mac = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 2
  %arrayidx = getelementptr %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = or i32 %10, 65280
  store i32 %11, ptr %arrayidx, align 4
  %call.i105 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12296, ptr noundef %mac, i16 noundef zeroext 8) #13
  br label %if.end48

if.end48:                                         ; preds = %if.then18, %if.end.if.end48_crit_edge
  %and49 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end83_crit_edge, label %if.then51

if.end48.if.end83_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %bssid = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 3
  %arrayidx52 = getelementptr %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx52, align 4
  %14 = and i32 %13, -65281
  %15 = or i32 %14, 768
  store i32 %15, ptr %arrayidx52, align 4
  %call.i106 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12304, ptr noundef %bssid, i16 noundef zeroext 8) #13
  br label %if.end83

if.end83:                                         ; preds = %if.then51, %if.end48.if.end83_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_config_erp(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %erp, i32 noundef %changed) #2 align 64 {
entry:
  %reg.i313 = alloca i32, align 4
  %reg.i311 = alloca i32, align 4
  %reg.i309 = alloca i32, align 4
  %reg.i307 = alloca i32, align 4
  %reg.i305 = alloca i32, align 4
  %reg.i303 = alloca i32, align 4
  %reg.i301 = alloca i32, align 4
  %reg.i299 = alloca i32, align 4
  %reg.i297 = alloca i32, align 4
  %reg.i295 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %3 = and i32 %2, 8454143
  %4 = or i32 %3, 842006528
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i295) #13
  %5 = ptrtoint ptr %reg.i295 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %reg.i295, align 4
  %call.i296 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12352, ptr noundef nonnull %reg.i295, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i295) #13
  %and40 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool.not = icmp eq i32 %and40, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i297) #13
  %6 = ptrtoint ptr %reg.i297 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reg.i297, align 4
  %call.i298 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12368, ptr noundef nonnull %reg.i297, i16 noundef zeroext 4) #13
  %7 = ptrtoint ptr %reg.i297 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg.i297, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i297) #13
  %9 = and i32 %8, -1537
  %10 = ptrtoint ptr %erp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %erp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool81.not = icmp eq i32 %11, 0
  %shl = select i1 %tobool81.not, i32 0, i32 262144
  %12 = or i32 %9, 512
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %or96 = or i32 %13, %shl
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i299) #13
  %14 = call i32 @llvm.bswap.i32(i32 %or96) #13
  %15 = ptrtoint ptr %reg.i299 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %reg.i299, align 4
  %call.i300 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12368, ptr noundef nonnull %reg.i299, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i299) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and97 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end.if.end100_crit_edge, label %if.then99

if.end.if.end100_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then99:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %basic_rates = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 2
  %16 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %basic_rates, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i301) #13
  %18 = call i32 @llvm.bswap.i32(i32 %17) #13
  %19 = ptrtoint ptr %reg.i301 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reg.i301, align 4
  %call.i302 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12372, ptr noundef nonnull %reg.i301, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i301) #13
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end.if.end100_crit_edge
  %and101 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end134_crit_edge, label %if.then103

if.end100.if.end134_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i303) #13
  %20 = ptrtoint ptr %reg.i303 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %reg.i303, align 4
  %call.i304 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i303, i16 noundef zeroext 4) #13
  %21 = ptrtoint ptr %reg.i303 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg.i303, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i303) #13
  %23 = and i32 %22, 65535
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %beacon_int = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 8
  %25 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %beacon_int, align 4
  %conv118 = zext i16 %26 to i32
  %mul = shl nuw nsw i32 %conv118, 4
  %and132 = and i32 %mul, 65520
  %or133 = or i32 %and132, %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i305) #13
  %27 = call i32 @llvm.bswap.i32(i32 %or133) #13
  %28 = ptrtoint ptr %reg.i305 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %reg.i305, align 4
  %call.i306 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12388, ptr noundef nonnull %reg.i305, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i305) #13
  br label %if.end134

if.end134:                                        ; preds = %if.then103, %if.end100.if.end134_crit_edge
  %and135 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end134.if.end252_crit_edge, label %if.then137

if.end134.if.end252_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end252

if.then137:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i307) #13
  %29 = ptrtoint ptr %reg.i307 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %reg.i307, align 4
  %call.i308 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12324, ptr noundef nonnull %reg.i307, i16 noundef zeroext 4) #13
  %30 = ptrtoint ptr %reg.i307 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg.i307, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i307) #13
  %32 = and i32 %31, 16777215
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %slot_time = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 3
  %34 = ptrtoint ptr %slot_time to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slot_time, align 4
  %and165 = and i32 %35, 255
  %or166 = or i32 %and165, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i309) #13
  %36 = call i32 @llvm.bswap.i32(i32 %or166) #13
  %37 = ptrtoint ptr %reg.i309 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %reg.i309, align 4
  %call.i310 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12324, ptr noundef nonnull %reg.i309, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i309) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i311) #13
  %38 = ptrtoint ptr %reg.i311 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %reg.i311, align 4
  %call.i312 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12320, ptr noundef nonnull %reg.i311, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i311) #13
  %sifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 4
  %39 = ptrtoint ptr %sifs to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sifs, align 4
  %41 = and i16 %40, 255
  %42 = or i16 %41, 768
  %or222 = zext i16 %42 to i32
  %eifs = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 7
  %43 = ptrtoint ptr %eifs to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %eifs, align 2
  %conv236294 = zext i16 %44 to i32
  %shl243 = shl nuw i32 %conv236294, 16
  %or251 = or i32 %shl243, %or222
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i313) #13
  %45 = call i32 @llvm.bswap.i32(i32 %or251) #13
  %46 = ptrtoint ptr %reg.i313 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %reg.i313, align 4
  %call.i314 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12320, ptr noundef nonnull %reg.i313, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i313) #13
  br label %if.end252

if.end252:                                        ; preds = %if.then137, %if.end134.if.end252_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_config_ant(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %ant) #2 align 64 {
entry:
  %reg.i.i235.i = alloca i32, align 4
  %reg.i236.i = alloca i32, align 4
  %reg.i.i224.i = alloca i32, align 4
  %reg.i225.i = alloca i32, align 4
  %reg.i.i.i127 = alloca i32, align 4
  %reg.i.i128 = alloca i32, align 4
  %reg.i.i379.i = alloca i32, align 4
  %reg.i380.i = alloca i32, align 4
  %reg.i.i368.i = alloca i32, align 4
  %reg.i369.i = alloca i32, align 4
  %reg.i.i.i = alloca i32, align 4
  %reg.i.i119 = alloca i32, align 4
  %reg.i115 = alloca i32, align 4
  %reg.i113 = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !130

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
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end8, !prof !130

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt73usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 697, 0\0A.popsection", ""() #13, !srcloc !134
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
  br label %for.body

for.body:                                         ; preds = %rt73usb_bbp_write.exit.for.body_crit_edge, %do.end8
  %i.0144 = phi i32 [ 0, %do.end8 ], [ %inc, %rt73usb_bbp_write.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.antenna_sel, ptr %antenna_sel_a.antenna_sel_bg, i32 %i.0144
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %arrayidx18 = getelementptr %struct.antenna_sel, ptr %antenna_sel_a.antenna_sel_bg, i32 %i.0144, i32 1, i32 %lna.0
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.rt73usb_bbp_write.exit_crit_edge, label %if.then.i

for.body.rt73usb_bbp_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv16 = zext i8 %10 to i32
  %conv7.i = zext i8 %12 to i32
  %shl40.i = shl nuw nsw i32 %conv16, 8
  %and47.i = and i32 %shl40.i, 32512
  %or48.i = or i32 %and47.i, %conv7.i
  %or74.i = or i32 %or48.i, 65536
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or74.i, ptr %reg.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %15 = call i32 @llvm.bswap.i32(i32 %or74.i) #13
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %reg.i.i, align 4
  %call.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  br label %rt73usb_bbp_write.exit

rt73usb_bbp_write.exit:                           ; preds = %if.then.i, %for.body.rt73usb_bbp_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %inc = add nuw nsw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %rt73usb_bbp_write.exit.for.body_crit_edge

rt73usb_bbp_write.exit.for.body_crit_edge:        ; preds = %rt73usb_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %rt73usb_bbp_write.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i113) #13
  %17 = ptrtoint ptr %reg.i113 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reg.i113, align 4
  %call.i114 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12416, ptr noundef nonnull %reg.i113, i16 noundef zeroext 4) #13
  %18 = ptrtoint ptr %reg.i113 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg.i113, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i113) #13
  %20 = and i32 %19, -769
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp27 = icmp eq i32 %23, 0
  %shl = select i1 %cmp27, i32 65536, i32 0
  %or = or i32 %shl, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp56 = icmp eq i32 %23, 1
  %shl64 = select i1 %cmp56, i32 131072, i32 0
  %or72 = or i32 %or, %shl64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i115) #13
  %24 = call i32 @llvm.bswap.i32(i32 %or72) #13
  %25 = ptrtoint ptr %reg.i115 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %reg.i115, align 4
  %call.i116 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12416, ptr noundef nonnull %reg.i115, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i115) #13
  %rf1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %26 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rf1.i, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %27, label %for.end.if.end86_crit_edge [
    i16 1, label %for.end.if.then77_crit_edge
    i16 3, label %for.end.if.then77_crit_edge145
    i16 2, label %for.end.if.then84_crit_edge
    i16 4, label %for.end.if.then84_crit_edge146
  ]

for.end.if.then84_crit_edge146:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then84

for.end.if.then84_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then84

for.end.if.then77_crit_edge145:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

for.end.if.then77_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

for.end.if.end86_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then77:                                        ; preds = %for.end.if.then77_crit_edge, %for.end.if.then77_crit_edge145
  %call.i120 = call zeroext i8 @rt73usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 3) #13
  %call1.i = call zeroext i8 @rt73usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 4) #13
  %call2.i = call zeroext i8 @rt73usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 77) #13
  %29 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ant, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %30, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb86.i
  ]

sw.bb.i:                                          ; preds = %if.then77
  %32 = and i8 %call1.i, -36
  %cap_flags.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %33 = ptrtoint ptr %cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %cap_flags.i.i.i, align 4
  %35 = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i.i.not.i, label %land.rhs.i, label %sw.bb.i.land.end.i_crit_edge

sw.bb.i.land.end.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

land.rhs.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp51.not.i = icmp eq i32 %37, 1
  %phi.bo.i = select i1 %cmp51.not.i, i8 0, i8 32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %sw.bb.i.land.end.i_crit_edge
  %38 = phi i8 [ 0, %sw.bb.i.land.end.i_crit_edge ], [ %phi.bo.i, %land.rhs.i ]
  %39 = or i8 %32, %38
  %or84.i = or i8 %39, 2
  br label %sw.epilog.i

sw.bb86.i:                                        ; preds = %if.then77
  %40 = and i8 %call1.i, -36
  %41 = or i8 %40, 1
  %42 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp148.i = icmp eq i32 %43, 1
  br i1 %cmp148.i, label %if.then.i121, label %if.else.i

if.then.i121:                                     ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = and i8 %call2.i, -4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #15
  %45 = or i8 %call2.i, 3
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then77
  %46 = and i8 %call1.i, -36
  %47 = or i8 %46, 1
  %48 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp272.i = icmp eq i32 %49, 1
  br i1 %cmp272.i, label %if.then274.i, label %if.else305.i

if.then274.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = or i8 %call2.i, 3
  br label %sw.epilog.i

if.else305.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = and i8 %call2.i, -4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else305.i, %if.then274.i, %if.else.i, %if.then.i121, %land.end.i
  %r77.0.i = phi i8 [ %50, %if.then274.i ], [ %51, %if.else305.i ], [ %44, %if.then.i121 ], [ %45, %if.else.i ], [ %call2.i, %land.end.i ]
  %r4.0.i = phi i8 [ %47, %if.then274.i ], [ %47, %if.else305.i ], [ %41, %if.then.i121 ], [ %41, %if.else.i ], [ %or84.i, %land.end.i ]
  %52 = and i8 %call.i120, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i119) #13
  %53 = ptrtoint ptr %reg.i.i119 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %reg.i.i119, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i.i122 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i119) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %tobool.not.i.i = icmp eq i32 %call.i.i122, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i.rt73usb_bbp_write.exit.i_crit_edge, label %if.then.i.i

sw.epilog.i.rt73usb_bbp_write.exit.i_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i = zext i8 %r77.0.i to i32
  %or74.i.i = or i32 %conv7.i.i, 85248
  %54 = ptrtoint ptr %reg.i.i119 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or74.i.i, ptr %reg.i.i119, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  %55 = call i32 @llvm.bswap.i32(i32 %or74.i.i) #13
  %56 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %reg.i.i.i, align 4
  %call.i.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #13
  br label %rt73usb_bbp_write.exit.i

rt73usb_bbp_write.exit.i:                         ; preds = %if.then.i.i, %sw.epilog.i.rt73usb_bbp_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i119) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i369.i) #13
  %57 = ptrtoint ptr %reg.i369.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %reg.i369.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i371.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i369.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371.i)
  %tobool.not.i372.i = icmp eq i32 %call.i371.i, 0
  br i1 %tobool.not.i372.i, label %rt73usb_bbp_write.exit.i.rt73usb_bbp_write.exit378.i_crit_edge, label %if.then.i377.i

rt73usb_bbp_write.exit.i.rt73usb_bbp_write.exit378.i_crit_edge: ; preds = %rt73usb_bbp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit378.i

if.then.i377.i:                                   ; preds = %rt73usb_bbp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i373.i = zext i8 %52 to i32
  %or74.i375.i = or i32 %conv7.i373.i, 66304
  %58 = ptrtoint ptr %reg.i369.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or74.i375.i, ptr %reg.i369.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i368.i) #13
  %59 = call i32 @llvm.bswap.i32(i32 %or74.i375.i) #13
  %60 = ptrtoint ptr %reg.i.i368.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %reg.i.i368.i, align 4
  %call.i.i376.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i368.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i368.i) #13
  br label %rt73usb_bbp_write.exit378.i

rt73usb_bbp_write.exit378.i:                      ; preds = %if.then.i377.i, %rt73usb_bbp_write.exit.i.rt73usb_bbp_write.exit378.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i369.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i380.i) #13
  %61 = ptrtoint ptr %reg.i380.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %reg.i380.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i382.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i380.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382.i)
  %tobool.not.i383.i = icmp eq i32 %call.i382.i, 0
  br i1 %tobool.not.i383.i, label %rt73usb_bbp_write.exit378.i.rt73usb_config_antenna_5x.exit_crit_edge, label %if.then.i388.i

rt73usb_bbp_write.exit378.i.rt73usb_config_antenna_5x.exit_crit_edge: ; preds = %rt73usb_bbp_write.exit378.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_config_antenna_5x.exit

if.then.i388.i:                                   ; preds = %rt73usb_bbp_write.exit378.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i384.i = zext i8 %r4.0.i to i32
  %or74.i386.i = or i32 %conv7.i384.i, 66560
  %62 = ptrtoint ptr %reg.i380.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or74.i386.i, ptr %reg.i380.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i379.i) #13
  %63 = call i32 @llvm.bswap.i32(i32 %or74.i386.i) #13
  %64 = ptrtoint ptr %reg.i.i379.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %reg.i.i379.i, align 4
  %call.i.i387.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i379.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i379.i) #13
  br label %rt73usb_config_antenna_5x.exit

rt73usb_config_antenna_5x.exit:                   ; preds = %if.then.i388.i, %rt73usb_bbp_write.exit378.i.rt73usb_config_antenna_5x.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i380.i) #13
  br label %if.end86

if.then84:                                        ; preds = %for.end.if.then84_crit_edge, %for.end.if.then84_crit_edge146
  %call.i129 = call zeroext i8 @rt73usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 3) #13
  %call1.i130 = call zeroext i8 @rt73usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 4) #13
  %call2.i131 = call zeroext i8 @rt73usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 77) #13
  %65 = and i8 %call1.i130, -36
  %cap_flags.i.i.i132 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %66 = ptrtoint ptr %cap_flags.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %cap_flags.i.i.i132, align 4
  %68 = lshr i32 %67, 14
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 32
  %71 = or i8 %70, %65
  %72 = ptrtoint ptr %ant to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ant, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %73, label %sw.default.i133 [
    i32 3, label %if.then84.sw.epilog.i138_crit_edge
    i32 1, label %sw.bb82.i
  ]

if.then84.sw.epilog.i138_crit_edge:               ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i138

sw.bb82.i:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  %75 = or i8 %call2.i131, 3
  br label %sw.epilog.i138

sw.default.i133:                                  ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  %76 = and i8 %call2.i131, -4
  br label %sw.epilog.i138

sw.epilog.i138:                                   ; preds = %sw.default.i133, %sw.bb82.i, %if.then84.sw.epilog.i138_crit_edge
  %.sink246.i = phi i8 [ 1, %sw.default.i133 ], [ 1, %sw.bb82.i ], [ 2, %if.then84.sw.epilog.i138_crit_edge ]
  %r77.0.i134 = phi i8 [ %76, %sw.default.i133 ], [ %75, %sw.bb82.i ], [ %call2.i131, %if.then84.sw.epilog.i138_crit_edge ]
  %77 = or i8 %71, %.sink246.i
  %78 = xor i8 %77, 32
  %79 = and i8 %call.i129, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i128) #13
  %80 = ptrtoint ptr %reg.i.i128 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %reg.i.i128, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i.i136 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i.i128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i136)
  %tobool.not.i.i137 = icmp eq i32 %call.i.i136, 0
  br i1 %tobool.not.i.i137, label %sw.epilog.i138.rt73usb_bbp_write.exit.i143_crit_edge, label %if.then.i.i142

sw.epilog.i138.rt73usb_bbp_write.exit.i143_crit_edge: ; preds = %sw.epilog.i138
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit.i143

if.then.i.i142:                                   ; preds = %sw.epilog.i138
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i139 = zext i8 %r77.0.i134 to i32
  %or74.i.i140 = or i32 %conv7.i.i139, 85248
  %81 = ptrtoint ptr %reg.i.i128 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or74.i.i140, ptr %reg.i.i128, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i127) #13
  %82 = call i32 @llvm.bswap.i32(i32 %or74.i.i140) #13
  %83 = ptrtoint ptr %reg.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %reg.i.i.i127, align 4
  %call.i.i.i141 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i.i127, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i127) #13
  br label %rt73usb_bbp_write.exit.i143

rt73usb_bbp_write.exit.i143:                      ; preds = %if.then.i.i142, %sw.epilog.i138.rt73usb_bbp_write.exit.i143_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i128) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i225.i) #13
  %84 = ptrtoint ptr %reg.i225.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %reg.i225.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i227.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i225.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227.i)
  %tobool.not.i228.i = icmp eq i32 %call.i227.i, 0
  br i1 %tobool.not.i228.i, label %rt73usb_bbp_write.exit.i143.rt73usb_bbp_write.exit234.i_crit_edge, label %if.then.i233.i

rt73usb_bbp_write.exit.i143.rt73usb_bbp_write.exit234.i_crit_edge: ; preds = %rt73usb_bbp_write.exit.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit234.i

if.then.i233.i:                                   ; preds = %rt73usb_bbp_write.exit.i143
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i229.i = zext i8 %79 to i32
  %or74.i231.i = or i32 %conv7.i229.i, 66304
  %85 = ptrtoint ptr %reg.i225.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or74.i231.i, ptr %reg.i225.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i224.i) #13
  %86 = call i32 @llvm.bswap.i32(i32 %or74.i231.i) #13
  %87 = ptrtoint ptr %reg.i.i224.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %reg.i.i224.i, align 4
  %call.i.i232.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i224.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i224.i) #13
  br label %rt73usb_bbp_write.exit234.i

rt73usb_bbp_write.exit234.i:                      ; preds = %if.then.i233.i, %rt73usb_bbp_write.exit.i143.rt73usb_bbp_write.exit234.i_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i225.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i236.i) #13
  %88 = ptrtoint ptr %reg.i236.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %reg.i236.i, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i238.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i236.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238.i)
  %tobool.not.i239.i = icmp eq i32 %call.i238.i, 0
  br i1 %tobool.not.i239.i, label %rt73usb_bbp_write.exit234.i.rt73usb_config_antenna_2x.exit_crit_edge, label %if.then.i244.i

rt73usb_bbp_write.exit234.i.rt73usb_config_antenna_2x.exit_crit_edge: ; preds = %rt73usb_bbp_write.exit234.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_config_antenna_2x.exit

if.then.i244.i:                                   ; preds = %rt73usb_bbp_write.exit234.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i240.i = zext i8 %78 to i32
  %or74.i242.i = or i32 %conv7.i240.i, 66560
  %89 = ptrtoint ptr %reg.i236.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or74.i242.i, ptr %reg.i236.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i235.i) #13
  %90 = call i32 @llvm.bswap.i32(i32 %or74.i242.i) #13
  %91 = ptrtoint ptr %reg.i.i235.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %reg.i.i235.i, align 4
  %call.i.i243.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i235.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i235.i) #13
  br label %rt73usb_config_antenna_2x.exit

rt73usb_config_antenna_2x.exit:                   ; preds = %if.then.i244.i, %rt73usb_bbp_write.exit234.i.rt73usb_config_antenna_2x.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i236.i) #13
  br label %if.end86

if.end86:                                         ; preds = %rt73usb_config_antenna_2x.exit, %rt73usb_config_antenna_5x.exit, %for.end.if.end86_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_config(ptr noundef %rt2x00dev, ptr nocapture noundef %libconf, i32 noundef %flags) #2 align 64 {
entry:
  %reg.i269.i = alloca i32, align 4
  %reg.i267.i = alloca i32, align 4
  %reg.i264.i = alloca i32, align 4
  %reg.i262.i = alloca i32, align 4
  %reg.i.i30 = alloca i32, align 4
  %reg.i136.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %rf.i = alloca %struct.rf_channel, align 4
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %cmp.i, label %if.then.i, label %entry.rt73usb_config_lna_gain.exit_crit_edge

entry.rt73usb_config_lna_gain.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_config_lna_gain.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cap_flags.i.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %6 = ptrtoint ptr %cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cap_flags.i.i.i, align 4
  %8 = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.not.i = icmp eq i32 %8, 0
  %spec.select.i = select i1 %tobool.i.i.not.i, i16 0, i16 14
  br label %rt73usb_config_lna_gain.exit

rt73usb_config_lna_gain.exit:                     ; preds = %if.then.i, %entry.rt73usb_config_lna_gain.exit_crit_edge
  %.sink55.i = phi i32 [ 77, %if.then.i ], [ 78, %entry.rt73usb_config_lna_gain.exit_crit_edge ]
  %.sink.i = phi i16 [ %spec.select.i, %if.then.i ], [ 0, %entry.rt73usb_config_lna_gain.exit_crit_edge ]
  %eeprom.i50.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %9 = ptrtoint ptr %eeprom.i50.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eeprom.i50.i, align 8
  %arrayidx.i51.i = getelementptr i16, ptr %10, i32 %.sink55.i
  %11 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i51.i, align 2
  %13 = lshr i16 %12, 8
  %sub39.i = sub nsw i16 %.sink.i, %13
  %lna_gain42.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 33
  %14 = ptrtoint ptr %lna_gain42.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %sub39.i, ptr %lna_gain42.i, align 8
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %rt73usb_config_lna_gain.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rf = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1
  %15 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %libconf, align 4
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %power_level, align 4
  tail call fastcc void @rt73usb_config_channel(ptr noundef %rt2x00dev, ptr noundef %rf, i32 noundef %18)
  br label %if.end8

if.end:                                           ; preds = %rt73usb_config_lna_gain.exit
  %19 = and i32 %flags, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %21 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %libconf, align 4
  %power_level7 = getelementptr inbounds %struct.ieee80211_conf, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %power_level7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %power_level7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rf.i) #13
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
  br i1 %cmp1.i.i, label %do.body3.i.i, label %rt2x00_rf_read.exit.i, !prof !130

do.body3.i.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #13, !srcloc !135
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
  br i1 %cmp1.i11.i, label %do.body3.i12.i, label %rt2x00_rf_read.exit14.i, !prof !130

do.body3.i12.i:                                   ; preds = %rt2x00_rf_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #13, !srcloc !135
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
  br i1 %cmp1.i18.i, label %do.body3.i19.i, label %rt2x00_rf_read.exit22.i, !prof !130

do.body3.i19.i:                                   ; preds = %rt2x00_rf_read.exit14.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #13, !srcloc !135
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
  br i1 %cmp1.i26.i, label %do.body3.i27.i, label %rt73usb_config_txpower.exit, !prof !130

do.body3.i27.i:                                   ; preds = %rt2x00_rf_read.exit22.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #13, !srcloc !135
  unreachable

rt73usb_config_txpower.exit:                      ; preds = %rt2x00_rf_read.exit22.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = getelementptr inbounds %struct.rf_channel, ptr %rf.i, i32 0, i32 4
  %arrayidx.i29.i = getelementptr i32, ptr %34, i32 3
  %45 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i29.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %44, align 4
  call fastcc void @rt73usb_config_channel(ptr noundef %rt2x00dev, ptr noundef nonnull %rf.i, i32 noundef %24) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rf.i) #13
  br label %if.end8

if.end8:                                          ; preds = %rt73usb_config_txpower.exit, %if.end.if.end8_crit_edge, %if.end.thread
  %and9 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %48 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %reg.i.i, align 4
  %call.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12368, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 4) #13
  %49 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  %51 = and i32 %50, -30976
  %52 = call i32 @llvm.bswap.i32(i32 %51) #13
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i136.i) #13
  %59 = call i32 @llvm.bswap.i32(i32 %or123.i) #13
  %60 = ptrtoint ptr %reg.i136.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %reg.i136.i, align 4
  %call.i137.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12368, ptr noundef nonnull %reg.i136.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i136.i) #13
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
  %61 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %libconf, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %and.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i32

if.then.i32:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i30) #13
  %65 = ptrtoint ptr %reg.i.i30 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %reg.i.i30, align 4
  %call.i.i31 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12332, ptr noundef nonnull %reg.i.i30, i16 noundef zeroext 4) #13
  %66 = ptrtoint ptr %reg.i.i30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reg.i.i30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i30) #13
  %68 = and i32 %67, 61695
  %69 = call i32 @llvm.bswap.i32(i32 %68) #13
  %beacon_int.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 40
  %70 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %beacon_int.i, align 2
  %72 = add i16 %71, 246
  %73 = and i16 %72, 255
  %and17.i = zext i16 %73 to i32
  %or.i = or i32 %69, %and17.i
  %74 = ptrtoint ptr %libconf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %libconf, align 4
  %listen_interval.i = getelementptr inbounds %struct.ieee80211_conf, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %listen_interval.i, align 4
  %conv32.i = zext i16 %77 to i32
  %sub33.i = shl nuw nsw i32 %conv32.i, 8
  %shl40.i = add nuw nsw i32 %sub33.i, 32512
  %and47.i = and i32 %shl40.i, 32512
  %or48.i = or i32 %or.i, %and47.i
  %or74.i = or i32 %or48.i, 327680
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i262.i) #13
  %78 = call i32 @llvm.bswap.i32(i32 %or74.i) #13
  %79 = ptrtoint ptr %reg.i262.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %reg.i262.i, align 4
  %call.i263.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12332, ptr noundef nonnull %reg.i262.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i262.i) #13
  %or126.i = or i32 %or48.i, 360448
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i264.i) #13
  %80 = call i32 @llvm.bswap.i32(i32 %or126.i) #13
  %81 = ptrtoint ptr %reg.i264.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %reg.i264.i, align 4
  %call.i265.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12332, ptr noundef nonnull %reg.i264.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i264.i) #13
  br label %rt73usb_config_ps.exit

if.else.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i267.i) #13
  %82 = ptrtoint ptr %reg.i267.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %reg.i267.i, align 4
  %call.i268.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12332, ptr noundef nonnull %reg.i267.i, i16 noundef zeroext 4) #13
  %83 = ptrtoint ptr %reg.i267.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reg.i267.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i267.i) #13
  %85 = and i32 %84, 61695
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i269.i) #13
  %86 = ptrtoint ptr %reg.i269.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %reg.i269.i, align 4
  %call.i270.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12332, ptr noundef nonnull %reg.i269.i, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i269.i) #13
  br label %rt73usb_config_ps.exit

rt73usb_config_ps.exit:                           ; preds = %if.else.i, %if.then.i32
  %.sink.i33 = phi i16 [ 9, %if.else.i ], [ 7, %if.then.i32 ]
  %call.i271.i = call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %.sink.i33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #13
  br label %if.end16

if.end16:                                         ; preds = %rt73usb_config_ps.exit, %if.end12.if.end16_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt73usb_validate_eeprom(ptr noundef %rt2x00dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 8
  %call.i = tail call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 256, i32 noundef 2000) #13
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eeprom, align 8
  %arrayidx.i = getelementptr i16, ptr %3, i32 2
  tail call void @rt2x00lib_set_mac_address(ptr noundef %rt2x00dev, ptr noundef %arrayidx.i) #13
  %4 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eeprom, align 8
  %arrayidx.i23 = getelementptr i16, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  br i1 %cmp, label %if.then, label %entry.if.end212_crit_edge

entry.if.end212_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -22007, ptr %arrayidx.i23, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt73usb_validate_eeprom, %if.then208)) #13
          to label %if.end212 [label %if.then208], !srcloc !136

if.then208:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug571, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 2474) #13
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %if.then, %entry.if.end212_crit_edge
  %13 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eeprom, align 8
  %arrayidx.i27 = getelementptr i16, ptr %14, i32 17
  %15 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp215 = icmp eq i16 %16, -1
  br i1 %cmp215, label %if.then217, label %if.end212.if.end268_crit_edge

if.end212.if.end268_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end268

if.then217:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -4097, ptr %arrayidx.i27, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt73usb_validate_eeprom, %if.then260)) #13
          to label %if.end268 [label %if.then260], !srcloc !136

if.then260:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #15
  %hw261 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %18 = ptrtoint ptr %hw261 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw261, align 4
  %wiphy262 = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy262 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy262, align 8
  %dev263 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug573, ptr noundef %dev263, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 65519) #13
  br label %if.end268

if.end268:                                        ; preds = %if.then260, %if.then217, %if.end212.if.end268_crit_edge
  %22 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eeprom, align 8
  %arrayidx.i31 = getelementptr i16, ptr %23, i32 48
  %24 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp271 = icmp eq i16 %25, -1
  br i1 %cmp271, label %if.then273, label %if.end268.if.end564_crit_edge

if.end268.if.end564_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end564

if.then273:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 224, ptr %arrayidx.i31, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug583, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt73usb_validate_eeprom, %if.then556)) #13
          to label %if.end564 [label %if.then556], !srcloc !136

if.then556:                                       ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #15
  %hw557 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %27 = ptrtoint ptr %hw557 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw557, align 4
  %wiphy558 = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy558 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy558, align 8
  %dev559 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug583, ptr noundef %dev559, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 57344) #13
  br label %if.end564

if.end564:                                        ; preds = %if.then556, %if.then273, %if.end268.if.end564_crit_edge
  %31 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eeprom, align 8
  %arrayidx.i35 = getelementptr i16, ptr %32, i32 47
  %33 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp567 = icmp eq i16 %34, -1
  br i1 %cmp567, label %if.then569, label %if.end564.if.end650_crit_edge

if.end564.if.end650_crit_edge:                    ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end650

if.then569:                                       ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 252, ptr %arrayidx.i35, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt73usb_validate_eeprom, %if.then642)) #13
          to label %if.end650 [label %if.then642], !srcloc !136

if.then642:                                       ; preds = %if.then569
  call void @__sanitizer_cov_trace_pc() #15
  %hw643 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %36 = ptrtoint ptr %hw643 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw643, align 4
  %wiphy644 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy644 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy644, align 8
  %dev645 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug586, ptr noundef %dev645, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 64512) #13
  br label %if.end650

if.end650:                                        ; preds = %if.then642, %if.then569, %if.end564.if.end650_crit_edge
  %40 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eeprom, align 8
  %arrayidx.i39 = getelementptr i16, ptr %41, i32 77
  %42 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp653 = icmp eq i16 %43, -1
  br i1 %cmp653, label %if.then655, label %if.else

if.then655:                                       ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %arrayidx.i39, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt73usb_validate_eeprom, %if.then728)) #13
          to label %if.end856 [label %if.then728], !srcloc !136

if.then728:                                       ; preds = %if.then655
  call void @__sanitizer_cov_trace_pc() #15
  %hw729 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %45 = ptrtoint ptr %hw729 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw729, align 4
  %wiphy730 = getelementptr inbounds %struct.ieee80211_hw, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %wiphy730 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wiphy730, align 8
  %dev731 = getelementptr inbounds %struct.wiphy, ptr %48, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug589, ptr noundef %dev731, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %if.end856

if.else:                                          ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #15
  %49 = tail call i16 @llvm.bswap.i16(i16 %43) #13
  %conv756 = zext i16 %49 to i32
  %sext = shl i32 %conv756, 24
  %50 = add i32 %sext, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %50)
  %51 = icmp ult i32 %50, -335544321
  %52 = and i16 %49, -256
  %word.0 = select i1 %51, i16 %52, i16 %49
  %53 = lshr i16 %word.0, 8
  %conv816 = zext i16 %53 to i32
  %sext1 = shl nuw i32 %conv816, 24
  %54 = add i32 %sext1, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %54)
  %55 = icmp ult i32 %54, -335544321
  %56 = and i16 %word.0, 255
  %word.1 = select i1 %55, i16 %56, i16 %word.0
  %57 = tail call i16 @llvm.bswap.i16(i16 %word.1) #13
  %58 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %arrayidx.i39, align 2
  br label %if.end856

if.end856:                                        ; preds = %if.else, %if.then728, %if.then655
  %59 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %eeprom, align 8
  %arrayidx.i45 = getelementptr i16, ptr %60, i32 78
  %61 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.i45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %62)
  %cmp859 = icmp eq i16 %62, -1
  br i1 %cmp859, label %if.then861, label %if.else942

if.then861:                                       ; preds = %if.end856
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %arrayidx.i45, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt73usb_validate_eeprom, %if.then934)) #13
          to label %if.end1065 [label %if.then934], !srcloc !136

if.then934:                                       ; preds = %if.then861
  call void @__sanitizer_cov_trace_pc() #15
  %hw935 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %64 = ptrtoint ptr %hw935 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw935, align 4
  %wiphy936 = getelementptr inbounds %struct.ieee80211_hw, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %wiphy936 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wiphy936, align 8
  %dev937 = getelementptr inbounds %struct.wiphy, ptr %67, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug596, ptr noundef %dev937, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %if.end1065

if.else942:                                       ; preds = %if.end856
  call void @__sanitizer_cov_trace_pc() #15
  %68 = tail call i16 @llvm.bswap.i16(i16 %62) #13
  %conv964 = zext i16 %68 to i32
  %sext2 = shl i32 %conv964, 24
  %69 = add i32 %sext2, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %69)
  %70 = icmp ult i32 %69, -335544321
  %71 = and i16 %68, -256
  %word.2 = select i1 %70, i16 %71, i16 %68
  %72 = lshr i16 %word.2, 8
  %conv1025 = zext i16 %72 to i32
  %sext3 = shl nuw i32 %conv1025, 24
  %73 = add i32 %sext3, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %73)
  %74 = icmp ult i32 %73, -335544321
  %75 = and i16 %word.2, 255
  %word.3 = select i1 %74, i16 %75, i16 %word.2
  %76 = tail call i16 @llvm.bswap.i16(i16 %word.3) #13
  %77 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %arrayidx.i45, align 2
  br label %if.end1065

if.end1065:                                       ; preds = %if.else942, %if.then934, %if.then861
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00usb_register_read(ptr noundef %rt2x00dev, i32 noundef %offset) #7 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %conv = trunc i32 %offset to i16
  %call = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %conv, ptr noundef nonnull %reg, i16 noundef zeroext 4) #13
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00usb_register_write(ptr noundef %rt2x00dev, i32 noundef %offset, i32 noundef %value) #7 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %reg, align 4
  %conv = trunc i32 %offset to i16
  %call = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %conv, ptr noundef nonnull %reg, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_set_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @rt2x00_eeprom_read(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word) #8 align 64 {
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
define internal void @rt2x00_eeprom_write(ptr nocapture noundef readonly %rt2x00dev, i32 noundef %word, i16 noundef zeroext %data) #9 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp.not = icmp eq i32 %brightness, 0
  br i1 %cmp.not, label %entry.land.end9_crit_edge, label %land.rhs4

entry.land.end9_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end9

land.rhs4:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %curr_band = getelementptr inbounds %struct.rt2x00_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %curr_band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  %phi.bo152 = select i1 %cmp1, i16 128, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  %phi.bo = select i1 %cmp7, i16 64, i16 0
  br label %land.end9

land.end9:                                        ; preds = %land.rhs4, %entry.land.end9_crit_edge
  %4 = phi i16 [ %phi.bo152, %land.rhs4 ], [ 0, %entry.land.end9_crit_edge ]
  %5 = phi i16 [ %phi.bo, %land.rhs4 ], [ 0, %entry.land.end9_crit_edge ]
  %type = getelementptr i8, ptr %led_cdev, i32 400
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %7, label %land.end9.if.end131_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then43
    i32 3, label %if.then124
  ]

land.end9.if.end131_crit_edge:                    ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

if.then:                                          ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #15
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
  %call.i = tail call i32 @rt2x00usb_vendor_request(ptr noundef %17, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %19, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #13
  br label %if.end131

if.then43:                                        ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg56 = getelementptr inbounds %struct.rt2x00_dev, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %led_mcu_reg56 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %led_mcu_reg56, align 4
  %24 = and i16 %23, -65
  store i16 %24, ptr %led_mcu_reg56, align 4
  %25 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg76 = getelementptr inbounds %struct.rt2x00_dev, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %led_mcu_reg76 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %led_mcu_reg76, align 4
  %or78 = or i16 %27, %5
  store i16 %or78, ptr %led_mcu_reg76, align 4
  %28 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg92 = getelementptr inbounds %struct.rt2x00_dev, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %led_mcu_reg92 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %led_mcu_reg92, align 4
  %31 = and i16 %30, -129
  store i16 %31, ptr %led_mcu_reg92, align 4
  %32 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg112 = getelementptr inbounds %struct.rt2x00_dev, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %led_mcu_reg112 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %led_mcu_reg112, align 4
  %or114 = or i16 %34, %4
  store i16 %or114, ptr %led_mcu_reg112, align 4
  %35 = load ptr, ptr %add.ptr, align 4
  %led_mcu_reg118 = getelementptr inbounds %struct.rt2x00_dev, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %led_mcu_reg118 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %led_mcu_reg118, align 4
  %call.i153 = tail call i32 @rt2x00usb_vendor_request(ptr noundef %35, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %37, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #13
  br label %if.end131

if.then124:                                       ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  %div = udiv i32 %brightness, 42
  %conv126 = trunc i32 %div to i16
  %led_mcu_reg128 = getelementptr inbounds %struct.rt2x00_dev, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %led_mcu_reg128 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %led_mcu_reg128, align 4
  %call.i154 = tail call i32 @rt2x00usb_vendor_request(ptr noundef %39, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext %conv126, i16 noundef zeroext %41, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #13
  br label %if.end131

if.end131:                                        ; preds = %if.then124, %if.then43, %if.then, %land.end9.if.end131_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_blink_set(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  %reg.i50 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12344, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %5 = and i32 %4, 65535
  %6 = call i32 @llvm.bswap.i32(i32 %5)
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i50) #13
  %13 = call i32 @llvm.bswap.i32(i32 %or43) #13
  %14 = ptrtoint ptr %reg.i50 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg.i50, align 4
  %call.i51 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %12, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12344, ptr noundef nonnull %reg.i50, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i50) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_request_buff(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_bbp_write(ptr noundef %rt2x00dev, i32 noundef %word, i8 noundef zeroext %value) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !132
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #13
  %call = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg) #13
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
  %or74 = or i32 %or48, 65536
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or74, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %2 = call i32 @llvm.bswap.i32(i32 %or74) #13
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rt73usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef %word) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !132
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #13
  %call = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg) #13
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
  %or71 = or i32 %and19, 98304
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or71, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %2 = call i32 @llvm.bswap.i32(i32 %or71) #13
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  %call78 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %conv98 = trunc i32 %5 to i8
  call void @mutex_unlock(ptr noundef %csr_mutex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  ret i8 %conv98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_regbusy_read(ptr noundef, i32 noundef, [2 x i32], ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_disable_radio(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00debug_dump_frame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt73usb_config_channel(ptr noundef %rt2x00dev, ptr nocapture noundef %rf, i32 noundef %txpower) unnamed_addr #2 align 64 {
entry:
  %reg.i.i189 = alloca i32, align 4
  %reg.i190 = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
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
  %call70 = tail call zeroext i8 @rt73usb_bbp_read(ptr noundef %rt2x00dev, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg.i, align 4, !annotation !132
  %csr_mutex.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.rt73usb_bbp_write.exit_crit_edge, label %if.then.i

entry.rt73usb_bbp_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %11 = add i16 %9, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %11)
  %12 = icmp ult i16 %11, -2
  %13 = zext i1 %12 to i8
  %14 = and i8 %call70, -2
  %or102 = or i8 %14, %13
  %conv7.i = zext i8 %or102 to i32
  %or74.i = or i32 %conv7.i, 66304
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or74.i, ptr %reg.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #13
  %16 = call i32 @llvm.bswap.i32(i32 %or74.i) #13
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %reg.i.i, align 4
  %call.i.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #13
  br label %rt73usb_bbp_write.exit

rt73usb_bbp_write.exit:                           ; preds = %if.then.i, %entry.rt73usb_bbp_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i190) #13
  %18 = ptrtoint ptr %reg.i190 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %reg.i190, align 4, !annotation !132
  call void @mutex_lock_nested(ptr noundef %csr_mutex.i, i32 noundef 0) #13
  %call.i192 = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12428, [2 x i32] [i32 16, i32 65536], ptr noundef nonnull %reg.i190) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool.not.i193 = icmp eq i32 %call.i192, 0
  br i1 %tobool.not.i193, label %rt73usb_bbp_write.exit.rt73usb_bbp_write.exit199_crit_edge, label %if.then.i198

rt73usb_bbp_write.exit.rt73usb_bbp_write.exit199_crit_edge: ; preds = %rt73usb_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt73usb_bbp_write.exit199

if.then.i198:                                     ; preds = %rt73usb_bbp_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %19 = add i32 %txpower, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %20 = icmp ult i32 %19, 6
  %conv111 = add i32 %txpower, 231
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %txpower)
  %21 = icmp ugt i32 %txpower, -7
  %conv122 = add i32 %txpower, 6
  %spec.select = select i1 %21, i32 %conv122, i32 6
  %r94.0 = select i1 %20, i32 %conv111, i32 %spec.select
  %conv7.i194 = and i32 %r94.0, 255
  %or74.i196 = or i32 %conv7.i194, 89600
  %22 = ptrtoint ptr %reg.i190 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or74.i196, ptr %reg.i190, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i189) #13
  %23 = call i32 @llvm.bswap.i32(i32 %or74.i196) #13
  %24 = ptrtoint ptr %reg.i.i189 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %reg.i.i189, align 4
  %call.i.i197 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12428, ptr noundef nonnull %reg.i.i189, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i189) #13
  br label %rt73usb_bbp_write.exit199

rt73usb_bbp_write.exit199:                        ; preds = %if.then.i198, %rt73usb_bbp_write.exit.rt73usb_bbp_write.exit199_crit_edge
  call void @mutex_unlock(ptr noundef %csr_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i190) #13
  %rf1 = getelementptr inbounds %struct.rf_channel, ptr %rf, i32 0, i32 1
  %25 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rf1, align 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 1, i32 noundef %26)
  %rf2 = getelementptr inbounds %struct.rf_channel, ptr %rf, i32 0, i32 2
  %27 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rf2, align 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 2, i32 noundef %28)
  %29 = ptrtoint ptr %rf3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rf3, align 4
  %and125 = and i32 %30, -5
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 3, i32 noundef %and125)
  %31 = ptrtoint ptr %rf4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rf4, align 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 4, i32 noundef %32)
  %33 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rf1, align 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 1, i32 noundef %34)
  %35 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rf2, align 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 2, i32 noundef %36)
  %37 = ptrtoint ptr %rf3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rf3, align 4
  %or130 = or i32 %38, 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 3, i32 noundef %or130)
  %39 = ptrtoint ptr %rf4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rf4, align 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 4, i32 noundef %40)
  %41 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rf1, align 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 1, i32 noundef %42)
  %43 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rf2, align 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 2, i32 noundef %44)
  %45 = ptrtoint ptr %rf3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rf3, align 4
  %and135 = and i32 %46, -5
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 3, i32 noundef %and135)
  %47 = ptrtoint ptr %rf4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rf4, align 4
  call void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef 4, i32 noundef %48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 2147480) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt73usb_rf_write(ptr noundef %rt2x00dev, i32 noundef %word, i32 noundef %value) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !132
  %csr_mutex = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %csr_mutex, i32 noundef 0) #13
  %call = call i32 @rt2x00usb_regbusy_read(ptr noundef %rt2x00dev, i32 noundef 12432, [2 x i32] [i32 31, i32 -2147483648], ptr noundef nonnull %reg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %and19 = and i32 %value, 16777215
  %rf1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17, i32 1
  %1 = ptrtoint ptr %rf1.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rf1.i, align 2
  %3 = add i16 %2, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %4 = icmp ult i16 %3, 2
  %5 = select i1 %4, i32 352321536, i32 335544320
  %and89 = or i32 %and19, %5
  %or103 = or i32 %and89, -2147483648
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or103, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %7 = call i32 @llvm.bswap.i32(i32 %or103) #13
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12432, ptr noundef nonnull %reg.i, i16 noundef zeroext 4, i32 noundef 100) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word)
  %cmp.i114 = icmp eq i32 %word, 0
  br i1 %cmp.i114, label %if.then.do.body3.i_crit_edge, label %lor.rhs.i, !prof !130

if.then.do.body3.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

lor.rhs.i:                                        ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %rf_size.i = getelementptr inbounds %struct.rt2x00_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %rf_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rf_size.i, align 4
  %div10.i = lshr i32 %12, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i, i32 %word)
  %cmp1.i = icmp ult i32 %div10.i, %word
  br i1 %cmp1.i, label %lor.rhs.i.do.body3.i_crit_edge, label %rt2x00_rf_write.exit, !prof !130

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %if.then.do.body3.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !137
  unreachable

rt2x00_rf_write.exit:                             ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %rf.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 32
  %13 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rf.i, align 4
  %sub.i = add i32 %word, -1
  %arrayidx.i = getelementptr i32, ptr %14, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
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
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !130

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
  br i1 %cmp1, label %lor.rhs.do.body3_crit_edge, label %do.end6, !prof !130

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #13, !srcloc !135
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
declare dso_local i32 @rt2x00mac_set_tim(ptr noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_start(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_complete(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_get_stats(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt73usb_conf_tx(ptr noundef %hw, ptr noundef %vif, i16 noundef zeroext %queue_idx, ptr noundef %params) #2 align 64 {
entry:
  %reg.i139 = alloca i32, align 4
  %reg.i137 = alloca i32, align 4
  %reg.i135 = alloca i32, align 4
  %reg.i133 = alloca i32, align 4
  %reg.i131 = alloca i32, align 4
  %reg.i129 = alloca i32, align 4
  %reg.i126 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @rt2x00mac_conf_tx(ptr noundef %hw, ptr noundef %vif, i16 noundef zeroext %queue_idx, ptr noundef %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %queue_idx)
  %cmp = icmp ugt i16 %queue_idx, 3
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt2x00queue_get_tx_queue.exit

land.lhs.true.i:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
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
  %8 = shl nuw nsw i16 %queue_idx, 1
  %mul = and i16 %8, 4
  %add = add nuw nsw i16 %mul, 1036
  %and11 = shl nuw nsw i32 %conv, 4
  %mul12 = and i32 %and11, 16
  %shl = shl nuw i32 65535, %mul12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %add, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i126) #13
  %15 = call i32 @llvm.bswap.i32(i32 %or) #13
  %16 = ptrtoint ptr %reg.i126 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %reg.i126, align 4
  %call.i128 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %add, ptr noundef nonnull %reg.i126, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i126) #13
  %mul26 = shl nuw nsw i32 %conv, 2
  %shl29 = shl nuw nsw i32 15, %mul26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i129) #13
  %17 = ptrtoint ptr %reg.i129 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reg.i129, align 4
  %call.i130 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1024, ptr noundef nonnull %reg.i129, i16 noundef zeroext 4) #13
  %18 = ptrtoint ptr %reg.i129 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg.i129, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i129) #13
  %neg38 = xor i32 %shl29, -1
  %and39 = and i32 %20, %neg38
  %aifs = getelementptr inbounds %struct.data_queue, ptr %retval.0.i, i32 0, i32 15
  %21 = ptrtoint ptr %aifs to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %aifs, align 2
  %conv41 = zext i16 %22 to i32
  %shl43 = shl nuw nsw i32 %conv41, %mul26
  %and45 = and i32 %shl43, %shl29
  %or46 = or i32 %and45, %and39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i131) #13
  %23 = call i32 @llvm.bswap.i32(i32 %or46) #13
  %24 = ptrtoint ptr %reg.i131 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %reg.i131, align 4
  %call.i132 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1024, ptr noundef nonnull %reg.i131, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i131) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i133) #13
  %25 = ptrtoint ptr %reg.i133 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %reg.i133, align 4
  %call.i134 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1028, ptr noundef nonnull %reg.i133, i16 noundef zeroext 4) #13
  %26 = ptrtoint ptr %reg.i133 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg.i133, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i133) #13
  %and55 = and i32 %28, %neg38
  %cw_min = getelementptr inbounds %struct.data_queue, ptr %retval.0.i, i32 0, i32 16
  %29 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cw_min, align 4
  %conv57 = zext i16 %30 to i32
  %shl59 = shl nuw nsw i32 %conv57, %mul26
  %and61 = and i32 %shl59, %shl29
  %or62 = or i32 %and61, %and55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i135) #13
  %31 = call i32 @llvm.bswap.i32(i32 %or62) #13
  %32 = ptrtoint ptr %reg.i135 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %reg.i135, align 4
  %call.i136 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1028, ptr noundef nonnull %reg.i135, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i135) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i137) #13
  %33 = ptrtoint ptr %reg.i137 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %reg.i137, align 4
  %call.i138 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1032, ptr noundef nonnull %reg.i137, i16 noundef zeroext 4) #13
  %34 = ptrtoint ptr %reg.i137 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg.i137, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i137) #13
  %and71 = and i32 %36, %neg38
  %cw_max = getelementptr inbounds %struct.data_queue, ptr %retval.0.i, i32 0, i32 17
  %37 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cw_max, align 2
  %conv73 = zext i16 %38 to i32
  %shl75 = shl nuw nsw i32 %conv73, %mul26
  %and77 = and i32 %shl75, %shl29
  %or78 = or i32 %and77, %and71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i139) #13
  %39 = call i32 @llvm.bswap.i32(i32 %or78) #13
  %40 = ptrtoint ptr %reg.i139 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %reg.i139, align 4
  %call.i140 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1032, ptr noundef nonnull %reg.i139, i16 noundef zeroext 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i139) #13
  br label %cleanup

cleanup:                                          ; preds = %rt2x00queue_get_tx_queue.exit, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @rt73usb_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #2 align 64 {
entry:
  %reg.i34 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #13
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12404, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #13
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i34) #13
  %5 = ptrtoint ptr %reg.i34 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reg.i34, align 4
  %call.i35 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 12400, ptr noundef nonnull %reg.i34, i16 noundef zeroext 4) #13
  %6 = ptrtoint ptr %reg.i34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i34) #13
  %8 = zext i32 %4 to i64
  %9 = zext i32 %7 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = call i64 @llvm.bswap.i64(i64 %11)
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
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !112, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__param_nohwcrypt, !1, !"__param_nohwcrypt", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_nohwcrypttype368, !1, !"__UNIQUE_ID_nohwcrypttype368", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nohwcrypt369, !4, !"__UNIQUE_ID_nohwcrypt369", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 31, i32 1}
!5 = !{ptr @__UNIQUE_ID_author630, !6, !"__UNIQUE_ID_author630", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2513, i32 1}
!7 = !{ptr @__UNIQUE_ID_version631, !8, !"__UNIQUE_ID_version631", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2514, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description632, !14, !"__UNIQUE_ID_description632", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2515, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware633, !16, !"__UNIQUE_ID_firmware633", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2517, i32 1}
!17 = !{ptr @__UNIQUE_ID_file634, !18, !"__UNIQUE_ID_file634", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2518, i32 1}
!19 = !{ptr @__UNIQUE_ID_license635, !18, !"__UNIQUE_ID_license635", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_rt73usb__636_2537_rt73usb_driver_init6, !21, !"__initcall__kmod_rt73usb__636_2537_rt73usb_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2537, i32 1}
!22 = !{ptr @__exitcall_rt73usb_driver_exit, !21, !"__exitcall_rt73usb_driver_exit", i1 false, i1 false}
!23 = !{ptr @modparam_nohwcrypt, !24, !"modparam_nohwcrypt", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 29, i32 13}
!25 = !{ptr @__param_str_nohwcrypt, !1, !"__param_str_nohwcrypt", i1 false, i1 false}
!26 = !{ptr @rt73usb_driver, !27, !"rt73usb_driver", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2526, i32 26}
!28 = !{ptr @rt73usb_ops, !29, !"rt73usb_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2382, i32 32}
!30 = !{ptr @rt73usb_rt2x00_ops, !31, !"rt73usb_rt2x00_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2316, i32 35}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1775, i32 3}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug571, !33, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1782, i32 3}
!39 = !{ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug573, !38, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1798, i32 3}
!42 = !{ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug583, !41, !"__UNIQUE_ID_ddebug583", i1 false, i1 false}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1806, i32 3}
!45 = !{ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug586, !44, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1814, i32 3}
!48 = !{ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug589, !47, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1830, i32 3}
!51 = !{ptr @rt73usb_validate_eeprom.__UNIQUE_ID_ddebug596, !50, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1864, i32 3}
!54 = !{ptr @rt73usb_init_eeprom._rs, !53, !"_rs", i1 false, i1 false}
!55 = !{ptr @__func__.rt73usb_init_eeprom, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rt73usb_init_eeprom._entry, !53, !"_entry", i1 false, i1 false}
!60 = !{ptr @rt73usb_init_eeprom._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @rt73usb_init_eeprom._rs.15, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1872, i32 3}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rt73usb_init_eeprom._entry.16, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @rt73usb_init_eeprom._entry_ptr.18, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00.h", i32 1107, i32 2}
!68 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rt2x00_set_chip._entry, !67, !"_entry", i1 false, i1 false}
!72 = !{ptr @rt2x00_set_chip._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @rf_vals_bg_2528, !74, !"rf_vals_bg_2528", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1957, i32 32}
!75 = !{ptr @rf_vals_5226, !76, !"rf_vals_5226", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1978, i32 32}
!77 = !{ptr @rf_vals_5225_2527, !78, !"rf_vals_5225_2527", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2035, i32 32}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1064, i32 9}
!81 = !{ptr @rt73usb_load_firmware._rs, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1114, i32 3}
!83 = !{ptr @__func__.rt73usb_load_firmware, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rt73usb_load_firmware._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @rt73usb_load_firmware._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @rt73usb_load_firmware._rs.25, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1131, i32 3}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rt73usb_load_firmware._entry.26, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @rt73usb_load_firmware._entry_ptr.28, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @rt73usb_set_device_state._rs, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1435, i32 3}
!94 = !{ptr @__func__.rt73usb_set_device_state, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rt73usb_set_device_state._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @rt73usb_set_device_state._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @rt73usb_wait_bbp_ready._rs, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1297, i32 2}
!100 = !{ptr @__func__.rt73usb_wait_bbp_ready, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rt73usb_wait_bbp_ready._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @rt73usb_wait_bbp_ready._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @rt73usb_write_beacon._rs, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 1559, i32 3}
!106 = !{ptr @__func__.rt73usb_write_beacon, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rt73usb_write_beacon._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @rt73usb_write_beacon._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @antenna_sel_a, !111, !"antenna_sel_a", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 662, i32 33}
!112 = !{ptr @antenna_sel_bg, !113, !"antenna_sel_bg", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 673, i32 33}
!114 = !{ptr @rt73usb_mac80211_ops, !115, !"rt73usb_mac80211_ops", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2292, i32 35}
!116 = !{ptr @rt73usb_rt2x00debug, !117, !"rt73usb_rt2x00debug", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 142, i32 33}
!118 = !{ptr @rt73usb_device_table, !119, !"rt73usb_device_table", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ralink/rt2x00/rt73usb.c", i32 2399, i32 35}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2163412452, i64 2163412962, i64 2163412489, i64 2163412545, i64 2163412579, i64 2163412603, i64 2163412644, i64 2163412665, i64 2163412693, i64 2163412727}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i8 0, i8 2}
!132 = !{!"auto-init"}
!133 = !{i32 0, i32 33}
!134 = !{i64 2159073877, i64 2159074386, i64 2159073914, i64 2159073970, i64 2159074004, i64 2159074028, i64 2159074069, i64 2159074090, i64 2159074118, i64 2159074152}
!135 = !{i64 2157763131, i64 2157763640, i64 2157763168, i64 2157763224, i64 2157763258, i64 2157763282, i64 2157763323, i64 2157763344, i64 2157763372, i64 2157763406}
!136 = !{i64 2148832482, i64 2148832487, i64 2148832500, i64 2148832544, i64 2148832578, i64 2148832599}
!137 = !{i64 2157765043, i64 2157765552, i64 2157765080, i64 2157765136, i64 2157765170, i64 2157765194, i64 2157765235, i64 2157765256, i64 2157765284, i64 2157765318}
