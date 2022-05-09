; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/orinoco_usb.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/orinoco_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hermes_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.orinoco_private = type { ptr, ptr, ptr, ptr, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [3 x i32], %struct.spinlock, i32, %struct.work_struct, %struct.tasklet_struct, %struct.list_head, i32, i16, %struct.work_struct, %struct.work_struct, ptr, %struct.iw_statistics, %struct.hermes, i16, i32, i32, i32, i16, i16, i32, i32, i16, i16, [4 x %struct.key_params], i32, [33 x i8], [33 x i8], [6 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.iw_spy_data, %struct.iw_public_data, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, i8, ptr, ptr, %struct.notifier_block }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%union.anon.134 = type { ptr }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ezusb_priv = type { ptr, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, [64 x i16], ptr, ptr, i32, i32, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.request_context = type { %struct.list_head, %struct.refcount_struct, %struct.completion, i32, ptr, ptr, ptr, i32, %struct.timer_list, i32, i16, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.130 = type { i64, i64, i8 }
%struct.ezusb_packet = type { i16, i8, i8, i16, i16, i16, i16, i16, [0 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.133 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }

@__UNIQUE_ID_firmware378 = internal constant [38 x i8] c"orinoco_usb.firmware=orinoco_ezusb_fw\00", section ".modinfo", align 1
@__initcall__kmod_orinoco_usb__390_1783_orinoco_driver_init6 = internal global ptr @orinoco_driver_init, section ".initcall6.init", align 4
@orinoco_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ezusb_probe, ptr @ezusb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ezusb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_orinoco_driver_exit = internal global ptr @orinoco_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [40 x i8] c"orinoco_usb.author=Manuel Estrada Sainz\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [81 x i8] c"orinoco_usb.description=Driver for Orinoco wireless LAN cards using EZUSB bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file393 = internal constant [67 x i8] c"orinoco_usb.file=drivers/net/wireless/intersil/orinoco/orinoco_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license394 = internal constant [33 x i8] c"orinoco_usb.license=Dual MPL/GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"orinoco_usb\00", [20 x i8] zeroinitializer }, align 32
@ezusb_table = internal constant { [21 x %struct.usb_device_id], [104 x i8] } { [21 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1183, i16 31, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1183, i16 130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1183, i16 118, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 11, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1150, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3480, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3486, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3406, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3406, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1484, i16 12544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3708, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1256, i16 20482, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1256, i16 23313, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1256, i16 28689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1665, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3064, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5680, i16 -127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3406, i16 1146, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@ezusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013orinoco_usb: Couldn't allocate orinocodev\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ezusb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/intersil/orinoco/orinoco_usb.c\00", [44 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr = internal global ptr @ezusb_probe._entry, section ".printk_index", align 4
@ezusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&upriv->mtx\00", [20 x i8] zeroinitializer }, align 32
@ezusb_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&upriv->reply_count_lock\00", [39 x i8] zeroinitializer }, align 32
@ezusb_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&upriv->req_lock\00", [47 x i8] zeroinitializer }, align 32
@ezusb_ops = internal constant { %struct.hermes_ops, [60 x i8] } { %struct.hermes_ops { ptr @ezusb_init, ptr @ezusb_docmd_wait, ptr @ezusb_doicmd_wait, ptr @ezusb_allocate, ptr @ezusb_read_ltv, ptr @ezusb_read_ltv_preempt, ptr @ezusb_write_ltv, ptr @ezusb_bap_pread, ptr null, ptr @ezusb_read_pda, ptr @ezusb_program_init, ptr @ezusb_program_end, ptr @ezusb_program, ptr @ezusb_lock_irqsave, ptr @ezusb_unlock_irqrestore, ptr @ezusb_lock_irq, ptr @ezusb_unlock_irq }, [60 x i8] zeroinitializer }, align 32
@ezusb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Found a second bulk in ep, ignored\0A\00", [58 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.11 = internal global ptr @ezusb_probe._entry.9, section ".printk_index", align 4
@ezusb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014bulk in: wMaxPacketSize!= 64\0A\00", [32 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.14 = internal global ptr @ezusb_probe._entry.12, section ".printk_index", align 4
@ezusb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014bulk in: bEndpointAddress: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.17 = internal global ptr @ezusb_probe._entry.15, section ".printk_index", align 4
@ezusb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013orinoco_usb: Couldn't allocate IN buffer\0A\00", [52 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.20 = internal global ptr @ezusb_probe._entry.18, section ".printk_index", align 4
@ezusb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014Found a second bulk out ep, ignored\0A\00", [57 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.23 = internal global ptr @ezusb_probe._entry.21, section ".printk_index", align 4
@ezusb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014bulk out: wMaxPacketSize != 64\0A\00", [62 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.26 = internal global ptr @ezusb_probe._entry.24, section ".printk_index", align 4
@ezusb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014bulk out: bEndpointAddress: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.29 = internal global ptr @ezusb_probe._entry.27, section ".printk_index", align 4
@ezusb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013orinoco_usb: Couldn't allocate bulk_out_buffer\0A\00", [46 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.32 = internal global ptr @ezusb_probe._entry.30, section ".printk_index", align 4
@ezusb_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013orinoco_usb: Didn't find the required bulk endpoints\0A\00", [40 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.35 = internal global ptr @ezusb_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orinoco_ezusb_fw\00", [47 x i8] zeroinitializer }, align 32
@firmware.0 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@firmware.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ezusb_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013orinoco_usb: No firmware to download\0A\00", [56 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.39 = internal global ptr @ezusb_probe._entry.37, section ".printk_index", align 4
@ezusb_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013orinoco_usb: Cannot reset the device\0A\00", [56 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.42 = internal global ptr @ezusb_probe._entry.40, section ".printk_index", align 4
@ezusb_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 1725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013orinoco_usb: Couldn't initialize the device\0A\00", [49 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.45 = internal global ptr @ezusb_probe._entry.43, section ".printk_index", align 4
@ezusb_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 1726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013orinoco_usb: Firmware may not be downloaded or may be wrong.\0A\00", [32 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.48 = internal global ptr @ezusb_probe._entry.46, section ".printk_index", align 4
@ezusb_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 1732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013orinoco_usb: orinoco_init() failed\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.51 = internal global ptr @ezusb_probe._entry.49, section ".printk_index", align 4
@ezusb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @orinoco_open, ptr @orinoco_stop, ptr @ezusb_xmit, ptr null, ptr null, ptr null, ptr @orinoco_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orinoco_change_mtu, ptr null, ptr @orinoco_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ezusb_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.2, ptr @.str.3, i32 1738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013orinoco_usb: %s: orinoco_if_add() failed\0A\00", [52 x i8] zeroinitializer }, align 32
@ezusb_probe._entry_ptr.54 = internal global ptr @ezusb_probe._entry.52, section ".printk_index", align 4
@ezusb_hard_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013orinoco_usb: Failed to reset\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ezusb_hard_reset\00", [47 x i8] zeroinitializer }, align 32
@ezusb_hard_reset._entry_ptr = internal global ptr @ezusb_hard_reset._entry, section ".printk_index", align 4
@ezusb_hard_reset._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013orinoco_usb: Failed to unreset\0A\00", [62 x i8] zeroinitializer }, align 32
@ezusb_hard_reset._entry_ptr.59 = internal global ptr @ezusb_hard_reset._entry.57, section ".printk_index", align 4
@ezusb_hard_reset.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.60, i8 1, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sending control message\0A\00", [39 x i8] zeroinitializer }, align 32
@ezusb_hard_reset._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.3, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013orinoco_usb: EZUSB_REQUEST_TRIGGER failed retval %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ezusb_hard_reset._entry_ptr.63 = internal global ptr @ezusb_hard_reset._entry.61, section ".printk_index", align 4
@ezusb_8051_cpucs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013orinoco_usb: %s: !upriv->udev\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ezusb_8051_cpucs\00", [47 x i8] zeroinitializer }, align 32
@ezusb_8051_cpucs._entry_ptr = internal global ptr @ezusb_8051_cpucs._entry, section ".printk_index", align 4
@__ezusb_docmd_wait.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__ezusb_docmd_wait\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%04X, parm0 0x%04X\0A\00", [42 x i8] zeroinitializer }, align 32
@ezusb_alloc_ctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&ctx->timer)\00", [18 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ezusb_request_timerfn.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ezusb_request_timerfn\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"couldn't unlink\0A\00", [47 x i8] zeroinitializer }, align 32
@ezusb_ctx_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013orinoco_usb: Called, CTX not terminating, but device gone\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ezusb_ctx_complete\00", [45 x i8] zeroinitializer }, align 32
@ezusb_ctx_complete._entry_ptr = internal global ptr @ezusb_ctx_complete._entry, section ".printk_index", align 4
@ezusb_ctx_complete._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013orinoco_usb: Called, CTX not in terminating state.\0A\00", [42 x i8] zeroinitializer }, align 32
@ezusb_ctx_complete._entry_ptr.76 = internal global ptr @ezusb_ctx_complete._entry.74, section ".printk_index", align 4
@ezusb_req_queue_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013orinoco_usb: Fatal, failed to submit command urb. error=%d\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ezusb_req_queue_run\00", [44 x i8] zeroinitializer }, align 32
@ezusb_req_queue_run._entry_ptr = internal global ptr @ezusb_req_queue_run._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ezusb_access_ltv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013orinoco_usb: %s: in urb not pending\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ezusb_access_ltv\00", [47 x i8] zeroinitializer }, align 32
@ezusb_access_ltv._entry_ptr = internal global ptr @ezusb_access_ltv._entry, section ".printk_index", align 4
@ezusb_access_ltv._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013orinoco_usb: %s: Unexpected context state %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ezusb_access_ltv._entry_ptr.83 = internal global ptr @ezusb_access_ltv._entry.81, section ".printk_index", align 4
@ezusb_access_ltv._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.3, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013orinoco_usb: Access failed, resetting (state %d, reply_count %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@ezusb_access_ltv._entry_ptr.86 = internal global ptr @ezusb_access_ltv._entry.84, section ".printk_index", align 4
@ezusb_access_ltv._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.3, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013orinoco_usb: ctx timed out\0A\00", [34 x i8] zeroinitializer }, align 32
@ezusb_access_ltv._entry_ptr.89 = internal global ptr @ezusb_access_ltv._entry.87, section ".printk_index", align 4
@ezusb_access_ltv._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.3, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013orinoco_usb: ctx failed\0A\00", [37 x i8] zeroinitializer }, align 32
@ezusb_access_ltv._entry_ptr.92 = internal global ptr @ezusb_access_ltv._entry.90, section ".printk_index", align 4
@ezusb_access_ltv._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str.3, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013orinoco_usb: %s: length mismatch for RID 0x%04x: expected %d, got %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ezusb_access_ltv._entry_ptr.95 = internal global ptr @ezusb_access_ltv._entry.93, section ".printk_index", align 4
@ezusb_request_out_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014interrupt called with dead ctx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ezusb_request_out_callback\00", [37 x i8] zeroinitializer }, align 32
@ezusb_request_out_callback._entry_ptr = internal global ptr @ezusb_request_out_callback._entry, section ".printk_index", align 4
@ezusb_request_out_callback._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.3, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013orinoco_usb: Unexpected state(0x%x, %d) in OUT URB\0A\00", [42 x i8] zeroinitializer }, align 32
@ezusb_request_out_callback._entry_ptr.100 = internal global ptr @ezusb_request_out_callback._entry.98, section ".printk_index", align 4
@ezusb_request_out_callback._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.3, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ezusb_request_out_callback._entry_ptr.102 = internal global ptr @ezusb_request_out_callback._entry.101, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ezusb_doicmd_wait.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ezusb_bap_pread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013orinoco_usb: BAP read beyond buffer end in rx frame\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ezusb_bap_pread\00", [16 x i8] zeroinitializer }, align 32
@ezusb_bap_pread._entry_ptr = internal global ptr @ezusb_bap_pread._entry, section ".printk_index", align 4
@ezusb_bap_pread._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013orinoco_usb: BAP read beyond buffer end in info frame\0A\00", [39 x i8] zeroinitializer }, align 32
@ezusb_bap_pread._entry_ptr.107 = internal global ptr @ezusb_bap_pread._entry.105, section ".printk_index", align 4
@ezusb_bap_pread._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.3, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013orinoco_usb: Unexpected fid 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@ezusb_bap_pread._entry_ptr.110 = internal global ptr @ezusb_bap_pread._entry.108, section ".printk_index", align 4
@ezusb_program.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 1, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ezusb_program\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Programming subblock of length %d to address 0x%08x. Data @ %p\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ezusb_firmware_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013orinoco_usb: Out of memory for firmware buffer.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ezusb_firmware_download\00", [40 x i8] zeroinitializer }, align 32
@ezusb_firmware_download._entry_ptr = internal global ptr @ezusb_firmware_download._entry, section ".printk_index", align 4
@ezusb_firmware_download._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.3, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013orinoco_usb: Invalid firmware variant offset: 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@ezusb_firmware_download._entry_ptr.117 = internal global ptr @ezusb_firmware_download._entry.115, section ".printk_index", align 4
@ezusb_firmware_download.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.3, ptr @.str.118, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Patching card_variant byte at 0x%04X\0A\00", [58 x i8] zeroinitializer }, align 32
@ezusb_firmware_download._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.114, ptr @.str.3, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013orinoco_usb: Firmware download failed, error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ezusb_firmware_download._entry_ptr.121 = internal global ptr @ezusb_firmware_download._entry.119, section ".printk_index", align 4
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\10\00\00", [29 x i8] zeroinitializer }, align 32
@ezusb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013orinoco_usb: EZUSB_RID_INIT1 error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ezusb_init\00", [21 x i8] zeroinitializer }, align 32
@ezusb_init._entry_ptr = internal global ptr @ezusb_init._entry, section ".printk_index", align 4
@ezusb_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.3, i32 1418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013orinoco_usb: HERMES_CMD_INIT error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ezusb_init._entry_ptr.127 = internal global ptr @ezusb_init._entry.125, section ".printk_index", align 4
@ezusb_submit_in_urb.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.3, ptr @.str.129, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ezusb_submit_in_urb\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"urb busy, not resubmiting\0A\00", [37 x i8] zeroinitializer }, align 32
@ezusb_submit_in_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.3, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013orinoco_usb: %s submit failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ezusb_submit_in_urb._entry_ptr = internal global ptr @ezusb_submit_in_urb._entry, section ".printk_index", align 4
@ezusb_bulk_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 1439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: urb timed out, not resubmitting\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ezusb_bulk_in_callback\00", [41 x i8] zeroinitializer }, align 32
@ezusb_bulk_in_callback._entry_ptr = internal global ptr @ezusb_bulk_in_callback._entry, section ".printk_index", align 4
@ezusb_bulk_in_callback._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.3, i32 1444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: connection abort, resubmitting urb\0A\00", [54 x i8] zeroinitializer }, align 32
@ezusb_bulk_in_callback._entry_ptr.135 = internal global ptr @ezusb_bulk_in_callback._entry.133, section ".printk_index", align 4
@ezusb_bulk_in_callback.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.3, ptr @.str.136, i8 1, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"status %d, not resubmiting\0A\00", [36 x i8] zeroinitializer }, align 32
@ezusb_bulk_in_callback.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.3, ptr @.str.137, i8 1, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"status: %d length: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ezusb_bulk_in_callback._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.132, ptr @.str.3, i32 1458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013orinoco_usb: %s: short read, ignoring\0A\00", [55 x i8] zeroinitializer }, align 32
@ezusb_bulk_in_callback._entry_ptr.140 = internal global ptr @ezusb_bulk_in_callback._entry.138, section ".printk_index", align 4
@ezusb_bulk_in_callback._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.132, ptr @.str.3, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013orinoco_usb: CRC error, ignoring packet\0A\00", [53 x i8] zeroinitializer }, align 32
@ezusb_bulk_in_callback._entry_ptr.143 = internal global ptr @ezusb_bulk_in_callback._entry.141, section ".printk_index", align 4
@ezusb_request_in_callback.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.3, ptr @.str.145, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ezusb_request_in_callback\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Skipped (0x%x/0x%x) (%d/%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@ezusb_request_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.3, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013orinoco_usb: %s: got unexpected RID: 0x%04X\0A\00", [49 x i8] zeroinitializer }, align 32
@ezusb_request_in_callback._entry_ptr = internal global ptr @ezusb_request_in_callback._entry, section ".printk_index", align 4
@ezusb_request_in_callback._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.144, ptr @.str.3, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Matched IN URB, unexpected context state(0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@ezusb_request_in_callback._entry_ptr.149 = internal global ptr @ezusb_request_in_callback._entry.147, section ".printk_index", align 4
@ezusb_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.3, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Tx on stopped device!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ezusb_xmit\00", [21 x i8] zeroinitializer }, align 32
@ezusb_xmit._entry_ptr = internal global ptr @ezusb_xmit._entry, section ".printk_index", align 4
@ezusb_xmit._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.3, i32 1245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Tx while transmitter busy!\0A\00", [62 x i8] zeroinitializer }, align 32
@ezusb_xmit._entry_ptr.154 = internal global ptr @ezusb_xmit._entry.152, section ".printk_index", align 4
@ezusb_xmit._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.151, ptr @.str.3, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: ezusb_xmit() called while hw_unavailable\0A\00", [48 x i8] zeroinitializer }, align 32
@ezusb_xmit._entry_ptr.157 = internal global ptr @ezusb_xmit._entry.155, section ".printk_index", align 4
@ezusb_xmit._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.151, ptr @.str.3, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Error %d transmitting packet\0A\00", [60 x i8] zeroinitializer }, align 32
@ezusb_xmit._entry_ptr.160 = internal global ptr @ezusb_xmit._entry.158, section ".printk_index", align 4
@.str.161 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Shouldn't be invoked for in_rid\0A\00", [63 x i8] zeroinitializer }, align 32
@ezusb_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.3, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013orinoco_usb: Some URB in progress\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ezusb_delete\00", [19 x i8] zeroinitializer }, align 32
@ezusb_delete._entry_ptr = internal global ptr @ezusb_delete._entry, section ".printk_index", align 4
@ezusb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.3, i32 1770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016orinoco_usb: Disconnected\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ezusb_disconnect\00", [47 x i8] zeroinitializer }, align 32
@ezusb_disconnect._entry_ptr = internal global ptr @ezusb_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.169 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967186, i64 4294967192, i64 4294967193, i64 4294967212, i64 4294967294]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.171 = private unnamed_addr constant [15 x i8] c"orinoco_driver\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1775, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1783, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"ezusb_table\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 209, i32 35 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1619, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1628, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1629, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1631, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [10 x i8] c"ezusb_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1573, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1652, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1660, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1662, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1670, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1678, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1683, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1685, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1692, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1698, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1702, i32 34 }
@___asan_gen_.270 = private unnamed_addr constant [11 x i8] c"firmware.0\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [11 x i8] c"firmware.1\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1711, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1716, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1725, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1726, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1732, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"ezusb_netdev_ops\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1592, i32 36 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1738, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1351, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1357, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1361, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1369, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 785, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1062, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 364, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 87, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 327, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 410, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 416, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 465, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 892, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 924, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 931, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 936, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 939, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 954, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 520, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 548, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 572, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1087, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1098, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1104, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1207, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 817, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 828, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 846, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 869, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1408, i32 33 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1411, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1418, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 763, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 773, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1439, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1443, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1450, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1455, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1458, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1463, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 606, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 614, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 657, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1238, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1244, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1250, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1315, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 715, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1534, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.627 = private constant [55 x i8] c"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1770, i32 2 }
@llvm.compiler.used = appending global [215 x ptr] [ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file393, ptr @__UNIQUE_ID_firmware378, ptr @__UNIQUE_ID_license394, ptr @__exitcall_orinoco_driver_exit, ptr @__initcall__kmod_orinoco_usb__390_1783_orinoco_driver_init6, ptr @ezusb_8051_cpucs._entry, ptr @ezusb_8051_cpucs._entry_ptr, ptr @ezusb_access_ltv._entry, ptr @ezusb_access_ltv._entry.81, ptr @ezusb_access_ltv._entry.84, ptr @ezusb_access_ltv._entry.87, ptr @ezusb_access_ltv._entry.90, ptr @ezusb_access_ltv._entry.93, ptr @ezusb_access_ltv._entry_ptr, ptr @ezusb_access_ltv._entry_ptr.83, ptr @ezusb_access_ltv._entry_ptr.86, ptr @ezusb_access_ltv._entry_ptr.89, ptr @ezusb_access_ltv._entry_ptr.92, ptr @ezusb_access_ltv._entry_ptr.95, ptr @ezusb_bap_pread._entry, ptr @ezusb_bap_pread._entry.105, ptr @ezusb_bap_pread._entry.108, ptr @ezusb_bap_pread._entry_ptr, ptr @ezusb_bap_pread._entry_ptr.107, ptr @ezusb_bap_pread._entry_ptr.110, ptr @ezusb_bulk_in_callback._entry, ptr @ezusb_bulk_in_callback._entry.133, ptr @ezusb_bulk_in_callback._entry.138, ptr @ezusb_bulk_in_callback._entry.141, ptr @ezusb_bulk_in_callback._entry_ptr, ptr @ezusb_bulk_in_callback._entry_ptr.135, ptr @ezusb_bulk_in_callback._entry_ptr.140, ptr @ezusb_bulk_in_callback._entry_ptr.143, ptr @ezusb_ctx_complete._entry, ptr @ezusb_ctx_complete._entry.74, ptr @ezusb_ctx_complete._entry_ptr, ptr @ezusb_ctx_complete._entry_ptr.76, ptr @ezusb_delete._entry, ptr @ezusb_delete._entry_ptr, ptr @ezusb_disconnect._entry, ptr @ezusb_disconnect._entry_ptr, ptr @ezusb_firmware_download._entry, ptr @ezusb_firmware_download._entry.115, ptr @ezusb_firmware_download._entry.119, ptr @ezusb_firmware_download._entry_ptr, ptr @ezusb_firmware_download._entry_ptr.117, ptr @ezusb_firmware_download._entry_ptr.121, ptr @ezusb_hard_reset._entry, ptr @ezusb_hard_reset._entry.57, ptr @ezusb_hard_reset._entry.61, ptr @ezusb_hard_reset._entry_ptr, ptr @ezusb_hard_reset._entry_ptr.59, ptr @ezusb_hard_reset._entry_ptr.63, ptr @ezusb_init._entry, ptr @ezusb_init._entry.125, ptr @ezusb_init._entry_ptr, ptr @ezusb_init._entry_ptr.127, ptr @ezusb_probe._entry, ptr @ezusb_probe._entry.12, ptr @ezusb_probe._entry.15, ptr @ezusb_probe._entry.18, ptr @ezusb_probe._entry.21, ptr @ezusb_probe._entry.24, ptr @ezusb_probe._entry.27, ptr @ezusb_probe._entry.30, ptr @ezusb_probe._entry.33, ptr @ezusb_probe._entry.37, ptr @ezusb_probe._entry.40, ptr @ezusb_probe._entry.43, ptr @ezusb_probe._entry.46, ptr @ezusb_probe._entry.49, ptr @ezusb_probe._entry.52, ptr @ezusb_probe._entry.9, ptr @ezusb_probe._entry_ptr, ptr @ezusb_probe._entry_ptr.11, ptr @ezusb_probe._entry_ptr.14, ptr @ezusb_probe._entry_ptr.17, ptr @ezusb_probe._entry_ptr.20, ptr @ezusb_probe._entry_ptr.23, ptr @ezusb_probe._entry_ptr.26, ptr @ezusb_probe._entry_ptr.29, ptr @ezusb_probe._entry_ptr.32, ptr @ezusb_probe._entry_ptr.35, ptr @ezusb_probe._entry_ptr.39, ptr @ezusb_probe._entry_ptr.42, ptr @ezusb_probe._entry_ptr.45, ptr @ezusb_probe._entry_ptr.48, ptr @ezusb_probe._entry_ptr.51, ptr @ezusb_probe._entry_ptr.54, ptr @ezusb_req_queue_run._entry, ptr @ezusb_req_queue_run._entry_ptr, ptr @ezusb_request_in_callback._entry, ptr @ezusb_request_in_callback._entry.147, ptr @ezusb_request_in_callback._entry_ptr, ptr @ezusb_request_in_callback._entry_ptr.149, ptr @ezusb_request_out_callback._entry, ptr @ezusb_request_out_callback._entry.101, ptr @ezusb_request_out_callback._entry.98, ptr @ezusb_request_out_callback._entry_ptr, ptr @ezusb_request_out_callback._entry_ptr.100, ptr @ezusb_request_out_callback._entry_ptr.102, ptr @ezusb_submit_in_urb._entry, ptr @ezusb_submit_in_urb._entry_ptr, ptr @ezusb_xmit._entry, ptr @ezusb_xmit._entry.152, ptr @ezusb_xmit._entry.155, ptr @ezusb_xmit._entry.158, ptr @ezusb_xmit._entry_ptr, ptr @ezusb_xmit._entry_ptr.154, ptr @ezusb_xmit._entry_ptr.157, ptr @ezusb_xmit._entry_ptr.160, ptr @orinoco_driver_exit, ptr @orinoco_driver, ptr @.str, ptr @ezusb_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ezusb_probe.__key, ptr @.str.4, ptr @ezusb_probe.__key.5, ptr @.str.6, ptr @ezusb_probe.__key.7, ptr @.str.8, ptr @ezusb_ops, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @firmware.0, ptr @firmware.1, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @ezusb_netdev_ops, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @ezusb_alloc_ctx.__key, ptr @.str.68, ptr @init_completion.__key, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_table to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware.0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_hard_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_hard_reset._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_hard_reset._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_8051_cpucs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_alloc_ctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_ctx_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_ctx_complete._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_req_queue_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_access_ltv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_access_ltv._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_access_ltv._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_access_ltv._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_access_ltv._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_access_ltv._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_request_out_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_request_out_callback._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_request_out_callback._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_bap_pread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_bap_pread._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_bap_pread._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_firmware_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_firmware_download._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_firmware_download._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_submit_in_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_bulk_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_bulk_in_callback._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_bulk_in_callback._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_bulk_in_callback._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_request_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_request_in_callback._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_xmit._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_xmit._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_xmit._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezusb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @orinoco_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @orinoco_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @orinoco_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #10
  %2 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw_entry, align 4
  %call2 = tail call ptr @alloc_orinocodev(i32 noundef 352, ptr noundef %1, ptr noundef nonnull @ezusb_hard_reset, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %exit.thread, label %if.end

exit.thread:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %if.end247

if.end:                                           ; preds = %entry
  %hw7 = getelementptr inbounds %struct.orinoco_private, ptr %call2, i32 0, i32 18
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call2, align 4
  %mtx = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mtx, ptr noundef nonnull @.str.4, ptr noundef nonnull @ezusb_probe.__key) #10
  %reply_count_lock = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %reply_count_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ezusb_probe.__key.5, i16 noundef signext 3) #10
  %req_lock = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %req_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ezusb_probe.__key.7, i16 noundef signext 3) #10
  %req_pending = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %req_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %req_pending, ptr %req_pending, align 4
  %prev.i = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %req_pending, ptr %prev.i, align 4
  %req_active = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %req_active to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %req_active, ptr %req_active, align 4
  %prev.i304 = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i304 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req_active, ptr %prev.i304, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %4, align 4
  %hermes_reg_fake = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 7
  %10 = ptrtoint ptr %hw7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hermes_reg_fake, ptr %hw7, align 4
  %reg_spacing = getelementptr inbounds %struct.orinoco_private, ptr %call2, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg_spacing, align 4
  %priv20 = getelementptr inbounds %struct.orinoco_private, ptr %call2, i32 0, i32 18, i32 5
  %12 = ptrtoint ptr %priv20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %priv20, align 4
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %call2, i32 0, i32 18, i32 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ezusb_ops, ptr %ops, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %14 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp316.not = icmp eq i8 %17, 0
  br i1 %cmp316.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %read_urb = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 9
  %read_pipe = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 10
  %bap_buf = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 8
  %write_pipe = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0317 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_altsetting, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %21, i32 %i.0317
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %22 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bmAttributes.i.i, align 1
  %24 = and i8 %23, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.i.not.i = icmp eq i8 %24, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %for.body.if.end83_crit_edge

for.body.if.end83_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

usb_endpoint_is_bulk_in.exit:                     ; preds = %for.body
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %25 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool25.not = icmp sgt i8 %26, -1
  br i1 %tobool25.not, label %usb_endpoint_is_bulk_in.exit.if.end83_crit_edge, label %if.then26

usb_endpoint_is_bulk_in.exit.if.end83_crit_edge:  ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then26:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  %27 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_urb, align 4
  %cmp27.not = icmp eq ptr %28, null
  br i1 %cmp27.not, label %if.end35, label %if.then26.for.inc.sink.split_crit_edge

if.then26.for.inc.sink.split_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.end35:                                         ; preds = %if.then26
  %call36 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %29 = ptrtoint ptr %read_urb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call36, ptr %read_urb, align 4
  %tobool39.not = icmp eq ptr %call36, null
  br i1 %tobool39.not, label %if.end35.error_crit_edge, label %if.end41

if.end35.error_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end41:                                         ; preds = %if.end35
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %30 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %31)
  %cmp43.not = icmp eq i16 %31, 16384
  br i1 %cmp43.not, label %if.end41.if.end51_crit_edge, label %do.end48

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end41.if.end51_crit_edge
  %32 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %33)
  %cmp53.not = icmp eq i8 %33, -126
  br i1 %cmp53.not, label %if.end51.if.end63_crit_edge, label %do.end58

