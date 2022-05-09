; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2800usb.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2800usb.c"
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
%struct.data_queue = type { ptr, ptr, i32, i32, %struct.mutex, %struct.spinlock, %struct.spinlock, i32, i16, i16, i16, [3 x i16], i16, i32, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }

@__param_str_nohwcrypt = internal constant [20 x i8] c"rt2800usb.nohwcrypt\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_nohwcrypt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype368 = internal constant [34 x i8] c"rt2800usb.parmtype=nohwcrypt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt369 = internal constant [54 x i8] c"rt2800usb.parm=nohwcrypt:Disable hardware encryption.\00", section ".modinfo", align 1
@__UNIQUE_ID_author399 = internal constant [48 x i8] c"rt2800usb.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version400 = internal constant [24 x i8] c"rt2800usb.version=2.3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rt2800usb\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description401 = internal constant [61 x i8] c"rt2800usb.description=Ralink RT2800 USB Wireless LAN driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware402 = internal constant [30 x i8] c"rt2800usb.firmware=rt2870.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_file403 = internal constant [60 x i8] c"rt2800usb.file=drivers/net/wireless/ralink/rt2x00/rt2800usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license404 = internal constant [22 x i8] c"rt2800usb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rt2800usb__405_1271_rt2800usb_driver_init6 = internal global ptr @rt2800usb_driver_init, section ".initcall6.init", align 4
@rt2800usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @rt2800usb_probe, ptr @rt2x00usb_disconnect, ptr null, ptr @rt2x00usb_suspend, ptr @rt2x00usb_resume, ptr @rt2x00usb_resume, ptr null, ptr null, ptr @rt2800usb_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rt2800usb_driver_exit = internal global ptr @rt2800usb_driver_exit, section ".exitcall.exit", align 4
@rt2800usb_device_table = internal constant { [335 x %struct.usb_device_id], [2008 x i8] } { [335 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1976, i16 10352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 10096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 12400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 12401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 12402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5250, i16 15369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7898, i16 8210, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7898, i16 8720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7898, i16 8976, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 8304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 10096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 10352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 12400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 12401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 12402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15366, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15378, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15397, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15399, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15404, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5573, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1856, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5937, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5938, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5954, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6020, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5985, i16 2821, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12871, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12915, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13061, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13063, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13089, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32685, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32676, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32420, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32165, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -27814, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -27813, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 349, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 418, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 494, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 509, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 47, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 60, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 63, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6341, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15370, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15375, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15381, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 13079, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15397, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2042, i16 30482, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -19705, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 16517, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30498, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8253, i16 5248, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8253, i16 5289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26879, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26878, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26877, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26875, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26874, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26873, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26872, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26871, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5545, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32757, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32755, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 11, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2375, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 49, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 354, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 356, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 358, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4109, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14370, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14448, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 26777, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -32230, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -32214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -32213, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -32212, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30966, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30950, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30949, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30948, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30310, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 12400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 12401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 12402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 -24064, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8376, i16 -30584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7501, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7501, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7501, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7501, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8207, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 20993, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -21723, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -4858, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6706, i16 772, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 8304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 10096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 10352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 12400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 12401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 12402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1256, i16 8216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4763, i16 6184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 43, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 44, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 45, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 57, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 59, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 61, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 62, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 63, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 64, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 71, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 72, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 81, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 95, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 96, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 26136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 29969, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 29970, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 29986, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -31454, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -23016, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -22783, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -22782, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -22781, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -19166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5545, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 356, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 803, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 804, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 4451, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5502, i16 12302, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5502, i16 12307, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 34, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 37, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 643, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 21079, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13334, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13338, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13342, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -27557, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -19183, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -19182, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8413, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 13168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 -32656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 357, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 13682, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1860, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1889, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1892, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6045, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5755, i16 16385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2372, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 47, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 13682, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 65, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 98, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 104, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2352, i16 2567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 30515, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6076, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6061, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 4355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 -3327, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15391, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30515, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 59, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 -28654, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 -28653, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 -28647, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -4844, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -4839, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 13683, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 103, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 106, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 110, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13345, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1086, i16 31250, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15381, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15390, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15394, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1086, i16 31266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1086, i16 31298, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1242, i16 6145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1242, i16 6144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1242, i16 9206, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8452, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8486, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8578, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 21360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 21362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1086, i16 31282, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1404, i16 -31487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 595, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15393, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1086, i16 31251, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 21874, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8436, i16 29258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 12403, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 12404, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3595, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3595, i16 -28607, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5738, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5984, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5985, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6032, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6055, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12898, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12932, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13090, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13312, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13313, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 302, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 65, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6341, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15371, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8253, i16 5281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 1536, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 1538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5545, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32756, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 -8138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 -3839, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 1541, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 1557, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4109, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1446, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7501, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -21724, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -21719, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6376, i16 25177, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2233, i16 4503, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 60, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 74, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 77, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 83, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 111, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -23278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -15070, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -10974, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -2799, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -3583, i16 21360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [2008 x i8] zeroinitializer }, align 32
@rt2800usb_ops = internal constant { %struct.rt2x00_ops, [52 x i8] } { %struct.rt2x00_ops { ptr @.str.1, i32 820, i32 8, i32 512, i32 16, i32 4, ptr @rt2800usb_queue_init, ptr @rt2800usb_rt2x00_ops, ptr @rt2800usb_rt2800_ops, ptr @rt2800usb_mac80211_ops, ptr @rt2800_rt2x00debug }, [52 x i8] zeroinitializer }, align 32
@rt2800usb_rt2x00_ops = internal constant { %struct.rt2x00lib_ops, [52 x i8] } { %struct.rt2x00lib_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2800usb_probe_hw, ptr @rt2800usb_get_firmware_name, ptr @rt2800_check_firmware, ptr @rt2800_load_firmware, ptr @rt2x00usb_initialize, ptr @rt2x00usb_uninitialize, ptr null, ptr @rt2x00usb_clear_entry, ptr @rt2800usb_set_device_state, ptr @rt2800_rfkill_poll, ptr @rt2800_link_stats, ptr @rt2800_reset_tuner, ptr @rt2800_link_tuner, ptr @rt2800_gain_calibration, ptr @rt2800_vco_calibration, ptr @rt2800_watchdog, ptr @rt2800usb_start_queue, ptr @rt2x00usb_kick_queue, ptr @rt2800usb_stop_queue, ptr @rt2x00usb_flush_queue, ptr @rt2800usb_tx_dma_done, ptr @rt2800usb_write_tx_desc, ptr @rt2800_write_tx_data, ptr @rt2800_write_beacon, ptr @rt2800_clear_beacon, ptr @rt2800usb_get_tx_data_len, ptr @rt2800usb_fill_rxdone, ptr @rt2800_config_shared_key, ptr @rt2800_config_pairwise_key, ptr @rt2800_config_filter, ptr @rt2800_config_intf, ptr @rt2800_config_erp, ptr @rt2800_config_ant, ptr @rt2800_config, ptr @rt2800_pre_reset_hw, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rt2800usb_rt2800_ops = internal constant { %struct.rt2800_ops, [44 x i8] } { %struct.rt2800_ops { ptr @rt2x00usb_register_read, ptr @rt2x00usb_register_read_lock, ptr @rt2x00usb_register_write, ptr @rt2x00usb_register_write_lock, ptr @rt2x00usb_register_multiread, ptr @rt2x00usb_register_multiwrite, ptr @rt2x00usb_regbusy_read, ptr @rt2800usb_read_eeprom, ptr @rt2800usb_hwcrypt_disabled, ptr @rt2800usb_write_firmware, ptr @rt2800usb_init_registers, ptr @rt2800usb_get_txwi, ptr @rt2800usb_get_dma_done }, [44 x i8] zeroinitializer }, align 32
@rt2800usb_mac80211_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rt2x00mac_tx, ptr @rt2x00mac_start, ptr @rt2x00mac_stop, ptr null, ptr null, ptr null, ptr @rt2x00mac_add_interface, ptr null, ptr @rt2x00mac_remove_interface, ptr @rt2x00mac_config, ptr @rt2x00mac_bss_info_changed, ptr null, ptr null, ptr null, ptr @rt2x00mac_configure_filter, ptr null, ptr @rt2x00mac_set_tim, ptr @rt2x00mac_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_sw_scan_start, ptr @rt2x00mac_sw_scan_complete, ptr @rt2x00mac_get_stats, ptr @rt2800_get_key_seq, ptr null, ptr @rt2800_set_rts_threshold, ptr @rt2800_sta_add, ptr @rt2800_sta_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2800_conf_tx, ptr @rt2800_get_tsf, ptr null, ptr null, ptr null, ptr null, ptr @rt2800_ampdu_action, ptr @rt2800_get_survey, ptr @rt2x00mac_rfkill_poll, ptr null, ptr null, ptr null, ptr @rt2x00mac_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_get_ringparam, ptr @rt2x00mac_tx_frames_pending, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_reconfig_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@rt2800_rt2x00debug = external dso_local constant %struct.rt2x00debug, align 4
@rt2800usb_probe_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&rt2x00dev->txdone_work)\00", [53 x i8] zeroinitializer }, align 32
@rt2800usb_tx_sta_fifo_read_completed._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt2800usb_tx_sta_fifo_read_completed = private unnamed_addr constant [37 x i8] c"rt2800usb_tx_sta_fifo_read_completed\00", align 1
@rt2800usb_tx_sta_fifo_read_completed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.rt2800usb_tx_sta_fifo_read_completed, ptr @.str.6, i32 101, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Warning - TX status read failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2800usb.c\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt2800usb_tx_sta_fifo_read_completed._entry_ptr = internal global ptr @rt2800usb_tx_sta_fifo_read_completed._entry, section ".printk_index", align 4
@rt2800usb_tx_sta_fifo_read_completed._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt2800usb_tx_sta_fifo_read_completed._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.rt2800usb_tx_sta_fifo_read_completed, ptr @.str.6, i32 109, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Warning - TX status FIFO overrun\0A\00", [58 x i8] zeroinitializer }, align 32
@rt2800usb_tx_sta_fifo_read_completed._entry_ptr.12 = internal global ptr @rt2800usb_tx_sta_fifo_read_completed._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt2870.bin\00", [21 x i8] zeroinitializer }, align 32
@rt2800usb_set_device_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2800usb_set_device_state = private unnamed_addr constant [27 x i8] c"rt2800usb_set_device_state\00", align 1
@rt2800usb_set_device_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.rt2800usb_set_device_state, ptr @.str.6, i32 377, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Error - Device failed to enter state %d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rt2800usb_set_device_state._entry_ptr = internal global ptr @rt2800usb_set_device_state._entry, section ".printk_index", align 4
@rt2800usb_fill_rxdone._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt2800usb_fill_rxdone = private unnamed_addr constant [22 x i8] c"rt2800usb_fill_rxdone\00", align 1
@rt2800usb_fill_rxdone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.rt2800usb_fill_rxdone, ptr @.str.6, i32 516, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Error - Bad frame size %d, forcing to 0\0A\00", [51 x i8] zeroinitializer }, align 32
@rt2800usb_fill_rxdone._entry_ptr = internal global ptr @rt2800usb_fill_rxdone._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rt2800usb_write_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 239, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: Info - Firmware loading not required - NIC in AutoRun mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt2800usb_write_firmware\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt2800usb_write_firmware._entry_ptr = internal global ptr @rt2800usb_write_firmware._entry, section ".printk_index", align 4
@rt2800usb_write_firmware._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt2800usb_write_firmware._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.6, i32 257, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Error - Failed to write Firmware to device\0A\00", [48 x i8] zeroinitializer }, align 32
@rt2800usb_write_firmware._entry_ptr.22 = internal global ptr @rt2800usb_write_firmware._entry.20, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 14, i64 16]
@__sancov_gen_cov_switch_values.23 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 10336, i64 10354]
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"modparam_nohwcrypt\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 34, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1248, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"rt2800usb_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1260, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"rt2800usb_device_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 774, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"rt2800usb_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 755, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"rt2800usb_rt2x00_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 676, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"rt2800usb_rt2800_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 660, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"rt2800usb_mac80211_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 631, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 626, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 100, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 109, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 207, i32 9 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 376, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 515, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 238, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [50 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 257, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author399, ptr @__UNIQUE_ID_description401, ptr @__UNIQUE_ID_file403, ptr @__UNIQUE_ID_firmware402, ptr @__UNIQUE_ID_license404, ptr @__UNIQUE_ID_nohwcrypt369, ptr @__UNIQUE_ID_nohwcrypttype368, ptr @__UNIQUE_ID_version400, ptr @__exitcall_rt2800usb_driver_exit, ptr @__initcall__kmod_rt2800usb__405_1271_rt2800usb_driver_init6, ptr @__modver_attr, ptr @__param_nohwcrypt, ptr @rt2800usb_driver_exit, ptr @rt2800usb_fill_rxdone._entry, ptr @rt2800usb_fill_rxdone._entry_ptr, ptr @rt2800usb_set_device_state._entry, ptr @rt2800usb_set_device_state._entry_ptr, ptr @rt2800usb_tx_sta_fifo_read_completed._entry, ptr @rt2800usb_tx_sta_fifo_read_completed._entry.10, ptr @rt2800usb_tx_sta_fifo_read_completed._entry_ptr, ptr @rt2800usb_tx_sta_fifo_read_completed._entry_ptr.12, ptr @rt2800usb_write_firmware._entry, ptr @rt2800usb_write_firmware._entry.20, ptr @rt2800usb_write_firmware._entry_ptr, ptr @rt2800usb_write_firmware._entry_ptr.22, ptr @modparam_nohwcrypt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rt2800usb_driver, ptr @rt2800usb_device_table, ptr @rt2800usb_ops, ptr @rt2800usb_rt2x00_ops, ptr @rt2800usb_rt2800_ops, ptr @rt2800usb_mac80211_ops, ptr @rt2800usb_probe_hw.__key, ptr @.str.3, ptr @rt2800usb_tx_sta_fifo_read_completed._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rt2800usb_tx_sta_fifo_read_completed._rs.9, ptr @.str.11, ptr @.str.13, ptr @rt2800usb_set_device_state._rs, ptr @.str.14, ptr @.str.15, ptr @rt2800usb_fill_rxdone._rs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @rt2800usb_write_firmware._rs, ptr @.str.21], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_nohwcrypt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_device_table to i32), i32 8040, i32 10048, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_rt2x00_ops to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_rt2800_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_mac80211_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_probe_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_tx_sta_fifo_read_completed._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_tx_sta_fifo_read_completed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_tx_sta_fifo_read_completed._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_tx_sta_fifo_read_completed._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_set_device_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_set_device_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_fill_rxdone._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_fill_rxdone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_write_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_write_firmware._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2800usb_write_firmware._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800usb_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rt2800usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt2800usb_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @rt2800usb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800usb_probe(ptr noundef %usb_intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rt2x00usb_probe(ptr noundef %usb_intf, ptr noundef nonnull @rt2800usb_ops) #11
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
define internal void @rt2800usb_queue_init(ptr nocapture noundef %queue) #2 align 64 {
entry:
  %txwi_size = alloca i16, align 2
  %rxwi_size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txwi_size) #11
  %2 = ptrtoint ptr %txwi_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %txwi_size, align 2, !annotation !91
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxwi_size) #11
  %3 = ptrtoint ptr %rxwi_size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %rxwi_size, align 2, !annotation !91
  call void @rt2800_get_txwi_rxwi_size(ptr noundef %1, ptr noundef nonnull %txwi_size, ptr noundef nonnull %rxwi_size) #11
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qid, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body [
    i32 14, label %entry.sw.epilog_crit_edge
    i32 0, label %entry.sw.bb2_crit_edge
    i32 1, label %entry.sw.bb2_crit_edge38
    i32 2, label %entry.sw.bb2_crit_edge39
    i32 3, label %entry.sw.bb2_crit_edge40
    i32 16, label %sw.bb9
  ]