if.end51.if.end63_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %conv52 = zext i8 %33 to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv52) #13
  br label %if.end63

if.end63:                                         ; preds = %do.end58, %if.end51.if.end63_crit_edge
  %34 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv65 = zext i8 %35 to i32
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %37, 8
  %shl1.i = shl nuw nsw i32 %conv65, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or67 = or i32 %or.i, -1073741696
  %38 = ptrtoint ptr %read_pipe to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or67, ptr %read_pipe, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 2048) #14
  %40 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i, ptr %transfer_buffer, align 4
  %43 = load ptr, ptr %read_urb, align 4
  %transfer_buffer71 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %transfer_buffer71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transfer_buffer71, align 4
  %tobool72.not = icmp eq ptr %45, null
  br i1 %tobool72.not, label %do.end77, label %if.end63.if.end83_crit_edge

if.end63.if.end83_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

do.end77:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %error

if.end83:                                         ; preds = %if.end63.if.end83_crit_edge, %usb_endpoint_is_bulk_in.exit.if.end83_crit_edge, %for.body.if.end83_crit_edge
  %46 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bmAttributes.i.i, align 1
  %48 = and i8 %47, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp.i.not.i306 = icmp eq i8 %48, 2
  br i1 %cmp.i.not.i306, label %usb_endpoint_is_bulk_out.exit, label %if.end83.for.inc_crit_edge

if.end83.for.inc_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

usb_endpoint_is_bulk_out.exit:                    ; preds = %if.end83
  %bEndpointAddress.i.i307 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %49 = ptrtoint ptr %bEndpointAddress.i.i307 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bEndpointAddress.i.i307, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool85.not = icmp slt i8 %50, 0
  br i1 %tobool85.not, label %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, label %if.then86

usb_endpoint_is_bulk_out.exit.for.inc_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then86:                                        ; preds = %usb_endpoint_is_bulk_out.exit
  %51 = ptrtoint ptr %bap_buf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bap_buf, align 4
  %cmp87.not = icmp eq ptr %52, null
  br i1 %cmp87.not, label %if.end95, label %if.then86.for.inc.sink.split_crit_edge

if.then86.for.inc.sink.split_crit_edge:           ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.end95:                                         ; preds = %if.then86
  %wMaxPacketSize96 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %53 = ptrtoint ptr %wMaxPacketSize96 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %wMaxPacketSize96, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %54)
  %cmp98.not = icmp eq i16 %54, 16384
  br i1 %cmp98.not, label %if.end95.if.end106_crit_edge, label %do.end103

if.end95.if.end106_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

do.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %if.end106

if.end106:                                        ; preds = %do.end103, %if.end95.if.end106_crit_edge
  %55 = ptrtoint ptr %bEndpointAddress.i.i307 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bEndpointAddress.i.i307, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp109.not = icmp eq i8 %56, 2
  br i1 %cmp109.not, label %if.end106.if.end119_crit_edge, label %do.end114

if.end106.if.end119_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

do.end114:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %conv108 = zext i8 %56 to i32
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv108) #13
  br label %if.end119

if.end119:                                        ; preds = %do.end114, %if.end106.if.end119_crit_edge
  %57 = ptrtoint ptr %bEndpointAddress.i.i307 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bEndpointAddress.i.i307, align 1
  %conv121 = zext i8 %58 to i32
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i, align 8
  %shl.i309 = shl i32 %60, 8
  %shl1.i310 = shl nuw nsw i32 %conv121, 15
  %or.i311 = or i32 %shl1.i310, %shl.i309
  %or123 = or i32 %or.i311, -1073741824
  %61 = ptrtoint ptr %write_pipe to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or123, ptr %write_pipe, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i303 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3264, i32 noundef 2048) #14
  %63 = ptrtoint ptr %bap_buf to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i303, ptr %bap_buf, align 4
  %tobool127.not = icmp eq ptr %call7.i303, null
  br i1 %tobool127.not, label %do.end132, label %if.end119.for.inc_crit_edge

if.end119.for.inc_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end132:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %error

for.inc.sink.split:                               ; preds = %if.then86.for.inc.sink.split_crit_edge, %if.then26.for.inc.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.10, %if.then26.for.inc.sink.split_crit_edge ], [ @.str.22, %if.then86.for.inc.sink.split_crit_edge ]
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink) #13
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end119.for.inc_crit_edge, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, %if.end83.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0317, 1
  %64 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bNumEndpoints, align 1
  %conv = zext i8 %65 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %bap_buf139 = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 8
  %66 = ptrtoint ptr %bap_buf139 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bap_buf139, align 4
  %tobool140.not = icmp eq ptr %67, null
  br i1 %tobool140.not, label %for.end.do.end147_crit_edge, label %lor.lhs.false

for.end.do.end147_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147

lor.lhs.false:                                    ; preds = %for.end
  %read_urb141 = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 9
  %68 = ptrtoint ptr %read_urb141 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_urb141, align 4
  %tobool142.not = icmp eq ptr %69, null
  br i1 %tobool142.not, label %lor.lhs.false.do.end147_crit_edge, label %if.end152

lor.lhs.false.do.end147_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147

do.end147:                                        ; preds = %lor.lhs.false.do.end147_crit_edge, %for.end.do.end147_crit_edge
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %error

if.end152:                                        ; preds = %lor.lhs.false
  %dev153 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %call154 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull @.str.36, ptr noundef %dev153) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp eq i32 %call154, 0
  br i1 %cmp155, label %if.then157, label %if.end159thread-pre-split

if.then157:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw_entry, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %conv158 = trunc i32 %73 to i16
  store i16 %conv158, ptr @firmware.0, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data, align 4
  store ptr %75, ptr @firmware.1, align 4
  br label %if.end159

if.end159thread-pre-split:                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %.pr = load i16, ptr @firmware.0, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.end159thread-pre-split, %if.then157
  %76 = phi i16 [ %.pr, %if.end159thread-pre-split ], [ %conv158, %if.then157 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool161.not = icmp eq i16 %76, 0
  br i1 %tobool161.not, label %if.end159.do.end172_crit_edge, label %land.lhs.true

if.end159.do.end172_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end172

land.lhs.true:                                    ; preds = %if.end159
  %77 = load ptr, ptr @firmware.1, align 4
  %tobool162.not = icmp eq ptr %77, null
  br i1 %tobool162.not, label %land.lhs.true.do.end172_crit_edge, label %if.then163

land.lhs.true.do.end172_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end172

if.then163:                                       ; preds = %land.lhs.true
  %call164 = call fastcc i32 @ezusb_firmware_download(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then163.error_crit_edge, label %if.end177

if.then163.error_crit_edge:                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.end172:                                        ; preds = %land.lhs.true.do.end172_crit_edge, %if.end159.do.end172_crit_edge
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %error

if.end177:                                        ; preds = %if.then163
  %call178 = call i32 @ezusb_hard_reset(ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %do.end185, label %if.end190

do.end185:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  %call187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #13
  br label %error

if.end190:                                        ; preds = %if.end177
  %call191 = call i32 @ezusb_init(ptr noundef %hw7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192 = icmp slt i32 %call191, 0
  br i1 %cmp192, label %do.end198, label %if.end211

do.end198:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %error

if.end211:                                        ; preds = %if.end190
  %call212 = call i32 @orinoco_init(ptr noundef nonnull %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %cmp213.not = icmp eq i32 %call212, 0
  br i1 %cmp213.not, label %if.end224, label %do.end219

do.end219:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #13
  br label %error

if.end224:                                        ; preds = %if.end211
  %call225 = call i32 @orinoco_if_add(ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ezusb_netdev_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %cmp226.not = icmp eq i32 %call225, 0
  br i1 %cmp226.not, label %if.end239, label %priv_to_wiphy.exit

priv_to_wiphy.exit:                               ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  %dev229 = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 1
  %78 = ptrtoint ptr %dev229 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %dev229, align 4
  %call235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2) #13
  %add.ptr.i312 = getelementptr i8, ptr %call2, i32 -1408
  call void @wiphy_unregister(ptr noundef %add.ptr.i312) #10
  br label %error

if.end239:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %call2, i32 0, i32 16
  %79 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ndev, align 4
  %dev240 = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 1
  %81 = ptrtoint ptr %dev240 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %dev240, align 4
  br label %exit

error:                                            ; preds = %priv_to_wiphy.exit, %do.end219, %do.end198, %do.end185, %do.end172, %if.then163.error_crit_edge, %do.end147, %do.end132, %do.end77, %if.end35.error_crit_edge
  call fastcc void @ezusb_delete(ptr noundef %4)
  %dev241 = getelementptr inbounds %struct.ezusb_priv, ptr %4, i32 0, i32 1
  %82 = ptrtoint ptr %dev241 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev241, align 4
  %tobool242.not = icmp eq ptr %83, null
  br i1 %tobool242.not, label %error.exit_crit_edge, label %if.then243

error.exit_crit_edge:                             ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then243:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  call void @free_orinocodev(ptr noundef nonnull %call2) #10
  br label %exit

exit:                                             ; preds = %if.then243, %error.exit_crit_edge, %if.end239
  %retval1.0.ph = phi i32 [ -14, %error.exit_crit_edge ], [ -14, %if.then243 ], [ 0, %if.end239 ]
  %upriv.0.ph = phi ptr [ null, %error.exit_crit_edge ], [ null, %if.then243 ], [ %4, %if.end239 ]
  %84 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr318 = load ptr, ptr %fw_entry, align 4
  %tobool245.not = icmp eq ptr %.pr318, null
  br i1 %tobool245.not, label %exit.if.end247_crit_edge, label %if.then246

exit.if.end247_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then246:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  store ptr null, ptr @firmware.1, align 4
  store i16 0, ptr @firmware.0, align 4
  call void @release_firmware(ptr noundef nonnull %.pr318) #10
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %exit.if.end247_crit_edge, %exit.thread
  %upriv.0323 = phi ptr [ null, %exit.thread ], [ %upriv.0.ph, %if.then246 ], [ %upriv.0.ph, %exit.if.end247_crit_edge ]
  %retval1.0322 = phi i32 [ -12, %exit.thread ], [ %retval1.0.ph, %if.then246 ], [ %retval1.0.ph, %exit.if.end247_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %upriv.0323, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #10
  ret i32 %retval1.0322
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  tail call fastcc void @ezusb_delete(ptr noundef %1)
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_orinocodev(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_hard_reset(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1) #14
  %tobool5.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.do.end_crit_edge, label %ezusb_8051_cpucs.exit

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

ezusb_8051_cpucs.exit:                            ; preds = %if.end.i
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 300) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp = icmp slt i32 %call11.i, 0
  br i1 %cmp, label %ezusb_8051_cpucs.exit.do.end_crit_edge, label %if.end

ezusb_8051_cpucs.exit.do.end_crit_edge:           ; preds = %ezusb_8051_cpucs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %ezusb_8051_cpucs.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %do.end.i
  %retval.0.i5570 = phi i32 [ %call11.i, %ezusb_8051_cpucs.exit.do.end_crit_edge ], [ -12, %if.end.i.do.end_crit_edge ], [ -14, %do.end.i ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  br label %cleanup

if.end:                                           ; preds = %ezusb_8051_cpucs.exit
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %tobool.not.i56 = icmp eq ptr %11, null
  br i1 %tobool.not.i56, label %do.end.i58, label %if.end.i61

do.end.i58:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #13
  br label %do.end12

if.end.i61:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 1) #14
  %tobool5.not.i60 = icmp eq ptr %call7.i.i59, null
  br i1 %tobool5.not.i60, label %if.end.i61.do.end12_crit_edge, label %ezusb_8051_cpucs.exit67

if.end.i61.do.end12_crit_edge:                    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

ezusb_8051_cpucs.exit67:                          ; preds = %if.end.i61
  %13 = ptrtoint ptr %call7.i.i59 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call7.i.i59, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i62 = shl i32 %17, 8
  %or.i63 = or i32 %shl.i.i62, -2147483648
  %call11.i64 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i63, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i59, i16 noundef zeroext 1, i32 noundef 300) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i64)
  %cmp7 = icmp slt i32 %call11.i64, 0
  br i1 %cmp7, label %ezusb_8051_cpucs.exit67.do.end12_crit_edge, label %do.body19

ezusb_8051_cpucs.exit67.do.end12_crit_edge:       ; preds = %ezusb_8051_cpucs.exit67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end12:                                         ; preds = %ezusb_8051_cpucs.exit67.do.end12_crit_edge, %if.end.i61.do.end12_crit_edge, %do.end.i58
  %retval.0.i6673 = phi i32 [ %call11.i64, %ezusb_8051_cpucs.exit67.do.end12_crit_edge ], [ -12, %if.end.i61.do.end12_crit_edge ], [ -14, %do.end.i58 ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #13
  br label %cleanup

do.body19:                                        ; preds = %ezusb_8051_cpucs.exit67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezusb_hard_reset.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_hard_reset, %if.then24)) #10
          to label %do.end29 [label %if.then24], !srcloc !313

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ezusb_hard_reset.__UNIQUE_ID_ddebug387, ptr noundef %19, ptr noundef nonnull @.str.60) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body19
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i = shl i32 %23, 8
  %or = or i32 %shl.i, -2147483648
  %call32 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or, i8 noundef zeroext -86, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end38, label %do.end29.cleanup_crit_edge

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end38:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %call32) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.end29.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %retval.0.i5570, %do.end ], [ %retval.0.i6673, %do.end12 ], [ %call32, %do.end38 ], [ 0, %do.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezusb_firmware_download(ptr nocapture noundef readonly %upriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 64) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @firmware.1, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 857
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %4 = load i16, ptr @firmware.0, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %4)
  %cmp.not = icmp ult i16 %3, %4
  br i1 %cmp.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv) #13
  br label %do.end67

if.end12:                                         ; preds = %if.end
  %5 = ptrtoint ptr %upriv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %upriv, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #13
  br label %do.end67

if.end.i:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 1) #14
  %tobool5.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.do.end67_crit_edge, label %ezusb_8051_cpucs.exit

if.end.i.do.end67_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

ezusb_8051_cpucs.exit:                            ; preds = %if.end.i
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %upriv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %upriv, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 300) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp14 = icmp slt i32 %call11.i, 0
  br i1 %cmp14, label %ezusb_8051_cpucs.exit.do.end67_crit_edge, label %for.cond.preheader

ezusb_8051_cpucs.exit.do.end67_crit_edge:         ; preds = %ezusb_8051_cpucs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

for.cond.preheader:                               ; preds = %ezusb_8051_cpucs.exit
  %13 = load i16, ptr @firmware.0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp2021.not = icmp eq i16 %13, 0
  br i1 %cmp2021.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.022 = phi i32 [ 0, %for.body.lr.ph ], [ %add59.pre-phi, %for.inc.for.body_crit_edge ]
  %14 = add nsw i32 %addr.022, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %14)
  %15 = icmp ult i32 %14, 512
  br i1 %15, label %for.body.for.inc_crit_edge, label %if.end27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add nuw nsw i32 %addr.022, 64
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %16 = load ptr, ptr @firmware.1, align 4
  %arrayidx29 = getelementptr i8, ptr %16, i32 %addr.022
  %17 = call ptr @memcpy(ptr %call7.i, ptr %arrayidx29, i32 64)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.022, i32 %conv)
  %cmp30.not = icmp ule i32 %addr.022, %conv
  %add = add nuw nsw i32 %addr.022, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp33 = icmp ugt i32 %add, %conv
  %or.cond1 = and i1 %cmp30.not, %cmp33
  br i1 %or.cond1, label %do.body37, label %if.end27.if.end50_crit_edge

if.end27.if.end50_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body37:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezusb_firmware_download.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_firmware_download, %if.then43)) #10
          to label %do.end48 [label %if.then43], !srcloc !313

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ezusb_firmware_download.__UNIQUE_ID_ddebug382, ptr noundef %19, ptr noundef nonnull @.str.118, i32 noundef %conv) #10
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body37
  %sub = sub nsw i32 %conv, %addr.022
  %arrayidx49 = getelementptr i8, ptr %call7.i, i32 %sub
  %20 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx49, align 1
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %if.end27.if.end50_crit_edge
  %21 = ptrtoint ptr %upriv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %upriv, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i = shl i32 %24, 8
  %or = or i32 %shl.i, -2147483648
  %conv53 = trunc i32 %addr.022 to i16
  %call54 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv53, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 64, i32 noundef 300) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end50.do.end67_crit_edge, label %if.end50.for.inc_crit_edge

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end50.do.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

for.inc:                                          ; preds = %if.end50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add59.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.end50.for.inc_crit_edge ]
  %25 = load i16, ptr @firmware.0, align 4
  %conv19 = zext i16 %25 to i32
  %cmp20 = icmp ult i32 %add59.pre-phi, %conv19
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %26 = ptrtoint ptr %upriv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %upriv, align 4
  %tobool.not.i3 = icmp eq ptr %27, null
  br i1 %tobool.not.i3, label %do.end.i5, label %if.end.i8

do.end.i5:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #13
  br label %do.end67

if.end.i8:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 1) #14
  %tobool5.not.i7 = icmp eq ptr %call7.i.i6, null
  br i1 %tobool5.not.i7, label %if.end.i8.do.end67_crit_edge, label %ezusb_8051_cpucs.exit14

if.end.i8.do.end67_crit_edge:                     ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

ezusb_8051_cpucs.exit14:                          ; preds = %if.end.i8
  %29 = ptrtoint ptr %call7.i.i6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %call7.i.i6, align 8
  %30 = ptrtoint ptr %upriv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %upriv, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i9 = shl i32 %33, 8
  %or.i10 = or i32 %shl.i.i9, -2147483648
  %call11.i11 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i10, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i6, i16 noundef zeroext 1, i32 noundef 300) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i11)
  %cmp61 = icmp slt i32 %call11.i11, 0
  br i1 %cmp61, label %ezusb_8051_cpucs.exit14.do.end67_crit_edge, label %ezusb_8051_cpucs.exit14.exit_crit_edge

ezusb_8051_cpucs.exit14.exit_crit_edge:           ; preds = %ezusb_8051_cpucs.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

ezusb_8051_cpucs.exit14.do.end67_crit_edge:       ; preds = %ezusb_8051_cpucs.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

do.end67:                                         ; preds = %ezusb_8051_cpucs.exit14.do.end67_crit_edge, %if.end.i8.do.end67_crit_edge, %do.end.i5, %if.end50.do.end67_crit_edge, %ezusb_8051_cpucs.exit.do.end67_crit_edge, %if.end.i.do.end67_crit_edge, %do.end.i, %do.end9
  %retval1.0 = phi i32 [ -22, %do.end9 ], [ %call11.i, %ezusb_8051_cpucs.exit.do.end67_crit_edge ], [ %call11.i11, %ezusb_8051_cpucs.exit14.do.end67_crit_edge ], [ -12, %if.end.i.do.end67_crit_edge ], [ -14, %do.end.i ], [ -12, %if.end.i8.do.end67_crit_edge ], [ -14, %do.end.i5 ], [ %call54, %if.end50.do.end67_crit_edge ]
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %retval1.0) #13
  br label %exit