entry.sw.bb2_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge38, %entry.sw.bb2_crit_edge39, %entry.sw.bb2_crit_edge40
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2800usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 750, 0\0A.popsection", ""() #11, !srcloc !92
  unreachable

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink37 = phi i16 [ 8, %sw.bb9 ], [ 16, %sw.bb2 ], [ 128, %entry.sw.epilog_crit_edge ]
  %.sink36 = phi i16 [ 256, %sw.bb9 ], [ 3840, %sw.bb2 ], [ 3840, %entry.sw.epilog_crit_edge ]
  %.sink.in = phi ptr [ %txwi_size, %sw.bb9 ], [ %txwi_size, %sw.bb2 ], [ %rxwi_size, %entry.sw.epilog_crit_edge ]
  %limit10 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 8
  %7 = ptrtoint ptr %limit10 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink37, ptr %limit10, align 4
  %data_size11 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 18
  %8 = ptrtoint ptr %data_size11 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink36, ptr %data_size11, align 4
  %desc_size12 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 19
  %9 = ptrtoint ptr %desc_size12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %desc_size12, align 2
  %10 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %10)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv13 = trunc i16 %.sink to i8
  %winfo_size14 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 20
  %11 = ptrtoint ptr %winfo_size14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv13, ptr %winfo_size14, align 1
  %priv_size15 = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 21
  %12 = ptrtoint ptr %priv_size15 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %priv_size15, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxwi_size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txwi_size) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_get_txwi_rxwi_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800usb_probe_hw(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rt2800_probe_hw(ptr noundef %rt2x00dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %function = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 56, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rt2800usb_tx_sta_fifo_timeout, ptr %function, align 8
  %txdone_work = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 46
  tail call void @__init_work(ptr noundef %txdone_work, i32 noundef 0) #11
  %1 = ptrtoint ptr %txdone_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %txdone_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 46, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @rt2800usb_probe_hw.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry5 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 46, i32 1
  %2 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 46, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 46, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rt2800usb_work_txdone, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @rt2800usb_get_firmware_name(ptr nocapture noundef readnone %rt2x00dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_check_firmware(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_load_firmware(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_initialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_uninitialize(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_clear_entry(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800usb_set_device_state(ptr noundef %rt2x00dev, i32 noundef %state) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %state, label %entry.do.body_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb3
    i32 6, label %entry.if.end16_crit_edge
    i32 7, label %entry.if.end16_crit_edge36
    i32 3, label %if.then.i
    i32 0, label %entry.if.else.i_crit_edge
    i32 1, label %entry.if.else.i_crit_edge37
    i32 2, label %entry.if.else.i_crit_edge38
  ]

entry.if.else.i_crit_edge38:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

entry.if.else.i_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

entry.if.end16_crit_edge36:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb:                                            ; preds = %entry
  tail call void @rt2800_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext 49, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 2) #11
  tail call void @msleep(i32 noundef 1) #11
  %call.i = tail call i32 @rt2800_wait_wpdma_ready(ptr noundef %rt2x00dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.epilog, label %sw.bb.do.body_crit_edge, !prof !93

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rt2800_disable_radio(ptr noundef %rt2x00dev) #11
  tail call void @rt2800_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext 48, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 2) #11
  br label %if.end16

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rt2800_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext 49, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 2) #11
  br label %if.end16

if.else.i:                                        ; preds = %entry.if.else.i_crit_edge, %entry.if.else.i_crit_edge37, %entry.if.else.i_crit_edge38
  tail call void @rt2800_mcu_request(ptr noundef %rt2x00dev, i8 noundef zeroext 48, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 2) #11
  br label %if.end16

sw.epilog:                                        ; preds = %sw.bb
  %rx.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 50
  %1 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx.i, align 4
  %limit.i = getelementptr inbounds %struct.data_queue, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %limit.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %limit.i, align 4
  %5 = mul i16 %4, 608
  %6 = add i16 %5, -768
  %7 = and i16 %6, -256
  %or95.i = zext i16 %7 to i32
  %or147.i = or i32 %or95.i, 12583040
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or147.i) #11
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg.i.i, align 4
  %call.i.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 672, ptr noundef nonnull %reg.i.i, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #11
  %call148.i = call i32 @rt2800_enable_radio(ptr noundef %rt2x00dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i)
  %tobool.not = icmp eq i32 %call148.i, 0
  br i1 %tobool.not, label %sw.epilog.if.end16_crit_edge, label %sw.epilog.do.body_crit_edge, !prof !93

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  %retval1.035 = phi i32 [ %call148.i, %sw.epilog.do.body_crit_edge ], [ -5, %sw.bb.do.body_crit_edge ], [ -524, %entry.do.body_crit_edge ]
  %call10 = call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_set_device_state._rs, ptr noundef nonnull @__func__.rt2800usb_set_device_state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body.if.end16_crit_edge, label %do.end

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rt2800usb_set_device_state, i32 noundef %state, i32 noundef %retval1.035) #14
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge, %sw.epilog.if.end16_crit_edge, %if.else.i, %if.then.i, %sw.bb3, %entry.if.end16_crit_edge, %entry.if.end16_crit_edge36
  %retval1.030 = phi i32 [ %retval1.035, %do.body.if.end16_crit_edge ], [ %retval1.035, %do.end ], [ 0, %sw.epilog.if.end16_crit_edge ], [ 0, %entry.if.end16_crit_edge ], [ 0, %entry.if.end16_crit_edge36 ], [ 0, %sw.bb3 ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %retval1.030
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2800usb_start_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  %reg.i112 = alloca i32, align 4
  %reg.i110 = alloca i32, align 4
  %reg.i108 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 14, label %sw.bb
    i32 16, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #11
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 4100, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #11
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  %8 = or i32 %7, 134217728
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i108) #11
  %9 = ptrtoint ptr %reg.i108 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg.i108, align 4
  %call.i109 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4100, ptr noundef nonnull %reg.i108, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i108) #11
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i110) #11
  %10 = ptrtoint ptr %reg.i110 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %reg.i110, align 4
  %call.i111 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 4372, ptr noundef nonnull %reg.i110, i16 noundef zeroext 4) #11
  %11 = ptrtoint ptr %reg.i110 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i110, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i110) #11
  %13 = or i32 %12, 6400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i112) #11
  %14 = ptrtoint ptr %reg.i112 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg.i112, align 4
  %call.i113 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4372, ptr noundef nonnull %reg.i112, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i112) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_kick_queue(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2800usb_stop_queue(ptr nocapture noundef readonly %queue) #2 align 64 {
entry:
  %reg.i112 = alloca i32, align 4
  %reg.i110 = alloca i32, align 4
  %reg.i108 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #11
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 4100, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #11
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  %8 = and i32 %7, -134217729
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i108) #11
  %9 = ptrtoint ptr %reg.i108 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg.i108, align 4
  %call.i109 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4100, ptr noundef nonnull %reg.i108, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i108) #11
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i110) #11
  %10 = ptrtoint ptr %reg.i110 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %reg.i110, align 4
  %call.i111 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 4372, ptr noundef nonnull %reg.i110, i16 noundef zeroext 4) #11
  %11 = ptrtoint ptr %reg.i110 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i110, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i110) #11
  %13 = and i32 %12, -6401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i112) #11
  %14 = ptrtoint ptr %reg.i112 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg.i112, align 4
  %call.i113 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4372, ptr noundef nonnull %reg.i112, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i112) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_flush_queue(ptr noundef, i1 noundef zeroext) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2800usb_tx_dma_done(ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 13
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.rt2800usb_async_read_tx_status.exit_crit_edge

entry.rt2800usb_async_read_tx_status.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rt2800usb_async_read_tx_status.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %txstatus_timer.i = getelementptr inbounds %struct.rt2x00_dev, ptr %3, i32 0, i32 56
  tail call void @hrtimer_start_range_ns(ptr noundef %txstatus_timer.i, i64 noundef 2000000, i64 noundef 0, i32 noundef 1) #11
  br label %rt2800usb_async_read_tx_status.exit

rt2800usb_async_read_tx_status.exit:              ; preds = %if.end.i, %entry.rt2800usb_async_read_tx_status.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rt2800usb_write_tx_desc(ptr nocapture noundef readonly %entry1, ptr noundef %txdesc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 65328
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = add i32 %10, 65535
  %and20 = and i32 %11, 65532
  %or = or i32 %and20, %8
  %12 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %txdesc, align 4
  %14 = shl i32 %13, 13
  %15 = and i32 %14, 16777216
  %16 = or i32 %or, %15
  %17 = load volatile i32, ptr %txdesc, align 4
  %18 = shl i32 %17, 25
  %and1.i189 = and i32 %18, -2147483648
  %19 = or i32 %16, %and1.i189
  %or157 = xor i32 %19, 83886080
  %20 = tail call i32 @llvm.bswap.i32(i32 %or157) #11
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %4, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %2, align 4
  %24 = or i8 %23, 16
  store i8 %24, ptr %2, align 4
  %desc = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %4, ptr %desc, align 4
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %queue, align 4
  %winfo_size = getelementptr inbounds %struct.data_queue, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %winfo_size to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %winfo_size, align 1
  %add163 = add i8 %29, 4
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %30 = ptrtoint ptr %desc_len to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %add163, ptr %desc_len, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_write_tx_data(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_write_beacon(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_clear_beacon(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt2800usb_get_tx_data_len(ptr nocapture noundef readonly %entry1) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = add i32 %3, 7
  %add2 = and i32 %4, -4
  ret i32 %add2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2800usb_fill_rxdone(ptr noundef %entry1, ptr noundef %rxdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %desc = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %desc_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %6 = ptrtoint ptr %desc_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %desc_len, align 1
  %conv = zext i8 %7 to i32
  %8 = call ptr @memcpy(ptr %5, ptr %3, i32 %conv)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %11 = and i32 %10, -65536
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  %call13 = tail call ptr @skb_pull(ptr noundef %14, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %entry.do.body20_crit_edge, label %lor.rhs, !prof !94

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

lor.rhs:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue, align 4
  %data_size = getelementptr inbounds %struct.data_queue, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %data_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data_size, align 4
  %conv16 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv16)
  %cmp17 = icmp ugt i32 %12, %conv16
  br i1 %cmp17, label %lor.rhs.do.body20_crit_edge, label %if.end30, !prof !94

lor.rhs.do.body20_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

do.body20:                                        ; preds = %lor.rhs.do.body20_crit_edge, %entry.do.body20_crit_edge
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_fill_rxdone._rs, ptr noundef nonnull @__func__.rt2800usb_fill_rxdone) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.cleanup_crit_edge, label %do.end26

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %queue27 = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %19 = ptrtoint ptr %queue27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue27, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rt2800usb_fill_rxdone, i32 noundef %12) #14
  br label %cleanup

if.end30:                                         ; preds = %lor.rhs
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb, align 4
  %data32 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data32, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %12
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool54.not = icmp eq i32 %34, 0
  br i1 %tobool54.not, label %if.end30.if.end56_crit_edge, label %if.then55

if.end30.if.end56_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then55:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %or = or i32 %36, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end30.if.end56_crit_edge
  %and69 = lshr i32 %33, 9
  %37 = trunc i32 %and69 to i8
  %conv77 = and i8 %37, 3
  %cipher_status = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 11
  %38 = ptrtoint ptr %cipher_status to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv77, ptr %cipher_status, align 1
  %39 = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool98.not = icmp eq i32 %39, 0
  br i1 %tobool98.not, label %if.end56.if.end122_crit_edge, label %if.then99

if.end56.if.end122_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then99:                                        ; preds = %if.end56
  %flags100 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %40 = ptrtoint ptr %flags100 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags100, align 4
  %or103 = or i32 %41, 24
  store i32 %or103, ptr %flags100, align 4
  %trunc = trunc i32 %and69 to i2
  %42 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.26)
  switch i2 %trunc, label %if.then99.if.end122_crit_edge [
    i2 0, label %if.then99.if.end122.sink.split_crit_edge
    i2 -2, label %if.then115
  ]

if.then99.if.end122.sink.split_crit_edge:         ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122.sink.split

if.then99.if.end122_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then115:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122.sink.split

if.end122.sink.split:                             ; preds = %if.then115, %if.then99.if.end122.sink.split_crit_edge
  %.sink = phi i32 [ 27, %if.then115 ], [ 26, %if.then99.if.end122.sink.split_crit_edge ]
  %or110 = or i32 %41, %.sink
  %43 = ptrtoint ptr %flags100 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or110, ptr %flags100, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end122.sink.split, %if.then99.if.end122_crit_edge, %if.end56.if.end122_crit_edge
  %44 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool143.not = icmp eq i32 %44, 0
  br i1 %tobool143.not, label %if.end122.if.end146_crit_edge, label %if.then144

if.end122.if.end146_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.then144:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  %dev_flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %45 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dev_flags, align 8
  %or145 = or i32 %46, 8
  store i32 %or145, ptr %dev_flags, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end122.if.end146_crit_edge
  %47 = and i32 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool167.not = icmp eq i32 %47, 0
  br i1 %tobool167.not, label %if.end146.if.end171_crit_edge, label %if.then168

if.end146.if.end171_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.then168:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  %dev_flags169 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %48 = ptrtoint ptr %dev_flags169 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dev_flags169, align 8
  %or170 = or i32 %49, 64
  store i32 %or170, ptr %dev_flags169, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.end146.if.end171_crit_edge
  %50 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb, align 4
  tail call void @skb_trim(ptr noundef %51, i32 noundef %12) #11
  tail call void @rt2800_process_rxwi(ptr noundef %entry1, ptr noundef %rxdesc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %do.end26, %do.body20.cleanup_crit_edge
  ret void
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_probe_hw(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800usb_tx_sta_fifo_timeout(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -2976
  tail call void @rt2x00usb_register_read_async(ptr noundef %add.ptr, i32 noundef 5912, ptr noundef nonnull @rt2800usb_tx_sta_fifo_read_completed) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2800usb_work_txdone(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2740
  %txstatus_fifo = getelementptr i8, ptr %work, i32 212
  %out = getelementptr i8, ptr %work, i32 216
  %flags.i = getelementptr i8, ptr %work, i32 -916
  %txstatus_timer.i = getelementptr i8, ptr %work, i32 236
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = ptrtoint ptr %txstatus_fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txstatus_fifo, align 4
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %call = tail call zeroext i1 @rt2800_txstatus_timeout(ptr noundef %add.ptr) #11
  br i1 %call, label %lor.rhs.while.body_crit_edge, label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  tail call void @rt2800_txdone(ptr noundef %add.ptr, i32 noundef -1) #11
  tail call void @rt2800_txdone_nostatus(ptr noundef %add.ptr) #11
  %call3 = tail call zeroext i1 @rt2800_txstatus_pending(ptr noundef %add.ptr) #11
  br i1 %call3, label %if.then, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then:                                          ; preds = %while.body
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.while.cond.backedge_crit_edge

if.then.while.cond.backedge_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hrtimer_start_range_ns(ptr noundef %txstatus_timer.i, i64 noundef 2000000, i64 noundef 0, i32 noundef 1) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.i, %if.then.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_register_read_async(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rt2800usb_tx_sta_fifo_read_completed(ptr noundef %rt2x00dev, i32 noundef %urb_status, i32 noundef %tx_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %urb_status)
  %tobool.not = icmp eq i32 %urb_status, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_tx_sta_fifo_read_completed._rs, ptr noundef nonnull @__func__.rt2800usb_tx_sta_fifo_read_completed) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body.stop_reading_crit_edge, label %do.end

do.body.stop_reading_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop_reading

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rt2800usb_tx_sta_fifo_read_completed, i32 noundef %urb_status) #14
  br label %stop_reading

if.end6:                                          ; preds = %entry
  %and = and i32 %tx_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end60, label %if.then19

if.then19:                                        ; preds = %if.end6
  %txstatus_fifo = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 55
  %4 = ptrtoint ptr %txstatus_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txstatus_fifo, align 4
  %out = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 55, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %sub = sub i32 %5, %7
  %mask = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 55, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp25.not = icmp ugt i32 %sub, %9
  br i1 %cmp25.not, label %do.body45.critedge, label %if.then29

if.then29:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 55, i32 0, i32 0, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %and32 = and i32 %9, %5
  %arrayidx = getelementptr i32, ptr %11, i32 %and32
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %tx_status, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %13 = ptrtoint ptr %txstatus_fifo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %txstatus_fifo, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %txstatus_fifo, align 4
  br label %if.end58

do.body45.critedge:                               ; preds = %if.then19
  %call46 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_tx_sta_fifo_read_completed._rs.9, ptr noundef nonnull @__func__.rt2800usb_tx_sta_fifo_read_completed) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body45.critedge.if.end58_crit_edge, label %do.end51

do.body45.critedge.if.end58_crit_edge:            ; preds = %do.body45.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.end51:                                         ; preds = %do.body45.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %hw52 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %15 = ptrtoint ptr %hw52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw52, align 4
  %wiphy53 = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wiphy53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy53, align 8
  %dev54 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev54, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.rt2800usb_tx_sta_fifo_read_completed) #14
  br label %if.end58

if.end58:                                         ; preds = %do.end51, %do.body45.critedge.if.end58_crit_edge, %if.then29
  %workqueue = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 43
  %19 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %workqueue, align 8
  %txdone_work = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 46
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %txdone_work) #11
  br label %cleanup

if.end60:                                         ; preds = %if.end6
  %call61 = tail call zeroext i1 @rt2800_txstatus_timeout(ptr noundef %rt2x00dev) #11
  br i1 %call61, label %if.then62, label %if.end60.if.end66_crit_edge

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %workqueue63 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 43
  %21 = ptrtoint ptr %workqueue63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workqueue63, align 8
  %txdone_work64 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 46
  %call.i100 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %txdone_work64) #11
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end60.if.end66_crit_edge
  %call67 = tail call zeroext i1 @rt2800_txstatus_pending(ptr noundef %rt2x00dev) #11
  br i1 %call67, label %if.then68, label %if.end66.stop_reading_crit_edge

if.end66.stop_reading_crit_edge:                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop_reading

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %txstatus_timer = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 56
  tail call void @hrtimer_start_range_ns(ptr noundef %txstatus_timer, i64 noundef 1000000, i64 noundef 0, i32 noundef 1) #11
  br label %cleanup

stop_reading:                                     ; preds = %if.end66.stop_reading_crit_edge, %do.end, %do.body.stop_reading_crit_edge
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #11
  %call70 = tail call zeroext i1 @rt2800_txstatus_pending(ptr noundef %rt2x00dev) #11
  br i1 %call70, label %land.lhs.true, label %stop_reading.if.else76_crit_edge

stop_reading.if.else76_crit_edge:                 ; preds = %stop_reading
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else76

land.lhs.true:                                    ; preds = %stop_reading
  %call73 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else76_crit_edge

land.lhs.true.if.else76_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else76

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else76:                                        ; preds = %land.lhs.true.if.else76_crit_edge, %stop_reading.if.else76_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else76, %land.lhs.true.cleanup_crit_edge, %if.then68, %if.end58
  %retval.0 = phi i1 [ false, %if.else76 ], [ true, %if.end58 ], [ false, %if.then68 ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2800_txstatus_timeout(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2800_txstatus_pending(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_txdone(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_txdone_nostatus(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_mcu_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_wait_wpdma_ready(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00usb_register_write(ptr noundef %rt2x00dev, i32 noundef %offset, i32 noundef %value) #8 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %reg, align 4
  %conv = trunc i32 %offset to i16
  %call = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %conv, ptr noundef nonnull %reg, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_enable_radio(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_request_buff(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_disable_radio(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00usb_register_read(ptr noundef %rt2x00dev, i32 noundef %offset) #8 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %conv = trunc i32 %offset to i16
  %call = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %conv, ptr noundef nonnull %reg, i16 noundef zeroext 4) #11
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_process_rxwi(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2x00usb_register_read_lock(ptr noundef %rt2x00dev, i32 noundef %offset) #8 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %conv = trunc i32 %offset to i16
  %call = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %conv, ptr noundef nonnull %reg, i16 noundef zeroext 4, i32 noundef 100) #11
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00usb_register_write_lock(ptr noundef %rt2x00dev, i32 noundef %offset, i32 noundef %value) #8 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %reg, align 4
  %conv = trunc i32 %offset to i16
  %call = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %conv, ptr noundef nonnull %reg, i16 noundef zeroext 4, i32 noundef 100) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00usb_register_multiread(ptr noundef %rt2x00dev, i32 noundef %offset, ptr noundef %value, i32 noundef %length) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %offset to i16
  %conv1 = trunc i32 %length to i16
  %call = tail call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %conv, ptr noundef %value, i16 noundef zeroext %conv1) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00usb_register_multiwrite(ptr noundef %rt2x00dev, i32 noundef %offset, ptr noundef %value, i32 noundef %length) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %offset to i16
  %conv1 = trunc i32 %length to i16
  %call = tail call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %conv, ptr noundef %value, i16 noundef zeroext %conv1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_regbusy_read(ptr noundef, i32 noundef, [2 x i32], ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800usb_read_eeprom(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #15
  %cmp.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4, i32 noundef 1000) #11
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.cleanup_crit_edge, label %rt2800usb_autorun_detect.exit.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rt2800usb_autorun_detect.exit.i:                  ; preds = %if.end.i.i
  %3 = and i32 %2, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %3)
  %cmp5.i.not.i = icmp eq i32 %3, 33554432
  br i1 %cmp5.i.not.i, label %rt2800usb_autorun_detect.exit.i.if.then2_crit_edge, label %rt2800usb_efuse_detect.exit

rt2800usb_autorun_detect.exit.i.if.then2_crit_edge: ; preds = %rt2800usb_autorun_detect.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

rt2800usb_efuse_detect.exit:                      ; preds = %rt2800usb_autorun_detect.exit.i
  %call4.i = tail call i32 @rt2800_efuse_detect(ptr noundef %rt2x00dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %rt2800usb_efuse_detect.exit.cleanup_crit_edge, label %if.end

rt2800usb_efuse_detect.exit.cleanup_crit_edge:    ; preds = %rt2800usb_efuse_detect.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %rt2800usb_efuse_detect.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %rt2800usb_autorun_detect.exit.i.if.then2_crit_edge
  %call3 = tail call i32 @rt2800_read_eeprom_efuse(ptr noundef %rt2x00dev) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 31
  %4 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eeprom, align 8
  %call.i = tail call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %5, i16 noundef zeroext 512, i32 noundef 2000) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %rt2800usb_efuse_detect.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %rt2800usb_efuse_detect.exit.cleanup_crit_edge ], [ %call3, %if.then2 ], [ %call.i, %if.else ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i.i, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt2800usb_hwcrypt_disabled(ptr nocapture noundef readnone %rt2x00dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @modparam_nohwcrypt, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800usb_write_firmware(ptr noundef %rt2x00dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  %reg.i54 = alloca i32, align 4
  %reg.i51 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 17
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %chip.i, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %1, label %lor.lhs.false3 [
    i16 10336, label %entry.if.end_crit_edge
    i16 10354, label %entry.if.end_crit_edge58
  ]

entry.if.end_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false3:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 12400, i16 %1)
  %cmp.i48 = icmp eq i16 %1, 12400
  %spec.select = select i1 %cmp.i48, i32 0, i32 4096
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false3, %entry.if.end_crit_edge, %entry.if.end_crit_edge58
  %offset.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %lor.lhs.false3 ], [ 0, %entry.if.end_crit_edge58 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 4) #15
  %cmp.i49 = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i49, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 1000) #11
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %rt2800usb_autorun_detect.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rt2800usb_autorun_detect.exit:                    ; preds = %if.end.i
  %6 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %6)
  %cmp5.i.not = icmp eq i32 %6, 33554432
  br i1 %cmp5.i.not, label %do.end, label %if.else9

do.end:                                           ; preds = %rt2800usb_autorun_detect.exit
  call void @__sanitizer_cov_trace_pc() #13
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #14
  %cap_flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %11 = ptrtoint ptr %cap_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cap_flags, align 4
  %and.i = and i32 %12, -2
  store i32 %and.i, ptr %cap_flags, align 4
  br label %if.end10

if.else9:                                         ; preds = %rt2800usb_autorun_detect.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %data, i32 %offset.0
  %call.i = tail call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12288, ptr noundef %add.ptr, i16 noundef zeroext 4096) #11
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #11
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg.i, align 4
  %call.i50 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 28692, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i51) #11
  %14 = ptrtoint ptr %reg.i51 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %reg.i51, align 4
  %call.i52 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 28700, ptr noundef nonnull %reg.i51, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i51) #11
  %call.i53 = call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp12 = icmp slt i32 %call.i53, 0
  br i1 %cmp12, label %do.body14, label %if.end27

do.body14:                                        ; preds = %if.end10
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_write_firmware._rs, ptr noundef nonnull @.str.18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.end20

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %hw21 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %15 = ptrtoint ptr %hw21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw21, align 4
  %wiphy22 = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wiphy22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy22, align 8
  %dev23 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i54) #11
  %19 = ptrtoint ptr %reg.i54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %reg.i54, align 4
  %call.i55 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 28688, ptr noundef nonnull %reg.i54, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i54) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end20, %do.body14.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ %call.i53, %do.end20 ], [ %call.i53, %do.body14.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800usb_init_registers(ptr noundef %rt2x00dev) #2 align 64 {
entry:
  %reg.i58 = alloca i32, align 4
  %reg.i55 = alloca i32, align 4
  %reg.i53 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rt2800_wait_csr_ready(ptr noundef %rt2x00dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #11
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg.i, align 4
  %call.i = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1024, ptr noundef nonnull %reg.i, i16 noundef zeroext 4) #11
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  %3 = and i32 %2, -2097153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i53) #11
  %4 = ptrtoint ptr %reg.i53 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %reg.i53, align 4
  %call.i54 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1024, ptr noundef nonnull %reg.i53, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i53) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i55) #11
  %5 = ptrtoint ptr %reg.i55 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 50331648, ptr %reg.i55, align 4
  %call.i56 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4100, ptr noundef nonnull %reg.i55, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i55) #11
  %call.i57 = call i32 @rt2x00usb_vendor_request(ptr noundef %rt2x00dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i58) #11
  %6 = ptrtoint ptr %reg.i58 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reg.i58, align 4
  %call.i59 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %rt2x00dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4100, ptr noundef nonnull %reg.i58, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i58) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rt2800usb_get_txwi(ptr nocapture noundef readonly %entry1) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qid = getelementptr inbounds %struct.data_queue, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp eq i32 %3, 16
  %skb = getelementptr inbounds %struct.queue_entry, ptr %entry1, i32 0, i32 3
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %retval.0.idx = select i1 %cmp, i32 0, i32 4
  %retval.0 = getelementptr i8, ptr %7, i32 %retval.0.idx
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt2800usb_get_dma_done(ptr noundef %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rt2x00queue_get_entry(ptr noundef %queue, i32 noundef 1) #11
  %entry_idx = getelementptr inbounds %struct.queue_entry, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %entry_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry_idx, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_read_eeprom_efuse(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_efuse_detect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_wait_csr_ready(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt2x00queue_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

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
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !30, !32, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !69, !70, !71, !72, !73, !75, !76, !77, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__param_nohwcrypt, !1, !"__param_nohwcrypt", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_nohwcrypttype368, !1, !"__UNIQUE_ID_nohwcrypttype368", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nohwcrypt369, !4, !"__UNIQUE_ID_nohwcrypt369", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 36, i32 1}
!5 = !{ptr @__UNIQUE_ID_author399, !6, !"__UNIQUE_ID_author399", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 1247, i32 1}
!7 = !{ptr @__UNIQUE_ID_version400, !8, !"__UNIQUE_ID_version400", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 1248, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description401, !14, !"__UNIQUE_ID_description401", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 1249, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware402, !16, !"__UNIQUE_ID_firmware402", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 1251, i32 1}
!17 = !{ptr @__UNIQUE_ID_file403, !18, !"__UNIQUE_ID_file403", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 1252, i32 1}
!19 = !{ptr @__UNIQUE_ID_license404, !18, !"__UNIQUE_ID_license404", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_rt2800usb__405_1271_rt2800usb_driver_init6, !21, !"__initcall__kmod_rt2800usb__405_1271_rt2800usb_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 1271, i32 1}
!22 = !{ptr @__exitcall_rt2800usb_driver_exit, !21, !"__exitcall_rt2800usb_driver_exit", i1 false, i1 false}
!23 = !{ptr @modparam_nohwcrypt, !24, !"modparam_nohwcrypt", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 34, i32 13}
!25 = !{ptr @__param_str_nohwcrypt, !1, !"__param_str_nohwcrypt", i1 false, i1 false}
!26 = !{ptr @rt2800usb_driver, !27, !"rt2800usb_driver", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 1260, i32 26}
!28 = !{ptr @rt2800usb_ops, !29, !"rt2800usb_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 755, i32 32}
!30 = !{ptr @rt2800usb_rt2x00_ops, !31, !"rt2800usb_rt2x00_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 676, i32 35}
!32 = !{ptr @rt2800usb_probe_hw.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 626, i32 2}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 100, i32 3}
!37 = !{ptr @rt2800usb_tx_sta_fifo_read_completed._rs, !36, !"_rs", i1 false, i1 false}
!38 = !{ptr @__func__.rt2800usb_tx_sta_fifo_read_completed, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rt2800usb_tx_sta_fifo_read_completed._entry, !36, !"_entry", i1 false, i1 false}
!44 = !{ptr @rt2800usb_tx_sta_fifo_read_completed._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rt2800usb_tx_sta_fifo_read_completed._rs.9, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 109, i32 4}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rt2800usb_tx_sta_fifo_read_completed._entry.10, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rt2800usb_tx_sta_fifo_read_completed._entry_ptr.12, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 207, i32 9}
!52 = !{ptr @rt2800usb_set_device_state._rs, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 376, i32 3}
!54 = !{ptr @__func__.rt2800usb_set_device_state, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rt2800usb_set_device_state._entry, !53, !"_entry", i1 false, i1 false}
!58 = !{ptr @rt2800usb_set_device_state._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @rt2800usb_fill_rxdone._rs, !60, !"_rs", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 515, i32 3}
!61 = !{ptr @__func__.rt2800usb_fill_rxdone, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rt2800usb_fill_rxdone._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @rt2800usb_fill_rxdone._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @rt2800usb_rt2800_ops, !66, !"rt2800usb_rt2800_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 660, i32 32}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 238, i32 3}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rt2800usb_write_firmware._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @rt2800usb_write_firmware._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @rt2800usb_write_firmware._rs, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 257, i32 3}
!75 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rt2800usb_write_firmware._entry.20, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @rt2800usb_write_firmware._entry_ptr.22, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @rt2800usb_mac80211_ops, !79, !"rt2800usb_mac80211_ops", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 631, i32 35}
!80 = !{ptr @rt2800usb_device_table, !81, !"rt2800usb_device_table", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2800usb.c", i32 774, i32 35}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i64 2158675336, i64 2158675847, i64 2158675373, i64 2158675429, i64 2158675463, i64 2158675487, i64 2158675528, i64 2158675549, i64 2158675577, i64 2158675611}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{i64 2158119582}
!96 = !{i8 0, i8 2}