exit:                                             ; preds = %do.end67, %ezusb_8051_cpucs.exit14.exit_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %do.end67 ], [ %call11.i11, %ezusb_8051_cpucs.exit14.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end
  %retval.0 = phi i32 [ %retval1.1, %exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_init(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %data.i = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reply_count = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %reply_count to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reply_count, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %reg_spacing = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 40, %6
  %add.ptr = getelementptr i8, ptr %4, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 8061) #10, !srcloc !315
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_spacing, align 4
  %shl4 = shl i32 32, %10
  %add.ptr5 = getelementptr i8, ptr %8, i32 %shl4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 263) #10, !srcloc !315
  %read_urb = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #10
  %13 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_urb, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %16)
  %cmp.i = icmp eq i32 %16, -115
  br i1 %cmp.i, label %do.body3.i, label %if.end9.i

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezusb_submit_in_urb.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_init, %if.then6.i)) #10
          to label %ezusb_submit_in_urb.exit [label %if.then6.i], !srcloc !313

if.then6.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ezusb_submit_in_urb.__UNIQUE_ID_ddebug381, ptr noundef %18, ptr noundef nonnull @.str.129) #10
  br label %ezusb_submit_in_urb.exit

if.end9.i:                                        ; preds = %if.end
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %read_pipe.i = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %read_pipe.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_pipe.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2048, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ezusb_bulk_in_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 27
  %27 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %context4.i.i, align 4
  %28 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_urb, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %transfer_flags.i, align 4
  %31 = load ptr, ptr %read_urb, align 4
  %call13.i = tail call i32 @usb_submit_urb(ptr noundef %31, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end9.i.ezusb_submit_in_urb.exit_crit_edge, label %do.end19.i

if.end9.i.ezusb_submit_in_urb.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ezusb_submit_in_urb.exit

do.end19.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.128, i32 noundef %call13.i) #13
  br label %ezusb_submit_in_urb.exit

ezusb_submit_in_urb.exit:                         ; preds = %do.end19.i, %if.end9.i.ezusb_submit_in_urb.exit_crit_edge, %if.then6.i, %do.body3.i
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %call.i = tail call fastcc ptr @ezusb_alloc_ctx(ptr noundef %33, i16 noundef zeroext 1794, i16 noundef zeroext 1808) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %ezusb_submit_in_urb.exit.do.end_crit_edge, label %__ezusb_write_ltv.exit

ezusb_submit_in_urb.exit.do.end_crit_edge:        ; preds = %ezusb_submit_in_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

__ezusb_write_ltv.exit:                           ; preds = %ezusb_submit_in_urb.exit
  %call16.i = tail call fastcc i32 @ezusb_access_ltv(ptr noundef %33, ptr noundef nonnull %call.i, i16 noundef zeroext 2, ptr noundef nonnull @.str.122, i16 noundef zeroext 2, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_compl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp = icmp slt i32 %call16.i, 0
  br i1 %cmp, label %__ezusb_write_ltv.exit.do.end_crit_edge, label %if.end9

__ezusb_write_ltv.exit.do.end_crit_edge:          ; preds = %__ezusb_write_ltv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %__ezusb_write_ltv.exit.do.end_crit_edge, %ezusb_submit_in_urb.exit.do.end_crit_edge
  %retval.0.i40 = phi i32 [ %call16.i, %__ezusb_write_ltv.exit.do.end_crit_edge ], [ -12, %ezusb_submit_in_urb.exit.do.end_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %retval.0.i40) #13
  br label %cleanup

if.end9:                                          ; preds = %__ezusb_write_ltv.exit
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #10
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ezusb_docmd_wait.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_init, %if.then.i)) #10
          to label %do.end8.i [label %if.then.i], !srcloc !313

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i35 = getelementptr inbounds %struct.ezusb_priv, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %dev.i35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__ezusb_docmd_wait.__UNIQUE_ID_ddebug385, ptr noundef %38, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 0) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %if.end9
  %call9.i = tail call fastcc ptr @ezusb_alloc_ctx(ptr noundef %35, i16 noundef zeroext 2144, i16 noundef zeroext 1808) #10
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %__ezusb_docmd_wait.exit.thread, label %__ezusb_docmd_wait.exit

__ezusb_docmd_wait.exit.thread:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #10
  br label %do.end15

__ezusb_docmd_wait.exit:                          ; preds = %do.end8.i
  %call13.i36 = call fastcc i32 @ezusb_access_ltv(ptr noundef %35, ptr noundef nonnull %call9.i, i16 noundef zeroext 8, ptr noundef nonnull %data.i, i16 noundef zeroext 2, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_compl) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i36)
  %cmp11 = icmp slt i32 %call13.i36, 0
  br i1 %cmp11, label %__ezusb_docmd_wait.exit.do.end15_crit_edge, label %__ezusb_docmd_wait.exit.cleanup_crit_edge

__ezusb_docmd_wait.exit.cleanup_crit_edge:        ; preds = %__ezusb_docmd_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__ezusb_docmd_wait.exit.do.end15_crit_edge:       ; preds = %__ezusb_docmd_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end15:                                         ; preds = %__ezusb_docmd_wait.exit.do.end15_crit_edge, %__ezusb_docmd_wait.exit.thread
  %retval.0.i3743 = phi i32 [ -12, %__ezusb_docmd_wait.exit.thread ], [ %call13.i36, %__ezusb_docmd_wait.exit.do.end15_crit_edge ]
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %retval.0.i3743) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %__ezusb_docmd_wait.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i40, %do.end ], [ %retval.0.i3743, %do.end15 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %__ezusb_docmd_wait.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_if_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ezusb_delete(ptr noundef %upriv) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %upriv, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !316

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intersil/orinoco/orinoco_usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1495, 0\0A.popsection", ""() #10, !srcloc !317
  unreachable

do.end9:                                          ; preds = %entry
  %mtx = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #10
  %0 = ptrtoint ptr %upriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %upriv, align 4
  %read_urb = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 9
  %1 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %2) #10
  %req_lock = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 3
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #10
  %req_active = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 5
  %3 = ptrtoint ptr %req_active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req_active, align 4
  %cmp.i.not137 = icmp eq ptr %4, %req_active
  br i1 %cmp.i.not137, label %do.end9.for.end_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %do.end9.for.body_crit_edge
  %item.0139 = phi ptr [ %tmp_item.0140, %if.end35.for.body_crit_edge ], [ %4, %do.end9.for.body_crit_edge ]
  %flags.0138 = phi i32 [ %call45, %if.end35.for.body_crit_edge ], [ %call12, %do.end9.for.body_crit_edge ]
  %5 = ptrtoint ptr %item.0139 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp_item.0140 = load ptr, ptr %item.0139, align 4
  %refcount = getelementptr inbounds %struct.request_context, ptr %item.0139, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !318
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %for.body.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !316

for.body.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %for.body
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !319

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %outurb = getelementptr inbounds %struct.request_context, ptr %item.0139, i32 0, i32 4
  %8 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %outurb, align 4
  %call25 = tail call i32 @usb_unlink_urb(ptr noundef %9) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %flags.0138) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call25)
  %cmp27 = icmp eq i32 %call25, -115
  br i1 %cmp27, label %if.then29, label %refcount_inc.exit.if.end30_crit_edge

refcount_inc.exit.if.end30_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then29:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %done = getelementptr inbounds %struct.request_context, ptr %item.0139, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %done) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %refcount_inc.exit.if.end30_crit_edge
  %timer = getelementptr inbounds %struct.request_context, ptr %item.0139, i32 0, i32 8
  %call31 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  %10 = ptrtoint ptr %item.0139 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %item.0139, align 4
  %cmp.i132.not = icmp eq ptr %11, %item.0139
  br i1 %cmp.i132.not, label %if.end30.if.end35_crit_edge, label %if.then34

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ezusb_ctx_complete(ptr noundef %item.0139)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  tail call fastcc void @ezusb_request_context_put(ptr noundef %item.0139)
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #10
  %cmp.i.not = icmp eq ptr %tmp_item.0140, %req_active
  br i1 %cmp.i.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %do.end9.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call12, %do.end9.for.end_crit_edge ], [ %call45, %if.end35.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %flags.0.lcssa) #10
  %req_pending = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 4
  %12 = ptrtoint ptr %req_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req_pending, align 4
  %cmp.i134.not141 = icmp eq ptr %13, %req_pending
  br i1 %cmp.i134.not141, label %for.end.for.end66_crit_edge, label %for.end.for.body60_crit_edge

for.end.for.body60_crit_edge:                     ; preds = %for.end
  br label %for.body60

for.end.for.end66_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end66

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.end.for.body60_crit_edge
  %item.1142 = phi ptr [ %tmp_item.1, %for.body60.for.body60_crit_edge ], [ %13, %for.end.for.body60_crit_edge ]
  %14 = ptrtoint ptr %item.1142 to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp_item.1 = load ptr, ptr %item.1142, align 4
  tail call fastcc void @ezusb_ctx_complete(ptr noundef %item.1142)
  %cmp.i134.not = icmp eq ptr %tmp_item.1, %req_pending
  br i1 %cmp.i134.not, label %for.body60.for.end66_crit_edge, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body60

for.body60.for.end66_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end66

for.end66:                                        ; preds = %for.body60.for.end66_crit_edge, %for.end.for.end66_crit_edge
  %15 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_urb, align 4
  %tobool68.not = icmp eq ptr %16, null
  br i1 %tobool68.not, label %for.end66.if.end78_crit_edge, label %land.lhs.true

for.end66.if.end78_crit_edge:                     ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true:                                    ; preds = %for.end66
  %status = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %18)
  %cmp70 = icmp eq i32 %18, -115
  br i1 %cmp70, label %do.end75, label %land.lhs.true.if.end78_crit_edge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

do.end75:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #13
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %land.lhs.true.if.end78_crit_edge, %for.end66.if.end78_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  %19 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_urb, align 4
  %tobool81.not = icmp eq ptr %20, null
  br i1 %tobool81.not, label %if.end78.if.end85_crit_edge, label %if.then82

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %22) #10
  %23 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_urb, align 4
  tail call void @usb_free_urb(ptr noundef %24) #10
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end78.if.end85_crit_edge
  %bap_buf = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 8
  %25 = ptrtoint ptr %bap_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bap_buf, align 4
  tail call void @kfree(ptr noundef %26) #10
  %dev = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %tobool86.not = icmp eq ptr %28, null
  br i1 %tobool86.not, label %if.end85.if.end91_crit_edge, label %if.then87

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then87:                                        ; preds = %if.end85
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !316

do.body4.i.i:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #10, !srcloc !320
  unreachable

do.end7.i.i:                                      ; preds = %if.then87
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %priv_to_wiphy.exit, !prof !316

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !321
  unreachable

priv_to_wiphy.exit:                               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 86
  tail call void @orinoco_if_del(ptr noundef %priv.i.i.i) #10
  %add.ptr.i = getelementptr i8, ptr %upriv, i32 -1408
  tail call void @wiphy_unregister(ptr noundef %add.ptr.i) #10
  tail call void @free_orinocodev(ptr noundef %priv.i.i.i) #10
  br label %if.end91

if.end91:                                         ; preds = %priv_to_wiphy.exit, %if.end85.if.end91_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_orinocodev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_docmd_wait(ptr nocapture noundef readonly %hw, i16 noundef zeroext %cmd, i16 noundef zeroext %parm0, ptr nocapture noundef readnone %resp) #2 align 64 {
entry:
  %data.i = alloca [4 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #10
  %2 = getelementptr inbounds [4 x i16], ptr %data.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i16], ptr %data.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i16], ptr %data.i, i32 0, i32 3
  %5 = tail call i16 @llvm.bswap.i16(i16 %cmd) #10
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %data.i, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %parm0) #10
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %2, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %3, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %4, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ezusb_docmd_wait.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_docmd_wait, %if.then.i)) #10
          to label %do.end8.i [label %if.then.i], !srcloc !313

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %conv.i = zext i16 %cmd to i32
  %conv6.i = zext i16 %parm0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__ezusb_docmd_wait.__UNIQUE_ID_ddebug385, ptr noundef %12, ptr noundef nonnull @.str.67, i32 noundef %conv.i, i32 noundef %conv6.i) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %entry
  %call9.i = tail call fastcc ptr @ezusb_alloc_ctx(ptr noundef %1, i16 noundef zeroext 2144, i16 noundef zeroext 1808) #10
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %do.end8.i.__ezusb_docmd_wait.exit_crit_edge, label %if.end12.i

do.end8.i.__ezusb_docmd_wait.exit_crit_edge:      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ezusb_docmd_wait.exit

if.end12.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = call fastcc i32 @ezusb_access_ltv(ptr noundef %1, ptr noundef nonnull %call9.i, i16 noundef zeroext 8, ptr noundef nonnull %data.i, i16 noundef zeroext 2, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_poll) #10
  br label %__ezusb_docmd_wait.exit

__ezusb_docmd_wait.exit:                          ; preds = %if.end12.i, %do.end8.i.__ezusb_docmd_wait.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.end12.i ], [ -12, %do.end8.i.__ezusb_docmd_wait.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_doicmd_wait(ptr nocapture noundef readnone %hw, i16 noundef zeroext %cmd, i16 noundef zeroext %parm0, i16 noundef zeroext %parm1, i16 noundef zeroext %parm2, ptr nocapture noundef readnone %resp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @ezusb_doicmd_wait.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !319

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ezusb_doicmd_wait.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1045, i32 noundef 9, ptr noundef null) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i32 -22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ezusb_allocate(ptr nocapture noundef readnone %hw, i16 noundef zeroext %size, ptr nocapture noundef writeonly %fid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1792, ptr %fid, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_read_ltv(ptr nocapture noundef readonly %hw, i32 noundef %bap, i16 noundef zeroext %rid, i32 noundef %bufsize, ptr noundef %length, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %rem.i = and i32 %bufsize, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__ezusb_read_ltv.exit_crit_edge

entry.__ezusb_read_ltv.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ezusb_read_ltv.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc ptr @ezusb_alloc_ctx(ptr noundef %1, i16 noundef zeroext %rid, i16 noundef zeroext %rid) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.__ezusb_read_ltv.exit_crit_edge, label %if.end3.i

if.end.i.__ezusb_read_ltv.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ezusb_read_ltv.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call fastcc i32 @ezusb_access_ltv(ptr noundef %1, ptr noundef nonnull %call.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 2, ptr noundef %buf, i32 noundef %bufsize, ptr noundef %length, ptr noundef nonnull @ezusb_req_ctx_wait_poll) #10
  br label %__ezusb_read_ltv.exit

__ezusb_read_ltv.exit:                            ; preds = %if.end3.i, %if.end.i.__ezusb_read_ltv.exit_crit_edge, %entry.__ezusb_read_ltv.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ -22, %entry.__ezusb_read_ltv.exit_crit_edge ], [ -12, %if.end.i.__ezusb_read_ltv.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_read_ltv_preempt(ptr nocapture noundef readonly %hw, i32 noundef %bap, i16 noundef zeroext %rid, i32 noundef %bufsize, ptr noundef %length, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %rem.i = and i32 %bufsize, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__ezusb_read_ltv.exit_crit_edge

entry.__ezusb_read_ltv.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ezusb_read_ltv.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc ptr @ezusb_alloc_ctx(ptr noundef %1, i16 noundef zeroext %rid, i16 noundef zeroext %rid) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.__ezusb_read_ltv.exit_crit_edge, label %if.end3.i

if.end.i.__ezusb_read_ltv.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ezusb_read_ltv.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call fastcc i32 @ezusb_access_ltv(ptr noundef %1, ptr noundef nonnull %call.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 2, ptr noundef %buf, i32 noundef %bufsize, ptr noundef %length, ptr noundef nonnull @ezusb_req_ctx_wait_poll) #10
  br label %__ezusb_read_ltv.exit

__ezusb_read_ltv.exit:                            ; preds = %if.end3.i, %if.end.i.__ezusb_read_ltv.exit_crit_edge, %entry.__ezusb_read_ltv.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ -22, %entry.__ezusb_read_ltv.exit_crit_edge ], [ -12, %if.end.i.__ezusb_read_ltv.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_write_ltv(ptr nocapture noundef readonly %hw, i32 noundef %bap, i16 noundef zeroext %rid, i16 noundef zeroext %length, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %length)
  %cmp.i = icmp eq i16 %length, 0
  br i1 %cmp.i, label %entry.__ezusb_write_ltv.exit_crit_edge, label %if.end.i

entry.__ezusb_write_ltv.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ezusb_write_ltv.exit

if.end.i:                                         ; preds = %entry
  %sub.i = shl i16 %length, 1
  %mul.i = add i16 %sub.i, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul.i)
  %cmp5.i = icmp eq i16 %mul.i, 0
  br i1 %cmp5.i, label %if.end.i.__ezusb_write_ltv.exit_crit_edge, label %if.end8.i

if.end.i.__ezusb_write_ltv.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ezusb_write_ltv.exit

if.end8.i:                                        ; preds = %if.end.i
  %call.i = tail call fastcc ptr @ezusb_alloc_ctx(ptr noundef %1, i16 noundef zeroext %rid, i16 noundef zeroext 1808) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end8.i.__ezusb_write_ltv.exit_crit_edge, label %if.end10.i

if.end8.i.__ezusb_write_ltv.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ezusb_write_ltv.exit

if.end10.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %rid)
  %cmp12.i = icmp eq i16 %rid, 1792
  %..i = select i1 %cmp12.i, i16 1, i16 2
  %call16.i = tail call fastcc i32 @ezusb_access_ltv(ptr noundef %1, ptr noundef nonnull %call.i, i16 noundef zeroext %mul.i, ptr noundef %data, i16 noundef zeroext %..i, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_poll) #10
  br label %__ezusb_write_ltv.exit

__ezusb_write_ltv.exit:                           ; preds = %if.end10.i, %if.end8.i.__ezusb_write_ltv.exit_crit_edge, %if.end.i.__ezusb_write_ltv.exit_crit_edge, %entry.__ezusb_write_ltv.exit_crit_edge
  %retval.0.i = phi i32 [ %call16.i, %if.end10.i ], [ -22, %entry.__ezusb_write_ltv.exit_crit_edge ], [ 0, %if.end.i.__ezusb_write_ltv.exit_crit_edge ], [ -12, %if.end8.i.__ezusb_write_ltv.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_bap_pread(ptr nocapture noundef readonly %hw, i32 noundef %bap, ptr nocapture noundef writeonly %buf, i32 noundef %len, i16 noundef zeroext %id, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %read_urb = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %actual_length2 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length2, align 4
  %conv = zext i16 %id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1793, i16 %id)
  %cmp = icmp eq i16 %id, 1793
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %conv4 = zext i16 %offset to i32
  %add = add i32 %len, 14
  %add5 = add i32 %add, %conv4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %7)
  %cmp6 = icmp ugt i32 %add5, %7
  br i1 %cmp6, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.ezusb_packet, ptr %5, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %data, i32 %conv4
  %8 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  br label %cleanup

if.end10:                                         ; preds = %entry
  %9 = add i16 %id, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %9)
  %10 = icmp ult i16 %9, 768
  br i1 %10, label %if.then17, label %do.end37

if.then17:                                        ; preds = %if.end10
  %conv18 = zext i16 %offset to i32
  %add20 = add i32 %len, 10
  %sub = add i32 %add20, %conv18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp21 = icmp ugt i32 %sub, %7
  br i1 %cmp21, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #13
  br label %cleanup

if.end29:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %data30 = getelementptr inbounds %struct.ezusb_packet, ptr %5, i32 0, i32 8
  %add.ptr33 = getelementptr i8, ptr %data30, i32 %conv18
  %add.ptr34 = getelementptr i8, ptr %add.ptr33, i32 -4
  %11 = call ptr @memcpy(ptr %buf, ptr %add.ptr34, i32 %len)
  br label %cleanup

do.end37:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end29, %do.end26, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ], [ -14, %do.end26 ], [ 0, %if.end29 ], [ -22, %do.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_read_pda(ptr nocapture noundef readonly %hw, ptr noundef %pda, i32 noundef %pda_addr, i16 noundef zeroext %pda_len) #2 align 64 {
entry:
  %data = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %2 = getelementptr inbounds [2 x i16], ptr %data, i32 0, i32 1
  %conv = trunc i32 %pda_addr to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %data, align 2
  %conv1 = zext i16 %pda_len to i32
  %sub = add nsw i32 %conv1, -4
  %conv2 = trunc i32 %sub to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %2, align 2
  %call = tail call fastcc ptr @ezusb_alloc_ctx(ptr noundef %1, i16 noundef zeroext 2048, i16 noundef zeroext 2048)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub4 = add i16 %pda_len, -2
  %7 = tail call i16 @llvm.bswap.i16(i16 %sub4)
  %8 = ptrtoint ptr %pda to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %pda, align 2
  %arrayidx6 = getelementptr i16, ptr %pda, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr i16, ptr %pda, i32 2
  %call10 = call fastcc i32 @ezusb_access_ltv(ptr noundef %1, ptr noundef nonnull %call, i16 noundef zeroext 4, ptr noundef nonnull %data, i16 noundef zeroext 2, ptr noundef %arrayidx7, i32 noundef %sub, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_compl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_program_init(ptr nocapture noundef readonly %hw, i32 noundef %entry_point) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %entry_point)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data, align 4
  %call = tail call fastcc ptr @ezusb_alloc_ctx(ptr noundef %1, i16 noundef zeroext 2130, i16 noundef zeroext 1808)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call fastcc i32 @ezusb_access_ltv(ptr noundef %1, ptr noundef nonnull %call, i16 noundef zeroext 4, ptr noundef nonnull %data, i16 noundef zeroext 2, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_compl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_program_end(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc ptr @ezusb_alloc_ctx(ptr noundef %1, i16 noundef zeroext 2133, i16 noundef zeroext 1808)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @ezusb_access_ltv(ptr noundef %1, ptr noundef nonnull %call, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 2, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_compl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_program(ptr nocapture noundef readonly %hw, ptr noundef %buf, i32 noundef %addr, i32 noundef %len) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr)
  %cmp145 = icmp ugt i32 %add, %addr
  br i1 %cmp145, label %do.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %0 = tail call i32 @llvm.umin.i32(i32 %len, i32 2034)
  %priv.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %do.body.lr.ph
  %ch_addr.047 = phi i32 [ %addr, %do.body.lr.ph ], [ %add10, %if.end9.do.body_crit_edge ]
  %ch_len.046 = phi i32 [ %0, %do.body.lr.ph ], [ %5, %if.end9.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezusb_program.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_program, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !313

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %ch_addr.047, %addr
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ezusb_program.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.112, i32 noundef %ch_len.046, i32 noundef %ch_addr.047, ptr noundef %arrayidx) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %sub4 = sub i32 %ch_addr.047, %addr
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %sub4
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %3 = call i32 @llvm.bswap.i32(i32 %ch_addr.047) #10
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data.i, align 4
  %call.i = call fastcc ptr @ezusb_alloc_ctx(ptr noundef %2, i16 noundef zeroext 2131, i16 noundef zeroext 1808) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.ezusb_program_bytes.exit.thread_crit_edge, label %if.end.i

do.end.ezusb_program_bytes.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ezusb_program_bytes.exit.thread

if.end.i:                                         ; preds = %do.end
  %call1.i = call fastcc i32 @ezusb_access_ltv(ptr noundef %2, ptr noundef nonnull %call.i, i16 noundef zeroext 4, ptr noundef nonnull %data.i, i16 noundef zeroext 2, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_compl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.ezusb_program_bytes.exit.thread_crit_edge

if.end.i.ezusb_program_bytes.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ezusb_program_bytes.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc ptr @ezusb_alloc_ctx(ptr noundef %2, i16 noundef zeroext 2132, i16 noundef zeroext 1808) #10
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.ezusb_program_bytes.exit.thread_crit_edge, label %ezusb_program_bytes.exit

if.end4.i.ezusb_program_bytes.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ezusb_program_bytes.exit.thread

ezusb_program_bytes.exit.thread:                  ; preds = %if.end4.i.ezusb_program_bytes.exit.thread_crit_edge, %if.end.i.ezusb_program_bytes.exit.thread_crit_edge, %do.end.ezusb_program_bytes.exit.thread_crit_edge
  %retval.0.i41.ph = phi i32 [ -12, %if.end4.i.ezusb_program_bytes.exit.thread_crit_edge ], [ %call1.i, %if.end.i.ezusb_program_bytes.exit.thread_crit_edge ], [ -12, %do.end.ezusb_program_bytes.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  br label %while.end

ezusb_program_bytes.exit:                         ; preds = %if.end4.i
  %conv.i = trunc i32 %ch_len.046 to i16
  %call9.i = call fastcc i32 @ezusb_access_ltv(ptr noundef %2, ptr noundef nonnull %call5.i, i16 noundef zeroext %conv.i, ptr noundef %arrayidx5, i16 noundef zeroext 2, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_compl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool7.not = icmp eq i32 %call9.i, 0
  br i1 %tobool7.not, label %if.end9, label %ezusb_program_bytes.exit.while.end_crit_edge

ezusb_program_bytes.exit.while.end_crit_edge:     ; preds = %ezusb_program_bytes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end9:                                          ; preds = %ezusb_program_bytes.exit
  %add10 = add i32 %ch_addr.047, %ch_len.046
  %sub12 = sub i32 %add, %add10
  %5 = call i32 @llvm.umin.i32(i32 %sub12, i32 2034)
  %cmp1 = icmp ugt i32 %add, %add10
  br i1 %cmp1, label %if.end9.do.body_crit_edge, label %if.end9.while.end_crit_edge

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.end:                                        ; preds = %if.end9.while.end_crit_edge, %ezusb_program_bytes.exit.while.end_crit_edge, %ezusb_program_bytes.exit.thread, %entry.while.end_crit_edge
  %err.1 = phi i32 [ %retval.0.i41.ph, %ezusb_program_bytes.exit.thread ], [ 0, %entry.while.end_crit_edge ], [ 0, %if.end9.while.end_crit_edge ], [ %call9.i, %ezusb_program_bytes.exit.while.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_lock_irqsave(ptr noundef %lock, ptr nocapture noundef readnone %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_unlock_irqrestore(ptr noundef %lock, ptr nocapture noundef readnone %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_lock_irq(ptr noundef %lock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_unlock_irq(ptr noundef %lock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_req_ctx_wait_poll(ptr nocapture noundef readnone %upriv, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %while.cond.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.cond.preheader:                             ; preds = %entry
  %done = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 2
  %call2 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %done) #10
  br i1 %call2, label %while.cond.preheader.sw.epilog_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.sw.epilog_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %msecs.03 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 3000, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %msecs.03, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #10
  %call = tail call zeroext i1 @try_wait_for_completion(ptr noundef %done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %call, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.body.sw.epilog_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body.sw.epilog_crit_edge, %while.cond.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ezusb_alloc_ctx(ptr noundef %upriv, i16 noundef zeroext %out_rid, i16 noundef zeroext %in_rid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 144) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 2048) #14
  %buf = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %buf, align 8
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %outurb = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %outurb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %outurb, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 8
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %upriv12 = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %upriv12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %upriv, ptr %upriv12, align 4
  %state = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state, align 8
  %out_rid13 = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %out_rid13 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %out_rid, ptr %out_rid13, align 4
  %in_rid14 = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %in_rid14 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %in_rid, ptr %in_rid14, align 2
  %refcount = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %10 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refcount, align 8
  %done = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @init_completion.__key) #10
  %timer = getelementptr inbounds %struct.request_context, ptr %call7.i.i, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ezusb_request_timerfn, i32 noundef 0, ptr noundef nonnull @.str.68, ptr noundef nonnull @ezusb_alloc_ctx.__key) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end11 ], [ null, %if.then9 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezusb_access_ltv(ptr noundef %upriv, ptr noundef %ctx, i16 noundef zeroext %length, ptr noundef readonly %data, i16 noundef zeroext %frame_type, ptr noundef writeonly %ans_buff, i32 noundef %ans_size, ptr noundef writeonly %ans_length, ptr nocapture noundef readonly %ezusb_ctx_wait_func) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %upriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upriv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %entry
  %read_urb = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 9
  %2 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_urb, align 4
  %status = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %5)
  %cmp.not = icmp eq i32 %5, -115
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80) #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %reply_count_lock = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %reply_count_lock) #10
  %buf = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 6
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %reply_count = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 12
  %conv.i = zext i16 %length to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2034, i16 %length)
  %cmp.i = icmp ugt i16 %length, 2034
  br i1 %cmp.i, label %do.body3.i, label %do.end8.i, !prof !316

do.body3.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intersil/orinoco/orinoco_usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 742, 0\0A.popsection", ""() #10, !srcloc !322
  unreachable

do.end8.i:                                        ; preds = %if.end6
  %8 = ptrtoint ptr %reply_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reply_count, align 4
  %out_rid = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 10
  %10 = ptrtoint ptr %out_rid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %out_rid, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 4098, ptr %7, align 1
  %req_reply_count.i = getelementptr %struct.ezusb_packet, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %req_reply_count.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %9, ptr %req_reply_count.i, align 1
  %ans_reply_count.i = getelementptr %struct.ezusb_packet, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %ans_reply_count.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ans_reply_count.i, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %frame_type) #10
  %frame_type9.i = getelementptr %struct.ezusb_packet, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %frame_type9.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %frame_type9.i, align 1
  %add11.i = add nuw nsw i16 %length, 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %add11.i) #10
  %size.i = getelementptr %struct.ezusb_packet, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %size.i, align 1
  %conv1.2.i.i = zext i8 %9 to i16
  %add.2.i.i = shl nuw nsw i16 %conv1.2.i.i, 2
  %19 = lshr i16 %15, 8
  %shl.4.i.i = add nuw nsw i16 %19, 272
  %add.4.i.i = add nuw nsw i16 %shl.4.i.i, %add.2.i.i
  %shl.5.i.i = shl nuw nsw i16 %add.4.i.i, 1
  %conv1.5.i.i = and i16 %15, 255
  %add.5.i.i = add nuw nsw i16 %shl.5.i.i, %conv1.5.i.i
  %shl.6.i.i = shl nuw nsw i16 %add.5.i.i, 1
  %20 = lshr i16 %17, 8
  %add.6.i.i = add nuw nsw i16 %shl.6.i.i, %20
  %shl.7.i.i = shl nuw nsw i16 %add.6.i.i, 1
  %conv1.7.i.i = and i16 %17, 255
  %add.7.i.i = add nuw nsw i16 %shl.7.i.i, %conv1.7.i.i
  %21 = tail call i16 @llvm.bswap.i16(i16 %add.7.i.i) #10
  %crc.i = getelementptr inbounds %struct.ezusb_packet, ptr %7, i32 0, i32 5
  %22 = ptrtoint ptr %crc.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %crc.i, align 1
  %add14.i = add nuw nsw i32 %conv.i, 1
  %div36.i = lshr i32 %add14.i, 1
  %23 = trunc i32 %div36.i to i16
  %conv16.i = add nuw i16 %23, 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv16.i) #10
  %hermes_len.i = getelementptr inbounds %struct.ezusb_packet, ptr %7, i32 0, i32 6
  %25 = ptrtoint ptr %hermes_len.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %hermes_len.i, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %hermes_rid.i = getelementptr inbounds %struct.ezusb_packet, ptr %7, i32 0, i32 7
  %27 = ptrtoint ptr %hermes_rid.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %hermes_rid.i, align 1
  %tobool17.not.i = icmp eq ptr %data, null
  br i1 %tobool17.not.i, label %do.end8.i.ezusb_fill_req.exit_crit_edge, label %if.then18.i

do.end8.i.ezusb_fill_req.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ezusb_fill_req.exit

if.then18.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %data19.i = getelementptr inbounds %struct.ezusb_packet, ptr %7, i32 0, i32 8
  %28 = call ptr @memcpy(ptr %data19.i, ptr %data, i32 %conv.i)
  br label %ezusb_fill_req.exit

ezusb_fill_req.exit:                              ; preds = %if.then18.i, %do.end8.i.ezusb_fill_req.exit_crit_edge
  %add.i = add nuw nsw i32 %conv.i, 14
  %outurb = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 4
  %29 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %outurb, align 4
  %31 = ptrtoint ptr %upriv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %upriv, align 4
  %write_pipe = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 11
  %33 = ptrtoint ptr %write_pipe to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %write_pipe, align 4
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 8
  %37 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %32, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 10
  %38 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %34, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 14
  %39 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 19
  %40 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 28
  %41 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ezusb_request_out_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 27
  %42 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ctx, ptr %context4.i, align 4
  %in_rid = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 11
  %43 = ptrtoint ptr %in_rid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %in_rid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool10.not = icmp eq i16 %44, 0
  br i1 %tobool10.not, label %ezusb_fill_req.exit.if.end15_crit_edge, label %if.then11

ezusb_fill_req.exit.if.end15_crit_edge:           ; preds = %ezusb_fill_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %ezusb_fill_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %reply_count to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reply_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %46)
  %cmp.i147 = icmp ult i8 %46, 127
  %add.i148 = add i8 %46, 1
  %retval.0.i = select i1 %cmp.i147, i8 %add.i148, i8 1
  %47 = ptrtoint ptr %reply_count to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %retval.0.i, ptr %reply_count, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %ezusb_fill_req.exit.if.end15_crit_edge
  %req_lock.i = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #10
  %upriv5.i = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 5
  %48 = ptrtoint ptr %upriv5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %upriv5.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock.i, i32 noundef %call2.i) #10
  br label %ezusb_req_enqueue_run.exit

if.end.i:                                         ; preds = %if.end15
  %refcount.i = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !318
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !316

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %53 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !319

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #10
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %req_pending.i = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ctx, ptr noundef %55, ptr noundef %req_pending.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %refcount_inc.exit.i.list_add_tail.exit.i_crit_edge

refcount_inc.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ctx, ptr %prev.i.i, align 4
  %57 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %req_pending.i, ptr %ctx, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ctx, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %ctx, ptr %55, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %refcount_inc.exit.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock.i, i32 noundef %call2.i) #10
  %state.i = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 9
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %state.i, align 4
  tail call fastcc void @ezusb_req_queue_run(ptr noundef %upriv) #10
  br label %ezusb_req_enqueue_run.exit

ezusb_req_enqueue_run.exit:                       ; preds = %list_add_tail.exit.i, %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %reply_count_lock) #10
  %61 = ptrtoint ptr %in_rid to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %in_rid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool18.not = icmp eq i16 %62, 0
  br i1 %tobool18.not, label %ezusb_req_enqueue_run.exit.if.end20_crit_edge, label %if.then19

ezusb_req_enqueue_run.exit.if.end20_crit_edge:    ; preds = %ezusb_req_enqueue_run.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %ezusb_req_enqueue_run.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %ezusb_ctx_wait_func(ptr noundef %upriv, ptr noundef %ctx) #10, !callees !323
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %ezusb_req_enqueue_run.exit.if.end20_crit_edge
  %state21 = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 9
  %63 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state21, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %64, label %if.end20.do.end32_crit_edge [
    i32 9, label %sw.epilog
    i32 1, label %if.end20.sw.bb24_crit_edge
    i32 2, label %if.end20.sw.bb24_crit_edge151
    i32 5, label %if.end20.do.end40_crit_edge
    i32 6, label %if.end20.do.end40_crit_edge152
    i32 7, label %if.end20.do.end40_crit_edge153
    i32 8, label %if.end20.do.end40_crit_edge154
  ]

if.end20.do.end40_crit_edge154:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.end20.do.end40_crit_edge153:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.end20.do.end40_crit_edge152:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.end20.do.end40_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.end20.sw.bb24_crit_edge151:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.end20.sw.bb24_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.end20.do.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

sw.bb24:                                          ; preds = %if.end20.sw.bb24_crit_edge, %if.end20.sw.bb24_crit_edge151
  %66 = ptrtoint ptr %in_rid to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %in_rid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool26.not = icmp eq i16 %67, 0
  br i1 %tobool26.not, label %sw.bb24.exit_crit_edge, label %sw.bb24.do.end32_crit_edge

sw.bb24.do.end32_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

sw.bb24.exit_crit_edge:                           ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

do.end32:                                         ; preds = %sw.bb24.do.end32_crit_edge, %if.end20.do.end32_crit_edge
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %64) #13
  br label %do.end40

do.end40:                                         ; preds = %do.end32, %if.end20.do.end40_crit_edge, %if.end20.do.end40_crit_edge152, %if.end20.do.end40_crit_edge153, %if.end20.do.end40_crit_edge154
  %68 = ptrtoint ptr %reply_count to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %reply_count, align 4
  %conv = zext i8 %69 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %64, i32 noundef %conv) #13
  %70 = ptrtoint ptr %reply_count to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %reply_count, align 4
  %71 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %64, label %do.end57 [
    i32 5, label %do.end40.do.end52_crit_edge
    i32 7, label %do.end40.do.end52_crit_edge155
  ]

do.end40.do.end52_crit_edge155:                   ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52

do.end40.do.end52_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52

do.end52:                                         ; preds = %do.end40.do.end52_crit_edge, %do.end40.do.end52_crit_edge155
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #13
  br label %exit

do.end57:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #13
  br label %exit

sw.epilog:                                        ; preds = %if.end20
  %72 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %outurb, align 4
  %status23 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %status23 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %status23, align 4
  %76 = ptrtoint ptr %in_rid to i32
  call void @__asan_load2_noabort(i32 %76)
  %.pr = load i16, ptr %in_rid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool62.not = icmp eq i16 %.pr, 0
  br i1 %tobool62.not, label %sw.epilog.exit_crit_edge, label %if.then63

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then63:                                        ; preds = %sw.epilog
  %77 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf, align 4
  %hermes_len = getelementptr inbounds %struct.ezusb_packet, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %hermes_len to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %hermes_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp66.not = icmp eq i16 %80, 0
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %conv70 = zext i16 %81 to i32
  %mul = shl nuw nsw i32 %conv70, 1
  %add = add nuw nsw i32 %mul, 12
  %exp_len.0 = select i1 %cmp66.not, i32 14, i32 %add
  %buf_length = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 7
  %82 = ptrtoint ptr %buf_length to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buf_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %exp_len.0, i32 %83)
  %cmp73.not = icmp eq i32 %exp_len.0, %83
  br i1 %cmp73.not, label %if.end87, label %do.end79

do.end79:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %conv82 = zext i16 %.pr to i32
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.80, i32 noundef %conv82, i32 noundef %exp_len.0, i32 noundef %83) #13
  br label %exit

if.end87:                                         ; preds = %if.then63
  %tobool88.not = icmp eq ptr %ans_buff, null
  br i1 %tobool88.not, label %if.end87.if.end94_crit_edge, label %if.then89

if.end87.if.end94_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %data90 = getelementptr inbounds %struct.ezusb_packet, ptr %78, i32 0, i32 8
  %84 = tail call i32 @llvm.umin.i32(i32 %exp_len.0, i32 %ans_size)
  %85 = call ptr @memcpy(ptr %ans_buff, ptr %data90, i32 %84)
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %if.end87.if.end94_crit_edge
  %tobool95.not = icmp eq ptr %ans_length, null
  br i1 %tobool95.not, label %if.end94.exit_crit_edge, label %if.then96

if.end94.exit_crit_edge:                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %hermes_len to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %hermes_len, align 1
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  %89 = ptrtoint ptr %ans_length to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %ans_length, align 2
  br label %exit

exit:                                             ; preds = %if.then96, %if.end94.exit_crit_edge, %do.end79, %sw.epilog.exit_crit_edge, %do.end57, %do.end52, %sw.bb24.exit_crit_edge, %entry.exit_crit_edge
  %retval1.2 = phi i32 [ -110, %do.end52 ], [ -14, %do.end57 ], [ %75, %sw.epilog.exit_crit_edge ], [ -19, %entry.exit_crit_edge ], [ -5, %do.end79 ], [ %75, %if.then96 ], [ %75, %if.end94.exit_crit_edge ], [ 0, %sw.bb24.exit_crit_edge ]
  tail call fastcc void @ezusb_request_context_put(ptr noundef %ctx)
  ret i32 %retval1.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_request_timerfn(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -88
  %outurb = getelementptr i8, ptr %t, i32 -16
  %0 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outurb, align 4
  %call = tail call i32 @usb_unlink_urb(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call)
  %cmp = icmp eq i32 %call, -115
  %state = getelementptr i8, ptr %t, i32 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %state, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezusb_request_timerfn.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_request_timerfn, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !313

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outurb, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ezusb_request_timerfn.__UNIQUE_ID_ddebug379, ptr noundef %dev9, ptr noundef nonnull @.str.71) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.else
  %refcount = getelementptr i8, ptr %t, i32 -80
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !318
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !316

do.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !319

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %killed = getelementptr i8, ptr %t, i32 -20
  %10 = ptrtoint ptr %killed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %killed, align 4
  tail call fastcc void @ezusb_ctx_complete(ptr noundef %add.ptr)
  tail call fastcc void @ezusb_request_context_put(ptr noundef %add.ptr)
  br label %if.end10

if.end10:                                         ; preds = %refcount_inc.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ezusb_ctx_complete(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %upriv1 = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %upriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upriv1, align 4
  %req_lock = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ctx) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ctx, ptr %ctx, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ctx, ptr %prev.i3.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call3) #10
  tail call fastcc void @ezusb_req_queue_run(ptr noundef %1)
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %flags.0 = phi i32 [ %call16, %if.then ], [ %call3, %list_del_init.exit.if.end_crit_edge ]
  %state = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 9
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %.off = add i32 %13, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %flags.0) #10
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %out_rid = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 10
  %14 = ptrtoint ptr %out_rid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %out_rid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %15)
  %cmp23 = icmp eq i16 %15, 1792
  br i1 %cmp23, label %land.lhs.true, label %sw.bb.if.end36_crit_edge

sw.bb.if.end36_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true:                                    ; preds = %sw.bb
  %dev = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %land.lhs.true.if.end36_crit_edge, label %if.then26

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %19)
  %cmp31.not = icmp eq i32 %19, 9
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 1
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 5
  %tx_packets.sink80 = select i1 %cmp31.not, ptr %tx_packets, ptr %tx_errors
  %20 = ptrtoint ptr %tx_packets.sink80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_packets.sink80, align 4
  %inc34 = add i32 %21, 1
  store i32 %inc34, ptr %tx_packets.sink80, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %23) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then26, %land.lhs.true.if.end36_crit_edge, %sw.bb.if.end36_crit_edge
  %done = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 2
  tail call void @complete_all(ptr noundef %done) #10
  tail call fastcc void @ezusb_request_context_put(ptr noundef %ctx)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %tobool39.not = icmp eq ptr %25, null
  br i1 %tobool39.not, label %do.end44, label %do.end54

do.end44:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #13
  %done49 = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 2
  tail call void @complete_all(ptr noundef %done49) #10
  tail call fastcc void @ezusb_request_context_put(ptr noundef %ctx)
  br label %sw.epilog

do.end54:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end54, %do.end44, %if.end36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ezusb_request_context_put(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !325
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !319

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !326
  %done = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end.if.end17_crit_edge, !prof !316

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 301, i32 noundef 9, ptr noundef null) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %outurb = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 4
  %3 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %outurb, align 4
  %status = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %6)
  %cmp = icmp eq i32 %6, -115
  br i1 %cmp, label %do.body32, label %do.body41, !prof !316

do.body32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intersil/orinoco/orinoco_usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 302, 0\0A.popsection", ""() #10, !srcloc !327
  unreachable

do.body41:                                        ; preds = %if.end17
  %pprev.i.i = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 8, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.not, label %do.end59, label %do.body51, !prof !319

do.body51:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intersil/orinoco/orinoco_usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 303, 0\0A.popsection", ""() #10, !srcloc !328
  unreachable

do.end59:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_free_urb(ptr noundef %4) #10
  %buf = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 6
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %10) #10
  tail call void @kfree(ptr noundef %ctx) #10
  br label %return

return:                                           ; preds = %do.end59, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ezusb_req_queue_run(ptr noundef %upriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #10
  %req_active = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 5
  %0 = ptrtoint ptr %req_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %req_active, align 4
  %cmp.i.not = icmp eq ptr %1, %req_active
  br i1 %cmp.i.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  %req_pending = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 4
  %2 = ptrtoint ptr %req_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %req_pending, align 4
  %cmp.i56.not = icmp eq ptr %3, %req_pending
  br i1 %cmp.i56.not, label %if.end.unlock_crit_edge, label %if.end9

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end9:                                          ; preds = %if.end
  %upriv12 = getelementptr inbounds %struct.request_context, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %upriv12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upriv12, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end9.unlock_crit_edge, label %if.end15

if.end9.unlock_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end15:                                         ; preds = %if.end9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.__list_del_entry.exit.i_crit_edge

if.end15.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end15.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %15, ptr noundef %req_active) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %prev.i2.i, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %req_active, ptr %3, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %3, ptr %15, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %state = getelementptr inbounds %struct.request_context, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp17 = icmp eq i32 %21, 1
  br i1 %cmp17, label %if.then19, label %list_move_tail.exit.unlock_crit_edge

list_move_tail.exit.unlock_crit_edge:             ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then19:                                        ; preds = %list_move_tail.exit
  %refcount = getelementptr inbounds %struct.request_context, ptr %3, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !318
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then19.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !316

if.then19.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then19
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !319

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then19.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then19.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %outurb = getelementptr inbounds %struct.request_context, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %outurb, align 4
  %call20 = tail call i32 @usb_submit_urb(ptr noundef %25, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end33, label %if.then22

if.then22:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call2) #10
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %call20) #13
  tail call fastcc void @ezusb_ctx_complete(ptr noundef %3)
  tail call fastcc void @ezusb_request_context_put(ptr noundef %3)
  br label %done

if.end33:                                         ; preds = %refcount_inc.exit
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %state, align 4
  %28 = ptrtoint ptr %upriv12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %upriv12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %29, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end33.unlock_crit_edge, label %if.end.i

if.end33.unlock_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %30, 300
  %timer = getelementptr inbounds %struct.request_context, ptr %3, i32 0, i32 8
  %call.i = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #10
  br label %unlock

unlock:                                           ; preds = %if.end.i, %if.end33.unlock_crit_edge, %list_move_tail.exit.unlock_crit_edge, %if.end9.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call2) #10
  br label %done

done:                                             ; preds = %unlock, %if.then22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_request_out_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %upriv1 = getelementptr inbounds %struct.request_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %upriv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upriv1, align 4
  %req_lock = getelementptr inbounds %struct.ezusb_priv, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #10
  %timer = getelementptr inbounds %struct.request_context, ptr %1, i32 0, i32 8
  %call6 = tail call i32 @del_timer(ptr noundef %timer) #10
  %killed = getelementptr inbounds %struct.request_context, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %killed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %killed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call3) #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #13
  br label %out

if.end:                                           ; preds = %entry
  %state13 = getelementptr inbounds %struct.request_context, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state13, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14 = icmp eq i32 %9, 0
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %if.then16.sw.bb23_crit_edge
  ]

if.then16.sw.bb23_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

sw.bb:                                            ; preds = %if.then16
  %in_rid = getelementptr inbounds %struct.request_context, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %in_rid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %in_rid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool17.not = icmp eq i16 %12, 0
  br i1 %tobool17.not, label %sw.bb.sw.bb23_crit_edge, label %if.then18

sw.bb.sw.bb23_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.then18:                                        ; preds = %sw.bb
  %13 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %state13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then18.ezusb_mod_timer.exit_crit_edge, label %if.end.i

if.then18.ezusb_mod_timer.exit_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %ezusb_mod_timer.exit

if.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %14, 300
  %call.i = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #10
  br label %ezusb_mod_timer.exit

ezusb_mod_timer.exit:                             ; preds = %if.end.i, %if.then18.ezusb_mod_timer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call3) #10
  br label %out

sw.bb23:                                          ; preds = %sw.bb.sw.bb23_crit_edge, %if.then16.sw.bb23_crit_edge
  %17 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 9, ptr %state13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call3) #10
  tail call fastcc void @ezusb_ctx_complete(ptr noundef %1)
  br label %out

sw.default:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call3) #10
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %7, i32 noundef %19) #13
  br label %out

if.else:                                          ; preds = %if.end
  %20 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %7, label %sw.default40 [
    i32 2, label %if.else.sw.bb36_crit_edge
    i32 4, label %if.else.sw.bb36_crit_edge82
    i32 6, label %if.else.sw.bb38_crit_edge
    i32 5, label %if.else.sw.bb38_crit_edge83
  ]

if.else.sw.bb38_crit_edge83:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38

if.else.sw.bb38_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38

if.else.sw.bb36_crit_edge82:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

if.else.sw.bb36_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

sw.bb36:                                          ; preds = %if.else.sw.bb36_crit_edge, %if.else.sw.bb36_crit_edge82
  %21 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %state13, align 4
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb36, %if.else.sw.bb38_crit_edge, %if.else.sw.bb38_crit_edge83
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call3) #10
  tail call fastcc void @ezusb_ctx_complete(ptr noundef %1)
  br label %out

sw.default40:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call3) #10
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %7, i32 noundef %23) #13
  br label %out

out:                                              ; preds = %sw.default40, %sw.bb38, %sw.default, %sw.bb23, %ezusb_mod_timer.exit, %if.then
  tail call fastcc void @ezusb_request_context_put(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_req_ctx_wait_compl(ptr nocapture noundef readnone %upriv, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %done = getelementptr inbounds %struct.request_context, ptr %ctx, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %done) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_bulk_in_callback(ptr nocapture noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %7, label %do.body39 [
    i32 -110, label %do.end
    i32 -103, label %do.end9
    i32 -84, label %if.end.do.body22_crit_edge
    i32 -2, label %if.end.do.body22_crit_edge159
    i32 -104, label %if.end.do.body22_crit_edge160
    i32 0, label %if.end.if.end59_crit_edge
  ]

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.end.do.body22_crit_edge160:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

if.end.do.body22_crit_edge159:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

if.end.do.body22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #13
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.132) #13
  br label %resubmit

do.body22:                                        ; preds = %if.end.do.body22_crit_edge, %if.end.do.body22_crit_edge159, %if.end.do.body22_crit_edge160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezusb_bulk_in_callback.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_bulk_in_callback, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !313

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ezusb_bulk_in_callback.__UNIQUE_ID_ddebug388, ptr noundef %10, ptr noundef nonnull @.str.136, i32 noundef %12) #10
  br label %cleanup

do.body39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezusb_bulk_in_callback.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_bulk_in_callback, %if.then51)) #10
          to label %if.end59 [label %if.then51], !srcloc !313

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %dev52 = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev52, align 4
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ezusb_bulk_in_callback.__UNIQUE_ID_ddebug389, ptr noundef %14, ptr noundef nonnull @.str.137, i32 noundef %16, i32 noundef %18) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then51, %do.body39, %if.end.if.end59_crit_edge
  %actual_length60 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %19 = ptrtoint ptr %actual_length60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %20)
  %cmp61 = icmp ult i32 %20, 14
  br i1 %cmp61, label %do.end66, label %if.end71

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.132) #13
  br label %resubmit

if.end71:                                         ; preds = %if.end59
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 1
  %conv1.i = zext i8 %22 to i16
  %shl.1.i = shl nuw nsw i16 %conv1.i, 1
  %arrayidx.1.i = getelementptr i8, ptr %3, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.1.i, align 1
  %conv1.1.i = zext i8 %24 to i16
  %add.1.i = add nuw nsw i16 %shl.1.i, %conv1.1.i
  %shl.2.i = shl nuw nsw i16 %add.1.i, 1
  %arrayidx.2.i = getelementptr i8, ptr %3, i32 2
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2.i, align 1
  %conv1.2.i = zext i8 %26 to i16
  %add.2.i = add nuw nsw i16 %shl.2.i, %conv1.2.i
  %shl.3.i = shl nuw nsw i16 %add.2.i, 1
  %arrayidx.3.i = getelementptr i8, ptr %3, i32 3
  %27 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.3.i, align 1
  %conv1.3.i = zext i8 %28 to i16
  %add.3.i = add nuw nsw i16 %shl.3.i, %conv1.3.i
  %shl.4.i = shl nuw nsw i16 %add.3.i, 1
  %arrayidx.4.i = getelementptr i8, ptr %3, i32 4
  %29 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.4.i, align 1
  %conv1.4.i = zext i8 %30 to i16
  %add.4.i = add nuw nsw i16 %shl.4.i, %conv1.4.i
  %shl.5.i = shl nuw nsw i16 %add.4.i, 1
  %arrayidx.5.i = getelementptr i8, ptr %3, i32 5
  %31 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.5.i, align 1
  %conv1.5.i = zext i8 %32 to i16
  %add.5.i = add nuw nsw i16 %shl.5.i, %conv1.5.i
  %shl.6.i = shl nuw nsw i16 %add.5.i, 1
  %arrayidx.6.i = getelementptr i8, ptr %3, i32 6
  %33 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.6.i, align 1
  %conv1.6.i = zext i8 %34 to i16
  %add.6.i = add nuw nsw i16 %shl.6.i, %conv1.6.i
  %shl.7.i = shl nuw i16 %add.6.i, 1
  %arrayidx.7.i = getelementptr i8, ptr %3, i32 7
  %35 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.7.i, align 1
  %conv1.7.i = zext i8 %36 to i16
  %add.7.i = add nuw i16 %shl.7.i, %conv1.7.i
  %crc73 = getelementptr inbounds %struct.ezusb_packet, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %crc73 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %crc73, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %add.7.i)
  %cmp75.not = icmp eq i16 %39, %add.7.i
  br i1 %cmp75.not, label %if.end86, label %do.end81

do.end81:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #13
  br label %resubmit

if.end86:                                         ; preds = %if.end71
  %hermes_rid87 = getelementptr inbounds %struct.ezusb_packet, ptr %3, i32 0, i32 7
  %40 = ptrtoint ptr %hermes_rid87 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %hermes_rid87, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 263, i16 %41)
  %cmp89.not = icmp eq i16 %41, 263
  br i1 %cmp89.not, label %if.end86.if.else_crit_edge, label %land.lhs.true

if.end86.if.else_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end86
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = add i16 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %43)
  %44 = icmp ult i16 %43, 768
  br i1 %44, label %land.lhs.true.if.else_crit_edge, label %if.then98

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then98:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ezusb_request_in_callback(ptr noundef %1, ptr noundef %urb)
  br label %resubmit

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end86.if.else_crit_edge
  %dev99 = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev99, align 4
  %tobool100.not = icmp eq ptr %46, null
  br i1 %tobool100.not, label %if.else.resubmit_crit_edge, label %if.then101

if.else.resubmit_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit

if.then101:                                       ; preds = %if.else
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !316

do.body4.i.i:                                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #10, !srcloc !320
  unreachable

do.end7.i.i:                                      ; preds = %if.then101
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !316

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !321
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %hw105 = getelementptr inbounds %struct.wiphy, ptr %48, i32 1, i32 56, i32 26
  br i1 %cmp89.not, label %if.then109, label %if.else110

if.then109:                                       ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__orinoco_ev_rx(ptr noundef nonnull %46, ptr noundef %hw105) #10
  br label %resubmit

if.else110:                                       ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %hw105 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw105, align 4
  %reg_spacing = getelementptr inbounds %struct.wiphy, ptr %48, i32 1, i32 56, i32 26, i32 1
  %51 = ptrtoint ptr %reg_spacing to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_spacing, align 4
  %shl = shl i32 16, %52
  %add.ptr = getelementptr i8, ptr %50, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %41) #10, !srcloc !315
  tail call void @__orinoco_ev_info(ptr noundef nonnull %46, ptr noundef %hw105) #10
  br label %resubmit

resubmit:                                         ; preds = %if.else110, %if.then109, %if.else.resubmit_crit_edge, %if.then98, %do.end81, %do.end66, %do.end9
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %tobool116.not = icmp eq ptr %54, null
  br i1 %tobool116.not, label %resubmit.cleanup_crit_edge, label %if.then117

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then117:                                       ; preds = %resubmit
  %read_urb.i = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 9
  %55 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_urb.i, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %58)
  %cmp.i = icmp eq i32 %58, -115
  br i1 %cmp.i, label %do.body3.i, label %if.end9.i

do.body3.i:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezusb_submit_in_urb.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_bulk_in_callback, %if.then6.i)) #10
          to label %cleanup [label %if.then6.i], !srcloc !313

if.then6.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ezusb_submit_in_urb.__UNIQUE_ID_ddebug381, ptr noundef %60, ptr noundef nonnull @.str.129) #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.then117
  %read_pipe.i = getelementptr inbounds %struct.ezusb_priv, ptr %1, i32 0, i32 10
  %61 = ptrtoint ptr %read_pipe.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %read_pipe.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 8
  %63 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %54, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 10
  %64 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %62, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 19
  %65 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2048, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 28
  %66 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ezusb_bulk_in_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 27
  %67 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %1, ptr %context4.i.i, align 4
  %68 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_urb.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %transfer_flags.i, align 4
  %71 = load ptr, ptr %read_urb.i, align 4
  %call13.i = tail call i32 @usb_submit_urb(ptr noundef %71, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end9.i.cleanup_crit_edge, label %do.end19.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end19.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.128, i32 noundef %call13.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end19.i, %if.end9.i.cleanup_crit_edge, %if.then6.i, %do.body3.i, %resubmit.cleanup_crit_edge, %if.then27, %do.body22, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ezusb_request_in_callback(ptr noundef %upriv, ptr nocapture noundef %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %req_lock = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #10
  %2 = ptrtoint ptr %upriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upriv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then44_crit_edge, label %if.then

entry.if.then44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then:                                          ; preds = %entry
  %req_active = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 5
  %hermes_rid = getelementptr inbounds %struct.ezusb_packet, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %req_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %item.0129 = load ptr, ptr %req_active, align 4
  %cmp.i.not130 = icmp eq ptr %item.0129, %req_active
  br i1 %cmp.i.not130, label %if.then.if.then44_crit_edge, label %for.body.lr.ph

if.then.if.then44_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

for.body.lr.ph:                                   ; preds = %if.then
  %ans_reply_count = getelementptr inbounds %struct.ezusb_packet, ptr %1, i32 0, i32 2
  %dev = getelementptr inbounds %struct.ezusb_priv, ptr %upriv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %item.0131 = phi ptr [ %item.0129, %for.body.lr.ph ], [ %item.0, %cleanup.for.body_crit_edge ]
  %buf = getelementptr inbounds %struct.request_context, ptr %item.0131, i32 0, i32 6
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %req_reply_count = getelementptr inbounds %struct.ezusb_packet, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %req_reply_count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %req_reply_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %8)
  %cmp.i121 = icmp ult i8 %8, 127
  %add.i = add i8 %8, 1
  %retval.0.i122 = select i1 %cmp.i121, i8 %add.i, i8 1
  %conv10 = zext i8 %retval.0.i122 to i32
  %9 = ptrtoint ptr %ans_reply_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ans_reply_count, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %retval.0.i122)
  %cmp12 = icmp eq i8 %10, %retval.0.i122
  br i1 %cmp12, label %land.lhs.true, label %for.body.do.body20_crit_edge

for.body.do.body20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

land.lhs.true:                                    ; preds = %for.body
  %11 = ptrtoint ptr %hermes_rid to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %hermes_rid, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %in_rid = getelementptr inbounds %struct.request_context, ptr %item.0131, i32 0, i32 11
  %14 = ptrtoint ptr %in_rid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %in_rid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp16 = icmp eq i16 %13, %15
  br i1 %cmp16, label %if.end41, label %land.lhs.true.do.body20_crit_edge

land.lhs.true.do.body20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.body20:                                        ; preds = %land.lhs.true.do.body20_crit_edge, %for.body.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezusb_request_in_callback.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezusb_request_in_callback, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !313

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %hermes_rid to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %hermes_rid, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv29 = zext i16 %20 to i32
  %in_rid30 = getelementptr inbounds %struct.request_context, ptr %item.0131, i32 0, i32 11
  %21 = ptrtoint ptr %in_rid30 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %in_rid30, align 2
  %conv31 = zext i16 %22 to i32
  %23 = ptrtoint ptr %ans_reply_count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ans_reply_count, align 1
  %conv33 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ezusb_request_in_callback.__UNIQUE_ID_ddebug380, ptr noundef %17, ptr noundef nonnull @.str.145, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body20
  %25 = ptrtoint ptr %item.0131 to i32
  call void @__asan_load4_noabort(i32 %25)
  %item.0 = load ptr, ptr %item.0131, align 4
  %cmp.i.not = icmp eq ptr %item.0, %req_active
  br i1 %cmp.i.not, label %cleanup.if.then44_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.if.then44_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end41:                                         ; preds = %land.lhs.true
  %cmp42 = icmp eq ptr %item.0131, null
  br i1 %cmp42, label %if.end41.if.then44_crit_edge, label %if.end56

if.end41.if.then44_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %if.end41.if.then44_crit_edge, %cleanup.if.then44_crit_edge, %if.then.if.then44_crit_edge, %entry.if.then44_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call2) #10
  %hermes_rid51 = getelementptr inbounds %struct.ezusb_packet, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %hermes_rid51 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %hermes_rid51, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv52 = zext i16 %28 to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.144, i32 noundef %conv52) #13
  tail call fastcc void @ezusb_req_queue_run(ptr noundef %upriv)
  br label %cleanup77

if.end56:                                         ; preds = %if.end41
  %buf57 = getelementptr inbounds %struct.request_context, ptr %item.0131, i32 0, i32 6
  %29 = ptrtoint ptr %buf57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf57, align 4
  %31 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %transfer_buffer, align 4
  store ptr %1, ptr %buf57, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %32 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual_length, align 4
  %buf_length = getelementptr inbounds %struct.request_context, ptr %item.0131, i32 0, i32 7
  %34 = ptrtoint ptr %buf_length to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %buf_length, align 4
  %state60 = getelementptr inbounds %struct.request_context, ptr %item.0131, i32 0, i32 9
  %35 = ptrtoint ptr %state60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state60, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %36, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb63
  ]

sw.bb:                                            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %state60 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %state60, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call2) #10
  br label %cleanup77

sw.bb63:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %state60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 9, ptr %state60, align 4
  %timer = getelementptr inbounds %struct.request_context, ptr %item.0131, i32 0, i32 8
  %call65 = tail call i32 @del_timer(ptr noundef %timer) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call2) #10
  tail call fastcc void @ezusb_ctx_complete(ptr noundef nonnull %item.0131)
  br label %cleanup77

sw.default:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call2) #10
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %36) #13
  %timer73 = getelementptr inbounds %struct.request_context, ptr %item.0131, i32 0, i32 8
  %call74 = tail call i32 @del_timer(ptr noundef %timer73) #10
  %outurb = getelementptr inbounds %struct.request_context, ptr %item.0131, i32 0, i32 4
  %40 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %outurb, align 4
  %call76 = tail call i32 @usb_unlink_urb(ptr noundef %41) #10
  tail call fastcc void @ezusb_req_queue_run(ptr noundef %upriv)
  br label %cleanup77

cleanup77:                                        ; preds = %sw.default, %sw.bb63, %sw.bb, %if.then44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__orinoco_ev_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__orinoco_ev_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_stop(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ezusb_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %mic = alloca [9 x i8], align 1
  %tx_control = alloca i32, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !316

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #10, !srcloc !320
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !316

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !321
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %mic) #10
  %4 = call ptr @memset(ptr %mic, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_control) #10
  %5 = ptrtoint ptr %tx_control to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tx_control, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #10
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %flags, align 4, !annotation !329
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %dev) #13
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end13, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %dev) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %16(ptr noundef %lock.i, ptr noundef nonnull %flags) #10
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %17 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end23, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %22(ptr noundef %lock.i, ptr noundef nonnull %flags) #10
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %dev) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i127 = icmp eq i32 %25, 0
  br i1 %tobool.not.i127, label %lor.lhs.false, label %if.end23.drop_crit_edge

if.end23.drop_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

lor.lhs.false:                                    ; preds = %if.end23
  %iw_mode = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %27)
  %cmp25 = icmp eq i32 %27, 6
  br i1 %cmp25, label %lor.lhs.false.drop_crit_edge, label %if.end27

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end27:                                         ; preds = %lor.lhs.false
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %29)
  %cmp28 = icmp ult i32 %29, 14
  br i1 %cmp28, label %if.end27.drop_crit_edge, label %if.end30

if.end27.drop_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end30:                                         ; preds = %if.end27
  %30 = ptrtoint ptr %tx_control to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_control, align 4
  %call31 = call i32 @orinoco_process_xmit_skb(ptr noundef %skb, ptr noundef %dev, ptr noundef %priv.i.i.i, ptr noundef nonnull %tx_control, ptr noundef nonnull %mic) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.end33, label %if.end30.drop_crit_edge

if.end30.drop_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end33:                                         ; preds = %if.end30
  %call34 = call fastcc ptr @ezusb_alloc_ctx(ptr noundef %3, i16 noundef zeroext 1792, i16 noundef zeroext 0)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.drop_crit_edge, label %if.end37

if.end33.drop_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end37:                                         ; preds = %if.end33
  %buf38 = getelementptr inbounds %struct.request_context, ptr %call34, i32 0, i32 6
  %31 = ptrtoint ptr %buf38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf38, align 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 2048)
  %34 = load ptr, ptr %buf38, align 4
  %data = getelementptr inbounds %struct.ezusb_packet, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %tx_control to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_control, align 4
  %conv = trunc i32 %36 to i16
  %37 = call i16 @llvm.bswap.i16(i16 %conv)
  %38 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %data, align 2
  %add.ptr = getelementptr %struct.ezusb_packet, ptr %34, i32 1, i32 1
  %data41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data41, align 4
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %43 = call ptr @memcpy(ptr %add.ptr, ptr %40, i32 %42)
  %44 = load i32, ptr %len, align 4
  %add.ptr44 = getelementptr i8, ptr %add.ptr, i32 %44
  %45 = ptrtoint ptr %tx_control to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_control, align 4
  %and = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %if.end37.if.end53_crit_edge, label %if.then46

if.end37.if.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then46:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %rem = and i32 %44, 1
  %spec.select = getelementptr i8, ptr %mic, i32 %rem
  %47 = ptrtoint ptr %spec.select to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %spec.select, align 1
  %49 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %add.ptr44, align 1
  %add.ptr52 = getelementptr i8, ptr %add.ptr44, i32 8
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %if.end37.if.end53_crit_edge
  %buf.0 = phi ptr [ %add.ptr52, %if.then46 ], [ %add.ptr44, %if.end37.if.end53_crit_edge ]
  %50 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i129 = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i129) #10
  %52 = ptrtoint ptr %buf38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf38, align 4
  %data55 = getelementptr inbounds %struct.ezusb_packet, ptr %53, i32 0, i32 8
  %sub.ptr.lhs.cast = ptrtoint ptr %buf.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data55 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %54 = trunc i32 %sub.ptr.sub to i16
  %55 = add i16 %54, 1
  %conv58 = and i16 %55, -2
  %call59 = call fastcc i32 @ezusb_access_ltv(ptr noundef %3, ptr noundef nonnull %call34, i16 noundef zeroext %conv58, ptr noundef null, i16 noundef zeroext 1, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ezusb_req_ctx_wait_skip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  %56 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i, align 128
  br i1 %tobool60.not, label %if.end73, label %if.then61

if.then61:                                        ; preds = %if.end53
  %state.i.i131 = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i131) #10
  %call62 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then61.busy_crit_edge, label %do.end67

if.then61.busy_crit_edge:                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %busy

do.end67:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %dev, i32 noundef %call59) #13
  br label %busy

if.end73:                                         ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 12
  %59 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp.not.i.i = icmp eq i32 %60, %58
  br i1 %cmp.not.i.i, label %if.end73.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end73.netif_trans_update.exit_crit_edge:       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %58, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end73.netif_trans_update.exit_crit_edge
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  br label %ok

drop:                                             ; preds = %if.end33.drop_crit_edge, %if.end30.drop_crit_edge, %if.end27.drop_crit_edge, %lor.lhs.false.drop_crit_edge, %if.end23.drop_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %64 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %65, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %ok

ok:                                               ; preds = %drop, %netif_trans_update.exit
  %tx_dropped.sink142 = phi ptr [ %tx_dropped, %drop ], [ %tx_bytes, %netif_trans_update.exit ]
  %.sink141 = phi i32 [ 1, %drop ], [ %63, %netif_trans_update.exit ]
  %66 = ptrtoint ptr %tx_dropped.sink142 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_dropped.sink142, align 4
  %inc76 = add i32 %67, %.sink141
  store i32 %inc76, ptr %tx_dropped.sink142, align 4
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i134 = getelementptr inbounds %struct.hermes_ops, ptr %69, i32 0, i32 14
  %70 = ptrtoint ptr %unlock_irqrestore.i134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %unlock_irqrestore.i134, align 4
  call void %71(ptr noundef %lock.i, ptr noundef nonnull %flags) #10
  call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

busy:                                             ; preds = %do.end67, %if.then61.busy_crit_edge
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i137 = getelementptr inbounds %struct.hermes_ops, ptr %73, i32 0, i32 14
  %74 = ptrtoint ptr %unlock_irqrestore.i137 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %unlock_irqrestore.i137, align 4
  call void %75(ptr noundef %lock.i, ptr noundef nonnull %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %busy, %ok, %do.end18, %do.end8, %do.end
  %retval.0 = phi i32 [ 16, %do.end8 ], [ 16, %do.end18 ], [ 0, %ok ], [ 16, %busy ], [ 16, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_control) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %mic) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @orinoco_set_multicast_list(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @orinoco_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_process_xmit_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ezusb_req_ctx_wait_skip(ptr nocapture noundef readnone %upriv, ptr nocapture noundef readnone %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 715, i32 noundef 9, ptr noundef nonnull @.str.161) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @orinoco_if_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !294, !295, !296, !297, !299, !300, !301, !302}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @__UNIQUE_ID_firmware378, !1, !"__UNIQUE_ID_firmware378", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 105, i32 1}
!2 = !{ptr @__initcall__kmod_orinoco_usb__390_1783_orinoco_driver_init6, !3, !"__initcall__kmod_orinoco_usb__390_1783_orinoco_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1783, i32 1}
!4 = !{ptr @__exitcall_orinoco_driver_exit, !3, !"__exitcall_orinoco_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author391, !6, !"__UNIQUE_ID_author391", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1785, i32 1}
!7 = !{ptr @__UNIQUE_ID_description392, !8, !"__UNIQUE_ID_description392", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1786, i32 1}
!9 = !{ptr @__UNIQUE_ID_file393, !10, !"__UNIQUE_ID_file393", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1787, i32 1}
!11 = !{ptr @__UNIQUE_ID_license394, !10, !"__UNIQUE_ID_license394", i1 false, i1 false}
!12 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @orinoco_driver, !14, !"orinoco_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1775, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1619, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ezusb_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @ezusb_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @ezusb_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1628, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ezusb_probe.__key.5, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1629, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ezusb_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1631, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1652, i32 5}
!32 = !{ptr @ezusb_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ezusb_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1660, i32 5}
!36 = !{ptr @ezusb_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ezusb_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1662, i32 5}
!40 = !{ptr @ezusb_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ezusb_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1670, i32 5}
!44 = !{ptr @ezusb_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ezusb_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1678, i32 5}
!48 = !{ptr @ezusb_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ezusb_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1683, i32 5}
!52 = !{ptr @ezusb_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ezusb_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1685, i32 5}
!56 = !{ptr @ezusb_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ezusb_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1692, i32 5}
!60 = !{ptr @ezusb_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ezusb_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1698, i32 3}
!64 = !{ptr @ezusb_probe._entry.33, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ezusb_probe._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1702, i32 34}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1711, i32 3}
!70 = !{ptr @ezusb_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ezusb_probe._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1716, i32 3}
!74 = !{ptr @ezusb_probe._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ezusb_probe._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1725, i32 3}
!78 = !{ptr @ezusb_probe._entry.43, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ezusb_probe._entry_ptr.45, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1726, i32 3}
!82 = !{ptr @ezusb_probe._entry.46, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ezusb_probe._entry_ptr.48, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1732, i32 3}
!86 = !{ptr @ezusb_probe._entry.49, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ezusb_probe._entry_ptr.51, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1738, i32 3}
!90 = !{ptr @ezusb_probe._entry.52, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ezusb_probe._entry_ptr.54, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1351, i32 3}
!94 = !{ptr @.str.56, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ezusb_hard_reset._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ezusb_hard_reset._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1357, i32 3}
!99 = !{ptr @ezusb_hard_reset._entry.57, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ezusb_hard_reset._entry_ptr.59, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1361, i32 2}
!103 = !{ptr @ezusb_hard_reset.__UNIQUE_ID_ddebug387, !102, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1369, i32 3}
!106 = !{ptr @ezusb_hard_reset._entry.61, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ezusb_hard_reset._entry_ptr.63, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 785, i32 3}
!110 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ezusb_8051_cpucs._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @ezusb_8051_cpucs._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @ezusb_ops, !114, !"ezusb_ops", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1573, i32 32}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1062, i32 2}
!117 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @__ezusb_docmd_wait.__UNIQUE_ID_ddebug385, !116, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!119 = !{ptr @ezusb_alloc_ctx.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 364, i32 2}
!121 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @init_completion.__key, !123, !"__key", i1 false, i1 false}
!123 = !{!"../include/linux/completion.h", i32 87, i32 2}
!124 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 327, i32 3}
!127 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ezusb_request_timerfn.__UNIQUE_ID_ddebug379, !126, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 410, i32 4}
!131 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @ezusb_ctx_complete._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @ezusb_ctx_complete._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 416, i32 3}
!136 = !{ptr @ezusb_ctx_complete._entry.74, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ezusb_ctx_complete._entry_ptr.76, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 465, i32 4}
!140 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ezusb_req_queue_run._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ezusb_req_queue_run._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 892, i32 3}
!145 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ezusb_access_ltv._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @ezusb_access_ltv._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 924, i32 3}
!150 = !{ptr @ezusb_access_ltv._entry.81, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ezusb_access_ltv._entry_ptr.83, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 931, i32 3}
!154 = !{ptr @ezusb_access_ltv._entry.84, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ezusb_access_ltv._entry_ptr.86, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 936, i32 4}
!158 = !{ptr @ezusb_access_ltv._entry.87, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @ezusb_access_ltv._entry_ptr.89, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.91, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 939, i32 4}
!162 = !{ptr @ezusb_access_ltv._entry.90, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @ezusb_access_ltv._entry_ptr.92, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.94, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 954, i32 4}
!166 = !{ptr @ezusb_access_ltv._entry.93, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ezusb_access_ltv._entry_ptr.95, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.96, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 520, i32 3}
!170 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @ezusb_request_out_callback._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @ezusb_request_out_callback._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.99, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 548, i32 4}
!175 = !{ptr @ezusb_request_out_callback._entry.98, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ezusb_request_out_callback._entry_ptr.100, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @ezusb_request_out_callback._entry.101, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 572, i32 4}
!179 = !{ptr @ezusb_request_out_callback._entry_ptr.102, !178, !"_entry_ptr", i1 false, i1 false}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1045, i32 2}
!182 = !{ptr @.str.103, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1087, i32 4}
!184 = !{ptr @.str.104, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ezusb_bap_pread._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @ezusb_bap_pread._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.106, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1098, i32 4}
!189 = !{ptr @ezusb_bap_pread._entry.105, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ezusb_bap_pread._entry_ptr.107, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.109, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1104, i32 3}
!193 = !{ptr @ezusb_bap_pread._entry.108, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @ezusb_bap_pread._entry_ptr.110, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.111, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1207, i32 3}
!197 = !{ptr @.str.112, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @ezusb_program.__UNIQUE_ID_ddebug386, !196, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!199 = distinct !{null, !200, !"firmware", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 95, i32 25}
!201 = !{ptr @.str.113, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 817, i32 3}
!203 = !{ptr @.str.114, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @ezusb_firmware_download._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @ezusb_firmware_download._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.116, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 828, i32 3}
!208 = !{ptr @ezusb_firmware_download._entry.115, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @ezusb_firmware_download._entry_ptr.117, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.118, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 846, i32 4}
!212 = !{ptr @ezusb_firmware_download.__UNIQUE_ID_ddebug382, !211, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!213 = !{ptr @.str.120, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 869, i32 2}
!215 = !{ptr @ezusb_firmware_download._entry.119, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @ezusb_firmware_download._entry_ptr.121, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.122, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1408, i32 33}
!219 = !{ptr @.str.123, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1411, i32 3}
!221 = !{ptr @.str.124, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @ezusb_init._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @ezusb_init._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.126, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1418, i32 3}
!226 = !{ptr @ezusb_init._entry.125, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @ezusb_init._entry_ptr.127, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.128, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 763, i32 3}
!230 = !{ptr @.str.129, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @ezusb_submit_in_urb.__UNIQUE_ID_ddebug381, !229, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!232 = !{ptr @.str.130, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 773, i32 3}
!234 = !{ptr @ezusb_submit_in_urb._entry, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @ezusb_submit_in_urb._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.131, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1439, i32 3}
!238 = !{ptr @.str.132, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @ezusb_bulk_in_callback._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @ezusb_bulk_in_callback._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.134, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1443, i32 3}
!243 = !{ptr @ezusb_bulk_in_callback._entry.133, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @ezusb_bulk_in_callback._entry_ptr.135, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.136, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1450, i32 3}
!247 = !{ptr @ezusb_bulk_in_callback.__UNIQUE_ID_ddebug388, !246, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!248 = !{ptr @.str.137, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1455, i32 3}
!250 = !{ptr @ezusb_bulk_in_callback.__UNIQUE_ID_ddebug389, !249, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!251 = !{ptr @.str.139, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1458, i32 3}
!253 = !{ptr @ezusb_bulk_in_callback._entry.138, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @ezusb_bulk_in_callback._entry_ptr.140, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.142, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1463, i32 3}
!257 = !{ptr @ezusb_bulk_in_callback._entry.141, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @ezusb_bulk_in_callback._entry_ptr.143, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.144, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 606, i32 4}
!261 = !{ptr @.str.145, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @ezusb_request_in_callback.__UNIQUE_ID_ddebug380, !260, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!263 = !{ptr @.str.146, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 614, i32 3}
!265 = !{ptr @ezusb_request_in_callback._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @ezusb_request_in_callback._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.148, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 657, i32 3}
!269 = !{ptr @ezusb_request_in_callback._entry.147, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @ezusb_request_in_callback._entry_ptr.149, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @ezusb_netdev_ops, !272, !"ezusb_netdev_ops", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1592, i32 36}
!273 = !{ptr @.str.150, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1238, i32 3}
!275 = !{ptr @.str.151, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @ezusb_xmit._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @ezusb_xmit._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.153, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1244, i32 3}
!280 = !{ptr @ezusb_xmit._entry.152, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @ezusb_xmit._entry_ptr.154, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.156, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1250, i32 3}
!284 = !{ptr @ezusb_xmit._entry.155, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @ezusb_xmit._entry_ptr.157, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.159, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1315, i32 4}
!288 = !{ptr @ezusb_xmit._entry.158, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @ezusb_xmit._entry_ptr.160, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.161, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 715, i32 2}
!292 = !{ptr @.str.162, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1534, i32 3}
!294 = !{ptr @.str.163, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @ezusb_delete._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @ezusb_delete._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.164, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 1770, i32 2}
!299 = !{ptr @.str.165, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @ezusb_disconnect._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @ezusb_disconnect._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @ezusb_table, !303, !"ezusb_table", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_usb.c", i32 209, i32 35}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{i64 2148998032, i64 2148998037, i64 2148998050, i64 2148998094, i64 2148998128, i64 2148998149}
!314 = !{i64 2153522257}
!315 = !{i64 5980065}
!316 = !{!"branch_weights", i32 1, i32 2000}
!317 = !{i64 2157982250, i64 2157982767, i64 2157982287, i64 2157982343, i64 2157982377, i64 2157982401, i64 2157982442, i64 2157982463, i64 2157982491, i64 2157982525}
!318 = !{i64 2148386185, i64 2148386217, i64 2148386246, i64 2148386280, i64 2148386311, i64 2148386334}
!319 = !{!"branch_weights", i32 2000, i32 1}
!320 = !{i64 2157835339, i64 2157835827, i64 2157835376, i64 2157835432, i64 2157835466, i64 2157835490, i64 2157835531, i64 2157835552, i64 2157835580, i64 2157835614}
!321 = !{i64 2157829256, i64 2157829744, i64 2157829293, i64 2157829349, i64 2157829383, i64 2157829407, i64 2157829448, i64 2157829469, i64 2157829497, i64 2157829531}
!322 = !{i64 2157910127, i64 2157910643, i64 2157910164, i64 2157910220, i64 2157910254, i64 2157910278, i64 2157910319, i64 2157910340, i64 2157910368, i64 2157910402}
!323 = !{ptr @ezusb_req_ctx_wait_compl, ptr @ezusb_req_ctx_wait_poll, ptr @ezusb_req_ctx_wait_skip}
!324 = !{i64 2148474210}
!325 = !{i64 2148388650, i64 2148388682, i64 2148388711, i64 2148388745, i64 2148388776, i64 2148388799}
!326 = !{i64 2149350324}
!327 = !{i64 2157873948, i64 2157874464, i64 2157873985, i64 2157874041, i64 2157874075, i64 2157874099, i64 2157874140, i64 2157874161, i64 2157874189, i64 2157874223}
!328 = !{i64 2157875652, i64 2157876168, i64 2157875689, i64 2157875745, i64 2157875779, i64 2157875803, i64 2157875844, i64 2157875865, i64 2157875893, i64 2157875927}
!329 = !{!"auto-init"}
